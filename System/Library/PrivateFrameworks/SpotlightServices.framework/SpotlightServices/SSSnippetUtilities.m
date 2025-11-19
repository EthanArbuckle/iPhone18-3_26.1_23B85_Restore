@interface SSSnippetUtilities
+ (void)createFormattedSnippetForResult:(id)a3 withContext:(id)a4;
@end

@implementation SSSnippetUtilities

+ (void)createFormattedSnippetForResult:(id)a3 withContext:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      if ([v6 isSearchToolClient])
      {
        v8 = [v5 rankingItem];
        v9 = SSCompactRankingAttrsGetValue([v8 attributes], 6uLL);

        if ([v9 length])
        {
          v10 = [[TPFTextPieceFinder alloc] initWithFullText:v9 maxLength:60 maxNumCandidates:100];
          if (!v10)
          {
            v23 = SSGeneralLog();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
            }

            goto LABEL_49;
          }

          v48 = v9;
          v11 = v7;
          v12 = [MEMORY[0x1E695DF70] array];
          v13 = [v11 rawSearchTermsFromLLMQU];
          v14 = [v13 allObjects];

          [v12 addObjectsFromArray:v14];
          v15 = [v11 personTokensFromLLMQU];
          v16 = [v15 allObjects];

          [v12 addObjectsFromArray:v16];
          v50 = v10;
          v49 = v7;
          if (collectTokens_onceToken != -1)
          {
            +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v17 = collectTokens_locationAnnotationsToCheck;
          v18 = [v17 countByEnumeratingWithState:&v55 objects:v60 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v56;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v56 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = [v11 valueForKey:*(*(&v55 + 1) + 8 * i)];
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [v22 length])
                {
                  [v12 addObject:v22];
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v55 objects:v60 count:16];
            }

            while (v19);
          }

          v23 = [v12 copy];
          v10 = v50;
          v24 = [(TPFTextPieceFinder *)v50 createPiecesWithTargets:v23];
          if ([v24 count])
          {
            if ([v23 count])
            {
              v25 = [[SSSnippetHighlightTool alloc] initWithTerms:v23];
              v26 = [v24 firstObject];
              v27 = [(SSSnippetHighlightTool *)v25 makeHighlightedSnippet:v26];
            }

            else
            {
              v27 = 0;
            }
          }

          else
          {
            v27 = 0;
          }

          if ([v27 count])
          {
            v46 = v24;
            v47 = v23;
            v28 = SSGeneralLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
            }

            v29 = objc_opt_new();
            [v5 setFormattedSnippet:v29];

            v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v27, "count")}];
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v45 = v27;
            v31 = v27;
            v32 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
            if (v32)
            {
              v33 = v32;
              v34 = *v52;
              do
              {
                for (j = 0; j != v33; ++j)
                {
                  if (*v52 != v34)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v36 = *(*(&v51 + 1) + 8 * j);
                  v37 = objc_opt_new();
                  v38 = [v36 string];
                  [v37 setText:v38];

                  [v37 setIsEmphasized:{+[SSSnippetHighlightTool isSegmentHighlighted:](SSSnippetHighlightTool, "isSegmentHighlighted:", v36)}];
                  [v30 addObject:v37];
                }

                v33 = [v31 countByEnumeratingWithState:&v51 objects:v59 count:16];
              }

              while (v33);
            }

            v39 = [v5 formattedSnippet];
            [v39 setFormattedTextPieces:v30];

            v9 = v48;
            v7 = v49;
            v10 = v50;
            v24 = v46;
            v23 = v47;
            v27 = v45;
            goto LABEL_48;
          }

          v40 = [v24 count];
          v30 = SSGeneralLog();
          v41 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
          v7 = v49;
          if (v40)
          {
            if (v41)
            {
              +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
            }

            v42 = MEMORY[0x1E69CA3A0];
            v30 = [v24 firstObject];
            v43 = [v42 textWithString:v30];
            [v5 setFormattedSnippet:v43];
          }

          else if (v41)
          {
            v9 = v48;
            [(SSSnippetUtilities *)v11 createFormattedSnippetForResult:v48 withContext:v30];
            goto LABEL_48;
          }

          v9 = v48;
LABEL_48:

LABEL_49:
        }
      }

      else
      {
        v9 = SSGeneralLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
        }
      }
    }

    else
    {
      v9 = SSGeneralLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
      }
    }
  }

  else
  {
    v9 = SSGeneralLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[SSSnippetUtilities createFormattedSnippetForResult:withContext:];
    }
  }

  v44 = *MEMORY[0x1E69E9840];
}

@end