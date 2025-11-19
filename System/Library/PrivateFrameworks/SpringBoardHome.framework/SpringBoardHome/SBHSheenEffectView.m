@interface SBHSheenEffectView
- (SBHIconSettings)iconSettings;
- (SBHSheenEffectView)initWithCoder:(id)a3;
- (SBHSheenEffectView)initWithFrame:(CGRect)a3;
- (double)lightAngle;
- (id)globalSheenEffect;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)setContentVisibility:(unint64_t)a3;
- (void)setLightActivityLevel:(unint64_t)a3;
- (void)setLightAngle:(double)a3;
- (void)settings:(id)a3 changedValueForKey:(id)a4;
@end

@implementation SBHSheenEffectView

- (SBHSheenEffectView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (SBHSheenEffectView)initWithCoder:(id)a3
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
  v4 = self;
  v5 = [v3 sharedManager];
  [v5 removeObserver_];

  v6.receiver = v4;
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

  v3 = self;
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

- (void)setLightAngle:(double)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_1BEE25A68(a3);
}

- (void)setLightActivityLevel:(unint64_t)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self;
  sub_1BEE25BDC(a3);
}

- (void)setContentVisibility:(unint64_t)a3
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super.super.isa + OBJC_IVAR___SBHSheenEffectView_contentVisibility);
  *(&self->super.super.super.isa + OBJC_IVAR___SBHSheenEffectView_contentVisibility) = a3;
  if (v5 == a3)
  {
  }

  else
  {
    v6 = self;
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
  v3 = self;
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

- (void)settings:(id)a3 changedValueForKey:(id)a4
{
  sub_1BEE4720C();
  sub_1BEE471FC();
  sub_1BEE471EC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a4)
  {
    v7 = sub_1BEE4708C();
    a4 = v8;
  }

  else
  {
    v7 = 0;
  }

  v9 = a3;
  v10 = self;
  v11.value._countAndFlagsBits = v7;
  v11.value._object = a4;
  SBHSheenEffectView.settings(_:changedValueForKey:)(a3, v11);
}

@end