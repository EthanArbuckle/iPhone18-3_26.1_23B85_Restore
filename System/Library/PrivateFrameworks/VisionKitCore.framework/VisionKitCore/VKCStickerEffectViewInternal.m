@interface VKCStickerEffectViewInternal
+ (void)resetRestingOrientation;
- (CGSize)intrinsicContentSize;
- (NSString)description;
- (VKCStickerEffectViewInternal)initWithFrame:(CGRect)a3;
- (void)_internalUpdateFromDisplayLink:(id)a3;
- (void)_observeScrollViewDidScroll:(id)a3;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)playSettlingAnimation;
- (void)setCurlPosition:(float)a3;
- (void)setEffect:(id)a3;
- (void)setImage:(id)a3;
- (void)setIsPaused:(BOOL)a3;
- (void)snapshotWithCompletionHandler:(id)a3;
@end

@implementation VKCStickerEffectViewInternal

- (void)setCurlPosition:(float)a3
{
  v4 = self;
  sub_1B4402650(a3);
}

- (void)setEffect:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1B4407774(v5);
}

- (void)setImage:(id)a3
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_image);
  *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_image) = a3;
  v4 = a3;
  v5 = self;
  sub_1B4402790(v6);
}

- (void)setIsPaused:(BOOL)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_isPaused);
  *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_isPaused) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_1B4404C34();
  }
}

- (NSString)description
{
  v2 = self;
  sub_1B4402928();

  v3 = sub_1B4416070();

  return v3;
}

- (void)_observeScrollViewDidScroll:(id)a3
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive) & 1) == 0)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_displayLink);
    v6 = v4;
    v9 = self;
    sub_1B440506C(v4);
    v8 = v7;

    *(&v9->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter) = v8;
    sub_1B4404C34();
  }
}

- (CGSize)intrinsicContentSize
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_image);
  if (v3)
  {

    [v3 size];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = type metadata accessor for StickerEffectView();
    [(VKCStickerEffectViewInternal *)&v6 intrinsicContentSize];
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1B4403A7C();
}

- (void)didMoveToWindow
{
  v2 = self;
  sub_1B4403D48();
}

- (void)playSettlingAnimation
{
  v2 = self;
  *(&v2->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartTime) = CACurrentMediaTime();
  sub_1B4404C34();
}

- (void)_internalUpdateFromDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1B4404D74(v4);
}

- (void)snapshotWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1B4407E04(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (VKCStickerEffectViewInternal)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)resetRestingOrientation
{
  if (qword_1EB898A30 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB89A480;
  v1 = *(qword_1EB89A480 + 48);
  *(qword_1EB89A480 + 64) = *(qword_1EB89A480 + 32);
  *(v0 + 80) = v1;
  *(v0 + 88) = CACurrentMediaTime();
  *(v0 + 96) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
}

@end