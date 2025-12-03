@interface VKCStickerEffectViewInternal
+ (void)resetRestingOrientation;
- (CGSize)intrinsicContentSize;
- (NSString)description;
- (VKCStickerEffectViewInternal)initWithFrame:(CGRect)frame;
- (void)_internalUpdateFromDisplayLink:(id)link;
- (void)_observeScrollViewDidScroll:(id)scroll;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)playSettlingAnimation;
- (void)setCurlPosition:(float)position;
- (void)setEffect:(id)effect;
- (void)setImage:(id)image;
- (void)setIsPaused:(BOOL)paused;
- (void)snapshotWithCompletionHandler:(id)handler;
@end

@implementation VKCStickerEffectViewInternal

- (void)setCurlPosition:(float)position
{
  selfCopy = self;
  sub_1B4402650(position);
}

- (void)setEffect:(id)effect
{
  effectCopy = effect;
  selfCopy = self;
  sub_1B4407774(effectCopy);
}

- (void)setImage:(id)image
{
  v6 = *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_image);
  *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_image) = image;
  imageCopy = image;
  selfCopy = self;
  sub_1B4402790(v6);
}

- (void)setIsPaused:(BOOL)paused
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_isPaused);
  *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_isPaused) = paused;
  if (v4 != paused)
  {
    selfCopy = self;
    sub_1B4404C34();
  }
}

- (NSString)description
{
  selfCopy = self;
  sub_1B4402928();

  v3 = sub_1B4416070();

  return v3;
}

- (void)_observeScrollViewDidScroll:(id)scroll
{
  if ((*(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_displayLinkActive) & 1) == 0)
  {
    v4 = *(&self->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_displayLink);
    v6 = v4;
    selfCopy = self;
    sub_1B440506C(v4);
    v8 = v7;

    *(&selfCopy->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_unitScreenCenter) = v8;
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
  selfCopy = self;
  sub_1B4403A7C();
}

- (void)didMoveToWindow
{
  selfCopy = self;
  sub_1B4403D48();
}

- (void)playSettlingAnimation
{
  selfCopy = self;
  *(&selfCopy->super.super.super.isa + OBJC_IVAR___VKCStickerEffectViewInternal_settlingStartTime) = CACurrentMediaTime();
  sub_1B4404C34();
}

- (void)_internalUpdateFromDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_1B4404D74(linkCopy);
}

- (void)snapshotWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  _Block_copy(v4);
  selfCopy = self;
  sub_1B4407E04(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (VKCStickerEffectViewInternal)initWithFrame:(CGRect)frame
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