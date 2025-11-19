@interface PKDashboardAvatarPresenter
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardAvatarPresenter)initWithAvatarManager:(id)a3;
- (id)_contactForItem:(id)a3;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (void)_configureView:(id)a3 item:(id)a4;
- (void)swapSummaryInCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6;
@end

@implementation PKDashboardAvatarPresenter

- (PKDashboardAvatarPresenter)initWithAvatarManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PKDashboardAvatarPresenter;
  v6 = [(PKDashboardAvatarPresenter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_needsSizing = 1;
    objc_storeStrong(&v6->_avatarManager, a3);
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

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a3;
  v9 = [a4 dequeueReusableCellWithReuseIdentifier:@"avatarPresenter" forIndexPath:a5];
  v10 = [v9 hostedContentView];

  if (!v10)
  {
    v11 = [[PKAvatarHeaderView alloc] initWithContact:0 counterpartHandle:0];
    [v9 setHostedContentView:v11];
  }

  v12 = [v9 hostedContentView];
  [(PKDashboardAvatarPresenter *)self _configureView:v12 item:v8];

  return v9;
}

- (void)updateCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v8 = a4;
  v9 = [v10 hostedContentView];
  [(PKDashboardAvatarPresenter *)self _configureView:v9 item:v8];
}

- (void)swapSummaryInCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v8 = a4;
  v9 = [v10 hostedContentView];
  [(PKDashboardAvatarPresenter *)self _configureView:v9 item:v8];
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (self->_needsSizing)
  {
    sampleView = self->_sampleView;
    if (!sampleView)
    {
      v14 = [(PKDashboardAvatarPresenter *)self _contactForItem:v10];
      v15 = [[PKAvatarHeaderView alloc] initWithContact:v14 counterpartHandle:0];
      v16 = self->_sampleView;
      self->_sampleView = v15;

      sampleView = self->_sampleView;
    }

    self->_needsSizing = 0;
    [(PKDashboardAvatarPresenter *)self _configureView:sampleView item:v10];
    v17 = self->_sampleView;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    [(PKAvatarHeaderView *)v17 sizeThatFits:a5 + v18 * -2.0, 3.40282347e38];
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

  v23 = width;
  v24 = height;
  result.height = v24;
  result.width = v23;
  return result;
}

- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5
{
  if (a3)
  {
    if (a4)
    {
      v7 = a4;
      v8 = [a3 preferredContentSizeCategory];
      v9 = [v7 preferredContentSizeCategory];

      v10 = UIContentSizeCategoryCompareToCategory(v8, v9);
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

- (id)_contactForItem:(id)a3
{
  v4 = a3;
  v5 = [v4 familyMember];
  v6 = [v4 accountUser];

  v7 = [v6 altDSID];
  v8 = [v6 nameComponents];
  if (!v7)
  {
    v7 = [v5 altDSID];
  }

  v9 = [(PKContactAvatarManager *)self->_avatarManager cachedAvatarForAltDSID:v7];
  v10 = v9;
  v11 = MEMORY[0x1E69B8740];
  if (v9)
  {
    v12 = UIImagePNGRepresentation(v9);
    v13 = [v11 contactForFamilyMember:v5 nameComponents:v8 imageData:v12];
  }

  else
  {
    v13 = [MEMORY[0x1E69B8740] contactForFamilyMember:v5 nameComponents:v8 imageData:0];
  }

  return v13;
}

- (void)_configureView:(id)a3 item:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(PKDashboardAvatarPresenter *)self _contactForItem:v7];
    [v6 setContact:v8];
    objc_initWeak(&location, self);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __50__PKDashboardAvatarPresenter__configureView_item___block_invoke;
    v20 = &unk_1E801B2D8;
    objc_copyWeak(&v23, &location);
    v9 = v8;
    v21 = v9;
    v22 = v6;
    v10 = _Block_copy(&v17);
    v11 = [v9 imageData];

    if (!v11)
    {
      v12 = [v7 familyMember];
      if (v12)
      {

LABEL_6:
        avatarManager = self->_avatarManager;
        v15 = [v7 familyMember];
        v16 = [v7 accountUser];
        [(PKContactAvatarManager *)avatarManager avatarForFamilyMember:v15 accountUser:v16 invitation:0 completion:v10];

        goto LABEL_7;
      }

      v13 = [v7 accountUser];

      if (v13)
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