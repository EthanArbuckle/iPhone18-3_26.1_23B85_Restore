@interface SXMosaicGalleryLayouter
- (CGRect)frameForItemAtIndex:(unint64_t)index;
- (CGSize)contentSize;
- (NSArray)supportedTileTypeClusters;
- (SXMosaicGalleryLayouter)initWithDataSource:(id)source;
- (SXMosaicGalleryLayouterDataSource)dataSource;
- (id)clusterForItemsInRange:(_NSRange)range;
- (id)itemAtIndex:(unint64_t)index;
- (id)itemsForRange:(_NSRange)range;
- (id)layoutForCluster:(id)cluster previousLayouts:(id)layouts;
- (id)viewForItem:(id)item;
- (id)viewForItemAtIndex:(unint64_t)index;
- (unint64_t)numberOfItems;
- (void)calculateLayoutForWidth:(double)width;
- (void)layoutGalleryOnView:(id)view;
- (void)resetLayout;
@end

@implementation SXMosaicGalleryLayouter

- (SXMosaicGalleryLayouter)initWithDataSource:(id)source
{
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = SXMosaicGalleryLayouter;
  v5 = [(SXMosaicGalleryLayouter *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, sourceCopy);
    v6->_numberOfItems = -1;
    v6->_width = 1.79769313e308;
    v6->_contentSize = *MEMORY[0x1E695F060];
    array = [MEMORY[0x1E695DF70] array];
    layouts = v6->_layouts;
    v6->_layouts = array;

    array2 = [MEMORY[0x1E695DF70] array];
    clusters = v6->_clusters;
    v6->_clusters = array2;
  }

  return v6;
}

- (void)calculateLayoutForWidth:(double)width
{
  [(SXMosaicGalleryLayouter *)self width];
  if (v5 == width)
  {
    return;
  }

  [(SXMosaicGalleryLayouter *)self resetLayout];
  [(SXMosaicGalleryLayouter *)self setWidth:width];
  v6 = [SXMosaicGalleryColumnLayout alloc];
  [(SXMosaicGalleryLayouter *)self width];
  v7 = [SXMosaicGalleryColumnLayout initWithWidth:v6 gutter:"initWithWidth:gutter:"];
  columnLayout = self->_columnLayout;
  self->_columnLayout = v7;

  numberOfItems = [(SXMosaicGalleryLayouter *)self numberOfItems];
  v10 = numberOfItems;
  if (numberOfItems >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = numberOfItems;
  }

  array = [MEMORY[0x1E695DF70] array];
  v12 = 0;
  v13 = 0;
  do
  {
    lastObject = [array lastObject];
    v15 = lastObject;
    if (lastObject)
    {
      rangeValue = [lastObject rangeValue];
      v18 = v17;
    }

    else
    {
      rangeValue = 0;
      v18 = 0;
    }

    v19 = [(SXMosaicGalleryLayouter *)self clusterForItemsInRange:v13, v11];
    v20 = v19;
    if ((v19 == 0) | v12 & 1)
    {
      if (v19)
      {
        v21 = v13 + v11;
LABEL_12:
        layouts = [(SXMosaicGalleryLayouter *)self layouts];
        v23 = [(SXMosaicGalleryLayouter *)self layoutForCluster:v20 previousLayouts:layouts];

        v24 = [MEMORY[0x1E696B098] valueWithRange:{v13, v11}];
        [array addObject:v24];

        layouts2 = [(SXMosaicGalleryLayouter *)self layouts];
        [layouts2 addObject:v23];

        clusters = [(SXMosaicGalleryLayouter *)self clusters];
        [clusters addObject:v20];

        v13 = v21;
LABEL_13:
        v27 = 3;
        goto LABEL_24;
      }

      if (v12)
      {
        v34 = v10 - v13;
        if (v10 - v13 >= 3)
        {
          v34 = 3;
        }

        if (v11 != v34)
        {
          v12 = 1;
          goto LABEL_13;
        }
      }

      v27 = v11 - 1;
    }

    else
    {
      v21 = v13 + v11;
      if (v11 != 1 || v21 != v10 || v10 < 4 || v18 != 3)
      {
        goto LABEL_12;
      }

      clusters2 = [(SXMosaicGalleryLayouter *)self clusters];
      clusters3 = [(SXMosaicGalleryLayouter *)self clusters];
      lastObject2 = [clusters3 lastObject];
      [clusters2 removeObject:lastObject2];

      layouts3 = [(SXMosaicGalleryLayouter *)self layouts];
      layouts4 = [(SXMosaicGalleryLayouter *)self layouts];
      lastObject3 = [layouts4 lastObject];
      [layouts3 removeObject:lastObject3];

      v12 = 1;
      v13 = rangeValue;
      v27 = 2;
    }

LABEL_24:
    if (v27 >= v10 - v13)
    {
      v11 = v10 - v13;
    }

    else
    {
      v11 = v27;
    }
  }

  while (v10 > v13);
}

- (void)layoutGalleryOnView:(id)view
{
  v53 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  columnLayout = [(SXMosaicGalleryLayouter *)self columnLayout];
  [columnLayout gutter];
  v6 = v5;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [(SXMosaicGalleryLayouter *)self layouts];
  v39 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v39)
  {
    v7 = 0;
    v38 = *v48;
    v8 = 0.0;
    do
    {
      v9 = 0;
      do
      {
        if (*v48 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v40 = v9;
        v10 = *(*(&v47 + 1) + 8 * v9);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        cluster = [v10 cluster];
        items = [cluster items];

        v41 = items;
        v13 = [items countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v44;
          do
          {
            v16 = 0;
            do
            {
              if (*v44 != v15)
              {
                objc_enumerationMutation(v41);
              }

              v17 = *(*(&v43 + 1) + 8 * v16);
              cluster2 = [v10 cluster];
              items2 = [cluster2 items];
              v20 = [items2 indexOfObject:v17];

              [v10 frameForItemAtIndex:v20];
              v22 = v21;
              v24 = v23;
              v26 = v25;
              v28 = v8 + v27;
              frames = [(SXMosaicGalleryLayouter *)self frames];
              v30 = [MEMORY[0x1E696B098] valueWithCGRect:{v22, v28, v24, v26}];
              [frames replaceObjectAtIndex:v7 withObject:v30];

              v31 = [(SXMosaicGalleryLayouter *)self viewForItem:v17];
              items3 = [(SXMosaicGalleryLayouter *)self items];
              v33 = [items3 indexOfObject:v17];

              dataSource = [(SXMosaicGalleryLayouter *)self dataSource];
              LOBYTE(v33) = [dataSource galleryLayouter:self viewIsCurrentlyFullscreenForItemAtIndex:v33];

              if ((v33 & 1) == 0)
              {
                [v31 setFrame:{v22, v28, v24, v26}];
                superview = [v31 superview];

                if (superview != viewCopy)
                {
                  [viewCopy addSubview:v31];
                }
              }

              ++v7;

              ++v16;
            }

            while (v14 != v16);
            v14 = [v41 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v14);
        }

        [v10 height];
        v8 = v8 + v6 + v36;
        v9 = v40 + 1;
      }

      while (v40 + 1 != v39);
      v39 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v39);
  }
}

- (CGSize)contentSize
{
  v22 = *MEMORY[0x1E69E9840];
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    columnLayout = [(SXMosaicGalleryLayouter *)self columnLayout];
    [columnLayout gutter];
    v8 = v7;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    layouts = [(SXMosaicGalleryLayouter *)self layouts];
    v10 = [layouts countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      v13 = 0.0;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(layouts);
          }

          [*(*(&v17 + 1) + 8 * i) height];
          v13 = v8 + v13 + v15;
        }

        v11 = [layouts countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    else
    {
      v13 = 0.0;
    }

    height = v13 - v8;
    [(SXMosaicGalleryLayouter *)self width];
    self->_contentSize.width = width;
    self->_contentSize.height = height;
  }

  v16 = height;
  result.height = v16;
  result.width = width;
  return result;
}

- (CGRect)frameForItemAtIndex:(unint64_t)index
{
  frames = [(SXMosaicGalleryLayouter *)self frames];
  v5 = [frames objectAtIndex:index];

  null = [MEMORY[0x1E695DFB0] null];

  if (v5 == null)
  {
    v8 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v12 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
  }

  else
  {
    [v5 CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)viewForItemAtIndex:(unint64_t)index
{
  views = [(SXMosaicGalleryLayouter *)self views];
  v5 = [views objectAtIndex:index];

  return v5;
}

- (NSArray)supportedTileTypeClusters
{
  supportedTileTypeClusters = self->_supportedTileTypeClusters;
  if (!supportedTileTypeClusters)
  {
    self->_supportedTileTypeClusters = &unk_1F538A7D8;

    supportedTileTypeClusters = self->_supportedTileTypeClusters;
  }

  return supportedTileTypeClusters;
}

- (id)clusterForItemsInRange:(_NSRange)range
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(SXMosaicGalleryLayouter *)self itemsForRange:range.location, range.length];
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        tileType = [*(*(&v17 + 1) + 8 * i) tileType];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:tileType];
        [array addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  supportedTileTypeClusters = [(SXMosaicGalleryLayouter *)self supportedTileTypeClusters];
  v14 = [supportedTileTypeClusters containsObject:array];

  if (v14)
  {
    v15 = [[SXMosaicGalleryCluster alloc] initWithItems:v6];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)layoutForCluster:(id)cluster previousLayouts:(id)layouts
{
  clusterCopy = cluster;
  layoutsCopy = layouts;
  items = [clusterCopy items];
  v9 = [items count];

  lastObject = [layoutsCopy lastObject];

  reverseNextHorizontalLivingRoomLayout = [(SXMosaicGalleryLayouter *)self reverseNextHorizontalLivingRoomLayout];
  v12 = objc_opt_class();
  if (v9 == 2)
  {
    if (([clusterCopy clusterIsEqualToTileTypes:&unk_1F538A808] & 1) == 0 && !objc_msgSend(clusterCopy, "clusterIsEqualToTileTypes:", &unk_1F538A820))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v9 != 3)
  {
    goto LABEL_17;
  }

  if (![clusterCopy isClusterOfType:3] || lastObject && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if ([clusterCopy clusterIsEqualToTileTypes:&unk_1F538A7F0])
    {
      v12 = objc_opt_class();
LABEL_15:
      v9 = 2;
      goto LABEL_17;
    }

LABEL_16:
    v9 = 3;
    goto LABEL_17;
  }

  dataSource = [(SXMosaicGalleryLayouter *)self dataSource];
  v14 = [dataSource documentColumnLayoutForGalleryLayouter:self];

  [v14 constrainedViewportSize];
  v16 = v15;
  [v14 constrainedViewportSize];
  if (v16 <= v17)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v12 = objc_opt_class();

LABEL_17:
  v18 = [v12 alloc];
  columnLayout = [(SXMosaicGalleryLayouter *)self columnLayout];
  v20 = [v18 initWithCluster:clusterCopy numberOfColumns:v9 columnLayout:columnLayout];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setReverseLayout:reverseNextHorizontalLivingRoomLayout];
    [(SXMosaicGalleryLayouter *)self setReverseNextHorizontalLivingRoomLayout:reverseNextHorizontalLivingRoomLayout ^ 1];
  }

  return v20;
}

- (id)itemsForRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:range.length];
  if (location < location + length)
  {
    do
    {
      v7 = [(SXMosaicGalleryLayouter *)self itemAtIndex:location];
      [v6 addObject:v7];

      ++location;
      --length;
    }

    while (length);
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v6];

  return v8;
}

- (id)itemAtIndex:(unint64_t)index
{
  items = [(SXMosaicGalleryLayouter *)self items];
  v6 = [items objectAtIndex:index];

  null = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:null];

  if (v8)
  {
    dataSource = [(SXMosaicGalleryLayouter *)self dataSource];
    [dataSource galleryLayouter:self dimensionsForItemAtIndex:index];
    v11 = v10;
    v13 = v12;

    v14 = [[SXMosaicGalleryLayoutItem alloc] initWithDimensions:v11, v13];
    items2 = [(SXMosaicGalleryLayouter *)self items];
    [items2 replaceObjectAtIndex:index withObject:v14];

    v6 = v14;
  }

  return v6;
}

- (unint64_t)numberOfItems
{
  if (self->_numberOfItems == -1)
  {
    dataSource = [(SXMosaicGalleryLayouter *)self dataSource];
    self->_numberOfItems = [dataSource numberOfItemsForGalleryLayouter:self];

    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_numberOfItems];
    items = self->_items;
    self->_items = v4;

    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_numberOfItems];
    frames = self->_frames;
    self->_frames = v6;

    if (self->_numberOfItems)
    {
      v8 = 0;
      do
      {
        items = [(SXMosaicGalleryLayouter *)self items];
        null = [MEMORY[0x1E695DFB0] null];
        [items addObject:null];

        frames = [(SXMosaicGalleryLayouter *)self frames];
        null2 = [MEMORY[0x1E695DFB0] null];
        [frames addObject:null2];

        ++v8;
      }

      while (v8 < self->_numberOfItems);
    }

    views = [(SXMosaicGalleryLayouter *)self views];

    if (!views)
    {
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_numberOfItems];
      views = self->_views;
      self->_views = v14;
    }

    views2 = [(SXMosaicGalleryLayouter *)self views];
    v17 = [views2 count];
    numberOfItems = [(SXMosaicGalleryLayouter *)self numberOfItems];

    if (v17 < numberOfItems)
    {
      do
      {
        views3 = [(SXMosaicGalleryLayouter *)self views];
        null3 = [MEMORY[0x1E695DFB0] null];
        [views3 addObject:null3];

        views4 = [(SXMosaicGalleryLayouter *)self views];
        v22 = [views4 count];
        numberOfItems2 = [(SXMosaicGalleryLayouter *)self numberOfItems];
      }

      while (v22 < numberOfItems2);
    }

    while (1)
    {
      views5 = [(SXMosaicGalleryLayouter *)self views];
      v26 = [views5 count];
      numberOfItems3 = [(SXMosaicGalleryLayouter *)self numberOfItems];

      if (v26 <= numberOfItems3)
      {
        break;
      }

      views6 = [(SXMosaicGalleryLayouter *)self views];
      [views6 removeLastObject];
    }
  }

  return self->_numberOfItems;
}

- (id)viewForItem:(id)item
{
  itemCopy = item;
  items = [(SXMosaicGalleryLayouter *)self items];
  v6 = [items indexOfObject:itemCopy];

  views = [(SXMosaicGalleryLayouter *)self views];
  v8 = [views objectAtIndex:v6];

  null = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:null];

  if (v10)
  {
    dataSource = [(SXMosaicGalleryLayouter *)self dataSource];
    v12 = [dataSource galleryLayouter:self viewForItemAtIndex:v6];

    views2 = [(SXMosaicGalleryLayouter *)self views];
    [views2 replaceObjectAtIndex:v6 withObject:v12];

    v8 = v12;
  }

  return v8;
}

- (void)resetLayout
{
  self->_numberOfItems = -1;
  self->_contentSize = *MEMORY[0x1E695F060];
  columnLayout = self->_columnLayout;
  self->_columnLayout = 0;

  supportedTileTypeClusters = self->_supportedTileTypeClusters;
  self->_supportedTileTypeClusters = 0;

  [(SXMosaicGalleryLayouter *)self setReverseNextHorizontalLivingRoomLayout:0];
  items = [(SXMosaicGalleryLayouter *)self items];
  [items removeAllObjects];

  layouts = [(SXMosaicGalleryLayouter *)self layouts];
  [layouts removeAllObjects];

  clusters = [(SXMosaicGalleryLayouter *)self clusters];
  [clusters removeAllObjects];

  frames = [(SXMosaicGalleryLayouter *)self frames];
  [frames removeAllObjects];
}

- (SXMosaicGalleryLayouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end