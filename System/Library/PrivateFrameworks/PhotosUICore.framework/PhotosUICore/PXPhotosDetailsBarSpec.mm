@interface PXPhotosDetailsBarSpec
- (BOOL)_shouldIncludeItem:(id)item;
- (PXPhotosDetailsBarSpec)initWithExtendedTraitCollection:(id)collection;
- (id)_placementForBarItem:(id)item;
- (id)_sortPriorityForBarItem:(id)item placement:(id)placement;
- (id)sortedBarItemsByPlacement:(id)placement;
@end

@implementation PXPhotosDetailsBarSpec

- (id)sortedBarItemsByPlacement:(id)placement
{
  v49 = *MEMORY[0x1E69E9840];
  placementCopy = placement;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(placementCopy, "count")}];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v6 = placementCopy;
  v7 = [v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v43;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v43 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v42 + 1) + 8 * i);
        if ([(PXPhotosDetailsBarSpec *)self _shouldIncludeItem:v11])
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v8);
  }

  v32 = v6;

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v38 + 1) + 8 * j);
        v19 = [(PXPhotosDetailsBarSpec *)self _placementForBarItem:v18];
        array = [v12 objectForKeyedSubscript:v19];
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
          [v12 setObject:array forKeyedSubscript:v19];
        }

        [array addObject:v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v15);
  }

  v31 = v13;

  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v12;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * k);
        v28 = [v22 objectForKeyedSubscript:{v27, v31, v32}];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __52__PXPhotosDetailsBarSpec_sortedBarItemsByPlacement___block_invoke;
        v33[3] = &unk_1E772E978;
        v33[4] = self;
        v33[5] = v27;
        v29 = [v28 sortedArrayUsingComparator:v33];
        [v21 setObject:v29 forKeyedSubscript:v27];
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v46 count:16];
    }

    while (v24);
  }

  return v21;
}

uint64_t __52__PXPhotosDetailsBarSpec_sortedBarItemsByPlacement___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v5 _sortPriorityForBarItem:a2 placement:v6];
  v9 = [*(a1 + 32) _sortPriorityForBarItem:v7 placement:*(a1 + 40)];

  v10 = [v8 compare:v9];
  return v10;
}

- (BOOL)_shouldIncludeItem:(id)item
{
  includedBarItemIdentifiers = self->_includedBarItemIdentifiers;
  identifier = [item identifier];
  LOBYTE(includedBarItemIdentifiers) = [(NSSet *)includedBarItemIdentifiers containsObject:identifier];

  return includedBarItemIdentifiers;
}

- (id)_placementForBarItem:(id)item
{
  identifier = [item identifier];
  if ([identifier isEqualToString:*off_1E7721F08])
  {
    if (self->_shouldPlaceEditActionsInToolbar)
    {
      if (MEMORY[0x1A590D320]())
      {
        v5 = 5;
      }

      else
      {
        v5 = 6;
      }

      goto LABEL_17;
    }

LABEL_16:
    v5 = 2;
    goto LABEL_17;
  }

  if ([identifier isEqualToString:*off_1E7721F00])
  {
    if (self->_shouldPlaceEditActionsInToolbar)
    {
      v5 = 6;
    }

    else
    {
      v5 = 2;
    }
  }

  else
  {
    if (([identifier isEqualToString:*off_1E7721F50] & 1) == 0 && !objc_msgSend(identifier, "isEqualToString:", *off_1E7721E10))
    {
      if ([identifier isEqualToString:*off_1E7721E78] & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", *off_1E7721E08) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", *off_1E7721EE8) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", *off_1E7721E28) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", *off_1E7721E00) & 1) != 0 || (objc_msgSend(identifier, "isEqualToString:", *off_1E7721E68))
      {
        v5 = 4;
      }

      else if ([identifier isEqualToString:*off_1E7721E60])
      {
        v5 = ([(PXPhotosDetailsBarSpec *)self detailsOptions]>> 9) & 2;
      }

      else if ([identifier isEqualToString:*off_1E7721E90])
      {
        v5 = 6;
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_17;
    }

    if (!self->_shouldPlaceEditActionsInToolbar)
    {
      goto LABEL_16;
    }

    if (MEMORY[0x1A590D320]())
    {
      v5 = 7;
    }

    else
    {
      v5 = 6;
    }
  }

LABEL_17:
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v5];

  return v6;
}

- (id)_sortPriorityForBarItem:(id)item placement:(id)placement
{
  placementCopy = placement;
  identifier = [item identifier];
  v8 = [(NSDictionary *)self->_sortPriorityByBarItemIdentifierByPlacement objectForKeyedSubscript:placementCopy];

  v9 = [v8 objectForKeyedSubscript:identifier];
  if (!v9)
  {
    v10 = [(NSDictionary *)self->_sortPriorityByBarItemIdentifierByPlacement objectForKeyedSubscript:&unk_1F1909BE0];
    v11 = [v10 objectForKeyedSubscript:identifier];
    v12 = v11;
    v13 = &unk_1F1909C40;
    if (v11)
    {
      v13 = v11;
    }

    v9 = v13;
  }

  return v9;
}

- (PXPhotosDetailsBarSpec)initWithExtendedTraitCollection:(id)collection
{
  v46 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v33.receiver = self;
  v33.super_class = PXPhotosDetailsBarSpec;
  v5 = [(PXBarSpec *)&v33 initWithExtendedTraitCollection:collectionCopy];
  if (v5)
  {
    v6 = *off_1E7721EE8;
    v37[0] = *off_1E7721E00;
    v37[1] = v6;
    v8 = *off_1E7721E78;
    v38 = *off_1E7721F08;
    v7 = v38;
    v39 = v8;
    v9 = *off_1E7721E10;
    v40 = *off_1E7721E08;
    v41 = v9;
    v11 = *off_1E7721E68;
    v42 = *off_1E7721F50;
    v10 = v42;
    v43 = v11;
    v12 = *off_1E7721E28;
    v44 = *off_1E7721E60;
    v45 = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:10];
    v14 = *off_1E7721EF8;
    v36[0] = v7;
    v36[1] = v14;
    v15 = *off_1E7721E90;
    v36[2] = v10;
    v36[3] = v15;
    v36[4] = *off_1E7721F00;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:5];
    v34[0] = &unk_1F1909BE0;
    v34[1] = &unk_1F1909BF8;
    v35[0] = v13;
    v35[1] = v16;
    v34[2] = &unk_1F1909C10;
    v34[3] = &unk_1F1909C28;
    v35[2] = v16;
    v35[3] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:4];
    v18 = [MEMORY[0x1E695DFA8] set];
    allKeys = [v17 allKeys];
    v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(allKeys, "count")}];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58__PXPhotosDetailsBarSpec_initWithExtendedTraitCollection___block_invoke;
    v29[3] = &unk_1E774BF90;
    v30 = v17;
    v21 = v18;
    v31 = v21;
    v22 = v20;
    v32 = v22;
    v23 = v17;
    [allKeys enumerateObjectsUsingBlock:v29];
    sortPriorityByBarItemIdentifierByPlacement = v5->_sortPriorityByBarItemIdentifierByPlacement;
    v5->_sortPriorityByBarItemIdentifierByPlacement = v22;
    v25 = v22;

    includedBarItemIdentifiers = v5->_includedBarItemIdentifiers;
    v5->_includedBarItemIdentifiers = v21;
    v27 = v21;

    v5->_shouldPlaceEditActionsInToolbar = [collectionCopy layoutSizeClass] == 1;
  }

  return v5;
}

void __58__PXPhotosDetailsBarSpec_initWithExtendedTraitCollection___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __58__PXPhotosDetailsBarSpec_initWithExtendedTraitCollection___block_invoke_2;
  v11 = &unk_1E77382F8;
  v12 = v6;
  v13 = *(a1 + 40);
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v8];
  [*(a1 + 48) setObject:v7 forKeyedSubscript:{v4, v8, v9, v10, v11}];
}

void __58__PXPhotosDetailsBarSpec_initWithExtendedTraitCollection___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AD98];
  v7 = a2;
  v6 = [v5 numberWithUnsignedInteger:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];

  [*(a1 + 40) addObject:v7];
}

@end