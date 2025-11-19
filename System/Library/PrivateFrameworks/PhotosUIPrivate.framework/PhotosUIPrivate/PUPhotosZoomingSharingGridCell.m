@interface PUPhotosZoomingSharingGridCell
- (PUPhotosZoomingSharingGridCell)initWithFrame:(CGRect)a3 selectionView:(id)a4 optionView:(id)a5 layoutAnchor:(unint64_t)a6;
- (void)layoutSubviews;
@end

@implementation PUPhotosZoomingSharingGridCell

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = PUPhotosZoomingSharingGridCell;
  [(PUPhotosSharingGridCell *)&v43 layoutSubviews];
  [(PUPhotosZoomingSharingGridCell *)self bounds];
  v6 = v3;
  v7 = v4;
  v9 = v8;
  x = self->_defaultBounds.origin.x;
  y = self->_defaultBounds.origin.y;
  width = self->_defaultBounds.size.width;
  height = self->_defaultBounds.size.height;
  v15 = *MEMORY[0x1E69DE258];
  v14 = *(MEMORY[0x1E69DE258] + 8);
  badgesLayoutAnchor = self->_badgesLayoutAnchor;
  if (badgesLayoutAnchor <= 1)
  {
    if (badgesLayoutAnchor == -1)
    {
      goto LABEL_9;
    }

    if (badgesLayoutAnchor != 1)
    {
      goto LABEL_14;
    }

    v25 = self->_defaultBounds.size.width;
    v42 = v25;
    v26 = self->_defaultBounds.origin.x;
    v27 = v9;
    v28 = v5;
    rect = CGRectGetMinX(*&v3);
    v46.origin.x = v26;
    v46.origin.y = y;
    v46.size.width = v25;
    v46.size.height = height;
    MinX = CGRectGetMinX(v46);
LABEL_12:
    v15 = rect - MinX;
    v50.origin.x = v6;
    v50.origin.y = v7;
    v50.size.width = v9;
    v50.size.height = v28;
    MinY = CGRectGetMinY(v50);
    v51.origin.x = v26;
    v51.origin.y = y;
    v51.size.width = v42;
    v51.size.height = height;
    MaxY = CGRectGetMinY(v51);
    goto LABEL_13;
  }

  switch(badgesLayoutAnchor)
  {
    case 2:
      v35 = self->_defaultBounds.size.width;
      v42 = v35;
      v26 = self->_defaultBounds.origin.x;
      v36 = v9;
      v28 = v5;
      rect = CGRectGetMaxX(*&v3);
      v49.origin.x = v26;
      v49.origin.y = y;
      v49.size.width = v35;
      v49.size.height = height;
      MinX = CGRectGetMaxX(v49);
      goto LABEL_12;
    case 8:
LABEL_9:
      v30 = v9;
      rect = v9;
      v31 = v5;
      MaxX = CGRectGetMaxX(*&v3);
      v47.origin.x = x;
      v47.origin.y = y;
      v47.size.width = width;
      v47.size.height = height;
      v15 = MaxX - CGRectGetMaxX(v47);
      v48.origin.x = v6;
      v48.origin.y = v7;
      v48.size.width = rect;
      v48.size.height = v31;
      MinY = CGRectGetMaxY(v48);
      v22 = x;
      v23 = y;
      v24 = width;
      goto LABEL_10;
    case 4:
      v17 = self->_defaultBounds.size.width;
      v41 = v17;
      v18 = self->_defaultBounds.origin.x;
      v19 = v9;
      v20 = v5;
      rect = CGRectGetMinX(*&v3);
      v44.origin.x = v18;
      v44.origin.y = y;
      v44.size.width = v17;
      v44.size.height = height;
      v15 = rect - CGRectGetMinX(v44);
      v45.origin.x = v6;
      v45.origin.y = v7;
      v45.size.width = v9;
      v45.size.height = v20;
      MinY = CGRectGetMaxY(v45);
      v22 = v18;
      v23 = y;
      v24 = v41;
LABEL_10:
      v33 = height;
      MaxY = CGRectGetMaxY(*&v22);
LABEL_13:
      v14 = MinY - MaxY;
      break;
  }

LABEL_14:
  v37 = v15 + self->_selectionViewDefaultCenter.x;
  v38 = v15 + self->_optionViewDefaultCenter.x;
  v39 = v14 + self->_optionViewDefaultCenter.y;
  [(UIView *)self->_selectionView setCenter:v37, v14 + self->_selectionViewDefaultCenter.y, *&rect];
  [(UIView *)self->_optionView setCenter:v38, v39];
}

- (PUPhotosZoomingSharingGridCell)initWithFrame:(CGRect)a3 selectionView:(id)a4 optionView:(id)a5 layoutAnchor:(unint64_t)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a4;
  v15 = a5;
  v24.receiver = self;
  v24.super_class = PUPhotosZoomingSharingGridCell;
  v16 = [(PUPhotosSharingGridCell *)&v24 initWithFrame:x, y, width, height];
  v17 = v16;
  if (v16)
  {
    *(v16 + 45) = *MEMORY[0x1E695EFF8];
    *(v16 + 92) = width;
    *(v16 + 93) = height;
    v18 = v16 + 768;
    [v14 center];
    *v18 = v19;
    v17->_selectionViewDefaultCenter.y = v20;
    objc_storeStrong(&v17->_selectionView, a4);
    [(PUPhotosZoomingSharingGridCell *)v17 addSubview:v17->_selectionView];
    [v15 center];
    v17->_optionViewDefaultCenter.x = v21;
    v17->_optionViewDefaultCenter.y = v22;
    objc_storeStrong(&v17->_optionView, a5);
    if (v17->_optionView)
    {
      [(PUPhotosZoomingSharingGridCell *)v17 addSubview:?];
    }

    v17->_badgesLayoutAnchor = a6;
    [(PUPhotosZoomingSharingGridCell *)v17 setUserInteractionEnabled:0];
  }

  return v17;
}

@end