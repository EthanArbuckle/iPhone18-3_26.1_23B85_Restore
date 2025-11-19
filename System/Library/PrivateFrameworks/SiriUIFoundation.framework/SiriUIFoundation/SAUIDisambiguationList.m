@interface SAUIDisambiguationList
@end

@implementation SAUIDisambiguationList

void __80__SAUIDisambiguationList_SiriUIFoundationAdditions__sruif_combinedSpeakableText__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 speakableText];
  v10 = [v5 _speakableStringFromString:v6 usingParser:*(a1 + 40)];

  if ([v10 length])
  {
    v7 = *(*(a1 + 64) + 8);
    if (*(v7 + 24) == 1)
    {
      *(v7 + 24) = 0;
    }

    else
    {
      v8 = v10;
      if (*(a1 + 72) - 1 == a3)
      {
        v9 = [*(a1 + 32) _speakableFinalDelimiterForSpeakableString:v10 usingParser:*(a1 + 40)];
        if (v9)
        {
          [*(a1 + 48) appendString:v9];
        }
      }

      else
      {
        if (!*(a1 + 56))
        {
LABEL_11:
          [*(a1 + 48) appendString:v8];
          goto LABEL_12;
        }

        [*(a1 + 48) appendString:?];
      }
    }

    v8 = v10;
    goto LABEL_11;
  }

LABEL_12:
}

@end