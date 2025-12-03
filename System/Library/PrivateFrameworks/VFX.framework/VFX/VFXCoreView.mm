@interface VFXCoreView
+ (Class)layerClass;
- (BOOL)isHidden;
- (CGRect)frame;
- (UIColor)backgroundColor;
- (_TtC3VFX11VFXCoreView)initWithCoder:(id)coder;
- (_TtC3VFX11VFXCoreView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setFrame:(CGRect)frame;
- (void)setHidden:(BOOL)hidden;
@end

@implementation VFXCoreView

+ (Class)layerClass
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1AF0D4478(0, &unk_1EB632A50);

  return swift_getObjCClassFromMetadata();
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
  v5.super_class = type metadata accessor for VFXCoreView();
  isHidden = [(VFXCoreView *)&v5 isHidden];

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

  v8.receiver = self;
  v8.super_class = type metadata accessor for VFXCoreView();
  selfCopy = self;
  [(VFXCoreView *)&v8 setHidden:hiddenCopy];
  v6 = [(VFXCoreView *)selfCopy window:v8.receiver];
  if (v6)
  {

    isHidden = [(VFXCoreView *)selfCopy isHidden];
  }

  else
  {
    isHidden = 1;
  }

  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_paused) = isHidden;
  sub_1AF752BB4();
}

- (_TtC3VFX11VFXCoreView)initWithCoder:(id)coder
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1AF7530D8(coder);

  return v4;
}

- (void)dealloc
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer))
  {
    selfCopy = self;

    sub_1AF7535DC(v4);
  }

  else
  {
    selfCopy2 = self;
  }

  defaultCenter = [objc_opt_self() defaultCenter];
  [defaultCenter removeObserver_];

  v7.receiver = self;
  v7.super_class = type metadata accessor for VFXCoreView();
  [(VFXCoreView *)&v7 dealloc];
}

- (void)didMoveToWindow
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  window = [(VFXCoreView *)selfCopy window];
  v5 = window;
  if (window)
  {
  }

  sub_1AF753A54(v5 != 0);
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for VFXCoreView();
  [(VFXCoreView *)&v6 didMoveToWindow];
}

- (void)layoutSubviews
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for VFXCoreView();
  selfCopy = self;
  [(VFXCoreView *)&v15 layoutSubviews];
  [(VFXCoreView *)selfCopy bounds:v15.receiver];
  v5 = v4;
  v7 = v6;
  [(VFXCoreView *)selfCopy contentScaleFactor];
  v9 = v5 * v8;
  [(VFXCoreView *)selfCopy contentScaleFactor];
  v11 = v7 * v10;
  v12 = ceil(v9);
  v13 = ceil(v11);
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v12 || *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v13)
  {
    sub_1AF753FAC(v12, v13);
  }
}

- (CGRect)frame
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15.receiver = self;
  v15.super_class = type metadata accessor for VFXCoreView();
  [(VFXCoreView *)&v15 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setFrame:(CGRect)frame
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

  v20.receiver = self;
  v20.super_class = type metadata accessor for VFXCoreView();
  selfCopy = self;
  [(VFXCoreView *)&v20 setFrame:x, y, width, height];
  [(VFXCoreView *)selfCopy bounds:v20.receiver];
  v10 = v9;
  v12 = v11;
  [(VFXCoreView *)selfCopy contentScaleFactor];
  v14 = v10 * v13;
  [(VFXCoreView *)selfCopy contentScaleFactor];
  v16 = v12 * v15;
  v17 = ceil(v14);
  v18 = ceil(v16);
  if (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v17 || *(&selfCopy->super.super._responderFlags + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v18)
  {
    sub_1AF753FAC(v17, v18);
  }
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

  v5.receiver = self;
  v5.super_class = type metadata accessor for VFXCoreView();
  backgroundColor = [(VFXCoreView *)&v5 backgroundColor];

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

  v7.receiver = self;
  v7.super_class = type metadata accessor for VFXCoreView();
  colorCopy = color;
  selfCopy = self;
  [(VFXCoreView *)&v7 setBackgroundColor:colorCopy];
  sub_1AF754468();
}

- (_TtC3VFX11VFXCoreView)initWithFrame:(CGRect)frame
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end