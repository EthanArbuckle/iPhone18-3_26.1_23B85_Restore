@interface PXHorizontalCollectionGadgetProvider
- (PXHorizontalCollectionGadgetProvider)init;
- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)provider title:(id)title;
- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)provider title:(id)title horizontalCollectionGadgetClass:(Class)class;
- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)identifier;
- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)identifier contentGadgetProvider:(id)provider title:(id)title horizontalCollectionGadgetClass:(Class)class;
- (id)_createHorizontalGadget;
- (void)_updateHorizontalGadget;
- (void)generateGadgets;
- (void)setColumnSpanForTraitCollection:(id)collection;
- (void)setDefaultColumnSpan:(int64_t)span;
- (void)setGadgetType:(unint64_t)type;
- (void)setPrefersPagingEnabled:(BOOL)enabled;
@end

@implementation PXHorizontalCollectionGadgetProvider

- (id)_createHorizontalGadget
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(self->_horizontalCollectionGadgetClass);
  v9[0] = self->_contentGadgetProvider;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v3 initWithProviders:v4];

  [v5 setDefaultColumnSpan:{-[PXHorizontalCollectionGadgetProvider defaultColumnSpan](self, "defaultColumnSpan")}];
  columnSpanForTraitCollection = [(PXHorizontalCollectionGadgetProvider *)self columnSpanForTraitCollection];
  [v5 setColumnSpans:columnSpanForTraitCollection];

  [v5 setGadgetType:{-[PXHorizontalCollectionGadgetProvider gadgetType](self, "gadgetType")}];
  [v5 setHeaderStyle:{-[PXHorizontalCollectionGadgetProvider headerStyle](self, "headerStyle")}];
  [v5 setHorizontalGadgetDelegate:self];
  [v5 setPrefersPagingEnabled:self->_prefersPagingEnabled];
  [v5 setIsFixedHeight:{-[PXHorizontalCollectionGadgetProvider isFixedHeight](self, "isFixedHeight")}];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __63__PXHorizontalCollectionGadgetProvider__createHorizontalGadget__block_invoke;
  v8[3] = &unk_1E7740460;
  v8[4] = self;
  [v5 performChanges:v8];

  return v5;
}

void __63__PXHorizontalCollectionGadgetProvider__createHorizontalGadget__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 title];
  [v3 setCollectionTitle:v4];
}

- (void)_updateHorizontalGadget
{
  estimatedNumberOfGadgets = [(PXHorizontalCollectionGadgetProvider *)self estimatedNumberOfGadgets];
  gadgets = [(PXGadgetProvider *)self gadgets];
  v5 = [gadgets count];

  if (estimatedNumberOfGadgets)
  {
    if (self->_horizontalGadget || ([(PXHorizontalCollectionGadgetProvider *)self _createHorizontalGadget], v6 = objc_claimAutoreleasedReturnValue(), horizontalGadget = self->_horizontalGadget, self->_horizontalGadget = v6, horizontalGadget, self->_horizontalGadget))
    {
      if (!v5)
      {
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __63__PXHorizontalCollectionGadgetProvider__updateHorizontalGadget__block_invoke;
        v8[3] = &unk_1E773EAE0;
        v8[4] = self;
        [(PXGadgetProvider *)self performChanges:v8];
      }
    }
  }

  else if (v5)
  {

    [(PXGadgetProvider *)self performChanges:&__block_literal_global_94806];
  }
}

void __63__PXHorizontalCollectionGadgetProvider__updateHorizontalGadget__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 32) + 48);
  v2 = MEMORY[0x1E695DEC8];
  v3 = a2;
  v4 = [v2 arrayWithObjects:&v5 count:1];
  [v3 addGadgets:{v4, v5, v6}];
}

- (void)setPrefersPagingEnabled:(BOOL)enabled
{
  if (self->_prefersPagingEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_prefersPagingEnabled = enabled;
    layout = [(PXGadgetUIViewController *)self->_horizontalGadget layout];
    [layout setPrefersPagingEnabled:enabledCopy];
  }
}

- (void)setColumnSpanForTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (![(NSDictionary *)self->_columnSpanForTraitCollection isEqualToDictionary:?])
  {
    v4 = [collectionCopy copy];
    columnSpanForTraitCollection = self->_columnSpanForTraitCollection;
    self->_columnSpanForTraitCollection = v4;

    [(PXHorizontalCollectionGadget *)self->_horizontalGadget setColumnSpans:self->_columnSpanForTraitCollection];
  }
}

- (void)setDefaultColumnSpan:(int64_t)span
{
  if (self->_defaultColumnSpan != span)
  {
    self->_defaultColumnSpan = span;
    [(PXHorizontalCollectionGadget *)self->_horizontalGadget setDefaultColumnSpan:?];
  }
}

- (void)setGadgetType:(unint64_t)type
{
  if (self->_gadgetType != type)
  {
    self->_gadgetType = type;
    [(PXHorizontalCollectionGadget *)self->_horizontalGadget setGadgetType:?];
  }
}

- (void)generateGadgets
{
  if ([(PXHorizontalCollectionGadgetProvider *)self estimatedNumberOfGadgets])
  {
    [(PXHorizontalCollectionGadgetProvider *)self _updateHorizontalGadget];
    self->_hasLoaded = 1;
  }
}

- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)identifier contentGadgetProvider:(id)provider title:(id)title horizontalCollectionGadgetClass:(Class)class
{
  providerCopy = provider;
  titleCopy = title;
  v18.receiver = self;
  v18.super_class = PXHorizontalCollectionGadgetProvider;
  v13 = [(PXGadgetProvider *)&v18 initWithIdentifier:identifier];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contentGadgetProvider, provider);
    [(PXGadgetProvider *)v14->_contentGadgetProvider setDelegate:v14];
    v15 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v15;

    v14->_horizontalCollectionGadgetClass = class;
    v14->_defaultColumnSpan = 1;
    v14->_prefersPagingEnabled = 1;
  }

  return v14;
}

- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)provider title:(id)title horizontalCollectionGadgetClass:(Class)class
{
  v8 = MEMORY[0x1E696AEC0];
  titleCopy = title;
  providerCopy = provider;
  v11 = objc_opt_class();
  v12 = [v8 stringWithFormat:@"%@:%@", v11, objc_opt_class()];
  v13 = [(PXHorizontalCollectionGadgetProvider *)self initWithIdentifier:v12 contentGadgetProvider:providerCopy title:titleCopy horizontalCollectionGadgetClass:class];

  return v13;
}

- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)provider title:(id)title
{
  titleCopy = title;
  providerCopy = provider;
  v8 = [(PXHorizontalCollectionGadgetProvider *)self initWithContentGadgetProvider:providerCopy title:titleCopy horizontalCollectionGadgetClass:objc_opt_class()];

  return v8;
}

- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadgetProvider.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXHorizontalCollectionGadgetProvider initWithIdentifier:]"}];

  abort();
}

- (PXHorizontalCollectionGadgetProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadgetProvider.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXHorizontalCollectionGadgetProvider init]"}];

  abort();
}

@end