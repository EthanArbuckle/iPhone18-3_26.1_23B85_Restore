@interface SBHSheenEffectView
- (SBHIconSettings)iconSettings;
- (SBHSheenEffectView)initWithCoder:(id)coder;
- (SBHSheenEffectView)initWithFrame:(CGRect)frame;
- (double)lightAngle;
- (id)globalSheenEffect;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setContentVisibility:(unint64_t)visibility;
- (void)setLightActivityLevel:(unint64_t)level;
- (void)setLightAngle:(double)angle;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation SBHSheenEffectView

- (SBHSheenEffectView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BEE245D0(x, y, width, height);
  v8 = v7;

  return v8;
}

- (SBHSheenEffectView)initWithCoder:(id)coder
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _sSo18SBHSheenEffectViewC15SpringBoardHomeE5coderABSgSo7NSCoderC_tcfc_0();
}

- (void)dealloc
{
  v3 = objc_opt_self();
  selfCopy = self;
  sharedManager = [v3 sharedManager];
  [sharedManager removeObserver_];

  v6.receiver = selfCopy;
  v6.super_class = SBHSheenEffectView;
  [(SBHSheenEffectView *)&v6 dealloc];
}

- (id)globalSheenEffect
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1BEE25348();
  v5 = v4;

  return v5;
}

- (double)lightAngle
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR___SBHSheenEffectView_lightAngle);

  return v3;
}

- (void)setLightAngle:(double)angle
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1BEE25A68(angle);
}

- (void)setLightActivityLevel:(unint64_t)level
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_1BEE25BDC(level);
}

- (void)setContentVisibility:(unint64_t)visibility
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___SBHSheenEffectView_contentVisibility);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHSheenEffectView_contentVisibility) = visibility;
  if (v5 == visibility)
  {
  }

  else
  {
    selfCopy = self;
    sub_1BEE25E08();
  }
}

- (void)didMoveToWindow
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4.receiver = self;
  v4.super_class = SBHSheenEffectView;
  selfCopy = self;
  [(SBHSheenEffectView *)&v4 didMoveToWindow];
  sub_1BEE25E08();
}

- (SBHIconSettings)iconSettings
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR___SBHSheenEffectView_iconSettings);

  return v3;
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (key)
  {
    v7 = sub_1BEE4708C();
    key = v8;
  }

  else
  {
    v7 = 0;
  }

  settingsCopy = settings;
  selfCopy = self;
  v11.value._countAndFlagsBits = v7;
  v11.value._object = key;
  SBHSheenEffectView.settings(_:changedValueForKey:)(settings, v11);
}

@end