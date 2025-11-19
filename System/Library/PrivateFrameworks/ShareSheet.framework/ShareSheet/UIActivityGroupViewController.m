@interface UIActivityGroupViewController
- (BOOL)canBecomeFirstResponder;
- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4;
- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGPoint)initialDraggingLocation;
- (CGSize)collectionView:(id)a3 layout:(id)a4 preferredSizeForItemAtIndexPath:(id)a5;
- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)a3 activityProxies:(id)a4;
- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)a3 userDefaults:(id)a4 userDefaultsIdentifier:(id)a5;
- (UIActivityGroupViewControllerDataSource)dataSource;
- (UIActivityGroupViewControllerDelegate)delegate;
- (UIEdgeInsets)externalSafeInset;
- (id)activityForItemAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 layout:(id)a4 moveItemAtIndexPath:(id)a5 toIndexPath:(id)a6;
- (id)collectionView:(id)a3 layout:(id)a4 needsContainerViewForDraggingItemAtIndexPath:(id)a5;
- (id)targetIndexPathForMoveFromRowAtIndexPath:(id)a3 toProposedIndexPath:(id)a4;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_dismissPresentedMenuControllers;
- (void)_performHideActivityForMenuController:(id)a3;
- (void)_setActivities:(id)a3 animated:(BOOL)a4;
- (void)_setVisibleActivities:(id)a3 animated:(BOOL)a4;
- (void)_updateItemSizeIfNeeded;
- (void)_updateVisibleActivitiesAnimated:(BOOL)a3;
- (void)activityUserDefaultsDidChange:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)dealloc;
- (void)handleEditingGesture:(id)a3;
- (void)hideItemAtIndexPath:(id)a3;
- (void)ignoreUserDefaultsChangesWhileUsingBlock:(id)a3;
- (void)registerClassForContentSizeCategoryChanges;
- (void)registerForActivityUserDefaultsChanges;
- (void)setActivities:(id)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setExternalSafeInset:(UIEdgeInsets)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)unregisterForActivityUserDefaultsChanges;
- (void)updateActivityProxies:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation UIActivityGroupViewController

- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)a3 activityProxies:(id)a4
{
  v6 = @"UIActivityCategoryShare";
  if (a3 != 1)
  {
    v6 = 0;
  }

  if (a3)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"UIActivityCategoryAction";
  }

  [(UIActivityGroupViewController *)self setVisibleActivityProxies:a4];

  return [(UIActivityGroupViewController *)self initWithActivityCategory:a3 userDefaults:0 userDefaultsIdentifier:v7];
}

- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)a3 userDefaults:(id)a4 userDefaultsIdentifier:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(_UIActivityGroupViewFlowLayout);
  [(_UIActivityGroupViewFlowLayout *)v10 _setWantsRightToLeftHorizontalMirroringIfNeeded:1];
  [(UIActivityGroupViewController *)self setAllowsUserCustomization:1];
  [(UIActivityGroupViewController *)self setPicker:1];
  v18.receiver = self;
  v18.super_class = UIActivityGroupViewController;
  v11 = [(UIActivityGroupViewController *)&v18 initWithCollectionViewLayout:v10];
  v12 = v11;
  if (v11)
  {
    [(UIActivityGroupViewController *)v11 setActivityCategory:a3];
    if (v8)
    {
      v13 = [[_UIActivityUserDefaults alloc] initWithUnderlyingUserDefaults:v8 activityDefaultsKey:v9];
      [(UIActivityGroupViewController *)v12 setUserDefaults:v13];

      if ([(UIActivityGroupViewController *)v12 allowsUserCustomization])
      {
        v14 = [_UIUserDefaultsHostActivity alloc];
        v15 = [(UIActivityGroupViewController *)v12 userDefaults];
        v16 = [(_UIUserDefaultsActivity *)v14 initWithUserDefaults:v15 activityCategory:a3];
        [(UIActivityGroupViewController *)v12 setUserDefaultsActivity:v16];
      }

      [(UIActivityGroupViewController *)v12 registerClassForContentSizeCategoryChanges];
    }
  }

  return v12;
}

- (void)dealloc
{
  [(UIActivityGroupViewController *)self unregisterForActivityUserDefaultsChanges];
  v3.receiver = self;
  v3.super_class = UIActivityGroupViewController;
  [(UIActivityGroupViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v22.receiver = self;
  v22.super_class = UIActivityGroupViewController;
  [(UIActivityGroupViewController *)&v22 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(UIActivityGroupViewController *)self collectionView];
  [v4 setBackgroundColor:v3];

  v5 = [(UIActivityGroupViewController *)self collectionView];
  [v5 setOpaque:0];

  v6 = [(UIActivityGroupViewController *)self collectionView];
  [v6 setShowsHorizontalScrollIndicator:0];

  v7 = [(UIActivityGroupViewController *)self collectionView];
  [v7 setAlwaysBounceHorizontal:1];

  v8 = [(UIActivityGroupViewController *)self collectionView];
  [v8 setDelaysContentTouches:0];

  v9 = [(UIActivityGroupViewController *)self collectionView];
  [v9 setClipsToBounds:1];

  v10 = [(UIActivityGroupViewController *)self collectionView];
  [v10 setPrefetchDataSource:self];

  v11 = [(UIActivityGroupViewController *)self collectionView];
  [v11 _setFirstResponderKeyboardAvoidanceEnabled:0];

  v12 = [(UIActivityGroupViewController *)self collectionView];
  [v12 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"activity"];

  v13 = [(UIActivityGroupViewController *)self collectionView];
  [v13 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"placeholder"];

  v14 = [(UIActivityGroupViewController *)self collectionView];
  [v14 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"userDefaults"];

  v15 = [(UIActivityGroupViewController *)self userDefaults];
  if (v15)
  {
    v16 = v15;
    v17 = [(UIActivityGroupViewController *)self allowsUserCustomization];

    if (v17)
    {
      v18 = [[_UIActivityDragGestureRecognizer alloc] initWithTarget:self action:sel_handleEditingGesture_];
      [(_UIActivityDragGestureRecognizer *)v18 setDelegate:self];
      [(_UIActivityDragGestureRecognizer *)v18 setMinimumPressDuration:0.35];
      v19 = [(UIActivityGroupViewController *)self collectionView];
      [v19 addGestureRecognizer:v18];

      v20 = [(UIActivityGroupViewController *)self activityGroupViewLayout];
      [v20 setEditingGestureRecognizer:v18];

      editingGestureRecognizer = self->_editingGestureRecognizer;
      self->_editingGestureRecognizer = &v18->super;

      [(UIActivityGroupViewController *)self registerForActivityUserDefaultsChanges];
    }
  }
}

- (void)setExternalSafeInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_externalSafeInset.top, v3), vceqq_f64(*&self->_externalSafeInset.bottom, v4)))) & 1) == 0)
  {
    self->_externalSafeInset = a3;
    right = a3.right;
    left = a3.left;
    bottom = a3.bottom;
    top = a3.top;
    v9 = [(UIActivityGroupViewController *)self activityGroupViewLayout];
    [v9 setExternalSafeInset:{top, left, bottom, right}];
    [v9 invalidateLayout];
  }
}

- (void)setActivities:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [(UIActivityGroupViewController *)self userDefaultsActivity];

  if (v6)
  {
    v7 = [(UIActivityGroupViewController *)self userDefaults];
    v8 = [v7 activitiesOrderedByUserActivityOrderForActivities:v11];

    v9 = [(UIActivityGroupViewController *)self userDefaultsActivity];
    [v9 setAvailableActivities:v8];

    v10 = v8;
  }

  else
  {
    v10 = v11;
  }

  v12 = v10;
  [(UIActivityGroupViewController *)self _setActivities:v10 animated:v4];
}

- (void)_setActivities:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (self->_activities != a3)
  {
    v6 = [a3 copy];
    activities = self->_activities;
    self->_activities = v6;
  }

  [(UIActivityGroupViewController *)self _updateVisibleActivitiesAnimated:v4];
}

- (void)_updateVisibleActivitiesAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIActivityGroupViewController *)self activities];
  v6 = [(UIActivityGroupViewController *)self userDefaults];

  if (v6)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__UIActivityGroupViewController__updateVisibleActivitiesAnimated___block_invoke;
    v12[3] = &unk_1E71FB8B8;
    v12[4] = self;
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v12];
    v8 = [v5 filteredArrayUsingPredicate:v7];

    v5 = v8;
  }

  v9 = [(UIActivityGroupViewController *)self userDefaultsActivity];

  if (v9)
  {
    v10 = [(UIActivityGroupViewController *)self userDefaultsActivity];
    v11 = [v5 arrayByAddingObject:v10];

    v5 = v11;
  }

  [(UIActivityGroupViewController *)self _setVisibleActivities:v5 animated:v3];
}

uint64_t __66__UIActivityGroupViewController__updateVisibleActivitiesAnimated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userDefaults];
  v5 = [v4 activityIsHidden:v3];

  return v5 ^ 1u;
}

- (void)_setVisibleActivities:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSArray *)v6 count];
  self->_hasActivities = v7 != 0;
  if (v7)
  {
    if (v4 && (-[NSArray count](self->_visibleActivities, "count") || (-[UIActivityGroupViewController view](self, "view"), v15 = objc_claimAutoreleasedReturnValue(), [v15 alpha], v17 = v16, v15, v17 != 1.0)))
    {
      v8 = [(UIActivityGroupViewController *)self collectionView];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke;
      v39 = &unk_1E71F91A0;
      v40 = self;
      v41 = v6;
      [v8 performBatchUpdates:&v36 completion:0];
    }

    else
    {
      if (self->_visibleActivities != v6)
      {
        v18 = [(NSArray *)v6 copy];
        visibleActivities = self->_visibleActivities;
        self->_visibleActivities = v18;
      }

      v20 = [(UIActivityGroupViewController *)self collectionView];
      [v20 reloadData];
    }

    v21 = [(UIActivityGroupViewController *)self view];
    [v21 alpha];
    v23 = v22;

    if (v23 < 1.0)
    {
      v12 = MEMORY[0x1E69DD250];
      v13 = 0.35;
      if (!v4)
      {
        v13 = 0.0;
      }

      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_4;
      v34 = &unk_1E71F9510;
      v35 = self;
      v14 = &v31;
LABEL_17:
      [v12 animateWithDuration:v14 animations:{v13, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40}];
    }
  }

  else
  {
    v9 = [(UIActivityGroupViewController *)self view];
    [v9 alpha];
    v11 = v10;

    if (v11 == 1.0)
    {
      v12 = MEMORY[0x1E69DD250];
      v13 = 0.35;
      if (!v4)
      {
        v13 = 0.0;
      }

      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_5;
      v29 = &unk_1E71F9510;
      v30 = self;
      v14 = &v26;
      goto LABEL_17;
    }
  }

  hasActivities = self->_hasActivities;
  v25 = [(UIActivityGroupViewController *)self collectionView];
  [v25 setScrollEnabled:hasActivities];
}

void __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1064);
  v3 = [*(a1 + 40) copy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 1064);
  *(v4 + 1064) = v3;

  v6 = [MEMORY[0x1E695DF70] array];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_2;
  v20[3] = &unk_1E71FB8E0;
  v20[4] = *(a1 + 32);
  v21 = v6;
  v7 = v6;
  [v2 enumerateObjectsUsingBlock:v20];
  v8 = [MEMORY[0x1E695DF70] array];
  v9 = *(*(a1 + 32) + 1064);
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_3;
  v17 = &unk_1E71FB8E0;
  v18 = v2;
  v19 = v8;
  v10 = v8;
  v11 = v2;
  [v9 enumerateObjectsUsingBlock:&v14];
  v12 = [*(a1 + 32) collectionView];
  [v12 deleteItemsAtIndexPaths:v7];

  v13 = [*(a1 + 32) collectionView];
  [v13 insertItemsAtIndexPaths:v10];
}

void __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(*(a1 + 32) + 1064) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    [v5 addObject:v6];
  }
}

void __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (([*(a1 + 32) containsObject:a2] & 1) == 0)
  {
    v5 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:0];
    [v5 addObject:v6];
  }
}

void __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_4(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

void __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_5(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.35];
}

- (void)updateActivityProxies:(id)a3
{
  [(UIActivityGroupViewController *)self setVisibleActivityProxies:a3];
  v4 = [(UIActivityGroupViewController *)self collectionView];
  [v4 reloadData];
}

- (BOOL)canBecomeFirstResponder
{
  v2 = [(UIActivityGroupViewController *)self userDefaults];
  v3 = v2 != 0;

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(UIActivityGroupViewController *)self isEditing]!= a3)
  {
    v7 = [(UIActivityGroupViewController *)self userDefaults];

    if (v7)
    {
      v8.receiver = self;
      v8.super_class = UIActivityGroupViewController;
      [(UIActivityGroupViewController *)&v8 setEditing:v5 animated:v4];
    }
  }
}

- (void)_performHideActivityForMenuController:(id)a3
{
  v4 = [(UIActivityGroupViewController *)self indexPathForMenuActivity];

  if (v4)
  {
    v5 = [(UIActivityGroupViewController *)self indexPathForMenuActivity];
    [(UIActivityGroupViewController *)self hideItemAtIndexPath:v5];
  }
}

- (id)activityForItemAtIndexPath:(id)a3
{
  if (a3)
  {
    v4 = -[NSArray objectAtIndexedSubscript:](self->_visibleActivities, "objectAtIndexedSubscript:", [a3 item]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v5 = [(UIActivityGroupViewController *)self visibleActivityProxies:a3];

  if (v5)
  {
    v6 = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v7 = [v6 count];

    return v7;
  }

  else
  {
    visibleActivities = self->_visibleActivities;

    return [(NSArray *)visibleActivities count];
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(UIActivityGroupViewController *)self visibleActivityProxies];

  if (v8)
  {
    v9 = [v6 dequeueReusableCellWithReuseIdentifier:@"activity" forIndexPath:v7];
    v10 = [v9 titleLabel];
    [v10 setText:@"Hello"];

    v11 = [v9 titleLabel];
    [v11 setAlpha:0.0];

    v12 = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v13 = [v12 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    [v9 setActivityProxy:v13];

    v14 = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v15 = [v14 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    LODWORD(v12) = [v15 iconImageSlotID];

    v16 = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v7, "item")}];
    v18 = [v17 activityTitle];
    v19 = [v18 slotIdentifier];

    v20 = *MEMORY[0x1E69DDA98];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __71__UIActivityGroupViewController_collectionView_cellForItemAtIndexPath___block_invoke;
    v38[3] = &unk_1E71F95D0;
    v40 = v12;
    v21 = v9;
    v39 = v21;
    v41 = v19;
    [v20 _performBlockAfterCATransactionCommits:v38];
    v22 = v39;
  }

  else
  {
    v22 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v7];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v24 = [(UIActivityGroupViewController *)self userDefaultsActivity];

    v25 = @"activity";
    if (isKindOfClass)
    {
      v25 = @"placeholder";
    }

    if (v22 == v24)
    {
      v26 = @"userDefaults";
    }

    else
    {
      v26 = v25;
    }

    v21 = [v6 dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:v7];
    [v21 setSequence:{objc_msgSend(v21, "sequence") + 1}];
    if (isKindOfClass)
    {
      v27 = @"\n";
    }

    else
    {
      v27 = [(UIActivityGroupViewController *)self _titleTextForActivity:v22];
    }

    v28 = [v21 titleLabel];
    [v28 setText:v27];

    if (isKindOfClass)
    {
      v29 = [v21 imageView];
      [v29 setImage:0];
    }

    else
    {

      v30 = [v21 imageView];
      [v30 setImage:0];

      v31 = [v21 sequence];
      objc_initWeak(&location, v21);
      v32 = [(UIActivityGroupViewController *)self traitCollection];
      [v22 setUserInterfaceStyle:{objc_msgSend(v32, "userInterfaceStyle")}];

      v33 = [v22 _activityImageLoader];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __71__UIActivityGroupViewController_collectionView_cellForItemAtIndexPath___block_invoke_2;
      v35[3] = &unk_1E71FB908;
      objc_copyWeak(v36, &location);
      v36[1] = v31;
      [v33 getResourceWithBlock:v35];

      objc_destroyWeak(v36);
      objc_destroyWeak(&location);
    }

    [v21 setNeedsLayout];
  }

  return v21;
}

void __71__UIActivityGroupViewController_collectionView_cellForItemAtIndexPath___block_invoke(uint64_t a1)
{
  v23 = [MEMORY[0x1E6979320] objectForSlot:*(a1 + 40)];
  v2 = *MEMORY[0x1E6979DE0];
  v3 = [*(a1 + 32) imageSlot];
  v4 = [v3 layer];
  [v4 setContentsGravity:v2];

  v5 = [*(a1 + 32) imageSlot];
  v6 = [v5 layer];
  [v6 setContents:v23];

  v7 = [MEMORY[0x1E6979320] objectForSlot:*(a1 + 44)];
  v8 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v8 scale];
  v10 = v9;
  v11 = [*(a1 + 32) titleSlot];
  v12 = [v11 layer];
  [v12 setContentsScale:v10];

  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
  v15 = v14;
  v16 = [*(a1 + 32) titleSlot];
  v17 = [v16 layer];
  [v17 setRasterizationScale:v15];

  v18 = *MEMORY[0x1E6979DD0];
  v19 = [*(a1 + 32) titleSlot];
  v20 = [v19 layer];
  [v20 setContentsGravity:v18];

  v21 = [*(a1 + 32) titleSlot];
  v22 = [v21 layer];
  [v22 setContents:v7];
}

void __71__UIActivityGroupViewController_collectionView_cellForItemAtIndexPath___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && [WeakRetained sequence] == *(a1 + 40))
  {
    v5 = [v4 imageView];
    [v5 setImage:v6];
  }
}

- (void)collectionView:(id)a3 prefetchItemsAtIndexPaths:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];
        v11 = [v10 _activityImageLoader];
        [v11 loadResourceIfNeeded];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v5 = [a4 contentView];
  [v5 updateConstraintsIfNeeded];
}

- (BOOL)collectionView:(id)a3 shouldHighlightItemAtIndexPath:(id)a4
{
  v5 = [(UIActivityGroupViewController *)self visibleActivityProxies:a3];

  return v5 || self->_hasActivities;
}

- (BOOL)collectionView:(id)a3 shouldSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIActivityGroupViewController *)self visibleActivityProxies];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v5];
    v9 = [(UIActivityGroupViewController *)self userDefaultsActivity];

    if (v8 == v9)
    {
      LOBYTE(v7) = 1;
    }

    else if (self->_hasActivities)
    {
      v7 = [(UIActivityGroupViewController *)self isEditing]^ 1;
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIActivityGroupViewController *)self visibleActivityProxies];

  if (v6)
  {
    v15 = [(UIActivityGroupViewController *)self delegate];
    v7 = [v5 item];

    [v15 activityGroupViewController:self didSelectActivityAtIndex:v7];
  }

  else
  {
    v8 = [(UIActivityGroupViewController *)self collectionView];
    v9 = [v8 cellForItemAtIndexPath:v5];
    [v9 setHighlighted:0];

    v15 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v5];

    v10 = [(UIActivityGroupViewController *)self dataSource];
    if (v10)
    {
      v11 = [v15 activityType];
      v12 = [v11 isEqualToString:@"com.apple.UIKit.activity.UserDefaults"];

      if (v12)
      {
        v13 = [v10 activityGroupViewController:self availableActivitiesInCategory:{-[UIActivityGroupViewController activityCategory](self, "activityCategory")}];
        [v15 setAvailableActivities:v13];
      }
    }

    v14 = [(UIActivityGroupViewController *)self delegate];
    [v14 activityGroupViewController:self didSelectActivity:v15];
  }
}

- (void)_updateItemSizeIfNeeded
{
  v3 = [(UIActivityGroupViewController *)self collectionViewLayout];
  [v3 collectionViewContentSize];
  v5 = v4;

  [(UIActivityGroupViewController *)self setPreferredContentSize:0.0, v5];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = UIActivityGroupViewController;
  [(UIActivityGroupViewController *)&v3 viewDidLayoutSubviews];
  [(UIActivityGroupViewController *)self _updateItemSizeIfNeeded];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = UIActivityGroupViewController;
  [(UIActivityGroupViewController *)&v4 viewWillDisappear:a3];
  [(UIActivityGroupViewController *)self _dismissPresentedMenuControllers];
}

- (void)traitCollectionDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = UIActivityGroupViewController;
  [(UIActivityGroupViewController *)&v5 traitCollectionDidChange:a3];
  v4 = [(UIActivityGroupViewController *)self collectionViewLayout];
  [v4 invalidateLayout];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(UIActivityGroupViewController *)self editingGestureRecognizer];

  if (v5 == v4)
  {
    v7 = [(UIActivityGroupViewController *)self activityGroupViewLayout];
    v8 = [v7 indexPathForItemRecognizedByGesture:v4];

    v9 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v8];
    v10 = [(UIActivityGroupViewController *)self userDefaultsActivity];
    if (v9 == v10)
    {
      goto LABEL_9;
    }

    v11 = [v9 activityType];
    v12 = [v11 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    if (v12)
    {
      v6 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v13 = [(UIActivityGroupViewController *)self collectionView];
    v10 = [v13 cellForItemAtIndexPath:v8];

    if (([v10 isHighlighted] & 1) != 0 || objc_msgSend(v10, "isSelected"))
    {
      v6 = 1;
    }

    else
    {
LABEL_9:
      v6 = 0;
    }

    goto LABEL_11;
  }

  v6 = 1;
LABEL_12:

  return v6;
}

- (void)handleEditingGesture:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 state] == 1)
  {
    [(UIActivityGroupViewController *)self setIndexPathForMenuActivity:0];
    [(UIActivityGroupViewController *)self setActivityIndexDidChangeWhileDragging:0];
    [(UIActivityGroupViewController *)self becomeFirstResponder];
    [(UIActivityGroupViewController *)self setEditing:1 animated:1];
  }

  if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4 || objc_msgSend(v4, "state") == 5)
  {
    [(UIActivityGroupViewController *)self setEditing:0 animated:1];
    if (!-[UIActivityGroupViewController activityIndexDidChangeWhileDragging](self, "activityIndexDidChangeWhileDragging") && [v4 state] == 3)
    {
      v5 = [(UIActivityGroupViewController *)self activityGroupViewLayout];
      v6 = [v5 indexPathForItemRecognizedByGesture:v4];

      v7 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v6];
      v8 = [(UIActivityGroupViewController *)self userDefaults];
      v9 = [v8 canHideActivity:v7];

      if (v9)
      {
        [(UIActivityGroupViewController *)self setIndexPathForMenuActivity:v6];
        if (v6)
        {
          v10 = [(UIActivityGroupViewController *)self collectionView];
          v11 = [v10 layoutAttributesForItemAtIndexPath:v6];
          [v11 frame];
          v13 = v12;
          v15 = v14;
          v17 = v16;
          v19 = v18;

          v32.origin.x = v13;
          v32.origin.y = v15;
          v32.size.width = v17;
          v32.size.height = v19;
          v33 = CGRectInset(v32, 5.0, 5.0);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;
          v24 = [MEMORY[0x1E69DCC68] sharedMenuController];
          v25 = objc_alloc(MEMORY[0x1E69DCC80]);
          v26 = _ShareSheetBundle();
          v27 = [v26 localizedStringForKey:@"Hide" value:@"Hide" table:@"Localizable"];
          v28 = [v25 initWithTitle:v27 action:sel__performHideActivityForMenuController_];
          v31[0] = v28;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

          [v24 setMenuItems:v29];
          v30 = [(UIActivityGroupViewController *)self collectionView];
          [v24 showMenuFromView:v30 rect:{x, y, width, height}];
        }
      }
    }
  }
}

- (void)_dismissPresentedMenuControllers
{
  v9 = [MEMORY[0x1E69DCC68] sharedMenuController];
  v3 = [v9 isMenuVisible];
  v4 = v9;
  if (v3)
  {
    v5 = [v9 menuItems];
    if ([v5 count] == 1)
    {
      v6 = [v5 firstObject];
      v7 = [v6 action];

      if (v7 == sel__performHideActivityForMenuController_)
      {
        v8 = [(UIActivityGroupViewController *)self collectionView];
        [v9 hideMenuFromView:v8];
      }
    }

    v4 = v9;
  }
}

- (id)targetIndexPathForMoveFromRowAtIndexPath:(id)a3 toProposedIndexPath:(id)a4
{
  v5 = a4;
  v6 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v5];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_10;
  }

  v7 = [(UIActivityGroupViewController *)self userDefaultsActivity];

  if (v6 == v7)
  {
    v16 = MEMORY[0x1E696AC88];
    v17 = [v5 item] - 1;
    v12 = [v5 section];
    v14 = v16;
    v13 = v17;
  }

  else
  {
    v8 = [v6 activityType];
    v9 = [v8 isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    if (!v9)
    {
      v18 = v5;
      goto LABEL_9;
    }

    v10 = MEMORY[0x1E696AC88];
    v11 = [v5 item];
    v12 = [v5 section];
    v13 = v11 + 1;
    v14 = v10;
  }

  v18 = [v14 indexPathForItem:v13 inSection:v12];
LABEL_9:
  v15 = v18;
LABEL_10:

  return v15;
}

- (id)collectionView:(id)a3 layout:(id)a4 moveItemAtIndexPath:(id)a5 toIndexPath:(id)a6
{
  v8 = a5;
  v9 = [(UIActivityGroupViewController *)self targetIndexPathForMoveFromRowAtIndexPath:v8 toProposedIndexPath:a6];
  if (v9)
  {
    v10 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v8];
    v11 = [(UIActivityGroupViewController *)self activities];
    v12 = [v11 indexOfObject:v10];

    v13 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v9];
    v14 = [(UIActivityGroupViewController *)self activities];
    v15 = [v14 indexOfObject:v13];

    v16 = [(UIActivityGroupViewController *)self activities];
    v17 = [v16 mutableCopy];

    [(NSArray *)v17 removeObjectAtIndex:v12];
    [(NSArray *)v17 insertObject:v10 atIndex:v15];
    activities = self->_activities;
    self->_activities = v17;
    v19 = v17;

    v20 = [(NSArray *)self->_visibleActivities mutableCopy];
    [v20 removeObjectAtIndex:{objc_msgSend(v8, "item")}];
    [v20 insertObject:v10 atIndex:{objc_msgSend(v9, "item")}];
    objc_storeStrong(&self->_visibleActivities, v20);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __87__UIActivityGroupViewController_collectionView_layout_moveItemAtIndexPath_toIndexPath___block_invoke;
    v27 = &unk_1E71F91A0;
    v28 = self;
    v29 = v20;
    v21 = v20;
    [(UIActivityGroupViewController *)self ignoreUserDefaultsChangesWhileUsingBlock:&v24];
    [(UIActivityGroupViewController *)self setActivityIndexDidChangeWhileDragging:1, v24, v25, v26, v27, v28];
    v22 = v9;
  }

  return v9;
}

void __87__UIActivityGroupViewController_collectionView_layout_moveItemAtIndexPath_toIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userDefaults];
  [v2 updateUserActivityOrderWithOrderedPartialActivities:*(a1 + 40)];
}

- (id)collectionView:(id)a3 layout:(id)a4 needsContainerViewForDraggingItemAtIndexPath:(id)a5
{
  v6 = [(UIActivityGroupViewController *)self parentViewController:a3];
  if (!v6)
  {
    v6 = self;
  }

  v7 = [(UIActivityGroupViewController *)v6 view];

  return v7;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 preferredSizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(UIActivityGroupViewController *)self traitCollection];
  v8 = [(UIActivityGroupViewController *)self view];
  [v8 frame];
  v10 = v9;
  v11 = [v7 preferredContentSizeCategory];
  v12 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v6];

  v13 = [(UIActivityGroupViewController *)self _titleTextForActivity:v12];
  [v7 displayScale];
  [_UIActivityGroupActivityCell preferredSizeForSheetWidth:v11 sizeCategory:v13 titleLabelText:v10 screenScale:v14];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)hideItemAtIndexPath:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UIActivityGroupViewController_hideItemAtIndexPath___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(UIActivityGroupViewController *)self ignoreUserDefaultsChangesWhileUsingBlock:v6];
}

void __53__UIActivityGroupViewController_hideItemAtIndexPath___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) activityForItemAtIndexPath:*(a1 + 40)];
  v2 = [*(a1 + 32) userDefaults];
  [v2 setActivity:v3 asHidden:1];

  [*(a1 + 32) _updateVisibleActivitiesAnimated:1];
}

- (void)registerForActivityUserDefaultsChanges
{
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = [(UIActivityGroupViewController *)self userDefaults];
  [v4 addObserver:self selector:sel_activityUserDefaultsDidChange_ name:@"_UIActivityUserDefaultsDidChangeNotification" object:v3];
}

- (void)unregisterForActivityUserDefaultsChanges
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"_UIActivityUserDefaultsDidChangeNotification" object:0];
}

- (void)ignoreUserDefaultsChangesWhileUsingBlock:(id)a3
{
  v4 = a3;
  [(UIActivityGroupViewController *)self unregisterForActivityUserDefaultsChanges];
  v4[2](v4);

  [(UIActivityGroupViewController *)self registerForActivityUserDefaultsChanges];
}

- (void)activityUserDefaultsDidChange:(id)a3
{
  v4 = [(UIActivityGroupViewController *)self userDefaults];
  v5 = [(UIActivityGroupViewController *)self activities];
  v9 = [v4 activitiesOrderedByUserActivityOrderForActivities:v5];

  v6 = [(UIActivityGroupViewController *)self userDefaultsActivity];
  [v6 setAvailableActivities:v9];

  v7 = [(UIActivityGroupViewController *)self presentedViewController];
  v8 = v7 == 0;

  [(UIActivityGroupViewController *)self _setActivities:v9 animated:v8];
}

- (void)registerClassForContentSizeCategoryChanges
{
  if (registerClassForContentSizeCategoryChanges_onceToken != -1)
  {
    [UIActivityGroupViewController registerClassForContentSizeCategoryChanges];
  }
}

void __75__UIActivityGroupViewController_registerClassForContentSizeCategoryChanges__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 addObserver:objc_opt_class() selector:sel_invalidatePreferredSizes name:*MEMORY[0x1E69DDC48] object:0];
}

- (UIActivityGroupViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGPoint)initialDraggingLocation
{
  x = self->_initialDraggingLocation.x;
  y = self->_initialDraggingLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)externalSafeInset
{
  top = self->_externalSafeInset.top;
  left = self->_externalSafeInset.left;
  bottom = self->_externalSafeInset.bottom;
  right = self->_externalSafeInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIActivityGroupViewControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end