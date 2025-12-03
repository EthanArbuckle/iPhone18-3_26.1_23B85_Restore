@interface SIE5RTPort
- (id)initPortWithE5RTStreamOperation:(e5rt_execution_stream_operation *)operation blobName:(id)name portType:(int64_t)type operationBackend:(int64_t)backend surfaceAllocator:(id)allocator;
- (int64_t)bindPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation SIE5RTPort

- (id)initPortWithE5RTStreamOperation:(e5rt_execution_stream_operation *)operation blobName:(id)name portType:(int64_t)type operationBackend:(int64_t)backend surfaceAllocator:(id)allocator
{
  v40 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  allocatorCopy = allocator;
  v33.receiver = self;
  v33.super_class = SIE5RTPort;
  v14 = [(SIE5RTPort *)&v33 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_27;
  }

  objc_storeStrong(&v14->_name, name);
  v15->_portType = type;
  v15->_engineType = backend;
  [nameCopy UTF8String];
  if (!type)
  {
    if (e5rt_execution_stream_operation_retain_input_port())
    {
      v19 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m", 47);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
        v36 = 1025;
        v37 = 47;
        v38 = 2113;
        v39 = v20;
        _os_log_impl(&dword_21DE0D000, v19, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v21 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136381187;
      v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
      v36 = 1025;
      v37 = 47;
      v38 = 2113;
      v39 = nameCopy;
      v22 = " %{private}s:%{private}d *** Failed to retain the input port for blob: %{private}@ ***";
      v23 = v21;
      v24 = 28;
      goto LABEL_25;
    }

LABEL_14:
    port = v15->_port;
    if (e5rt_io_port_is_tensor())
    {
      v26 = __SceneIntelligenceLogSharedInstance();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m", 58);
        *buf = 136381187;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
        v36 = 1025;
        v37 = 58;
        v38 = 2113;
        v39 = v27;
        _os_log_impl(&dword_21DE0D000, v26, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
      }

      v21 = __SceneIntelligenceLogSharedInstance();
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_26;
      }

      *buf = 136380931;
      v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
      v36 = 1025;
      v37 = 58;
      v22 = " %{private}s:%{private}d *** Failed to check the port type - tensor ***";
    }

    else
    {
      v28 = v15->_port;
      if (e5rt_io_port_is_surface())
      {
        v29 = __SceneIntelligenceLogSharedInstance();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m", 61);
          *buf = 136381187;
          v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
          v36 = 1025;
          v37 = 61;
          v38 = 2113;
          v39 = v30;
          _os_log_impl(&dword_21DE0D000, v29, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
        }

        v21 = __SceneIntelligenceLogSharedInstance();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 136380931;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
        v36 = 1025;
        v37 = 61;
        v22 = " %{private}s:%{private}d *** Failed to check the port type - surface ***";
      }

      else
      {
        v21 = __SceneIntelligenceLogSharedInstance();
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        *buf = 136380931;
        v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
        v36 = 1025;
        v37 = 72;
        v22 = " %{private}s:%{private}d *** Failed to initialize io port: Unknown port descriptor ***";
      }
    }

    v23 = v21;
    v24 = 18;
LABEL_25:
    _os_log_impl(&dword_21DE0D000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
LABEL_26:

    goto LABEL_27;
  }

  if (!e5rt_execution_stream_operation_retain_output_port())
  {
    goto LABEL_14;
  }

  v16 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = createE5RTExceptionMessage("/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m", 51);
    *buf = 136381187;
    v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
    v36 = 1025;
    v37 = 51;
    v38 = 2113;
    v39 = v17;
    _os_log_impl(&dword_21DE0D000, v16, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** E5RT error message: %{private}@ ***", buf, 0x1Cu);
  }

  v18 = __SceneIntelligenceLogSharedInstance();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 136381187;
    v35 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/E5RT/SIE5RTPort.m";
    v36 = 1025;
    v37 = 51;
    v38 = 2113;
    v39 = nameCopy;
    _os_log_impl(&dword_21DE0D000, v18, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Failed to retain the output port for blob: %{private}@ ***", buf, 0x1Cu);
  }

LABEL_27:
  v31 = *MEMORY[0x277D85DE8];
  return 0;
}

- (int64_t)bindPixelBuffer:(__CVBuffer *)buffer
{
  desc = self->_desc;
  v4 = [[SIIOSurface alloc] initFromPixelBuffer:buffer];
  v5 = [(SIE5RTPortDescriptor *)desc bindSurface:v4];

  return v5;
}

@end