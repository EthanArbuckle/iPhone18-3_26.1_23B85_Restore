@interface VFXDisplayLink
- (BOOL)isPaused;
- (BOOL)setPaused:(BOOL)a3 nextFrameTimeHint:(double)a4 lastUpdate:(double)a5;
- (VFXDisplayLink)init;
- (VFXDisplayLink)initWithLayer:(id)a3 runLoop:(id)a4 block:(id)a5;
- (void)dealloc;
- (void)invalidate;
- (void)metalDisplayLink:(id)a3 needsUpdate:(id)a4;
- (void)setLowLatency:(BOOL)a3;
@end

@implementation VFXDisplayLink

- (VFXDisplayLink)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, a2, v2);

  return 0;
}

- (VFXDisplayLink)initWithLayer:(id)a3 runLoop:(id)a4 block:(id)a5
{
  v23.receiver = self;
  v23.super_class = VFXDisplayLink;
  v11 = [(VFXDisplayLink *)&v23 init];
  if (v11)
  {
    if (!a3)
    {
      v12 = sub_1AF0D5194();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDFB8B0(v12);
      }
    }

    v11->_block = objc_msgSend_copy(a5, v8, v9, v10);
    v13 = objc_alloc(MEMORY[0x1E69793E0]);
    v16 = objc_msgSend_initWithMetalLayer_(v13, v14, a3, v15);
    v11->_caMetalDisplayLink = v16;
    objc_msgSend_setDelegate_(v16, v17, v11, v18);
    objc_msgSend_setPaused_(v11->_caMetalDisplayLink, v19, 1, v20);
    objc_msgSend_addToRunLoop_forMode_(v11->_caMetalDisplayLink, v21, a4, *MEMORY[0x1E695DA28]);
  }

  return v11;
}

- (void)dealloc
{
  if (self->_caMetalDisplayLink)
  {
    v3 = sub_1AF0D5194();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDFB934(v3);
    }

    objc_msgSend_invalidate(self, v4, v5, v6);
  }

  self->_block = 0;
  v7.receiver = self;
  v7.super_class = VFXDisplayLink;
  [(VFXDisplayLink *)&v7 dealloc];
}

- (BOOL)isPaused
{
  caMetalDisplayLink = self->_caMetalDisplayLink;
  if (caMetalDisplayLink)
  {
    return objc_msgSend_isPaused(caMetalDisplayLink, a2, v2, v3);
  }

  else
  {
    return 1;
  }
}

- (BOOL)setPaused:(BOOL)a3 nextFrameTimeHint:(double)a4 lastUpdate:(double)a5
{
  v7 = a3;
  v11 = CACurrentMediaTime();
  v12 = v11 - a5 > 0.25 && a4 - v11 > 0.25;
  v13 = v7 && v12;
  if (v13 == 1)
  {
    objc_msgSend_setPaused_(self, v9, 1, v10);
    if (a4 != INFINITY)
    {
      v14 = CACurrentMediaTime();
      v15 = dispatch_time(0, ((a4 - v14 + -0.01) * 1000000000.0));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1AF3B4F9C;
      block[3] = &unk_1E7A7A770;
      block[4] = self;
      dispatch_after(v15, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    objc_msgSend_setPaused_(self, v9, 0, v10);
  }

  return v13;
}

- (void)setLowLatency:(BOOL)a3
{
  if (self->_lowLatency != a3)
  {
    self->_lowLatency = a3;
    (MEMORY[0x1EEE66B58])(self->_caMetalDisplayLink, sel_setPreferredFrameLatency_, a3);
  }
}

- (void)metalDisplayLink:(id)a3 needsUpdate:(id)a4
{
  v4 = self;
  if ((objc_msgSend_isPaused(self, v5, v6, v7) & 1) == 0)
  {
    (*(self->_block + 2))();
  }
}

- (void)invalidate
{
  objc_msgSend_invalidate(self->_caMetalDisplayLink, a2, v2, v3);

  self->_caMetalDisplayLink = 0;
}

@end