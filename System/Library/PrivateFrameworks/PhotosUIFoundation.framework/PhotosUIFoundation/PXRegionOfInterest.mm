@interface PXRegionOfInterest
+ (CGRect)convertedImageContentsRectOfRegionOfInterest:(id)a3 toCoordinateSpace:(id)a4 fittingSize:(CGSize)a5 flipped:(BOOL)a6;
- (CGRect)imageContentsRect;
- (CGRect)uncroppedImageFrameInCoordinateSpace:(id)a3;
- (PXAnonymousView)trackingContainerView;
- (PXRegionOfInterest)initWithRect:(CGRect)a3 inCoordinateSpace:(id)a4;
- (id)copyWithRect:(CGRect)a3 inCoordinateSpace:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_copyPropertiesTo:(id)a3;
- (void)setContainingScrollViews:(id)a3;
@end

@implementation PXRegionOfInterest

- (CGRect)imageContentsRect
{
  x = self->_imageContentsRect.origin.x;
  y = self->_imageContentsRect.origin.y;
  width = self->_imageContentsRect.size.width;
  height = self->_imageContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setContainingScrollViews:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  scrollViews = self->_scrollViews;
  self->_scrollViews = v5;

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NSPointerArray *)self->_scrollViews addPointer:*(*(&v12 + 1) + 8 * v11++), v12];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_copyPropertiesTo:(id)a3
{
  objc_storeStrong(a3 + 10, self->_imageRequester);
  v14 = a3;
  size = self->_imageContentsRect.size;
  *(v14 + 136) = self->_imageContentsRect.origin;
  *(v14 + 152) = size;
  v6 = [(PXViewSpec *)self->_imageViewSpec copy];
  v7 = *(v14 + 11);
  *(v14 + 11) = v6;

  objc_storeStrong(v14 + 12, self->_title);
  objc_storeStrong(v14 + 13, self->_subtitle);
  v8 = [(PXTitleSubtitleLabelSpec *)self->_textViewSpec copy];
  v9 = *(v14 + 14);
  *(v14 + 14) = v8;

  v10 = _Block_copy(self->_placeholderViewFactory);
  v11 = *(v14 + 15);
  *(v14 + 15) = v10;

  v12 = _Block_copy(self->_trackingContainerViewFactory);
  v13 = *(v14 + 16);
  *(v14 + 16) = v12;

  v14[72] = self->_isRepresentingPlaceholderContent;
  objc_storeStrong(v14 + 8, self->_scrollViews);
}

- (id)copyWithRect:(CGRect)a3 inCoordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [objc_alloc(objc_opt_class()) initWithRect:v9 inCoordinateSpace:{x, y, width, height}];

  [(PXRegionOfInterest *)self _copyPropertiesTo:v10];
  return v10;
}

- (PXAnonymousView)trackingContainerView
{
  v3 = [(PXRegionOfInterest *)self trackingContainerViewFactory];
  if (v3)
  {
    v4 = [(PXRegionOfInterest *)self trackingContainerViewFactory];
    v5 = (v4)[2](v4, self);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)uncroppedImageFrameInCoordinateSpace:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  [(PXDisplayRect *)self rectInCoordinateSpace:a3];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PXRegionOfInterest *)self imageContentsRect];
  v15 = v14;
  v17 = v16;
  v18 = v12;
  v19 = v13;
  if (v12 == 0.0 || v13 == 0.0 || (v13 == INFINITY ? (v20 = v12 == INFINITY) : (v20 = 0), !v20 ? (v21 = (*&v12 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000) : (v21 = 1), v21 || (*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
  {
    v22 = PXAssertGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v31.origin.x = v15;
      v31.origin.y = v17;
      v31.size.width = v18;
      v31.size.height = v19;
      v27 = NSStringFromCGRect(v31);
      v28 = 138412290;
      v29 = v27;
      _os_log_error_impl(&dword_1B3F73000, v22, OS_LOG_TYPE_ERROR, "Contents rect size is invalid %@", &v28, 0xCu);
    }

    v18 = 1.0;
    v15 = 0.0;
    v17 = 0.0;
    v19 = 1.0;
  }

  v23 = v9 / v18;
  v24 = v11 / v19;
  v25 = v5 - v9 / v18 * v15;
  v26 = v7 - v11 / v19 * v17;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PXRegionOfInterest;
  v4 = [(PXDisplayRect *)&v6 copyWithZone:a3];
  [(PXRegionOfInterest *)self _copyPropertiesTo:v4];
  return v4;
}

- (PXRegionOfInterest)initWithRect:(CGRect)a3 inCoordinateSpace:(id)a4
{
  v5.receiver = self;
  v5.super_class = PXRegionOfInterest;
  result = [(PXDisplayRect *)&v5 initWithRect:a4 inCoordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_imageContentsRect.origin = *PXRectUnit;
    result->_imageContentsRect.size = *&PXRectUnit[16];
  }

  return result;
}

+ (CGRect)convertedImageContentsRectOfRegionOfInterest:(id)a3 toCoordinateSpace:(id)a4 fittingSize:(CGSize)a5 flipped:(BOOL)a6
{
  v6 = a6;
  height = a5.height;
  width = a5.width;
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    [v10 imageContentsRect];
    x = v22.origin.x;
    y = v22.origin.y;
    v14 = v22.size.width;
    v15 = v22.size.height;
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = 1.0;
    v24.size.height = 1.0;
    if (CGRectEqualToRect(v22, v24))
    {
      [v10 rectInCoordinateSpace:v11];
      v15 = 0.0;
      PFSizeWithAspectRatioFittingSize();
      x = width * 0.5 + 0.0 + v16 * -0.5;
      v14 = 0.0;
      if (width != 0.0)
      {
        x = x / width;
        v14 = v16 / width;
      }

      y = height * 0.5 + 0.0 + v17 * -0.5;
      if (height != 0.0)
      {
        y = y / height;
        v15 = v17 / height;
      }
    }

    if (v6)
    {
      y = 1.0 - (y + v15);
    }
  }

  else
  {
    y = 0.0;
    v15 = 1.0;
    v14 = 1.0;
    x = 0.0;
  }

  v18 = x;
  v19 = y;
  v20 = v14;
  v21 = v15;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v19;
  result.origin.x = v18;
  return result;
}

@end