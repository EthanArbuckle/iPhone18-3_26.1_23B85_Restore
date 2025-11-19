@interface SBSystemApertureSecureElementUtilities
+ (id)_flipBookNameAndFallbacksForElement:(id)a3 configurationName:(id)a4 componentIndex:(int64_t)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 deviceMaxFPS:(int64_t)a9 artworkSubtype:(int64_t)a10 includeSubtypeFallbacks:(BOOL)a11;
+ (id)flipBookNameAndFallbacksForElement:(id)a3 configurationName:(id)a4 componentIndex:(int64_t)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 deviceMaxFPS:(int64_t)a9 artworkSubtype:(int64_t)a10;
+ (id)flipBookNameForElement:(id)a3 configurationName:(id)a4 componentIndex:(int64_t)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 deviceMaxFPS:(int64_t)a9 artworkSubtype:(int64_t)a10;
@end

@implementation SBSystemApertureSecureElementUtilities

+ (id)flipBookNameForElement:(id)a3 configurationName:(id)a4 componentIndex:(int64_t)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 deviceMaxFPS:(int64_t)a9 artworkSubtype:(int64_t)a10
{
  v21 = MEMORY[0x277CCACA8];
  v15 = a4;
  v16 = a3;
  v17 = [v16 clientIdentifier];
  v18 = [v16 elementIdentifier];

  v19 = [v21 stringWithFormat:@"%@-%@-%@-%ld-%ld-%ld-%ld-%ld-%ld", v17, v18, v15, a5, a6, a7, a8, a9, a10];

  return v19;
}

+ (id)flipBookNameAndFallbacksForElement:(id)a3 configurationName:(id)a4 componentIndex:(int64_t)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 deviceMaxFPS:(int64_t)a9 artworkSubtype:(int64_t)a10
{
  v16 = a4;
  v17 = a3;
  LOBYTE(v20) = os_variant_has_internal_content();
  v18 = [a1 _flipBookNameAndFallbacksForElement:v17 configurationName:v16 componentIndex:a5 layoutDirection:a6 orientation:a7 layoutMode:a8 deviceMaxFPS:a9 artworkSubtype:a10 includeSubtypeFallbacks:v20];

  return v18;
}

+ (id)_flipBookNameAndFallbacksForElement:(id)a3 configurationName:(id)a4 componentIndex:(int64_t)a5 layoutDirection:(int64_t)a6 orientation:(int64_t)a7 layoutMode:(int64_t)a8 deviceMaxFPS:(int64_t)a9 artworkSubtype:(int64_t)a10 includeSubtypeFallbacks:(BOOL)a11
{
  v47 = *MEMORY[0x277D85DE8];
  v17 = a3;
  v18 = a4;
  v19 = [MEMORY[0x277CBEB18] array];
  v20 = a7;
  v21 = a8;
  v22 = [a1 flipBookNameForElement:v17 configurationName:v18 componentIndex:a5 layoutDirection:a6 orientation:v20 layoutMode:a8 deviceMaxFPS:a9 artworkSubtype:a10];
  [v19 addObject:v22];

  v39 = a6;
  v23 = [a1 flipBookNameForElement:v17 configurationName:v18 componentIndex:a5 layoutDirection:a6 orientation:1 layoutMode:v21 deviceMaxFPS:a9 artworkSubtype:a10];
  [v19 addObject:v23];

  v24 = [a1 flipBookNameForElement:v17 configurationName:v18 componentIndex:a5 layoutDirection:0 orientation:a7 layoutMode:v21 deviceMaxFPS:a9 artworkSubtype:a10];
  [v19 addObject:v24];

  v37 = a1;
  v38 = a5;
  v25 = [a1 flipBookNameForElement:v17 configurationName:v18 componentIndex:a5 layoutDirection:0 orientation:1 layoutMode:v21 deviceMaxFPS:a9 artworkSubtype:a10];
  [v19 addObject:v25];

  if (a11)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:a10];
    v27 = [&unk_28336DB60 containsObject:v26];

    if ((v27 & 1) == 0)
    {
      v40 = v21;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v28 = [&unk_28336DB60 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v43;
        v31 = 2556;
        do
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v43 != v30)
            {
              objc_enumerationMutation(&unk_28336DB60);
            }

            v33 = [*(*(&v42 + 1) + 8 * i) integerValue];
            if (v33 < a10)
            {
              v31 = v33;
            }
          }

          v29 = [&unk_28336DB60 countByEnumeratingWithState:&v42 objects:v46 count:16];
        }

        while (v29);
      }

      else
      {
        v31 = 2556;
      }

      LOBYTE(v36) = 0;
      v34 = [v37 _flipBookNameAndFallbacksForElement:v17 configurationName:v18 componentIndex:v38 layoutDirection:v39 orientation:a7 layoutMode:v40 deviceMaxFPS:a9 artworkSubtype:v31 includeSubtypeFallbacks:v36];
      [v19 addObjectsFromArray:v34];
    }
  }

  return v19;
}

@end