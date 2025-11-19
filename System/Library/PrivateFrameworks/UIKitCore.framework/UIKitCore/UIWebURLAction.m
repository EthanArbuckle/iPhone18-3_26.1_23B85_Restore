@interface UIWebURLAction
+ (BOOL)performDefaultActionForURL:(id)a3 andDOMNode:(id)a4 withAllowedTypes:(unint64_t)a5 forFrame:(id)a6 inView:(id)a7;
+ (void)performDataDetectorsDefaultActionForDOMNode:(id)a3 forFrame:(id)a4 inView:(id)a5;
@end

@implementation UIWebURLAction

+ (void)performDataDetectorsDefaultActionForDOMNode:(id)a3 forFrame:(id)a4 inView:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v11 = [DataDetectorsUIGetClass(@"DDDetectionController") sharedController];
  v10 = [v11 defaultActionForDOMNode:v9 forFrame:v8];

  [v11 performAction:v10 inView:v7 interactionDelegate:0];
}

+ (BOOL)performDefaultActionForURL:(id)a3 andDOMNode:(id)a4 withAllowedTypes:(unint64_t)a5 forFrame:(id)a6 inView:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = 0;
  if (v12 && v13)
  {
    if ((a5 & 0xFFFFFFFF80000001) != 0 && [v12 isSpringboardHandledURL] && TelephonyUtilitiesLibrary() && objc_msgSend(v12, "hasTelephonyScheme"))
    {
      goto LABEL_14;
    }

    if ((a5 & 4) != 0)
    {
      v17 = [v12 scheme];
      v18 = [v17 caseInsensitiveCompare:@"x-apple-data-detectors"];

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    if ((a5 & 2) != 0 && [v12 isSpringboardHandledURL])
    {
      if (!TelephonyUtilitiesLibrary() || ([v12 isFaceTimeURL] & 1) == 0 && !objc_msgSend(v12, "isFaceTimeAudioURL"))
      {
        [UIApp _openURL:v12 originatingView:v15 completionHandler:0];
        goto LABEL_17;
      }

LABEL_14:
      [a1 performDataDetectorsDefaultActionForDOMNode:v13 forFrame:v14 inView:v15];
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