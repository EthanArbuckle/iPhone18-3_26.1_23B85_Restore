@interface PKDashboardPassMessagePresenter
- (BOOL)messagesView:(id)view shouldEnqueueEventForView:(id)forView;
- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path;
- (PKDashboardPassMessagePresenter)initWithPassGroupView:(id)view;
- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path;
- (id)collectionViewCellClasses;
- (unint64_t)_indexForIdentifier:(id)identifier inMessages:(id)messages;
- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path;
- (void)messagesView:(id)view scrolledToMessageWithIdentifier:(id)identifier;
- (void)traitCollectionDidChangeFromTrait:(id)trait toTrait:(id)toTrait inCollectionView:(id)view;
@end

@implementation PKDashboardPassMessagePresenter

- (PKDashboardPassMessagePresenter)initWithPassGroupView:(id)view
{
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = PKDashboardPassMessagePresenter;
  v6 = [(PKDashboardPassMessagePresenter *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_groupView, view);
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

- (id)cellForItem:(id)item inCollectionView:(id)view atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  itemCopy = item;
  v11 = [(PKDashboardPassMessagePresenter *)self _identifierForItem:itemCopy];
  v12 = [viewCopy dequeueReusableCellWithReuseIdentifier:v11 forIndexPath:pathCopy];

  [(PKDashboardPassMessagePresenter *)self _configureCell:v12 forItem:itemCopy inCollectionView:viewCopy forIndexPath:pathCopy];

  return v12;
}

- (CGSize)sizeForItem:(id)item inCollectionView:(id)view safeAreaWidth:(double)width atIndexPath:(id)path
{
  sampleMessageView = self->_sampleMessageView;
  messages = [item messages];
  [(PKDashboardMessagesView *)sampleMessageView updateWithMessages:messages currentIndex:0];

  v10 = self->_sampleMessageView;

  [(PKDashboardMessagesView *)v10 sizeThatFits:width, 3.40282347e38];
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)_configureCell:(id)cell forItem:(id)item inCollectionView:(id)view forIndexPath:(id)path
{
  cellCopy = cell;
  itemCopy = item;
  hostedContentView = [cellCopy hostedContentView];
  if (!hostedContentView)
  {
    v10 = [PKDashboardMessagesView alloc];
    hostedContentView = [(PKDashboardMessagesView *)v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    [(PKDashboardMessagesView *)hostedContentView setDelegate:self];
    [cellCopy setHostedContentView:hostedContentView];
  }

  messages = [itemCopy messages];
  v12 = messages;
  currentIdentifier = self->_currentIdentifier;
  if (currentIdentifier)
  {
    v14 = [(PKDashboardPassMessagePresenter *)self _indexForIdentifier:currentIdentifier inMessages:messages];
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
    firstObject = [messages firstObject];
    identifier = [firstObject identifier];
    v18 = self->_currentIdentifier;
    self->_currentIdentifier = identifier;

    self->_currentIndex = 0;
  }

  [cellCopy setAccessibilityIdentifier:*MEMORY[0x1E69B9958]];
  [(PKDashboardMessagesView *)hostedContentView updateWithMessages:v12 currentIndex:self->_currentIndex];
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
        v11 = [PKDashboardMessagesView alloc];
        v12 = [(PKDashboardMessagesView *)v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
        sampleMessageView = self->_sampleMessageView;
        self->_sampleMessageView = v12;
      }
    }
  }
}

- (void)messagesView:(id)view scrolledToMessageWithIdentifier:(id)identifier
{
  objc_storeStrong(&self->_currentIdentifier, identifier);
  identifierCopy = identifier;
  viewCopy = view;
  currentIdentifier = self->_currentIdentifier;
  messages = [viewCopy messages];

  v10 = [(PKDashboardPassMessagePresenter *)self _indexForIdentifier:currentIdentifier inMessages:messages];
  self->_currentIndex = v10;
}

- (BOOL)messagesView:(id)view shouldEnqueueEventForView:(id)forView
{
  forViewCopy = forView;
  if ([forViewCopy type] == 2 && (objc_msgSend(forViewCopy, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    viewEventEnqueued = self->_viewEventEnqueued;
    if (!viewEventEnqueued)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_viewEventEnqueued;
      self->_viewEventEnqueued = v8;

      viewEventEnqueued = self->_viewEventEnqueued;
    }

    identifier = [forViewCopy identifier];
    v11 = [(NSMutableDictionary *)viewEventEnqueued objectForKeyedSubscript:identifier];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      v13 = 0;
    }

    else
    {
      v13 = 1;
      v15 = [MEMORY[0x1E696AD98] numberWithBool:1];
      v16 = self->_viewEventEnqueued;
      identifier2 = [forViewCopy identifier];
      [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:identifier2];
    }
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (unint64_t)_indexForIdentifier:(id)identifier inMessages:(id)messages
{
  identifierCopy = identifier;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__PKDashboardPassMessagePresenter__indexForIdentifier_inMessages___block_invoke;
  v9[3] = &unk_1E801D5F8;
  v10 = identifierCopy;
  v6 = identifierCopy;
  v7 = [messages indexOfObjectPassingTest:v9];

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