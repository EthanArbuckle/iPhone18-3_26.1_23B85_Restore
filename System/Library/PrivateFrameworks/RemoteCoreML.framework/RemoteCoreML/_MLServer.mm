@interface _MLServer
- (_MLServer)initWithOptions:(id)a3;
- (void)doReceive:(id)a3 context:(id)a4 isComplete:(BOOL)a5 error:(id)a6;
@end

@implementation _MLServer

- (_MLServer)initWithOptions:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = _MLServer;
  v6 = [(_MLServer *)&v20 init];
  if (v6)
  {
    v7 = objc_opt_new();
    packet = v6->_packet;
    v6->_packet = v7;

    v9 = dispatch_queue_create("com.apple.remoteCoreMLServer", 0);
    q = v6->_q;
    v6->_q = v9;

    v11 = [[_MLNetworkOptions alloc] initWithOptions:v5];
    nwOptions = v6->_nwOptions;
    v6->_nwOptions = v11;

    v13 = [[_MLNetworking alloc] initListener:v6->_nwOptions];
    nwObj = v6->_nwObj;
    v6->_nwObj = v13;

    objc_initWeak(&location, v6);
    v15 = v6->_nwObj;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __29___MLServer_initWithOptions___block_invoke;
    v17[3] = &unk_279AFC9E8;
    objc_copyWeak(v18, &location);
    v18[1] = a2;
    [(_MLNetworking *)v15 setListenerReceiveDataCallBack:v17];
    objc_destroyWeak(v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)doReceive:(id)a3 context:(id)a4 isComplete:(BOOL)a5 error:(id)a6
{
  v64 = *MEMORY[0x277D85DE8];
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __48___MLServer_doReceive_context_isComplete_error___block_invoke;
  applier[3] = &unk_279AFCAB0;
  applier[4] = self;
  applier[5] = a2;
  dispatch_data_apply(a3, applier);
  v8 = [(_MLServer *)self packet];
  v9 = [v8 sizeOfPacket];

  if (!v9)
  {
    v10 = [(_MLServer *)self packet];
    v11 = [v10 buffer];
    v12 = [_MLNetworkHeaderEncoding getHeaderEncoding:v11];
    v13 = [(_MLServer *)self packet];
    [v13 setCommand:v12];

    v14 = [(_MLServer *)self packet];
    v15 = [v14 buffer];
    v16 = [_MLNetworkHeaderEncoding getHeaderDataSize:v15];
    v17 = [(_MLServer *)self packet];
    [v17 setSizeOfPacket:v16];

    v18 = +[_MLLog serverFramework];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [_MLServer doReceive:a2 context:self isComplete:v18 error:?];
    }
  }

  v19 = [(_MLServer *)self packet];
  v20 = +[_MLNetworkHeaderEncoding isHeaderError:](_MLNetworkHeaderEncoding, "isHeaderError:", [v19 command]);

  if (v20)
  {
    v21 = +[_MLLog serverFramework];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [_MLServer doReceive:a2 context:self isComplete:? error:?];
    }

    v22 = +[_MLNetworkHeaderEncoding acknowledgeFailData];
    v23 = [(_MLServer *)self nwObj];
    [v23 sendData:v22];

    v24 = [(_MLServer *)self packet];
    [v24 cleanupDoubleBuffer];
  }

  else
  {
    v25 = [(_MLServer *)self packet];
    v26 = [v25 buffer];
    v27 = [v26 length];
    v28 = v27 - +[_MLNetworkHeaderEncoding getHeaderSize];

    v29 = [(_MLServer *)self packet];
    v30 = [v29 sizeOfPacket];

    if (v30 <= v28)
    {
      v32 = [(_MLServer *)self packet];
      v33 = v28 - [v32 sizeOfPacket];

      if (v33 >= 1)
      {
        v34 = [(_MLServer *)self packet];
        v35 = [v34 buffer];
        v36 = [_MLNetworkHeaderEncoding getHeaderEnd:v35];

        v37 = [MEMORY[0x277CBEB28] dataWithBytes:v36 length:v33];
        v38 = [(_MLServer *)self packet];
        [v38 setDoubleBuffer:v37];
      }

      v39 = [(_MLServer *)self packet];
      v40 = [v39 buffer];
      v41 = [_MLNetworkHeaderEncoding getHeaderDataStart:v40];

      v42 = MEMORY[0x277CBEB28];
      v43 = [(_MLServer *)self packet];
      v44 = [v42 dataWithBytes:v41 length:{objc_msgSend(v43, "sizeOfPacket")}];
      v45 = [(_MLServer *)self packet];
      [v45 setBuffer:v44];

      q = self->_q;
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __48___MLServer_doReceive_context_isComplete_error___block_invoke_8;
      v54[3] = &unk_279AFCAD8;
      v54[4] = self;
      v54[5] = a2;
      dispatch_sync(q, v54);
    }

    else
    {
      v31 = +[_MLLog serverFramework];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v48 = NSStringFromSelector(a2);
        v49 = [(_MLServer *)self packet];
        v50 = [v49 sizeOfPacket];
        v51 = [(_MLServer *)self packet];
        v52 = [v51 buffer];
        v53 = [v52 length];
        *buf = 138413058;
        v57 = v48;
        v58 = 2048;
        v59 = v50;
        v60 = 2048;
        v61 = v53;
        v62 = 2048;
        v63 = v28;
        _os_log_debug_impl(&dword_261D92000, v31, OS_LOG_TYPE_DEBUG, "%@: Size of Packet: %zu < Size of current %zu buffer_length %zu.", buf, 0x2Au);
      }
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

- (void)doReceive:(NSObject *)a3 context:isComplete:error:.cold.1(const char *a1, void *a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 packet];
  v7 = [v6 sizeOfPacket];
  v8 = [a2 packet];
  v10 = 138412802;
  v11 = v5;
  v12 = 2048;
  v13 = v7;
  v14 = 2048;
  v15 = [v8 command];
  _os_log_debug_impl(&dword_261D92000, a3, OS_LOG_TYPE_DEBUG, "%@: Begin Packet size = %lu command %lu", &v10, 0x20u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)doReceive:(const char *)a1 context:(void *)a2 isComplete:error:.cold.2(const char *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = [a2 packet];
  [v4 command];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);

  v10 = *MEMORY[0x277D85DE8];
}

@end