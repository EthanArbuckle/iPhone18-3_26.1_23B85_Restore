@interface PLKQueue
- (PLKQueue)initWithPath:(id)path withDispatchQueue:(id)queue withBlock:(id)block;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation PLKQueue

- (PLKQueue)initWithPath:(id)path withDispatchQueue:(id)queue withBlock:(id)block
{
  pathCopy = path;
  queueCopy = queue;
  blockCopy = block;
  v17.receiver = self;
  v17.super_class = PLKQueue;
  v12 = [(PLKQueue *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_path, path);
    objc_storeStrong(&v13->_dispatchQueue, queue);
    *&v13->_kQueue = -1;
    v13->_kqueueDescriptorSource = 0;
    v13->_kqueueDescriptorRef = 0;
    v14 = MEMORY[0x1DA71B0D0](blockCopy);
    kQueueBlock = v13->_kQueueBlock;
    v13->_kQueueBlock = v14;
  }

  return v13;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v70 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_enabled = enabledCopy;
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
      lastPathComponent = [v9 lastPathComponent];
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
      [PLCoreStorage logMessage:v8 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:53];

      v12 = PLLogCommon();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [(PLIOHIDOperatorComposition *)v8 initWithOperator:v12 forService:v13, v14, v15, v16, v17, v18];
      }
    }
  }

  if (enabledCopy)
  {
    if ([(PLKQueue *)selfCopy kQueue]!= -1)
    {
      goto LABEL_53;
    }

    [(PLKQueue *)selfCopy setFileDescriptor:0xFFFFFFFFLL];
    for (i = 6; i > 1; --i)
    {
      if ([(PLKQueue *)selfCopy fileDescriptor]> 0)
      {
        break;
      }

      *__error() = 0;
      path = [(PLKQueue *)selfCopy path];
      v21 = path;
      -[PLKQueue setFileDescriptor:](selfCopy, "setFileDescriptor:", open([path fileSystemRepresentation], 0x8000));

      if ([(PLKQueue *)selfCopy fileDescriptor]<= 0)
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
            fileDescriptor = [(PLKQueue *)selfCopy fileDescriptor];
            v25 = *__error();
            v26 = __error();
            v27 = [v23 stringWithFormat:@"PLKQueue.enabled error! fileDescriptor=%d errno=%d-%s", fileDescriptor, v25, strerror(*v26)];
            v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
            lastPathComponent2 = [v28 lastPathComponent];
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
            [PLCoreStorage logMessage:v27 fromFile:lastPathComponent2 fromFunction:v30 fromLineNumber:63];

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

    if ([(PLKQueue *)selfCopy fileDescriptor]< 1)
    {
      v62 = "self.fileDescriptor > 0";
      v63 = 68;
    }

    else
    {
      for (j = 6; j > 1; --j)
      {
        if ([(PLKQueue *)selfCopy kQueue]> 0)
        {
          break;
        }

        *__error() = 0;
        [(PLKQueue *)selfCopy setKQueue:kqueue()];
        if ([(PLKQueue *)selfCopy kQueue]<= 0)
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
              kQueue = [(PLKQueue *)selfCopy kQueue];
              v38 = *__error();
              v39 = __error();
              v40 = [v36 stringWithFormat:@"PLKQueue.enabled error! kQueue=%d errno=%d-%s", kQueue, v38, strerror(*v39)];
              v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices/Utilities/PLKQueue.m"];
              lastPathComponent3 = [v41 lastPathComponent];
              v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
              [PLCoreStorage logMessage:v40 fromFile:lastPathComponent3 fromFunction:v43 fromLineNumber:75];

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

      if ([(PLKQueue *)selfCopy kQueue]> 0)
      {
        changelist.ident = [(PLKQueue *)selfCopy fileDescriptor];
        *&changelist.filter = 0x7F0025FFFCLL;
        changelist.data = 0;
        changelist.udata = &selfCopy->_fileDescriptor;
        if (kevent([(PLKQueue *)selfCopy kQueue], &changelist, 1, 0, 0, 0) == -1)
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
              lastPathComponent4 = [v47 lastPathComponent];
              v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLKQueue setEnabled:]"];
              [PLCoreStorage logMessage:v46 fromFile:lastPathComponent4 fromFunction:v49 fromLineNumber:89];

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
        buf.info = selfCopy;
        kQueue2 = [(PLKQueue *)selfCopy kQueue];
        v58 = *MEMORY[0x1E695E480];
        [(PLKQueue *)selfCopy setKqueueDescriptorRef:CFFileDescriptorCreate(*MEMORY[0x1E695E480], kQueue2, 1u, kQueueEvent, &buf)];
        CFFileDescriptorEnableCallBacks([(PLKQueue *)selfCopy kqueueDescriptorRef], 1uLL);
        [(PLKQueue *)selfCopy setKqueueDescriptorSource:CFFileDescriptorCreateRunLoopSource(v58, [(PLKQueue *)selfCopy kqueueDescriptorRef], 0)];
        Main = CFRunLoopGetMain();
        kqueueDescriptorSource = [(PLKQueue *)selfCopy kqueueDescriptorSource];
        CFRunLoopAddSource(Main, kqueueDescriptorSource, *MEMORY[0x1E695E8E0]);
        goto LABEL_53;
      }

      v62 = "self.kQueue > 0";
      v63 = 80;
    }

    __assert_rtn("[PLKQueue setEnabled:]", "PLKQueue.m", v63, v62);
  }

  if ([(PLKQueue *)selfCopy kqueueDescriptorSource])
  {
    v32 = CFRunLoopGetMain();
    kqueueDescriptorSource2 = [(PLKQueue *)selfCopy kqueueDescriptorSource];
    CFRunLoopRemoveSource(v32, kqueueDescriptorSource2, *MEMORY[0x1E695E8E0]);
    CFRelease([(PLKQueue *)selfCopy kqueueDescriptorSource]);
    [(PLKQueue *)selfCopy setKqueueDescriptorSource:0];
  }

  if ([(PLKQueue *)selfCopy kqueueDescriptorRef])
  {
    CFFileDescriptorInvalidate([(PLKQueue *)selfCopy kqueueDescriptorRef]);
    CFRelease([(PLKQueue *)selfCopy kqueueDescriptorRef]);
    [(PLKQueue *)selfCopy setKqueueDescriptorRef:0];
    [(PLKQueue *)selfCopy setKQueue:0xFFFFFFFFLL];
  }

  if ([(PLKQueue *)selfCopy fileDescriptor]!= -1)
  {
    close([(PLKQueue *)selfCopy fileDescriptor]);
    [(PLKQueue *)selfCopy setFileDescriptor:0xFFFFFFFFLL];
  }

LABEL_53:
  objc_sync_exit(selfCopy);

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