@interface _TVGridViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5;
- (id)makeCollectionViewWithFrame:(CGRect)a3;
- (void)updateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4;
- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4;
- (void)viewDidLoad;
@end

@implementation _TVGridViewController

- (void)updateWithViewElement:(id)a3 cellMetrics:(TVCellMetrics *)a4
{
  v9.receiver = self;
  v9.super_class = _TVGridViewController;
  v4 = *&a4->cellMargin.top;
  v8[6] = *&a4->cellInsetAlt.bottom;
  v8[7] = v4;
  v8[8] = *&a4->cellMargin.bottom;
  v5 = *&a4->cellInset.top;
  v8[2] = *&a4->cellPadding.bottom;
  v8[3] = v5;
  v6 = *&a4->cellInsetAlt.top;
  v8[4] = *&a4->cellInset.bottom;
  v8[5] = v6;
  v7 = *&a4->cellPadding.top;
  v8[0] = a4->cellSize;
  v8[1] = v7;
  [(_TVMLCollectionViewController *)&v9 updateWithViewElement:a3 cellMetrics:v8];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _TVGridViewController;
  [(_TVMLCollectionViewController *)&v4 viewDidLoad];
  if (self->_configureForListTemplate)
  {
    v3 = [(_TVMLCollectionViewController *)self collectionWrappingView];
    [v3 setCollectionGradientMask:1];
  }
}

- (id)makeCollectionViewWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [_TVMLGridView alloc];
  v9 = objc_alloc_init(_TVGridViewFlowLayout);
  v10 = [(_TVGridView *)v8 initWithFrame:v9 collectionViewLayout:x, y, width, height];

  [(_TVMLGridView *)v10 setConfigureForListTemplate:self->_configureForListTemplate];

  return v10;
}

- (void)updateViewLayoutAnimated:(BOOL)a3 relayout:(BOOL)a4
{
  v4 = a4;
  v6 = [(_TVMLCollectionViewController *)self collectionView];
  v7 = [v6 collectionViewLayout];

  [(_TVMLCollectionViewController *)self cellMetrics];
  [v7 setCellMetrics:&v15];
  v8 = [(_TVMLCollectionViewController *)self collectionElement];
  v9 = [v8 style];

  v10 = [v9 valueForStyle:@"tv-line-spacing"];
  if (v10)
  {
    [v9 tv_lineSpacing];
    v12 = v11;
  }

  else
  {
    v12 = NAN;
  }

  [v9 tv_interitemSpacing];
  v14 = v13;
  [v7 expectedLineSpacing];
  [v7 setMinimumInteritemSpacing:v14];
  [v7 setMinimumLineSpacing:v12];
  if (v4)
  {
    [v7 invalidateLayout];
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [(_TVMLCollectionViewController *)self collectionElement];
  v8 = [v7 sections];
  v9 = [v8 objectAtIndex:{objc_msgSend(v6, "section")}];

  v10 = [v9 prototypeForItemAtIndex:{objc_msgSend(v6, "row")}];
  [(_TVMLCollectionViewController *)self expectedCellSizeForElement:v10 atIndexPath:v6];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)collectionView:(id)a3 layout:(id)a4 insetForSectionAtIndex:(int64_t)a5
{
  v7 = a4;
  v9 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  if (a5 >= 1)
  {
    v12 = [(_TVMLCollectionViewController *)self collectionElement];
    v13 = [v12 sections];
    v14 = [v13 objectAtIndex:a5];
    v15 = [v14 items];
    v16 = [v15 count];

    if (v16)
    {
      [v7 minimumLineSpacing];
      v9 = v17;
    }
  }

  v18 = v9;
  v19 = v8;
  v20 = v10;
  v21 = v11;
  result.right = v21;
  result.bottom = v20;
  result.left = v19;
  result.top = v18;
  return result;
}

@end