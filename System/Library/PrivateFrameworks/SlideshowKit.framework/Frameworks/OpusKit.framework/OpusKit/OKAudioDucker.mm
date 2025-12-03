@interface OKAudioDucker
- (OKAudioDucker)init;
- (void)_handleTimerEvent;
- (void)beginDuckingToLevel:(double)level fadeDuration:(double)duration;
- (void)beginFadingWithDuration:(double)duration;
- (void)cancel;
- (void)dealloc;
- (void)endDucking;
- (void)endFading:(BOOL)fading;
- (void)setSetVolumeBlock:(id)block;
- (void)setVolume:(float)volume;
@end

@implementation OKAudioDucker

- (OKAudioDucker)init
{
  v12.receiver = self;
  v12.super_class = OKAudioDucker;
  v2 = [(OKAudioDucker *)&v12 init];
  v3 = v2;
  if (v2)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&v2->_volume = _D0;
    v2->_duckLevel = 1.0;
    v9 = dispatch_queue_create("audioDuckerQueue", 0);
    __asm { FMOV            V0.2D, #1.0 }

    *&v3->_fadeDuration = _Q0;
    v3->_timer = 0;
    v3->_setVolumeBlock = 0;
    v3->_queue = v9;
    v3->_duckState = 0;
  }

  return v3;
}

- (void)dealloc
{
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = OKAudioDucker;
  [(OKAudioDucker *)&v3 dealloc];
}

- (void)setSetVolumeBlock:(id)block
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__OKAudioDucker_setSetVolumeBlock___block_invoke;
  v4[3] = &unk_279C8FE40;
  v4[4] = self;
  v4[5] = block;
  dispatch_sync(queue, v4);
}

uint64_t __35__OKAudioDucker_setSetVolumeBlock___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 80) = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  result = *(v3 + 80);
  if (result)
  {
    v2.n128_u32[0] = *(v3 + 12);
    v5 = *(result + 16);

    return v5(v2);
  }

  return result;
}

- (void)setVolume:(float)volume
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__OKAudioDucker_setVolume___block_invoke;
  v4[3] = &unk_279C90C90;
  v4[4] = self;
  volumeCopy = volume;
  dispatch_sync(queue, v4);
}

uint64_t __27__OKAudioDucker_setVolume___block_invoke(uint64_t result)
{
  *(*(result + 32) + 8) = *(result + 40);
  v1 = *(result + 32);
  v2 = *(v1 + 40);
  if (v2 > 1)
  {
    switch(v2)
    {
      case 2:
        *(v1 + 20) = *(v1 + 12);
        *(*(result + 32) + 16) = *(*(result + 32) + 8) * *(*(result + 32) + 24);
        v1 = *(result + 32);
        break;
      case 3:
        break;
      case 6:
        *(v1 + 20) = *(v1 + 12);
        v3 = *(result + 32);
        v4 = v3[2] * v3[6];
        goto LABEL_11;
      default:
        return result;
    }

    *(v1 + 20) = *(v1 + 12);
    v3 = *(result + 32);
    v4 = v3[2];
LABEL_11:
    v3[4] = v4;
    return result;
  }

  if (v2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v5 = *(v1 + 8) * *(v1 + 24);
  }

  else
  {
    v5 = *(v1 + 8);
  }

  *(v1 + 12) = v5;
  v6 = *(result + 32);
  result = *(v6 + 80);
  if (result)
  {
    return (*(result + 16))(*(v6 + 12));
  }

  return result;
}

- (void)beginDuckingToLevel:(double)level fadeDuration:(double)duration
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__OKAudioDucker_beginDuckingToLevel_fadeDuration___block_invoke;
  block[3] = &unk_279C91700;
  block[4] = self;
  *&block[5] = level;
  *&block[6] = duration;
  dispatch_async(queue, block);
}

void __50__OKAudioDucker_beginDuckingToLevel_fadeDuration___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 40) & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    v3 = *(a1 + 40);
    *(v2 + 24) = v3;
  }

  else
  {
    *(v2 + 56) = *(a1 + 48);
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (*(v4 + 72))
    {
      v6 = *(v4 + 40);
      if (v5 != *(v4 + 24) || v6 == 6 || v6 == 3)
      {
        *(v4 + 40) = 2;
        v9 = v5;
        *(*(a1 + 32) + 24) = v9;
        *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
        *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8) * *(*(a1 + 32) + 24);
        if (v6 == 1)
        {
          *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
          v10 = *(*(a1 + 32) + 72);

          dispatch_resume(v10);
        }
      }
    }

    else
    {
      v11 = v5;
      *(v4 + 24) = v11;
      *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
      *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
      *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8) * *(*(a1 + 32) + 24);
      v12 = *(a1 + 32);
      v13.n128_u64[0] = *(v12 + 56);
      if (v13.n128_f64[0] <= 0.0)
      {
        *(v12 + 40) = 1;
        *(*(a1 + 32) + 12) = *(*(a1 + 32) + 16);
        v16 = *(a1 + 32);
        v17 = *(v16 + 80);
        if (v17)
        {
          v13.n128_u32[0] = *(v16 + 12);
          v18 = *(v17 + 16);

          v18(v13);
        }
      }

      else
      {
        *(v12 + 40) = 2;
        *(*(a1 + 32) + 72) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 64));
        v14 = *(a1 + 32);
        v15 = *(v14 + 72);
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __50__OKAudioDucker_beginDuckingToLevel_fadeDuration___block_invoke_2;
        handler[3] = &unk_279C8E818;
        handler[4] = v14;
        dispatch_source_set_event_handler(v15, handler);
        dispatch_source_set_timer(*(*(a1 + 32) + 72), 0, 0x5F5E100uLL, 0);
        dispatch_resume(*(*(a1 + 32) + 72));
      }
    }
  }
}

- (void)endDucking
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__OKAudioDucker_endDucking__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  dispatch_async(queue, block);
}

void __27__OKAudioDucker_endDucking__block_invoke(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if ((v3 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    *(v2 + 24) = 1065353216;
    return;
  }

  if (*(v2 + 72))
  {
    switch(v3)
    {
      case 1:
        *(v2 + 40) = 3;
        *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
        *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8);
        *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
        v8 = *(*(a1 + 32) + 72);

        dispatch_resume(v8);
        break;
      case 6:
        if (*(v2 + 24) < 1.0)
        {
          *(v2 + 24) = 1065353216;
          goto LABEL_16;
        }

        break;
      case 2:
        *(v2 + 40) = 3;
LABEL_16:
        *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
        *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8);
        break;
    }
  }

  else if (v3 == 1)
  {
    *(v2 + 40) = 0;
    *(*(a1 + 32) + 24) = 1065353216;
    *(*(a1 + 32) + 12) = *(*(a1 + 32) + 8);
    v5 = *(a1 + 32);
    v6 = *(v5 + 80);
    if (v6)
    {
      a2.n128_u32[0] = *(v5 + 12);
      v7 = *(v6 + 16);

      v7(a2);
    }
  }
}

- (void)beginFadingWithDuration:(double)duration
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __41__OKAudioDucker_beginFadingWithDuration___block_invoke;
  v4[3] = &unk_279C903C0;
  v4[4] = self;
  *&v4[5] = duration;
  dispatch_async(queue, v4);
}

void __41__OKAudioDucker_beginFadingWithDuration___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = *(a1 + 40);
  v2 = *(a1 + 32);
  if (*(v2 + 72))
  {
    v3 = *(v2 + 40);
    if (v3 != 4)
    {
      *(v2 + 40) = 5;
      *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
      *(*(a1 + 32) + 16) = 0;
      if (v3 == 1)
      {
        *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
        v4 = *(*(a1 + 32) + 72);

        dispatch_resume(v4);
      }
    }
  }

  else
  {
    *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
    *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
    *(*(a1 + 32) + 16) = 0;
    v5 = *(a1 + 32);
    v6.n128_u64[0] = *(v5 + 48);
    if (v6.n128_f64[0] <= 0.0)
    {
      *(v5 + 40) = 4;
      *(*(a1 + 32) + 12) = *(*(a1 + 32) + 16);
      v9 = *(a1 + 32);
      v10 = *(v9 + 80);
      if (v10)
      {
        v6.n128_u32[0] = *(v9 + 12);
        v11 = *(v10 + 16);

        v11(v6);
      }
    }

    else
    {
      *(v5 + 40) = 5;
      *(*(a1 + 32) + 72) = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, *(*(a1 + 32) + 64));
      v7 = *(a1 + 32);
      v8 = *(v7 + 72);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __41__OKAudioDucker_beginFadingWithDuration___block_invoke_2;
      handler[3] = &unk_279C8E818;
      handler[4] = v7;
      dispatch_source_set_event_handler(v8, handler);
      dispatch_source_set_timer(*(*(a1 + 32) + 72), 0, 0x5F5E100uLL, 0);
      dispatch_resume(*(*(a1 + 32) + 72));
    }
  }
}

- (void)endFading:(BOOL)fading
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __27__OKAudioDucker_endFading___block_invoke;
  v4[3] = &unk_279C90868;
  v4[4] = self;
  fadingCopy = fading;
  dispatch_async(queue, v4);
}

void __27__OKAudioDucker_endFading___block_invoke(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 < 4)
  {
    return;
  }

  v5 = *(v2 + 72);
  if (!v5)
  {
    if (v3 != 4)
    {
      return;
    }

    v6 = *(v2 + 24) < 1.0;
    goto LABEL_20;
  }

  if (*(a1 + 40) == 1)
  {
    if (*(v2 + 24) >= 1.0)
    {
      if (v3 == 4)
      {
        dispatch_resume(v5);
        v5 = *(*(a1 + 32) + 72);
      }

      dispatch_source_cancel(v5);
      dispatch_release(*(*(a1 + 32) + 72));
      v6 = 0;
      *(*(a1 + 32) + 72) = 0;
    }

    else
    {
      if ((v3 - 5) > 1)
      {
        v6 = 1;
LABEL_20:
        *(v2 + 40) = v6;
        *(*(a1 + 32) + 12) = *(*(a1 + 32) + 8) * *(*(a1 + 32) + 24);
        v8 = *(a1 + 32);
        v9 = *(v8 + 80);
        if (v9)
        {
          a2.n128_u32[0] = *(v8 + 12);
          v10 = *(v9 + 16);

          v10(a2);
        }

        return;
      }

      dispatch_suspend(v5);
      v6 = 1;
    }

    v2 = *(a1 + 32);
    goto LABEL_20;
  }

  if (v3 == 4)
  {
    *(v2 + 40) = 6;
    *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
    *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8) * *(*(a1 + 32) + 24);
    *(*(a1 + 32) + 32) = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 32) + 72);

    dispatch_resume(v7);
  }

  else if (v3 == 5)
  {
    *(v2 + 40) = 6;
    *(*(a1 + 32) + 20) = *(*(a1 + 32) + 12);
    *(*(a1 + 32) + 16) = *(*(a1 + 32) + 8) * *(*(a1 + 32) + 24);
  }
}

- (void)cancel
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __23__OKAudioDucker_cancel__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  dispatch_sync(queue, block);
}

float __23__OKAudioDucker_cancel__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (v3)
  {
    v4 = *(v2 + 40);
    if (v4 == 4 || v4 == 1)
    {
      dispatch_resume(v3);
      v3 = *(*(a1 + 32) + 72);
    }

    dispatch_source_cancel(v3);
    dispatch_release(*(*(a1 + 32) + 72));
    *(*(a1 + 32) + 72) = 0;
    v2 = *(a1 + 32);
  }

  *(v2 + 40) = 0;
  v6 = *(a1 + 32);
  result = *(v6 + 8);
  *(v6 + 12) = result;
  return result;
}

- (void)_handleTimerEvent
{
  duckState = self->_duckState;
  v4 = 56;
  if (duckState > 3)
  {
    v4 = 48;
  }

  v5 = *(&self->super.isa + v4);
  if (v5 <= 0.0)
  {
    self->_currentVolume = self->_fadeToVolume;
    v13 = duckState == 2;
    v14 = 4;
    if (v13)
    {
      v14 = 1;
    }

    self->_duckState = v14;
    goto LABEL_16;
  }

  v7.n128_f64[0] = CFAbsoluteTimeGetCurrent() - self->_startFadeTime;
  v6 = v7.n128_f64[0] / v5;
  v7.n128_u32[0] = LODWORD(self->_fadeToVolume);
  fadeFromVolume = self->_fadeFromVolume;
  v9 = v7.n128_f32[0] - fadeFromVolume;
  v10 = 1.0 - v6;
  if (fadeFromVolume <= v7.n128_f32[0])
  {
    v10 = v6;
  }

  else
  {
    v9 = fadeFromVolume - v7.n128_f32[0];
    fadeFromVolume = self->_fadeToVolume;
  }

  v11 = fadeFromVolume + v10 * v9;
  self->_currentVolume = v11;
  if (v6 >= 1.0)
  {
    v12 = self->_duckState;
    if (v12 > 4)
    {
      if (v12 == 5)
      {
        v17 = 4;
        goto LABEL_28;
      }

      if (v12 != 6)
      {
        goto LABEL_17;
      }

      if (self->_duckLevel >= 1.0)
      {
        goto LABEL_26;
      }
    }

    else if (v12 != 2)
    {
      if (v12 != 3)
      {
        goto LABEL_17;
      }

LABEL_26:
      self->_duckState = 0;
      self->_duckLevel = 1.0;
      dispatch_source_cancel(self->_timer);
      dispatch_release(self->_timer);
      self->_timer = 0;
      goto LABEL_17;
    }

    v17 = 1;
LABEL_28:
    self->_duckState = v17;
    LODWORD(self->_currentVolume) = v7.n128_u32[0];
LABEL_16:
    dispatch_suspend(self->_timer);
  }

LABEL_17:
  setVolumeBlock = self->_setVolumeBlock;
  if (setVolumeBlock)
  {
    v7.n128_u32[0] = LODWORD(self->_currentVolume);
    v16 = *(setVolumeBlock + 2);

    v16(v7);
  }
}

@end