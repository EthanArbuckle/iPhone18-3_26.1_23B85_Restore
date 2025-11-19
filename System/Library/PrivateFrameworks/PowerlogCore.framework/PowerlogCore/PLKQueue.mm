@interface PLKQueue
- (PLKQueue)initWithPath:(id)a3 withDispatchQueue:(id)a4 withBlock:(id)a5;
- (void)setEnabled:(BOOL)a3;
@end

@implementation PLKQueue

- (PLKQueue)initWithPath:(id)a3 withDispatchQueue:(id)a4 withBlock:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = PLKQueue;
  v12 = [(PLKQueue *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, a3);
    objc_storeStrong(&v13->_dispatchQueue, a4);
    *&v13->_kQueue = -1;
    v13->_kqueueDescriptorSource = 0;
    v13->_kqueueDescriptorRef = 0;
    v14 = MEMORY[0x1DA71B0D0](v11);
    kQueueBlock = v13->_kQueueBlock;
    v13->_kQueueBlock = v14;
  }

  return v13;
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v70 = *MEMORY[0x1E69E9840];
  v4 = self;
  objc_sync_enter(v4);
  v4->_enabled = v3;
  if (+[PLDefaults debugEnabled])
  {
    v5 = objc_opt_class();
    v67[0] = MEMORY[0x1E69E9820];
    v67[1] = 3221225472;
    v67[2] = __23__PLKQueue_setEnabled___block_invoke;
    v67[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    v67[4] = v5;
    if (setEnabled__defaultOnce != -1)
    {
      dispatch_once(&setEnabled__defaultOnce, v67);
    }

    if (setEnabled__classDebugEnabled == 1)
    {
      v6 = MEMORY[0x1E696AEC0];
      v7 = NSStringFromBOOL();
      v8 = [v6 stringWithFormat:@"PLKQueue.setEnabled: enabled=%@", v7];

      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
      v10 = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
      [PLCoreStorage logMessage:v8 fromFile:v10 fromFunction:v11 fromLineNumber:53];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(PLIOHIDOperatorComposition *)v8 initWithOperator:v12 forService:v13, v14, v15, v16, v17, v18];
      }
    }
  }

  if (v3)
  {
    if ([(PLKQueue *)v4 kQueue]!= -1)
    {
      goto LABEL_53;
    }

    [(PLKQueue *)v4 setFileDescriptor:0xFFFFFFFFLL];
    for (i = 6; i > 1; --i)
    {
      if ([(PLKQueue *)v4 fileDescriptor]> 0)
      {
        break;
      }

      *__error() = 0;
      v20 = [(PLKQueue *)v4 path];
      v21 = v20;
      -[PLKQueue setFileDescriptor:](v4, "setFileDescriptor:", open([v20 fileSystemRepresentation], 0x8000));

      if ([(PLKQueue *)v4 fileDescriptor]<= 0)
      {
        if (+[PLDefaults debugEnabled])
        {
          v22 = objc_opt_class();
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __23__PLKQueue_setEnabled___block_invoke_16;
          block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
          block[4] = v22;
          if (setEnabled__defaultOnce_14 != -1)
          {
            dispatch_once(&setEnabled__defaultOnce_14, block);
          }

          if (setEnabled__classDebugEnabled_15 == 1)
          {
            v23 = MEMORY[0x1E696AEC0];
            v24 = [(PLKQueue *)v4 fileDescriptor];
            v25 = *__error();
            v26 = __error();
            v27 = [v23 stringWithFormat:@"PLKQueue.enabled error! fileDescriptor=%d errno=%d-%s", v24, v25, strerror(*v26)];
            v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
            v29 = [v28 lastPathComponent];
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
            [PLCoreStorage logMessage:v27 fromFile:v29 fromFunction:v30 fromLineNumber:63];

            v31 = PLLogCommon();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(buf.version) = 138412290;
              *(&buf.version + 4) = v27;
              _os_log_debug_impl(&dword_1D8611000, v31, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
            }
          }
        }

        sleep(1u);
      }
    }

    if ([(PLKQueue *)v4 fileDescriptor]< 1)
    {
      v62 = "self.fileDescriptor > 0";
      v63 = 68;
    }

    else
    {
      for (j = 6; j > 1; --j)
      {
        if ([(PLKQueue *)v4 kQueue]> 0)
        {
          break;
        }

        *__error() = 0;
        [(PLKQueue *)v4 setKQueue:kqueue()];
        if ([(PLKQueue *)v4 kQueue]<= 0)
        {
          if (+[PLDefaults debugEnabled])
          {
            v35 = objc_opt_class();
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __23__PLKQueue_setEnabled___block_invoke_24;
            v65[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v65[4] = v35;
            if (setEnabled__defaultOnce_22 != -1)
            {
              dispatch_once(&setEnabled__defaultOnce_22, v65);
            }

            if (setEnabled__classDebugEnabled_23 == 1)
            {
              v36 = MEMORY[0x1E696AEC0];
              v37 = [(PLKQueue *)v4 kQueue];
              v38 = *__error();
              v39 = __error();
              v40 = [v36 stringWithFormat:@"PLKQueue.enabled error! kQueue=%d errno=%d-%s", v37, v38, strerror(*v39)];
              v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
              v42 = [v41 lastPathComponent];
              v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
              [PLCoreStorage logMessage:v40 fromFile:v42 fromFunction:v43 fromLineNumber:75];

              v44 = PLLogCommon();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                LODWORD(buf.version) = 138412290;
                *(&buf.version + 4) = v40;
                _os_log_debug_impl(&dword_1D8611000, v44, OS_LOG_TYPE_DEBUG, "%@", &buf, 0xCu);
              }
            }
          }

          sleep(1u);
        }
      }

      if ([(PLKQueue *)v4 kQueue]> 0)
      {
        changelist.ident = [(PLKQueue *)v4 fileDescriptor];
        *&changelist.filter = 0x7F0025FFFCLL;
        changelist.data = 0;
        changelist.udata = &v4->_fileDescriptor;
        if (kevent([(PLKQueue *)v4 kQueue], &changelist, 1, 0, 0, 0) == -1)
        {
          if (+[PLDefaults debugEnabled])
          {
            v45 = objc_opt_class();
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __23__PLKQueue_setEnabled___block_invoke_31;
            v64[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v64[4] = v45;
            if (setEnabled__defaultOnce_29 != -1)
            {
              dispatch_once(&setEnabled__defaultOnce_29, v64);
            }

            if (setEnabled__classDebugEnabled_30 == 1)
            {
              v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to setup kQueue"];
              v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
              v48 = [v47 lastPathComponent];
              v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
              [PLCoreStorage logMessage:v46 fromFile:v48 fromFunction:v49 fromLineNumber:89];

              v50 = PLLogCommon();
              if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
              {
                [(PLIOHIDOperatorComposition *)v46 initWithOperator:v50 forService:v51, v52, v53, v54, v55, v56];
              }
            }
          }

          [PLUtilities exitWithReason:102];
        }

        buf.version = 0;
        memset(&buf.retain, 0, 24);
        buf.info = v4;
        v57 = [(PLKQueue *)v4 kQueue];
        v58 = *MEMORY[0x1E695E480];
        [(PLKQueue *)v4 setKqueueDescriptorRef:CFFileDescriptorCreate(*MEMORY[0x1E695E480], v57, 1u, kQueueEvent, &buf)];
        CFFileDescriptorEnableCallBacks([(PLKQueue *)v4 kqueueDescriptorRef], 1uLL);
        [(PLKQueue *)v4 setKqueueDescriptorSource:CFFileDescriptorCreateRunLoopSource(v58, [(PLKQueue *)v4 kqueueDescriptorRef], 0)];
        Main = CFRunLoopGetMain();
        v60 = [(PLKQueue *)v4 kqueueDescriptorSource];
        CFRunLoopAddSource(Main, v60, *MEMORY[0x1E695E8E0]);
        goto LABEL_53;
      }

      v62 = "self.kQueue > 0";
      v63 = 80;
    }

    __assert_rtn("[PLKQueue setEnabled:]", "PLKQueue.m", v63, v62);
  }

  if ([(PLKQueue *)v4 kqueueDescriptorSource])
  {
    v32 = CFRunLoopGetMain();
    v33 = [(PLKQueue *)v4 kqueueDescriptorSource];
    CFRunLoopRemoveSource(v32, v33, *MEMORY[0x1E695E8E0]);
    CFRelease([(PLKQueue *)v4 kqueueDescriptorSource]);
    [(PLKQueue *)v4 setKqueueDescriptorSource:0];
  }

  if ([(PLKQueue *)v4 kqueueDescriptorRef])
  {
    CFFileDescriptorInvalidate([(PLKQueue *)v4 kqueueDescriptorRef]);
    CFRelease([(PLKQueue *)v4 kqueueDescriptorRef]);
    [(PLKQueue *)v4 setKqueueDescriptorRef:0];
    [(PLKQueue *)v4 setKQueue:0xFFFFFFFFLL];
  }

  if ([(PLKQueue *)v4 fileDescriptor]!= -1)
  {
    close([(PLKQueue *)v4 fileDescriptor]);
    [(PLKQueue *)v4 setFileDescriptor:0xFFFFFFFFLL];
  }

LABEL_53:
  objc_sync_exit(v4);

  v61 = *MEMORY[0x1E69E9840];
}

BOOL __23__PLKQueue_setEnabled___block_invoke(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled = result;
  return result;
}

BOOL __23__PLKQueue_setEnabled___block_invoke_16(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled_15 = result;
  return result;
}

BOOL __23__PLKQueue_setEnabled___block_invoke_24(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled_23 = result;
  return result;
}

BOOL __23__PLKQueue_setEnabled___block_invoke_31(uint64_t a1)
{
  result = [PLDefaults isClassDebugEnabled:*(a1 + 32)];
  setEnabled__classDebugEnabled_30 = result;
  return result;
}

@end