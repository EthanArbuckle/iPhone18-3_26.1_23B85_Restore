@interface PXMemoriesFeedDataSource
- (NSString)diagnosticDescription;
- (PXMemoriesFeedDataSource)initWithEntries:(id)a3;
- (PXSimpleIndexPath)_firstSectionIndexPath;
- (PXSimpleIndexPath)indexPathForFirstPastMemorySection;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3 withHintIndexPath:(id)a4;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3;
- (id)sectionedObjectReferenceForMemoryUUID:(id)a3;
- (int64_t)numberOfItemsInSection:(int64_t)a3;
- (void)_enumerateItemIndexPathsWithHintIndexPath:(PXSimpleIndexPath *)a3 usingBlock:(id)a4;
- (void)_enumerateSectionIndexPathsStartingAtIndexPath:(PXSimpleIndexPath *)a3 reverseDirection:(BOOL)a4 usingBlock:(id)a5;
- (void)_enumerateSectionIndexPathsWithHintIndexPath:(PXSimpleIndexPath *)a3 usingBlock:(id)a4;
- (void)setIndexPathForFirstPastMemorySection:(PXSimpleIndexPath *)a3;
@end

@implementation PXMemoriesFeedDataSource

- (void)setIndexPathForFirstPastMemorySection:(PXSimpleIndexPath *)a3
{
  v3 = *&a3->item;
  *&self->_indexPathForFirstPastMemorySection.dataSourceIdentifier = *&a3->dataSourceIdentifier;
  *&self->_indexPathForFirstPastMemorySection.item = v3;
}

- (NSString)diagnosticDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(PXMemoriesFeedDataSource *)self description];
  [v3 appendFormat:@"<%@\n", v4];

  entries = self->_entries;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PXMemoriesFeedDataSource_diagnosticDescription__block_invoke_2;
  v9[3] = &unk_1E772C878;
  v10 = v3;
  v11 = &__block_literal_global_223;
  v6 = v3;
  [(NSArray *)entries enumerateObjectsUsingBlock:v9];
  [v6 appendString:@">"];
  v7 = [v6 copy];

  return v7;
}

void __49__PXMemoriesFeedDataSource_diagnosticDescription__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  [v5 appendFormat:@"\tSection %lu:\n", a3];
  v7 = [v6 memories];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PXMemoriesFeedDataSource_diagnosticDescription__block_invoke_3;
  v8[3] = &unk_1E772C850;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  [v7 enumerateObjectsUsingBlock:v8];
}

void __49__PXMemoriesFeedDataSource_diagnosticDescription__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  v12 = [v7 localizedTitle];
  v8 = (*(v6 + 16))(v6, v12);
  v9 = *(a1 + 40);
  v10 = [v7 localizedDateText];

  v11 = (*(v9 + 16))(v9, v10);
  [v5 appendFormat:@"\t\t%lu: %@ %@\n", a3, v8, v11];
}

- (PXSimpleIndexPath)indexPathForFirstPastMemorySection
{
  p_item = &self[3].item;
  if (self[3].item == *off_1E7721F68)
  {
    v6 = self;
    v20 = 0;
    v21 = &v20;
    v22 = 0x4010000000;
    v23 = &unk_1A561E057;
    v7 = *(off_1E7722228 + 1);
    v24 = *off_1E7722228;
    v25 = v7;
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [MEMORY[0x1E695DEE8] currentCalendar];
    [(PXSimpleIndexPath *)v6 _firstSectionIndexPath];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __62__PXMemoriesFeedDataSource_indexPathForFirstPastMemorySection__block_invoke;
    v14[3] = &unk_1E772E540;
    v14[4] = v6;
    v18 = a3;
    v10 = v9;
    v15 = v10;
    v11 = v8;
    v16 = v11;
    v17 = &v20;
    [(PXSimpleIndexPath *)v6 _enumerateSectionIndexPathsWithHintIndexPath:v19 usingBlock:v14];
    v12 = *(v21 + 3);
    *p_item = *(v21 + 2);
    *(p_item + 1) = v12;

    _Block_object_dispose(&v20, 8);
  }

  v13 = *(p_item + 1);
  *&retstr->dataSourceIdentifier = *p_item;
  *&retstr->item = v13;
  return self;
}

void __62__PXMemoriesFeedDataSource_indexPathForFirstPastMemorySection__block_invoke(void *a1, _OWORD *a2, _BYTE *a3)
{
  v6 = a1[4];
  v7 = a2[1];
  v15[0] = *a2;
  v15[1] = v7;
  v8 = [v6 objectAtIndexPath:v15];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a1[8] object:a1[4] file:@"PXMemoriesFeedDataSource.m" lineNumber:252 description:{@"Invalid parameter not satisfying: %@", @"[entry isKindOfClass:[PXMemoryEntryInfo class]]"}];
  }

  v9 = a1[5];
  v10 = [v8 representativeDate];
  v11 = [v9 compareDate:v10 toDate:a1[6] toUnitGranularity:16];

  if (v11 == -1)
  {
    v12 = *(a1[7] + 8);
    v13 = a2[1];
    *(v12 + 32) = *a2;
    *(v12 + 48) = v13;
    *a3 = 1;
  }
}

- (id)sectionedObjectReferenceForMemoryUUID:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__235;
  v19 = __Block_byref_object_dispose__236;
  v20 = 0;
  v5 = [(PXMemoriesFeedDataSource *)self identifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__PXMemoriesFeedDataSource_sectionedObjectReferenceForMemoryUUID___block_invoke;
  v12[3] = &unk_1E7739BB0;
  v12[4] = self;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  v9 = v5;
  v10 = xmmword_1A5380D10;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  [(PXMemoriesFeedDataSource *)self _enumerateSectionIndexPathsStartingAtIndexPath:&v9 reverseDirection:0 usingBlock:v12];
  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __66__PXMemoriesFeedDataSource_sectionedObjectReferenceForMemoryUUID___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) numberOfItemsInSection:*(a2 + 8)];
  if (v5 >= 1)
  {
    v6 = v5;
    for (i = 0; i != v6; ++i)
    {
      v8 = [*(a1 + 32) identifier];
      v9 = *(a2 + 8);
      v10 = *(a1 + 32);
      v18[0] = v8;
      v18[1] = v9;
      v18[2] = i;
      v18[3] = 0x7FFFFFFFFFFFFFFFLL;
      v11 = [v10 objectReferenceAtIndexPath:v18];
      v12 = [v11 itemObject];
      v13 = [v12 assetCollection];
      v14 = MEMORY[0x1E6978958];
      v15 = [v13 localIdentifier];
      v16 = [v14 uuidFromLocalIdentifier:v15];

      if ([v16 isEqualToString:*(a1 + 40)])
      {
        *a3 = 1;
        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v11);
      }
    }
  }
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3
{
  v4 = *(off_1E7722228 + 1);
  v6[0] = *off_1E7722228;
  v6[1] = v4;
  return [(PXMemoriesFeedDataSource *)self indexPathForObjectReference:a4 withHintIndexPath:v6];
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)a3 withHintIndexPath:(id)a4
{
  v9 = a4;
  v11 = *off_1E7721F68;
  if (a5->dataSourceIdentifier != *off_1E7721F68)
  {
    dataSourceIdentifier = a5->dataSourceIdentifier;
    if (dataSourceIdentifier != [(PXMemoriesFeedDataSource *)self identifier])
    {
      v33 = [MEMORY[0x1E696AAA8] currentHandler];
      [v33 handleFailureInMethod:a3 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsNull(hintIndexPath) || (hintIndexPath.dataSourceIdentifier == [self identifier])"}];
    }
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x4010000000;
  v49 = &unk_1A561E057;
  v50 = 0u;
  v51 = 0u;
  if (v9)
  {
    [v9 indexPath];
    v12 = v44;
  }

  else
  {
    v12 = 0;
    v44 = 0uLL;
    v45 = 0uLL;
  }

  if (v12 != [(PXMemoriesFeedDataSource *)self identifier])
  {
    v13 = v47;
    v14 = *(off_1E7722228 + 1);
    *(v47 + 2) = *off_1E7722228;
    *(v13 + 3) = v14;
    v40 = 0u;
    v41 = 0u;
    if (v9)
    {
      [v9 indexPath];
      v15 = v40;
      v16 = v41 == 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    if (v15 == v11)
    {
LABEL_44:
      [MEMORY[0x1E696AAA8] currentHandler];
      objc_claimAutoreleasedReturnValue();
      v38 = v40;
      v39 = v41;
      PXSimpleIndexPathDescription();
    }

    if (*(&v40 + 1) == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v16)
      {
        goto LABEL_44;
      }
    }

    else if (v16)
    {
      v19 = a5->dataSourceIdentifier;
      if (a5->dataSourceIdentifier == v11)
      {
        goto LABEL_25;
      }

      if (a5->section == 0x7FFFFFFFFFFFFFFFLL || a5->item != 0x7FFFFFFFFFFFFFFFLL)
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        [v20 handleFailureInMethod:a3 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:172 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsNull(hintIndexPath) || PXSimpleIndexPathIsSection(hintIndexPath)"}];

        v19 = a5->dataSourceIdentifier;
      }

      if (v19 == v11)
      {
LABEL_25:
        [(PXMemoriesFeedDataSource *)self _firstSectionIndexPath];
        v21 = v39;
        *&a5->dataSourceIdentifier = v38;
        *&a5->item = v21;
        v19 = a5->dataSourceIdentifier;
      }

      if (v19 == v11)
      {
        goto LABEL_42;
      }

      v22 = [v9 sectionObject];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v35 = [MEMORY[0x1E696AAA8] currentHandler];
        [v35 handleFailureInMethod:a3 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:178 description:{@"Invalid parameter not satisfying: %@", @"[e1 isKindOfClass:[PXMemoryEntryInfo class]]"}];
      }

      v23 = v37;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __74__PXMemoriesFeedDataSource_indexPathForObjectReference_withHintIndexPath___block_invoke;
      v37[3] = &unk_1E7748C90;
      v37[4] = self;
      v37[7] = a3;
      v24 = v22;
      v37[5] = v24;
      v37[6] = &v46;
      v25 = *&a5->item;
      v38 = *&a5->dataSourceIdentifier;
      v39 = v25;
      [(PXMemoriesFeedDataSource *)self _enumerateSectionIndexPathsWithHintIndexPath:&v38 usingBlock:v37];
      goto LABEL_41;
    }

    if (*(&v41 + 1) != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    v26 = a5->dataSourceIdentifier;
    if (a5->dataSourceIdentifier == v11)
    {
      goto LABEL_36;
    }

    if (a5->item == 0x7FFFFFFFFFFFFFFFLL || a5->subitem != 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a3 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:189 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsNull(hintIndexPath) || PXSimpleIndexPathIsItem(hintIndexPath)"}];

      v26 = a5->dataSourceIdentifier;
    }

    if (v26 == v11)
    {
LABEL_36:
      [(PXMemoriesFeedDataSource *)self firstItemIndexPath];
      v28 = v39;
      *&a5->dataSourceIdentifier = v38;
      *&a5->item = v28;
      v26 = a5->dataSourceIdentifier;
    }

    if (v26 == v11)
    {
LABEL_42:
      v17 = v47;
      goto LABEL_43;
    }

    v29 = [v9 itemObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v34 = [MEMORY[0x1E696AAA8] currentHandler];
      [v34 handleFailureInMethod:a3 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"[m1 isKindOfClass:[PXMemoryInfo class]]"}];
    }

    v23 = v36;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __74__PXMemoriesFeedDataSource_indexPathForObjectReference_withHintIndexPath___block_invoke_2;
    v36[3] = &unk_1E7748C90;
    v36[4] = self;
    v36[7] = a3;
    v24 = v29;
    v36[5] = v24;
    v36[6] = &v46;
    v30 = *&a5->item;
    v38 = *&a5->dataSourceIdentifier;
    v39 = v30;
    [(PXMemoriesFeedDataSource *)self _enumerateItemIndexPathsWithHintIndexPath:&v38 usingBlock:v36];
LABEL_41:

    goto LABEL_42;
  }

  if (v9)
  {
    [v9 indexPath];
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
  }

  v17 = v47;
  v18 = v43;
  *(v47 + 2) = v42;
  *(v17 + 3) = v18;
LABEL_43:
  v31 = *(v17 + 3);
  *&retstr->dataSourceIdentifier = *(v17 + 2);
  *&retstr->item = v31;
  _Block_object_dispose(&v46, 8);

  return result;
}

void __74__PXMemoriesFeedDataSource_indexPathForObjectReference_withHintIndexPath___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = [v6 objectAtIndexPath:v12];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXMemoriesFeedDataSource.m" lineNumber:181 description:{@"Invalid parameter not satisfying: %@", @"[e2 isKindOfClass:[PXMemoryEntryInfo class]]"}];
  }

  if (_isEqualEntries(*(a1 + 40), v8))
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = a2[1];
    *(v9 + 32) = *a2;
    *(v9 + 48) = v10;
    *a3 = 1;
  }
}

void __74__PXMemoriesFeedDataSource_indexPathForObjectReference_withHintIndexPath___block_invoke_2(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v6 = *(a1 + 32);
  v7 = a2[1];
  v12[0] = *a2;
  v12[1] = v7;
  v8 = [v6 objectAtIndexPath:v12];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"PXMemoriesFeedDataSource.m" lineNumber:198 description:{@"Invalid parameter not satisfying: %@", @"[m2 isKindOfClass:[PXMemoryInfo class]]"}];
  }

  if (_isEqualMemories(*(a1 + 40), v8))
  {
    v9 = *(*(a1 + 48) + 8);
    v10 = a2[1];
    *(v9 + 32) = *a2;
    *(v9 + 48) = v10;
    *a3 = 1;
  }
}

- (void)_enumerateItemIndexPathsWithHintIndexPath:(PXSimpleIndexPath *)a3 usingBlock:(id)a4
{
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PXMemoriesFeedDataSource__enumerateItemIndexPathsWithHintIndexPath_usingBlock___block_invoke;
  v15[3] = &unk_1E772C800;
  v7 = v6;
  v16 = v7;
  v17 = &v18;
  v8 = *&a3->item;
  v13 = *&a3->dataSourceIdentifier;
  v14 = v8;
  [(PXMemoriesFeedDataSource *)self enumerateItemIndexPathsStartingAtIndexPath:&v13 reverseDirection:0 usingBlock:v15];
  if ((v19[3] & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __81__PXMemoriesFeedDataSource__enumerateItemIndexPathsWithHintIndexPath_usingBlock___block_invoke_2;
    v10[3] = &unk_1E772C800;
    v11 = v7;
    v12 = &v18;
    v9 = *&a3->item;
    v13 = *&a3->dataSourceIdentifier;
    v14 = v9;
    [(PXMemoriesFeedDataSource *)self enumerateItemIndexPathsStartingAtIndexPath:&v13 reverseDirection:1 usingBlock:v10];
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __81__PXMemoriesFeedDataSource__enumerateItemIndexPathsWithHintIndexPath_usingBlock___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v6, v11, v7 + 24, a4);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __81__PXMemoriesFeedDataSource__enumerateItemIndexPathsWithHintIndexPath_usingBlock___block_invoke_2(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v6, v11, v7 + 24, a4);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (void)_enumerateSectionIndexPathsWithHintIndexPath:(PXSimpleIndexPath *)a3 usingBlock:(id)a4
{
  v6 = a4;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__PXMemoriesFeedDataSource__enumerateSectionIndexPathsWithHintIndexPath_usingBlock___block_invoke;
  v15[3] = &unk_1E772C800;
  v7 = v6;
  v16 = v7;
  v17 = &v18;
  v8 = *&a3->item;
  v13 = *&a3->dataSourceIdentifier;
  v14 = v8;
  [(PXMemoriesFeedDataSource *)self _enumerateSectionIndexPathsStartingAtIndexPath:&v13 reverseDirection:0 usingBlock:v15];
  if ((v19[3] & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __84__PXMemoriesFeedDataSource__enumerateSectionIndexPathsWithHintIndexPath_usingBlock___block_invoke_2;
    v10[3] = &unk_1E772C800;
    v11 = v7;
    v12 = &v18;
    v9 = *&a3->item;
    v13 = *&a3->dataSourceIdentifier;
    v14 = v9;
    [(PXMemoriesFeedDataSource *)self _enumerateSectionIndexPathsStartingAtIndexPath:&v13 reverseDirection:1 usingBlock:v10];
  }

  _Block_object_dispose(&v18, 8);
}

uint64_t __84__PXMemoriesFeedDataSource__enumerateSectionIndexPathsWithHintIndexPath_usingBlock___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v6, v11, v7 + 24, a4);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

uint64_t __84__PXMemoriesFeedDataSource__enumerateSectionIndexPathsWithHintIndexPath_usingBlock___block_invoke_2(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v6, v11, v7 + 24, a4);
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  return result;
}

- (void)_enumerateSectionIndexPathsStartingAtIndexPath:(PXSimpleIndexPath *)a3 reverseDirection:(BOOL)a4 usingBlock:(id)a5
{
  v5 = a4;
  v9 = a5;
  if (!v9)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
  }

  dataSourceIdentifier = a3->dataSourceIdentifier;
  if (a3->dataSourceIdentifier == *off_1E7721F68 || a3->section == 0x7FFFFFFFFFFFFFFFLL || a3->item != 0x7FFFFFFFFFFFFFFFLL)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(startIndexPath)"}];

    dataSourceIdentifier = a3->dataSourceIdentifier;
  }

  if (dataSourceIdentifier != [(PXMemoriesFeedDataSource *)self identifier])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXMemoriesFeedDataSource.m" lineNumber:87 description:{@"%@: indexPath data source identifier:%lu, does not match:%lu and is not valid for use with this data source. Convert it to ensure safe use.", self, a3->dataSourceIdentifier, -[PXMemoriesFeedDataSource identifier](self, "identifier")}];
  }

  if (v5)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [(PXMemoriesFeedDataSource *)self numberOfSections];
  v25 = 0;
  v24 = *&a3->item;
  v16 = a3->dataSourceIdentifier;
  section = a3->section;
  if ((section & 0x8000000000000000) == 0)
  {
    v17 = v14;
    do
    {
      if (section >= v17)
      {
        break;
      }

      if (v25)
      {
        break;
      }

      v18 = v9[2];
      v22[0] = v16;
      v22[1] = section;
      v23 = v24;
      v18(v9, v22, &v25);
      section += v13;
    }

    while (section >= 0);
  }
}

- (PXSimpleIndexPath)_firstSectionIndexPath
{
  result = [(PXMemoriesFeedDataSource *)self numberOfSections];
  if (result < 1)
  {
    v6 = *(off_1E7722228 + 1);
    *&retstr->dataSourceIdentifier = *off_1E7722228;
    *&retstr->item = v6;
  }

  else
  {
    result = [(PXMemoriesFeedDataSource *)self identifier];
    retstr->dataSourceIdentifier = result;
    *&retstr->section = xmmword_1A5380D10;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)a3
{
  if (a3->dataSourceIdentifier == *off_1E7721F68)
  {
LABEL_12:
    [MEMORY[0x1E696AAA8] currentHandler];
    objc_claimAutoreleasedReturnValue();
    PXSimpleIndexPathDescription();
  }

  item = a3->item;
  if (a3->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_12;
    }
  }

  else if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [(NSArray *)self->_entries objectAtIndexedSubscript:?];
    goto LABEL_9;
  }

  if (a3->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  v6 = [(NSArray *)self->_entries objectAtIndexedSubscript:?];
  v7 = [v6 memories];
  v5 = [v7 objectAtIndexedSubscript:a3->item];

LABEL_9:

  return v5;
}

- (int64_t)numberOfItemsInSection:(int64_t)a3
{
  v3 = [(NSArray *)self->_entries objectAtIndexedSubscript:a3];
  v4 = [v3 memories];
  v5 = [v4 count];

  return v5;
}

- (PXMemoriesFeedDataSource)initWithEntries:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PXMemoriesFeedDataSource;
  v5 = [(PXMemoriesFeedDataSource *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = *(off_1E7722228 + 1);
    *&v5->_indexPathForFirstPastMemorySection.dataSourceIdentifier = *off_1E7722228;
    *&v5->_indexPathForFirstPastMemorySection.item = v8;
  }

  return v5;
}

@end