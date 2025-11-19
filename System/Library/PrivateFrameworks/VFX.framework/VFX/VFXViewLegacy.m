@interface VFXViewLegacy
- (BOOL)framebufferOnly;
- (BOOL)isHidden;
- (BOOL)lowLatency;
- (MTLCommandQueue)commandQueue;
- (UIColor)backgroundColor;
- (_TtC3VFX13VFXViewLegacy)initWithCoder:(id)a3;
- (_TtC3VFX13VFXViewLegacy)initWithFrame:(CGRect)a3;
- (double)scaleFactor;
- (id)postRenderCallback;
- (int64_t)preferredFramesPerSecond;
- (unint64_t)pixelFormat;
- (unsigned)resizingMode;
- (void)renderWithCompletion:(id)a3;
- (void)renderWithPresentWithTransaction:(BOOL)a3 completion:(id)a4;
- (void)setBackgroundColor:(id)a3;
- (void)setEffect:(id)a3;
- (void)setFramebufferOnly:(BOOL)a3;
- (void)setHidden:(BOOL)a3;
- (void)setLowLatency:(BOOL)a3;
- (void)setPixelFormat:(unint64_t)a3;
- (void)setPointOfView:(id)a3;
- (void)setPostRenderCallback:(id)a3;
- (void)setPreferredFramesPerSecond:(int64_t)a3;
- (void)setResizingMode:(unsigned __int8)a3;
- (void)setScaleFactor:(double)a3;
- (void)setScene:(id)a3;
@end

@implementation VFXViewLegacy

- (void)setScene:(id)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_scene) = a3;
  v6 = a3;
  v7 = self;

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
  v4 = self;
  v5 = [v3 layer];
  v6 = [v5 framebufferOnly];

  return v6;
}

- (void)setFramebufferOnly:(BOOL)a3
{
  v3 = a3;
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v7 = self;
  v6 = [v5 layer];
  [v6 setFramebufferOnly_];
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

- (void)setPostRenderCallback:(id)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(a3);
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

- (void)renderWithCompletion:(id)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = _Block_copy(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AFCF7CF4;
  *(v8 + 24) = v6;
  v10 = self;
  v9 = v7;

  sub_1AF755554(0, v9, sub_1AF6CC3F0, v8);
}

- (void)renderWithPresentWithTransaction:(BOOL)a3 completion:(id)a4
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = _Block_copy(a4);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1AFCF7CC8;
  *(v10 + 24) = v8;
  v12 = self;
  v11 = v9;

  sub_1AF755554(a3, v11, sub_1AF6CB244, v10);
}

- (void)setEffect:(id)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_effect) = a3;
  v5 = a3;
  v6 = self;
  sub_1AFCF566C(v7);
}

- (void)setPointOfView:(id)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_1AFCF5A1C(a3);
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

- (void)setResizingMode:(unsigned __int8)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_1AFCF5C14(a3);
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

  v3 = [*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) backgroundColor];

  return v3;
}

- (void)setBackgroundColor:(id)a3
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

  v3 = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer) pixelFormat];

  return v3;
}

- (void)setPixelFormat:(unint64_t)a3
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

- (void)setScaleFactor:(double)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_1AFCF6220(a3);
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

- (void)setPreferredFramesPerSecond:(int64_t)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_1AFCF6524(a3);
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

  v3 = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer) lowLatency];

  return v3;
}

- (void)setLowLatency:(BOOL)a3
{
  v3 = a3;
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView) + OBJC_IVAR____TtC3VFX11VFXCoreView_metalLayer) setLowLatency_];
}

- (_TtC3VFX13VFXViewLegacy)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC3VFX13VFXViewLegacy)initWithCoder:(id)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1AFCF6B7C(a3);

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
  v3 = [(VFXViewLegacy *)&v5 isHidden];

  return v3;
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for VFXViewLegacy();
  v5 = self;
  [(VFXViewLegacy *)&v7 setHidden:v3];
  v6 = *(&v5->super.super.super.isa + OBJC_IVAR____TtC3VFX13VFXViewLegacy_coreView);
  [v6 setHidden_];
}

@end