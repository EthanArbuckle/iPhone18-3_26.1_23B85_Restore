@interface UIActivityGroupViewController
- (BOOL)canBecomeFirstResponder;
- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path;
- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGPoint)initialDraggingLocation;
- (CGSize)collectionView:(id)view layout:(id)layout preferredSizeForItemAtIndexPath:(id)path;
- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)category activityProxies:(id)proxies;
- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)category userDefaults:(id)defaults userDefaultsIdentifier:(id)identifier;
- (UIActivityGroupViewControllerDataSource)dataSource;
- (UIActivityGroupViewControllerDelegate)delegate;
- (UIEdgeInsets)externalSafeInset;
- (id)activityForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view layout:(id)layout moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath;
- (id)collectionView:(id)view layout:(id)layout needsContainerViewForDraggingItemAtIndexPath:(id)path;
- (id)targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_dismissPresentedMenuControllers;
- (void)_performHideActivityForMenuController:(id)controller;
- (void)_setActivities:(id)activities animated:(BOOL)animated;
- (void)_setVisibleActivities:(id)activities animated:(BOOL)animated;
- (void)_updateItemSizeIfNeeded;
- (void)_updateVisibleActivitiesAnimated:(BOOL)animated;
- (void)activityUserDefaultsDidChange:(id)change;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)dealloc;
- (void)handleEditingGesture:(id)gesture;
- (void)hideItemAtIndexPath:(id)path;
- (void)ignoreUserDefaultsChangesWhileUsingBlock:(id)block;
- (void)registerClassForContentSizeCategoryChanges;
- (void)registerForActivityUserDefaultsChanges;
- (void)setActivities:(id)activities animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setExternalSafeInset:(UIEdgeInsets)inset;
- (void)traitCollectionDidChange:(id)change;
- (void)unregisterForActivityUserDefaultsChanges;
- (void)updateActivityProxies:(id)proxies;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation UIActivityGroupViewController

- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)category activityProxies:(id)proxies
{
  v6 = @"UIActivityCategoryShare";
  if (category != 1)
  {
    v6 = 0;
  }

  if (category)
  {
    v7 = v6;
  }

  else
  {
    v7 = @"UIActivityCategoryAction";
  }

  [(UIActivityGroupViewController *)self setVisibleActivityProxies:proxies];

  return [(UIActivityGroupViewController *)self initWithActivityCategory:category userDefaults:0 userDefaultsIdentifier:v7];
}

- (UIActivityGroupViewController)initWithActivityCategory:(int64_t)category userDefaults:(id)defaults userDefaultsIdentifier:(id)identifier
{
  defaultsCopy = defaults;
  identifierCopy = identifier;
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
    [(UIActivityGroupViewController *)v11 setActivityCategory:category];
    if (defaultsCopy)
    {
      v13 = [[_UIActivityUserDefaults alloc] initWithUnderlyingUserDefaults:defaultsCopy activityDefaultsKey:identifierCopy];
      [(UIActivityGroupViewController *)v12 setUserDefaults:v13];

      if ([(UIActivityGroupViewController *)v12 allowsUserCustomization])
      {
        v14 = [_UIUserDefaultsHostActivity alloc];
        userDefaults = [(UIActivityGroupViewController *)v12 userDefaults];
        v16 = [(_UIUserDefaultsActivity *)v14 initWithUserDefaults:userDefaults activityCategory:category];
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
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  collectionView = [(UIActivityGroupViewController *)self collectionView];
  [collectionView setBackgroundColor:clearColor];

  collectionView2 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView2 setOpaque:0];

  collectionView3 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView3 setShowsHorizontalScrollIndicator:0];

  collectionView4 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView4 setAlwaysBounceHorizontal:1];

  collectionView5 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView5 setDelaysContentTouches:0];

  collectionView6 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView6 setClipsToBounds:1];

  collectionView7 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView7 setPrefetchDataSource:self];

  collectionView8 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView8 _setFirstResponderKeyboardAvoidanceEnabled:0];

  collectionView9 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView9 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"activity"];

  collectionView10 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView10 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"placeholder"];

  collectionView11 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView11 registerClass:objc_opt_class() forCellWithReuseIdentifier:@"userDefaults"];

  userDefaults = [(UIActivityGroupViewController *)self userDefaults];
  if (userDefaults)
  {
    v16 = userDefaults;
    allowsUserCustomization = [(UIActivityGroupViewController *)self allowsUserCustomization];

    if (allowsUserCustomization)
    {
      v18 = [[_UIActivityDragGestureRecognizer alloc] initWithTarget:self action:sel_handleEditingGesture_];
      [(_UIActivityDragGestureRecognizer *)v18 setDelegate:self];
      [(_UIActivityDragGestureRecognizer *)v18 setMinimumPressDuration:0.35];
      collectionView12 = [(UIActivityGroupViewController *)self collectionView];
      [collectionView12 addGestureRecognizer:v18];

      activityGroupViewLayout = [(UIActivityGroupViewController *)self activityGroupViewLayout];
      [activityGroupViewLayout setEditingGestureRecognizer:v18];

      editingGestureRecognizer = self->_editingGestureRecognizer;
      self->_editingGestureRecognizer = &v18->super;

      [(UIActivityGroupViewController *)self registerForActivityUserDefaultsChanges];
    }
  }
}

- (void)setExternalSafeInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_externalSafeInset.top, v3), vceqq_f64(*&self->_externalSafeInset.bottom, v4)))) & 1) == 0)
  {
    self->_externalSafeInset = inset;
    right = inset.right;
    left = inset.left;
    bottom = inset.bottom;
    top = inset.top;
    activityGroupViewLayout = [(UIActivityGroupViewController *)self activityGroupViewLayout];
    [activityGroupViewLayout setExternalSafeInset:{top, left, bottom, right}];
    [activityGroupViewLayout invalidateLayout];
  }
}

- (void)setActivities:(id)activities animated:(BOOL)animated
{
  animatedCopy = animated;
  activitiesCopy = activities;
  userDefaultsActivity = [(UIActivityGroupViewController *)self userDefaultsActivity];

  if (userDefaultsActivity)
  {
    userDefaults = [(UIActivityGroupViewController *)self userDefaults];
    v8 = [userDefaults activitiesOrderedByUserActivityOrderForActivities:activitiesCopy];

    userDefaultsActivity2 = [(UIActivityGroupViewController *)self userDefaultsActivity];
    [userDefaultsActivity2 setAvailableActivities:v8];

    v10 = v8;
  }

  else
  {
    v10 = activitiesCopy;
  }

  v12 = v10;
  [(UIActivityGroupViewController *)self _setActivities:v10 animated:animatedCopy];
}

- (void)_setActivities:(id)activities animated:(BOOL)animated
{
  animatedCopy = animated;
  if (self->_activities != activities)
  {
    v6 = [activities copy];
    activities = self->_activities;
    self->_activities = v6;
  }

  [(UIActivityGroupViewController *)self _updateVisibleActivitiesAnimated:animatedCopy];
}

- (void)_updateVisibleActivitiesAnimated:(BOOL)animated
{
  animatedCopy = animated;
  activities = [(UIActivityGroupViewController *)self activities];
  userDefaults = [(UIActivityGroupViewController *)self userDefaults];

  if (userDefaults)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__UIActivityGroupViewController__updateVisibleActivitiesAnimated___block_invoke;
    v12[3] = &unk_1E71FB8B8;
    v12[4] = self;
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:v12];
    v8 = [activities filteredArrayUsingPredicate:v7];

    activities = v8;
  }

  userDefaultsActivity = [(UIActivityGroupViewController *)self userDefaultsActivity];

  if (userDefaultsActivity)
  {
    userDefaultsActivity2 = [(UIActivityGroupViewController *)self userDefaultsActivity];
    v11 = [activities arrayByAddingObject:userDefaultsActivity2];

    activities = v11;
  }

  [(UIActivityGroupViewController *)self _setVisibleActivities:activities animated:animatedCopy];
}

uint64_t __66__UIActivityGroupViewController__updateVisibleActivitiesAnimated___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 userDefaults];
  v5 = [v4 activityIsHidden:v3];

  return v5 ^ 1u;
}

- (void)_setVisibleActivities:(id)activities animated:(BOOL)animated
{
  animatedCopy = animated;
  activitiesCopy = activities;
  v7 = [(NSArray *)activitiesCopy count];
  self->_hasActivities = v7 != 0;
  if (v7)
  {
    if (animatedCopy && (-[NSArray count](self->_visibleActivities, "count") || (-[UIActivityGroupViewController view](self, "view"), v15 = objc_claimAutoreleasedReturnValue(), [v15 alpha], v17 = v16, v15, v17 != 1.0)))
    {
      collectionView = [(UIActivityGroupViewController *)self collectionView];
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke;
      v39 = &unk_1E71F91A0;
      selfCopy = self;
      v41 = activitiesCopy;
      [collectionView performBatchUpdates:&v36 completion:0];
    }

    else
    {
      if (self->_visibleActivities != activitiesCopy)
      {
        v18 = [(NSArray *)activitiesCopy copy];
        visibleActivities = self->_visibleActivities;
        self->_visibleActivities = v18;
      }

      collectionView2 = [(UIActivityGroupViewController *)self collectionView];
      [collectionView2 reloadData];
    }

    view = [(UIActivityGroupViewController *)self view];
    [view alpha];
    v23 = v22;

    if (v23 < 1.0)
    {
      v12 = MEMORY[0x1E69DD250];
      v13 = 0.35;
      if (!animatedCopy)
      {
        v13 = 0.0;
      }

      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_4;
      v34 = &unk_1E71F9510;
      selfCopy2 = self;
      v14 = &v31;
LABEL_17:
      [v12 animateWithDuration:v14 animations:{v13, v26, v27, v28, v29, selfCopy3, v31, v32, v33, v34, selfCopy2, v36, v37, v38, v39, selfCopy}];
    }
  }

  else
  {
    view2 = [(UIActivityGroupViewController *)self view];
    [view2 alpha];
    v11 = v10;

    if (v11 == 1.0)
    {
      v12 = MEMORY[0x1E69DD250];
      v13 = 0.35;
      if (!animatedCopy)
      {
        v13 = 0.0;
      }

      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __64__UIActivityGroupViewController__setVisibleActivities_animated___block_invoke_5;
      v29 = &unk_1E71F9510;
      selfCopy3 = self;
      v14 = &v26;
      goto LABEL_17;
    }
  }

  hasActivities = self->_hasActivities;
  collectionView3 = [(UIActivityGroupViewController *)self collectionView];
  [collectionView3 setScrollEnabled:hasActivities];
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

- (void)updateActivityProxies:(id)proxies
{
  [(UIActivityGroupViewController *)self setVisibleActivityProxies:proxies];
  collectionView = [(UIActivityGroupViewController *)self collectionView];
  [collectionView reloadData];
}

- (BOOL)canBecomeFirstResponder
{
  userDefaults = [(UIActivityGroupViewController *)self userDefaults];
  v3 = userDefaults != 0;

  return v3;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  animatedCopy = animated;
  editingCopy = editing;
  if ([(UIActivityGroupViewController *)self isEditing]!= editing)
  {
    userDefaults = [(UIActivityGroupViewController *)self userDefaults];

    if (userDefaults)
    {
      v8.receiver = self;
      v8.super_class = UIActivityGroupViewController;
      [(UIActivityGroupViewController *)&v8 setEditing:editingCopy animated:animatedCopy];
    }
  }
}

- (void)_performHideActivityForMenuController:(id)controller
{
  indexPathForMenuActivity = [(UIActivityGroupViewController *)self indexPathForMenuActivity];

  if (indexPathForMenuActivity)
  {
    indexPathForMenuActivity2 = [(UIActivityGroupViewController *)self indexPathForMenuActivity];
    [(UIActivityGroupViewController *)self hideItemAtIndexPath:indexPathForMenuActivity2];
  }
}

- (id)activityForItemAtIndexPath:(id)path
{
  if (path)
  {
    v4 = -[NSArray objectAtIndexedSubscript:](self->_visibleActivities, "objectAtIndexedSubscript:", [path item]);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  v5 = [(UIActivityGroupViewController *)self visibleActivityProxies:view];

  if (v5)
  {
    visibleActivityProxies = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v7 = [visibleActivityProxies count];

    return v7;
  }

  else
  {
    visibleActivities = self->_visibleActivities;

    return [(NSArray *)visibleActivities count];
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  visibleActivityProxies = [(UIActivityGroupViewController *)self visibleActivityProxies];

  if (visibleActivityProxies)
  {
    v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:@"activity" forIndexPath:pathCopy];
    titleLabel = [v9 titleLabel];
    [titleLabel setText:@"Hello"];

    titleLabel2 = [v9 titleLabel];
    [titleLabel2 setAlpha:0.0];

    visibleActivityProxies2 = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v13 = [visibleActivityProxies2 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    [v9 setActivityProxy:v13];

    visibleActivityProxies3 = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v15 = [visibleActivityProxies3 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    LODWORD(visibleActivityProxies2) = [v15 iconImageSlotID];

    visibleActivityProxies4 = [(UIActivityGroupViewController *)self visibleActivityProxies];
    v17 = [visibleActivityProxies4 objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    activityTitle = [v17 activityTitle];
    slotIdentifier = [activityTitle slotIdentifier];

    v20 = *MEMORY[0x1E69DDA98];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __71__UIActivityGroupViewController_collectionView_cellForItemAtIndexPath___block_invoke;
    v38[3] = &unk_1E71F95D0;
    v40 = visibleActivityProxies2;
    v21 = v9;
    v39 = v21;
    v41 = slotIdentifier;
    [v20 _performBlockAfterCATransactionCommits:v38];
    v22 = v39;
  }

  else
  {
    v22 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:pathCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    userDefaultsActivity = [(UIActivityGroupViewController *)self userDefaultsActivity];

    v25 = @"activity";
    if (isKindOfClass)
    {
      v25 = @"placeholder";
    }

    if (v22 == userDefaultsActivity)
    {
      v26 = @"userDefaults";
    }

    else
    {
      v26 = v25;
    }

    v21 = [viewCopy dequeueReusableCellWithReuseIdentifier:v26 forIndexPath:pathCopy];
    [v21 setSequence:{objc_msgSend(v21, "sequence") + 1}];
    if (isKindOfClass)
    {
      v27 = @"\n";
    }

    else
    {
      v27 = [(UIActivityGroupViewController *)self _titleTextForActivity:v22];
    }

    titleLabel3 = [v21 titleLabel];
    [titleLabel3 setText:v27];

    if (isKindOfClass)
    {
      imageView = [v21 imageView];
      [imageView setImage:0];
    }

    else
    {

      imageView2 = [v21 imageView];
      [imageView2 setImage:0];

      sequence = [v21 sequence];
      objc_initWeak(&location, v21);
      traitCollection = [(UIActivityGroupViewController *)self traitCollection];
      [v22 setUserInterfaceStyle:{objc_msgSend(traitCollection, "userInterfaceStyle")}];

      _activityImageLoader = [v22 _activityImageLoader];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __71__UIActivityGroupViewController_collectionView_cellForItemAtIndexPath___block_invoke_2;
      v35[3] = &unk_1E71FB908;
      objc_copyWeak(v36, &location);
      v36[1] = sequence;
      [_activityImageLoader getResourceWithBlock:v35];

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

- (void)collectionView:(id)view prefetchItemsAtIndexPaths:(id)paths
{
  v17 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(pathsCopy);
        }

        v10 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:*(*(&v12 + 1) + 8 * v9)];
        _activityImageLoader = [v10 _activityImageLoader];
        [_activityImageLoader loadResourceIfNeeded];

        ++v9;
      }

      while (v7 != v9);
      v7 = [pathsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  contentView = [cell contentView];
  [contentView updateConstraintsIfNeeded];
}

- (BOOL)collectionView:(id)view shouldHighlightItemAtIndexPath:(id)path
{
  v5 = [(UIActivityGroupViewController *)self visibleActivityProxies:view];

  return v5 || self->_hasActivities;
}

- (BOOL)collectionView:(id)view shouldSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  visibleActivityProxies = [(UIActivityGroupViewController *)self visibleActivityProxies];

  if (visibleActivityProxies)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:pathCopy];
    userDefaultsActivity = [(UIActivityGroupViewController *)self userDefaultsActivity];

    if (v8 == userDefaultsActivity)
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

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  visibleActivityProxies = [(UIActivityGroupViewController *)self visibleActivityProxies];

  if (visibleActivityProxies)
  {
    delegate = [(UIActivityGroupViewController *)self delegate];
    item = [pathCopy item];

    [delegate activityGroupViewController:self didSelectActivityAtIndex:item];
  }

  else
  {
    collectionView = [(UIActivityGroupViewController *)self collectionView];
    v9 = [collectionView cellForItemAtIndexPath:pathCopy];
    [v9 setHighlighted:0];

    delegate = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:pathCopy];

    dataSource = [(UIActivityGroupViewController *)self dataSource];
    if (dataSource)
    {
      activityType = [delegate activityType];
      v12 = [activityType isEqualToString:@"com.apple.UIKit.activity.UserDefaults"];

      if (v12)
      {
        v13 = [dataSource activityGroupViewController:self availableActivitiesInCategory:{-[UIActivityGroupViewController activityCategory](self, "activityCategory")}];
        [delegate setAvailableActivities:v13];
      }
    }

    delegate2 = [(UIActivityGroupViewController *)self delegate];
    [delegate2 activityGroupViewController:self didSelectActivity:delegate];
  }
}

- (void)_updateItemSizeIfNeeded
{
  collectionViewLayout = [(UIActivityGroupViewController *)self collectionViewLayout];
  [collectionViewLayout collectionViewContentSize];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = UIActivityGroupViewController;
  [(UIActivityGroupViewController *)&v4 viewWillDisappear:disappear];
  [(UIActivityGroupViewController *)self _dismissPresentedMenuControllers];
}

- (void)traitCollectionDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = UIActivityGroupViewController;
  [(UIActivityGroupViewController *)&v5 traitCollectionDidChange:change];
  collectionViewLayout = [(UIActivityGroupViewController *)self collectionViewLayout];
  [collectionViewLayout invalidateLayout];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  editingGestureRecognizer = [(UIActivityGroupViewController *)self editingGestureRecognizer];

  if (editingGestureRecognizer == beginCopy)
  {
    activityGroupViewLayout = [(UIActivityGroupViewController *)self activityGroupViewLayout];
    v8 = [activityGroupViewLayout indexPathForItemRecognizedByGesture:beginCopy];

    v9 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v8];
    userDefaultsActivity = [(UIActivityGroupViewController *)self userDefaultsActivity];
    if (v9 == userDefaultsActivity)
    {
      goto LABEL_9;
    }

    activityType = [v9 activityType];
    v12 = [activityType isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    if (v12)
    {
      v6 = 0;
LABEL_11:

      goto LABEL_12;
    }

    collectionView = [(UIActivityGroupViewController *)self collectionView];
    userDefaultsActivity = [collectionView cellForItemAtIndexPath:v8];

    if (([userDefaultsActivity isHighlighted] & 1) != 0 || objc_msgSend(userDefaultsActivity, "isSelected"))
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

- (void)handleEditingGesture:(id)gesture
{
  v31[1] = *MEMORY[0x1E69E9840];
  gestureCopy = gesture;
  if ([gestureCopy state] == 1)
  {
    [(UIActivityGroupViewController *)self setIndexPathForMenuActivity:0];
    [(UIActivityGroupViewController *)self setActivityIndexDidChangeWhileDragging:0];
    [(UIActivityGroupViewController *)self becomeFirstResponder];
    [(UIActivityGroupViewController *)self setEditing:1 animated:1];
  }

  if ([gestureCopy state] == 3 || objc_msgSend(gestureCopy, "state") == 4 || objc_msgSend(gestureCopy, "state") == 5)
  {
    [(UIActivityGroupViewController *)self setEditing:0 animated:1];
    if (!-[UIActivityGroupViewController activityIndexDidChangeWhileDragging](self, "activityIndexDidChangeWhileDragging") && [gestureCopy state] == 3)
    {
      activityGroupViewLayout = [(UIActivityGroupViewController *)self activityGroupViewLayout];
      v6 = [activityGroupViewLayout indexPathForItemRecognizedByGesture:gestureCopy];

      v7 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v6];
      userDefaults = [(UIActivityGroupViewController *)self userDefaults];
      v9 = [userDefaults canHideActivity:v7];

      if (v9)
      {
        [(UIActivityGroupViewController *)self setIndexPathForMenuActivity:v6];
        if (v6)
        {
          collectionView = [(UIActivityGroupViewController *)self collectionView];
          v11 = [collectionView layoutAttributesForItemAtIndexPath:v6];
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
          mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
          v25 = objc_alloc(MEMORY[0x1E69DCC80]);
          v26 = _ShareSheetBundle();
          v27 = [v26 localizedStringForKey:@"Hide" value:@"Hide" table:@"Localizable"];
          v28 = [v25 initWithTitle:v27 action:sel__performHideActivityForMenuController_];
          v31[0] = v28;
          v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];

          [mEMORY[0x1E69DCC68] setMenuItems:v29];
          collectionView2 = [(UIActivityGroupViewController *)self collectionView];
          [mEMORY[0x1E69DCC68] showMenuFromView:collectionView2 rect:{x, y, width, height}];
        }
      }
    }
  }
}

- (void)_dismissPresentedMenuControllers
{
  mEMORY[0x1E69DCC68] = [MEMORY[0x1E69DCC68] sharedMenuController];
  isMenuVisible = [mEMORY[0x1E69DCC68] isMenuVisible];
  v4 = mEMORY[0x1E69DCC68];
  if (isMenuVisible)
  {
    menuItems = [mEMORY[0x1E69DCC68] menuItems];
    if ([menuItems count] == 1)
    {
      firstObject = [menuItems firstObject];
      action = [firstObject action];

      if (action == sel__performHideActivityForMenuController_)
      {
        collectionView = [(UIActivityGroupViewController *)self collectionView];
        [mEMORY[0x1E69DCC68] hideMenuFromView:collectionView];
      }
    }

    v4 = mEMORY[0x1E69DCC68];
  }
}

- (id)targetIndexPathForMoveFromRowAtIndexPath:(id)path toProposedIndexPath:(id)indexPath
{
  indexPathCopy = indexPath;
  v6 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:indexPathCopy];
  if (!v6)
  {
    v15 = 0;
    goto LABEL_10;
  }

  userDefaultsActivity = [(UIActivityGroupViewController *)self userDefaultsActivity];

  if (v6 == userDefaultsActivity)
  {
    v16 = MEMORY[0x1E696AC88];
    v17 = [indexPathCopy item] - 1;
    section = [indexPathCopy section];
    v14 = v16;
    v13 = v17;
  }

  else
  {
    activityType = [v6 activityType];
    v9 = [activityType isEqualToString:@"com.apple.UIKit.activity.AirDrop"];

    if (!v9)
    {
      v18 = indexPathCopy;
      goto LABEL_9;
    }

    v10 = MEMORY[0x1E696AC88];
    item = [indexPathCopy item];
    section = [indexPathCopy section];
    v13 = item + 1;
    v14 = v10;
  }

  v18 = [v14 indexPathForItem:v13 inSection:section];
LABEL_9:
  v15 = v18;
LABEL_10:

  return v15;
}

- (id)collectionView:(id)view layout:(id)layout moveItemAtIndexPath:(id)path toIndexPath:(id)indexPath
{
  pathCopy = path;
  v9 = [(UIActivityGroupViewController *)self targetIndexPathForMoveFromRowAtIndexPath:pathCopy toProposedIndexPath:indexPath];
  if (v9)
  {
    v10 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:pathCopy];
    activities = [(UIActivityGroupViewController *)self activities];
    v12 = [activities indexOfObject:v10];

    v13 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:v9];
    activities2 = [(UIActivityGroupViewController *)self activities];
    v15 = [activities2 indexOfObject:v13];

    activities3 = [(UIActivityGroupViewController *)self activities];
    v17 = [activities3 mutableCopy];

    [(NSArray *)v17 removeObjectAtIndex:v12];
    [(NSArray *)v17 insertObject:v10 atIndex:v15];
    activities = self->_activities;
    self->_activities = v17;
    v19 = v17;

    v20 = [(NSArray *)self->_visibleActivities mutableCopy];
    [v20 removeObjectAtIndex:{objc_msgSend(pathCopy, "item")}];
    [v20 insertObject:v10 atIndex:{objc_msgSend(v9, "item")}];
    objc_storeStrong(&self->_visibleActivities, v20);
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __87__UIActivityGroupViewController_collectionView_layout_moveItemAtIndexPath_toIndexPath___block_invoke;
    v27 = &unk_1E71F91A0;
    selfCopy = self;
    v29 = v20;
    v21 = v20;
    [(UIActivityGroupViewController *)self ignoreUserDefaultsChangesWhileUsingBlock:&v24];
    [(UIActivityGroupViewController *)self setActivityIndexDidChangeWhileDragging:1, v24, v25, v26, v27, selfCopy];
    v22 = v9;
  }

  return v9;
}

void __87__UIActivityGroupViewController_collectionView_layout_moveItemAtIndexPath_toIndexPath___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userDefaults];
  [v2 updateUserActivityOrderWithOrderedPartialActivities:*(a1 + 40)];
}

- (id)collectionView:(id)view layout:(id)layout needsContainerViewForDraggingItemAtIndexPath:(id)path
{
  selfCopy = [(UIActivityGroupViewController *)self parentViewController:view];
  if (!selfCopy)
  {
    selfCopy = self;
  }

  view = [(UIActivityGroupViewController *)selfCopy view];

  return view;
}

- (CGSize)collectionView:(id)view layout:(id)layout preferredSizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  traitCollection = [(UIActivityGroupViewController *)self traitCollection];
  view = [(UIActivityGroupViewController *)self view];
  [view frame];
  v10 = v9;
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v12 = [(UIActivityGroupViewController *)self activityForItemAtIndexPath:pathCopy];

  v13 = [(UIActivityGroupViewController *)self _titleTextForActivity:v12];
  [traitCollection displayScale];
  [_UIActivityGroupActivityCell preferredSizeForSheetWidth:preferredContentSizeCategory sizeCategory:v13 titleLabelText:v10 screenScale:v14];
  v16 = v15;
  v18 = v17;

  v19 = v16;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)hideItemAtIndexPath:(id)path
{
  pathCopy = path;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__UIActivityGroupViewController_hideItemAtIndexPath___block_invoke;
  v6[3] = &unk_1E71F91A0;
  v6[4] = self;
  v7 = pathCopy;
  v5 = pathCopy;
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  userDefaults = [(UIActivityGroupViewController *)self userDefaults];
  [defaultCenter addObserver:self selector:sel_activityUserDefaultsDidChange_ name:@"_UIActivityUserDefaultsDidChangeNotification" object:userDefaults];
}

- (void)unregisterForActivityUserDefaultsChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"_UIActivityUserDefaultsDidChangeNotification" object:0];
}

- (void)ignoreUserDefaultsChangesWhileUsingBlock:(id)block
{
  blockCopy = block;
  [(UIActivityGroupViewController *)self unregisterForActivityUserDefaultsChanges];
  blockCopy[2](blockCopy);

  [(UIActivityGroupViewController *)self registerForActivityUserDefaultsChanges];
}

- (void)activityUserDefaultsDidChange:(id)change
{
  userDefaults = [(UIActivityGroupViewController *)self userDefaults];
  activities = [(UIActivityGroupViewController *)self activities];
  v9 = [userDefaults activitiesOrderedByUserActivityOrderForActivities:activities];

  userDefaultsActivity = [(UIActivityGroupViewController *)self userDefaultsActivity];
  [userDefaultsActivity setAvailableActivities:v9];

  presentedViewController = [(UIActivityGroupViewController *)self presentedViewController];
  v8 = presentedViewController == 0;

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