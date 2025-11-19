@interface PXHorizontalCollectionGadgetProvider
- (PXHorizontalCollectionGadgetProvider)init;
- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)a3 title:(id)a4;
- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)a3 title:(id)a4 horizontalCollectionGadgetClass:(Class)a5;
- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)a3;
- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)a3 contentGadgetProvider:(id)a4 title:(id)a5 horizontalCollectionGadgetClass:(Class)a6;
- (id)_createHorizontalGadget;
- (void)_updateHorizontalGadget;
- (void)generateGadgets;
- (void)setColumnSpanForTraitCollection:(id)a3;
- (void)setDefaultColumnSpan:(int64_t)a3;
- (void)setGadgetType:(unint64_t)a3;
- (void)setPrefersPagingEnabled:(BOOL)a3;
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
  v6 = [(PXHorizontalCollectionGadgetProvider *)self columnSpanForTraitCollection];
  [v5 setColumnSpans:v6];

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
  v3 = [(PXHorizontalCollectionGadgetProvider *)self estimatedNumberOfGadgets];
  v4 = [(PXGadgetProvider *)self gadgets];
  v5 = [v4 count];

  if (v3)
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

- (void)setPrefersPagingEnabled:(BOOL)a3
{
  if (self->_prefersPagingEnabled != a3)
  {
    v4 = a3;
    self->_prefersPagingEnabled = a3;
    v5 = [(PXGadgetUIViewController *)self->_horizontalGadget layout];
    [v5 setPrefersPagingEnabled:v4];
  }
}

- (void)setColumnSpanForTraitCollection:(id)a3
{
  v6 = a3;
  if (![(NSDictionary *)self->_columnSpanForTraitCollection isEqualToDictionary:?])
  {
    v4 = [v6 copy];
    columnSpanForTraitCollection = self->_columnSpanForTraitCollection;
    self->_columnSpanForTraitCollection = v4;

    [(PXHorizontalCollectionGadget *)self->_horizontalGadget setColumnSpans:self->_columnSpanForTraitCollection];
  }
}

- (void)setDefaultColumnSpan:(int64_t)a3
{
  if (self->_defaultColumnSpan != a3)
  {
    self->_defaultColumnSpan = a3;
    [(PXHorizontalCollectionGadget *)self->_horizontalGadget setDefaultColumnSpan:?];
  }
}

- (void)setGadgetType:(unint64_t)a3
{
  if (self->_gadgetType != a3)
  {
    self->_gadgetType = a3;
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

- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)a3 contentGadgetProvider:(id)a4 title:(id)a5 horizontalCollectionGadgetClass:(Class)a6
{
  v11 = a4;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = PXHorizontalCollectionGadgetProvider;
  v13 = [(PXGadgetProvider *)&v18 initWithIdentifier:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contentGadgetProvider, a4);
    [(PXGadgetProvider *)v14->_contentGadgetProvider setDelegate:v14];
    v15 = [v12 copy];
    title = v14->_title;
    v14->_title = v15;

    v14->_horizontalCollectionGadgetClass = a6;
    v14->_defaultColumnSpan = 1;
    v14->_prefersPagingEnabled = 1;
  }

  return v14;
}

- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)a3 title:(id)a4 horizontalCollectionGadgetClass:(Class)a5
{
  v8 = MEMORY[0x1E696AEC0];
  v9 = a4;
  v10 = a3;
  v11 = objc_opt_class();
  v12 = [v8 stringWithFormat:@"%@:%@", v11, objc_opt_class()];
  v13 = [(PXHorizontalCollectionGadgetProvider *)self initWithIdentifier:v12 contentGadgetProvider:v10 title:v9 horizontalCollectionGadgetClass:a5];

  return v13;
}

- (PXHorizontalCollectionGadgetProvider)initWithContentGadgetProvider:(id)a3 title:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PXHorizontalCollectionGadgetProvider *)self initWithContentGadgetProvider:v7 title:v6 horizontalCollectionGadgetClass:objc_opt_class()];

  return v8;
}

- (PXHorizontalCollectionGadgetProvider)initWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadgetProvider.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXHorizontalCollectionGadgetProvider initWithIdentifier:]"}];

  abort();
}

- (PXHorizontalCollectionGadgetProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXHorizontalCollectionGadgetProvider.m" lineNumber:30 description:{@"%s is not available as initializer", "-[PXHorizontalCollectionGadgetProvider init]"}];

  abort();
}

@end