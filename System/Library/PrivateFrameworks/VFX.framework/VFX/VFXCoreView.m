@interface VFXCoreView
+ (Class)layerClass;
- (BOOL)isHidden;
- (CGRect)frame;
- (UIColor)backgroundColor;
- (_TtC3VFX11VFXCoreView)initWithCoder:(id)a3;
- (_TtC3VFX11VFXCoreView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setHidden:(BOOL)a3;
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
  v3 = [(VFXCoreView *)&v5 isHidden];

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

  v8.receiver = self;
  v8.super_class = type metadata accessor for VFXCoreView();
  v5 = self;
  [(VFXCoreView *)&v8 setHidden:v3];
  v6 = [(VFXCoreView *)v5 window:v8.receiver];
  if (v6)
  {

    v7 = [(VFXCoreView *)v5 isHidden];
  }

  else
  {
    v7 = 1;
  }

  *(&v5->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_paused) = v7;
  sub_1AF752BB4();
}

- (_TtC3VFX11VFXCoreView)initWithCoder:(id)a3
{
  sub_1AFDFD638();
  sub_1AFDFD628();
  sub_1AFDFD5B8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_1AF7530D8(a3);

  return v4;
}

- (void)dealloc
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_renderer))
  {
    v3 = self;

    sub_1AF7535DC(v4);
  }

  else
  {
    v5 = self;
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver_];

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

  v3 = self;
  v4 = [(VFXCoreView *)v3 window];
  v5 = v4;
  if (v4)
  {
  }

  sub_1AF753A54(v5 != 0);
  v6.receiver = v3;
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
  v3 = self;
  [(VFXCoreView *)&v15 layoutSubviews];
  [(VFXCoreView *)v3 bounds:v15.receiver];
  v5 = v4;
  v7 = v6;
  [(VFXCoreView *)v3 contentScaleFactor];
  v9 = v5 * v8;
  [(VFXCoreView *)v3 contentScaleFactor];
  v11 = v7 * v10;
  v12 = ceil(v9);
  v13 = ceil(v11);
  if (*(&v3->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v12 || *(&v3->super.super._responderFlags + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v13)
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

- (void)setFrame:(CGRect)a3
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

  v20.receiver = self;
  v20.super_class = type metadata accessor for VFXCoreView();
  v8 = self;
  [(VFXCoreView *)&v20 setFrame:x, y, width, height];
  [(VFXCoreView *)v8 bounds:v20.receiver];
  v10 = v9;
  v12 = v11;
  [(VFXCoreView *)v8 contentScaleFactor];
  v14 = v10 * v13;
  [(VFXCoreView *)v8 contentScaleFactor];
  v16 = v12 * v15;
  v17 = ceil(v14);
  v18 = ceil(v16);
  if (*(&v8->super.super.super.isa + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v17 || *(&v8->super.super._responderFlags + OBJC_IVAR____TtC3VFX11VFXCoreView_drawableSize) != v18)
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
  v3 = [(VFXCoreView *)&v5 backgroundColor];

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

  v7.receiver = self;
  v7.super_class = type metadata accessor for VFXCoreView();
  v5 = a3;
  v6 = self;
  [(VFXCoreView *)&v7 setBackgroundColor:v5];
  sub_1AF754468();
}

- (_TtC3VFX11VFXCoreView)initWithFrame:(CGRect)a3
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