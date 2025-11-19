@interface UIStepperDesignLibraryVisualElement
+ (UIEdgeInsets)initialAlignmentRectInsets;
- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (UIEdgeInsets)alignmentRectInsetsForControl:(id)a3;
- (UIStepperControl)stepperControl;
- (UIStepperDesignLibraryVisualElement)initWithFrame:(CGRect)a3;
- (void)cancelTrackingWithEvent:(id)a3;
- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)setMaximumValue:(double)a3;
- (void)setMinimumValue:(double)a3;
- (void)setStepValue:(double)a3;
- (void)setStepperControl:(id)a3;
- (void)setValue:(double)a3;
- (void)setWraps:(BOOL)a3;
- (void)updateCount:(id)a3;
@end

@implementation UIStepperDesignLibraryVisualElement

- (UIStepperControl)stepperControl
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setStepperControl:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setValue:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_value) = a3;
  v5 = self;
  sub_1890F2C00();
  v3 = v5;
  v4 = *(&v5->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepperControl);
  if (v4)
  {
    [v4 visualElementDidSetValue_];
    v3 = v5;
  }
}

- (void)setMinimumValue:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_minimumValue) = a3;
  v3 = self;
  sub_1890F2C00();
}

- (void)setMaximumValue:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_maximumValue) = a3;
  v3 = self;
  sub_1890F2C00();
}

- (void)setStepValue:(double)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_stepValue) = a3;
  v3 = self;
  sub_1890F2C00();
}

- (void)setWraps:(BOOL)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___UIStepperDesignLibraryVisualElement_wraps) = a3;
  v3 = self;
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

- (UIEdgeInsets)alignmentRectInsetsForControl:(id)a3
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

- (void)updateCount:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_18A4A7DE8();
  swift_unknownObjectRelease();
  sub_1890F313C(v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v5);
}

- (BOOL)beginTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1890F30BC();
  [v6 locationInView_];
  sub_1890F374C(v7, v9, v10);

  return 1;
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  [v6 locationInView_];
  sub_1890F374C(v7, v9, v10);

  return 1;
}

- (void)endTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1890F40E4();
}

- (void)cancelTrackingWithEvent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1890F417C();
}

- (UIStepperDesignLibraryVisualElement)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end