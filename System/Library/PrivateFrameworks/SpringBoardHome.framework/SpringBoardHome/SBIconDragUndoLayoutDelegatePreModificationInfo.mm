@interface SBIconDragUndoLayoutDelegatePreModificationInfo
- (SBIconDragUndoLayoutDelegatePreModificationInfo)initWithRootFolderController:(id)a3;
@end

@implementation SBIconDragUndoLayoutDelegatePreModificationInfo

- (SBIconDragUndoLayoutDelegatePreModificationInfo)initWithRootFolderController:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v47.receiver = self;
  v47.super_class = SBIconDragUndoLayoutDelegatePreModificationInfo;
  v6 = [(SBIconDragUndoLayoutDelegatePreModificationInfo *)&v47 init];
  v7 = v6;
  if (v6)
  {
    v30 = a3;
    v31 = v6;
    v32 = v5;
    v8 = [v5 visibleIconListViews];
    v35 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v8;
    v36 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v36)
    {
      v34 = *v44;
      do
      {
        v10 = 0;
        do
        {
          if (*v44 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v37 = v10;
          v11 = *(*(&v43 + 1) + 8 * v10);
          v12 = [v11 icons];
          [(NSMapTable *)v35 setObject:v12 forKey:v11];
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v40;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v40 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v39 + 1) + 8 * i);
                v19 = [v11 displayedIconViewForIcon:v18];
                v20 = v19;
                if (v19)
                {
                  [v19 center];
                  [v11 convertPoint:0 toView:?];
                  v38[0] = v21;
                  v38[1] = v22;
                  v23 = [MEMORY[0x1E696B098] valueWithBytes:v38 objCType:"{CGPoint=dd}"];
                  [(NSMapTable *)v9 setObject:v23 forKey:v18];
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v15);
          }

          v10 = v37 + 1;
        }

        while (v37 + 1 != v36);
        v36 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v36);
    }

    v7 = v31;
    objc_storeStrong(&v31->_rootFolderController, v30);
    v24 = [obj copy];
    visibleListViews = v31->_visibleListViews;
    v31->_visibleListViews = v24;

    originalIconsPerListView = v31->_originalIconsPerListView;
    v31->_originalIconsPerListView = v35;
    v27 = v35;

    originalScreenLocationsPerIcon = v31->_originalScreenLocationsPerIcon;
    v31->_originalScreenLocationsPerIcon = v9;

    v5 = v32;
  }

  return v7;
}

@end