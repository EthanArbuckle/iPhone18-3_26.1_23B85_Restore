@interface SSShortcutsRankingManager
+ (id)moveShortcutsToRelatedAppSectionsForAllSections:(id)sections isAsYouTypeTopHitSearch:(BOOL)search sectionBuilderBlock:(id)block;
@end

@implementation SSShortcutsRankingManager

+ (id)moveShortcutsToRelatedAppSectionsForAllSections:(id)sections isAsYouTypeTopHitSearch:(BOOL)search sectionBuilderBlock:(id)block
{
  searchCopy = search;
  v157 = *MEMORY[0x1E69E9840];
  sectionsCopy = sections;
  blockCopy = block;
  v7 = [sectionsCopy mutableCopy];
  v8 = objc_opt_new();
  v113 = sectionsCopy;
  if (![sectionsCopy count])
  {
    goto LABEL_38;
  }

  v9 = 0;
  v10 = @"com.apple.shortcuts";
  v11 = -1;
  do
  {
    v12 = [sectionsCopy objectAtIndexedSubscript:v9];
    bundleIdentifier = [v12 bundleIdentifier];
    [v8 setObject:v12 forKeyedSubscript:bundleIdentifier];

    bundleIdentifier2 = [v12 bundleIdentifier];
    v15 = [bundleIdentifier2 isEqualToString:@"com.apple.shortcuts"];

    if (v15)
    {
      v11 = v9;
    }

    ++v9;
  }

  while (v9 < [sectionsCopy count]);
  if (v11 == -1)
  {
LABEL_38:
    SSShortcutsAppSectionEnabled();
    v16 = 0;
  }

  else
  {
    v16 = [sectionsCopy objectAtIndexedSubscript:v11];
    if (SSShortcutsAppSectionEnabled() && v16)
    {
      v129 = v8;
      v109 = v7;
      v123 = objc_opt_new();
      v125 = objc_opt_new();
      results = [v16 results];
      v133 = [results mutableCopy];

      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v111 = v16;
      results2 = [v16 results];
      v19 = [results2 countByEnumeratingWithState:&v150 objects:v156 count:16];
      if (!v19)
      {
        goto LABEL_42;
      }

      v20 = v19;
      v21 = *v151;
      v121 = results2;
      v138 = 1;
      v131 = *v151;
LABEL_11:
      v22 = 0;
      v134 = v20;
LABEL_12:
      if (*v151 != v21)
      {
        objc_enumerationMutation(results2);
      }

      v23 = *(*(&v150 + 1) + 8 * v22);
      relatedAppIdentifier = [v23 relatedAppIdentifier];
      if (![relatedAppIdentifier length] || (objc_msgSend(relatedAppIdentifier, "isEqualToString:", v10) & 1) != 0)
      {
        v138 = 0;
        goto LABEL_35;
      }

      v25 = [v129 objectForKey:relatedAppIdentifier];
      v140 = [sectionsCopy indexOfObject:v25];
      if (v25)
      {
        v136 = v25;
        results3 = [v25 results];
        v27 = [results3 mutableCopy];

        v28 = [v27 count];
        if (![v27 count])
        {
          goto LABEL_33;
        }

        obj = v28;
        v29 = v10;
        v28 = 0;
        while (1)
        {
          v30 = [v27 objectAtIndexedSubscript:v28];
          resultBundleId = [v30 resultBundleId];
          v32 = [resultBundleId isEqualToString:v29];

          if (v32)
          {
            rankingItem = [v23 rankingItem];
            [rankingItem likelihood];
            v35 = v34;
            rankingItem2 = [v30 rankingItem];
            [rankingItem2 likelihood];
            v38 = v37;

            if (v35 > v38)
            {
              goto LABEL_31;
            }
          }

          else if (v11 < v140)
          {
LABEL_31:

LABEL_32:
            sectionsCopy = v113;
            v10 = v29;
            results2 = v121;
LABEL_33:
            [v27 insertObject:v23 atIndex:v28];
            v25 = v136;
            [v136 setResults:v27];
            v21 = v131;
LABEL_34:

            [v133 removeObject:v23];
            v20 = v134;
LABEL_35:

            if (++v22 == v20)
            {
              v20 = [results2 countByEnumeratingWithState:&v150 objects:v156 count:16];
              if (!v20)
              {
                goto LABEL_42;
              }

              goto LABEL_11;
            }

            goto LABEL_12;
          }

          if (++v28 >= [v27 count])
          {
            v28 = obj;
            goto LABEL_32;
          }
        }
      }

      v39 = blockCopy[2](blockCopy, relatedAppIdentifier);
      if (v39)
      {
        v27 = v39;
        [v39 addResults:v23];
        if (v138)
        {
          v40 = v123;
        }

        else
        {
          v40 = v125;
        }

        [v40 addObject:v27];
        [v129 setObject:v27 forKey:relatedAppIdentifier];
        goto LABEL_34;
      }

      v41 = SSGeneralLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [SSShortcutsRankingManager moveShortcutsToRelatedAppSectionsForAllSections:v41 isAsYouTypeTopHitSearch:? sectionBuilderBlock:?];
      }

LABEL_42:
      [v111 setResults:v133];
      v7 = v109;
      if (v11 > [v109 count])
      {
        v11 = [v109 count];
        v42 = SSGeneralLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [SSShortcutsRankingManager moveShortcutsToRelatedAppSectionsForAllSections:v42 isAsYouTypeTopHitSearch:? sectionBuilderBlock:?];
        }
      }

      v8 = v129;
      if ([v125 count])
      {
        v43 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11 + 1, objc_msgSend(v125, "count")}];
        [v109 insertObjects:v125 atIndexes:v43];
      }

      if ([v123 count])
      {
        v44 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, objc_msgSend(v123, "count")}];
        [v109 insertObjects:v123 atIndexes:v44];
      }

      v16 = v111;
    }
  }

  if ([v16 resultsCount])
  {
    v112 = v16;
  }

  else
  {
    [v7 removeObject:v16];
    [v8 removeObjectForKey:@"com.apple.shortcuts"];

    v112 = 0;
  }

  v45 = [v8 objectForKey:@"com.apple.spotlight.tophits"];
  v46 = v45;
  if (v45)
  {
    results4 = [v45 results];
    firstObject = [results4 firstObject];
    sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
    v50 = v46;
    v51 = [sectionBundleIdentifier isEqualToString:@"com.apple.application"];

    if (v51)
    {
      results5 = [v50 results];
      firstObject2 = [results5 firstObject];
      resultBundleId2 = [firstObject2 resultBundleId];
    }

    else
    {
      resultBundleId2 = 0;
    }

    sectionsCopy = v113;
    v46 = v50;
  }

  else
  {
    resultBundleId2 = 0;
  }

  if (SSShortcutsAppSectionEnabled())
  {
    v54 = resultBundleId2;
    if ([resultBundleId2 length])
    {
      v55 = [v8 objectForKey:resultBundleId2];
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v55 = v112;
    v54 = resultBundleId2;
  }

  v56 = isIpad();
  v57 = 3;
  if (v56)
  {
    v57 = 5;
  }

  v122 = v57;
  if (searchCopy && SSAppTopHitWithShortcutsEnabled() && [v46 resultsCount] == 1 && objc_msgSend(v54, "length") && v55 && !+[SSTopHitAppWithEntitiesSectionBuilder supportsAppTopHitWithoutIndexFor:](SSTopHitAppWithEntitiesSectionBuilder, "supportsAppTopHitWithoutIndexFor:", v54))
  {
    v130 = v8;
    v110 = v7;
    results6 = [v55 results];
    v135 = [results6 mutableCopy];

    v59 = objc_opt_new();
    v146 = 0u;
    v147 = 0u;
    v148 = 0u;
    v149 = 0u;
    obja = [v55 results];
    v60 = [obja countByEnumeratingWithState:&v146 objects:v155 count:16];
    v107 = v55;
    v108 = v46;
    if (!v60)
    {
      v120 = &unk_1F55B4440;
      goto LABEL_119;
    }

    v61 = v60;
    v62 = 0;
    v63 = *v147;
    v117 = *MEMORY[0x1E6964AB0];
    v115 = *MEMORY[0x1E6963F88];
    v114 = *MEMORY[0x1E69E0FC0];
    v120 = &unk_1F55B4440;
    v124 = *v147;
    v132 = v59;
    while (1)
    {
      v64 = 0;
      v126 = v61;
      do
      {
        if (*v147 != v63)
        {
          objc_enumerationMutation(obja);
        }

        v65 = *(*(&v146 + 1) + 8 * v64);
        resultBundleId3 = [v65 resultBundleId];
        if (![resultBundleId3 isEqualToString:@"com.apple.shortcuts"])
        {
          goto LABEL_114;
        }

        relatedAppIdentifier2 = [v65 relatedAppIdentifier];
        v68 = v65;
        v69 = [relatedAppIdentifier2 isEqualToString:v54];

        if (!v69)
        {
          v63 = v124;
          v61 = v126;
          goto LABEL_115;
        }

        v70 = [v68 valueForAttribute:v117 withType:objc_opt_class()];
        bOOLValue = [v70 BOOLValue];

        v72 = [v68 valueForAttribute:v115 withType:objc_opt_class()];
        v73 = [v72 isEqualToString:v114];

        v137 = v68;
        displayOrder = [v68 displayOrder];
        v75 = displayOrder;
        v76 = &unk_1F55B4440;
        if (displayOrder)
        {
          v76 = displayOrder;
        }

        resultBundleId3 = v76;

        v141 = v73;
        if (v73)
        {
LABEL_83:
          [v59 count];
          v77 = 0;
          v139 = v62 + 1;
          v78 = v68;
          while (v77 != [v59 count])
          {
            if (v139 == v77)
            {
              v79 = v141;
            }

            else
            {
              v79 = 0;
            }

            if (v79 == 1)
            {
              v62 = v139;
              [v59 insertObject:v78 atIndex:v139];
              goto LABEL_106;
            }

            v80 = [v59 objectAtIndexedSubscript:v77];
            if (v77 <= v62)
            {
              title = [v78 title];
              text = [title text];
              title2 = [v80 title];
              [title2 text];
              v87 = v64;
              v88 = resultBundleId3;
              v90 = v89 = v62;
              v91 = [text localizedCompare:v90];

              v62 = v89;
              resultBundleId3 = v88;
              v64 = v87;
              v78 = v137;

              v92 = v91 == -1;
              v59 = v132;
              if (v92)
              {
LABEL_105:
                [v59 insertObject:v78 atIndex:v77];

                goto LABEL_106;
              }
            }

            else
            {
              unsignedIntValue = [resultBundleId3 unsignedIntValue];
              displayOrder2 = [v80 displayOrder];
              unsignedIntValue2 = [displayOrder2 unsignedIntValue];

              if (unsignedIntValue < unsignedIntValue2)
              {
                goto LABEL_105;
              }
            }

            if (++v77 > [v59 count])
            {
              goto LABEL_106;
            }
          }

          [v59 addObject:v78];
          if (v141)
          {
            v62 = v77;
          }

LABEL_106:
          v54 = resultBundleId2;
          if ([v59 count] > v122)
          {
            [v59 removeObjectsInRange:{v122, objc_msgSend(v59, "count") - v122}];
          }

          v94 = [v59 count];
          if (v62 >= v94 - 1)
          {
            v62 = v94 - 1;
          }

          lastObject = [v59 lastObject];
          displayOrder3 = [lastObject displayOrder];
          v97 = displayOrder3;
          v98 = &unk_1F55B4440;
          if (displayOrder3)
          {
            v98 = displayOrder3;
          }

          v99 = v98;

          v120 = v99;
          goto LABEL_113;
        }

        if ([v59 count] >= v122)
        {
          unsignedIntValue3 = [resultBundleId3 unsignedIntValue];
          if (((unsignedIntValue3 < [v120 unsignedIntValue]) & bOOLValue) != 0)
          {
            goto LABEL_83;
          }
        }

        else if ((bOOLValue | v73))
        {
          goto LABEL_83;
        }

LABEL_113:
        v63 = v124;
        v61 = v126;
LABEL_114:

LABEL_115:
        ++v64;
      }

      while (v64 != v61);
      v61 = [obja countByEnumeratingWithState:&v146 objects:v155 count:16];
      if (!v61)
      {
LABEL_119:

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v100 = v59;
        v101 = [v100 countByEnumeratingWithState:&v142 objects:v154 count:16];
        v7 = v110;
        v8 = v130;
        if (v101)
        {
          v102 = v101;
          v103 = *v143;
          do
          {
            for (i = 0; i != v102; ++i)
            {
              if (*v143 != v103)
              {
                objc_enumerationMutation(v100);
              }

              [v135 removeObject:{*(*(&v142 + 1) + 8 * i), v107}];
            }

            v102 = [v100 countByEnumeratingWithState:&v142 objects:v154 count:16];
          }

          while (v102);
        }

        v55 = v107;
        [v107 setResults:v135];

        sectionsCopy = v113;
        v46 = v108;
        break;
      }
    }
  }

  v105 = *MEMORY[0x1E69E9840];

  return v7;
}

@end