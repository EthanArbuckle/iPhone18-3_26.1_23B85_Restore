@interface RPFileTransferResumeState
- (BOOL)addActiveFile:(id)file;
- (BOOL)addFinishedFile:(id)file;
- (BOOL)flushStateFile;
- (BOOL)isEmpty;
- (BOOL)loadStateFile;
- (BOOL)removeActiveFile:(id)file;
- (BOOL)removeAllActiveAndFinishedFileItems;
- (BOOL)removeFinishedFile:(id)file;
- (BOOL)removeStateFile;
- (BOOL)removeUnusableOutputFileItems;
- (BOOL)removeUnusableSourceFileItems;
- (BOOL)scheduleStateFileFlush;
- (RPFileTransferResumeState)init;
- (RPFileTransferResumeState)initWithDictionaryRepresentation:(id)representation error:(id *)error;
- (RPFileTransferResumeState)initWithDispatchQueue:(id)queue;
- (id)activeFileWithFileName:(id)name;
- (id)activeFiles;
- (id)finishedFileWithFileName:(id)name;
- (id)finishedFiles;
- (void)dealloc;
- (void)invalidate;
- (void)loadStateFile;
- (void)removeStateFile;
@end

@implementation RPFileTransferResumeState

- (RPFileTransferResumeState)init
{
  v11.receiver = self;
  v11.super_class = RPFileTransferResumeState;
  v2 = [(RPFileTransferResumeState *)&v11 init];
  v3 = v2;
  if (v2)
  {
    [(RPFileTransferResumeState *)v2 setIsPlaceholder:0];
    [(RPFileTransferResumeState *)v3 setDispatchQueue:0];
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)v4 setObject:@"1.0" forKey:@"version"];
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(NSMutableDictionary *)v4 setObject:v5 forKey:@"fileInfo"];
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:v6 forKey:@"activeFiles"];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:v7 forKey:@"finishedFiles"];
    stateInfo = v3->_stateInfo;
    v3->_stateInfo = v4;

    v9 = v3;
  }

  return v3;
}

- (RPFileTransferResumeState)initWithDispatchQueue:(id)queue
{
  queueCopy = queue;
  v5 = [(RPFileTransferResumeState *)self init];
  v6 = v5;
  if (v5)
  {
    [(RPFileTransferResumeState *)v5 setDispatchQueue:queueCopy];
    v7 = v6;
  }

  return v6;
}

- (RPFileTransferResumeState)initWithDictionaryRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = RPFileTransferResumeState;
  v7 = [(RPFileTransferResumeState *)&v18 init];
  v8 = v7;
  if (!v7)
  {
    v16 = 0;
    goto LABEL_9;
  }

  [(RPFileTransferResumeState *)v7 setIsPlaceholder:0];
  [(RPFileTransferResumeState *)v8 setDispatchQueue:0];
  v9 = [representationCopy objectForKey:@"version"];
  v10 = [representationCopy objectForKey:@"fileInfo"];
  v11 = [v10 objectForKey:@"activeFiles"];
  v12 = [v10 objectForKey:@"finishedFiles"];
  v13 = v12;
  if (!v9)
  {
    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v10)
  {
    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    if (error)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v12)
  {
    if (error)
    {
LABEL_17:
      RPErrorF();
      *error = v16 = 0;
      goto LABEL_7;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_7;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:representationCopy];
  stateInfo = v8->_stateInfo;
  v8->_stateInfo = v14;

  v16 = v8;
LABEL_7:

LABEL_9:
  return v16;
}

- (void)dealloc
{
  [(RPFileTransferResumeState *)self invalidate];
  v3.receiver = self;
  v3.super_class = RPFileTransferResumeState;
  [(RPFileTransferResumeState *)&v3 dealloc];
}

- (void)invalidate
{
  if ([(RPFileTransferResumeState *)self needsFlushing])
  {
    [(RPFileTransferResumeState *)self flushStateFile];
  }

  flushTimer = [(RPFileTransferResumeState *)self flushTimer];

  if (flushTimer)
  {
    flushTimer2 = [(RPFileTransferResumeState *)self flushTimer];
    dispatch_source_cancel(flushTimer2);

    [(RPFileTransferResumeState *)self setFlushTimer:0];
  }

  [(RPFileTransferResumeState *)self setDispatchQueue:0];
  stateInfo = self->_stateInfo;
  self->_stateInfo = 0;
}

- (BOOL)isEmpty
{
  activeFiles = [(RPFileTransferResumeState *)self activeFiles];
  finishedFiles = [(RPFileTransferResumeState *)self finishedFiles];
  v5 = ![activeFiles count] && !objc_msgSend(finishedFiles, "count");

  return v5;
}

- (id)activeFiles
{
  v2 = [(NSMutableDictionary *)self->_stateInfo objectForKey:@"fileInfo"];
  v3 = [v2 objectForKey:@"activeFiles"];

  return v3;
}

- (id)finishedFiles
{
  v2 = [(NSMutableDictionary *)self->_stateInfo objectForKey:@"fileInfo"];
  v3 = [v2 objectForKey:@"finishedFiles"];

  return v3;
}

- (id)activeFileWithFileName:(id)name
{
  nameCopy = name;
  activeFiles = [(RPFileTransferResumeState *)self activeFiles];
  v6 = [activeFiles objectForKey:nameCopy];

  if (v6)
  {
    v7 = [[RPFileTransferResumeStateItem alloc] initWithStateDict:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addActiveFile:(id)file
{
  fileCopy = file;
  activeFiles = [(RPFileTransferResumeState *)self activeFiles];
  fileName = [fileCopy fileName];
  v7 = [activeFiles objectForKey:fileName];
  fileInfo = [fileCopy fileInfo];

  if (fileName && fileInfo)
  {
    [activeFiles setValue:fileInfo forKey:fileName];
  }

  return v7 == 0;
}

- (BOOL)removeActiveFile:(id)file
{
  fileCopy = file;
  activeFiles = [(RPFileTransferResumeState *)self activeFiles];
  fileName = [fileCopy fileName];

  v7 = [activeFiles objectForKey:fileName];
  if (v7)
  {
    [activeFiles setValue:0 forKey:fileName];
  }

  return v7 != 0;
}

- (id)finishedFileWithFileName:(id)name
{
  nameCopy = name;
  finishedFiles = [(RPFileTransferResumeState *)self finishedFiles];
  v6 = [finishedFiles objectForKey:nameCopy];

  if (v6)
  {
    v7 = [[RPFileTransferResumeStateItem alloc] initWithStateDict:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)addFinishedFile:(id)file
{
  fileCopy = file;
  finishedFiles = [(RPFileTransferResumeState *)self finishedFiles];
  fileName = [fileCopy fileName];
  v7 = [finishedFiles objectForKey:fileName];
  fileInfo = [fileCopy fileInfo];

  [fileInfo setValue:0 forKey:@"fileOffset"];
  [fileInfo setValue:0 forKey:@"bytesWritten"];
  [finishedFiles setValue:fileInfo forKey:fileName];

  return v7 == 0;
}

- (BOOL)removeFinishedFile:(id)file
{
  fileCopy = file;
  finishedFiles = [(RPFileTransferResumeState *)self finishedFiles];
  fileName = [fileCopy fileName];

  v7 = [finishedFiles objectForKey:fileName];
  if (v7)
  {
    [finishedFiles setValue:0 forKey:fileName];
  }

  return v7 != 0;
}

- (BOOL)scheduleStateFileFlush
{
  needsFlushing = [(RPFileTransferResumeState *)self needsFlushing];
  [(RPFileTransferResumeState *)self setNeedsFlushing:1];
  flushTimer = [(RPFileTransferResumeState *)self flushTimer];

  if (!flushTimer)
  {
    dispatchQueue = [(RPFileTransferResumeState *)self dispatchQueue];
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, dispatchQueue);
    [(RPFileTransferResumeState *)self setFlushTimer:v6];

    flushTimer2 = [(RPFileTransferResumeState *)self flushTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__RPFileTransferResumeState_scheduleStateFileFlush__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(flushTimer2, handler);

    flushTimer3 = [(RPFileTransferResumeState *)self flushTimer];
    [(RPFileTransferResumeState *)self flushInterval];
    [(RPFileTransferResumeState *)self flushInterval];
    CUDispatchTimerSet();

    flushTimer4 = [(RPFileTransferResumeState *)self flushTimer];
    dispatch_activate(flushTimer4);
  }

  return !needsFlushing;
}

uint64_t __51__RPFileTransferResumeState_scheduleStateFileFlush__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) needsFlushing];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 flushStateFile];
  }

  else
  {
    v5 = [v3 flushTimer];
    dispatch_source_cancel(v5);

    v6 = *(a1 + 32);

    return [v6 setFlushTimer:0];
  }
}

- (BOOL)flushStateFile
{
  needsFlushing = [(RPFileTransferResumeState *)self needsFlushing];
  if (needsFlushing)
  {
    dictionaryRepresentation = [(RPFileTransferResumeState *)self dictionaryRepresentation];
    stateFilePath = [(RPFileTransferResumeState *)self stateFilePath];
    v6 = [dictionaryRepresentation writeToFile:stateFilePath atomically:1];

    [(RPFileTransferResumeState *)self setNeedsFlushing:0];
    LOBYTE(needsFlushing) = v6;
  }

  return needsFlushing;
}

- (BOOL)loadStateFile
{
  v3 = MEMORY[0x1E695DFF8];
  stateFilePath = [(RPFileTransferResumeState *)self stateFilePath];
  v5 = [v3 fileURLWithPath:stateFilePath];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v5 path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    v14 = 0;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v5 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v9];
      stateInfo = self->_stateInfo;
      self->_stateInfo = v11;

      if ([(RPFileTransferResumeState *)self removeUnusableOutputFileItems])
      {
        [(RPFileTransferResumeState *)self scheduleStateFileFlush];
      }
    }

    else
    {
      if (*[(RPFileTransferResumeState *)self ucat]<= 30)
      {
        if (*[(RPFileTransferResumeState *)self ucat]!= -1 || ([(RPFileTransferResumeState *)self ucat], _LogCategory_Initialize()))
        {
          [(RPFileTransferResumeState *)self loadStateFile];
        }
      }

      [(RPFileTransferResumeState *)self removeAllActiveAndFinishedFileItems];
    }
  }

  return 0;
}

- (BOOL)removeStateFile
{
  v3 = MEMORY[0x1E695DFF8];
  stateFilePath = [(RPFileTransferResumeState *)self stateFilePath];
  v5 = [v3 fileURLWithPath:stateFilePath];

  flushTimer = [(RPFileTransferResumeState *)self flushTimer];

  if (flushTimer)
  {
    flushTimer2 = [(RPFileTransferResumeState *)self flushTimer];
    dispatch_source_cancel(flushTimer2);

    [(RPFileTransferResumeState *)self setFlushTimer:0];
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v5 path];
  v10 = [defaultManager fileExistsAtPath:path];

  if (v10)
  {
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = 0;
    v12 = [defaultManager2 removeItemAtURL:v5 error:&v15];
    v13 = v15;

    if ((v12 & 1) == 0 && *[(RPFileTransferResumeState *)self ucat]<= 30)
    {
      if (*[(RPFileTransferResumeState *)self ucat]!= -1 || ([(RPFileTransferResumeState *)self ucat], _LogCategory_Initialize()))
      {
        [(RPFileTransferResumeState *)self removeStateFile];
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)removeUnusableSourceFileItems
{
  v22 = *MEMORY[0x1E69E9840];
  activeFiles = [(RPFileTransferResumeState *)self activeFiles];
  v3 = [activeFiles copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [v4 objectForKey:*(*(&v17 + 1) + 8 * i)];
        v11 = [[RPFileTransferResumeStateItem alloc] initWithStateDict:v10];
        itemURL = [(RPFileTransferResumeStateItem *)v11 itemURL];
        path = [itemURL path];

        if (path && ![(RPFileTransferResumeStateItem *)v11 sourceFileItemUsable:path])
        {
          [(RPFileTransferResumeState *)self removeActiveFile:v11];
          v7 = 1;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7 & 1;
}

- (BOOL)removeUnusableOutputFileItems
{
  v22 = *MEMORY[0x1E69E9840];
  activeFiles = [(RPFileTransferResumeState *)self activeFiles];
  v4 = [activeFiles copy];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v16 = 0;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKey:*(*(&v17 + 1) + 8 * i)];
        v11 = [[RPFileTransferResumeStateItem alloc] initWithStateDict:v10];
        outputPath = [(RPFileTransferResumeState *)self outputPath];
        v13 = [(RPFileTransferResumeStateItem *)v11 outputFileItemUsable:outputPath];

        if (!v13)
        {
          [(RPFileTransferResumeState *)self removeActiveFile:v11];
          v16 = 1;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  else
  {
    v16 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v16 & 1;
}

- (BOOL)removeAllActiveAndFinishedFileItems
{
  v2 = [(NSMutableDictionary *)self->_stateInfo objectForKey:@"fileInfo"];
  v3 = [v2 objectForKey:@"activeFiles"];
  v4 = [v3 count];
  v5 = v4 != 0;
  if (v4)
  {
    [v3 removeAllObjects];
  }

  v6 = [v2 objectForKey:@"finishedFiles"];
  if ([v6 count])
  {
    [v6 removeAllObjects];
    v5 = 1;
  }

  return v5;
}

- (void)loadStateFile
{
  [self ucat];
  path = [a2 path];
  LogPrintF();
}

- (void)removeStateFile
{
  [self ucat];
  path = [a2 path];
  LogPrintF();
}

@end