@interface UIWebURLAction
+ (BOOL)performDefaultActionForURL:(id)l andDOMNode:(id)node withAllowedTypes:(unint64_t)types forFrame:(id)frame inView:(id)view;
+ (void)performDataDetectorsDefaultActionForDOMNode:(id)node forFrame:(id)frame inView:(id)view;
@end

@implementation UIWebURLAction

+ (void)performDataDetectorsDefaultActionForDOMNode:(id)node forFrame:(id)frame inView:(id)view
{
  viewCopy = view;
  frameCopy = frame;
  nodeCopy = node;
  dataDetectorsUIGetClass(@"DDDetectionController") = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  v10 = [dataDetectorsUIGetClass(@"DDDetectionController") defaultActionForDOMNode:nodeCopy forFrame:frameCopy];

  [dataDetectorsUIGetClass(@"DDDetectionController") performAction:v10 inView:viewCopy interactionDelegate:0];
}

+ (BOOL)performDefaultActionForURL:(id)l andDOMNode:(id)node withAllowedTypes:(unint64_t)types forFrame:(id)frame inView:(id)view
{
  lCopy = l;
  nodeCopy = node;
  frameCopy = frame;
  viewCopy = view;
  v16 = 0;
  if (lCopy && nodeCopy)
  {
    if ((types & 0xFFFFFFFF80000001) != 0 && [lCopy isSpringboardHandledURL] && TelephonyUtilitiesLibrary() && objc_msgSend(lCopy, "hasTelephonyScheme"))
    {
      goto LABEL_14;
    }

    if ((types & 4) != 0)
    {
      scheme = [lCopy scheme];
      v18 = [scheme caseInsensitiveCompare:@"x-apple-data-detectors"];

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    if ((types & 2) != 0 && [lCopy isSpringboardHandledURL])
    {
      if (!TelephonyUtilitiesLibrary() || ([lCopy isFaceTimeURL] & 1) == 0 && !objc_msgSend(lCopy, "isFaceTimeAudioURL"))
      {
        [UIApp _openURL:lCopy originatingView:viewCopy completionHandler:0];
        goto LABEL_17;
      }

LABEL_14:
      [self performDataDetectorsDefaultActionForDOMNode:nodeCopy forFrame:frameCopy inView:viewCopy];
LABEL_17:
      v16 = 1;
      goto LABEL_18;
    }

    v16 = 0;
  }

LABEL_18:

  return v16;
}

@end