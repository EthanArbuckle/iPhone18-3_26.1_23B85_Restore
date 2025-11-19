@interface TUAccessibilityAnnouncer
+ (void)speak:(id)a3 style:(unint64_t)a4;
@end

@implementation TUAccessibilityAnnouncer

+ (void)speak:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v6 = v5;
      UIAccessibilitySpeakIfNotSpeaking();
    }

    else
    {
      if (a4 != 3)
      {
        goto LABEL_11;
      }

      v6 = v5;
      UIAccessibilitySpeakAndDoNotBeInterrupted();
    }
  }

  else if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_11;
    }

    v6 = v5;
    UIAccessibilitySpeakOrQueueIfNeeded();
  }

  else
  {
    v6 = v5;
    UIAccessibilitySpeak();
  }

  v5 = v6;
LABEL_11:
}

@end