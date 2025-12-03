@interface _TVGridViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index;
- (id)makeCollectionViewWithFrame:(CGRect)frame;
- (void)updateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout;
- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics;
- (void)viewDidLoad;
@end

@implementation _TVGridViewController

- (void)updateWithViewElement:(id)element cellMetrics:(TVCellMetrics *)metrics
{
  v9.receiver = self;
  v9.super_class = _TVGridViewController;
  v4 = *&metrics->cellMargin.top;
  v8[6] = *&metrics->cellInsetAlt.bottom;
  v8[7] = v4;
  v8[8] = *&metrics->cellMargin.bottom;
  v5 = *&metrics->cellInset.top;
  v8[2] = *&metrics->cellPadding.bottom;
  v8[3] = v5;
  v6 = *&metrics->cellInsetAlt.top;
  v8[4] = *&metrics->cellInset.bottom;
  v8[5] = v6;
  v7 = *&metrics->cellPadding.top;
  v8[0] = metrics->cellSize;
  v8[1] = v7;
  [(_TVMLCollectionViewController *)&v9 updateWithViewElement:element cellMetrics:v8];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = _TVGridViewController;
  [(_TVMLCollectionViewController *)&v4 viewDidLoad];
  if (self->_configureForListTemplate)
  {
    collectionWrappingView = [(_TVMLCollectionViewController *)self collectionWrappingView];
    [collectionWrappingView setCollectionGradientMask:1];
  }
}

- (id)makeCollectionViewWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = [_TVMLGridView alloc];
  v9 = objc_alloc_init(_TVGridViewFlowLayout);
  height = [(_TVGridView *)v8 initWithFrame:v9 collectionViewLayout:x, y, width, height];

  [(_TVMLGridView *)height setConfigureForListTemplate:self->_configureForListTemplate];

  return height;
}

- (void)updateViewLayoutAnimated:(BOOL)animated relayout:(BOOL)relayout
{
  relayoutCopy = relayout;
  collectionView = [(_TVMLCollectionViewController *)self collectionView];
  collectionViewLayout = [collectionView collectionViewLayout];

  [(_TVMLCollectionViewController *)self cellMetrics];
  [collectionViewLayout setCellMetrics:&v15];
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  style = [collectionElement style];

  v10 = [style valueForStyle:@"tv-line-spacing"];
  if (v10)
  {
    [style tv_lineSpacing];
    v12 = v11;
  }

  else
  {
    v12 = NAN;
  }

  [style tv_interitemSpacing];
  v14 = v13;
  [collectionViewLayout expectedLineSpacing];
  [collectionViewLayout setMinimumInteritemSpacing:v14];
  [collectionViewLayout setMinimumLineSpacing:v12];
  if (relayoutCopy)
  {
    [collectionViewLayout invalidateLayout];
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
  sections = [collectionElement sections];
  v9 = [sections objectAtIndex:{objc_msgSend(pathCopy, "section")}];

  v10 = [v9 prototypeForItemAtIndex:{objc_msgSend(pathCopy, "row")}];
  [(_TVMLCollectionViewController *)self expectedCellSizeForElement:v10 atIndexPath:pathCopy];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (UIEdgeInsets)collectionView:(id)view layout:(id)layout insetForSectionAtIndex:(int64_t)index
{
  layoutCopy = layout;
  v9 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v10 = *(MEMORY[0x277D768C8] + 16);
  v11 = *(MEMORY[0x277D768C8] + 24);
  if (index >= 1)
  {
    collectionElement = [(_TVMLCollectionViewController *)self collectionElement];
    sections = [collectionElement sections];
    v14 = [sections objectAtIndex:index];
    items = [v14 items];
    v16 = [items count];

    if (v16)
    {
      [layoutCopy minimumLineSpacing];
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