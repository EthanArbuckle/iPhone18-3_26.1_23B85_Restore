@interface VFXViewLegacy
- (BOOL)framebufferOnly;
- (BOOL)isHidden;
- (BOOL)lowLatency;
- (MTLCommandQueue)commandQueue;
- (UIColor)backgroundColor;
- (_TtC3VFX13VFXViewLegacy)initWithCoder:(id)coder;
- (_TtC3VFX13VFXViewLegacy)initWithFrame:(CGRect)frame;
- (double)scaleFactor;
- (id)postRenderCallback;
- (int64_t)preferredFramesPerSecond;
- (unint64_t)pixelFormat;
- (unsigned)resizingMode;
- (void)renderWithCompletion:(id)completion;
- (void)renderWithPresentWithTransaction:(BOOL)transaction completion:(id)completion;
- (void)setBackgroundColor:(id)color;
- (void)setEffect:(id)effect;
- (void)setFramebufferOnly:(BOOL)only;
- (void)setHidden:(BOOL)hidden;
- (void)setLowLatency:(BOOL)latency;
- (void)setPixelFormat:(unint64_t)format;
- (void)setPointOfView:(id)view;
- (void)setPostRenderCallback:(id)callback;
- (void)setPreferredFramesPerSecond:(int64_t)second;
- (void)setResizingMode:(unsigned __int8)mode;
- (void)setScaleFactor:(double)factor;
- (void)setScene:(id)scene;
@end

@implementation VFXViewLegacy

- (void)setScene:(id)scene
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene) = scene;
  sceneCopy = scene;
  selfCopy = self;

  sub_1AFCF6DBC();
}

- (BOOL)framebufferOnly
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  selfCopy = self;
  layer = [v3 layer];
  framebufferOnly = [layer framebufferOnly];

  return framebufferOnly;
}

- (void)setFramebufferOnly:(BOOL)only
{
  onlyCopy = only;
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  selfCopy = self;
  layer = [v5 layer];
  [layer setFramebufferOnly_];
}

- (MTLCommandQueue)commandQueue
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer);
  if (v3)
  {
    v4 = *(v3 + 264);
    swift_unknownObjectRetain();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)postRenderCallback
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback);
  if (*v3)
  {
    v4 = v3[1];
    v7[4] = *v3;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1AF756610;
    v7[3] = &unk_1F256E720;
    v5 = _Block_copy(v7);
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setPostRenderCallback:(id)callback
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(callback);
  if (v5)
  {
    v6 = v5;
    v5 = swift_allocObject();
    *(v5 + 16) = v6;
    v7 = sub_1AFC88F0C;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_postRenderCallback);
  v9 = *v8;
  *v8 = v7;
  v8[1] = v5;
  sub_1AF719C94(v9);
}

- (void)renderWithCompletion:(id)completion
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AFCF7CF4;
  *(v8 + 24) = v6;
  selfCopy = self;
  v9 = v7;

  sub_1AF755554(0, v9, sub_1AF6CC3F0, v8);
}

- (void)renderWithPresentWithTransaction:(BOOL)transaction completion:(id)completion
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AFCF7CC8;
  *(v10 + 24) = v8;
  selfCopy = self;
  v11 = v9;

  sub_1AF755554(transaction, v11, sub_1AF6CB244, v10);
}

- (void)setEffect:(id)effect
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect) = effect;
  effectCopy = effect;
  selfCopy = self;
  sub_1AFCF566C(v7);
}

- (void)setPointOfView:(id)view
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  viewCopy = view;
  selfCopy = self;
  sub_1AFCF5A1C(view);
}

- (unsigned)resizingMode
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView))[OBJC_IVAR____TtC3VFX11VFXCoreView_resizingMode];

  return v3;
}

- (void)setResizingMode:(unsigned __int8)mode
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1AFCF5C14(mode);
}

- (UIColor)backgroundColor
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  backgroundColor = [*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) setBackgroundColor_];
}

- (unint64_t)pixelFormat
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  pixelFormat = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer) pixelFormat];

  return pixelFormat;
}

- (void)setPixelFormat:(unint64_t)format
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer) setPixelFormat_];
}

- (double)scaleFactor
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_scaleFactor);

  return v3;
}

- (void)setScaleFactor:(double)factor
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1AFCF6220(factor);
}

- (int64_t)preferredFramesPerSecond
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_preferredFramesPerSecond;
  v4 = *v3;
  v5 = v3[8];

  if (v5)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (void)setPreferredFramesPerSecond:(int64_t)second
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1AFCF6524(second);
}

- (BOOL)lowLatency
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  lowLatency = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer) lowLatency];

  return lowLatency;
}

- (void)setLowLatency:(BOOL)latency
{
  latencyCopy = latency;
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer) setLowLatency_];
}

- (_TtC3VFX13VFXViewLegacy)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = sub_1AFCF6900(x, y, width, height);

  return v7;
}

- (_TtC3VFX13VFXViewLegacy)initWithCoder:(id)coder
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1AFCF6B7C(coder);

  return v4;
}

- (BOOL)isHidden
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for VFXViewLegacy();
  isHidden = [(VFXViewLegacy *)&v5 isHidden];

  return isHidden;
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for VFXViewLegacy();
  selfCopy = self;
  [(VFXViewLegacy *)&v7 setHidden:hiddenCopy];
  v6 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  [v6 setHidden_];
}

@end