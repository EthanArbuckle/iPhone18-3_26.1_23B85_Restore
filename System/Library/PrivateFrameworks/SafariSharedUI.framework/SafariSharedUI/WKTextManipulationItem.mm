@interface WKTextManipulationItem
@end

@implementation WKTextManipulationItem

id __79___WKTextManipulationItem_SafariSharedExtras__safari_updateTranslationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 safari_translationRangeRepresentation];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:*MEMORY[0x1E69C96D8]];

  if (v5)
  {
    v6 = [v3 metaInfo];
    v7 = [v6 mutableCopy];

    v8 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isSubframe")}];
    [v7 setObject:v8 forKeyedSubscript:@"isInSubframe"];

    v9 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "isCrossSiteSubframe")}];
    [v7 setObject:v9 forKeyedSubscript:@"isInCrossSiteSubframe"];

    [v3 setMetaInfo:v7];
  }

  return v3;
}

uint64_t __105___WKTextManipulationItem_SafariSharedExtras__safari_isEqualToManipulationItem_includingContentEquality___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [a2 safari_isEqualToManipulationToken:a3 includingContentEquality:*(a1 + 40)];
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a5 = 1;
  }

  return result;
}

id __84___WKTextManipulationItem_SafariSharedExtras___safari_descriptionPreservingPrivacy___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 32) == 1)
  {
    [a2 safari_privacyPreservingDescription];
  }

  else
  {
    [a2 safari_debugDescription];
  }
  v2 = ;

  return v2;
}

@end