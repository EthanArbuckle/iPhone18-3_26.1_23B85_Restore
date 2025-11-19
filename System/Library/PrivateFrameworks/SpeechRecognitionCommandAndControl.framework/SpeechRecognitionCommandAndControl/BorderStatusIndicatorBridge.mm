@interface BorderStatusIndicatorBridge
+ (UIViewController)sharedViewController;
@end

@implementation BorderStatusIndicatorBridge

+ (UIViewController)sharedViewController
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v2 = *(static BorderStatusIndicatorBridge.shared + OBJC_IVAR____TtC34SpeechRecognitionCommandAndControl27BorderStatusIndicatorBridge_hostingController);

  return v2;
}

@end