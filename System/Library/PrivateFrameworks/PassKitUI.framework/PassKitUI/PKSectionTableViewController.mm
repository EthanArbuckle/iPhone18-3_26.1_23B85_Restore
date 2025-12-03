@interface PKSectionTableViewController
- (BOOL)_recomputeMappedSections;
- (BOOL)isMappingValid;
- (BOOL)recomputeMappedSectionsAndReloadSections:(id)sections;
- (BOOL)reloadData;
- (PKSectionTableViewController)initWithStyle:(int64_t)style numberOfSections:(unint64_t)sections;
- (void)_swapBuffers;
- (void)dealloc;
- (void)reloadRow:(int64_t)row inSection:(unint64_t)section;
- (void)reloadRows:(id)rows inSection:(unint64_t)section;
- (void)reloadSection:(unint64_t)section;
- (void)reloadSections:(id)sections;
- (void)updateSectionVisibilityAndReloadIfNecessaryForAllSections;
- (void)updateSectionVisibilityAndReloadIfNecessaryForSection:(unint64_t)section;
- (void)updateSectionVisibilityAndReloadIfNecessaryForSections:(id)sections;
- (void)viewDidLoad;
@end

@implementation PKSectionTableViewController

- (PKSectionTableViewController)initWithStyle:(int64_t)style numberOfSections:(unint64_t)sections
{
  if (sections)
  {
    v14.receiver = self;
    v14.super_class = PKSectionTableViewController;
    self = [(PKSectionTableViewController *)&v14 initWithStyle:style];
    selfCopy2 = self;
    if (self)
    {
      self->_numberOfSections = sections;
      if (sections - 0x2000000000000000 >= 0xE000000000000001)
      {
        p_currentMap = &self->_currentMap;
        self->_currentMap.indexToSection = malloc_type_malloc(8 * sections, 0x8936F740uLL);
        sectionToIndex = malloc_type_calloc(sections, 8uLL, 0x3B9677FCuLL);
        selfCopy2->_currentMap.sectionToIndex = sectionToIndex;
        p_sectionToIndex = &selfCopy2->_currentMap.sectionToIndex;
        indexToSection = selfCopy2->_currentMap.indexToSection;
        if (indexToSection)
        {
          v10 = sectionToIndex == 0;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          if (indexToSection)
          {
            free(p_currentMap->indexToSection);
            selfCopy2->_currentMap.indexToSection = 0;
            sectionToIndex = selfCopy2->_currentMap.sectionToIndex;
          }
        }

        else
        {
          memset(selfCopy2->_currentMap.indexToSection, 255, 8 * sections);
          numberOfSections = selfCopy2->_numberOfSections;
          if (numberOfSections - 0x2000000000000000 < 0xE000000000000001)
          {
            goto LABEL_15;
          }

          selfCopy2->_bufferedMap.indexToSection = malloc_type_malloc(8 * numberOfSections, 0x8936F740uLL);
          sectionToIndex = malloc_type_calloc(numberOfSections, 8uLL, 0x3B9677FCuLL);
          selfCopy2->_bufferedMap.sectionToIndex = sectionToIndex;
          p_sectionToIndex = &selfCopy2->_bufferedMap.sectionToIndex;
          v13 = selfCopy2->_bufferedMap.indexToSection;
          if (v13 && sectionToIndex)
          {
            memset(selfCopy2->_bufferedMap.indexToSection, 255, 8 * numberOfSections);
            goto LABEL_16;
          }

          if (v13)
          {
            free(selfCopy2->_bufferedMap.indexToSection);
            selfCopy2->_bufferedMap.indexToSection = 0;
            sectionToIndex = selfCopy2->_bufferedMap.sectionToIndex;
          }
        }

        if (sectionToIndex)
        {
          free(sectionToIndex);
          *p_sectionToIndex = 0;
        }
      }

LABEL_15:

      selfCopy2 = 0;
LABEL_16:
      self = selfCopy2;
      selfCopy2 = self;
    }
  }

  else
  {
    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)dealloc
{
  p_currentMap = &self->_currentMap;
  indexToSection = self->_currentMap.indexToSection;
  if (indexToSection)
  {
    free(indexToSection);
    p_currentMap->indexToSection = 0;
  }

  sectionToIndex = p_currentMap->sectionToIndex;
  if (sectionToIndex)
  {
    free(sectionToIndex);
    p_currentMap->sectionToIndex = 0;
  }

  v6 = self->_bufferedMap.indexToSection;
  if (v6)
  {
    free(v6);
    self->_bufferedMap.indexToSection = 0;
  }

  v7 = self->_bufferedMap.sectionToIndex;
  if (v7)
  {
    free(v7);
    self->_bufferedMap.sectionToIndex = 0;
  }

  v8.receiver = self;
  v8.super_class = PKSectionTableViewController;
  [(PKSectionTableViewController *)&v8 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PKSectionTableViewController;
  [(PKSectionTableViewController *)&v4 viewDidLoad];
  if (!self->_skipSetupForReadableContentGuide)
  {
    tableView = [(PKSectionTableViewController *)self tableView];
    [tableView pkui_setupForReadableContentGuide];
  }

  [(PKSectionTableViewController *)self _recomputeMappedSections];
  [(PKSectionTableViewController *)self _swapBuffers];
}

- (BOOL)recomputeMappedSectionsAndReloadSections:(id)sections
{
  sectionsCopy = sections;
  if ([(PKSectionTableViewController *)self isViewLoaded])
  {
    _recomputeMappedSections = [(PKSectionTableViewController *)self _recomputeMappedSections];
    tableView = [(PKSectionTableViewController *)self tableView];
    [tableView beginUpdates];
    context = objc_autoreleasePoolPush();
    if (self->_numberOfSections)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = self->_currentMap.sectionToIndex[v7];
        v9 = self->_currentMap.indexToSection[v8];
        v10 = v7 != v9;
        v11 = self->_bufferedMap.indexToSection[self->_bufferedMap.sectionToIndex[v7]];
        if (v7 != v9 || v7 == v11)
        {
          if (v7 != v9 && v7 == v11)
          {
            v16 = [MEMORY[0x1E696AC90] indexSetWithIndex:v5 - v6 + v8];
            [tableView insertSections:v16 withRowAnimation:{-[PKSectionTableViewController rowAnimationForInsertingSection:](self, "rowAnimationForInsertingSection:", v7)}];

            ++v5;
          }

          else
          {
            if (v7 != v11)
            {
              v10 = 1;
            }

            if (!v10 && [sectionsCopy containsIndex:v7])
            {
              v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:self->_currentMap.sectionToIndex[v7]];
              [tableView reloadSections:v14 withRowAnimation:{-[PKSectionTableViewController rowAnimationForReloadingSection:](self, "rowAnimationForReloadingSection:", v7)}];
            }
          }
        }

        else
        {
          v15 = [MEMORY[0x1E696AC90] indexSetWithIndex:?];
          [tableView deleteSections:v15 withRowAnimation:{-[PKSectionTableViewController rowAnimationForDeletingSection:](self, "rowAnimationForDeletingSection:", v7)}];

          ++v6;
        }

        ++v7;
      }

      while (v7 < self->_numberOfSections);
    }

    objc_autoreleasePoolPop(context);
    [(PKSectionTableViewController *)self _swapBuffers];
    [tableView endUpdates];

    v17 = _recomputeMappedSections;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (BOOL)reloadData
{
  isViewLoaded = [(PKSectionTableViewController *)self isViewLoaded];
  if (isViewLoaded)
  {
    _recomputeMappedSections = [(PKSectionTableViewController *)self _recomputeMappedSections];
    [(PKSectionTableViewController *)self _swapBuffers];
    tableView = [(PKSectionTableViewController *)self tableView];
    [tableView setEditing:0 animated:0];
    [tableView reloadData];

    LOBYTE(isViewLoaded) = _recomputeMappedSections;
  }

  return isViewLoaded;
}

- (void)reloadSections:(id)sections
{
  sectionsCopy = sections;
  if ([sectionsCopy count] && -[PKSectionTableViewController isViewLoaded](self, "isViewLoaded"))
  {
    tableView = [(PKSectionTableViewController *)self tableView];
    numberOfSections = [tableView numberOfSections];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __47__PKSectionTableViewController_reloadSections___block_invoke;
    v8[3] = &unk_1E8014DD0;
    v9 = sectionsCopy;
    selfCopy = self;
    v11 = tableView;
    v12 = numberOfSections;
    v7 = tableView;
    [v7 performBatchUpdates:v8 completion:0];
  }
}

void __47__PKSectionTableViewController_reloadSections___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v17;
    *&v4 = 134218240;
    v15 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v16 + 1) + 8 * v7) unsignedIntegerValue];
        v9 = *(a1 + 40);
        v10 = *(v9[133] + 8 * v8);
        if (*(v9[132] + 8 * v10) == v8)
        {
          v11 = *(a1 + 56);
          if (v10 >= v11)
          {
            v14 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = v10;
              v22 = 2048;
              v23 = v11;
              _os_log_impl(&dword_1BD026000, v14, OS_LOG_TYPE_DEFAULT, "Asked to reload a sectionIndex (%lu) greater than the table views current number of sections (%li).", buf, 0x16u);
            }
          }

          else
          {
            v12 = [v9 rowAnimationForReloadingSection:?];
            v13 = *(a1 + 48);
            v14 = [MEMORY[0x1E696AC90] indexSetWithIndex:v10];
            [v13 reloadSections:v14 withRowAnimation:v12];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v5);
  }
}

- (void)reloadSection:(unint64_t)section
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(PKSectionTableViewController *)self isViewLoaded]&& self->_currentMap.indexToSection[self->_currentMap.sectionToIndex[section]] == section)
  {
    tableView = [(PKSectionTableViewController *)self tableView];
    v6 = self->_currentMap.sectionToIndex[section];
    numberOfSections = [tableView numberOfSections];
    if (v6 >= numberOfSections)
    {
      v9 = numberOfSections;
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 134218240;
        v12 = v6;
        v13 = 2048;
        v14 = v9;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Asked to reload a sectionIndex (%lu) greater than the table views current number of sections (%li).", &v11, 0x16u);
      }
    }

    else
    {
      v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:v6];
      [tableView reloadSections:v8 withRowAnimation:{-[PKSectionTableViewController rowAnimationForReloadingSection:](self, "rowAnimationForReloadingSection:", section)}];
    }
  }
}

- (void)reloadRow:(int64_t)row inSection:(unint64_t)section
{
  v8[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:row];
  v8[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [(PKSectionTableViewController *)self reloadRows:v7 inSection:section];
}

- (void)reloadRows:(id)rows inSection:(unint64_t)section
{
  v28 = *MEMORY[0x1E69E9840];
  rowsCopy = rows;
  if ([(PKSectionTableViewController *)self isViewLoaded]&& self->_currentMap.indexToSection[self->_currentMap.sectionToIndex[section]] == section)
  {
    tableView = [(PKSectionTableViewController *)self tableView];
    v8 = self->_currentMap.sectionToIndex[section];
    numberOfSections = [tableView numberOfSections];
    if (v8 >= numberOfSections)
    {
      v17 = numberOfSections;
      v10 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v24 = v8;
        v25 = 2048;
        v26 = v17;
        _os_log_impl(&dword_1BD026000, v10, OS_LOG_TYPE_DEFAULT, "Asked to reload rows in a section with a sectionIndex (%lu) greater than the table views current number of sections (%li).", buf, 0x16u);
      }
    }

    else
    {
      v18 = tableView;
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v11 = rowsCopy;
      v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v20;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v20 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [MEMORY[0x1E696AC88] indexPathForRow:objc_msgSend(*(*(&v19 + 1) + 8 * i) inSection:{"integerValue", v18), v8}];
            [v10 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        }

        while (v13);
      }

      tableView = v18;
      [v18 reloadRowsAtIndexPaths:v10 withRowAnimation:{-[PKSectionTableViewController rowAnimationForReloadingSection:](self, "rowAnimationForReloadingSection:", section)}];
    }
  }
}

- (void)updateSectionVisibilityAndReloadIfNecessaryForSection:(unint64_t)section
{
  v5 = self->_currentMap.indexToSection[self->_currentMap.sectionToIndex[section]];
  if ((v5 == section) == [(PKSectionTableViewController *)self shouldMapSection:?])
  {
    if (v5 == section)
    {

      [(PKSectionTableViewController *)self reloadSection:section];
    }
  }

  else
  {

    [(PKSectionTableViewController *)self recomputeMappedSectionsAndReloadSections:0];
  }
}

- (void)updateSectionVisibilityAndReloadIfNecessaryForSections:(id)sections
{
  sectionsCopy = sections;
  tableView = [(PKSectionTableViewController *)self tableView];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __87__PKSectionTableViewController_updateSectionVisibilityAndReloadIfNecessaryForSections___block_invoke;
  v7[3] = &unk_1E8010A10;
  v8 = sectionsCopy;
  selfCopy = self;
  v6 = sectionsCopy;
  [tableView performBatchUpdates:v7 completion:0];
}

void __87__PKSectionTableViewController_updateSectionVisibilityAndReloadIfNecessaryForSections___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v22 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = v2;
    v7 = 0;
    v8 = *v28;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 unsignedIntegerValue];
        v12 = *(v22 + 40);
        v13 = *(v12[132] + 8 * *(v12[133] + 8 * v11));
        v14 = [v12 shouldMapSection:v11];
        if (v13 != v11 || v14 == 0)
        {
          v7 |= (v13 == v11) ^ v14;
        }

        else
        {
          [v6 addObject:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v5);

    v2 = v6;
    if (v7)
    {
      v16 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v17 = v2;
      v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v24;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v24 != v20)
            {
              objc_enumerationMutation(v17);
            }

            [v16 addIndex:{objc_msgSend(*(*(&v23 + 1) + 8 * j), "unsignedIntegerValue")}];
          }

          v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v19);
      }

      [*(v22 + 40) recomputeMappedSectionsAndReloadSections:v16];
      goto LABEL_26;
    }
  }

  else
  {
  }

  if ([v2 count])
  {
    [*(v22 + 40) reloadSections:v2];
  }

LABEL_26:
}

- (void)updateSectionVisibilityAndReloadIfNecessaryForAllSections
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_numberOfSections)
  {
    v3 = 0;
    do
    {
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v3];
      [v5 addObject:v4];

      ++v3;
    }

    while (v3 < self->_numberOfSections);
  }

  [(PKSectionTableViewController *)self updateSectionVisibilityAndReloadIfNecessaryForSections:v5];
}

- (BOOL)isMappingValid
{
  numberOfSections = self->_numberOfSections;
  if (!numberOfSections)
  {
    return 1;
  }

  indexToSection = self->_currentMap.indexToSection;
  if (*indexToSection >= numberOfSections && *indexToSection != -1)
  {
    return 0;
  }

  sectionToIndex = self->_currentMap.sectionToIndex;
  v6 = self->_currentMap.numberOfSections;
  if (*sectionToIndex >= numberOfSections || *sectionToIndex > v6)
  {
    return 0;
  }

  v9 = 1;
  do
  {
    v10 = v9;
    if (numberOfSections == v9)
    {
      break;
    }

    v11 = indexToSection[v9];
    if (v11 >= numberOfSections && v11 != -1)
    {
      break;
    }

    v13 = sectionToIndex[v10];
    v9 = v10 + 1;
  }

  while (v13 < numberOfSections && v13 <= v6);
  return v10 >= numberOfSections;
}

- (void)_swapBuffers
{
  sectionToIndex = self->_currentMap.sectionToIndex;
  v3 = *&self->_currentMap.numberOfSections;
  v4 = self->_bufferedMap.sectionToIndex;
  *&self->_currentMap.numberOfSections = *&self->_bufferedMap.numberOfSections;
  self->_currentMap.sectionToIndex = v4;
  *&self->_bufferedMap.numberOfSections = v3;
  self->_bufferedMap.sectionToIndex = sectionToIndex;
}

- (BOOL)_recomputeMappedSections
{
  if (self->_numberOfSections)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = [(PKSectionTableViewController *)self shouldMapSection:v4];
      self->_bufferedMap.sectionToIndex[v4] = v3;
      if (v5)
      {
        self->_bufferedMap.indexToSection[v3++] = v4;
      }

      ++v4;
    }

    while (v4 < self->_numberOfSections);
  }

  else
  {
    v3 = 0;
  }

  self->_bufferedMap.numberOfSections = v3;
  numberOfSections = self->_numberOfSections;
  for (i = self->_bufferedMap.indexToSection; v3 < numberOfSections; numberOfSections = self->_numberOfSections)
  {
    i[v3++] = -1;
  }

  return memcmp(self->_currentMap.indexToSection, i, 8 * numberOfSections) != 0;
}

@end