@interface UIFeedbackGeneratorConfiguration
@end

@implementation UIFeedbackGeneratorConfiguration

uint64_t __66___UIFeedbackGeneratorConfiguration__updateFeedbackForOutputMode___block_invoke(void *a1, uint64_t a2)
{
  v4 = *(*(a1[4] + 8) + 40);
  if (a2 == 1)
  {
    result = [v4 audioOutputMode];
    if (result)
    {
      goto LABEL_3;
    }

LABEL_7:
    v7 = 0;
    goto LABEL_8;
  }

  result = [v4 hapticOutputMode];
  if (!result)
  {
    goto LABEL_7;
  }

LABEL_3:
  v6 = a1[6];
  if (v6)
  {
    v7 = v6 | result;
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  if (v7 != result)
  {
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v8 = [*(*(a1[4] + 8) + 40) copy];
      v9 = *(a1[4] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      *(*(a1[5] + 8) + 24) = 0;
    }

    v11 = *(*(a1[4] + 8) + 40);
    if (a2 == 1)
    {

      return [v11 setAudioOutputMode:v7];
    }

    else
    {

      return [v11 setHapticOutputMode:v7];
    }
  }

  return result;
}

@end