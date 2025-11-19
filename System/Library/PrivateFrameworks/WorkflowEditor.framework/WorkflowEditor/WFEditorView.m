@interface WFEditorView
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4;
- (NSArray)keyCommands;
- (void)escapeKeyPressed;
- (void)handleDrag:(id)a3;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation WFEditorView

- (void)layoutSubviews
{
  v2 = self;
  sub_27459F340();
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27459F4B8();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745A0F70();
}

- (NSArray)keyCommands
{
  v2 = self;
  v3 = sub_2745A442C();

  if (v3)
  {
    sub_274412734(0, &unk_280952AA8);
    v4 = sub_27463B7FC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)escapeKeyPressed
{
  v2 = self;
  sub_2745A4534();
}

- (void)handleDrag:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745A110C();
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2745A604C();

  return v9 & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRequireFailureOfGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745A615C(v8, v7);

  return 0;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2745A625C(v6, v7);

  return v9;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745A6384(v6, v7);
  v10 = v9;

  return v10 & 1;
}

@end