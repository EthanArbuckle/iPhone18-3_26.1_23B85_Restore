@interface _MLRemoteConnection
- (BOOL)loadFromURL:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)predictionFromURL:(id)a3 features:(id)a4 output:(id)a5 options:(id)a6 error:(id *)a7;
- (BOOL)sendDataAndWaitForAcknowledgementOrTimeout:(id)a3;
- (BOOL)unloadFromURL:(id)a3 options:(id)a4 error:(id *)a5;
- (_MLRemoteConnection)initWithOptions:(id)a3;
- (void)doReceive:(id)a3 context:(id)a4 isComplete:(BOOL)a5 error:(id)a6;
- (void)send:(id)a3 options:(id)a4;
@end

@implementation _MLRemoteConnection

- (_MLRemoteConnection)initWithOptions:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = _MLRemoteConnection;
  v6 = [(_MLRemoteConnection *)&v22 init];
  if (v6)
  {
    v7 = objc_opt_new();
    packet = v6->_packet;
    v6->_packet = v7;

    v9 = [[_MLNetworkOptions alloc] initWithOptions:v5];
    nwOptions = v6->_nwOptions;
    v6->_nwOptions = v9;

    v11 = dispatch_semaphore_create(0);
    semaphore = v6->_semaphore;
    v6->_semaphore = v11;

    v13 = dispatch_queue_create("com.apple.remoteCoreMLClient", 0);
    q = v6->_q;
    v6->_q = v13;

    v15 = [[_MLNetworking alloc] initConnection:v6->_nwOptions];
    nwObj = v6->_nwObj;
    v6->_nwObj = v15;

    objc_initWeak(&location, v6);
    v17 = v6->_nwObj;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __39___MLRemoteConnection_initWithOptions___block_invoke;
    v19[3] = &unk_279AFC9E8;
    objc_copyWeak(v20, &location);
    v20[1] = a2;
    [(_MLNetworking *)v17 setReceiveDataCallBack:v19];
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)doReceive:(id)a3 context:(id)a4 isComplete:(BOOL)a5 error:(id)a6
{
  v71 = *MEMORY[0x277D85DE8];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __58___MLRemoteConnection_doReceive_context_isComplete_error___block_invoke;
  applier[3] = &unk_279AFCA10;
  applier[4] = self;
  dispatch_data_apply(a3, applier);
  v8 = [(_MLRemoteConnection *)self packet];
  v9 = [v8 sizeOfPacket];

  if (!v9)
  {
    v10 = [(_MLRemoteConnection *)self packet];
    v11 = [v10 buffer];
    v12 = [_MLNetworkHeaderEncoding getHeaderEncoding:v11];
    v13 = [(_MLRemoteConnection *)self packet];
    [v13 setCommand:v12];

    v14 = [(_MLRemoteConnection *)self packet];
    v15 = [v14 buffer];
    v16 = [_MLNetworkHeaderEncoding getHeaderDataSize:v15];
    v17 = [(_MLRemoteConnection *)self packet];
    [v17 setSizeOfPacket:v16];

    v18 = +[_MLLog clientFramework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_MLRemoteConnection doReceive:context:isComplete:error:];
    }
  }

  v19 = [(_MLRemoteConnection *)self packet];
  v20 = +[_MLNetworkHeaderEncoding isHeaderError:](_MLNetworkHeaderEncoding, "isHeaderError:", [v19 command]);

  if (v20)
  {
    v21 = +[_MLLog serverFramework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_MLRemoteConnection doReceive:context:isComplete:error:];
    }

    v22 = +[_MLNetworkHeaderEncoding acknowledgeFailData];
    v23 = [(_MLRemoteConnection *)self nwObj];
    [v23 sendData:v22];

    v24 = [(_MLRemoteConnection *)self packet];
    [v24 cleanupDoubleBuffer];
  }

  else
  {
    v25 = [(_MLRemoteConnection *)self packet];
    v26 = [v25 buffer];
    v27 = [v26 length];
    v28 = v27 - +[_MLNetworkHeaderEncoding getHeaderSize];

    v29 = [(_MLRemoteConnection *)self packet];
    v30 = [v29 sizeOfPacket];

    if (v30 <= v28)
    {
      v37 = [(_MLRemoteConnection *)self packet];
      v38 = v28 - [v37 sizeOfPacket];

      if (v38 >= 1)
      {
        v39 = [(_MLRemoteConnection *)self packet];
        v40 = [v39 buffer];
        v41 = [_MLNetworkHeaderEncoding getHeaderEnd:v40];

        v42 = [MEMORY[0x277CBEB28] dataWithBytes:v41 length:v38];
        v43 = [(_MLRemoteConnection *)self packet];
        [v43 setDoubleBuffer:v42];
      }

      v44 = [(_MLRemoteConnection *)self packet];
      v45 = [v44 buffer];
      v46 = [_MLNetworkHeaderEncoding getHeaderDataStart:v45];

      v47 = objc_alloc(MEMORY[0x277CBEB28]);
      v48 = [(_MLRemoteConnection *)self packet];
      v49 = [v47 initWithBytes:v46 length:{objc_msgSend(v48, "sizeOfPacket")}];
      [(_MLRemoteConnection *)self setOutputResult:v49];

      v50 = [(_MLRemoteConnection *)self packet];
      LODWORD(v49) = +[_MLNetworkHeaderEncoding isHeaderAcknowledgeSucessData:](_MLNetworkHeaderEncoding, "isHeaderAcknowledgeSucessData:", [v50 command]);

      if (v49)
      {
        v51 = +[_MLLog clientFramework];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          [_MLRemoteConnection doReceive:a2 context:? isComplete:? error:?];
        }
      }

      else
      {
        v52 = [(_MLRemoteConnection *)self packet];
        v53 = +[_MLNetworkHeaderEncoding isHeaderPredictFeature:](_MLNetworkHeaderEncoding, "isHeaderPredictFeature:", [v52 command]);

        v54 = +[_MLLog clientFramework];
        v51 = v54;
        if (v53)
        {
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            [_MLRemoteConnection doReceive:a2 context:? isComplete:? error:?];
          }

          v55 = [(_MLRemoteConnection *)self packet];
          v56 = [v55 buffer];
          [v56 setLength:0];

          v51 = [(_MLRemoteConnection *)self packet];
          v57 = [v51 buffer];
          v58 = [(_MLRemoteConnection *)self outputResult];
          [v57 appendData:v58];
        }

        else if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          [_MLRemoteConnection doReceive:context:isComplete:error:];
        }
      }

      v59 = [(_MLRemoteConnection *)self packet];
      [v59 resetMetadata];

      v60 = +[_MLLog clientFramework];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        [_MLRemoteConnection doReceive:a2 context:? isComplete:? error:?];
      }

      v22 = [(_MLRemoteConnection *)self semaphore];
      dispatch_semaphore_signal(v22);
    }

    else
    {
      v22 = +[_MLLog clientFramework];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v31 = NSStringFromSelector(a2);
        v32 = [(_MLRemoteConnection *)self packet];
        v33 = [v32 sizeOfPacket];
        v34 = [(_MLRemoteConnection *)self packet];
        v35 = [v34 buffer];
        v36 = [v35 length];
        *buf = 138413058;
        v64 = v31;
        v65 = 2048;
        v66 = v33;
        v67 = 2048;
        v68 = v36;
        v69 = 2048;
        v70 = v28;
        _os_log_debug_impl(&dword_261D92000, v22, OS_LOG_TYPE_DEBUG, "%@: Size of Packet: %zu < Size of current %zu buffer_length %zu.", buf, 0x2Au);
      }
    }
  }

  v61 = *MEMORY[0x277D85DE8];
}

- (BOOL)loadFromURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = [a3 path];
  v7 = [v6 dataUsingEncoding:4];

  v8 = [_MLNetworkHeaderEncoding loadModel:v7];
  LOBYTE(self) = [(_MLRemoteConnection *)self sendDataAndWaitForAcknowledgementOrTimeout:v8];

  return self;
}

- (BOOL)predictionFromURL:(id)a3 features:(id)a4 output:(id)a5 options:(id)a6 error:(id *)a7
{
  v11 = a5;
  v12 = [_MLNetworkHeaderEncoding predictFeature:a4];
  v13 = [(_MLRemoteConnection *)self q];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71___MLRemoteConnection_predictionFromURL_features_output_options_error___block_invoke;
  block[3] = &unk_279AFCA38;
  block[4] = self;
  v21 = a2;
  v14 = v11;
  v20 = v14;
  dispatch_sync(v13, block);

  v15 = [(_MLRemoteConnection *)self sendDataAndWaitForAcknowledgementOrTimeout:v12];
  v16 = v15;
  if (a7 && v15)
  {
    v17 = NSStringFromSelector(a2);
    *a7 = [_MLRemoteCoreMLErrors clientTimeoutErrorForMethod:v17];
  }

  return v16;
}

- (BOOL)unloadFromURL:(id)a3 options:(id)a4 error:(id *)a5
{
  v6 = [a3 path];
  v7 = [v6 dataUsingEncoding:4];

  v8 = [_MLNetworkHeaderEncoding unLoadModel:v7];
  LOBYTE(self) = [(_MLRemoteConnection *)self sendDataAndWaitForAcknowledgementOrTimeout:v8];

  return self;
}

- (void)send:(id)a3 options:(id)a4
{
  v5 = [a3 dataUsingEncoding:{4, a4}];
  v6 = [_MLNetworkHeaderEncoding textDebug:v5];
  v7 = +[_MLLog clientFramework];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_MLRemoteConnection send:options:];
  }

  [(_MLRemoteConnection *)self sendDataAndWaitForAcknowledgementOrTimeout:v6];
}

- (BOOL)sendDataAndWaitForAcknowledgementOrTimeout:(id)a3
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = [(_MLRemoteConnection *)self q];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66___MLRemoteConnection_sendDataAndWaitForAcknowledgementOrTimeout___block_invoke;
  v9[3] = &unk_279AFCA88;
  v9[4] = self;
  v10 = v5;
  v11 = &v13;
  v12 = a2;
  v7 = v5;
  dispatch_sync(v6, v9);

  LOBYTE(v5) = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v5;
}

- (void)doReceive:context:isComplete:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() packet];
  [v2 sizeOfPacket];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)doReceive:context:isComplete:error:.cold.2()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() packet];
  [v2 command];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)doReceive:(const char *)a1 context:isComplete:error:.cold.3(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)doReceive:(const char *)a1 context:isComplete:error:.cold.4(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)doReceive:(const char *)a1 context:isComplete:error:.cold.5(const char *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)doReceive:context:isComplete:error:.cold.6()
{
  OUTLINED_FUNCTION_4();
  v9 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  v2 = [OUTLINED_FUNCTION_5() packet];
  [v2 command];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)send:options:.cold.1()
{
  OUTLINED_FUNCTION_4();
  v8 = *MEMORY[0x277D85DE8];
  NSStringFromSelector(v1);
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_5() length];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

@end