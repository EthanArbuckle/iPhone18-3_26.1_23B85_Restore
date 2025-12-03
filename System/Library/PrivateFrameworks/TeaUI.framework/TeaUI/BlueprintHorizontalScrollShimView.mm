@interface BlueprintHorizontalScrollShimView
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)doHoveringWithRecognizer:(id)recognizer;
- (void)doNextWithButton:(id)button;
- (void)doPreviousWithButton:(id)button;
- (void)layoutSubviews;
@end

@implementation BlueprintHorizontalScrollShimView

- (void)layoutSubviews
{
  selfCopy = self;
  BlueprintHorizontalScrollShimView.layoutSubviews()();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v15.value.super.isa = event;
  BlueprintHorizontalScrollShimView.hitTest(_:with:)(v10, __PAIR128__(*&y, *&x), v15);
  v12 = v11;

  return v12;
}

- (void)doPreviousWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1D7F88A98();
}

- (void)doNextWithButton:(id)button
{
  buttonCopy = button;
  selfCopy = self;
  sub_1D7F88C44();
}

- (void)doHoveringWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  sub_1D7F88CB4(recognizerCopy);
}

@end