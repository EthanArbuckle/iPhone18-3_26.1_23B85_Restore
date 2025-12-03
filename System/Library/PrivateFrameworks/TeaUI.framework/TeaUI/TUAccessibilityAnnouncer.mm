@interface TUAccessibilityAnnouncer
+ (void)speak:(id)speak style:(unint64_t)style;
@end

@implementation TUAccessibilityAnnouncer

+ (void)speak:(id)speak style:(unint64_t)style
{
  speakCopy = speak;
  if (style > 1)
  {
    if (style == 2)
    {
      v6 = speakCopy;
      UIAccessibilitySpeakIfNotSpeaking();
    }

    else
    {
      if (style != 3)
      {
        goto LABEL_11;
      }

      v6 = speakCopy;
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }
  }

  else if (style)
  {
    if (style != 1)
    {
      goto LABEL_11;
    }

    v6 = speakCopy;
    UIAccessibilitySpeakOrQueueIfNeeded();
  }

  else
  {
    v6 = speakCopy;
    UIAccessibilitySpeak();
  }

  speakCopy = v6;
LABEL_11:
}

@end