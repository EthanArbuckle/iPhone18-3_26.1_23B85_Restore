@interface SSLegacySectionBuilder
+ (id)compactCardSectionForResult:(id)result;
+ (id)supportedBundleIds;
- (id)buildSection;
@end

@implementation SSLegacySectionBuilder

+ (id)supportedBundleIds
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"com.apple.spotlight.related_search";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)compactCardSectionForResult:(id)result
{
  compactCard = [result compactCard];
  cardSections = [compactCard cardSections];
  firstObject = [cardSections firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = firstObject;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)buildSection
{
  selfCopy = self;
  v76 = *MEMORY[0x1E69E9840];
  section = [(SSSectionBuilder *)self section];
  mutableDeepCopy = [section mutableDeepCopy];

  section2 = [(SSSectionBuilder *)selfCopy section];
  results = [section2 results];
  v7 = [results copy];
  [mutableDeepCopy setResults:v7];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  isTopHitSection = [(SSSectionBuilder *)selfCopy isTopHitSection];
  v57 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  results2 = [mutableDeepCopy results];
  v56 = v8;
  v60 = [results2 countByEnumeratingWithState:&v69 objects:v75 count:16];
  if (v60)
  {
    v59 = *v70;
    v54 = selfCopy;
    v55 = mutableDeepCopy;
    v53 = v9;
    v52 = isTopHitSection;
    v51 = results2;
    do
    {
      v12 = 0;
      do
      {
        if (*v70 != v59)
        {
          objc_enumerationMutation(results2);
        }

        v13 = *(*(&v69 + 1) + 8 * v12);
        inlineCard = [v13 inlineCard];
        if (inlineCard)
        {
          v15 = inlineCard;
          v16 = v12;
          buildResult = v13;
        }

        else
        {
          compactCard = [v13 compactCard];

          if (compactCard)
          {
            goto LABEL_10;
          }

          v16 = v12;
          v15 = [SSResultBuilder resultBuilderWithResult:v13];
          queryContext = [(SSSectionBuilder *)selfCopy queryContext];
          [v15 setQueryContext:queryContext];

          [v15 setIsTopHit:isTopHitSection];
          buildResult = [v15 buildResult];

          if ([v15 supportsClearingBackendData])
          {
            [buildResult clearBackendData];
          }

          if (buildResult)
          {
            [v57 addObject:buildResult];
          }
        }

        v13 = buildResult;
        v12 = v16;
LABEL_10:
        results3 = [mutableDeepCopy results];
        if (([results3 count] == 1) & isTopHitSection) != 1 || (objc_msgSend(v13, "usesCompactDisplay"))
        {
LABEL_31:
        }

        else
        {
          shouldUseCompactDisplay = [v13 shouldUseCompactDisplay];

          if ((shouldUseCompactDisplay & 1) == 0)
          {
            v58 = v12;
            inlineCard2 = [v13 inlineCard];
            cardSections = [inlineCard2 cardSections];

            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            results3 = cardSections;
            v23 = [results3 countByEnumeratingWithState:&v65 objects:v74 count:16];
            v24 = 0x1E69C9000uLL;
            if (!v23)
            {
              goto LABEL_30;
            }

            v25 = v23;
            v26 = *v66;
            while (1)
            {
              for (i = 0; i != v25; ++i)
              {
                if (*v66 != v26)
                {
                  objc_enumerationMutation(results3);
                }

                v28 = *(*(&v65 + 1) + 8 * i);
                backgroundColor = [v28 backgroundColor];
                if (!backgroundColor)
                {
                  contentType = [v13 contentType];
                  v31 = [contentType isEqualToString:@"com.apple.application-bundle"];

                  if (v31)
                  {
                    continue;
                  }

                  v32 = *(v24 + 3712);
                  backgroundColor = objc_opt_new();
                  relatedAppIdentifier = [v13 relatedAppIdentifier];
                  if (relatedAppIdentifier)
                  {
                    [backgroundColor setApplicationBundleIdentifier:relatedAppIdentifier];
                  }

                  else
                  {
                    applicationBundleIdentifier = [v13 applicationBundleIdentifier];
                    if (applicationBundleIdentifier)
                    {
                      [backgroundColor setApplicationBundleIdentifier:applicationBundleIdentifier];
                    }

                    else
                    {
                      sectionBundleIdentifier = [v13 sectionBundleIdentifier];
                      [backgroundColor setApplicationBundleIdentifier:sectionBundleIdentifier];
                    }

                    v24 = 0x1E69C9000;
                  }

                  [v28 setBackgroundColor:backgroundColor];
                }
              }

              v25 = [results3 countByEnumeratingWithState:&v65 objects:v74 count:16];
              if (!v25)
              {
LABEL_30:

                selfCopy = v54;
                mutableDeepCopy = v55;
                v8 = v56;
                v9 = v53;
                isTopHitSection = v52;
                results2 = v51;
                v12 = v58;
                goto LABEL_31;
              }
            }
          }
        }

        if (v13)
        {
          [v9 addObject:v13];
        }

        v36 = [objc_opt_class() compactCardSectionForResult:v13];
        v37 = v36;
        if (v36)
        {
          [v36 setSpotlightBackingResult:v13];
          [v8 addObject:v37];
        }

        ++v12;
      }

      while (v12 != v60);
      v39 = [results2 countByEnumeratingWithState:&v69 objects:v75 count:16];
      v60 = v39;
    }

    while (v39);
  }

  [objc_opt_class() disambiguateUIIfNecessary:v8];
  v40 = objc_opt_new();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v41 = v9;
  v42 = [v41 countByEnumeratingWithState:&v61 objects:v73 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v62;
    do
    {
      for (j = 0; j != v43; ++j)
      {
        if (*v62 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v61 + 1) + 8 * j);
        if ([v57 containsObject:v46])
        {
          v47 = [objc_alloc(objc_opt_class()) initWithResult:v46];

          v46 = v47;
        }

        [v40 addObject:v46];
      }

      v43 = [v41 countByEnumeratingWithState:&v61 objects:v73 count:16];
    }

    while (v43);
  }

  [mutableDeepCopy setResults:v40];
  buildButtonItem = [(SSSectionBuilder *)selfCopy buildButtonItem];
  [mutableDeepCopy setButton:buildButtonItem];

  v49 = *MEMORY[0x1E69E9840];

  return mutableDeepCopy;
}

@end