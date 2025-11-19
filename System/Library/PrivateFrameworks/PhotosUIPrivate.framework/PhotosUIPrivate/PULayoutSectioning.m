@interface PULayoutSectioning
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (PUSimpleIndexPath)mainRealItemIndexPathForVisualIndexPath:(PUSimpleIndexPath)a3;
- (PUSimpleIndexPath)visualIndexPathForRealIndexPath:(PUSimpleIndexPath)a3 isMainItem:(BOOL *)a4;
- (id)_sectioningDescriptionShowInvisibleItemsInBaseSectioning:(BOOL)a3 hasIncorrectSampling:(BOOL *)a4 hasInvisibleItemsInBaseSectioning:(BOOL *)a5;
- (id)description;
- (id)sectioningHashHasIncorrectSampling:(BOOL *)a3 hasInvisibleItemsInBaseSectioning:(BOOL *)a4;
- (int64_t)numberOfVisualItemsInVisualSection:(int64_t)a3;
- (void)_baseSectioningDidInvalidateSampling:(id)a3;
- (void)_baseSectioningDidInvalidateSections:(id)a3;
- (void)dealloc;
- (void)enumerateRealMainItemIndexPathsForVisualSection:(int64_t)a3 inVisualItemRange:(_NSRange)a4 usingBlock:(id)a5;
- (void)invalidateSampling;
- (void)invalidateSections;
- (void)setBaseSectioning:(id)a3;
@end

@implementation PULayoutSectioning

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v31 = a4;
  v43[2] = *MEMORY[0x1E69E9840];
  v33 = a3;
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [(PULayoutSectioning *)self delegate];
  v6 = [v5 numberOfRealSectionsForSectioning:self];
  v7 = objc_opt_respondsToSelector();
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v6];
  v9 = 0x1E696A000uLL;
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v7 & 1) != 0 && ([v5 debugDescriptionOfRealSection:i forSectioning:self], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = v11;
        v42[1] = @"count";
        v43[0] = v11;
        v42[0] = @"name";
        v13 = [*(v9 + 3480) numberWithInteger:{objc_msgSend(v5, "numberOfItemsInRealSection:forSectioning:", i, self)}];
        v43[1] = v13;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
        [v8 addObject:v14];

        v9 = 0x1E696A000;
      }

      else
      {
        v40 = @"count";
        v12 = [*(v9 + 3480) numberWithInteger:{objc_msgSend(v5, "numberOfItemsInRealSection:forSectioning:", i, self, v31)}];
        v41 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        [v8 addObject:v13];
      }
    }
  }

  [v34 setObject:v8 forKey:{@"realSections", v31}];

  v15 = [v5 numberOfVisualSectionsForSectioning:self];
  v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v15];
  v36 = objc_opt_respondsToSelector();
  v35 = objc_opt_respondsToSelector();
  v16 = 0x1E695D000uLL;
  if (v15 >= 1)
  {
    v17 = v15;
    for (j = 0; j != v17; ++j)
    {
      v19 = [v5 realSectionsForVisualSection:j forSectioning:self];
      v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v19, "count")}];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __39__PULayoutSectioning_writeToURL_error___block_invoke;
      v38[3] = &unk_1E7B78F60;
      v21 = v20;
      v39 = v21;
      [v19 enumerateIndexesUsingBlock:v38];
      if (v36)
      {
        v22 = [v5 debugDescriptionOfVisualSection:j forSectioning:self];
      }

      else
      {
        v22 = 0;
      }

      v23 = objc_alloc_init(*(v16 + 3984));
      [v23 setObject:v21 forKey:@"realSections"];
      if (v22)
      {
        [v23 setObject:v22 forKey:@"name"];
      }

      if (v35)
      {
        v24 = [v5 maximumNumberOfItemsInVisualSection:j withNumberOfRealItems:-[PULayoutSectioning numberOfRealItemsInVisualSection:](self forSectioning:{"numberOfRealItemsInVisualSection:", j), self}];
        if (v24 >= 1)
        {
          v25 = [MEMORY[0x1E696AD98] numberWithInteger:v24];
          [v23 setObject:v25 forKey:@"max"];

          v16 = 0x1E695D000;
        }
      }

      [v37 addObject:v23];
    }
  }

  [v34 setObject:v37 forKey:@"visualSections"];

  v26 = [MEMORY[0x1E696AE40] dataWithPropertyList:v34 format:200 options:0 error:v32];
  v27 = v26;
  if (v26)
  {
    v28 = v33;
    v29 = [v26 writeToURL:v33 options:0 error:v32];
  }

  else
  {
    v29 = 0;
    v28 = v33;
  }

  return v29;
}

void __39__PULayoutSectioning_writeToURL_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v2 addObject:v3];
}

- (id)sectioningHashHasIncorrectSampling:(BOOL *)a3 hasInvisibleItemsInBaseSectioning:(BOOL *)a4
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PULayoutSectioning *)self _sectioningDescriptionShowInvisibleItemsInBaseSectioning:0 hasIncorrectSampling:a3 hasInvisibleItemsInBaseSectioning:a4];
  v6 = [v4 stringWithFormat:@"%llx", objc_msgSend(v5, "pu_platformAgnosticHash")];

  return v6;
}

- (id)_sectioningDescriptionShowInvisibleItemsInBaseSectioning:(BOOL)a3 hasIncorrectSampling:(BOOL *)a4 hasInvisibleItemsInBaseSectioning:(BOOL *)a5
{
  v8 = [(PULayoutSectioning *)self delegate];
  v25 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();
  v10 = [MEMORY[0x1E696AD60] string];
  v27 = [v8 numberOfVisualSectionsForSectioning:self];
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (v27 >= 1)
  {
    v11 = 0;
    v24 = v9 & 1;
    do
    {
      v28 = [v8 realSectionsForVisualSection:v11 forSectioning:self];
      v12 = [v28 count];
      v13 = [(PULayoutSectioning *)self numberOfVisualItemsInVisualSection:v11];
      if ((v25 & 1) != 0 && ([v8 debugDescriptionOfVisualSection:v11 forSectioning:self], (v14 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v15 = v14;
        [v10 appendFormat:@"[%@ (%lu real sections - %ld displayed items)]\n", v14, v12, v13];
      }

      else
      {
        [v10 appendFormat:@"[Visual Section #%ld (%lu real sections - %ld displayed items)]\n", v11, v12, v13];
        v15 = 0;
      }

      v41[0] = 0;
      v41[1] = v41;
      v41[2] = 0x2020000000;
      v41[3] = 0x7FFFFFFFFFFFFFFFLL;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __134__PULayoutSectioning__sectioningDescriptionShowInvisibleItemsInBaseSectioning_hasIncorrectSampling_hasInvisibleItemsInBaseSectioning___block_invoke;
      aBlock[3] = &unk_1E7B78F10;
      v35 = v41;
      v39 = v24;
      v16 = v8;
      v32 = v8;
      v33 = self;
      v17 = v10;
      v18 = v10;
      v34 = v18;
      v36 = v11;
      v37 = a4;
      v19 = a4;
      v20 = a5;
      v38 = a5;
      v40 = a3;
      v21 = _Block_copy(aBlock);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __134__PULayoutSectioning__sectioningDescriptionShowInvisibleItemsInBaseSectioning_hasIncorrectSampling_hasInvisibleItemsInBaseSectioning___block_invoke_2;
      v29[3] = &unk_1E7B78F38;
      v22 = v21;
      v30 = v22;
      [(PULayoutSectioning *)self enumerateRealMainItemIndexPathsForVisualSection:v11 inVisualItemRange:0 usingBlock:v13, v29];
      [v18 appendString:@"\n\n"];

      _Block_object_dispose(v41, 8);
      ++v11;
      a5 = v20;
      a4 = v19;
      v10 = v17;
      v8 = v16;
    }

    while (v27 != v11);
  }

  return v10;
}

uint64_t __134__PULayoutSectioning__sectioningDescriptionShowInvisibleItemsInBaseSectioning_hasIncorrectSampling_hasInvisibleItemsInBaseSectioning___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*(*(a1 + 56) + 8) + 24) != a3)
  {
    if (*(a1 + 88) == 1 && ([*(a1 + 32) debugDescriptionOfRealSection:a3 forSectioning:*(a1 + 40)], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      [*(a1 + 48) appendFormat:@"(%@)", v8];
    }

    else
    {
      [*(a1 + 48) appendFormat:@"(#%ld)", a3];
    }

    *(*(*(a1 + 56) + 8) + 24) = a3;
  }

  v23 = 0;
  v11 = 0;
  if ([*(a1 + 40) visualIndexPathForRealIndexPath:a3 isMainItem:{a4, &v23}] == *(a1 + 64) && v10 == a2)
  {
    v11 = v23;
  }

  v13 = *(a1 + 72);
  if (v13 && (v11 & 1) == 0)
  {
    *v13 = 1;
  }

  v22 = 1;
  if (*(a1 + 80) || *(a1 + 89) == 1)
  {
    v14 = *(*(a1 + 40) + 16);
    if (v14)
    {
      [v14 visualIndexPathForRealIndexPath:a3 isMainItem:{a4, &v22}];
      v15 = *(a1 + 80);
      if (v15)
      {
        if ((v22 & 1) == 0)
        {
          *v15 = 1;
        }
      }
    }
  }

  if (v11)
  {
    if (!*(a1 + 89) || v22 == 1)
    {
      return [*(a1 + 48) appendFormat:@"<%ld>", a4, v20];
    }

    v17 = *(a1 + 48);
    v19 = a4;
    v21 = [*(a1 + 40) __debugUnsampledIndexForRealIndexPath:{a3, a4}];
    v18 = @"{%ld/%ld}";
  }

  else
  {
    if (!*(a1 + 89) || v22 == 1)
    {
      return [*(a1 + 48) appendFormat:@"<*%ld*>", a4, v20];
    }

    v17 = *(a1 + 48);
    v19 = a4;
    v21 = [*(a1 + 40) __debugUnsampledIndexForRealIndexPath:{a3, a4}];
    v18 = @"{*%ld/%ld*}";
  }

  return [v17 appendFormat:v18, v19, v21];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(PULayoutSectioning *)self delegate];
  v6 = [v3 stringWithFormat:@"<%@ %p for %@>", v4, self, v5];

  return v6;
}

- (void)enumerateRealMainItemIndexPathsForVisualSection:(int64_t)a3 inVisualItemRange:(_NSRange)a4 usingBlock:(id)a5
{
  v9 = 0;
  if (a4.location < (a4.location + a4.length))
  {
    location = a4.location;
    v8 = a4.length - 1;
    do
    {
      (*(a5 + 2))(a5, location, a3, location, &v9);
      if (!v8)
      {
        break;
      }

      ++location;
      --v8;
    }

    while ((v9 & 1) == 0);
  }
}

- (PUSimpleIndexPath)visualIndexPathForRealIndexPath:(PUSimpleIndexPath)a3 isMainItem:(BOOL *)a4
{
  var1 = a3.var1;
  var0 = a3.var0;
  if (a4)
  {
    *a4 = 1;
  }

  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (PUSimpleIndexPath)mainRealItemIndexPathForVisualIndexPath:(PUSimpleIndexPath)a3
{
  var1 = a3.var1;
  var0 = a3.var0;
  result.var1 = var1;
  result.var0 = var0;
  return result;
}

- (int64_t)numberOfVisualItemsInVisualSection:(int64_t)a3
{
  v5 = [(PULayoutSectioning *)self delegate];
  v6 = [v5 numberOfItemsInRealSection:a3 forSectioning:self];

  return v6;
}

- (void)setBaseSectioning:(id)a3
{
  v5 = a3;
  baseSectioning = self->_baseSectioning;
  v11 = v5;
  if (baseSectioning != v5)
  {
    if (baseSectioning)
    {
      v7 = [MEMORY[0x1E696AD88] defaultCenter];
      [v7 removeObserver:self name:@"_PULayoutSectioningDidInvalidateSamplingNotification" object:self->_baseSectioning];

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 removeObserver:self name:@"_PULayoutSectioningDidInvalidateSectionsNotification" object:self->_baseSectioning];
    }

    objc_storeStrong(&self->_baseSectioning, a3);
    if (self->_baseSectioning)
    {
      v9 = [MEMORY[0x1E696AD88] defaultCenter];
      [v9 addObserver:self selector:sel__baseSectioningDidInvalidateSampling_ name:@"_PULayoutSectioningDidInvalidateSamplingNotification" object:self->_baseSectioning];

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 addObserver:self selector:sel__baseSectioningDidInvalidateSections_ name:@"_PULayoutSectioningDidInvalidateSectionsNotification" object:self->_baseSectioning];
    }
  }
}

- (void)invalidateSections
{
  [(PULayoutSectioning *)self invalidateSampling];
  if (!self->_invalidatingSections)
  {
    baseSectioning = self->_baseSectioning;
    if (baseSectioning)
    {
      self->_invalidatingSections = 1;
      [(PULayoutSectioning *)baseSectioning invalidateSections];
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 postNotificationName:@"_PULayoutSectioningDidInvalidateSectionsNotification" object:self];

      self->_invalidatingSections = 0;
    }
  }
}

- (void)_baseSectioningDidInvalidateSections:(id)a3
{
  if (!self->_invalidatingSections)
  {
    [(PULayoutSectioning *)self invalidateSections];
  }
}

- (void)invalidateSampling
{
  if (!self->_invalidatingSampling)
  {
    baseSectioning = self->_baseSectioning;
    if (baseSectioning)
    {
      self->_invalidatingSampling = 1;
      [(PULayoutSectioning *)baseSectioning invalidateSampling];
      v4 = [MEMORY[0x1E696AD88] defaultCenter];
      [v4 postNotificationName:@"_PULayoutSectioningDidInvalidateSamplingNotification" object:self];

      self->_invalidatingSampling = 0;
    }
  }
}

- (void)_baseSectioningDidInvalidateSampling:(id)a3
{
  if (!self->_invalidatingSampling)
  {
    [(PULayoutSectioning *)self invalidateSampling];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PULayoutSectioning;
  [(PULayoutSectioning *)&v4 dealloc];
}

@end