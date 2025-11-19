@interface SXMosaicGalleryLayouter
- (CGRect)frameForItemAtIndex:(unint64_t)a3;
- (CGSize)contentSize;
- (NSArray)supportedTileTypeClusters;
- (SXMosaicGalleryLayouter)initWithDataSource:(id)a3;
- (SXMosaicGalleryLayouterDataSource)dataSource;
- (id)clusterForItemsInRange:(_NSRange)a3;
- (id)itemAtIndex:(unint64_t)a3;
- (id)itemsForRange:(_NSRange)a3;
- (id)layoutForCluster:(id)a3 previousLayouts:(id)a4;
- (id)viewForItem:(id)a3;
- (id)viewForItemAtIndex:(unint64_t)a3;
- (unint64_t)numberOfItems;
- (void)calculateLayoutForWidth:(double)a3;
- (void)layoutGalleryOnView:(id)a3;
- (void)resetLayout;
@end

@implementation SXMosaicGalleryLayouter

- (SXMosaicGalleryLayouter)initWithDataSource:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = SXMosaicGalleryLayouter;
  v5 = [(SXMosaicGalleryLayouter *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    v6->_numberOfItems = -1;
    v6->_width = 1.79769313e308;
    v6->_contentSize = *MEMORY[0x1E695F060];
    v7 = [MEMORY[0x1E695DF70] array];
    layouts = v6->_layouts;
    v6->_layouts = v7;

    v9 = [MEMORY[0x1E695DF70] array];
    clusters = v6->_clusters;
    v6->_clusters = v9;
  }

  return v6;
}

- (void)calculateLayoutForWidth:(double)a3
{
  [(SXMosaicGalleryLayouter *)self width];
  if (v5 == a3)
  {
    return;
  }

  [(SXMosaicGalleryLayouter *)self resetLayout];
  [(SXMosaicGalleryLayouter *)self setWidth:a3];
  v6 = [SXMosaicGalleryColumnLayout alloc];
  [(SXMosaicGalleryLayouter *)self width];
  v7 = [SXMosaicGalleryColumnLayout initWithWidth:v6 gutter:"initWithWidth:gutter:"];
  columnLayout = self->_columnLayout;
  self->_columnLayout = v7;

  v9 = [(SXMosaicGalleryLayouter *)self numberOfItems];
  v10 = v9;
  if (v9 >= 3)
  {
    v11 = 3;
  }

  else
  {
    v11 = v9;
  }

  v35 = [MEMORY[0x1E695DF70] array];
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = [v35 lastObject];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 rangeValue];
      v18 = v17;
    }

    else
    {
      v16 = 0;
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
        v22 = [(SXMosaicGalleryLayouter *)self layouts];
        v23 = [(SXMosaicGalleryLayouter *)self layoutForCluster:v20 previousLayouts:v22];

        v24 = [MEMORY[0x1E696B098] valueWithRange:{v13, v11}];
        [v35 addObject:v24];

        v25 = [(SXMosaicGalleryLayouter *)self layouts];
        [v25 addObject:v23];

        v26 = [(SXMosaicGalleryLayouter *)self clusters];
        [v26 addObject:v20];

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

      v28 = [(SXMosaicGalleryLayouter *)self clusters];
      v29 = [(SXMosaicGalleryLayouter *)self clusters];
      v30 = [v29 lastObject];
      [v28 removeObject:v30];

      v31 = [(SXMosaicGalleryLayouter *)self layouts];
      v32 = [(SXMosaicGalleryLayouter *)self layouts];
      v33 = [v32 lastObject];
      [v31 removeObject:v33];

      v12 = 1;
      v13 = v16;
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

- (void)layoutGalleryOnView:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v4 = [(SXMosaicGalleryLayouter *)self columnLayout];
  [v4 gutter];
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
        v11 = [v10 cluster];
        v12 = [v11 items];

        v41 = v12;
        v13 = [v12 countByEnumeratingWithState:&v43 objects:v51 count:16];
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
              v18 = [v10 cluster];
              v19 = [v18 items];
              v20 = [v19 indexOfObject:v17];

              [v10 frameForItemAtIndex:v20];
              v22 = v21;
              v24 = v23;
              v26 = v25;
              v28 = v8 + v27;
              v29 = [(SXMosaicGalleryLayouter *)self frames];
              v30 = [MEMORY[0x1E696B098] valueWithCGRect:{v22, v28, v24, v26}];
              [v29 replaceObjectAtIndex:v7 withObject:v30];

              v31 = [(SXMosaicGalleryLayouter *)self viewForItem:v17];
              v32 = [(SXMosaicGalleryLayouter *)self items];
              v33 = [v32 indexOfObject:v17];

              v34 = [(SXMosaicGalleryLayouter *)self dataSource];
              LOBYTE(v33) = [v34 galleryLayouter:self viewIsCurrentlyFullscreenForItemAtIndex:v33];

              if ((v33 & 1) == 0)
              {
                [v31 setFrame:{v22, v28, v24, v26}];
                v35 = [v31 superview];

                if (v35 != v42)
                {
                  [v42 addSubview:v31];
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
    v6 = [(SXMosaicGalleryLayouter *)self columnLayout];
    [v6 gutter];
    v8 = v7;

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [(SXMosaicGalleryLayouter *)self layouts];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(v9);
          }

          [*(*(&v17 + 1) + 8 * i) height];
          v13 = v8 + v13 + v15;
        }

        v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

- (CGRect)frameForItemAtIndex:(unint64_t)a3
{
  v4 = [(SXMosaicGalleryLayouter *)self frames];
  v5 = [v4 objectAtIndex:a3];

  v6 = [MEMORY[0x1E695DFB0] null];

  if (v5 == v6)
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

- (id)viewForItemAtIndex:(unint64_t)a3
{
  v4 = [(SXMosaicGalleryLayouter *)self views];
  v5 = [v4 objectAtIndex:a3];

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

- (id)clusterForItemsInRange:(_NSRange)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [(SXMosaicGalleryLayouter *)self itemsForRange:a3.location, a3.length];
  v5 = [MEMORY[0x1E695DF70] array];
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

        v11 = [*(*(&v17 + 1) + 8 * i) tileType];
        v12 = [MEMORY[0x1E696AD98] numberWithInt:v11];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = [(SXMosaicGalleryLayouter *)self supportedTileTypeClusters];
  v14 = [v13 containsObject:v5];

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

- (id)layoutForCluster:(id)a3 previousLayouts:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 items];
  v9 = [v8 count];

  v10 = [v7 lastObject];

  v11 = [(SXMosaicGalleryLayouter *)self reverseNextHorizontalLivingRoomLayout];
  v12 = objc_opt_class();
  if (v9 == 2)
  {
    if (([v6 clusterIsEqualToTileTypes:&unk_1F538A808] & 1) == 0 && !objc_msgSend(v6, "clusterIsEqualToTileTypes:", &unk_1F538A820))
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  if (v9 != 3)
  {
    goto LABEL_17;
  }

  if (![v6 isClusterOfType:3] || v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if ([v6 clusterIsEqualToTileTypes:&unk_1F538A7F0])
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

  v13 = [(SXMosaicGalleryLayouter *)self dataSource];
  v14 = [v13 documentColumnLayoutForGalleryLayouter:self];

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
  v19 = [(SXMosaicGalleryLayouter *)self columnLayout];
  v20 = [v18 initWithCluster:v6 numberOfColumns:v9 columnLayout:v19];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v20 setReverseLayout:v11];
    [(SXMosaicGalleryLayouter *)self setReverseNextHorizontalLivingRoomLayout:v11 ^ 1];
  }

  return v20;
}

- (id)itemsForRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:a3.length];
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

- (id)itemAtIndex:(unint64_t)a3
{
  v5 = [(SXMosaicGalleryLayouter *)self items];
  v6 = [v5 objectAtIndex:a3];

  v7 = [MEMORY[0x1E695DFB0] null];
  v8 = [v6 isEqual:v7];

  if (v8)
  {
    v9 = [(SXMosaicGalleryLayouter *)self dataSource];
    [v9 galleryLayouter:self dimensionsForItemAtIndex:a3];
    v11 = v10;
    v13 = v12;

    v14 = [[SXMosaicGalleryLayoutItem alloc] initWithDimensions:v11, v13];
    v15 = [(SXMosaicGalleryLayouter *)self items];
    [v15 replaceObjectAtIndex:a3 withObject:v14];

    v6 = v14;
  }

  return v6;
}

- (unint64_t)numberOfItems
{
  if (self->_numberOfItems == -1)
  {
    v3 = [(SXMosaicGalleryLayouter *)self dataSource];
    self->_numberOfItems = [v3 numberOfItemsForGalleryLayouter:self];

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
        v9 = [(SXMosaicGalleryLayouter *)self items];
        v10 = [MEMORY[0x1E695DFB0] null];
        [v9 addObject:v10];

        v11 = [(SXMosaicGalleryLayouter *)self frames];
        v12 = [MEMORY[0x1E695DFB0] null];
        [v11 addObject:v12];

        ++v8;
      }

      while (v8 < self->_numberOfItems);
    }

    v13 = [(SXMosaicGalleryLayouter *)self views];

    if (!v13)
    {
      v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_numberOfItems];
      views = self->_views;
      self->_views = v14;
    }

    v16 = [(SXMosaicGalleryLayouter *)self views];
    v17 = [v16 count];
    v18 = [(SXMosaicGalleryLayouter *)self numberOfItems];

    if (v17 < v18)
    {
      do
      {
        v19 = [(SXMosaicGalleryLayouter *)self views];
        v20 = [MEMORY[0x1E695DFB0] null];
        [v19 addObject:v20];

        v21 = [(SXMosaicGalleryLayouter *)self views];
        v22 = [v21 count];
        v23 = [(SXMosaicGalleryLayouter *)self numberOfItems];
      }

      while (v22 < v23);
    }

    while (1)
    {
      v25 = [(SXMosaicGalleryLayouter *)self views];
      v26 = [v25 count];
      v27 = [(SXMosaicGalleryLayouter *)self numberOfItems];

      if (v26 <= v27)
      {
        break;
      }

      v24 = [(SXMosaicGalleryLayouter *)self views];
      [v24 removeLastObject];
    }
  }

  return self->_numberOfItems;
}

- (id)viewForItem:(id)a3
{
  v4 = a3;
  v5 = [(SXMosaicGalleryLayouter *)self items];
  v6 = [v5 indexOfObject:v4];

  v7 = [(SXMosaicGalleryLayouter *)self views];
  v8 = [v7 objectAtIndex:v6];

  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    v11 = [(SXMosaicGalleryLayouter *)self dataSource];
    v12 = [v11 galleryLayouter:self viewForItemAtIndex:v6];

    v13 = [(SXMosaicGalleryLayouter *)self views];
    [v13 replaceObjectAtIndex:v6 withObject:v12];

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
  v5 = [(SXMosaicGalleryLayouter *)self items];
  [v5 removeAllObjects];

  v6 = [(SXMosaicGalleryLayouter *)self layouts];
  [v6 removeAllObjects];

  v7 = [(SXMosaicGalleryLayouter *)self clusters];
  [v7 removeAllObjects];

  v8 = [(SXMosaicGalleryLayouter *)self frames];
  [v8 removeAllObjects];
}

- (SXMosaicGalleryLayouterDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end