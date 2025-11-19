@interface RPFileTransferResumeState
- (BOOL)addActiveFile:(id)a3;
- (BOOL)addFinishedFile:(id)a3;
- (BOOL)flushStateFile;
- (BOOL)isEmpty;
- (BOOL)loadStateFile;
- (BOOL)removeActiveFile:(id)a3;
- (BOOL)removeAllActiveAndFinishedFileItems;
- (BOOL)removeFinishedFile:(id)a3;
- (BOOL)removeStateFile;
- (BOOL)removeUnusableOutputFileItems;
- (BOOL)removeUnusableSourceFileItems;
- (BOOL)scheduleStateFileFlush;
- (RPFileTransferResumeState)init;
- (RPFileTransferResumeState)initWithDictionaryRepresentation:(id)a3 error:(id *)a4;
- (RPFileTransferResumeState)initWithDispatchQueue:(id)a3;
- (id)activeFileWithFileName:(id)a3;
- (id)activeFiles;
- (id)finishedFileWithFileName:(id)a3;
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

- (RPFileTransferResumeState)initWithDispatchQueue:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeState *)self init];
  v6 = v5;
  if (v5)
  {
    [(RPFileTransferResumeState *)v5 setDispatchQueue:v4];
    v7 = v6;
  }

  return v6;
}

- (RPFileTransferResumeState)initWithDictionaryRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v9 = [v6 objectForKey:@"version"];
  v10 = [v6 objectForKey:@"fileInfo"];
  v11 = [v10 objectForKey:@"activeFiles"];
  v12 = [v10 objectForKey:@"finishedFiles"];
  v13 = v12;
  if (!v9)
  {
    if (a4)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v10)
  {
    if (a4)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v11)
  {
    if (a4)
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (!v12)
  {
    if (a4)
    {
LABEL_17:
      RPErrorF();
      *a4 = v16 = 0;
      goto LABEL_7;
    }

LABEL_18:
    v16 = 0;
    goto LABEL_7;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v6];
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

  v3 = [(RPFileTransferResumeState *)self flushTimer];

  if (v3)
  {
    v4 = [(RPFileTransferResumeState *)self flushTimer];
    dispatch_source_cancel(v4);

    [(RPFileTransferResumeState *)self setFlushTimer:0];
  }

  [(RPFileTransferResumeState *)self setDispatchQueue:0];
  stateInfo = self->_stateInfo;
  self->_stateInfo = 0;
}

- (BOOL)isEmpty
{
  v3 = [(RPFileTransferResumeState *)self activeFiles];
  v4 = [(RPFileTransferResumeState *)self finishedFiles];
  v5 = ![v3 count] && !objc_msgSend(v4, "count");

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

- (id)activeFileWithFileName:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeState *)self activeFiles];
  v6 = [v5 objectForKey:v4];

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

- (BOOL)addActiveFile:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeState *)self activeFiles];
  v6 = [v4 fileName];
  v7 = [v5 objectForKey:v6];
  v8 = [v4 fileInfo];

  if (v6 && v8)
  {
    [v5 setValue:v8 forKey:v6];
  }

  return v7 == 0;
}

- (BOOL)removeActiveFile:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeState *)self activeFiles];
  v6 = [v4 fileName];

  v7 = [v5 objectForKey:v6];
  if (v7)
  {
    [v5 setValue:0 forKey:v6];
  }

  return v7 != 0;
}

- (id)finishedFileWithFileName:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeState *)self finishedFiles];
  v6 = [v5 objectForKey:v4];

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

- (BOOL)addFinishedFile:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeState *)self finishedFiles];
  v6 = [v4 fileName];
  v7 = [v5 objectForKey:v6];
  v8 = [v4 fileInfo];

  [v8 setValue:0 forKey:@"fileOffset"];
  [v8 setValue:0 forKey:@"bytesWritten"];
  [v5 setValue:v8 forKey:v6];

  return v7 == 0;
}

- (BOOL)removeFinishedFile:(id)a3
{
  v4 = a3;
  v5 = [(RPFileTransferResumeState *)self finishedFiles];
  v6 = [v4 fileName];

  v7 = [v5 objectForKey:v6];
  if (v7)
  {
    [v5 setValue:0 forKey:v6];
  }

  return v7 != 0;
}

- (BOOL)scheduleStateFileFlush
{
  v3 = [(RPFileTransferResumeState *)self needsFlushing];
  [(RPFileTransferResumeState *)self setNeedsFlushing:1];
  v4 = [(RPFileTransferResumeState *)self flushTimer];

  if (!v4)
  {
    v5 = [(RPFileTransferResumeState *)self dispatchQueue];
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
    [(RPFileTransferResumeState *)self setFlushTimer:v6];

    v7 = [(RPFileTransferResumeState *)self flushTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __51__RPFileTransferResumeState_scheduleStateFileFlush__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);

    v8 = [(RPFileTransferResumeState *)self flushTimer];
    [(RPFileTransferResumeState *)self flushInterval];
    [(RPFileTransferResumeState *)self flushInterval];
    CUDispatchTimerSet();

    v9 = [(RPFileTransferResumeState *)self flushTimer];
    dispatch_activate(v9);
  }

  return !v3;
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
  v3 = [(RPFileTransferResumeState *)self needsFlushing];
  if (v3)
  {
    v4 = [(RPFileTransferResumeState *)self dictionaryRepresentation];
    v5 = [(RPFileTransferResumeState *)self stateFilePath];
    v6 = [v4 writeToFile:v5 atomically:1];

    [(RPFileTransferResumeState *)self setNeedsFlushing:0];
    LOBYTE(v3) = v6;
  }

  return v3;
}

- (BOOL)loadStateFile
{
  v3 = MEMORY[0x1E695DFF8];
  v4 = [(RPFileTransferResumeState *)self stateFilePath];
  v5 = [v3 fileURLWithPath:v4];

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7];

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
  v4 = [(RPFileTransferResumeState *)self stateFilePath];
  v5 = [v3 fileURLWithPath:v4];

  v6 = [(RPFileTransferResumeState *)self flushTimer];

  if (v6)
  {
    v7 = [(RPFileTransferResumeState *)self flushTimer];
    dispatch_source_cancel(v7);

    [(RPFileTransferResumeState *)self setFlushTimer:0];
  }

  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v5 path];
  v10 = [v8 fileExistsAtPath:v9];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = 0;
    v12 = [v11 removeItemAtURL:v5 error:&v15];
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
  v2 = [(RPFileTransferResumeState *)self activeFiles];
  v3 = [v2 copy];

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
        v12 = [(RPFileTransferResumeStateItem *)v11 itemURL];
        v13 = [v12 path];

        if (v13 && ![(RPFileTransferResumeStateItem *)v11 sourceFileItemUsable:v13])
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
  v3 = [(RPFileTransferResumeState *)self activeFiles];
  v4 = [v3 copy];

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
        v12 = [(RPFileTransferResumeState *)self outputPath];
        v13 = [(RPFileTransferResumeStateItem *)v11 outputFileItemUsable:v12];

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
  [a1 ucat];
  v3 = [a2 path];
  LogPrintF();
}

- (void)removeStateFile
{
  [a1 ucat];
  v3 = [a2 path];
  LogPrintF();
}

@end