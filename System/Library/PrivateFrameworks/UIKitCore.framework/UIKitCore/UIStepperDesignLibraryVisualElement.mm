@interface UIStepperDesignLibraryVisualElement
+ (UIEdgeInsets)initialAlignmentRectInsets;
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (UIEdgeInsets)alignmentRectInsetsForControl:(id)control;
- (UIStepperControl)stepperControl;
- (UIStepperDesignLibraryVisualElement)initWithFrame:(CGRect)frame;
- (void)cancelTrackingWithEvent:(id)event;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setMaximumValue:(double)value;
- (void)setMinimumValue:(double)value;
- (void)setStepValue:(double)value;
- (void)setStepperControl:(id)control;
- (void)setValue:(double)value;
- (void)setWraps:(BOOL)wraps;
- (void)updateCount:(id)count;
@end

@implementation UIStepperDesignLibraryVisualElement

- (UIStepperControl)stepperControl
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setStepperControl:(id)control
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl) = control;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setValue:(double)value
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value) = value;
  selfCopy = self;
  sub_1890F2C00();
  v3 = selfCopy;
  v4 = *(&selfCopy->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl);
  if (v4)
  {
    [v4 visualElementDidSetValue_];
    v3 = selfCopy;
  }
}

- (void)setMinimumValue:(double)value
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue) = value;
  selfCopy = self;
  sub_1890F2C00();
}

- (void)setMaximumValue:(double)value
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue) = value;
  selfCopy = self;
  sub_1890F2C00();
}

- (void)setStepValue:(double)value
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue) = value;
  selfCopy = self;
  sub_1890F2C00();
}

- (void)setWraps:(BOOL)wraps
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps) = wraps;
  selfCopy = self;
  sub_1890F2C00();
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for UIStepperDesignLibraryVisualElement();
  v2 = v5.receiver;
  [(UIView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___UIStepperDesignLibraryVisualElement_coreHostingView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

+ (UIEdgeInsets)initialAlignmentRectInsets
{
  v2 = *&qword_1EA995190;
  v3 = *algn_1EA995198;
  v4 = *&qword_1EA9951A0;
  v5 = unk_1EA9951A8;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)alignmentRectInsetsForControl:(id)control
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for UIStepperDesignLibraryVisualElement();
  [(UIView *)&v7 alignmentRectInsets];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)updateCount:(id)count
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_1890F313C(v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  sub_1890F30BC();
  [touchCopy locationInView_];
  sub_1890F374C(eventCopy, v9, v10);

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  [touchCopy locationInView_];
  sub_1890F374C(eventCopy, v9, v10);

  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  eventCopy = event;
  selfCopy = self;
  sub_1890F40E4();
}

- (void)cancelTrackingWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  sub_1890F417C();
}

- (UIStepperDesignLibraryVisualElement)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end