@interface PXEditorialTungstenLayout
- (PXEditorialTungstenLayout)init;
- (id)_inputItemAtIndex:(unsigned int)index;
- (id)diagnosticDescription;
- (id)newGenerator;
- (void)setNumberOfColumns:(int64_t)columns;
@end

@implementation PXEditorialTungstenLayout

- (id)diagnosticDescription
{
  v6.receiver = self;
  v6.super_class = PXEditorialTungstenLayout;
  diagnosticDescription = [(PXGGeneratedLayout *)&v6 diagnosticDescription];
  v4 = [diagnosticDescription stringByAppendingFormat:@" numberOfColumns: %li", -[PXEditorialTungstenLayout numberOfColumns](self, "numberOfColumns")];;

  return v4;
}

- (void)setNumberOfColumns:(int64_t)columns
{
  if (self->_numberOfColumns != columns)
  {
    v3 = 3;
    if (columns == 5)
    {
      v3 = 5;
    }

    self->_numberOfColumns = v3;
    [(PXGGeneratedLayout *)self metricsDidChange];
  }
}

- (id)_inputItemAtIndex:(unsigned int)index
{
  v3 = *&index;
  delegate = [(PXGItemsLayout *)self delegate];
  v6 = [delegate generatedLayout:self inputItemAtIndex:v3];

  return v6;
}

- (id)newGenerator
{
  v3 = objc_alloc_init(PXEditorialLayoutMetrics);
  [(PXEditorialLayoutMetrics *)v3 setNumberOfColumns:[(PXEditorialTungstenLayout *)self numberOfColumns]];
  [(PXGGeneratedLayout *)self interitemSpacing];
  [(PXEditorialLayoutMetrics *)v3 setInterTileSpacing:?];
  [(PXGGeneratedLayout *)self padding];
  [(PXEditorialLayoutMetrics *)v3 setPadding:?];
  [(PXEditorialTungstenLayout *)self referenceSize];
  [(PXLayoutMetrics *)v3 setReferenceSize:?];
  [(PXEditorialLayoutMetrics *)v3 setUseSaliency:[(PXGGeneratedLayout *)self useSaliency]];
  objc_initWeak(&location, self);
  v4 = [[PXEditorialLayoutGenerator alloc] initWithMetrics:v3];
  [(PXEditorialLayoutGenerator *)v4 setItemCount:[(PXGItemsLayout *)self numberOfItems]];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __41__PXEditorialTungstenLayout_newGenerator__block_invoke;
  v6[3] = &unk_1E7744BC8;
  objc_copyWeak(&v7, &location);
  [(PXEditorialLayoutGenerator *)v4 setItemLayoutInfoBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);

  return v4;
}

id __41__PXEditorialTungstenLayout_newGenerator__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _inputItemAtIndex:a2];

  return v4;
}

- (PXEditorialTungstenLayout)init
{
  v3.receiver = self;
  v3.super_class = PXEditorialTungstenLayout;
  result = [(PXGGeneratedLayout *)&v3 init];
  if (result)
  {
    result->_numberOfColumns = 3;
  }

  return result;
}

@end