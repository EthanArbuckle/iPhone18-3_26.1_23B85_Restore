@interface SSLocalRankingResultSignalManager
+ (id)_getSpotlightRecentEngagementAttributes;
+ (id)_getSpotlightRecentEngagementAttributesNonUnique;
+ (id)updateRecentEngagementAttributes:(id)attributes queryString:(id)string renderPosition:(id)position engagementAttributes:(id)engagementAttributes unique:(BOOL)unique;
@end

@implementation SSLocalRankingResultSignalManager

+ (id)_getSpotlightRecentEngagementAttributes
{
  if (_getSpotlightRecentEngagementAttributes_onceToken != -1)
  {
    +[SSLocalRankingResultSignalManager _getSpotlightRecentEngagementAttributes];
  }

  v3 = _getSpotlightRecentEngagementAttributes_attrNames;

  return v3;
}

void __76__SSLocalRankingResultSignalManager__getSpotlightRecentEngagementAttributes__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69649B0];
  v4[0] = *MEMORY[0x1E69649C0];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E69649D0];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = _getSpotlightRecentEngagementAttributes_attrNames;
  _getSpotlightRecentEngagementAttributes_attrNames = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)_getSpotlightRecentEngagementAttributesNonUnique
{
  if (_getSpotlightRecentEngagementAttributesNonUnique_onceToken != -1)
  {
    +[SSLocalRankingResultSignalManager _getSpotlightRecentEngagementAttributesNonUnique];
  }

  v3 = _getSpotlightRecentEngagementAttributesNonUnique_attrNames;

  return v3;
}

void __85__SSLocalRankingResultSignalManager__getSpotlightRecentEngagementAttributesNonUnique__block_invoke()
{
  v4[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E69649B8];
  v4[0] = *MEMORY[0x1E69649C8];
  v4[1] = v0;
  v4[2] = *MEMORY[0x1E69649D8];
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:3];
  v2 = _getSpotlightRecentEngagementAttributesNonUnique_attrNames;
  _getSpotlightRecentEngagementAttributesNonUnique_attrNames = v1;

  v3 = *MEMORY[0x1E69E9840];
}

+ (id)updateRecentEngagementAttributes:(id)attributes queryString:(id)string renderPosition:(id)position engagementAttributes:(id)engagementAttributes unique:(BOOL)unique
{
  uniqueCopy = unique;
  v63[3] = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  stringCopy = string;
  positionCopy = position;
  engagementAttributesCopy = engagementAttributes;
  date = [MEMORY[0x1E695DF00] date];
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:10];
  v59 = attributesCopy;
  if ([attributesCopy count] == 3)
  {
    v54 = uniqueCopy;
    v56 = v14;
    v17 = [attributesCopy objectAtIndexedSubscript:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [attributesCopy objectAtIndexedSubscript:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [attributesCopy objectAtIndexedSubscript:2];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        uniqueCopy = v54;
        if ((isKindOfClass & 1) == 0)
        {
          goto LABEL_19;
        }

        v17 = [attributesCopy objectAtIndexedSubscript:0];
        v21 = [attributesCopy objectAtIndexedSubscript:1];
        v22 = [attributesCopy objectAtIndexedSubscript:2];
        v23 = [v17 count];
        v53 = v21;
        if (v23 == [v21 count])
        {
          v24 = [v17 count];
          if (v24 == [v22 count])
          {
            if ([v17 count])
            {
              v25 = 0;
              while (1)
              {
                v26 = [v17 objectAtIndexedSubscript:v25];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  break;
                }

                v27 = [v53 objectAtIndexedSubscript:v25];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  break;
                }

                [v22 objectAtIndexedSubscript:v25];
                v28 = v16;
                v30 = v29 = engagementAttributesCopy;
                objc_opt_class();
                v52 = objc_opt_isKindOfClass();

                engagementAttributesCopy = v29;
                v16 = v28;

                if (v52)
                {
                  v31 = [v17 objectAtIndexedSubscript:v25];
                  [v56 addObject:v31];

                  v32 = [v53 objectAtIndexedSubscript:v25];
                  [v15 addObject:v32];

                  v33 = [v22 objectAtIndexedSubscript:v25];
                  [v28 addObject:v33];

                  if (++v25 < [v17 count])
                  {
                    continue;
                  }
                }

                goto LABEL_16;
              }
            }
          }
        }

LABEL_16:

        v18 = v53;
      }
    }

    v14 = v56;

    uniqueCopy = v54;
  }

LABEL_19:
  if ([stringCopy length])
  {
    v57 = engagementAttributesCopy;
    v34 = [v14 count];
    v35 = v34;
    if (uniqueCopy)
    {
      v36 = 0x7FFFFFFFFFFFFFFFLL;
      if (v34)
      {
        v36 = 0;
        while (1)
        {
          v37 = [v14 objectAtIndexedSubscript:v36];
          v38 = [v37 isEqualToString:stringCopy];

          if (v38)
          {
            break;
          }

          if (v35 == ++v36)
          {
            goto LABEL_25;
          }
        }
      }
    }

    else
    {
LABEL_25:
      v36 = 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v36 == 0x7FFFFFFFFFFFFFFFLL && v35 >= 0xA)
    {
      v36 = 0;
      for (i = 1; i != v35; ++i)
      {
        v40 = [v15 objectAtIndexedSubscript:i];
        v41 = [v15 objectAtIndexedSubscript:v36];
        v42 = [v40 compare:v41];

        if (v42 == -1)
        {
          v36 = i;
        }
      }

      [v14 setObject:stringCopy atIndexedSubscript:v36];
    }

    if (v36 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v14 addObject:stringCopy];
      [v15 addObject:date];
      [v16 addObject:positionCopy];
    }

    else
    {
      [v15 setObject:date atIndexedSubscript:v36];
      [v16 setObject:positionCopy atIndexedSubscript:v36];
    }

    engagementAttributesCopy = v57;
  }

  if ([engagementAttributesCopy count] != 3)
  {
    +[SSLocalRankingResultSignalManager updateRecentEngagementAttributes:queryString:renderPosition:engagementAttributes:unique:];
  }

  v43 = [engagementAttributesCopy objectAtIndexedSubscript:0];
  v62[0] = v43;
  v44 = [v14 copy];
  v63[0] = v44;
  v45 = [engagementAttributesCopy objectAtIndexedSubscript:1];
  v62[1] = v45;
  v46 = [v15 copy];
  v63[1] = v46;
  [engagementAttributesCopy objectAtIndexedSubscript:2];
  v47 = v58 = stringCopy;
  v62[2] = v47;
  v48 = v14;
  v49 = [v16 copy];
  v63[2] = v49;
  v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:3];

  v50 = *MEMORY[0x1E69E9840];

  return v55;
}

@end