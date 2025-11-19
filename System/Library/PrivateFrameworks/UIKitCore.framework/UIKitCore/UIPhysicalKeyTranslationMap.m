@interface UIPhysicalKeyTranslationMap
@end

@implementation UIPhysicalKeyTranslationMap

void __78___UIPhysicalKeyTranslationMap_populateAllCombinationsOfModifiers_translator___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) translationMap];
  v5 = NSMapGet(v4, (a2 + 1));

  if (!v5)
  {
    v6 = [*(a1 + 40) translationForHIDUsageCode:objc_msgSend(*(a1 + 32) modifiers:{"keyCode"), a2}];
    if (v6)
    {
      v7 = v6;
      [*(a1 + 32) setKeyTranslation:v6 modifiers:a2];
      v6 = v7;
    }
  }
}

void __124___UIPhysicalKeyTranslationMap_areModifiers_minimalExcessOfMask_matching_translator_matchedModifierSubset_betterMatchFound___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) keyTranslationWithModifiers:a2 translator:*(a1 + 40)];
  v7 = [v6 isEqualToString:*(a1 + 48)];

  if (v7)
  {
    v8.i32[0] = *(a1 + 72) | a2;
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.i32[0] >= *(a1 + 88))
    {
      *(*(*(a1 + 64) + 8) + 24) = a2;
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
      *a3 = 1;
      v10 = *(a1 + 80);
      if (v10)
      {
        *v10 = 1;
      }
    }
  }
}

@end