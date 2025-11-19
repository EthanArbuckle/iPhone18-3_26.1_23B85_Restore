@interface SFSiriWordTimingPlayer
- (SFSiriWordTimingPlayer)init;
- (void)_processNextWord;
- (void)_processWord;
- (void)activate;
- (void)invalidate;
@end

@implementation SFSiriWordTimingPlayer

- (SFSiriWordTimingPlayer)init
{
  v7.receiver = self;
  v7.super_class = SFSiriWordTimingPlayer;
  v2 = [(SFSiriWordTimingPlayer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFSiriWordTimingPlayer_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__SFSiriWordTimingPlayer_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __34__SFSiriWordTimingPlayer_activate__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2[6] == 0.0)
  {
    *(*(a1 + 32) + 48) = CFAbsoluteTimeGetCurrent();
    v2 = *(a1 + 32);
  }

  return [v2 _processNextWord];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFSiriWordTimingPlayer_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __36__SFSiriWordTimingPlayer_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
  {
    __36__SFSiriWordTimingPlayer_invalidate__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 8);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = 0;
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 64);
  if (v7)
  {
    v8 = NSErrorWithOSStatusF();
    (*(v7 + 16))(v7, 0, 0, 4, v8);

    v6 = *(a1 + 32);
    v9 = *(v6 + 64);
  }

  else
  {
    v9 = 0;
  }

  *(v6 + 64) = 0;
}

- (void)_processNextWord
{
  wordIndex = self->_wordIndex;
  if (wordIndex >= [(NSArray *)self->_wordTimings count])
  {
    if (gLogCategory_SFSiriClient <= 30 && (gLogCategory_SFSiriClient != -1 || _LogCategory_Initialize()))
    {
      [SFSiriWordTimingPlayer _processNextWord];
    }

    timer = self->_timer;
    if (timer)
    {
      v9 = timer;
      dispatch_source_cancel(v9);
      v10 = self->_timer;
      self->_timer = 0;
    }

    wordHandler = self->_wordHandler;
    if (wordHandler)
    {
      (*(wordHandler + 2))(wordHandler, 0, 0, 4, 0);
      wordHandler = self->_wordHandler;
    }

    self->_wordHandler = 0;
  }

  else
  {
    wordTimings = self->_wordTimings;
    ++self->_wordIndex;
    v5 = [(NSArray *)wordTimings objectAtIndexedSubscript:?];
    wordInfo = self->_wordInfo;
    self->_wordInfo = v5;

    startTime = self->_startTime;
    [(SFSiriWordTimingInfo *)self->_wordInfo timeOffset];
    CFAbsoluteTimeGetCurrent();
    if (self->_timer)
    {

      CUDispatchTimerSet();
    }

    else
    {
      v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
      v13 = self->_timer;
      self->_timer = v12;

      v14 = self->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __42__SFSiriWordTimingPlayer__processNextWord__block_invoke;
      handler[3] = &unk_1E788B198;
      handler[4] = self;
      dispatch_source_set_event_handler(v14, handler);
      v15 = self->_timer;
      CUDispatchTimerSet();
      dispatch_activate(self->_timer);
    }
  }
}

- (void)_processWord
{
  v20 = [(SFSiriWordTimingInfo *)self->_wordInfo wordID];
  if (v20)
  {
    wordHandler = self->_wordHandler;
    if (!wordHandler)
    {
      goto LABEL_18;
    }

    v4 = [(SFSiriWordTimingInfo *)self->_wordInfo localizedText];
    v5 = wordHandler[2];
    v6 = wordHandler;
    v7 = v20;
    v8 = v4;
  }

  else
  {
    v9 = [(SFSiriWordTimingInfo *)self->_wordInfo textRange];
    v11 = v10;
    v12 = [(NSString *)self->_text length];
    if (v12 < v9 || v12 - v9 < v11)
    {
      v14 = self->_wordHandler;
      if (!v14)
      {
        goto LABEL_18;
      }

      v18 = v9;
      v19 = v11;
      v17 = v12;
      v4 = NSErrorWithOSStatusF();
      (*(v14 + 2))(v14, &stru_1F1D30528, 0, 0, v4);
      goto LABEL_17;
    }

    v15 = self->_wordHandler;
    if ((self->_flags & 8) != 0)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = [(NSString *)self->_text substringToIndex:v9 + v11];
    }

    else
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = [(NSString *)self->_text substringWithRange:v9, v11];
    }

    v4 = v16;
    v5 = v15[2];
    v6 = v15;
    v7 = v4;
    v8 = 0;
  }

  v5(v6, v7, v8, 0, 0);
LABEL_17:

LABEL_18:
  [(SFSiriWordTimingPlayer *)self _processNextWord:v17];
}

@end