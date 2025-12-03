@interface PKPassViewGestureCollector
- (PKPassViewGestureCollector)init;
- (void)_groupStackViewPanned:(id)panned;
- (void)registerGroupView:(id)view withPressGestureRecognizer:(id)recognizer longPressGestureRecognizer:(id)gestureRecognizer panGestureRecognizer:(id)panGestureRecognizer delegate:(id)delegate;
- (void)unregisterGroupView:(id)view;
@end

@implementation PKPassViewGestureCollector

- (PKPassViewGestureCollector)init
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)registerGroupView:(id)view withPressGestureRecognizer:(id)recognizer longPressGestureRecognizer:(id)gestureRecognizer panGestureRecognizer:(id)panGestureRecognizer delegate:(id)delegate
{
  viewCopy = view;
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  panGestureRecognizerCopy = panGestureRecognizer;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BD9A9814(viewCopy, recognizerCopy, gestureRecognizerCopy, panGestureRecognizerCopy);

  swift_unknownObjectRelease();
}

- (void)unregisterGroupView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_1BD9A9FCC(viewCopy);
}

- (void)_groupStackViewPanned:(id)panned
{
  pannedCopy = panned;
  selfCopy = self;
  if ([pannedCopy isEnabled] && objc_msgSend(pannedCopy, sel_state) <= 2)
  {
    sub_1BD9AA200();
  }
}

@end