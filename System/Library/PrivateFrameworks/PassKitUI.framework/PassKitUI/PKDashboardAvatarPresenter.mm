@interface PKDashboardAvatarPresenter
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardAvatarPresenter)initWithAvatarManager:(id)manager;
- (id)_contactForItem:(id)item;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (void)_configureView:(id)view item:(id)item;
- (void)swapSummaryInCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
@end

@implementation PKDashboardAvatarPresenter

- (PKDashboardAvatarPresenter)initWithAvatarManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = PKDashboardAvatarPresenter;
  v6 = [(PKDashboardAvatarPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_needsSizing = 1;
    objc_storeStrong(&v6->_avatarManager, manager);
  }

  return v7;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"avatarPresenter";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  itemCopy = item;
  v9 = [view dequeueReusableCellWithReuseIdentifier:@"avatarPresenter" forIndexPath:path];
  hostedContentView = [v9 hostedContentView];

  if (!hostedContentView)
  {
    v11 = [[PKAvatarHeaderView alloc] initWithContact:0 counterpartHandle:0];
    [v9 setHostedContentView:v11];
  }

  hostedContentView2 = [v9 hostedContentView];
  [(PKDashboardAvatarPresenter *)self _configureView:hostedContentView2 item:itemCopy];

  return v9;
}

- (void)updateCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  hostedContentView = [cellCopy hostedContentView];
  [(PKDashboardAvatarPresenter *)self _configureView:hostedContentView item:itemCopy];
}

- (void)swapSummaryInCell:(id)cell forItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  hostedContentView = [cellCopy hostedContentView];
  [(PKDashboardAvatarPresenter *)self _configureView:hostedContentView item:itemCopy];
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  itemCopy = item;
  viewCopy = view;
  pathCopy = path;
  if (self->_needsSizing)
  {
    sampleView = self->_sampleView;
    if (!sampleView)
    {
      v14 = [(PKDashboardAvatarPresenter *)self _contactForItem:itemCopy];
      v15 = [[PKAvatarHeaderView alloc] initWithContact:v14 counterpartHandle:0];
      v16 = self->_sampleView;
      self->_sampleView = v15;

      sampleView = self->_sampleView;
    }

    self->_needsSizing = 0;
    [(PKDashboardAvatarPresenter *)self _configureView:sampleView item:itemCopy];
    v17 = self->_sampleView;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKAvatarHeaderView *)v17 sizeThatFits:width + v18 * -2.0, 3.40282347e38];
    width = v19;
    height = v21;
    self->_viewSize.width = v19;
    self->_viewSize.height = v21;
  }

  else
  {
    width = self->_viewSize.width;
    height = self->_viewSize.height;
  }

  widthCopy = width;
  v24 = height;
  result.height = v24;
  result.width = widthCopy;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view
{
  if (trait)
  {
    if (toTrait)
    {
      toTraitCopy = toTrait;
      preferredContentSizeCategory = [trait preferredContentSizeCategory];
      preferredContentSizeCategory2 = [toTraitCopy preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);
      if (v10)
      {
        self->_needsSizing = 1;
        v11 = [[PKAvatarHeaderView alloc] initWithContact:0 counterpartHandle:0];
        sampleView = self->_sampleView;
        self->_sampleView = v11;
      }
    }
  }
}

- (id)_contactForItem:(id)item
{
  itemCopy = item;
  familyMember = [itemCopy familyMember];
  accountUser = [itemCopy accountUser];

  altDSID = [accountUser altDSID];
  nameComponents = [accountUser nameComponents];
  if (!altDSID)
  {
    altDSID = [familyMember altDSID];
  }

  v9 = [(PKContactAvatarManager *)self->_avatarManager cachedAvatarForAltDSID:altDSID];
  v10 = v9;
  v11 = MEMORY[0x1E69B8740];
  if (v9)
  {
    v12 = UIImagePNGRepresentation(v9);
    v13 = [v11 contactForFamilyMember:familyMember nameComponents:nameComponents imageData:v12];
  }

  else
  {
    v13 = [MEMORY[0x1E69B8740] contactForFamilyMember:familyMember nameComponents:nameComponents imageData:0];
  }

  return v13;
}

- (void)_configureView:(id)view item:(id)item
{
  viewCopy = view;
  itemCopy = item;
  if (viewCopy)
  {
    v8 = [(PKDashboardAvatarPresenter *)self _contactForItem:itemCopy];
    [viewCopy setContact:v8];
    objc_initWeak(&location, self);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __50__PKDashboardAvatarPresenter__configureView_item___block_invoke;
    v20 = &unk_1E801B2D8;
    objc_copyWeak(&v23, &location);
    v9 = v8;
    v21 = v9;
    v22 = viewCopy;
    v10 = _Block_copy(&v17);
    imageData = [v9 imageData];

    if (!imageData)
    {
      familyMember = [itemCopy familyMember];
      if (familyMember)
      {

LABEL_6:
        avatarManager = self->_avatarManager;
        familyMember2 = [itemCopy familyMember];
        accountUser = [itemCopy accountUser];
        [(PKContactAvatarManager *)avatarManager avatarForFamilyMember:familyMember2 accountUser:accountUser invitation:0 completion:v10];

        goto LABEL_7;
      }

      accountUser2 = [itemCopy accountUser];

      if (accountUser2)
      {
        goto LABEL_6;
      }
    }

LABEL_7:

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }
}

void __50__PKDashboardAvatarPresenter__configureView_item___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PKDashboardAvatarPresenter__configureView_item___block_invoke_2;
  v5[3] = &unk_1E8014828;
  objc_copyWeak(&v9, a1 + 6);
  v6 = v3;
  v7 = a1[4];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);

  objc_destroyWeak(&v9);
}

void __50__PKDashboardAvatarPresenter__configureView_item___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && *(a1 + 32))
  {
    v6 = WeakRetained;
    v3 = [*(a1 + 40) mutableCopy];
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = UIImagePNGRepresentation(v4);
      [v3 setImageData:v5];
    }

    else
    {
      [v3 setImageData:0];
    }

    [*(a1 + 48) setContact:*(a1 + 40)];

    WeakRetained = v6;
  }
}

@end