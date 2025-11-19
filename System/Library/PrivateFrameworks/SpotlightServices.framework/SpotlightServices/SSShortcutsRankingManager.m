@interface SSShortcutsRankingManager
+ (id)moveShortcutsToRelatedAppSectionsForAllSections:(id)a3 isAsYouTypeTopHitSearch:(BOOL)a4 sectionBuilderBlock:(id)a5;
@end

@implementation SSShortcutsRankingManager

+ (id)moveShortcutsToRelatedAppSectionsForAllSections:(id)a3 isAsYouTypeTopHitSearch:(BOOL)a4 sectionBuilderBlock:(id)a5
{
  v116 = a4;
  v157 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v118 = a5;
  v7 = [v6 mutableCopy];
  v8 = objc_opt_new();
  v113 = v6;
  if (![v6 count])
  {
    goto LABEL_38;
  }

  v9 = 0;
  v10 = @"com.apple.shortcuts";
  v11 = -1;
  do
  {
    v12 = [v6 objectAtIndexedSubscript:v9];
    v13 = [v12 bundleIdentifier];
    [v8 setObject:v12 forKeyedSubscript:v13];

    v14 = [v12 bundleIdentifier];
    v15 = [v14 isEqualToString:@"com.apple.shortcuts"];

    if (v15)
    {
      v11 = v9;
    }

    ++v9;
  }

  while (v9 < [v6 count]);
  if (v11 == -1)
  {
LABEL_38:
    SSShortcutsAppSectionEnabled();
    v16 = 0;
  }

  else
  {
    v16 = [v6 objectAtIndexedSubscript:v11];
    if (SSShortcutsAppSectionEnabled() && v16)
    {
      v129 = v8;
      v109 = v7;
      v123 = objc_opt_new();
      v125 = objc_opt_new();
      v17 = [v16 results];
      v133 = [v17 mutableCopy];

      v152 = 0u;
      v153 = 0u;
      v150 = 0u;
      v151 = 0u;
      v111 = v16;
      v18 = [v16 results];
      v19 = [v18 countByEnumeratingWithState:&v150 objects:v156 count:16];
      if (!v19)
      {
        goto LABEL_42;
      }

      v20 = v19;
      v21 = *v151;
      v121 = v18;
      v138 = 1;
      v131 = *v151;
LABEL_11:
      v22 = 0;
      v134 = v20;
LABEL_12:
      if (*v151 != v21)
      {
        objc_enumerationMutation(v18);
      }

      v23 = *(*(&v150 + 1) + 8 * v22);
      v24 = [v23 relatedAppIdentifier];
      if (![v24 length] || (objc_msgSend(v24, "isEqualToString:", v10) & 1) != 0)
      {
        v138 = 0;
        goto LABEL_35;
      }

      v25 = [v129 objectForKey:v24];
      v140 = [v6 indexOfObject:v25];
      if (v25)
      {
        v136 = v25;
        v26 = [v25 results];
        v27 = [v26 mutableCopy];

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
          v31 = [v30 resultBundleId];
          v32 = [v31 isEqualToString:v29];

          if (v32)
          {
            v33 = [v23 rankingItem];
            [v33 likelihood];
            v35 = v34;
            v36 = [v30 rankingItem];
            [v36 likelihood];
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
            v6 = v113;
            v10 = v29;
            v18 = v121;
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
              v20 = [v18 countByEnumeratingWithState:&v150 objects:v156 count:16];
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

      v39 = v118[2](v118, v24);
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
        [v129 setObject:v27 forKey:v24];
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
    v47 = [v45 results];
    v48 = [v47 firstObject];
    v49 = [v48 sectionBundleIdentifier];
    v50 = v46;
    v51 = [v49 isEqualToString:@"com.apple.application"];

    if (v51)
    {
      v52 = [v50 results];
      v53 = [v52 firstObject];
      v119 = [v53 resultBundleId];
    }

    else
    {
      v119 = 0;
    }

    v6 = v113;
    v46 = v50;
  }

  else
  {
    v119 = 0;
  }

  if (SSShortcutsAppSectionEnabled())
  {
    v54 = v119;
    if ([v119 length])
    {
      v55 = [v8 objectForKey:v119];
    }

    else
    {
      v55 = 0;
    }
  }

  else
  {
    v55 = v112;
    v54 = v119;
  }

  v56 = isIpad();
  v57 = 3;
  if (v56)
  {
    v57 = 5;
  }

  v122 = v57;
  if (v116 && SSAppTopHitWithShortcutsEnabled() && [v46 resultsCount] == 1 && objc_msgSend(v54, "length") && v55 && !+[SSTopHitAppWithEntitiesSectionBuilder supportsAppTopHitWithoutIndexFor:](SSTopHitAppWithEntitiesSectionBuilder, "supportsAppTopHitWithoutIndexFor:", v54))
  {
    v130 = v8;
    v110 = v7;
    v58 = [v55 results];
    v135 = [v58 mutableCopy];

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
        v66 = [v65 resultBundleId];
        if (![v66 isEqualToString:@"com.apple.shortcuts"])
        {
          goto LABEL_114;
        }

        v67 = [v65 relatedAppIdentifier];
        v68 = v65;
        v69 = [v67 isEqualToString:v54];

        if (!v69)
        {
          v63 = v124;
          v61 = v126;
          goto LABEL_115;
        }

        v70 = [v68 valueForAttribute:v117 withType:objc_opt_class()];
        v71 = [v70 BOOLValue];

        v72 = [v68 valueForAttribute:v115 withType:objc_opt_class()];
        v73 = [v72 isEqualToString:v114];

        v137 = v68;
        v74 = [v68 displayOrder];
        v75 = v74;
        v76 = &unk_1F55B4440;
        if (v74)
        {
          v76 = v74;
        }

        v66 = v76;

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
              v84 = [v78 title];
              v85 = [v84 text];
              v86 = [v80 title];
              [v86 text];
              v87 = v64;
              v88 = v66;
              v90 = v89 = v62;
              v91 = [v85 localizedCompare:v90];

              v62 = v89;
              v66 = v88;
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
              v81 = [v66 unsignedIntValue];
              v82 = [v80 displayOrder];
              v83 = [v82 unsignedIntValue];

              if (v81 < v83)
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
          v54 = v119;
          if ([v59 count] > v122)
          {
            [v59 removeObjectsInRange:{v122, objc_msgSend(v59, "count") - v122}];
          }

          v94 = [v59 count];
          if (v62 >= v94 - 1)
          {
            v62 = v94 - 1;
          }

          v95 = [v59 lastObject];
          v96 = [v95 displayOrder];
          v97 = v96;
          v98 = &unk_1F55B4440;
          if (v96)
          {
            v98 = v96;
          }

          v99 = v98;

          v120 = v99;
          goto LABEL_113;
        }

        if ([v59 count] >= v122)
        {
          v93 = [v66 unsignedIntValue];
          if (((v93 < [v120 unsignedIntValue]) & v71) != 0)
          {
            goto LABEL_83;
          }
        }

        else if ((v71 | v73))
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

        v6 = v113;
        v46 = v108;
        break;
      }
    }
  }

  v105 = *MEMORY[0x1E69E9840];

  return v7;
}

@end