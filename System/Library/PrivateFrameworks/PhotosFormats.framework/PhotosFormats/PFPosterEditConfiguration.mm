@interface PFPosterEditConfiguration
- (CGRect)normalizedAdaptiveTimeFrame;
- (CGRect)normalizedAdaptiveVisibleFrame;
- (CGRect)normalizedLandscapeAdaptiveTimeFrame;
- (CGRect)normalizedLandscapeAdaptiveVisibleFrame;
- (CGRect)normalizedLandscapeVisibleFrame;
- (CGRect)normalizedVisibleFrame;
- (NSString)description;
- (PFPosterEditConfiguration)init;
- (PFPosterEditConfiguration)initWithCoder:(id)coder;
- (id)analyticsPayload;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFPosterEditConfiguration

- (CGRect)normalizedLandscapeAdaptiveTimeFrame
{
  x = self->_normalizedLandscapeAdaptiveTimeFrame.origin.x;
  y = self->_normalizedLandscapeAdaptiveTimeFrame.origin.y;
  width = self->_normalizedLandscapeAdaptiveTimeFrame.size.width;
  height = self->_normalizedLandscapeAdaptiveTimeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedAdaptiveTimeFrame
{
  x = self->_normalizedAdaptiveTimeFrame.origin.x;
  y = self->_normalizedAdaptiveTimeFrame.origin.y;
  width = self->_normalizedAdaptiveTimeFrame.size.width;
  height = self->_normalizedAdaptiveTimeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedLandscapeAdaptiveVisibleFrame
{
  x = self->_normalizedLandscapeAdaptiveVisibleFrame.origin.x;
  y = self->_normalizedLandscapeAdaptiveVisibleFrame.origin.y;
  width = self->_normalizedLandscapeAdaptiveVisibleFrame.size.width;
  height = self->_normalizedLandscapeAdaptiveVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedAdaptiveVisibleFrame
{
  x = self->_normalizedAdaptiveVisibleFrame.origin.x;
  y = self->_normalizedAdaptiveVisibleFrame.origin.y;
  width = self->_normalizedAdaptiveVisibleFrame.size.width;
  height = self->_normalizedAdaptiveVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedLandscapeVisibleFrame
{
  x = self->_normalizedLandscapeVisibleFrame.origin.x;
  y = self->_normalizedLandscapeVisibleFrame.origin.y;
  width = self->_normalizedLandscapeVisibleFrame.size.width;
  height = self->_normalizedLandscapeVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)normalizedVisibleFrame
{
  x = self->_normalizedVisibleFrame.origin.x;
  y = self->_normalizedVisibleFrame.origin.y;
  width = self->_normalizedVisibleFrame.size.width;
  height = self->_normalizedVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (NSString)description
{
  v47 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = objc_opt_class();
  v46 = NSStringFromClass(v3);
  style = [(PFPosterEditConfiguration *)self style];
  [(PFPosterEditConfiguration *)self normalizedVisibleFrame];
  v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v4, v5, v6, v7];
  [(PFPosterEditConfiguration *)self normalizedAdaptiveVisibleFrame];
  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v8, v9, v10, v11];
  [(PFPosterEditConfiguration *)self normalizedAdaptiveTimeFrame];
  v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v12, v13, v14, v15];
  [(PFPosterEditConfiguration *)self normalizedLandscapeVisibleFrame];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v16, v17, v18, v19];
  [(PFPosterEditConfiguration *)self normalizedLandscapeAdaptiveVisibleFrame];
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v20, v21, v22, v23];
  [(PFPosterEditConfiguration *)self normalizedLandscapeAdaptiveTimeFrame];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", v24, v25, v26, v27];
  if ([(PFPosterEditConfiguration *)self isPerspectiveZoomEnabled])
  {
    v29 = @"Y";
  }

  else
  {
    v29 = @"N";
  }

  v39 = v29;
  v30 = @"NA";
  if ([(PFPosterEditConfiguration *)self isDepthAvailable])
  {
    v31 = @"A";
  }

  else
  {
    v31 = @"NA";
  }

  if ([(PFPosterEditConfiguration *)self isDepthEnabled])
  {
    v32 = @"Y";
  }

  else
  {
    v32 = @"N";
  }

  if ([(PFPosterEditConfiguration *)self isSettlingEffectAvailable])
  {
    v33 = @"A";
  }

  else
  {
    v33 = @"NA";
  }

  if ([(PFPosterEditConfiguration *)self isSettlingEffectEnabled])
  {
    v34 = @"Y";
  }

  else
  {
    v34 = @"N";
  }

  if ([(PFPosterEditConfiguration *)self isSpatialPhotoAvailable])
  {
    v30 = @"A";
  }

  if ([(PFPosterEditConfiguration *)self isSpatialPhotoEnabled])
  {
    v35 = @"Y";
  }

  else
  {
    v35 = @"N";
  }

  if ([(PFPosterEditConfiguration *)self userAdjustedVisibleFrame])
  {
    v36 = @"Y";
  }

  else
  {
    v36 = @"N";
  }

  v37 = [v47 initWithFormat:@"<%@ %p; style: %@; norm. visible frame: %@; norm. adapt. visible frame: %@; norm. adapt. time frame: %@; land. norm. visible frame: %@; land. norm. adapt. visible frame: %@; land. norm. adapt. time frame: %@; zoom: %@; depth: %@|%@; settle: %@|%@ spatial: %@|%@; user adj. vis. frame:%@>", v46, self, style, v44, v43, v42, v41, v40, v28, v39, v31, v32, v33, v34, v30, v35, v36];

  return v37;
}

- (PFPosterEditConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = PFPosterEditConfiguration;
  v5 = [(PFPosterEditConfiguration *)&v42 init];
  if ([coderCopy containsValueForKey:@"version"])
  {
    v6 = [coderCopy decodeIntegerForKey:@"version"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"style"];
  style = v5->_style;
  v5->_style = v7;

  if (v6)
  {
    [coderCopy decodeRectForKey:@"visibleFrame"];
    v5->_normalizedVisibleFrame.origin.x = v9;
    v5->_normalizedVisibleFrame.origin.y = v10;
    v5->_normalizedVisibleFrame.size.width = v11;
    v5->_normalizedVisibleFrame.size.height = v12;
    [coderCopy decodeRectForKey:@"landscapeVisibleFrame"];
    v5->_normalizedLandscapeVisibleFrame.origin.x = v13;
    v5->_normalizedLandscapeVisibleFrame.origin.y = v14;
    v5->_normalizedLandscapeVisibleFrame.size.width = v15;
    v5->_normalizedLandscapeVisibleFrame.size.height = v16;
    if (v6 >= 4)
    {
      [coderCopy decodeRectForKey:@"adaptiveVisibleFrame"];
      v5->_normalizedAdaptiveVisibleFrame.origin.x = v17;
      v5->_normalizedAdaptiveVisibleFrame.origin.y = v18;
      v5->_normalizedAdaptiveVisibleFrame.size.width = v19;
      v5->_normalizedAdaptiveVisibleFrame.size.height = v20;
      [coderCopy decodeRectForKey:@"landscapeAdaptiveVisibleFrame"];
      v5->_normalizedLandscapeAdaptiveVisibleFrame.origin.x = v21;
      v5->_normalizedLandscapeAdaptiveVisibleFrame.origin.y = v22;
      v5->_normalizedLandscapeAdaptiveVisibleFrame.size.width = v23;
      v5->_normalizedLandscapeAdaptiveVisibleFrame.size.height = v24;
      [coderCopy decodeRectForKey:@"adaptiveTimeFrame"];
      v5->_normalizedAdaptiveTimeFrame.origin.x = v25;
      v5->_normalizedAdaptiveTimeFrame.origin.y = v26;
      v5->_normalizedAdaptiveTimeFrame.size.width = v27;
      v5->_normalizedAdaptiveTimeFrame.size.height = v28;
      [coderCopy decodeRectForKey:@"landscapeAdaptiveTimeFrame"];
      v5->_normalizedLandscapeAdaptiveTimeFrame.origin.x = v29;
      v5->_normalizedLandscapeAdaptiveTimeFrame.origin.y = v30;
      v5->_normalizedLandscapeAdaptiveTimeFrame.size.width = v31;
      v5->_normalizedLandscapeAdaptiveTimeFrame.size.height = v32;
      goto LABEL_11;
    }
  }

  else
  {
    v33 = *(MEMORY[0x1E695F050] + 16);
    v5->_normalizedVisibleFrame.origin = *MEMORY[0x1E695F050];
    v5->_normalizedVisibleFrame.size = v33;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *v41 = 0;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Decoded PFPosterEditConfiguration contains legacy visible frame, ignored.", v41, 2u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *v41 = 0;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Decoded PFPosterEditConfiguration contains legacy adaptive visible frame, ignored.", v41, 2u);
  }

LABEL_11:
  v5->_isPerspectiveZoomEnabled = [coderCopy decodeBoolForKey:@"isPerspectiveZoomEnabled"];
  v5->_isDepthEnabled = [coderCopy decodeBoolForKey:@"isDepthEnabled"];
  v5->_isDepthAvailable = [coderCopy decodeBoolForKey:@"isDepthAvailable"];
  v5->_isLandscapeDepthEnabled = [coderCopy decodeBoolForKey:@"isLandscapeDepthEnabled"];
  if ([coderCopy containsValueForKey:@"additionalTitleLabelHeight"])
  {
    [coderCopy decodeDoubleForKey:@"additionalTitleLabelHeight"];
    v5->_additionalTitleLabelHeight = v34;
  }

  if ([coderCopy containsValueForKey:@"landscapeAdditionalTitleLabelHeight"])
  {
    [coderCopy decodeDoubleForKey:@"landscapeAdditionalTitleLabelHeight"];
    v5->_landscapeAdditionalTitleLabelHeight = v35;
  }

  if ([coderCopy containsValueForKey:@"userAdjustedTitleLabelHeightOffset"])
  {
    [coderCopy decodeDoubleForKey:@"userAdjustedTitleLabelHeightOffset"];
    v5->_userAdjustedTitleLabelHeightOffset = v36;
  }

  if ([coderCopy containsValueForKey:@"landscapeUserAdjustedTitleLabelHeightOffset"])
  {
    [coderCopy decodeDoubleForKey:@"landscapeUserAdjustedTitleLabelHeightOffset"];
    v5->_landscapeUserAdjustedTitleLabelHeightOffset = v37;
  }

  if (v6 < 2)
  {
    v5->_userAdjustedVisibleFrame = 0;
    *&v5->_isSettlingEffectEnabled = 0;
  }

  else
  {
    v5->_isSettlingEffectEnabled = [coderCopy decodeBoolForKey:@"isSettlingEffectEnabled"];
    v5->_isSettlingEffectAvailable = [coderCopy decodeBoolForKey:@"isSettlingEffectAvailable"];
    if (v6 != 2)
    {
      v5->_isSpatialPhotoEnabled = [coderCopy decodeBoolForKey:@"isSpatialPhotoEnabled"];
      v5->_isSpatialPhotoAvailable = [coderCopy decodeBoolForKey:@"isSpatialPhotoAvailable"];
      v39 = [coderCopy decodeBoolForKey:@"userAdjustedVisibleFrame"];
      v38 = 0;
      v5->_userAdjustedVisibleFrame = v39;
      goto LABEL_25;
    }

    *&v5->_isSpatialPhotoEnabled = 0;
    v5->_userAdjustedVisibleFrame = 0;
  }

  v38 = 1;
LABEL_25:
  v5->_preserveLegacyHeadroom = v38;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:4 forKey:@"version"];
  style = [(PFPosterEditConfiguration *)self style];
  [coderCopy encodeObject:style forKey:@"style"];

  [(PFPosterEditConfiguration *)self normalizedVisibleFrame];
  [coderCopy encodeRect:@"visibleFrame" forKey:?];
  [(PFPosterEditConfiguration *)self normalizedLandscapeVisibleFrame];
  [coderCopy encodeRect:@"landscapeVisibleFrame" forKey:?];
  [(PFPosterEditConfiguration *)self normalizedAdaptiveVisibleFrame];
  [coderCopy encodeRect:@"adaptiveVisibleFrame" forKey:?];
  [(PFPosterEditConfiguration *)self normalizedLandscapeAdaptiveVisibleFrame];
  [coderCopy encodeRect:@"landscapeAdaptiveVisibleFrame" forKey:?];
  [(PFPosterEditConfiguration *)self normalizedAdaptiveTimeFrame];
  [coderCopy encodeRect:@"adaptiveTimeFrame" forKey:?];
  [(PFPosterEditConfiguration *)self normalizedLandscapeAdaptiveTimeFrame];
  [coderCopy encodeRect:@"landscapeAdaptiveTimeFrame" forKey:?];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isPerspectiveZoomEnabled](self forKey:{"isPerspectiveZoomEnabled"), @"isPerspectiveZoomEnabled"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isDepthEnabled](self forKey:{"isDepthEnabled"), @"isDepthEnabled"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isDepthAvailable](self forKey:{"isDepthAvailable"), @"isDepthAvailable"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isLandscapeDepthEnabled](self forKey:{"isLandscapeDepthEnabled"), @"isLandscapeDepthEnabled"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isSettlingEffectEnabled](self forKey:{"isSettlingEffectEnabled"), @"isSettlingEffectEnabled"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isSettlingEffectAvailable](self forKey:{"isSettlingEffectAvailable"), @"isSettlingEffectAvailable"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isSpatialPhotoEnabled](self forKey:{"isSpatialPhotoEnabled"), @"isSpatialPhotoEnabled"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration isSpatialPhotoAvailable](self forKey:{"isSpatialPhotoAvailable"), @"isSpatialPhotoAvailable"}];
  [coderCopy encodeBool:-[PFPosterEditConfiguration userAdjustedVisibleFrame](self forKey:{"userAdjustedVisibleFrame"), @"userAdjustedVisibleFrame"}];
  [(PFPosterEditConfiguration *)self additionalTitleLabelHeight];
  [coderCopy encodeDouble:@"additionalTitleLabelHeight" forKey:?];
  [(PFPosterEditConfiguration *)self landscapeAdditionalTitleLabelHeight];
  [coderCopy encodeDouble:@"landscapeAdditionalTitleLabelHeight" forKey:?];
  [(PFPosterEditConfiguration *)self userAdjustedTitleLabelHeightOffset];
  [coderCopy encodeDouble:@"userAdjustedTitleLabelHeightOffset" forKey:?];
  [(PFPosterEditConfiguration *)self landscapeUserAdjustedTitleLabelHeightOffset];
  [coderCopy encodeDouble:@"landscapeUserAdjustedTitleLabelHeightOffset" forKey:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [PFPosterEditConfiguration allocWithZone:zone];
  objc_storeStrong(&v4->_style, self->_style);
  size = self->_normalizedVisibleFrame.size;
  v4->_normalizedVisibleFrame.origin = self->_normalizedVisibleFrame.origin;
  v4->_normalizedVisibleFrame.size = size;
  v6 = self->_normalizedLandscapeVisibleFrame.size;
  v4->_normalizedLandscapeVisibleFrame.origin = self->_normalizedLandscapeVisibleFrame.origin;
  v4->_normalizedLandscapeVisibleFrame.size = v6;
  v7 = self->_normalizedAdaptiveVisibleFrame.size;
  v4->_normalizedAdaptiveVisibleFrame.origin = self->_normalizedAdaptiveVisibleFrame.origin;
  v4->_normalizedAdaptiveVisibleFrame.size = v7;
  v8 = self->_normalizedLandscapeAdaptiveVisibleFrame.size;
  v4->_normalizedLandscapeAdaptiveVisibleFrame.origin = self->_normalizedLandscapeAdaptiveVisibleFrame.origin;
  v4->_normalizedLandscapeAdaptiveVisibleFrame.size = v8;
  v9 = self->_normalizedAdaptiveTimeFrame.size;
  v4->_normalizedAdaptiveTimeFrame.origin = self->_normalizedAdaptiveTimeFrame.origin;
  v4->_normalizedAdaptiveTimeFrame.size = v9;
  v10 = self->_normalizedLandscapeAdaptiveTimeFrame.size;
  v4->_normalizedLandscapeAdaptiveTimeFrame.origin = self->_normalizedLandscapeAdaptiveTimeFrame.origin;
  v4->_normalizedLandscapeAdaptiveTimeFrame.size = v10;
  v4->_isPerspectiveZoomEnabled = self->_isPerspectiveZoomEnabled;
  v4->_isDepthEnabled = self->_isDepthEnabled;
  v4->_isDepthAvailable = self->_isDepthAvailable;
  v4->_isLandscapeDepthEnabled = self->_isLandscapeDepthEnabled;
  v4->_isSettlingEffectEnabled = self->_isSettlingEffectEnabled;
  v4->_isSettlingEffectAvailable = self->_isSettlingEffectAvailable;
  v4->_isSpatialPhotoEnabled = self->_isSpatialPhotoEnabled;
  v4->_isSpatialPhotoAvailable = self->_isSpatialPhotoAvailable;
  v4->_userAdjustedVisibleFrame = self->_userAdjustedVisibleFrame;
  v4->_additionalTitleLabelHeight = self->_additionalTitleLabelHeight;
  v4->_landscapeAdditionalTitleLabelHeight = self->_landscapeAdditionalTitleLabelHeight;
  v4->_userAdjustedTitleLabelHeightOffset = self->_userAdjustedTitleLabelHeightOffset;
  v4->_landscapeUserAdjustedTitleLabelHeightOffset = self->_landscapeUserAdjustedTitleLabelHeightOffset;
  return v4;
}

- (id)analyticsPayload
{
  v19[8] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v18[0] = @"perspective_zoom_enabled";
  v17 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isPerspectiveZoomEnabled](self, "isPerspectiveZoomEnabled")}];
  v19[0] = v17;
  v18[1] = @"depth_enabled";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isDepthEnabled](self, "isDepthEnabled")}];
  v19[1] = v4;
  v18[2] = @"landscape_depth_enabled";
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isLandscapeDepthEnabled](self, "isLandscapeDepthEnabled")}];
  v19[2] = v5;
  v18[3] = @"depth_available";
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isDepthAvailable](self, "isDepthAvailable")}];
  v19[3] = v6;
  v18[4] = @"settling_effect_enabled";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isSettlingEffectEnabled](self, "isSettlingEffectEnabled")}];
  v19[4] = v7;
  v18[5] = @"settling_effect_available";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isSettlingEffectAvailable](self, "isSettlingEffectAvailable")}];
  v19[5] = v8;
  v18[6] = @"spatial_photo_enabled";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isSpatialPhotoEnabled](self, "isSpatialPhotoEnabled")}];
  v19[6] = v9;
  v18[7] = @"spatial_photo_available";
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterEditConfiguration isSpatialPhotoAvailable](self, "isSpatialPhotoAvailable")}];
  v19[7] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:8];
  v12 = [v3 initWithDictionary:v11];

  style = [(PFPosterEditConfiguration *)self style];

  if (style)
  {
    style2 = [(PFPosterEditConfiguration *)self style];
    kind = [style2 kind];
    [v12 setObject:kind forKeyedSubscript:@"style_kind"];
  }

  return v12;
}

- (PFPosterEditConfiguration)init
{
  v5.receiver = self;
  v5.super_class = PFPosterEditConfiguration;
  result = [(PFPosterEditConfiguration *)&v5 init];
  v3 = *MEMORY[0x1E695F050];
  v4 = *(MEMORY[0x1E695F050] + 16);
  result->_normalizedVisibleFrame.origin = *MEMORY[0x1E695F050];
  result->_normalizedVisibleFrame.size = v4;
  result->_normalizedAdaptiveVisibleFrame.origin = v3;
  result->_normalizedAdaptiveVisibleFrame.size = v4;
  result->_normalizedLandscapeAdaptiveVisibleFrame.origin = v3;
  result->_normalizedLandscapeAdaptiveVisibleFrame.size = v4;
  result->_normalizedAdaptiveTimeFrame.origin = v3;
  result->_normalizedAdaptiveTimeFrame.size = v4;
  result->_normalizedLandscapeAdaptiveTimeFrame.origin = v3;
  result->_normalizedLandscapeAdaptiveTimeFrame.size = v4;
  return result;
}

@end