@interface SBSystemApertureSecureElementUtilities
+ (id)_flipBookNameAndFallbacksForElement:(id)element configurationName:(id)name componentIndex:(int64_t)index layoutDirection:(int64_t)direction orientation:(int64_t)orientation layoutMode:(int64_t)mode deviceMaxFPS:(int64_t)s artworkSubtype:(int64_t)self0 includeSubtypeFallbacks:(BOOL)self1;
+ (id)flipBookNameAndFallbacksForElement:(id)element configurationName:(id)name componentIndex:(int64_t)index layoutDirection:(int64_t)direction orientation:(int64_t)orientation layoutMode:(int64_t)mode deviceMaxFPS:(int64_t)s artworkSubtype:(int64_t)self0;
+ (id)flipBookNameForElement:(id)element configurationName:(id)name componentIndex:(int64_t)index layoutDirection:(int64_t)direction orientation:(int64_t)orientation layoutMode:(int64_t)mode deviceMaxFPS:(int64_t)s artworkSubtype:(int64_t)self0;
@end

@implementation SBSystemApertureSecureElementUtilities

+ (id)flipBookNameForElement:(id)element configurationName:(id)name componentIndex:(int64_t)index layoutDirection:(int64_t)direction orientation:(int64_t)orientation layoutMode:(int64_t)mode deviceMaxFPS:(int64_t)s artworkSubtype:(int64_t)self0
{
  v21 = MEMORY[0x277CCACA8];
  nameCopy = name;
  elementCopy = element;
  clientIdentifier = [elementCopy clientIdentifier];
  elementIdentifier = [elementCopy elementIdentifier];

  subtype = [v21 stringWithFormat:@"%@-%@-%@-%ld-%ld-%ld-%ld-%ld-%ld", clientIdentifier, elementIdentifier, nameCopy, index, direction, orientation, mode, s, subtype];

  return subtype;
}

+ (id)flipBookNameAndFallbacksForElement:(id)element configurationName:(id)name componentIndex:(int64_t)index layoutDirection:(int64_t)direction orientation:(int64_t)orientation layoutMode:(int64_t)mode deviceMaxFPS:(int64_t)s artworkSubtype:(int64_t)self0
{
  nameCopy = name;
  elementCopy = element;
  LOBYTE(v20) = os_variant_has_internal_content();
  v18 = [self _flipBookNameAndFallbacksForElement:elementCopy configurationName:nameCopy componentIndex:index layoutDirection:direction orientation:orientation layoutMode:mode deviceMaxFPS:s artworkSubtype:subtype includeSubtypeFallbacks:v20];

  return v18;
}

+ (id)_flipBookNameAndFallbacksForElement:(id)element configurationName:(id)name componentIndex:(int64_t)index layoutDirection:(int64_t)direction orientation:(int64_t)orientation layoutMode:(int64_t)mode deviceMaxFPS:(int64_t)s artworkSubtype:(int64_t)self0 includeSubtypeFallbacks:(BOOL)self1
{
  v47 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  nameCopy = name;
  array = [MEMORY[0x277CBEB18] array];
  orientationCopy = orientation;
  modeCopy = mode;
  v22 = [self flipBookNameForElement:elementCopy configurationName:nameCopy componentIndex:index layoutDirection:direction orientation:orientationCopy layoutMode:mode deviceMaxFPS:s artworkSubtype:subtype];
  [array addObject:v22];

  directionCopy = direction;
  v23 = [self flipBookNameForElement:elementCopy configurationName:nameCopy componentIndex:index layoutDirection:direction orientation:1 layoutMode:modeCopy deviceMaxFPS:s artworkSubtype:subtype];
  [array addObject:v23];

  v24 = [self flipBookNameForElement:elementCopy configurationName:nameCopy componentIndex:index layoutDirection:0 orientation:orientation layoutMode:modeCopy deviceMaxFPS:s artworkSubtype:subtype];
  [array addObject:v24];

  selfCopy = self;
  indexCopy = index;
  v25 = [self flipBookNameForElement:elementCopy configurationName:nameCopy componentIndex:index layoutDirection:0 orientation:1 layoutMode:modeCopy deviceMaxFPS:s artworkSubtype:subtype];
  [array addObject:v25];

  if (fallbacks)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithInteger:subtype];
    v27 = [&unk_28336DB60 containsObject:v26];

    if ((v27 & 1) == 0)
    {
      v40 = modeCopy;
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

            integerValue = [*(*(&v42 + 1) + 8 * i) integerValue];
            if (integerValue < subtype)
            {
              v31 = integerValue;
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
      v34 = [selfCopy _flipBookNameAndFallbacksForElement:elementCopy configurationName:nameCopy componentIndex:indexCopy layoutDirection:directionCopy orientation:orientation layoutMode:v40 deviceMaxFPS:s artworkSubtype:v31 includeSubtypeFallbacks:v36];
      [array addObjectsFromArray:v34];
    }
  }

  return array;
}

@end