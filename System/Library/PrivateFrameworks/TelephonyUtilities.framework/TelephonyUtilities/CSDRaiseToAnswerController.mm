@interface CSDRaiseToAnswerController
+ (BOOL)isRaiseToEarGestureEnabled;
+ (BOOL)isRaiseToEarGestureSupported;
- (BOOL)isDetectingRaiseToAnswer;
- (CSDRaiseToAnswerController)init;
- (CSDRaiseToAnswerController)initWithCallCenterObserver:(id)a3;
- (void)setDetectingRaiseToAnswer:(BOOL)a3;
- (void)updateDetectingRaiseToAnswer;
@end

@implementation CSDRaiseToAnswerController

- (void)updateDetectingRaiseToAnswer
{
  if ([objc_opt_class() isRaiseToEarGestureEnabled])
  {
    v7 = [(CSDRaiseToAnswerController *)self callCenterObserver];
    v3 = [v7 callContainer];
    v4 = [v3 incomingCall];
    if (v4)
    {
      v5 = [(CSDRaiseToAnswerController *)self callCenterObserver];
      v6 = [v5 callContainer];
      -[CSDRaiseToAnswerController setDetectingRaiseToAnswer:](self, "setDetectingRaiseToAnswer:", [v6 currentCallCount] == 1);
    }

    else
    {
      [(CSDRaiseToAnswerController *)self setDetectingRaiseToAnswer:0];
    }
  }

  else
  {

    [(CSDRaiseToAnswerController *)self setDetectingRaiseToAnswer:0];
  }
}

+ (BOOL)isRaiseToEarGestureEnabled
{
  v2 = [a1 isRaiseToEarGestureSupported];
  if (v2)
  {
    v3 = +[NSUserDefaults tu_defaults];
    v4 = [v3 BOOLForKey:@"incomingCallRaiseToAnswerEnabledKey"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

+ (BOOL)isRaiseToEarGestureSupported
{
  if (qword_1006ACEB0 != -1)
  {
    sub_10047B9A0();
  }

  return byte_1006ACEA8;
}

- (CSDRaiseToAnswerController)init
{
  v3 = objc_alloc_init(CSDCallCenterObserver);
  v4 = [(CSDRaiseToAnswerController *)self initWithCallCenterObserver:v3];

  return v4;
}

- (CSDRaiseToAnswerController)initWithCallCenterObserver:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = CSDRaiseToAnswerController;
  v6 = [(CSDRaiseToAnswerController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callCenterObserver, a3);
    [(CSDCallCenterObserver *)v7->_callCenterObserver setTriggers:1];
    [(CSDCallCenterObserver *)v7->_callCenterObserver setDelegate:v7];
    v8 = [objc_alloc(CUTWeakLinkClass()) initWithPriority:2];
    raiseToEarGestureManager = v7->_raiseToEarGestureManager;
    v7->_raiseToEarGestureManager = v8;

    objc_initWeak(&location, v7);
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100201DF0;
    v13[3] = &unk_10061AB78;
    objc_copyWeak(&v14, &location);
    v10 = objc_retainBlock(v13);
    raiseToEarGestureHandler = v7->_raiseToEarGestureHandler;
    v7->_raiseToEarGestureHandler = v10;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (BOOL)isDetectingRaiseToAnswer
{
  v2 = [(CSDRaiseToAnswerController *)self raiseToEarGestureManager];
  v3 = [v2 gestureHandler];
  v4 = v3 != 0;

  return v4;
}

- (void)setDetectingRaiseToAnswer:(BOOL)a3
{
  v3 = a3;
  if (a3)
  {
    v6 = [(CSDRaiseToAnswerController *)self raiseToEarGestureHandler];
  }

  else
  {
    v6 = 0;
  }

  v5 = [(CSDRaiseToAnswerController *)self raiseToEarGestureManager];
  [v5 setGestureHandler:v6];

  if (v3)
  {
  }
}

@end