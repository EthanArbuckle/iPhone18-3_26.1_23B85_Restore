@interface PXPlacesSnapshotOptions
- (CGSize)viewSize;
- (PXPlacesSnapshotOptions)init;
- (UIEdgeInsets)additionalInsets;
- (id)description;
- (void)setRegion:(id *)a3;
@end

@implementation PXPlacesSnapshotOptions

- (void)setRegion:(id *)a3
{
  self->_region.center.latitude = v3;
  self->_region.center.longitude = v4;
  self->_region.span.latitudeDelta = v5;
  self->_region.span.longitudeDelta = v6;
}

- (UIEdgeInsets)additionalInsets
{
  top = self->_additionalInsets.top;
  left = self->_additionalInsets.left;
  bottom = self->_additionalInsets.bottom;
  right = self->_additionalInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)viewSize
{
  width = self->_viewSize.width;
  height = self->_viewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)description
{
  v32.receiver = self;
  v32.super_class = PXPlacesSnapshotOptions;
  v3 = [(PXPlacesSnapshotOptions *)&v32 description];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(PXPlacesSnapshotOptions *)self extendedTraitCollection];
  v7 = [v5 stringWithFormat:@"\nExtended Trait Collection: %@", v6];
  [v4 appendString:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(PXPlacesSnapshotOptions *)self geotaggableInformationDelegate];
  v10 = [v8 stringWithFormat:@"\nGeotaggable Info Delegate: %@", v9];
  [v4 appendString:v10];

  v11 = MEMORY[0x1E696AEC0];
  v12 = [(PXPlacesSnapshotOptions *)self queue];
  v13 = [v11 stringWithFormat:@"\nQueue: %@", v12];
  [v4 appendString:v13];

  v14 = MEMORY[0x1E696AEC0];
  v15 = [(PXPlacesSnapshotOptions *)self cacheDirectoryPath];
  v16 = [v14 stringWithFormat:@"\nCache Directory Path: %@", v15];
  [v4 appendString:v16];

  v17 = MEMORY[0x1E696AEC0];
  [(PXPlacesSnapshotOptions *)self visibleDistance];
  v19 = [v17 stringWithFormat:@"\nVisible Distance: %f", v18];
  [v4 appendString:v19];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nSnapshot Map Type: %ld", -[PXPlacesSnapshotOptions snapshotMapType](self, "snapshotMapType")];
  [v4 appendString:v20];

  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nImage Popover Type: %ld", -[PXPlacesSnapshotOptions popoverImageType](self, "popoverImageType")];
  [v4 appendString:v21];

  v22 = MEMORY[0x1E696AEC0];
  [(PXPlacesSnapshotOptions *)self viewSize];
  v23 = NSStringFromCGSize(v34);
  v24 = [v22 stringWithFormat:@"\nView Size: %@", v23];
  [v4 appendString:v24];

  v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nShould Skip Placeholder: %d", -[PXPlacesSnapshotOptions shouldSkipPlaceholder](self, "shouldSkipPlaceholder")];
  [v4 appendString:v25];

  v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nShows Point Labels: %d", -[PXPlacesSnapshotOptions showsPointLabels](self, "showsPointLabels")];
  [v4 appendString:v26];

  v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\nShould Render Thumbnail For No Location: %d", -[PXPlacesSnapshotOptions shouldRenderThumbnailForNoLocation](self, "shouldRenderThumbnailForNoLocation")];
  [v4 appendString:v27];

  v28 = MEMORY[0x1E696AEC0];
  [(PXPlacesSnapshotOptions *)self additionalInsets];
  v29 = NSStringFromUIEdgeInsets(v35);
  v30 = [v28 stringWithFormat:@"\nAdditional Insets: %@", v29];
  [v4 appendString:v30];

  return v4;
}

- (PXPlacesSnapshotOptions)init
{
  v5.receiver = self;
  v5.super_class = PXPlacesSnapshotOptions;
  result = [(PXPlacesSnapshotOptions *)&v5 init];
  if (result)
  {
    v3 = *(MEMORY[0x1E69DDCE0] + 16);
    *&result->_additionalInsets.top = *MEMORY[0x1E69DDCE0];
    *&result->_additionalInsets.bottom = v3;
    v4 = *(MEMORY[0x1E696F068] + 16);
    result->_region.center = *MEMORY[0x1E696F068];
    result->_visibleDistance = 10000.0;
    *&result->_showsPointLabels = 1;
    result->_popoverImageType = 2;
    result->_region.span = v4;
  }

  return result;
}

@end