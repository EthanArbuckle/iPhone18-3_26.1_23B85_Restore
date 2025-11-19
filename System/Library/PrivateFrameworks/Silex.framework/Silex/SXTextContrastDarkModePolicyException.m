@interface SXTextContrastDarkModePolicyException
- (SXTextContrastDarkModePolicyException)initWithComponentStyleMerger:(id)a3 componentTextStyleMerger:(id)a4;
- (id)componentStyleForComponent:(id)a3 DOM:(id)a4;
- (id)componentTextStyleForButtonComponent:(id)a3 DOM:(id)a4;
- (id)componentTextStyleForTextComponent:(id)a3 DOM:(id)a4;
- (id)mergedComponentTextStyleWithIdentifiers:(id)a3 DOM:(id)a4;
- (id)opaqueComponentStyleForComponent:(id)a3 DOM:(id)a4;
- (int64_t)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)a3 DOM:(id)a4;
- (int64_t)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)a3 DOM:(id)a4;
@end

@implementation SXTextContrastDarkModePolicyException

- (SXTextContrastDarkModePolicyException)initWithComponentStyleMerger:(id)a3 componentTextStyleMerger:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXTextContrastDarkModePolicyException;
  v9 = [(SXTextContrastDarkModePolicyException *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentStyleMerger, a3);
    objc_storeStrong(&v10->_componentTextStyleMerger, a4);
  }

  return v10;
}

- (int64_t)shouldApplyDarkModeToTextStyleBackgroundColorsForComponent:(id)a3 DOM:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 analysis];
  v9 = [v6 identifier];
  v10 = [v8 componentTextStylesForComponent:v9];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [(SXTextContrastDarkModePolicyException *)self opaqueComponentStyleForComponent:v6 DOM:v7];
    v13 = [v12 fill];

    if (v13)
    {
      v14 = 0;
    }

    else
    {
      v14 = -1;
    }
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

- (int64_t)shouldApplyDarkModeToTextStyleForegroundColorsForComponent:(id)a3 DOM:(id)a4
{
  v135 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 analysis];
  v9 = [v6 identifier];
  v10 = [v8 componentTextStylesForComponent:v9];
  v11 = [v10 count];

  if (v11)
  {
    v115 = [(SXTextContrastDarkModePolicyException *)self opaqueComponentStyleForComponent:v6 DOM:v7];
    v12 = [v115 fill];

    if (v12)
    {
      v13 = 0;
LABEL_58:

      goto LABEL_59;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = [v6 text];
      v15 = [v14 length];

      v16 = [(SXTextContrastDarkModePolicyException *)self componentTextStyleForTextComponent:v6 DOM:v7];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = -1;
        goto LABEL_58;
      }

      v17 = [v6 text];
      v15 = [v17 length];

      v16 = [(SXTextContrastDarkModePolicyException *)self componentTextStyleForButtonComponent:v6 DOM:v7];
    }

    v114 = v16;
    v18 = [MEMORY[0x1E695DF70] array];
    v19 = [v7 documentStyle];
    v20 = [v19 backgroundColor];
    [v20 relativeLuminance];
    v22 = v21;

    v23 = [v115 backgroundColor];
    [v23 relativeLuminance];
    v25 = v24;

    v124 = v18;
    if (v15)
    {
      for (i = 0; i != v15; ++i)
      {
        [v18 addObject:&unk_1F538A238];
        v27 = [v115 backgroundColor];

        v28 = v25;
        if (v27 || ([v7 documentStyle], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "backgroundColor"), v30 = objc_claimAutoreleasedReturnValue(), v30, v29, v28 = v22, v30))
        {
          v31 = [MEMORY[0x1E696AD98] numberWithDouble:v28];
          [v124 setObject:v31 atIndexedSubscript:i];
        }

        v18 = v124;
      }
    }

    v32 = [MEMORY[0x1E695DF70] array];
    v33 = [MEMORY[0x1E695DF70] array];
    v34 = [v114 textColor];
    [v34 relativeLuminance];
    v36 = v35;

    v37 = [v114 backgroundColor];
    [v37 relativeLuminance];
    v39 = v38;

    v40 = [v114 textColor];
    v41 = [v40 invertedLightness];
    [v41 relativeLuminance];
    v43 = v42;

    if (v15)
    {
      for (j = 0; j != v15; ++j)
      {
        v45 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
        [v32 setObject:v45 atIndexedSubscript:j];

        v46 = [MEMORY[0x1E696AD98] numberWithDouble:v43];
        [v33 setObject:v46 atIndexedSubscript:j];

        v47 = [v114 backgroundColor];

        if (v47)
        {
          v48 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
          [v18 setObject:v48 atIndexedSubscript:j];
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v120 = v7;
      v113 = v6;
      v49 = v6;
      v50 = [v114 linkStyle];

      v119 = v49;
      if (v50)
      {
        v51 = [v114 linkStyle];
        v52 = [v51 textColor];
        [v52 relativeLuminance];
        v54 = v53;

        v55 = [v51 textColor];
        v56 = [v55 invertedLightness];
        [v56 relativeLuminance];
        v58 = v57;

        v59 = [v51 backgroundColor];
        [v59 relativeLuminance];
        v61 = v60;

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        obj = [v49 additions];
        v62 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
        if (v62)
        {
          v63 = v62;
          v64 = *v130;
          do
          {
            for (k = 0; k != v63; ++k)
            {
              if (*v130 != v64)
              {
                objc_enumerationMutation(obj);
              }

              v66 = *(*(&v129 + 1) + 8 * k);
              for (m = [v66 range]; ; ++m)
              {
                v68 = [v66 range];
                if (m >= v68 + v69)
                {
                  break;
                }

                v70 = [v51 textColor];

                if (v70)
                {
                  v71 = [MEMORY[0x1E696AD98] numberWithDouble:v54];
                  [v32 setObject:v71 atIndexedSubscript:m];

                  v72 = [MEMORY[0x1E696AD98] numberWithDouble:v58];
                  [v33 setObject:v72 atIndexedSubscript:m];
                }

                v73 = [v51 backgroundColor];

                if (v73)
                {
                  v74 = [MEMORY[0x1E696AD98] numberWithDouble:v61];
                  [v124 setObject:v74 atIndexedSubscript:m];
                }
              }
            }

            v63 = [obj countByEnumeratingWithState:&v129 objects:v134 count:16];
          }

          while (v63);
        }

        v18 = v124;
        v49 = v119;
      }

      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v116 = [v49 inlineTextStyles];
      v121 = [v116 countByEnumeratingWithState:&v125 objects:v133 count:16];
      if (v121)
      {
        v117 = v32;
        v118 = *v126;
        do
        {
          for (n = 0; n != v121; ++n)
          {
            if (*v126 != v118)
            {
              objc_enumerationMutation(v116);
            }

            v76 = *(*(&v125 + 1) + 8 * n);
            v77 = [v120 analysis];
            v78 = [v77 namespacedObjectReferences];
            v79 = [v76 textStyle];
            v80 = [v49 identifier];
            v81 = [v78 namespacedTextStyleIdentifierForIdentifier:v79 component:v80];

            v82 = [v120 textStyles];
            obja = v81;
            v83 = [v82 objectForKey:v81];

            v84 = [v83 textColor];
            [v84 relativeLuminance];
            v86 = v85;

            v87 = [v83 textColor];
            v88 = [v87 invertedLightness];
            [v88 relativeLuminance];
            v90 = v89;

            v91 = [v83 backgroundColor];
            [v91 relativeLuminance];
            v93 = v92;

            v94 = [v76 range];
            v95 = [v76 range];
            v18 = v124;
            v32 = v117;
            if (v94 < v95 + v96)
            {
              do
              {
                v97 = [v83 textColor];

                if (v97)
                {
                  v98 = [MEMORY[0x1E696AD98] numberWithDouble:v86];
                  [v117 setObject:v98 atIndexedSubscript:v94];

                  v99 = [MEMORY[0x1E696AD98] numberWithDouble:v90];
                  [v33 setObject:v99 atIndexedSubscript:v94];
                }

                v100 = [v83 backgroundColor];

                if (v100)
                {
                  v101 = [MEMORY[0x1E696AD98] numberWithDouble:v93];
                  [v124 setObject:v101 atIndexedSubscript:v94];
                }

                ++v94;
                v102 = [v76 range];
              }

              while (v94 < v102 + v103);
            }

            v49 = v119;
          }

          v121 = [v116 countByEnumeratingWithState:&v125 objects:v133 count:16];
        }

        while (v121);
      }

      v6 = v113;
      v7 = v120;
    }

    v104 = [v32 valueForKeyPath:@"@avg.self"];
    [v104 floatValue];

    v105 = [v33 valueForKeyPath:@"@avg.self"];
    [v105 floatValue];
    v107 = v106;

    v108 = [v18 valueForKeyPath:@"@avg.self"];
    [v108 floatValue];
    v110 = v109;

    v111 = (v110 + 0.05) / (v107 + 0.05);
    if (v111 < 1.0)
    {
      v111 = 1.0 / v111;
    }

    if (v111 < 4.5)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    goto LABEL_58;
  }

  v13 = -1;
LABEL_59:

  return v13;
}

- (id)opaqueComponentStyleForComponent:(id)a3 DOM:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(SXTextContrastDarkModePolicyException *)self componentStyleForComponent:v7 DOM:v8];
  v10 = [v9 backgroundColor];
  if (v10)
  {
  }

  else
  {
    v11 = [v9 fill];

    if (!v11)
    {
      v12 = [v8 analysis];
      v13 = [v7 identifier];
      v14 = [v12 containerPathForComponentWithIdentifier:v13];
      v15 = [v14 mutableCopy];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      obj = [v15 reverseObjectEnumerator];
      v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v29)
      {
        v25 = v9;
        v26 = v7;
        v28 = *v31;
        while (2)
        {
          for (i = 0; i != v29; ++i)
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v30 + 1) + 8 * i);
            [v15 removeObject:v17];
            v18 = [v8 components];
            v19 = [v18 componentsForContainerComponentWithPath:v15];

            v20 = [v19 componentForIdentifier:v17];
            v9 = [(SXTextContrastDarkModePolicyException *)self componentStyleForComponent:v20 DOM:v8];
            v21 = [v9 backgroundColor];
            if (v21)
            {
              v4 = [v9 backgroundColor];
              [v4 alphaComponent];
              if (v22 > 0.0)
              {

LABEL_18:
                goto LABEL_19;
              }
            }

            v23 = [v9 fill];

            if (v21)
            {
            }

            if (v23)
            {
              goto LABEL_18;
            }
          }

          v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v29)
          {
            continue;
          }

          break;
        }

        v9 = v25;
LABEL_19:
        v7 = v26;
      }
    }
  }

  return v9;
}

- (id)componentStyleForComponent:(id)a3 DOM:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695DF70];
  v9 = [v6 classification];
  v10 = [v9 defaultComponentStyleIdentifiers];
  v11 = [v8 arrayWithArray:v10];

  v12 = [v6 style];

  if (v12)
  {
    v13 = [v6 style];
    [v11 addObject:v13];
  }

  v14 = [v7 analysis];
  v15 = [v14 namespacedObjectReferences];
  v16 = [v6 identifier];
  v17 = [v15 namespacedComponentStyleIdentifiersForIdentifiers:v11 component:v16];

  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [v7 componentStyles];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [v19 objectForKey:{*(*(&v28 + 1) + 8 * i), v28}];
        if (v25)
        {
          [v18 addObject:v25];
        }
      }

      v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  if ([v18 count])
  {
    v26 = [(SXJSONObjectMerger *)self->_componentStyleMerger mergeObjects:v18];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)componentTextStyleForTextComponent:(id)a3 DOM:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF70];
  v8 = a4;
  v9 = [v6 classification];
  v10 = [v9 defaultTextStyleIdentifiers];
  v11 = [v7 arrayWithArray:v10];

  v12 = [v6 textStyle];

  if (v12)
  {
    v13 = [v6 textStyle];
    [v11 addObject:v13];
  }

  v14 = [v8 analysis];
  v15 = [v14 namespacedObjectReferences];
  v16 = [v6 identifier];
  v17 = [v15 namespacedComponentTextStyleIdentifiersForIdentifiers:v11 component:v16];

  v18 = [(SXTextContrastDarkModePolicyException *)self mergedComponentTextStyleWithIdentifiers:v17 DOM:v8];

  return v18;
}

- (id)componentTextStyleForButtonComponent:(id)a3 DOM:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695DF70];
  v8 = a4;
  v9 = [v6 classification];
  v10 = [v9 defaultTextStyleIdentifiers];
  v11 = [v7 arrayWithArray:v10];

  v12 = [v6 textStyle];

  if (v12)
  {
    v13 = [v6 textStyle];
    [v11 addObject:v13];
  }

  v14 = [v8 analysis];
  v15 = [v14 namespacedObjectReferences];
  v16 = [v6 identifier];
  v17 = [v15 namespacedComponentTextStyleIdentifiersForIdentifiers:v11 component:v16];

  v18 = [(SXTextContrastDarkModePolicyException *)self mergedComponentTextStyleWithIdentifiers:v17 DOM:v8];

  return v18;
}

- (id)mergedComponentTextStyleWithIdentifiers:(id)a3 DOM:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = [v7 componentTextStyles];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v9 objectForKey:{*(*(&v18 + 1) + 8 * i), v18}];
        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  if ([v8 count])
  {
    v16 = [(SXJSONObjectMerger *)self->_componentTextStyleMerger mergeObjects:v8];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end