@interface PKDashboardPassMessagePresenter
- (BOOL)messagesView:(id)a3 shouldEnqueueEventForView:(id)a4;
- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6;
- (PKDashboardPassMessagePresenter)initWithPassGroupView:(id)a3;
- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5;
- (id)collectionViewCellClasses;
- (unint64_t)_indexForIdentifier:(id)a3 inMessages:(id)a4;
- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6;
- (void)messagesView:(id)a3 scrolledToMessageWithIdentifier:(id)a4;
- (void)traitCollectionDidChangeFromTrait:(id)a3 toTrait:(id)a4 inCollectionView:(id)a5;
@end

@implementation PKDashboardPassMessagePresenter

- (PKDashboardPassMessagePresenter)initWithPassGroupView:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = PKDashboardPassMessagePresenter;
  v6 = [(PKDashboardPassMessagePresenter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupView, a3);
    v8 = [PKDashboardMessagesView alloc];
    v9 = [(PKDashboardMessagesView *)v8 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    sampleMessageView = v7->_sampleMessageView;
    v7->_sampleMessageView = v9;
  }

  return v7;
}

- (id)collectionViewCellClasses
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"passMessagePresenter";
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (id)cellForItem:(id)a3 inCollectionView:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PKDashboardPassMessagePresenter *)self _identifierForItem:v10];
  v12 = [v9 dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:v8];

  [(PKDashboardPassMessagePresenter *)self _configureCell:v12 forItem:v10 inCollectionView:v9 forIndexPath:v8];

  return v12;
}

- (CGSize)sizeForItem:(id)a3 inCollectionView:(id)a4 safeAreaWidth:(double)a5 atIndexPath:(id)a6
{
  sampleMessageView = self->_sampleMessageView;
  v9 = [a3 messages];
  [(PKDashboardMessagesView *)sampleMessageView updateWithMessages:v9 currentIndex:0];

  v10 = self->_sampleMessageView;

  [(PKDashboardMessagesView *)v10 sizeThatFits:a5, 3.40282347e38];
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_configureCell:(id)a3 forItem:(id)a4 inCollectionView:(id)a5 forIndexPath:(id)a6
{
  v19 = a3;
  v8 = a4;
  v9 = [v19 hostedContentView];
  if (!v9)
  {
    v10 = [PKDashboardMessagesView alloc];
    v9 = [(PKDashboardMessagesView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PKDashboardMessagesView *)v9 setDelegate:self];
    [v19 setHostedContentView:v9];
  }

  v11 = [v8 messages];
  v12 = v11;
  currentIdentifier = self->_currentIdentifier;
  if (currentIdentifier)
  {
    v14 = [(PKDashboardPassMessagePresenter *)self _indexForIdentifier:currentIdentifier inMessages:v11];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v12 count];
      if (v15 - 1 < self->_currentIndex)
      {
        self->_currentIndex = v15 - 1;
      }
    }

    else
    {
      self->_currentIndex = v14;
    }
  }

  else
  {
    v16 = [v11 firstObject];
    v17 = [v16 identifier];
    v18 = self->_currentIdentifier;
    self->_currentIdentifier = v17;

    self->_currentIndex = 0;
  }

  [v19 setAccessibilityIdentifier:*MEMORY[0x1E69B9958]];
  [(PKDashboardMessagesView *)v9 updateWithMessages:v12 currentIndex:self->_currentIndex];
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
        v11 = [PKDashboardMessagesView alloc];
        v12 = [(PKDashboardMessagesView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleMessageView = self->_sampleMessageView;
        self->_sampleMessageView = v12;
      }
    }
  }
}

- (void)messagesView:(id)a3 scrolledToMessageWithIdentifier:(id)a4
{
  objc_storeStrong(&self->_currentIdentifier, a4);
  v7 = a4;
  v8 = a3;
  currentIdentifier = self->_currentIdentifier;
  v11 = [v8 messages];

  v10 = [(PKDashboardPassMessagePresenter *)self _indexForIdentifier:currentIdentifier inMessages:v11];
  self->_currentIndex = v10;
}

- (BOOL)messagesView:(id)a3 shouldEnqueueEventForView:(id)a4
{
  v5 = a4;
  if ([v5 type] == 2 && (objc_msgSend(v5, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    viewEventEnqueued = self->_viewEventEnqueued;
    if (!viewEventEnqueued)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_viewEventEnqueued;
      self->_viewEventEnqueued = v8;

      viewEventEnqueued = self->_viewEventEnqueued;
    }

    v10 = [v5 identifier];
    v11 = [(NSMutableDictionary *)viewEventEnqueued objectForKeyedSubscript:v10];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1;
      v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v16 = self->_viewEventEnqueued;
      v17 = [v5 identifier];
      [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:v17];
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (unint64_t)_indexForIdentifier:(id)a3 inMessages:(id)a4
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKDashboardPassMessagePresenter__indexForIdentifier_inMessages___block_invoke;
  v9[3] = &unk_1E801D5F8;
  v10 = v5;
  v6 = v5;
  v7 = [a4 indexOfObjectPassingTest:v9];

  return v7;
}

uint64_t __66__PKDashboardPassMessagePresenter__indexForIdentifier_inMessages___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (v5 && v6)
    {
      v8 = [v5 isEqualToString:v6];
    }
  }

  return v8;
}

@end