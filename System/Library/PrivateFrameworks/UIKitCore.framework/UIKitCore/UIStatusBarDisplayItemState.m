@interface UIStatusBarDisplayItemState
@end

@implementation UIStatusBarDisplayItemState

void __86___UIStatusBarDisplayItemState_setupRelationsBetweenDisplayItemStates_visualProvider___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v98 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  obj = [v3 placementStates];
  v60 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v60)
  {
    v59 = *v89;
    v61 = v3;
    do
    {
      v4 = 0;
      do
      {
        if (*v89 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v62 = v4;
        v65 = *(*(&v88 + 1) + 8 * v4);
        v5 = [v65 placement];
        v6 = [MEMORY[0x1E695DFA8] set];
        v7 = [v5 excludedPlacements];
        v8 = [v7 allObjects];
        [v6 addObjectsFromArray:v8];

        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v63 = [v5 excludedRegionIdentifiers];
        v66 = [v63 countByEnumeratingWithState:&v84 objects:v96 count:16];
        if (v66)
        {
          v64 = *v85;
          do
          {
            for (i = 0; i != v66; ++i)
            {
              if (*v85 != v64)
              {
                objc_enumerationMutation(v63);
              }

              v10 = [*(a1 + 32) orderedDisplayItemPlacementsInRegionWithIdentifier:*(*(&v84 + 1) + 8 * i)];
              v80 = 0u;
              v81 = 0u;
              v82 = 0u;
              v83 = 0u;
              v11 = [v10 countByEnumeratingWithState:&v80 objects:v95 count:16];
              if (v11)
              {
                v12 = v11;
                v13 = *v81;
                do
                {
                  for (j = 0; j != v12; ++j)
                  {
                    if (*v81 != v13)
                    {
                      objc_enumerationMutation(v10);
                    }

                    v15 = *(*(&v80 + 1) + 8 * j);
                    v16 = [v5 includedPlacements];
                    v17 = [v16 containsObject:v15];

                    if ((v17 & 1) == 0)
                    {
                      [v6 addObject:v15];
                    }
                  }

                  v12 = [v10 countByEnumeratingWithState:&v80 objects:v95 count:16];
                }

                while (v12);
              }
            }

            v66 = [v63 countByEnumeratingWithState:&v84 objects:v96 count:16];
          }

          while (v66);
        }

        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v18 = v6;
        v19 = [v18 countByEnumeratingWithState:&v76 objects:v94 count:16];
        v3 = v61;
        if (v19)
        {
          v20 = v19;
          v21 = *v77;
          do
          {
            for (k = 0; k != v20; ++k)
            {
              if (*v77 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v76 + 1) + 8 * k);
              v24 = [v23 priority];
              if (v24 >= [v5 priority])
              {
                v31 = [MEMORY[0x1E696AAA8] currentHandler];
                [v31 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"_UIStatusBarDisplayItemState.m" lineNumber:296 description:{@"Item placement %@ can't exclude item placement with higher priority %@", v5, v23}];
              }

              v25 = [_UIStatusBarDisplayItemRelation exclusionWithDisplayItemState:v61 placement:v5];
              v26 = *(a1 + 40);
              v27 = [v23 identifier];
              v28 = [v26 objectForKeyedSubscript:v27];

              v29 = [v28 placementStateForPlacement:v23];
              v30 = [v29 relations];
              [v30 addObject:v25];
            }

            v20 = [v18 countByEnumeratingWithState:&v76 objects:v94 count:16];
          }

          while (v20);
        }

        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v32 = [v5 allRequiredPlacements];
        v33 = [v32 countByEnumeratingWithState:&v72 objects:v93 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v73;
          do
          {
            for (m = 0; m != v34; ++m)
            {
              if (*v73 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v72 + 1) + 8 * m);
              v38 = *(a1 + 40);
              v39 = [v37 identifier];
              v40 = [v38 objectForKeyedSubscript:v39];

              v41 = [_UIStatusBarDisplayItemRelation requirementWithDisplayItemState:v40 placement:v37];
              v42 = [v65 relations];
              [v42 addObject:v41];
            }

            v34 = [v32 countByEnumeratingWithState:&v72 objects:v93 count:16];
          }

          while (v34);
        }

        v43 = [v5 anyRequiredPlacements];
        v44 = [v43 count];

        if (v44)
        {
          v45 = [MEMORY[0x1E695DF70] array];
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v46 = [v5 anyRequiredPlacements];
          v47 = [v46 countByEnumeratingWithState:&v68 objects:v92 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v69;
            do
            {
              for (n = 0; n != v48; ++n)
              {
                if (*v69 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = *(*(&v68 + 1) + 8 * n);
                v52 = *(a1 + 40);
                v53 = [v51 identifier];
                v54 = [v52 objectForKeyedSubscript:v53];

                v55 = [_UIStatusBarDisplayItemRelation requirementWithDisplayItemState:v54 placement:v51];
                [v45 addObject:v55];
              }

              v48 = [v46 countByEnumeratingWithState:&v68 objects:v92 count:16];
            }

            while (v48);
          }

          v56 = [v65 relations];
          v57 = [_UIStatusBarDisplayItemRelation anyRelationWithRelations:v45];
          [v56 addObject:v57];

          v3 = v61;
        }

        v4 = v62 + 1;
      }

      while (v62 + 1 != v60);
      v60 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
    }

    while (v60);
  }
}

uint64_t __63___UIStatusBarDisplayItemState_updateWithData_styleAttributes___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 dataUpdateStatus];
  if (v4 != 2)
  {
    if (v4)
    {
      v6 = 0;
      goto LABEL_6;
    }

    v5 = [v3 updateWithData:*(a1 + 32) styleAttributes:*(a1 + 40)];
    [*(a1 + 48) addObjectsFromArray:v5];
  }

  v6 = 1;
LABEL_6:

  return v6;
}

void __105___UIStatusBarDisplayItemState__effectiveStyleAttributesFromStyleAttributes_data_styleAttributesChanged___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(*(a1 + 32) + 8);
    v5 = *(v4 + 40);
    v10 = v3;
    if (v5)
    {
      v6 = [v5 styleAttributesWithOverrides:v3];
      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v9 = v3;
      v8 = *(v4 + 40);
      *(v4 + 40) = v9;
    }

    v3 = v10;
  }
}

void __49___UIStatusBarDisplayItemState_prepareAnimation___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v5 = [WeakRetained animationContextId];

  if (a2 != 1 || !v5)
  {
    [*(a1 + 32) setRemovingAnimation:0];
    v8 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v8 setFloating:0];

    goto LABEL_6;
  }

  v6 = *(a1 + 40);
  [*(a1 + 32) setRemovingAnimation:0];
  v7 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v7 setFloating:0];

  if (v5 != v6)
  {
LABEL_6:
    v9 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v9 setContainerView:0];

    v10 = objc_loadWeakRetained((*(a1 + 32) + 16));
    [v10 setAlpha:1.0];

    v11 = objc_loadWeakRetained((*(a1 + 32) + 16));
    v12 = *(MEMORY[0x1E695EFD0] + 16);
    v13[0] = *MEMORY[0x1E695EFD0];
    v13[1] = v12;
    v13[2] = *(MEMORY[0x1E695EFD0] + 32);
    [v11 setTransform:v13];
  }
}

void __49___UIStatusBarDisplayItemState_prepareAnimation___block_invoke_3(uint64_t a1)
{
  v3 = [*(a1 + 32) animations];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 removeObject:WeakRetained];
}

@end