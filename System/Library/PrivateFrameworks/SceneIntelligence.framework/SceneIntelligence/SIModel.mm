@interface SIModel
- (CGSize)getInputResolution;
- (CGSize)getOutputResolution;
- (SIModel)initWithNetworkConfiguration:(id)a3;
- (id)colletSubloggerTable;
- (id)subLoggers;
- (int64_t)evaluateWithInput:(id)a3 outputs:(id)a4;
- (int64_t)switchNetworkConfiguration:(int64_t)a3;
- (int64_t)unwirePrewiringBuffers;
@end

@implementation SIModel

- (SIModel)initWithNetworkConfiguration:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SIModel;
  v6 = [(SIModel *)&v20 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_16;
  }

  if ((SISupportANE() & 1) == 0 && [v5 engineType] == 1)
  {
    v8 = __SceneIntelligenceLogSharedInstance();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136380931;
      *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
      v22 = 1025;
      v23 = 39;
      _os_log_impl(&dword_21DE0D000, v8, OS_LOG_TYPE_INFO, " %{private}s:%{private}d *** ANE is not available on this device. Initializing by MPS instead ***", buf, 0x12u);
    }

    [v5 setEngineType:0];
    [v5 setRunByE5RT:0];
  }

  v9 = ([v5 engineType] == 1 && (objc_msgSend(v5, "runByE5RT") & 1) != 0 ? off_27833B9E8 : off_27833B9F0);
  v10 = [objc_alloc(*v9) initWithNetworkConfiguration:v5];
  network = v6->_network;
  v6->_network = v10;

  [(SIModel *)v6 setPolarisHandle:0];
  v12 = [v5 networkName];
  *buf = 0;
  v13 = [v12 getBytes:buf maxLength:8 usedLength:0 encoding:1 options:0 range:0 remainingRange:{objc_msgSend(v12, "length"), 0}] ? *buf : 0;

  v6->_algorithmNameHash = v13;
  if ([(SINetworkProtocol *)v6->_network prepare])
  {
    objc_storeStrong(&v6->_config, a3);
    v14 = [(SIModel *)v6 colletSubloggerTable];
    subLoggerTable = v6->_subLoggerTable;
    v6->_subLoggerTable = v14;

    v16 = [(SIModel *)v6 subLoggers];
    SIVLRegisterSubloggers(v16);

    v17 = v7;
  }

  else
  {
LABEL_16:
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (CGSize)getOutputResolution
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 136380931;
    v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
    v8 = 1025;
    v9 = 85;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** output resolution method must be overriden ***", &v6, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  v5 = 0.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)getInputResolution
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = 136380931;
    v7 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
    v8 = 1025;
    v9 = 91;
    _os_log_impl(&dword_21DE0D000, v2, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** input resolution method must be overriden ***", &v6, 0x12u);
  }

  v3 = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  v5 = 0.0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (int64_t)switchNetworkConfiguration:(int64_t)a3
{
  v11 = a3;
  v4 = NSSelectorFromString(&cfstr_Setnetworkmode.isa);
  v5 = [(SINetworkConfiguration *)self->_config methodSignatureForSelector:v4];
  v6 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
  [v6 setSelector:v4];
  [v6 invokeWithTarget:self->_config];
  [v6 setArgument:&v11 atIndex:2];
  [v6 invoke];
  network = self->_network;
  v8 = [(SINetworkConfiguration *)self->_config networkMode];
  v9 = [(SINetworkProtocol *)network switchConfiguration:v8];

  return v9;
}

- (int64_t)evaluateWithInput:(id)a3 outputs:(id)a4
{
  v119 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v86 = a4;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v100 objects:v118 count:16];
  if (v7)
  {
    v8 = 0;
    v88 = *v101;
    v89 = 0;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v101 != v88)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v100 + 1) + 8 * i);
        v11 = [obj objectForKeyedSubscript:v10];
        v12 = [v11 surface];

        if (v12)
        {
          v13 = [v12 width];
          v14 = [v12 height];
          v15 = [(SINetworkProtocol *)self->_network getInputWidth:v10];
          v16 = [(SINetworkProtocol *)self->_network getInputHeight:v10];
          if ([v12 pixelFormat] == 1278226488 && v14 == 1)
          {
            v22 = [(SINetworkProtocol *)self->_network getInputSizeInBytes:v10];
            if (v13 < v22)
            {
              v81 = __SceneIntelligenceLogSharedInstance();
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                *buf = 136381443;
                v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
                v108 = 1025;
                v109 = 153;
                v110 = 2048;
                v111 = v13;
                v112 = 2049;
                v113 = v22;
                v77 = " %{private}s:%{private}d *** Unexpected image input size (%zu bytes). (Expected at least: %{private}zu bytes) ***";
                v78 = v81;
                v79 = 38;
                goto LABEL_79;
              }

LABEL_80:
              v76 = 1;
              goto LABEL_81;
            }
          }

          else if ([v12 planes] == 1)
          {
            v87 = v12;
            v18 = v8;
            v19 = v7;
            v20 = [(SINetworkProtocol *)self->_network getInputChannels:v10];
            if ([(SINetworkConfiguration *)self->_config blendChannelWidthHeight])
            {
              v21 = v16 * v15 * v20;
              v7 = v19;
              v8 = v18;
              v12 = v87;
              if (v14 * v13 != v21)
              {
                v81 = __SceneIntelligenceLogSharedInstance();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136381955;
                  v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
                  v108 = 1025;
                  v109 = 160;
                  v110 = 2048;
                  v111 = v13;
                  v112 = 2048;
                  v113 = v14;
                  v114 = 2049;
                  v115 = v15;
                  v116 = 2049;
                  v117 = v16;
                  v77 = " %{private}s:%{private}d *** Unexpected image input resolution (%zu, %zu). (Expected: %{private}zu %{private}zu) ***";
                  goto LABEL_78;
                }

                goto LABEL_80;
              }
            }

            else
            {
              v41 = v14 == 1 && v13 == v16 * v15 * v20;
              v42 = v14 == v16 && v13 == v15;
              v7 = v19;
              v8 = v18;
              v12 = v87;
              if (!v42 && !v41)
              {
                v81 = __SceneIntelligenceLogSharedInstance();
                if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136381955;
                  v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
                  v108 = 1025;
                  v109 = 167;
                  v110 = 2048;
                  v111 = v13;
                  v112 = 2048;
                  v113 = v14;
                  v114 = 2049;
                  v115 = v15;
                  v116 = 2049;
                  v117 = v16;
                  v77 = " %{private}s:%{private}d *** Unexpected image input resolution (%zu, %zu). (Expected: %{private}zu %{private}zu) ***";
LABEL_78:
                  v78 = v81;
                  v79 = 58;
LABEL_79:
                  _os_log_impl(&dword_21DE0D000, v78, OS_LOG_TYPE_ERROR, v77, buf, v79);
                }

                goto LABEL_80;
              }
            }
          }

          v23 = v89;
          v24 = v14 * v13 > v8 * v89;
          if (v14 * v13 > v8 * v89)
          {
            v23 = v14;
          }

          v89 = v23;
          if (v24)
          {
            v8 = v13;
          }

          if ([(SINetworkProtocol *)self->_network setInput:v10 fromSurface:v12])
          {
            v81 = __SceneIntelligenceLogSharedInstance();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v75 = [v12 identifier];
              *buf = 136381443;
              v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
              v108 = 1025;
              v109 = 183;
              v110 = 2113;
              v111 = v10;
              v112 = 2048;
              v113 = v75;
              _os_log_impl(&dword_21DE0D000, v81, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to set the input for blob= %{private}@ buffer_id= %lld. Inference interrupted. ***", buf, 0x26u);
            }

            v76 = 4;
LABEL_81:
            v90 = v76;
            v48 = obj;
LABEL_82:

            goto LABEL_83;
          }

          v25 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
          v26 = SIVLIsSubloggerEnabled(v25);

          if (v26)
          {
            algorithmNameHash = self->_algorithmNameHash;
            mappingId = self->_mappingId;
            kdebug_trace();
            v29 = [obj objectForKeyedSubscript:v10];
            v30 = [v29 pixelBuffer];

            if (CVPixelBufferGetPixelFormatType(v30) == 875836518)
            {
              v31 = SICreatePixelBufferWithNewFormatFromExistingBuffer(v30, 0x42475241u);
              v32 = SICreateRGBFromBGRAPixelBuffer(v31);
              [(SIModel *)self frameTimestamp];
              v34 = v33;
              v35 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
              SIVLLogPixelBuffer(v32, v35, @"input", v34);

              CVPixelBufferRelease(v31);
              CVPixelBufferRelease(v32);
            }

            else if (CVPixelBufferGetPixelFormatType(v30) == 1111970369)
            {
              v36 = SICreateRGBFromBGRAPixelBuffer(v30);
              [(SIModel *)self frameTimestamp];
              v38 = v37;
              v39 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
              SIVLLogPixelBuffer(v36, v39, @"input", v38);

              CVPixelBufferRelease(v36);
            }

            else
            {
              [(SIModel *)self frameTimestamp];
              v44 = v43;
              v45 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v10];
              SIVLLogPixelBuffer(v30, v45, @"input", v44);
            }

            v46 = self->_algorithmNameHash;
            v47 = self->_mappingId;
            kdebug_trace();
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v100 objects:v118 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  if ([(SINetworkProtocol *)self->_network supportZeroCopyOutput])
  {
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v48 = v86;
    v49 = [v48 countByEnumeratingWithState:&v96 objects:v105 count:16];
    if (v49)
    {
      v50 = *v97;
      while (2)
      {
        for (j = 0; j != v49; ++j)
        {
          if (*v97 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v96 + 1) + 8 * j);
          v53 = [v48 objectForKeyedSubscript:v52];
          v12 = [v53 surface];

          if (v12 && [(SINetworkProtocol *)self->_network setOutputBlob:v52 forOutputSurface:v12])
          {
            v81 = __SceneIntelligenceLogSharedInstance();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v80 = [v12 identifier];
              *buf = 136381443;
              v107 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/SIModel.mm";
              v108 = 1025;
              v109 = 221;
              v110 = 2113;
              v111 = v52;
              v112 = 2048;
              v113 = v80;
              _os_log_impl(&dword_21DE0D000, v81, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to set the output for blob= %{private}@ buffer_id= %lld. Inference interrupted. ***", buf, 0x26u);
            }

            v90 = 4;
            goto LABEL_82;
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v96 objects:v105 count:16];
        if (v49)
        {
          continue;
        }

        break;
      }
    }
  }

  v54 = self->_algorithmNameHash;
  v55 = self->_mappingId;
  kdebug_trace();
  v90 = [(SINetworkProtocol *)self->_network runNetwork:[(SIModel *)self polarisHandle]];
  [(SIModel *)self setPolarisHandle:0];
  v56 = self->_algorithmNameHash;
  v57 = self->_mappingId;
  kdebug_trace();
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v48 = v86;
  v58 = [v48 countByEnumeratingWithState:&v92 objects:v104 count:16];
  if (v58)
  {
    v59 = *v93;
    do
    {
      for (k = 0; k != v58; ++k)
      {
        if (*v93 != v59)
        {
          objc_enumerationMutation(v48);
        }

        v61 = *(*(&v92 + 1) + 8 * k);
        v62 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v61];
        v63 = SIVLIsSubloggerEnabled(v62);

        if (v63)
        {
          v64 = self->_algorithmNameHash;
          v65 = self->_mappingId;
          kdebug_trace();
          v66 = [v48 objectForKeyedSubscript:v61];
          v67 = [v66 pixelBuffer];

          if (v67)
          {
            v68 = [[SIIOSurface alloc] initFromPixelBuffer:v67];
          }

          else
          {
            v69 = [(SIModel *)self network];
            v68 = [v69 getOutputSurface:v61];
          }

          [(SIModel *)self frameTimestamp];
          v71 = v70;
          v72 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:v61];
          SIVLLogSurface(v68, v72, @"output", v71);

          v73 = self->_algorithmNameHash;
          v74 = self->_mappingId;
          kdebug_trace();
        }
      }

      v58 = [v48 countByEnumeratingWithState:&v92 objects:v104 count:16];
    }

    while (v58);
  }

LABEL_83:

  v84 = *MEMORY[0x277D85DE8];
  return v90;
}

- (int64_t)unwirePrewiringBuffers
{
  v2 = [(SIModel *)self network];
  v3 = [v2 unwirePrewiringBuffers];

  return v3;
}

- (id)colletSubloggerTable
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [(SIModel *)self network];
  v5 = [v4 networkInputNames];

  obj = v5;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v31 + 1) + 8 * i);
        v10 = objc_alloc(MEMORY[0x277CCACA8]);
        v11 = SIVLFrameworkPrefix();
        v12 = [(SINetworkConfiguration *)self->_config defaultVisualLoggerName];
        v13 = [v10 initWithFormat:@"%@.%@.ML.input_%@", v11, v12, v9];

        [v3 setObject:v13 forKey:v9];
      }

      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = [(SIModel *)self network];
  obja = [v14 networkOutputNames];

  v15 = [obja countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = *v28;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v18 = *(*(&v27 + 1) + 8 * j);
        v19 = objc_alloc(MEMORY[0x277CCACA8]);
        v20 = SIVLFrameworkPrefix();
        v21 = [(SINetworkConfiguration *)self->_config defaultVisualLoggerName];
        v22 = [v19 initWithFormat:@"%@.%@.ML.output_%@", v20, v21, v18];

        [v3 setObject:v22 forKey:v18];
      }

      v15 = [obja countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v15);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)subLoggers
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_subLoggerTable;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSDictionary *)self->_subLoggerTable objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i), v11];
        [v3 addObject:v8];
      }

      v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

@end