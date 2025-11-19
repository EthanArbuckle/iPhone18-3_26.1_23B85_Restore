@interface PXPlacesMapInPlaceLayoutDiffer
- (void)_computeChanges;
@end

@implementation PXPlacesMapInPlaceLayoutDiffer

- (void)_computeChanges
{
  v64 = *MEMORY[0x1E69E9840];
  v3 = [(PXPlacesMapLayoutDiffer *)self targetLayoutResult];
  v4 = [v3 layoutItems];
  v5 = [v4 set];
  v42 = [v5 mutableCopy];

  v6 = [(PXPlacesMapLayoutDiffer *)self sourceLayoutResult];
  v7 = [v6 layoutItems];
  v8 = [v7 set];
  v43 = [v8 mutableCopy];

  v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:0];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v10 = [(PXPlacesMapLayoutDiffer *)self sourceLayoutResult];
  v11 = [v10 layoutItems];

  v12 = [v11 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v57;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v57 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v56 + 1) + 8 * i);
        [v16 coordinate];
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f, %f", v17, v18];
        [v9 setObject:v16 forKey:v19];
      }

      v13 = [v11 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v13);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v20 = [(PXPlacesMapLayoutDiffer *)self targetLayoutResult];
  v21 = [v20 layoutItems];

  obj = v21;
  v22 = [v21 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v53;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v53 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v52 + 1) + 8 * j);
        [v26 coordinate];
        v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%f, %f", v27, v28];
        v30 = [v9 objectForKey:v29];
        if (v30)
        {
          [(PXPlacesMapLayoutDiffer *)self _relateSourceLayoutItem:v30 withTargetLayoutItem:v26];
          [v42 removeObject:v26];
          [v43 removeObject:v30];
        }
      }

      v23 = [obj countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v23);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v31 = v42;
  v32 = [v31 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v49;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v49 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(PXPlacesMapLayoutDiffer *)self _addTargetLayoutItem:*(*(&v48 + 1) + 8 * k)];
      }

      v33 = [v31 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v33);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v36 = v43;
  v37 = [v36 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v45;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(PXPlacesMapLayoutDiffer *)self _removeSourceLayoutItem:*(*(&v44 + 1) + 8 * m)];
      }

      v38 = [v36 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v38);
  }
}

@end