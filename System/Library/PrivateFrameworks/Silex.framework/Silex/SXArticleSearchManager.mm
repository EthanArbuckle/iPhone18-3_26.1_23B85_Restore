@interface SXArticleSearchManager
- (SXArticleSearchManager)init;
- (id)moveHighlightWithContext:(id)a3 icc:(id)a4;
- (id)searchItems:(id)a3 withContext:(id)a4 icc:(id)a5;
- (unint64_t)searchTextStorage:(id)a3 forContext:(id)a4 withOptions:(unint64_t)a5 icc:(id)a6 currentCount:(unint64_t)a7;
- (void)activateHighlightAtIndex:(unint64_t)a3 icc:(id)a4 isActive:(BOOL)a5 keyboardHeight:(unint64_t)a6;
- (void)clearSearchHighlights:(id)a3;
- (void)reloadWithItems:(id)a3 icc:(id)a4;
@end

@implementation SXArticleSearchManager

- (SXArticleSearchManager)init
{
  v8.receiver = self;
  v8.super_class = SXArticleSearchManager;
  v2 = [(SXArticleSearchManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SXHighlightController);
    highlightController = v2->_highlightController;
    v2->_highlightController = v3;

    v5 = [MEMORY[0x1E695DF70] array];
    highlights = v2->_highlights;
    v2->_highlights = v5;

    v2->_activeIndex = -1;
    v2->_isFirstOccurrence = 1;
  }

  return v2;
}

- (id)searchItems:(id)a3 withContext:(id)a4 icc:(id)a5
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SXArticleSearchManager *)self highlights];
  v12 = [v11 count];

  if (v12)
  {
    [(SXArticleSearchManager *)self clearSearchHighlights:v10];
  }

  v13 = -[SXArticleSearchManager tskSearchOptions:](self, "tskSearchOptions:", [v9 options]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = v8;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v17 += [(SXArticleSearchManager *)self searchTextStorage:*(*(&v22 + 1) + 8 * i) forContext:v9 withOptions:v13 icc:v10 currentCount:v17, v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  else
  {
    v17 = 0;
  }

  v20 = [[SXSearchResults alloc] initWithTotal:v17 index:[(SXArticleSearchManager *)self activeIndex]];

  return v20;
}

- (unint64_t)searchTextStorage:(id)a3 forContext:(id)a4 withOptions:(unint64_t)a5 icc:(id)a6 currentCount:(unint64_t)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = [(SXTangierTextRenderCollectorItem *)v11 storage];
  v15 = [(SXTangierTextRenderCollectorItem *)v11 flowInfo];
  v16 = [v13 repForInfo:v15];

  v17 = [(SXTangierTextRenderCollectorItem *)v11 flowLayoutWithICC:v13];
  v18 = [v12 searchTerm];
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3010000000;
  v47[4] = 0;
  v47[5] = 0;
  v47[3] = &unk_1D83A8029;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x3010000000;
  v45 = 0;
  v46 = 0;
  v44[3] = &unk_1D83A8029;
  v45 = [v14 range];
  v46 = v19;
  v20 = TSUProtocolCast();
  if (v20 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __84__SXArticleSearchManager_searchTextStorage_forContext_withOptions_icc_currentCount___block_invoke;
    v30[3] = &unk_1E8501150;
    v31 = v14;
    v28 = v18;
    v21 = v18;
    v22 = v17;
    v23 = a5;
    v24 = v21;
    v42 = v23;
    v32 = v21;
    v39 = v44;
    v33 = v12;
    v40 = v47;
    v34 = v16;
    v35 = v22;
    v36 = self;
    v37 = v11;
    v38 = v13;
    v41 = &v48;
    v43 = a7;
    v25 = [v20 searchForString:v24 options:v23 onHit:v30];
    [(SXArticleSearchManager *)self setActiveIndex:0];
    [(SXArticleSearchManager *)self setIsFirstOccurrence:0];
    v17 = v22;
    v18 = v28;
    if (v25)
    {
      while (([v25 isComplete] & 1) == 0)
      {
        [v20 continueSearch:v25];
      }
    }
  }

  v26 = v49[3];

  _Block_object_dispose(v44, 8);
  _Block_object_dispose(v47, 8);
  _Block_object_dispose(&v48, 8);

  return v26;
}

void __84__SXArticleSearchManager_searchTextStorage_forContext_withOptions_icc_currentCount___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) string];
  v3 = [v2 rangeOfString:*(a1 + 40) searchOptions:*(a1 + 120) updatingSearchRange:*(*(a1 + 96) + 8) + 32];
  range2 = v4;

  if (v3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([*(a1 + 48) isBeginningFilterActive])
    {
      v5 = v3 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (v5 || ([MEMORY[0x1E696AB08] whitespaceCharacterSet], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 32), "string"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "characterIsMember:", objc_msgSend(v7, "characterAtIndex:", v3 - 1)), v7, v6, (v8 & 1) != 0))
    {
      v9 = *(*(a1 + 104) + 8);
      *(v9 + 32) = v3;
      *(v9 + 40) = range2;
      *(*(*(a1 + 96) + 8) + 32) = *(*(*(a1 + 104) + 8) + 40) + *(*(*(a1 + 104) + 8) + 32);
      v10 = [*(a1 + 32) string];
      *(*(*(a1 + 96) + 8) + 40) = [v10 length] - *(*(*(a1 + 96) + 8) + 32);

      v11 = *(*(*(a1 + 96) + 8) + 32);
      v12 = [*(a1 + 32) string];
      v13 = [v12 length];

      if (v11 >= v13)
      {
        *(*(*(a1 + 96) + 8) + 40) = 0;
      }

      v39 = [*(a1 + 56) range];
      v41 = [MEMORY[0x1E695DF70] array];
      v40 = [MEMORY[0x1E695DF70] array];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      obj = [*(a1 + 64) columns];
      v37 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v37)
      {
        v36 = *v46;
        do
        {
          v14 = 0;
          do
          {
            if (*v46 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = v14;
            v43 = *(*(&v45 + 1) + 8 * v14);
            v15 = [v43 countLines];
            if (v15)
            {
              v16 = v15;
              for (i = 0; i != v16; ++i)
              {
                v52.location = [v43 rangeOfLineFragmentAtIndex:i];
                v53.location = v39 + v3;
                v53.length = range2;
                v18 = NSIntersectionRange(v52, v53);
                v19 = *(a1 + 56);
                v20 = [MEMORY[0x1E69D5728] selectionWithRange:{v18.location, v18.length}];
                [v19 rectForSelection:v20];
                v22 = v21;
                v24 = v23;
                v26 = v25;
                v28 = v27;

                v29 = [MEMORY[0x1E696B098] valueWithCGRect:{v22, v24, v26, v28}];
                [v41 addObject:v29];

                v30 = [MEMORY[0x1E696B098] valueWithRange:{v18.location, v18.length}];
                [v40 addObject:v30];

                if ([*(a1 + 72) activeIndex] == -1)
                {
                  [*(a1 + 72) setActiveIndex:0];
                }

                v31 = [*(a1 + 72) highlightController];
                LOBYTE(v34) = 0;
                [v31 applyHighlightForStorage:*(a1 + 80) withRect:v18.location inRange:v18.length icc:*(a1 + 88) isActive:*(a1 + 128) + *(*(*(a1 + 112) + 8) + 24) == objc_msgSend(*(a1 + 72) keyboardHeight:"activeIndex") isReload:{objc_msgSend(*(a1 + 48), "keyboardHeight"), v22, v24, v26, v28, v34}];
              }
            }

            ++v14;
          }

          while (v38 + 1 != v37);
          v37 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v37);
      }

      v32 = *(*(a1 + 72) + 24);
      v33 = [[SXSearchHighlight alloc] initWithRects:v41 ranges:v40 item:*(a1 + 80) index:*(a1 + 128) + *(*(*(a1 + 112) + 8) + 24)];
      [v32 addObject:v33];

      ++*(*(*(a1 + 112) + 8) + 24);
    }

    else
    {
      *(*(*(a1 + 96) + 8) + 32) = v3 + range2;
      v44 = [*(a1 + 32) string];
      *(*(*(a1 + 96) + 8) + 40) = [v44 length] - *(*(*(a1 + 96) + 8) + 32);
    }
  }
}

- (void)activateHighlightAtIndex:(unint64_t)a3 icc:(id)a4 isActive:(BOOL)a5 keyboardHeight:(unint64_t)a6
{
  v7 = a5;
  v40 = a4;
  if (!v7)
  {
    v10 = [(SXArticleSearchManager *)self highlightController];
    [v10 removeActiveLayers];
  }

  v11 = [(SXArticleSearchManager *)self highlights];
  v38 = a3;
  v12 = [v11 objectAtIndexedSubscript:a3];

  v13 = [v12 rects];
  v14 = [v13 count];

  if (v14)
  {
    v15 = 0;
    v39 = v7;
    do
    {
      [v12 rects];
      v17 = v16 = a6;
      v18 = [v17 objectAtIndexedSubscript:v15];

      [v18 CGRectValue];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v27 = [v12 ranges];
      v28 = [v27 objectAtIndexedSubscript:v15];

      v29 = [v28 rangeValue];
      v31 = v30;
      v32 = [(SXArticleSearchManager *)self highlightController];
      v33 = [v12 item];
      LOBYTE(v37) = 0;
      v34 = v29;
      a6 = v16;
      [v32 applyHighlightForStorage:v33 withRect:v34 inRange:v31 icc:v40 isActive:v39 keyboardHeight:v16 isReload:{v20, v22, v24, v26, v37}];

      ++v15;
      v35 = [v12 rects];
      v36 = [v35 count];
    }

    while (v15 < v36);
  }

  [(SXArticleSearchManager *)self setActiveIndex:v38];
}

- (id)moveHighlightWithContext:(id)a3 icc:(id)a4
{
  v6 = a3;
  v7 = a4;
  -[SXArticleSearchManager activateHighlightAtIndex:icc:isActive:keyboardHeight:](self, "activateHighlightAtIndex:icc:isActive:keyboardHeight:", [v6 index], v7, 0, objc_msgSend(v6, "keyboardHeight"));
  v8 = [v6 index];
  v9 = [v6 action];
  if (v9 == 2)
  {
    if (v8)
    {
      --v8;
    }

    else
    {
      v12 = [(SXArticleSearchManager *)self highlights];
      v8 = [v12 count] - 1;
    }
  }

  else if (v9 == 1)
  {
    v10 = [(SXArticleSearchManager *)self highlights];
    v11 = [v10 count];

    if (v8 + 1 < v11)
    {
      ++v8;
    }

    else
    {
      v8 = 0;
    }
  }

  [(SXArticleSearchManager *)self setActiveIndex:v8];
  -[SXArticleSearchManager activateHighlightAtIndex:icc:isActive:keyboardHeight:](self, "activateHighlightAtIndex:icc:isActive:keyboardHeight:", v8, v7, 1, [v6 keyboardHeight]);
  v13 = -[SXSearchResults initWithTotal:index:]([SXSearchResults alloc], "initWithTotal:index:", [v6 total], -[SXArticleSearchManager activeIndex](self, "activeIndex"));

  return v13;
}

- (void)reloadWithItems:(id)a3 icc:(id)a4
{
  v72 = *MEMORY[0x1E69E9840];
  v49 = a3;
  v54 = a4;
  v6 = [(SXArticleSearchManager *)self highlights];
  v7 = [v6 count];

  if (v7)
  {
    v8 = [(SXArticleSearchManager *)self highlightController];
    [v8 clearHighlights];

    v46 = [MEMORY[0x1E695DF70] array];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = [(SXArticleSearchManager *)self highlights];
    v50 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    if (v50)
    {
      v48 = *v66;
      v53 = self;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v66 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(*(&v65 + 1) + 8 * i);
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v10 = v49;
          v11 = [v10 countByEnumeratingWithState:&v61 objects:v70 count:16];
          if (v11)
          {
            v12 = v11;
            v51 = i;
            v13 = *v62;
LABEL_9:
            v14 = 0;
            while (1)
            {
              if (*v62 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v61 + 1) + 8 * v14);
              v16 = [(SXTangierTextRenderCollectorItem *)v15 componentIdentifier];
              v17 = [v56 item];
              v18 = [(SXTangierTextRenderCollectorItem *)v17 componentIdentifier];
              v19 = [v16 isEqualToString:v18];

              if (v19)
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [v10 countByEnumeratingWithState:&v61 objects:v70 count:16];
                if (v12)
                {
                  goto LABEL_9;
                }

                i = v51;
                goto LABEL_25;
              }
            }

            v20 = v15;

            i = v51;
            if (!v20)
            {
              continue;
            }

            v21 = v20;
            v22 = [(SXTangierTextRenderCollectorItem *)v20 flowInfo];
            v55 = [v54 repForInfo:v22];

            v23 = [MEMORY[0x1E695DF70] array];
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v52 = [v56 ranges];
            v24 = [v52 countByEnumeratingWithState:&v57 objects:v69 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v58;
              do
              {
                for (j = 0; j != v25; ++j)
                {
                  if (*v58 != v26)
                  {
                    objc_enumerationMutation(v52);
                  }

                  v28 = [*(*(&v57 + 1) + 8 * j) rangeValue];
                  v30 = v29;
                  v31 = [MEMORY[0x1E69D5728] selectionWithRange:{v28, v29}];
                  [v55 rectForSelection:v31];
                  v33 = v32;
                  v35 = v34;
                  v37 = v36;
                  v39 = v38;

                  v40 = [MEMORY[0x1E696B098] valueWithCGRect:{v33, v35, v37, v39}];
                  [v23 addObject:v40];

                  v41 = [(SXArticleSearchManager *)v53 highlightController];
                  LOBYTE(v45) = 1;
                  [v41 applyHighlightForStorage:v21 withRect:v28 inRange:v30 icc:v54 isActive:objc_msgSend(v56 keyboardHeight:"index") == -[SXArticleSearchManager activeIndex](v53 isReload:{"activeIndex"), 0, v33, v35, v37, v39, v45}];
                }

                v25 = [v52 countByEnumeratingWithState:&v57 objects:v69 count:16];
              }

              while (v25);
            }

            v42 = [SXSearchHighlight alloc];
            v43 = [v56 ranges];
            v10 = v21;
            v44 = -[SXSearchHighlight initWithRects:ranges:item:index:](v42, "initWithRects:ranges:item:index:", v23, v43, v21, [v56 index]);

            [v46 addObject:v44];
            i = v51;
            self = v53;
          }

LABEL_25:
        }

        v50 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
      }

      while (v50);
    }

    [(SXArticleSearchManager *)self setHighlights:v46];
  }
}

- (void)clearSearchHighlights:(id)a3
{
  [a3 setShowGrayOverlay:0];
  [(SXArticleSearchManager *)self setIsFirstOccurrence:1];
  v4 = [(SXArticleSearchManager *)self highlightController];
  [v4 clearHighlights];

  v5 = [(SXArticleSearchManager *)self highlights];
  [v5 removeAllObjects];

  [(SXArticleSearchManager *)self setActiveIndex:-1];
}

@end