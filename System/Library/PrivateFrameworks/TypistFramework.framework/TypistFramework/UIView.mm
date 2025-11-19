@interface UIView
@end

@implementation UIView

void __36__UIView_ViewRecursion__allSubViews__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) subviews];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(*(a1 + 40) + 8) + 40);
        v8 = [*(*(&v10 + 1) + 8 * v6) allSubViews];
        [v7 addObjectsFromArray:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __44__UIView_ViewRecursion__viewExistsOnScreen___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D75128] sharedApplication];
  v3 = [v2 connectedScenes];
  v4 = [v3 allObjects];

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v4;
  v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v30)
  {
    v29 = *v41;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v41 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v31 = v5;
      v6 = [*(*(&v40 + 1) + 8 * v5) _visibleWindows];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v37;
LABEL_8:
        v11 = 0;
        while (1)
        {
          if (*v37 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v36 + 1) + 8 * v11) allSubViews];
          v13 = *(*(a1 + 40) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;

          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v15 = *(*(*(a1 + 40) + 8) + 40);
          v16 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v33;
LABEL_13:
            v19 = 0;
            while (1)
            {
              if (*v33 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v32 + 1) + 8 * v19);
              NSClassFromString(*(a1 + 32));
              if (objc_opt_isKindOfClass())
              {
                [v20 frame];
                v48.origin.x = v21;
                v48.origin.y = v22;
                v48.size.width = v23;
                v48.size.height = v24;
                if (CGRectContainsRect(*(a1 + 56), v48))
                {
                  break;
                }
              }

              if (v17 == ++v19)
              {
                v17 = [v15 countByEnumeratingWithState:&v32 objects:v44 count:16];
                if (v17)
                {
                  goto LABEL_13;
                }

                goto LABEL_26;
              }
            }

            if ([v20 isHidden])
            {
              v25 = 0;
            }

            else
            {
              if (([v20 isEnabled] & 1) == 0)
              {
                goto LABEL_26;
              }

              v25 = 1;
            }

            *(*(*(a1 + 48) + 8) + 24) = v25;
          }

LABEL_26:

          if (*(*(*(a1 + 48) + 8) + 24))
          {
            break;
          }

          if (++v11 == v9)
          {
            v9 = [v7 countByEnumeratingWithState:&v36 objects:v45 count:16];
            if (v9)
            {
              goto LABEL_8;
            }

            break;
          }
        }
      }

      v26 = *(*(*(a1 + 48) + 8) + 24);
      if (v26)
      {
        break;
      }

      v5 = v31 + 1;
      if (v31 + 1 == v30)
      {
        v30 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end