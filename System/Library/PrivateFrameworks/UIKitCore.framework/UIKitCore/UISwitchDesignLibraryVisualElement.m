@interface UISwitchDesignLibraryVisualElement
+ (CGSize)preferredContentSize;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UISwitchControl)switchControl;
- (UISwitchDesignLibraryVisualElement)initWithFrame:(CGRect)a3;
- (void)handleLongPress:(id)a3;
- (void)handlePan:(id)a3;
- (void)handleTap:(id)a3;
- (void)interactiveChangeToDisplayedOn:(BOOL)a3;
- (void)layoutSubviews;
- (void)selectGestureChanged:(id)a3;
- (void)sendStateChangeActions;
- (void)setOn:(BOOL)a3 animated:(BOOL)a4;
- (void)setShowsOnOffLabel:(BOOL)a3;
- (void)setSwitchControl:(id)a3;
@end

@implementation UISwitchDesignLibraryVisualElement

- (void)setOn:(BOOL)a3 animated:(BOOL)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession);
  if (v4)
  {
    v5 = a3;
    v6 = self;
    [v4 setDisplayedOnValue_];
    *(&v6->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn) = v5;
    sub_188FD3E44();
  }

  else
  {
    __break(1u);
  }
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UISwitchDesignLibraryVisualElement();
  v2 = v5.receiver;
  [(UIView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___UISwitchDesignLibraryVisualElement_coreHostingView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

+ (CGSize)preferredContentSize
{
  if (qword_1EA92F880 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1EA994DE0;
  v3 = *algn_1EA994DE8;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_188FD4A54(v6, v7);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_188FD4D24(v6);

  return v9;
}

- (void)handleLongPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188FD4EA4(v4);
}

- (void)handlePan:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188FD5430(v4);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 3)
  {
    ++*(&v5->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapSeed);
    sub_188FD3E44();
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_188FD564C(v4);

  return self & 1;
}

- (void)selectGestureChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_188FD5A6C(v4);
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_188FD5D60(v6, v7);

  return v9 & 1;
}

- (UISwitchControl)switchControl
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for UISwitchDesignLibraryVisualElement();
  v2 = [(UISwitchVisualElement *)&v4 switchControl];

  return v2;
}

- (void)setSwitchControl:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_188FD70C4();
  v6.receiver = v5;
  v6.super_class = type metadata accessor for UISwitchDesignLibraryVisualElement();
  [(UISwitchVisualElement *)&v6 setSwitchControl:a3];
  sub_188FD5854();
  swift_unknownObjectRelease();
}

- (UISwitchDesignLibraryVisualElement)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sendStateChangeActions
{
  v3 = self;
  v2 = [(UISwitchDesignLibraryVisualElement *)v3 switchControl];
  if (v2)
  {
    [(UISwitchControl *)v2 visualElement:v3 transitionedToOn:*(&v3->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn)];
    swift_unknownObjectRelease();
  }
}

- (void)interactiveChangeToDisplayedOn:(BOOL)a3
{
  v4 = self;
  sub_188FD6258(a3);
}

- (void)setShowsOnOffLabel:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for UISwitchDesignLibraryVisualElement();
  v4 = v5.receiver;
  [(UISwitchVisualElement *)&v5 setShowsOnOffLabel:v3];
  v4[OBJC_IVAR___UISwitchDesignLibraryVisualElement_customizations + 40] = v3;
}

@end