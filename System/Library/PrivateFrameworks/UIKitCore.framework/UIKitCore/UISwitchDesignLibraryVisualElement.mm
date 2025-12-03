@interface UISwitchDesignLibraryVisualElement
+ (CGSize)preferredContentSize;
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event;
- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UISwitchControl)switchControl;
- (UISwitchDesignLibraryVisualElement)initWithFrame:(CGRect)frame;
- (void)handleLongPress:(id)press;
- (void)handlePan:(id)pan;
- (void)handleTap:(id)tap;
- (void)interactiveChangeToDisplayedOn:(BOOL)on;
- (void)layoutSubviews;
- (void)selectGestureChanged:(id)changed;
- (void)sendStateChangeActions;
- (void)setOn:(BOOL)on animated:(BOOL)animated;
- (void)setShowsOnOffLabel:(BOOL)label;
- (void)setSwitchControl:(id)control;
@end

@implementation UISwitchDesignLibraryVisualElement

- (void)setOn:(BOOL)on animated:(BOOL)animated
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_gestureTrackingSession);
  if (v4)
  {
    onCopy = on;
    selfCopy = self;
    [v4 setDisplayedOnValue_];
    *(&selfCopy->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn) = onCopy;
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

- (BOOL)gestureRecognizer:(id)recognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_188FD4A54(recognizerCopy, gestureRecognizerCopy);

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)recognizer shouldRequireFailureOfGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_188FD4D24(recognizerCopy);

  return v9;
}

- (void)handleLongPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_188FD4EA4(pressCopy);
}

- (void)handlePan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  sub_188FD5430(panCopy);
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  if ([tapCopy state] == 3)
  {
    ++*(&selfCopy->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_tapSeed);
    sub_188FD3E44();
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_188FD564C(beginCopy);

  return self & 1;
}

- (void)selectGestureChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_188FD5A6C(changedCopy);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveEvent:(id)event
{
  recognizerCopy = recognizer;
  eventCopy = event;
  selfCopy = self;
  v9 = sub_188FD5D60(recognizerCopy, eventCopy);

  return v9 & 1;
}

- (UISwitchControl)switchControl
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for UISwitchDesignLibraryVisualElement();
  switchControl = [(UISwitchVisualElement *)&v4 switchControl];

  return switchControl;
}

- (void)setSwitchControl:(id)control
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_188FD70C4();
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for UISwitchDesignLibraryVisualElement();
  [(UISwitchVisualElement *)&v6 setSwitchControl:control];
  sub_188FD5854();
  swift_unknownObjectRelease();
}

- (UISwitchDesignLibraryVisualElement)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sendStateChangeActions
{
  selfCopy = self;
  switchControl = [(UISwitchDesignLibraryVisualElement *)selfCopy switchControl];
  if (switchControl)
  {
    [(UISwitchControl *)switchControl visualElement:selfCopy transitionedToOn:*(&selfCopy->super.super.super.super.isa + OBJC_IVAR___UISwitchDesignLibraryVisualElement_isOn)];
    swift_unknownObjectRelease();
  }
}

- (void)interactiveChangeToDisplayedOn:(BOOL)on
{
  selfCopy = self;
  sub_188FD6258(on);
}

- (void)setShowsOnOffLabel:(BOOL)label
{
  labelCopy = label;
  v5.receiver = self;
  v5.super_class = type metadata accessor for UISwitchDesignLibraryVisualElement();
  v4 = v5.receiver;
  [(UISwitchVisualElement *)&v5 setShowsOnOffLabel:labelCopy];
  v4[OBJC_IVAR___UISwitchDesignLibraryVisualElement_customizations + 40] = labelCopy;
}

@end