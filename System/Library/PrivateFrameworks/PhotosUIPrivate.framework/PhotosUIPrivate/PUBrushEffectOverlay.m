@interface PUBrushEffectOverlay
- (PUBrushEffectOverlay)initWithTimeScale:(double)a3;
- (void)_layoutSubviews;
- (void)_recycleVFXView;
- (void)endEmission;
- (void)layoutSubviews;
- (void)loadEffect;
- (void)setBrushPosition:(CGPoint)a3;
- (void)setBrushRadius:(double)a3;
- (void)setMaxEDR:(double)a3;
- (void)setNormalizedBrushPosition:(CGPoint)a3;
- (void)startEmission;
@end

@implementation PUBrushEffectOverlay

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUBrushEffectOverlay;
  [(PUBrushEffectOverlay *)&v3 layoutSubviews];
  [(PUBrushEffectOverlay *)self _layoutSubviews];
}

- (void)_layoutSubviews
{
  vfxView = self->_vfxView;
  [(PUBrushEffectOverlay *)self bounds];

  [(VFXView *)vfxView setFrame:?];
}

- (void)_recycleVFXView
{
  [(VFXView *)self->_vfxView removeFromSuperview];
  v3 = objc_opt_new();
  vfxView = self->_vfxView;
  self->_vfxView = v3;

  [(VFXView *)self->_vfxView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = self->_vfxView;
  v6 = [MEMORY[0x1E69DC888] clearColor];
  [(VFXView *)v5 setBackgroundColor:v6];

  v7 = self->_vfxView;
  [(PUBrushEffectOverlay *)self bounds];
  [(VFXView *)v7 setFrame:?];
  v8 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F108]);
  [(VFXView *)self->_vfxView setColorSpace:v8];
  [(VFXView *)self->_vfxView setPixelFormat:115];
  [(VFXView *)self->_vfxView setWantsExtendedDynamicRange:1];
  CFRelease(v8);
  [(PUBrushEffectOverlay *)self addSubview:self->_vfxView];
  [(VFXView *)self->_vfxView setRendersContinuously:0];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__PUBrushEffectOverlay__recycleVFXView__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)loadEffect
{
  v18 = *MEMORY[0x1E69E9840];
  if (!self->_world)
  {
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v4 URLForResource:@"wand" withExtension:@"vfx"];
    v15 = 0;
    v6 = [MEMORY[0x1E69DF388] worldWithURL:v5 options:0 error:&v15];
    v7 = v15;
    world = self->_world;
    self->_world = v6;

    if (v7)
    {
      v9 = __log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v13 = [v7 localizedDescription];
        *buf = 138412290;
        v17 = v13;
        _os_log_debug_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    v10 = [(VFXWorld *)self->_world rootNode];
    v11 = [v10 childNodeWithName:@"EmitterWand"];
    emitterWand = self->_emitterWand;
    self->_emitterWand = v11;

    if (!self->_emitterWand)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PUVFXOverlay.m" lineNumber:265 description:@"emitter wand is nil"];
    }

    [(PUBrushEffectOverlay *)self _recycleVFXView];
  }
}

- (void)setBrushRadius:(double)a3
{
  NSSelectorFromString(&cfstr_Behaviorgraph.isa);
  if (objc_opt_respondsToSelector())
  {
    [(PUBrushEffectOverlay *)self frame];
    v7 = 0.0 / v5 * 2.0 + -1.0 - (0.0 / v5 * 2.0 + -1.0);
    v8 = sqrt((0.0 / v6 * 2.0 + -1.0 - (a3 / v6 * 2.0 + -1.0)) * (0.0 / v6 * 2.0 + -1.0 - (a3 / v6 * 2.0 + -1.0)) + v7 * v7);
    v10 = [(VFXNode *)self->_emitterWand valueForKey:@"behaviorGraph"];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [v10 setValue:v9 forKey:@"radius"];
  }
}

- (void)setBrushPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PUBrushEffectOverlay *)self frame];

  [(PUBrushEffectOverlay *)self setNormalizedBrushPosition:x / v6 * 2.0 + -1.0, -(y / v7 * 2.0 + -1.0)];
}

- (void)endEmission
{
  v3 = [(VFXNode *)self->_emitterWand valueForKey:@"behaviorGraph"];
  [v3 setValue:MEMORY[0x1E695E110] forKey:@"isWandClick"];

  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];

  [(PUBrushEffectOverlay *)self performSelector:sel__disableRendersContinuously_ withObject:0 afterDelay:1.0];
}

- (void)startEmission
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self];
  if (([(VFXView *)self->_vfxView rendersContinuously]& 1) == 0)
  {
    [(VFXView *)self->_vfxView setRendersContinuously:1];
  }

  v3 = [(VFXNode *)self->_emitterWand valueForKey:@"behaviorGraph"];
  [v3 setValue:MEMORY[0x1E695E118] forKey:@"isWandClick"];
}

- (void)setNormalizedBrushPosition:(CGPoint)a3
{
  [(PUBrushEffectOverlay *)self frame];
  Width = CGRectGetWidth(v13);
  [(PUBrushEffectOverlay *)self frame];
  *&Width = Width / CGRectGetHeight(v14);
  PXClamp();
  v6 = v5;
  PXClamp();
  v7 = v6;
  *&v8 = v7 * *&Width;
  *&v9 = v9;
  HIDWORD(v8) = LODWORD(v9);
  v11 = [MEMORY[0x1E696B098] valueWithVFXFloat2:v8];
  NSSelectorFromString(&cfstr_Behaviorgraph.isa);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(VFXNode *)self->_emitterWand valueForKey:@"behaviorGraph"];
    [v10 setValue:v11 forKey:@"wand_position"];
  }
}

- (void)setMaxEDR:(double)a3
{
  if (a3 >= 1.0)
  {
    NSSelectorFromString(&cfstr_Wantsextendedd.isa);
    if (objc_opt_respondsToSelector())
    {
      NSSelectorFromString(&cfstr_Behaviorgraph.isa);
      if (objc_opt_respondsToSelector())
      {
        v6 = [(VFXNode *)self->_emitterWand valueForKey:@"behaviorGraph", 1.0];
        [(VFXView *)self->_vfxView setWantsExtendedDynamicRange:a3 > 1.0];
        [(VFXView *)self->_vfxView setPixelFormat:115];
        v5 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
        [v6 setValue:v5 forKey:@"EDR"];
      }
    }
  }
}

- (PUBrushEffectOverlay)initWithTimeScale:(double)a3
{
  v9.receiver = self;
  v9.super_class = PUBrushEffectOverlay;
  v3 = [(PUBrushEffectOverlay *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v3)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.editvfx.vfxoverlay", v4);
    queue = v3->_queue;
    v3->_queue = v5;

    [(PUBrushEffectOverlay *)v3 loadEffect];
    v7 = v3;
  }

  return v3;
}

@end