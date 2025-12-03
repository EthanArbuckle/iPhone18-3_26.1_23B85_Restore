@interface PUPhotosSharingCollectionViewItemSublayout
- (CGRect)badgesContainerFrame;
- (CGRect)floatingBadgesContainerFrame;
- (CGRect)itemFrame;
- (CGRect)visibleItemFrame;
- (CGSize)optionBadgeSize;
- (CGSize)selectionBadgeSize;
- (PUPhotosSharingCollectionViewItemSublayout)initWithIndexPath:(id)path itemFrame:(CGRect)frame;
- (UIOffset)badgesOffset;
- (void)prepareSublayout;
- (void)setFloatingOffset:(UIOffset)offset;
@end

@implementation PUPhotosSharingCollectionViewItemSublayout

- (CGRect)floatingBadgesContainerFrame
{
  x = self->_floatingBadgesContainerFrame.origin.x;
  y = self->_floatingBadgesContainerFrame.origin.y;
  width = self->_floatingBadgesContainerFrame.size.width;
  height = self->_floatingBadgesContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)badgesContainerFrame
{
  x = self->_badgesContainerFrame.origin.x;
  y = self->_badgesContainerFrame.origin.y;
  width = self->_badgesContainerFrame.size.width;
  height = self->_badgesContainerFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIOffset)badgesOffset
{
  horizontal = self->_badgesOffset.horizontal;
  vertical = self->_badgesOffset.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

- (CGRect)visibleItemFrame
{
  x = self->_visibleItemFrame.origin.x;
  y = self->_visibleItemFrame.origin.y;
  width = self->_visibleItemFrame.size.width;
  height = self->_visibleItemFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)itemFrame
{
  x = self->_itemFrame.origin.x;
  y = self->_itemFrame.origin.y;
  width = self->_itemFrame.size.width;
  height = self->_itemFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setFloatingOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  [(UICollectionViewLayoutAttributes *)self->_selectionBadgeLayoutAttributes setCenter:offset.horizontal + self->_selectionBadgeCenter.x, offset.vertical + self->_selectionBadgeCenter.y];
  self->_floatingBadgesContainerFrame = CGRectOffset(self->_badgesContainerFrame, horizontal, vertical);
}

- (void)prepareSublayout
{
  v67 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  selectionBadgeLayoutAttributes = self->_selectionBadgeLayoutAttributes;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&selectionBadgeLayoutAttributes count:1];
  v5 = [v4 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v61;
    v8 = *MEMORY[0x1E695F060];
    v9 = *(MEMORY[0x1E695F060] + 8);
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v61 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v60 + 1) + 8 * i);
        [v11 size];
        if (v13 != v8 || v12 != v9)
        {
          [v3 addObject:v11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v6);
  }

  v15 = [(PUPhotosSharingCollectionViewItemSublayout *)self badgesCorner]& 0xA;
  v16 = [(PUPhotosSharingCollectionViewItemSublayout *)self badgesCorner]& 0xC;
  x = self->_itemFrame.origin.x;
  y = self->_itemFrame.origin.y;
  width = self->_itemFrame.size.width;
  height = self->_itemFrame.size.height;
  if (v15)
  {
    v21 = CGRectGetMaxX(*&x) - self->_badgesOffset.horizontal;
  }

  else
  {
    v21 = CGRectGetMinX(*&x) + self->_badgesOffset.horizontal;
  }

  v22 = MEMORY[0x1E695F050];
  v23 = self->_itemFrame.origin.x;
  v24 = self->_itemFrame.origin.y;
  v25 = self->_itemFrame.size.width;
  v26 = self->_itemFrame.size.height;
  if (v16)
  {
    v27 = CGRectGetMaxY(*&v23) - self->_bottomBadgeInset - self->_badgesOffset.vertical;
  }

  else
  {
    v27 = CGRectGetMinY(*&v23) + self->_badgesOffset.vertical;
  }

  v28 = v22[1];
  v55 = *v22;
  v30 = v22[2];
  v29 = v22[3];
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v31 = v3;
  v32 = [v31 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v57;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v56 + 1) + 8 * j);
        [v36 frame];
        v41 = v38;
        v42 = v39;
        v43 = v40;
        if (v15)
        {
          v21 = v21 - CGRectGetWidth(*&v37);
        }

        v44 = v27;
        if (v16)
        {
          v68.origin.x = v21;
          v68.origin.y = v41;
          v68.size.width = v42;
          v68.size.height = v43;
          v44 = v27 - CGRectGetHeight(v68);
        }

        [v36 setFrame:{v21, v44, v42, v43}];
        v69.size.height = v54;
        v69.origin.x = v55;
        v69.origin.y = v28;
        v69.size.width = v30;
        v71.origin.x = v21;
        v71.origin.y = v44;
        v71.size.width = v42;
        v71.size.height = v43;
        v70 = CGRectUnion(v69, v71);
        v55 = v70.origin.x;
        v28 = v70.origin.y;
        v30 = v70.size.width;
        v29 = v70.size.height;
        v45 = v21;
        v46 = v44;
        v47 = v42;
        v48 = v43;
        if (v15)
        {
          v21 = CGRectGetMinX(*&v45) - self->_badgesOffset.horizontal;
        }

        else
        {
          v21 = CGRectGetMaxX(*&v45) + self->_badgesOffset.horizontal;
        }
      }

      v33 = [v31 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v33);
  }

  self->_badgesContainerFrame.origin.x = v55;
  self->_badgesContainerFrame.origin.y = v28;
  self->_badgesContainerFrame.size.width = v30;
  self->_badgesContainerFrame.size.height = v29;
  size = self->_badgesContainerFrame.size;
  self->_floatingBadgesContainerFrame.origin = self->_badgesContainerFrame.origin;
  self->_floatingBadgesContainerFrame.size = size;
  [(UICollectionViewLayoutAttributes *)self->_selectionBadgeLayoutAttributes center];
  self->_selectionBadgeCenter.x = v50;
  self->_selectionBadgeCenter.y = v51;
  [(UICollectionViewLayoutAttributes *)self->_optionBadgeLayoutAttributes center];
  self->_optionBadgeCenter.x = v52;
  self->_optionBadgeCenter.y = v53;
}

- (CGSize)optionBadgeSize
{
  [(UICollectionViewLayoutAttributes *)self->_optionBadgeLayoutAttributes size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)selectionBadgeSize
{
  [(UICollectionViewLayoutAttributes *)self->_selectionBadgeLayoutAttributes size];
  result.height = v3;
  result.width = v2;
  return result;
}

- (PUPhotosSharingCollectionViewItemSublayout)initWithIndexPath:(id)path itemFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  pathCopy = path;
  v18.receiver = self;
  v18.super_class = PUPhotosSharingCollectionViewItemSublayout;
  v11 = [(PUPhotosSharingCollectionViewItemSublayout *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_indexPath, path);
    v12->_itemFrame.origin.x = x;
    v12->_itemFrame.origin.y = y;
    v12->_itemFrame.size.width = width;
    v12->_itemFrame.size.height = height;
    v12->_visibleItemFrame.origin.x = x;
    v12->_visibleItemFrame.origin.y = y;
    v12->_visibleItemFrame.size.width = width;
    v12->_visibleItemFrame.size.height = height;
    v12->_badgesCorner = 8;
    v13 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:@"PUPhotosSharingSelectionBadgeKind" withIndexPath:pathCopy];
    selectionBadgeLayoutAttributes = v12->_selectionBadgeLayoutAttributes;
    v12->_selectionBadgeLayoutAttributes = v13;

    v15 = [MEMORY[0x1E69DC858] layoutAttributesForSupplementaryViewOfKind:@"PUPhotosSharingOptionBadgeKind" withIndexPath:pathCopy];
    optionBadgeLayoutAttributes = v12->_optionBadgeLayoutAttributes;
    v12->_optionBadgeLayoutAttributes = v15;
  }

  return v12;
}

@end