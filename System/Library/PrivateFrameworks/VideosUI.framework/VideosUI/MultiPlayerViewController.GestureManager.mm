@interface MultiPlayerViewController.GestureManager
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (void)viewPannedWithGesture:(id)a3;
- (void)viewPinchedWithGesture:(id)a3;
- (void)viewSwipedWithGesture:(id)a3;
@end

@implementation MultiPlayerViewController.GestureManager

- (void)viewSwipedWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BC6430(v6);
}

- (void)viewPinchedWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BC6644(v6);
}

- (void)viewPannedWithGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = OUTLINED_FUNCTION_1_26();
  sub_1E3BC6814(v6);
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_1E3BC68C4(v4);

  return self & 1;
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = OUTLINED_FUNCTION_13_8();
  v11 = sub_1E3BC6AFC(v9, v10);

  return v11;
}

@end