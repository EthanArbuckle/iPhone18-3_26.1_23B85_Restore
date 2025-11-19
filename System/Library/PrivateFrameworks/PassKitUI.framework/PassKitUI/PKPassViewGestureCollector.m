@interface PKPassViewGestureCollector
- (PKPassViewGestureCollector)init;
- (void)_groupStackViewPanned:(id)a3;
- (void)registerGroupView:(id)a3 withPressGestureRecognizer:(id)a4 longPressGestureRecognizer:(id)a5 panGestureRecognizer:(id)a6 delegate:(id)a7;
- (void)unregisterGroupView:(id)a3;
@end

@implementation PKPassViewGestureCollector

- (PKPassViewGestureCollector)init
{
  result = sub_1BE053994();
  __break(1u);
  return result;
}

- (void)registerGroupView:(id)a3 withPressGestureRecognizer:(id)a4 longPressGestureRecognizer:(id)a5 panGestureRecognizer:(id)a6 delegate:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  swift_unknownObjectRetain();
  v15 = self;
  sub_1BD9A9814(v11, v12, v13, v14);

  swift_unknownObjectRelease();
}

- (void)unregisterGroupView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BD9A9FCC(v4);
}

- (void)_groupStackViewPanned:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 isEnabled] && objc_msgSend(v4, sel_state) <= 2)
  {
    sub_1BD9AA200();
  }
}

@end