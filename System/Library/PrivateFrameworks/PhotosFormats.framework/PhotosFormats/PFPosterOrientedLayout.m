@interface PFPosterOrientedLayout
+ (id)layoutWithDictionaryRepresentation:(id)a3;
- (BOOL)canApplyParallax;
- (BOOL)isUsingHeadroom;
- (CGRect)adaptiveInactiveTopFrame;
- (CGRect)adaptiveTimeFrame;
- (CGRect)adaptiveVisibleFrame;
- (CGRect)extendedImageExtent;
- (CGRect)imageExtent;
- (CGRect)inactiveFrame;
- (CGRect)normalizedAdaptiveTimeFrame;
- (CGRect)normalizedAdaptiveTimeFrameInVisibleFrame;
- (CGRect)normalizedAdaptiveVisibleFrame;
- (CGRect)normalizedVisibleFrame;
- (CGRect)originalImageExtent;
- (CGRect)parallaxInactiveFrame;
- (CGRect)parallaxVisibleFrame;
- (CGRect)salientContentFrame;
- (CGRect)screenExtent;
- (CGRect)spatialAdaptiveFrame;
- (CGRect)spatialVisibleFrame;
- (CGRect)timeFrame;
- (CGRect)visibleFrame;
- (CGSize)deviceResolution;
- (CGSize)extendedImageSize;
- (CGSize)imageSize;
- (CGSize)parallaxPadding;
- (PFParallaxLayoutConfiguration)configuration;
- (char)initWithImageSize:(double)a3 deviceResolution:(double)a4 parallaxPadding:(double)a5 visibleFrame:(double)a6 adaptiveVisibleFrame:(double)a7 inactiveFrame:(uint64_t)a8 adaptiveInactiveTopFrame:(void *)a9 spatialVisibleFrame:(uint64_t)a10 spatialAdaptiveFrame:(uint64_t)a11 timeFrame:(char)a12 adaptiveTimeFrame:(void *)a13 salientContentFrame:(uint64_t)a14 clockLayerOrder:(__int128)a15 clockIntersection:(uint64_t)a16 layoutVariant:(uint64_t)a17 hasTopEdgeContact:(__int128)a18 maxClockShift:(uint64_t)a19 debugLayouts:(uint64_t)a20;
- (id)debugDescription;
- (id)debugSwiftCode;
- (id)description;
- (id)dictionaryRepresentation;
- (id)layoutByUpdatingAdaptiveInactiveFrame:(CGRect)a3;
- (id)layoutByUpdatingAdaptiveTimeFrame:(CGRect)a3;
- (id)layoutByUpdatingAdaptiveVisibleFrame:(CGRect)a3;
- (id)layoutByUpdatingClockIntersection:(unint64_t)a3;
- (id)layoutByUpdatingClockLayerOrder:(id)a3;
- (id)layoutByUpdatingConfiguration:(id)a3;
- (id)layoutByUpdatingConfigurationWithSaliency:(id)a3 normalizedTopEdgeInset:(double)a4;
- (id)layoutByUpdatingImageSize:(CGSize)a3;
- (id)layoutByUpdatingInactiveFrame:(CGRect)a3;
- (id)layoutByUpdatingLayoutVariant:(unint64_t)a3;
- (id)layoutByUpdatingMaxClockShift:(double)a3;
- (id)layoutByUpdatingNormalizedAdaptiveTimeFrame:(CGRect)a3;
- (id)layoutByUpdatingNormalizedAdaptiveVisibleFrame:(CGRect)a3;
- (id)layoutByUpdatingNormalizedVisibleFrame:(CGRect)a3 remapAdaptiveVisibleFrame:(BOOL)a4;
- (id)layoutByUpdatingVisibleFrame:(CGRect)a3;
- (id)layoutByUpgradingToConfiguration:(id)a3;
- (int64_t)orientation;
@end

@implementation PFPosterOrientedLayout

- (CGRect)salientContentFrame
{
  x = self->_salientContentFrame.origin.x;
  y = self->_salientContentFrame.origin.y;
  width = self->_salientContentFrame.size.width;
  height = self->_salientContentFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveTimeFrame
{
  x = self->_adaptiveTimeFrame.origin.x;
  y = self->_adaptiveTimeFrame.origin.y;
  width = self->_adaptiveTimeFrame.size.width;
  height = self->_adaptiveTimeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)timeFrame
{
  x = self->_timeFrame.origin.x;
  y = self->_timeFrame.origin.y;
  width = self->_timeFrame.size.width;
  height = self->_timeFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveInactiveTopFrame
{
  x = self->_adaptiveInactiveTopFrame.origin.x;
  y = self->_adaptiveInactiveTopFrame.origin.y;
  width = self->_adaptiveInactiveTopFrame.size.width;
  height = self->_adaptiveInactiveTopFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)inactiveFrame
{
  x = self->_inactiveFrame.origin.x;
  y = self->_inactiveFrame.origin.y;
  width = self->_inactiveFrame.size.width;
  height = self->_inactiveFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)spatialAdaptiveFrame
{
  x = self->_spatialAdaptiveFrame.origin.x;
  y = self->_spatialAdaptiveFrame.origin.y;
  width = self->_spatialAdaptiveFrame.size.width;
  height = self->_spatialAdaptiveFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)spatialVisibleFrame
{
  x = self->_spatialVisibleFrame.origin.x;
  y = self->_spatialVisibleFrame.origin.y;
  width = self->_spatialVisibleFrame.size.width;
  height = self->_spatialVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)adaptiveVisibleFrame
{
  x = self->_adaptiveVisibleFrame.origin.x;
  y = self->_adaptiveVisibleFrame.origin.y;
  width = self->_adaptiveVisibleFrame.size.width;
  height = self->_adaptiveVisibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)visibleFrame
{
  x = self->_visibleFrame.origin.x;
  y = self->_visibleFrame.origin.y;
  width = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)parallaxPadding
{
  width = self->_parallaxPadding.width;
  height = self->_parallaxPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)deviceResolution
{
  width = self->_deviceResolution.width;
  height = self->_deviceResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)debugSwiftCode
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [(PFPosterOrientedLayout *)self imageSize];
  v5 = v4;
  [(PFPosterOrientedLayout *)self imageSize];
  [v3 appendFormat:@"XCTAssertEqual(item.originalLayout.imageSize, CGSize(width: %d, height: %d), Bad original layout image size)\n", v5, v6];
  [(PFPosterOrientedLayout *)self deviceResolution];
  v8 = v7;
  [(PFPosterOrientedLayout *)self deviceResolution];
  [v3 appendFormat:@"XCTAssertEqual(item.originalLayout.deviceResolution, CGSize(width: %d, height: %d), Bad original layout device resolution)\n", v8, v9];
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v11 = v10;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  [v3 appendFormat:@"XCTAssertEqual(item.originalLayout.parallaxPadding, CGSize(width: %.0f, height: %.0f), accuracy: 1.0, Bad original layout parallax padding)\n", v11, v12];
  [(PFPosterOrientedLayout *)self visibleFrame];
  v14 = v13;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v16 = v15;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v18 = v17;
  [(PFPosterOrientedLayout *)self visibleFrame];
  [v3 appendFormat:@"XCTAssertEqual(item.originalLayout.visibleFrame, CGRect(x: %.0f, y: %.0f, width: %.0f, height: %.0f), accuracy: 1.0, Bad original layout visibleFrame)\n", v14, v16, v18, v19];
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v21 = v20;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v23 = v22;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v25 = v24;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  [v3 appendFormat:@"XCTAssertEqual(item.originalLayout.inactiveFrame, CGRect(x: %.0f, y: %.0f, width: %.0f, height: %.0f), accuracy: 1.0, Bad original layout inactiveFrame)\n", v21, v23, v25, v26];
  [(PFPosterOrientedLayout *)self timeFrame];
  v28 = v27;
  [(PFPosterOrientedLayout *)self timeFrame];
  v30 = v29;
  [(PFPosterOrientedLayout *)self timeFrame];
  v32 = v31;
  [(PFPosterOrientedLayout *)self timeFrame];
  [v3 appendFormat:@"XCTAssertEqual(item.originalLayout.timeFrame, CGRect(x: %.0f, y: %.0f, width: %.0f, height: %.0f), accuracy: 1.0, Bad original layout timeFrame)\n", v28, v30, v32, v33];
  v34 = [(PFPosterOrientedLayout *)self clockLayerOrder];

  if (v34 == @"ClockAboveForeground")
  {
    v36 = @".aboveForeground";
  }

  else
  {
    v35 = [(PFPosterOrientedLayout *)self clockLayerOrder];

    v36 = @".aboveBackground";
    if (v35 != @"ClockAboveBackground")
    {
      v36 = 0;
    }
  }

  [v3 appendFormat:@"XCTAssertEqual(item.originalLayout.clockLayerOrder, %@, Bad original layout clock layer order)\n", v36];
  v37 = [v3 copy];

  return v37;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [(PFPosterOrientedLayout *)self imageSize];
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v24);
  [v3 setObject:DictionaryRepresentation forKeyedSubscript:@"imageSize"];

  [(PFPosterOrientedLayout *)self deviceResolution];
  v5 = CGSizeCreateDictionaryRepresentation(v25);
  [v3 setObject:v5 forKeyedSubscript:@"deviceResolution"];

  [(PFPosterOrientedLayout *)self visibleFrame];
  v6 = CGRectCreateDictionaryRepresentation(v27);
  [v3 setObject:v6 forKeyedSubscript:@"visibleFrame"];

  [(PFPosterOrientedLayout *)self timeFrame];
  v7 = CGRectCreateDictionaryRepresentation(v28);
  [v3 setObject:v7 forKeyedSubscript:@"timeFrame"];

  [(PFPosterOrientedLayout *)self parallaxPadding];
  v8 = CGSizeCreateDictionaryRepresentation(v26);
  [v3 setObject:v8 forKeyedSubscript:@"parallaxPadding"];

  v9 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  [v3 setObject:v9 forKeyedSubscript:@"clockLayerOrder"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFPosterOrientedLayout clockIntersection](self, "clockIntersection")}];
  [v3 setObject:v10 forKeyedSubscript:@"clockIntersection"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[PFPosterOrientedLayout hasTopEdgeContact](self, "hasTopEdgeContact")}];
  [v3 setObject:v11 forKeyedSubscript:@"hasTopEdgeContact"];

  v12 = MEMORY[0x1E696AD98];
  [(PFPosterOrientedLayout *)self maxClockShift];
  v13 = [v12 numberWithDouble:?];
  [v3 setObject:v13 forKeyedSubscript:@"maxClockShift"];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PFPosterOrientedLayout layoutVariant](self, "layoutVariant")}];
  [v3 setObject:v14 forKeyedSubscript:@"layoutVariant"];

  [(PFPosterOrientedLayout *)self inactiveFrame];
  if (!CGRectIsNull(v29))
  {
    [(PFPosterOrientedLayout *)self inactiveFrame];
    v15 = CGRectCreateDictionaryRepresentation(v30);
    [v3 setObject:v15 forKeyedSubscript:@"inactiveFrame"];
  }

  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  if (!CGRectIsNull(v31))
  {
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v16 = CGRectCreateDictionaryRepresentation(v32);
    [v3 setObject:v16 forKeyedSubscript:@"adaptiveVisibleFrame"];
  }

  [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
  if (!CGRectIsNull(v33))
  {
    [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
    v17 = CGRectCreateDictionaryRepresentation(v34);
    [v3 setObject:v17 forKeyedSubscript:@"inactiveAdaptive"];
  }

  [(PFPosterOrientedLayout *)self spatialVisibleFrame];
  if (!CGRectIsNull(v35))
  {
    [(PFPosterOrientedLayout *)self spatialVisibleFrame];
    v18 = CGRectCreateDictionaryRepresentation(v36);
    [v3 setObject:v18 forKeyedSubscript:@"spatialVisibleFrame"];
  }

  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  if (!CGRectIsNull(v37))
  {
    [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
    v19 = CGRectCreateDictionaryRepresentation(v38);
    [v3 setObject:v19 forKeyedSubscript:@"spatialAdaptiveFrame"];
  }

  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  if (!CGRectIsNull(v39))
  {
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v20 = CGRectCreateDictionaryRepresentation(v40);
    [v3 setObject:v20 forKeyedSubscript:@"adaptiveTimeFrame"];
  }

  [(PFPosterOrientedLayout *)self salientContentFrame];
  if (!CGRectIsNull(v41))
  {
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v21 = CGRectCreateDictionaryRepresentation(v42);
    [v3 setObject:v21 forKeyedSubscript:@"salientContentFrame"];
  }

  return v3;
}

- (BOOL)isUsingHeadroom
{
  [(PFPosterOrientedLayout *)self visibleFrame];
  v4 = v3;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v6 = v4 + v5;
  [(PFPosterOrientedLayout *)self imageSize];
  return v6 - v7 > 0.00000011920929;
}

- (BOOL)canApplyParallax
{
  [(PFPosterOrientedLayout *)self visibleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v12 = -v11;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v14 = -v13;
  v46.origin.x = v4;
  v46.origin.y = v6;
  v46.size.width = v8;
  v46.size.height = v10;
  v47 = CGRectInset(v46, v12, v14);
  x = v47.origin.x;
  y = v47.origin.y;
  width = v47.size.width;
  height = v47.size.height;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v20 = v19;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v22 = v20 / v21;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v24 = v23;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v26 = v24 / v25;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v28 = v27;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v30 = v29;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v49 = CGRectInset(v48, -(v28 * v22), -(v30 * v26));
  v31 = v49.origin.x;
  v32 = v49.origin.y;
  v33 = v49.size.width;
  v34 = v49.size.height;
  [(PFPosterOrientedLayout *)self imageExtent];
  v51.origin.x = x;
  v51.origin.y = y;
  v51.size.width = width;
  v51.size.height = height;
  v35 = CGRectContainsRect(v50, v51);
  if (v35)
  {
    [(PFPosterOrientedLayout *)self imageExtent];
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v43 = v34;

    LOBYTE(v35) = CGRectContainsRect(*&v36, *&v40);
  }

  return v35;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PFPosterOrientedLayout *)self imageSize];
  v67 = v5;
  [(PFPosterOrientedLayout *)self imageSize];
  v66 = v6;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v65 = v7;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v64 = v8;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v63 = v9;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v62 = v10;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v61 = v11;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v60 = v12;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v59 = v13;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v58 = v14;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v57 = v15;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v56 = v16;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v55 = v17;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v54 = v18;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v53 = v19;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v52 = v20;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v51 = v21;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v50 = v22;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v49 = v23;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v48 = v24;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v47 = v25;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v46 = v26;
  [(PFPosterOrientedLayout *)self timeFrame];
  v28 = v27;
  [(PFPosterOrientedLayout *)self timeFrame];
  v30 = v29;
  [(PFPosterOrientedLayout *)self timeFrame];
  v32 = v31;
  [(PFPosterOrientedLayout *)self timeFrame];
  v34 = v33;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v36 = v35;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v38 = v37;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v40 = v39;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v42 = v41;
  v43 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v44 = [v3 stringWithFormat:@"<%@:%p> img:%.0fx%.0f res:%.0fx%.0f pad:%.0fx%.0fx vis:%.0f, %.0f %.0fx%.0f advis:%.0f, %.0f %.0fx%.0f spadvis:%.0f, %.0f %.0fx%.0f inact:%.0f, %.0f %.0fx%.0f time:%.0f, %.0f %.0fx%.0f adtime:%.0f, %.0f %.0fx%.0f clock:%@", v4, self, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v47, v46, v28, v30, v32, v34, v36, v38, v40, v42, v43];

  return v44;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  [(PFPosterOrientedLayout *)self imageSize];
  v6 = v5;
  [(PFPosterOrientedLayout *)self imageSize];
  v8 = v7;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v10 = v9;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v12 = v11;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v14 = v13;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v16 = v15;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v18 = v17;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v20 = v19;
  v21 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v22 = [v3 stringWithFormat:@"<%@:%p img:%.0fx%.0f res:%.0fx%.0f vis:%.0f, %.0f %.0fx%.0f clock:%@>", v4, self, v6, v8, v10, v12, v14, v16, v18, v20, v21];

  return v22;
}

- (id)layoutByUpgradingToConfiguration:(id)a3
{
  v184 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PFPosterOrientedLayout *)self configuration];
  v6 = [v4 isEqualToLayoutConfiguration:v5];

  if (v6)
  {
    v7 = self;
    goto LABEL_60;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v8 = [(PFPosterOrientedLayout *)self debugDescription];
    v9 = [v4 debugDescription];
    *buf = 138412546;
    v179 = *&v8;
    v180 = 2112;
    v181 = *&v9;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Upgrading %@ to %@", buf, 0x16u);
  }

  v10 = MEMORY[0x1E695EFF8];
  if ([(PFPosterOrientedLayout *)self isUsingHeadroom])
  {
    [(PFPosterOrientedLayout *)self extendedImageSize];
  }

  else
  {
    [(PFPosterOrientedLayout *)self imageSize];
  }

  v164 = v11;
  v166 = v12;
  v170 = v10[1];
  [(PFPosterOrientedLayout *)self visibleFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v22 = v21;
  v162 = v23;
  v25 = v24;
  v168 = v26;
  [(PFPosterOrientedLayout *)self timeFrame];
  v152 = v27;
  v154 = v28;
  v156 = v29;
  v158 = v30;
  v174 = v16;
  v176 = v14;
  v186.origin.x = v14;
  v186.origin.y = v16;
  v186.size.width = v18;
  v186.size.height = v20;
  if (CGRectIsEmpty(v186))
  {
    v31 = *v10;
    [(PFPosterOrientedLayout *)self deviceResolution];
    v34 = v32;
    v35 = v33;
    if ((v32 == 0.0 || v33 == 0.0 || v32 == *MEMORY[0x1E69BDDB0] && v33 == *(MEMORY[0x1E69BDDB0] + 8)) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v179 = v34;
      v180 = 2048;
      v181 = v35;
      v182 = 2048;
      v183 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }

    PFSizeWithAspectRatioFittingSize();
    v18 = v36;
    v20 = v37;
    v174 = v170 + v166 * 0.5 + v37 * -0.5;
    v176 = v31 + v164 * 0.5 + v36 * -0.5;
  }

  [v4 screenSize];
  v40 = v39 / v38;
  v41 = v20;
  v42 = v20 * v18;
  v43 = sqrt(v20 * v18 / v40);
  v44 = sqrt(v42 * v40);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v176, *&v174, *&v43, *&v44];
    *buf = 138412290;
    v179 = *&v45;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newVisibleFrame after scaling: %@", buf, 0xCu);
  }

  v172 = v22;
  v173 = v43;
  v46 = v43 <= v164 && v44 <= v166;
  v47 = v44;
  if (!v46)
  {
    PFSizeWithAspectRatioFittingSize();
    v49 = v48;
    v47 = v50;
    v173 = v48;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v176, *&v174, *&v49, *&v47];
      *buf = 138412290;
      v179 = *&v51;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newVisibleFrame after more scaling: %@", buf, 0xCu);
    }
  }

  v160 = v41;
  v52 = v156;
  v53 = v158;
  v54 = v174;
  v55 = v176;
  if (v158 <= v156)
  {
    v56 = v152;
    v57 = v154;
    MinY = CGRectGetMinY(*(&v52 - 2));
    v54 = v174;
    v55 = v176;
    v187.origin.x = v176;
    v187.origin.y = v174;
    v187.size.width = v18;
    v187.size.height = v41;
    if (MinY >= CGRectGetMidY(v187))
    {
      [v4 timeRect];
      v55 = v176 + (v18 - v173) * 0.5;
      v54 = v154 - (v59 * v47 + 0.0) + (v158 - v47 * v60) * 0.25;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v55, *&v54, *&v173, *&v47];
        *buf = 138412290;
        v179 = *&v61;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newVisibleFrame after centering: %@", buf, 0xCu);
      }

      if (v54 >= v170)
      {
        if (v47 + v54 > v170 + v166)
        {
          v54 = v170 + v166 - v47;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v55, *&v54, *&v173, *&v47];
            *buf = 138412290;
            v179 = *&v63;
            _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newVisibleFrame after clamp 2: %@", buf, 0xCu);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v55, *&v170, *&v173, *&v47];
          *buf = 138412290;
          v179 = *&v62;
          _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newVisibleFrame after clamp 1: %@", buf, 0xCu);
        }

        v54 = v170;
      }
    }
  }

  v188.origin.x = v172;
  v64 = v162;
  v188.origin.y = v162;
  v188.size.width = v25;
  v65 = v168;
  v188.size.height = v168;
  if (!CGRectIsNull(v188))
  {
    v66 = v25 * v168;
    v25 = sqrt(v25 * v168 / v40);
    v67 = sqrt(v66 * v40);
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v172, *&v162, *&v25, *&v67];
      *buf = 138412290;
      v179 = *&v68;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newInactiveFrame after scaling: %@", buf, 0xCu);
    }

    v64 = v170;
    if (v25 > v164 || v67 > v166)
    {
      PFSizeWithAspectRatioFittingSize();
      v25 = v69;
      v67 = v70;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v71 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v172, *&v162, *&v25, *&v67];
        *buf = 138412290;
        v179 = *&v71;
        _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newInactiveFrame after more scaling: %@", buf, 0xCu);
      }
    }

    v72 = v67;
    v172 = v172 + v55 - v176;
    v73 = v162 + v54 - v174;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v172, *&v73, *&v25, *&v72];
      *buf = 138412290;
      v179 = *&v74;
      _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newInactiveFrame after offset: %@", buf, 0xCu);
    }

    if (v73 < v170)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v65 = v72;
        v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v172, *&v170, *&v25, *&v72];
        *buf = 138412290;
        v179 = *&v75;
        v76 = MEMORY[0x1E69E9C10];
        v77 = "newInactiveFrame after clamp 1: %@";
LABEL_50:
        _os_log_impl(&dword_1B35C1000, v76, OS_LOG_TYPE_DEFAULT, v77, buf, 0xCu);

        goto LABEL_53;
      }

LABEL_52:
      v65 = v72;
      goto LABEL_53;
    }

    if (v73 + v72 <= v170 + v166)
    {
      v64 = v162 + v54 - v174;
      goto LABEL_52;
    }

    v64 = v170 + v166 - v72;
    v65 = v72;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v172, *&v64, *&v25, *&v72];
      *buf = 138412290;
      v179 = *&v75;
      v76 = MEMORY[0x1E69E9C10];
      v77 = "newInactiveFrame after clamp 2: %@";
      goto LABEL_50;
    }
  }

LABEL_53:
  [v4 timeRect];
  v165 = v54 + v79 * v47;
  v167 = v55 + v78 * v173;
  v163 = v173 * v80;
  v159 = v47 * v81;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v82 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{{%.2f, %.2f}, {%.2f, %.2f}}", *&v167, *&v165, *&v163, *&v159];
    *buf = 138412290;
    v179 = *&v82;
    _os_log_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "newTimeRect: %@", buf, 0xCu);
  }

  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v87 = v86 - v176;
  v88 = 0.0;
  v89 = 0.0;
  if (v18 != 0.0)
  {
    v87 = v87 / v18;
    v89 = v84 / v18;
  }

  v169 = v65;
  v171 = v64;
  v177 = v25;
  v90 = v83 - v174;
  if (v160 != 0.0)
  {
    v90 = v90 / v160;
    v88 = v85 / v160;
  }

  v157 = v54;
  v148 = v54 + v90 * v47;
  v149 = v55 + v87 * v173;
  v146 = v47 * v88;
  v147 = v173 * v89;
  v91 = [PFPosterOrientedLayout alloc];
  [(PFPosterOrientedLayout *)self imageSize];
  v175 = v92;
  v161 = v93;
  [v4 screenSize];
  v153 = v95;
  v155 = v94;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v150 = v97;
  v151 = v96;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v144 = v99;
  v145 = v98;
  v142 = v101;
  v143 = v100;
  [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
  v140 = v103;
  v141 = v102;
  v139 = v104;
  v137 = v105;
  [(PFPosterOrientedLayout *)self spatialVisibleFrame];
  v135 = v107;
  v136 = v106;
  v134 = v108;
  v132 = v109;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v111 = v110;
  v138 = v55;
  v113 = v112;
  v115 = v114;
  v117 = v116;
  [(PFPosterOrientedLayout *)self salientContentFrame];
  v119 = v118;
  v121 = v120;
  v133 = v47;
  v123 = v122;
  v125 = v124;
  v126 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v127 = [(PFPosterOrientedLayout *)self clockIntersection];
  v128 = [(PFPosterOrientedLayout *)self layoutVariant];
  v129 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
  [(PFPosterOrientedLayout *)self maxClockShift];
  v7 = [(PFPosterOrientedLayout *)v91 initWithImageSize:v126 deviceResolution:v127 parallaxPadding:v128 visibleFrame:v129 adaptiveVisibleFrame:0 inactiveFrame:v175 adaptiveInactiveTopFrame:v161 spatialVisibleFrame:v155 spatialAdaptiveFrame:v153 timeFrame:v151 adaptiveTimeFrame:v150 salientContentFrame:*&v138 clockLayerOrder:*&v157 clockIntersection:*&v173 layoutVariant:*&v133 hasTopEdgeContact:v145 maxClockShift:v144 debugLayouts:v143, v142, *&v172, *&v171, *&v177, *&v169, v141, v140, v139, v137, v136, v135, v134, v132, v111, v113, v115, v117, *&v167, *&v165, *&v163, *&v159, *&v149, *&v148, *&v147, *&v146, v119, v121, v123, v125, v130];

LABEL_60:

  return v7;
}

- (id)layoutByUpdatingConfigurationWithSaliency:(id)a3 normalizedTopEdgeInset:(double)a4
{
  v162 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v144 = v12;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v146 = v13;
  v148 = v14;
  v152 = v16;
  v153 = v15;
  [v5 screenSize];
  v18 = v17;
  v20 = v19;
  [(PFPosterOrientedLayout *)self salientContentFrame];
  v128 = v21;
  v130 = v22;
  v24 = v23;
  v132 = v25;
  if (v18 == 0.0 || v20 == 0.0 || (v18 == *MEMORY[0x1E69BDDB0] ? (v26 = v20 == *(MEMORY[0x1E69BDDB0] + 8)) : (v26 = 0), v26))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v157 = v18;
      v158 = 2048;
      v159 = v20;
      v160 = 2048;
      v161 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  v154 = v7;
  PFSizeWithAspectRatioFittingSize();
  v28 = v27;
  v164.size.height = v30;
  v126 = v24 + a4 * v30;
  v164.origin.x = v7 + v11 * 0.5 + v27 * -0.5;
  x = v164.origin.x;
  v164.origin.y = v9 + v144 * 0.5 + v30 * -0.5;
  y = v164.origin.y;
  v164.size.width = v28;
  height = v164.size.height;
  v32 = v11;
  Width = CGRectGetWidth(v164);
  v165.origin.x = v7;
  v165.origin.y = v9;
  v165.size.width = v32;
  v165.size.height = v144;
  v134 = CGRectGetWidth(v165);
  v136 = Width;
  v150 = v9;
  v138 = x;
  v140 = y;
  v34 = x;
  v35 = y;
  v36 = v28;
  v37 = height;
  if (Width == v134)
  {
    v124 = CGRectGetHeight(*&v34);
    v166.origin.x = x;
    v166.origin.y = y;
    v166.size.width = v28;
    v166.size.height = height;
    MinY = CGRectGetMinY(v166);
    v167.origin.x = v7;
    v167.origin.y = v9;
    v167.size.width = v32;
    v167.size.height = v144;
    MinX = CGRectGetMinY(v167);
    v168.origin.x = v7;
    v168.origin.y = v9;
    v168.size.width = v32;
    v168.size.height = v144;
    MaxY = CGRectGetMaxY(v168);
    v169.origin.x = v128;
    v169.origin.y = v130;
    v169.size.width = v132;
    v169.size.height = v126;
    v120 = CGRectGetMinY(v169);
    v170.origin.x = v128;
    v170.origin.y = v130;
    v170.size.width = v132;
    v170.size.height = v126;
    MaxX = CGRectGetMaxY(v170);
  }

  else
  {
    v124 = CGRectGetWidth(*&v34);
    v171.origin.x = x;
    v171.origin.y = y;
    v171.size.width = v28;
    v171.size.height = height;
    MinY = CGRectGetMinX(v171);
    v172.origin.x = v7;
    v172.origin.y = v9;
    v172.size.width = v32;
    v172.size.height = v144;
    MinX = CGRectGetMinX(v172);
    v173.origin.x = v7;
    v173.origin.y = v9;
    v173.size.width = v32;
    v173.size.height = v144;
    MaxY = CGRectGetMaxX(v173);
    v174.origin.x = v128;
    v174.origin.y = v130;
    v174.size.width = v132;
    v174.size.height = v126;
    v120 = CGRectGetMinX(v174);
    v175.origin.x = v128;
    v175.origin.y = v130;
    v175.size.width = v132;
    v175.size.height = v126;
    MaxX = CGRectGetMaxX(v175);
  }

  if (MaxX >= MinX)
  {
    if (v120 >= MaxY)
    {
      v41 = MaxY;
    }

    else
    {
      v41 = v120;
    }

    if (v41 <= MinX)
    {
      v41 = MinX;
    }

    if (MaxX >= MaxY)
    {
      MaxX = MaxY;
    }

    if (MaxX <= MinX)
    {
      MaxX = MinX;
    }

    v42 = MaxX - v41;
    v43 = (v41 + MaxX - v124) * 0.5;
    if (MinY < v41)
    {
      v41 = MinY;
    }

    if (v41 <= MinX)
    {
      v41 = MinX;
    }

    v44 = MaxX - v124;
    if (v41 >= MaxY - v124)
    {
      v41 = MaxY - v124;
    }

    if (v41 > v44)
    {
      v44 = v41;
    }

    if (v42 > v124)
    {
      v44 = v43;
    }

    if (v120 > MaxY)
    {
      MinX = MaxY - v124;
    }

    else
    {
      MinX = v44;
    }
  }

  v176.origin.x = v146;
  v176.origin.y = v148;
  v176.size.height = v152;
  v176.size.width = v153;
  IsNull = CGRectIsNull(v176);
  [v5 timeRect];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v58 = v57 - v154;
  v59 = 0.0;
  v60 = 0.0;
  if (v32 != 0.0)
  {
    v58 = v58 / v32;
    v60 = v55 / v32;
  }

  v61 = v54 - v150;
  if (v144 != 0.0)
  {
    v61 = v61 / v144;
    v59 = v56 / v144;
  }

  v145 = height * v53;
  v133 = v28 * v51;
  if (Width == v134)
  {
    v62 = v138;
  }

  else
  {
    v62 = MinX;
  }

  v139 = v62 + v47 * v28;
  if (v136 != v134)
  {
    MinX = v140;
  }

  v135 = MinX + v49 * height;
  v63 = v146 + v62 - v154;
  if (IsNull)
  {
    v63 = v146;
  }

  v155 = v63;
  v64 = v148 + MinX - v150;
  if (IsNull)
  {
    v64 = v148;
  }

  v151 = v64;
  v125 = MinX + v61 * height;
  v127 = v62 + v58 * v28;
  v121 = height * v59;
  v123 = v28 * v60;
  v65 = [PFPosterOrientedLayout alloc];
  [(PFPosterOrientedLayout *)self imageSize];
  v147 = v67;
  v149 = v66;
  [v5 screenSize];
  v141 = v68;
  v137 = v69;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v129 = v71;
  v131 = v70;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v118 = v73;
  v119 = v72;
  v116 = v75;
  v117 = v74;
  [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
  v114 = v77;
  v115 = v76;
  v112 = v79;
  v113 = v78;
  [(PFPosterOrientedLayout *)self spatialVisibleFrame];
  v110 = v81;
  v111 = v80;
  v107 = v83;
  v108 = v82;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v105 = v85;
  v106 = v84;
  v104 = v86;
  v88 = v87;
  [(PFPosterOrientedLayout *)self salientContentFrame];
  v90 = v89;
  v92 = v91;
  v109 = v28;
  v94 = v93;
  v96 = v95;
  v97 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v98 = [(PFPosterOrientedLayout *)self clockIntersection];
  v99 = [(PFPosterOrientedLayout *)self layoutVariant];
  v100 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
  [(PFPosterOrientedLayout *)self maxClockShift];
  v102 = [(PFPosterOrientedLayout *)v65 initWithImageSize:v97 deviceResolution:v98 parallaxPadding:v99 visibleFrame:v100 adaptiveVisibleFrame:0 inactiveFrame:v149 adaptiveInactiveTopFrame:v147 spatialVisibleFrame:v141 spatialAdaptiveFrame:v137 timeFrame:v131 adaptiveTimeFrame:v129 salientContentFrame:*&v62 clockLayerOrder:*&MinX clockIntersection:*&v109 layoutVariant:*&height hasTopEdgeContact:v119 maxClockShift:v118 debugLayouts:v117, v116, *&v155, *&v151, *&v153, *&v152, v115, v114, v113, v112, v111, v110, v108, v107, v106, v105, v104, v88, *&v139, *&v135, *&v133, *&v145, *&v127, *&v125, *&v123, *&v121, v90, v92, v94, v96, v101];

  return v102;
}

- (id)layoutByUpdatingConfiguration:(id)a3
{
  v173 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PFPosterOrientedLayout *)self configuration];
  v6 = [v4 isEqualToLayoutConfiguration:v5];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    [(PFPosterOrientedLayout *)self visibleFrame];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [(PFPosterOrientedLayout *)self inactiveFrame];
    v17 = v16;
    v19 = v18;
    v153 = v21;
    v155 = v20;
    [(PFPosterOrientedLayout *)self timeFrame];
    v23 = v22;
    v165 = v24;
    v175.origin.x = v9;
    v175.origin.y = v11;
    v175.size.width = v13;
    v175.size.height = v15;
    if (CGRectIsEmpty(v175))
    {
      v161 = v23;
      v25 = *(MEMORY[0x1E695EFF8] + 8);
      v158 = *MEMORY[0x1E695EFF8];
      [(PFPosterOrientedLayout *)self imageSize];
      v27 = v26;
      v29 = v28;
      [(PFPosterOrientedLayout *)self deviceResolution];
      v32 = v30;
      v33 = v31;
      if (v30 == 0.0 || v31 == 0.0 || (v30 == *MEMORY[0x1E69BDDB0] ? (v34 = v31 == *(MEMORY[0x1E69BDDB0] + 8)) : (v34 = 0), v34))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 134218496;
          v168 = v32;
          v169 = 2048;
          v170 = v33;
          v171 = 2048;
          v172 = 0x3FF0000000000000;
          _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
        }
      }

      PFSizeWithAspectRatioFittingSize();
      v13 = v35;
      v15 = v36;
      v9 = v158 + v27 * 0.5 + v35 * -0.5;
      v159 = v25 + v29 * 0.5 + v36 * -0.5;
      v23 = v161;
    }

    else
    {
      v159 = v11;
    }

    [(PFPosterOrientedLayout *)self deviceResolution];
    v38 = v37;
    v40 = v39;
    [v4 screenSize];
    v43 = v40 / v38;
    v44 = v42 / v41;
    v149 = v15;
    if (v42 / v41 <= v43)
    {
      if (v42 / v41 < v43)
      {
        v54 = v13 * v44;
        [v4 timeRect];
        v57 = v23 - (v55 * v54 + 0.0) + (v165 - v54 * v56) * 0.25;
        v58 = v159;
        if (v57 >= v159)
        {
          v58 = v23 - (v55 * v54 + 0.0) + (v165 - v54 * v56) * 0.25;
          if (v54 + v57 > v15 + v159)
          {
            v58 = v15 + v159 - v54;
          }
        }

        v163 = v58;
        v166 = v13 * v44;
        v177.origin.x = v17;
        v177.origin.y = v19;
        v48 = v155;
        v177.size.width = v155;
        v177.size.height = v153;
        IsNull = CGRectIsNull(v177);
        v60 = v155 * v44;
        v51 = v153;
        v52 = v159;
        v53 = v163;
        if (IsNull)
        {
          v60 = v153;
        }

        v151 = v155;
        v152 = v60;
        v157 = v13;
      }

      else
      {
        v51 = v153;
        v48 = v155;
        v151 = v155;
        v152 = v153;
        v166 = v15;
        v157 = v13;
        v52 = v159;
        v53 = v159;
      }

      v47 = v9;
    }

    else
    {
      v157 = v15 / v44;
      v45 = v13 - v15 / v44;
      v162 = v13;
      v46 = v15;
      v47 = v9;
      v9 = v9 + v45 * 0.5;
      v176.origin.x = v17;
      v176.origin.y = v19;
      v48 = v155;
      v176.size.width = v155;
      v176.size.height = v153;
      v49 = CGRectIsNull(v176);
      v50 = v153 / v44;
      v51 = v153;
      if (v49)
      {
        v50 = v155;
      }

      v151 = v50;
      v152 = v153;
      v166 = v46;
      v52 = v159;
      v13 = v162;
      v53 = v159;
    }

    v61 = v17;
    v62 = v19;
    v63 = v48;
    v64 = CGRectIsNull(*(&v51 - 3));
    v65 = v17 + v9 - v47;
    v164 = v53;
    v66 = v19 + v53 - v52;
    if (v64)
    {
      v66 = v19;
    }

    v154 = v66;
    v156 = v9;
    if (v64)
    {
      v65 = v17;
    }

    v148 = v65;
    [v4 timeRect];
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v74 = v73;
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v79 = v78 - v47;
    v80 = 0.0;
    v81 = 0.0;
    if (v13 != 0.0)
    {
      v79 = v79 / v13;
      v81 = v76 / v13;
    }

    v147 = v9 + v68 * v157;
    v146 = v53 + v70 * v166;
    v82 = v75 - v159;
    v160 = v157 * v72;
    v145 = v166 * v74;
    if (v149 != 0.0)
    {
      v82 = v82 / v149;
      v80 = v77 / v149;
    }

    v138 = v53 + v82 * v166;
    v139 = v9 + v79 * v157;
    v136 = v166 * v80;
    v137 = v157 * v81;
    v83 = [PFPosterOrientedLayout alloc];
    [(PFPosterOrientedLayout *)self imageSize];
    v150 = v84;
    v144 = v85;
    [v4 screenSize];
    v142 = v87;
    v143 = v86;
    [(PFPosterOrientedLayout *)self parallaxPadding];
    v140 = v89;
    v141 = v88;
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v134 = v91;
    v135 = v90;
    v132 = v93;
    v133 = v92;
    [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
    v130 = v95;
    v131 = v94;
    v128 = v97;
    v129 = v96;
    [(PFPosterOrientedLayout *)self spatialVisibleFrame];
    v126 = v99;
    v127 = v98;
    v124 = v101;
    v125 = v100;
    [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
    v123 = v102;
    v104 = v103;
    v106 = v105;
    v108 = v107;
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v117 = [(PFPosterOrientedLayout *)self clockLayerOrder];
    v118 = [(PFPosterOrientedLayout *)self clockIntersection];
    v119 = [(PFPosterOrientedLayout *)self layoutVariant];
    v120 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
    [(PFPosterOrientedLayout *)self maxClockShift];
    v7 = [(PFPosterOrientedLayout *)v83 initWithImageSize:v117 deviceResolution:v118 parallaxPadding:v119 visibleFrame:v120 adaptiveVisibleFrame:0 inactiveFrame:v150 adaptiveInactiveTopFrame:v144 spatialVisibleFrame:v143 spatialAdaptiveFrame:v142 timeFrame:v141 adaptiveTimeFrame:v140 salientContentFrame:*&v156 clockLayerOrder:*&v164 clockIntersection:*&v157 layoutVariant:*&v166 hasTopEdgeContact:v135 maxClockShift:v134 debugLayouts:v133, v132, *&v148, *&v154, *&v151, *&v152, v131, v130, v129, v128, v127, v126, v125, v124, v123, v104, v106, v108, *&v147, *&v146, *&v160, *&v145, *&v139, *&v138, *&v137, *&v136, v110, v112, v114, v116, v121];
  }

  return v7;
}

- (id)layoutByUpdatingAdaptiveTimeFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v4 = [PFPosterOrientedLayout alloc];
  [(PFPosterOrientedLayout *)self imageSize];
  v92 = v6;
  v93 = v5;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v90 = v8;
  v91 = v7;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v88 = v10;
  v89 = v9;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v82 = v12;
  v83 = v11;
  v80 = v14;
  v81 = v13;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v78 = v16;
  v79 = v15;
  v76 = v18;
  v77 = v17;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v74 = v20;
  v75 = v19;
  v72 = v22;
  v73 = v21;
  [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
  v70 = v24;
  v71 = v23;
  v68 = v26;
  v69 = v25;
  [(PFPosterOrientedLayout *)self spatialVisibleFrame];
  v66 = v28;
  v67 = v27;
  v64 = v30;
  v65 = v29;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v62 = v32;
  v63 = v31;
  v60 = v34;
  v61 = v33;
  [(PFPosterOrientedLayout *)self timeFrame];
  v59 = v35;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  [(PFPosterOrientedLayout *)self salientContentFrame];
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v51 = [(PFPosterOrientedLayout *)self clockIntersection];
  v52 = [(PFPosterOrientedLayout *)self layoutVariant];
  v53 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
  [(PFPosterOrientedLayout *)self maxClockShift];
  v55 = v54;
  v56 = [(PFPosterOrientedLayout *)self debugLayouts];
  v57 = [(PFPosterOrientedLayout *)v4 initWithImageSize:v50 deviceResolution:v51 parallaxPadding:v52 visibleFrame:v53 adaptiveVisibleFrame:v56 inactiveFrame:v93 adaptiveInactiveTopFrame:v92 spatialVisibleFrame:v91 spatialAdaptiveFrame:v90 timeFrame:v89 adaptiveTimeFrame:v88 salientContentFrame:v83 clockLayerOrder:v82 clockIntersection:v81 layoutVariant:v80 hasTopEdgeContact:v79 maxClockShift:v78 debugLayouts:v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v37, v39, v41, *&x, *&y, *&width, *&height, v43, v45, v47, v49, v55];

  return v57;
}

- (id)layoutByUpdatingLayoutVariant:(unint64_t)a3
{
  if ([(PFPosterOrientedLayout *)self layoutVariant]== a3)
  {
    v5 = self;
  }

  else
  {
    v6 = [PFPosterOrientedLayout alloc];
    [(PFPosterOrientedLayout *)self imageSize];
    v96 = v8;
    v97 = v7;
    [(PFPosterOrientedLayout *)self deviceResolution];
    v94 = v10;
    v95 = v9;
    [(PFPosterOrientedLayout *)self parallaxPadding];
    v92 = v12;
    v93 = v11;
    [(PFPosterOrientedLayout *)self visibleFrame];
    v90 = v14;
    v91 = v13;
    v88 = v16;
    v89 = v15;
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v86 = v18;
    v87 = v17;
    v84 = v20;
    v85 = v19;
    [(PFPosterOrientedLayout *)self inactiveFrame];
    v82 = v22;
    v83 = v21;
    v80 = v24;
    v81 = v23;
    [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
    v78 = v26;
    v79 = v25;
    v76 = v28;
    v77 = v27;
    [(PFPosterOrientedLayout *)self spatialVisibleFrame];
    v74 = v30;
    v75 = v29;
    v72 = v32;
    v73 = v31;
    [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
    v70 = v34;
    v71 = v33;
    v68 = v36;
    v69 = v35;
    [(PFPosterOrientedLayout *)self timeFrame];
    v66 = v38;
    v67 = v37;
    v64 = v40;
    v65 = v39;
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v63 = v41;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = [(PFPosterOrientedLayout *)self clockLayerOrder];
    v57 = [(PFPosterOrientedLayout *)self clockIntersection];
    v58 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
    [(PFPosterOrientedLayout *)self maxClockShift];
    v60 = v59;
    v61 = [(PFPosterOrientedLayout *)self debugLayouts];
    v5 = [(PFPosterOrientedLayout *)v6 initWithImageSize:v56 deviceResolution:v57 parallaxPadding:a3 visibleFrame:v58 adaptiveVisibleFrame:v61 inactiveFrame:v97 adaptiveInactiveTopFrame:v96 spatialVisibleFrame:v95 spatialAdaptiveFrame:v94 timeFrame:v93 adaptiveTimeFrame:v92 salientContentFrame:v91 clockLayerOrder:v90 clockIntersection:v89 layoutVariant:v88 hasTopEdgeContact:v87 maxClockShift:v86 debugLayouts:v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v43, v45, v47, v49, v51, v53, v55, v60];
  }

  return v5;
}

- (id)layoutByUpdatingMaxClockShift:(double)a3
{
  [(PFPosterOrientedLayout *)self maxClockShift];
  if (v5 == a3)
  {
    v6 = self;
  }

  else
  {
    v7 = [PFPosterOrientedLayout alloc];
    [(PFPosterOrientedLayout *)self imageSize];
    v96 = v9;
    v97 = v8;
    [(PFPosterOrientedLayout *)self deviceResolution];
    v94 = v11;
    v95 = v10;
    [(PFPosterOrientedLayout *)self parallaxPadding];
    v92 = v13;
    v93 = v12;
    [(PFPosterOrientedLayout *)self visibleFrame];
    v90 = v15;
    v91 = v14;
    v88 = v17;
    v89 = v16;
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v86 = v19;
    v87 = v18;
    v84 = v21;
    v85 = v20;
    [(PFPosterOrientedLayout *)self inactiveFrame];
    v82 = v23;
    v83 = v22;
    v80 = v25;
    v81 = v24;
    [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
    v78 = v27;
    v79 = v26;
    v76 = v29;
    v77 = v28;
    [(PFPosterOrientedLayout *)self spatialVisibleFrame];
    v74 = v31;
    v75 = v30;
    v72 = v33;
    v73 = v32;
    [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
    v70 = v35;
    v71 = v34;
    v68 = v37;
    v69 = v36;
    [(PFPosterOrientedLayout *)self timeFrame];
    v66 = v39;
    v67 = v38;
    v64 = v41;
    v65 = v40;
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v63 = v42;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v57 = [(PFPosterOrientedLayout *)self clockLayerOrder];
    v58 = [(PFPosterOrientedLayout *)self clockIntersection];
    v59 = [(PFPosterOrientedLayout *)self layoutVariant];
    v60 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
    v61 = [(PFPosterOrientedLayout *)self debugLayouts];
    v6 = [(PFPosterOrientedLayout *)v7 initWithImageSize:v57 deviceResolution:v58 parallaxPadding:v59 visibleFrame:v60 adaptiveVisibleFrame:v61 inactiveFrame:v97 adaptiveInactiveTopFrame:v96 spatialVisibleFrame:v95 spatialAdaptiveFrame:v94 timeFrame:v93 adaptiveTimeFrame:v92 salientContentFrame:v91 clockLayerOrder:v90 clockIntersection:v89 layoutVariant:v88 hasTopEdgeContact:v87 maxClockShift:v86 debugLayouts:v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v44, v46, v48, v50, v52, v54, v56, *&a3];
  }

  return v6;
}

- (id)layoutByUpdatingNormalizedAdaptiveTimeFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PFPosterOrientedLayout *)self imageExtent];
  v10 = v8 + x * v9;
  v13 = v11 + y * v12;
  v14 = width * v9;
  v15 = height * v12;

  return [(PFPosterOrientedLayout *)self layoutByUpdatingAdaptiveTimeFrame:v10, v13, v14, v15];
}

- (id)layoutByUpdatingNormalizedAdaptiveVisibleFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PFPosterOrientedLayout *)self imageExtent];
  v10 = v8 + x * v9;
  v13 = v11 + y * v12;
  v14 = width * v9;
  v15 = height * v12;

  return [(PFPosterOrientedLayout *)self layoutByUpdatingAdaptiveVisibleFrame:v10, v13, v14, v15];
}

- (id)layoutByUpdatingNormalizedVisibleFrame:(CGRect)a3 remapAdaptiveVisibleFrame:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PFPosterOrientedLayout *)self imageExtent];
  v14 = [(PFPosterOrientedLayout *)self layoutByUpdatingVisibleFrame:v10 + x * v11, v12 + y * v13, width * v11, height * v13];
  if (v4)
  {
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    if (!CGRectIsEmpty(v38))
    {
      [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
      v16 = v15;
      v18 = v17;
      v20 = v19;
      v22 = v21;
      [(PFPosterOrientedLayout *)self visibleFrame];
      v27 = v16 - v26;
      v28 = 0.0;
      v29 = 0.0;
      if (v24 != 0.0)
      {
        v27 = v27 / v24;
        v29 = v20 / v24;
      }

      v30 = v18 - v23;
      if (v25 != 0.0)
      {
        v30 = v30 / v25;
        v28 = v22 / v25;
      }

      [v14 visibleFrame];
      v35 = [v14 layoutByUpdatingAdaptiveVisibleFrame:{v31 + v27 * v32, v33 + v30 * v34, v29 * v32, v28 * v34}];

      v14 = v35;
    }
  }

  return v14;
}

- (id)layoutByUpdatingImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(PFPosterOrientedLayout *)self imageSize];
  v174 = width;
  if (width == v7 && height == v6)
  {
    v115 = self;
  }

  else
  {
    v10 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    [(PFPosterOrientedLayout *)self imageSize];
    v12 = v11;
    v14 = v13;
    [(PFPosterOrientedLayout *)self imageSize];
    v163 = v15;
    [(PFPosterOrientedLayout *)self parallaxPadding];
    v165 = v17;
    v167 = v16;
    [(PFPosterOrientedLayout *)self visibleFrame];
    v22 = v21 - v10;
    v23 = 0.0;
    v24 = 0.0;
    if (v12 != 0.0)
    {
      v22 = v22 / v12;
      v24 = v19 / v12;
    }

    v161 = v24;
    v172 = v22;
    v25 = v18 - v9;
    if (v14 != 0.0)
    {
      v25 = v25 / v14;
      v23 = v20 / v14;
    }

    v157 = v25;
    v162 = v23;
    [(PFPosterOrientedLayout *)self inactiveFrame];
    v30 = v29 - v10;
    v31 = 0.0;
    v32 = 0.0;
    if (v12 != 0.0)
    {
      v30 = v30 / v12;
      v32 = v27 / v12;
    }

    v158 = v30;
    v159 = v32;
    v170 = v10;
    v33 = v26 - v9;
    if (v14 != 0.0)
    {
      v33 = v33 / v14;
      v31 = v28 / v14;
    }

    v155 = v33;
    v160 = v31;
    [(PFPosterOrientedLayout *)self timeFrame];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    [(PFPosterOrientedLayout *)self visibleFrame];
    v46 = v35 - v45;
    v47 = 0.0;
    v48 = 0.0;
    if (v43 != 0.0)
    {
      v46 = v46 / v43;
      v48 = v39 / v43;
    }

    v149 = v48;
    v153 = v46;
    v49 = v37 - v42;
    if (v44 != 0.0)
    {
      v49 = v49 / v44;
      v47 = v41 / v44;
    }

    v147 = v49;
    v151 = v47;
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v54 = v53 - v170;
    v55 = 0.0;
    v56 = 0.0;
    if (v12 != 0.0)
    {
      v54 = v54 / v12;
      v56 = v51 / v12;
    }

    v142 = v56;
    v145 = v54;
    v57 = v50 - v9;
    if (v14 != 0.0)
    {
      v57 = v57 / v14;
      v55 = v52 / v14;
    }

    v140 = v57;
    v144 = v55;
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v62 = v61 - v170;
    v63 = 0.0;
    v64 = 0.0;
    if (v12 != 0.0)
    {
      v62 = v62 / v12;
      v64 = v59 / v12;
    }

    v137 = v64;
    v139 = v62;
    v65 = v58 - v9;
    if (v14 != 0.0)
    {
      v65 = v65 / v14;
      v63 = v60 / v14;
    }

    v136 = v65;
    v138 = v63;
    [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
    v70 = v69 - v170;
    v71 = 0.0;
    v72 = 0.0;
    if (v12 != 0.0)
    {
      v70 = v70 / v12;
      v72 = v67 / v12;
    }

    v130 = v72;
    v133 = v70;
    v73 = v66 - v9;
    if (v14 != 0.0)
    {
      v73 = v73 / v14;
      v71 = v68 / v14;
    }

    v128 = v73;
    v132 = v71;
    [(PFPosterOrientedLayout *)self spatialVisibleFrame];
    v78 = v77 - v170;
    v79 = 0.0;
    v80 = 0.0;
    if (v12 != 0.0)
    {
      v78 = v78 / v12;
      v80 = v75 / v12;
    }

    v124 = v80;
    v126 = v78;
    v81 = v74 - v9;
    if (v14 != 0.0)
    {
      v81 = v81 / v14;
      v79 = v76 / v14;
    }

    v123 = v81;
    v125 = v79;
    [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
    v86 = v85 - v170;
    v87 = 0.0;
    v88 = 0.0;
    if (v12 != 0.0)
    {
      v86 = v86 / v12;
      v88 = v83 / v12;
    }

    v118 = v88;
    v119 = v86;
    v89 = v82 - v9;
    if (v14 != 0.0)
    {
      v89 = v89 / v14;
      v87 = v84 / v14;
    }

    v122 = v87;
    v135 = v170 + v172 * v174;
    v169 = v9;
    v90 = v9 + v157 * height;
    v91 = v174 * v161;
    v173 = height;
    v92 = height * v162;
    v93 = v174 / v163;
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v98 = v97 - v170;
    v99 = 0.0;
    v100 = 0.0;
    if (v12 != 0.0)
    {
      v98 = v98 / v12;
      v100 = v95 / v12;
    }

    v164 = v170 + v158 * v174;
    v171 = v167 * v93;
    v168 = v165 * v93;
    v166 = v169 + v155 * v173;
    v156 = v135 + v153 * v91;
    v148 = v90 + v147 * v92;
    v150 = v91 * v149;
    v120 = v135 + v145 * v91;
    v121 = v92 * v151;
    v141 = v90 + v140 * v92;
    v117 = v91 * v142;
    v154 = v135 + v133 * v91;
    v152 = v90 + v128 * v92;
    v146 = v91 * v130;
    v143 = v135 + v126 * v91;
    v134 = v90 + v89 * v92;
    v101 = v94 - v169;
    if (v14 != 0.0)
    {
      v101 = v101 / v14;
      v99 = v96 / v14;
    }

    v127 = v135 + v98 * v91;
    v102 = v90 + v101 * v92;
    v103 = v91 * v100;
    v104 = v92 * v99;
    v105 = [PFPosterOrientedLayout alloc];
    [(PFPosterOrientedLayout *)self deviceResolution];
    v129 = v107;
    v131 = v106;
    v108 = [(PFPosterOrientedLayout *)self clockLayerOrder];
    v109 = [(PFPosterOrientedLayout *)self clockIntersection];
    v110 = [(PFPosterOrientedLayout *)self layoutVariant];
    v111 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
    [(PFPosterOrientedLayout *)self maxClockShift];
    v113 = v112;
    v114 = [(PFPosterOrientedLayout *)self debugLayouts];
    v115 = [(PFPosterOrientedLayout *)v105 initWithImageSize:v108 deviceResolution:v109 parallaxPadding:v110 visibleFrame:v111 adaptiveVisibleFrame:v114 inactiveFrame:v174 adaptiveInactiveTopFrame:v173 spatialVisibleFrame:v131 spatialAdaptiveFrame:v129 timeFrame:v171 adaptiveTimeFrame:v168 salientContentFrame:*&v135 clockLayerOrder:*&v90 clockIntersection:*&v91 layoutVariant:*&v92 hasTopEdgeContact:v135 + v139 * v91 maxClockShift:v90 + v136 * v92 debugLayouts:v91 * v137, v92 * v138, *&v164, *&v166, v174 * v159, v173 * v160, *&v154, *&v152, *&v146, v92 * v132, *&v143, v90 + v123 * v92, v91 * v124, v92 * v125, v135 + v119 * v91, *&v134, v91 * v118, v92 * v122, *&v156, *&v148, *&v150, *&v121, *&v120, *&v141, *&v117, v92 * v144, *&v127, *&v102, *&v103, *&v104, v113];
  }

  return v115;
}

- (id)layoutByUpdatingClockIntersection:(unint64_t)a3
{
  if ([(PFPosterOrientedLayout *)self clockIntersection]== a3)
  {
    v5 = self;
  }

  else
  {
    v6 = [PFPosterOrientedLayout alloc];
    [(PFPosterOrientedLayout *)self imageSize];
    v96 = v8;
    v97 = v7;
    [(PFPosterOrientedLayout *)self deviceResolution];
    v94 = v10;
    v95 = v9;
    [(PFPosterOrientedLayout *)self parallaxPadding];
    v92 = v12;
    v93 = v11;
    [(PFPosterOrientedLayout *)self visibleFrame];
    v90 = v14;
    v91 = v13;
    v88 = v16;
    v89 = v15;
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v86 = v18;
    v87 = v17;
    v84 = v20;
    v85 = v19;
    [(PFPosterOrientedLayout *)self inactiveFrame];
    v82 = v22;
    v83 = v21;
    v80 = v24;
    v81 = v23;
    [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
    v78 = v26;
    v79 = v25;
    v76 = v28;
    v77 = v27;
    [(PFPosterOrientedLayout *)self spatialVisibleFrame];
    v74 = v30;
    v75 = v29;
    v72 = v32;
    v73 = v31;
    [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
    v70 = v34;
    v71 = v33;
    v68 = v36;
    v69 = v35;
    [(PFPosterOrientedLayout *)self timeFrame];
    v66 = v38;
    v67 = v37;
    v64 = v40;
    v65 = v39;
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v63 = v41;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v56 = [(PFPosterOrientedLayout *)self clockLayerOrder];
    v57 = [(PFPosterOrientedLayout *)self layoutVariant];
    v58 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
    [(PFPosterOrientedLayout *)self maxClockShift];
    v60 = v59;
    v61 = [(PFPosterOrientedLayout *)self debugLayouts];
    v5 = [(PFPosterOrientedLayout *)v6 initWithImageSize:v56 deviceResolution:a3 parallaxPadding:v57 visibleFrame:v58 adaptiveVisibleFrame:v61 inactiveFrame:v97 adaptiveInactiveTopFrame:v96 spatialVisibleFrame:v95 spatialAdaptiveFrame:v94 timeFrame:v93 adaptiveTimeFrame:v92 salientContentFrame:v91 clockLayerOrder:v90 clockIntersection:v89 layoutVariant:v88 hasTopEdgeContact:v87 maxClockShift:v86 debugLayouts:v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v43, v45, v47, v49, v51, v53, v55, v60];
  }

  return v5;
}

- (id)layoutByUpdatingClockLayerOrder:(id)a3
{
  v4 = a3;
  v5 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v6 = [v5 isEqualToString:v4];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v8 = [PFPosterOrientedLayout alloc];
    [(PFPosterOrientedLayout *)self imageSize];
    v98 = v10;
    v99 = v9;
    [(PFPosterOrientedLayout *)self deviceResolution];
    v96 = v12;
    v97 = v11;
    [(PFPosterOrientedLayout *)self parallaxPadding];
    v94 = v14;
    v95 = v13;
    [(PFPosterOrientedLayout *)self visibleFrame];
    v92 = v16;
    v93 = v15;
    v90 = v18;
    v91 = v17;
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v88 = v20;
    v89 = v19;
    v86 = v22;
    v87 = v21;
    [(PFPosterOrientedLayout *)self inactiveFrame];
    v84 = v24;
    v85 = v23;
    v82 = v26;
    v83 = v25;
    [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
    v80 = v28;
    v81 = v27;
    v78 = v30;
    v79 = v29;
    [(PFPosterOrientedLayout *)self spatialVisibleFrame];
    v76 = v32;
    v77 = v31;
    v74 = v34;
    v75 = v33;
    [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
    v72 = v36;
    v73 = v35;
    v70 = v38;
    v71 = v37;
    [(PFPosterOrientedLayout *)self timeFrame];
    v68 = v40;
    v69 = v39;
    v66 = v42;
    v67 = v41;
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v65 = v43;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = [(PFPosterOrientedLayout *)self clockIntersection];
    v59 = [(PFPosterOrientedLayout *)self layoutVariant];
    v60 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
    [(PFPosterOrientedLayout *)self maxClockShift];
    v62 = v61;
    v63 = [(PFPosterOrientedLayout *)self debugLayouts];
    v7 = [(PFPosterOrientedLayout *)v8 initWithImageSize:v4 deviceResolution:v58 parallaxPadding:v59 visibleFrame:v60 adaptiveVisibleFrame:v63 inactiveFrame:v99 adaptiveInactiveTopFrame:v98 spatialVisibleFrame:v97 spatialAdaptiveFrame:v96 timeFrame:v95 adaptiveTimeFrame:v94 salientContentFrame:v93 clockLayerOrder:v92 clockIntersection:v91 layoutVariant:v90 hasTopEdgeContact:v89 maxClockShift:v88 debugLayouts:v87, v86, v85, v84, v83, v82, v81, v80, v79, v78, v77, v76, v75, v74, v73, v72, v71, v70, v69, v68, v67, v66, v65, v45, v47, v49, v51, v53, v55, v57, v62];
  }

  return v7;
}

- (id)layoutByUpdatingAdaptiveInactiveFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v4 = [PFPosterOrientedLayout alloc];
  [(PFPosterOrientedLayout *)self imageSize];
  v90 = v6;
  v91 = v5;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v84 = v8;
  v85 = v7;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v82 = v10;
  v83 = v9;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v80 = v12;
  v81 = v11;
  v78 = v14;
  v79 = v13;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v76 = v16;
  v77 = v15;
  v74 = v18;
  v75 = v17;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v72 = v20;
  v73 = v19;
  v70 = v22;
  v71 = v21;
  [(PFPosterOrientedLayout *)self spatialVisibleFrame];
  v68 = v24;
  v69 = v23;
  v66 = v26;
  v67 = v25;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v64 = v28;
  v65 = v27;
  v62 = v30;
  v63 = v29;
  [(PFPosterOrientedLayout *)self timeFrame];
  v60 = v32;
  v61 = v31;
  v58 = v34;
  v59 = v33;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(PFPosterOrientedLayout *)self salientContentFrame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v52 = [(PFPosterOrientedLayout *)self clockIntersection];
  v53 = [(PFPosterOrientedLayout *)self layoutVariant];
  v54 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
  [(PFPosterOrientedLayout *)self maxClockShift];
  v56 = [(PFPosterOrientedLayout *)v4 initWithImageSize:v51 deviceResolution:v52 parallaxPadding:v53 visibleFrame:v54 adaptiveVisibleFrame:0 inactiveFrame:v91 adaptiveInactiveTopFrame:v90 spatialVisibleFrame:v85 spatialAdaptiveFrame:v84 timeFrame:v83 adaptiveTimeFrame:v82 salientContentFrame:v81 clockLayerOrder:v80 clockIntersection:v79 layoutVariant:v78 hasTopEdgeContact:v77 maxClockShift:v76 debugLayouts:v75, v74, v73, v72, v71, v70, *&x, *&y, *&width, *&height, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v36, v38, v40, v42, v44, v46, v48, v50, v55];

  return v56;
}

- (id)layoutByUpdatingAdaptiveVisibleFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v121 = *MEMORY[0x1E69E9840];
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v15 = v14;
  v17 = v16 - v5;
  v18 = 0.0;
  v19 = 0.0;
  if (v9 != 0.0)
  {
    v17 = v17 / v9;
    v19 = v13 / v9;
  }

  v20 = v12 - v7;
  if (v11 != 0.0)
  {
    v20 = v20 / v11;
    v18 = v14 / v11;
  }

  if (v9 == 0.0 || v11 == 0.0 || (v9 == *MEMORY[0x1E69BDDB0] ? (v21 = v11 == *(MEMORY[0x1E69BDDB0] + 8)) : (v21 = 0), v21))
  {
    v22 = 1.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v114 = v9;
      v115 = 2048;
      v116 = v11;
      v117 = 2048;
      v118 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }
  }

  else
  {
    v22 = fabs(v9 / v11);
  }

  v23 = height;
  v24 = width;
  v25 = height == 0.0 || width == 0.0;
  if (v25 || (width == *MEMORY[0x1E69BDDB0] ? (v26 = height == *(MEMORY[0x1E69BDDB0] + 8)) : (v26 = 0), v26))
  {
    v27 = 1.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *buf = 134218496;
      v114 = width;
      v115 = 2048;
      v116 = height;
      v117 = 2048;
      v118 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
    }

    v23 = height;
    v24 = width;
  }

  else
  {
    v27 = fabs(width / height);
  }

  v28 = v24 * v19;
  v107 = y + v20 * v23;
  v108 = v23 * v18;
  v106 = v28;
  if (vabdd_f64(v22, v27) > 0.01)
  {
    [(PFPosterOrientedLayout *)self timeFrame];
    if (vabdd_f64(v28, v31) > 1.0 || v9 <= 0.0)
    {
      v34 = PFUIGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", v35, v36];
        [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
        v40 = v38;
        v41 = v39;
        if (v38 == 0.0 || v39 == 0.0 || v38 == *MEMORY[0x1E69BDDB0] && v39 == *(MEMORY[0x1E69BDDB0] + 8))
        {
          v42 = 1.0;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 134218496;
            v114 = v40;
            v115 = 2048;
            v116 = v41;
            v117 = 2048;
            v118 = 0x3FF0000000000000;
            _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
          }
        }

        else
        {
          v42 = fabs(v38 / v39);
        }

        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&width, *&height];
        if (v25 || width == *MEMORY[0x1E69BDDB0] && height == *(MEMORY[0x1E69BDDB0] + 8))
        {
          v44 = 1.0;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 134218496;
            v114 = width;
            v115 = 2048;
            v116 = height;
            v117 = 2048;
            v118 = 0x3FF0000000000000;
            _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
          }
        }

        else
        {
          v44 = fabs(width / height);
        }

        *buf = 138413058;
        v114 = *&v37;
        v115 = 2048;
        v116 = v42;
        v117 = 2112;
        v118 = v43;
        v119 = 2048;
        v120 = v44;
        _os_log_impl(&dword_1B35C1000, v34, OS_LOG_TYPE_ERROR, "Incompatible adaptiveVisibleFrame sizes, old: %@ (%.2f) new %@ (%.2f), this will distort adaptiveTimeFrame.", buf, 0x2Au);
      }

      v24 = width;
    }

    else
    {
      MaxY = CGRectGetMaxY(*&v29);
      v24 = width;
      v107 = MaxY - v15 * (width / v9);
      v108 = v15 * (width / v9);
    }
  }

  v99 = x + v17 * v24;
  v45 = [PFPosterOrientedLayout alloc];
  [(PFPosterOrientedLayout *)self imageSize];
  v105 = v46;
  v104 = v47;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v102 = v49;
  v103 = v48;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v100 = v51;
  v101 = v50;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v97 = v53;
  v98 = v52;
  v95 = v55;
  v96 = v54;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v93 = v57;
  v94 = v56;
  v91 = v59;
  v92 = v58;
  [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
  v89 = v61;
  v90 = v60;
  v87 = v63;
  v88 = v62;
  [(PFPosterOrientedLayout *)self timeFrame];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  [(PFPosterOrientedLayout *)self salientContentFrame];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v80 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v81 = [(PFPosterOrientedLayout *)self clockIntersection];
  v82 = [(PFPosterOrientedLayout *)self layoutVariant];
  v83 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
  [(PFPosterOrientedLayout *)self maxClockShift];
  v85 = [(PFPosterOrientedLayout *)v45 initWithImageSize:v80 deviceResolution:v81 parallaxPadding:v82 visibleFrame:v83 adaptiveVisibleFrame:0 inactiveFrame:v105 adaptiveInactiveTopFrame:v104 spatialVisibleFrame:v103 spatialAdaptiveFrame:v102 timeFrame:v101 adaptiveTimeFrame:v100 salientContentFrame:v98 clockLayerOrder:v97 clockIntersection:v96 layoutVariant:v95 hasTopEdgeContact:*&x maxClockShift:*&y debugLayouts:*&width, *&height, v94, v93, v92, v91, v90, v89, v88, v87, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), v65, v67, v69, v71, *&v99, *&v107, *&v106, *&v108, v73, v75, v77, v79, v84];

  return v85;
}

- (id)layoutByUpdatingInactiveFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v4 = [PFPosterOrientedLayout alloc];
  [(PFPosterOrientedLayout *)self imageSize];
  v86 = v6;
  v87 = v5;
  [(PFPosterOrientedLayout *)self deviceResolution];
  v84 = v8;
  v85 = v7;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v82 = v10;
  v83 = v9;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v80 = v12;
  v81 = v11;
  v78 = v14;
  v79 = v13;
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v76 = v16;
  v77 = v15;
  v74 = v18;
  v75 = v17;
  [(PFPosterOrientedLayout *)self adaptiveInactiveTopFrame];
  v72 = v20;
  v73 = v19;
  v70 = v22;
  v71 = v21;
  [(PFPosterOrientedLayout *)self spatialVisibleFrame];
  v68 = v24;
  v69 = v23;
  v66 = v26;
  v67 = v25;
  [(PFPosterOrientedLayout *)self spatialAdaptiveFrame];
  v64 = v28;
  v65 = v27;
  v62 = v30;
  v63 = v29;
  [(PFPosterOrientedLayout *)self timeFrame];
  v60 = v32;
  v61 = v31;
  v58 = v34;
  v59 = v33;
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  [(PFPosterOrientedLayout *)self salientContentFrame];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v51 = [(PFPosterOrientedLayout *)self clockLayerOrder];
  v52 = [(PFPosterOrientedLayout *)self clockIntersection];
  v53 = [(PFPosterOrientedLayout *)self layoutVariant];
  v54 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
  [(PFPosterOrientedLayout *)self maxClockShift];
  v56 = [(PFPosterOrientedLayout *)v4 initWithImageSize:v51 deviceResolution:v52 parallaxPadding:v53 visibleFrame:v54 adaptiveVisibleFrame:0 inactiveFrame:v87 adaptiveInactiveTopFrame:v86 spatialVisibleFrame:v85 spatialAdaptiveFrame:v84 timeFrame:v83 adaptiveTimeFrame:v82 salientContentFrame:v81 clockLayerOrder:v80 clockIntersection:v79 layoutVariant:v78 hasTopEdgeContact:v77 maxClockShift:v76 debugLayouts:v75, v74, *&x, *&y, *&width, *&height, v73, v72, v71, v70, v69, v68, v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v36, v38, v40, v42, v44, v46, v48, v50, v55];

  return v56;
}

- (id)layoutByUpdatingVisibleFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v153 = *MEMORY[0x1E69E9840];
  if (CGRectIsEmpty(a3) || (v155.origin.x = x, v155.origin.y = y, v155.size.width = width, v155.size.height = height, CGRectIsInfinite(v155)))
  {
    _PFAssertFailHandler();
  }

  [(PFPosterOrientedLayout *)self extendedImageExtent];
  v11 = y + height;
  v13 = v8 + v12;
  if (x + width >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = x + width;
  }

  if (v8 >= v14)
  {
    v14 = v8;
  }

  v15 = v9 + v10;
  if (v11 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = y + height;
  }

  if (v9 >= v16)
  {
    v16 = v9;
  }

  v17 = y + v16 - v11;
  if (x + v14 - (x + width) < v13)
  {
    v13 = x + v14 - (x + width);
  }

  if (v8 >= v13)
  {
    v18 = v8;
  }

  else
  {
    v18 = v13;
  }

  if (v17 >= v15)
  {
    v19 = v15;
  }

  else
  {
    v19 = v17;
  }

  if (v9 >= v19)
  {
    v19 = v9;
  }

  v142 = v19;
  v143 = v18;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  [(PFPosterOrientedLayout *)self imageExtent];
  v32 = v21 - v31;
  v33 = 0.0;
  v34 = 0.0;
  if (v29 != 0.0)
  {
    v32 = v32 / v29;
    v34 = v25 / v29;
  }

  v35 = v23 - v28;
  if (v30 != 0.0)
  {
    v35 = v35 / v30;
    v33 = v27 / v30;
  }

  v141 = height;
  [(PFPosterOrientedLayout *)self screenExtent];
  v156.origin.x = v36 + v32 * v37;
  v156.origin.y = v38 + v35 * v39;
  v156.size.width = v34 * v37;
  v156.size.height = v33 * v39;
  v157 = CGRectIntegral(v156);
  v40 = v157.origin.x;
  v41 = v157.origin.y;
  v42 = v157.size.width;
  v43 = v157.size.height;
  [(PFPosterOrientedLayout *)self imageExtent];
  v48 = v143 - v47;
  v49 = 0.0;
  v50 = 0.0;
  if (v45 != 0.0)
  {
    v48 = v48 / v45;
    v50 = width / v45;
  }

  v144 = width;
  v51 = v142 - v44;
  if (v46 != 0.0)
  {
    v51 = v51 / v46;
    v49 = v141 / v46;
  }

  [(PFPosterOrientedLayout *)self screenExtent];
  v158.origin.x = v52 + v48 * v53;
  v158.origin.y = v54 + v51 * v55;
  v158.size.width = v50 * v53;
  v158.size.height = v49 * v55;
  v160 = CGRectIntegral(v158);
  v159.origin.x = v40;
  v159.origin.y = v41;
  v159.size.width = v42;
  v159.size.height = v43;
  if (CGRectEqualToRect(v159, v160))
  {
    v56 = self;
  }

  else
  {
    [(PFPosterOrientedLayout *)self timeFrame];
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;
    [(PFPosterOrientedLayout *)self visibleFrame];
    v69 = v58 - v68;
    v70 = 0.0;
    v71 = 0.0;
    if (v66 != 0.0)
    {
      v69 = v69 / v66;
      v71 = v62 / v66;
    }

    v72 = v60 - v65;
    if (v67 != 0.0)
    {
      v72 = v72 / v67;
      v70 = v64 / v67;
    }

    [(PFPosterOrientedLayout *)self visibleFrame];
    v75 = v73;
    v76 = v74;
    if (v73 == 0.0 || v74 == 0.0 || v73 == *MEMORY[0x1E69BDDB0] && v74 == *(MEMORY[0x1E69BDDB0] + 8))
    {
      v77 = 1.0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 134218496;
        v146 = v75;
        v147 = 2048;
        v148 = v76;
        v149 = 2048;
        v150 = 0x3FF0000000000000;
        _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
      }
    }

    else
    {
      v77 = fabs(v73 / v74);
    }

    v78 = v141 == 0.0 || v144 == 0.0;
    if (v78 || v144 == *MEMORY[0x1E69BDDB0] && v141 == *(MEMORY[0x1E69BDDB0] + 8))
    {
      v79 = 1.0;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        *buf = 134218496;
        v146 = v144;
        v147 = 2048;
        v148 = v141;
        v149 = 2048;
        v150 = 0x3FF0000000000000;
        _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
      }
    }

    else
    {
      v79 = fabs(v144 / v141);
    }

    if (vabdd_f64(v77, v79) > 0.05)
    {
      v80 = PFUIGetLog();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [(PFPosterOrientedLayout *)self visibleFrame];
        v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", v81, v82];
        [(PFPosterOrientedLayout *)self visibleFrame];
        v86 = v84;
        v87 = v85;
        if (v84 == 0.0 || v85 == 0.0 || v84 == *MEMORY[0x1E69BDDB0] && v85 == *(MEMORY[0x1E69BDDB0] + 8))
        {
          v88 = 1.0;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 134218496;
            v146 = v86;
            v147 = 2048;
            v148 = v87;
            v149 = 2048;
            v150 = 0x3FF0000000000000;
            _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
          }
        }

        else
        {
          v88 = fabs(v84 / v85);
        }

        v89 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"{%.2f, %.2f}", *&v144, *&v141];
        if (v78 || v144 == *MEMORY[0x1E69BDDB0] && v141 == *(MEMORY[0x1E69BDDB0] + 8))
        {
          v90 = 1.0;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 134218496;
            v146 = v144;
            v147 = 2048;
            v148 = v141;
            v149 = 2048;
            v150 = 0x3FF0000000000000;
            _os_log_fault_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", buf, 0x20u);
          }
        }

        else
        {
          v90 = fabs(v144 / v141);
        }

        *buf = 138413058;
        v146 = *&v83;
        v147 = 2048;
        v148 = v88;
        v149 = 2112;
        v150 = v89;
        v151 = 2048;
        v152 = v90;
        _os_log_impl(&dword_1B35C1000, v80, OS_LOG_TYPE_ERROR, "Incompatible visibleFrame sizes, old: %@ (%.2f) new %@ (%.2f), this will distort timeFrame", buf, 0x2Au);
      }
    }

    [(PFPosterOrientedLayout *)self visibleFrame];
    v92 = v91;
    v94 = v93;
    [(PFPosterOrientedLayout *)self parallaxPadding];
    v97 = v95;
    v139 = v142 + v72 * v141;
    v140 = v143 + v69 * v144;
    v137 = v141 * v70;
    v138 = v144 * v71;
    if (v92 != 0.0 && v94 != 0.0 && (v92 != *MEMORY[0x1E69BDDB0] || v94 != *(MEMORY[0x1E69BDDB0] + 8)))
    {
      v97 = v95 * (v144 / v92);
      v96 = v96 * (v141 / v94);
    }

    v135 = v97;
    v136 = v96;
    v98 = [PFPosterOrientedLayout alloc];
    [(PFPosterOrientedLayout *)self imageSize];
    v133 = v100;
    v134 = v99;
    [(PFPosterOrientedLayout *)self deviceResolution];
    v131 = v102;
    v132 = v101;
    [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
    v129 = v104;
    v130 = v103;
    v127 = v106;
    v128 = v105;
    [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    [(PFPosterOrientedLayout *)self salientContentFrame];
    v116 = v115;
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v123 = [(PFPosterOrientedLayout *)self layoutVariant];
    v124 = [(PFPosterOrientedLayout *)self hasTopEdgeContact];
    [(PFPosterOrientedLayout *)self maxClockShift];
    v56 = [(PFPosterOrientedLayout *)v98 initWithImageSize:0 deviceResolution:0 parallaxPadding:v123 visibleFrame:v124 adaptiveVisibleFrame:0 inactiveFrame:v134 adaptiveInactiveTopFrame:v133 spatialVisibleFrame:v132 spatialAdaptiveFrame:v131 timeFrame:v135 adaptiveTimeFrame:v136 salientContentFrame:*&v143 clockLayerOrder:*&v142 clockIntersection:*&v144 layoutVariant:*&v141 hasTopEdgeContact:v130 maxClockShift:v129 debugLayouts:v128, v127, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24), *&v140, *&v139, *&v138, *&v137, v108, v110, v112, v114, v116, v118, v120, v122, v125];
  }

  return v56;
}

- (PFParallaxLayoutConfiguration)configuration
{
  x = self->_timeFrame.origin.x;
  y = self->_timeFrame.origin.y;
  width = self->_timeFrame.size.width;
  v6 = self->_visibleFrame.size.width;
  height = self->_visibleFrame.size.height;
  v8 = x - self->_visibleFrame.origin.x;
  v9 = 0.0;
  v10 = 0.0;
  if (v6 != 0.0)
  {
    v8 = v8 / v6;
    v10 = width / v6;
  }

  v28 = v10;
  v11 = self->_timeFrame.size.height;
  v12 = y - self->_visibleFrame.origin.y;
  if (height != 0.0)
  {
    v12 = v12 / height;
    v9 = v11 / height;
  }

  v29 = v9;
  v14 = self->_inactiveFrame.size.width;
  v13 = self->_inactiveFrame.size.height;
  v15 = x - self->_inactiveFrame.origin.x;
  v16 = 0.0;
  v17 = 0.0;
  if (v14 != 0.0)
  {
    v15 = v15 / v14;
    v17 = width / v14;
  }

  v18 = y - self->_inactiveFrame.origin.y;
  if (v13 != 0.0)
  {
    v18 = v18 / v13;
    v16 = v11 / v13;
  }

  v19 = [PFParallaxLayoutConfiguration alloc];
  [(PFPosterOrientedLayout *)self screenExtent];
  v21 = v20;
  v23 = v22;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v26 = [(PFParallaxLayoutConfiguration *)v19 initWithScreenSize:v21 timeRect:v23 inactiveTimeRect:v8 parallaxPadding:v12, v28, v29, *&v15, *&v18, *&v17, *&v16, v24, v25];

  return v26;
}

- (CGRect)parallaxInactiveFrame
{
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v4 = v3;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v6 = v4 / v5;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v8 = v7;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v10 = v8 / v9;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v12 = v11;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v14 = v13;
  [(PFPosterOrientedLayout *)self inactiveFrame];
  v33 = CGRectInset(v32, -(v12 * v6), -(v14 * v10));
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [(PFPosterOrientedLayout *)self imageExtent];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;

  return CGRectIntersection(*&v27, *&v20);
}

- (CGRect)parallaxVisibleFrame
{
  [(PFPosterOrientedLayout *)self visibleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v12 = -v11;
  [(PFPosterOrientedLayout *)self parallaxPadding];
  v14 = -v13;
  v32.origin.x = v4;
  v32.origin.y = v6;
  v32.size.width = v8;
  v32.size.height = v10;
  v33 = CGRectInset(v32, v12, v14);
  x = v33.origin.x;
  y = v33.origin.y;
  width = v33.size.width;
  height = v33.size.height;
  [(PFPosterOrientedLayout *)self imageExtent];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;

  return CGRectIntersection(*&v27, *&v20);
}

- (CGRect)normalizedAdaptiveTimeFrameInVisibleFrame
{
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PFPosterOrientedLayout *)self visibleFrame];
  v13 = v12;
  v15 = v14;
  v17 = v4 - v16;
  v18 = 0.0;
  v19 = v12 == 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v17 = v17 / v13;
    v20 = v8 / v13;
  }

  v21 = v6 - v11;
  if (v15 != 0.0)
  {
    v21 = v21 / v15;
    v18 = v10 / v15;
  }

  result.size.height = v18;
  result.size.width = v20;
  result.origin.y = v21;
  result.origin.x = v17;
  return result;
}

- (CGRect)normalizedAdaptiveTimeFrame
{
  [(PFPosterOrientedLayout *)self adaptiveTimeFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PFPosterOrientedLayout *)self imageExtent];
  v13 = v12;
  v15 = v14;
  v17 = v4 - v16;
  v18 = 0.0;
  v19 = v12 == 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v17 = v17 / v13;
    v20 = v8 / v13;
  }

  v21 = v6 - v11;
  if (v15 != 0.0)
  {
    v21 = v21 / v15;
    v18 = v10 / v15;
  }

  result.size.height = v18;
  result.size.width = v20;
  result.origin.y = v21;
  result.origin.x = v17;
  return result;
}

- (CGRect)normalizedAdaptiveVisibleFrame
{
  [(PFPosterOrientedLayout *)self adaptiveVisibleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PFPosterOrientedLayout *)self imageExtent];
  v13 = v12;
  v15 = v14;
  v17 = v4 - v16;
  v18 = 0.0;
  v19 = v12 == 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v17 = v17 / v13;
    v20 = v8 / v13;
  }

  v21 = v6 - v11;
  if (v15 != 0.0)
  {
    v21 = v21 / v15;
    v18 = v10 / v15;
  }

  result.size.height = v18;
  result.size.width = v20;
  result.origin.y = v21;
  result.origin.x = v17;
  return result;
}

- (CGRect)normalizedVisibleFrame
{
  [(PFPosterOrientedLayout *)self visibleFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PFPosterOrientedLayout *)self imageExtent];
  v13 = v12;
  v15 = v14;
  v17 = v4 - v16;
  v18 = 0.0;
  v19 = v12 == 0.0;
  v20 = 0.0;
  if (!v19)
  {
    v17 = v17 / v13;
    v20 = v8 / v13;
  }

  v21 = v6 - v11;
  if (v15 != 0.0)
  {
    v21 = v21 / v15;
    v18 = v10 / v15;
  }

  result.size.height = v18;
  result.size.width = v20;
  result.origin.y = v21;
  result.origin.x = v17;
  return result;
}

- (CGRect)originalImageExtent
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PFPosterOrientedLayout *)self imageSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)extendedImageExtent
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PFPosterOrientedLayout *)self extendedImageSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGSize)extendedImageSize
{
  v3 = [(PFPosterOrientedLayout *)self canApplyHeadroom];
  [(PFPosterOrientedLayout *)self imageExtent];
  v5 = v4;
  [(PFPosterOrientedLayout *)self imageExtent];
  if (v3)
  {
    v7 = v6 * 1.35;
  }

  else
  {
    v7 = v6;
  }

  v8 = v5;
  result.height = v7;
  result.width = v8;
  return result;
}

- (CGRect)screenExtent
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PFPosterOrientedLayout *)self deviceResolution];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (CGRect)imageExtent
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  [(PFPosterOrientedLayout *)self imageSize];
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v9 = v3;
  result.size.height = v7;
  result.size.width = v5;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (int64_t)orientation
{
  if (self->_deviceResolution.width <= self->_deviceResolution.height)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (char)initWithImageSize:(double)a3 deviceResolution:(double)a4 parallaxPadding:(double)a5 visibleFrame:(double)a6 adaptiveVisibleFrame:(double)a7 inactiveFrame:(uint64_t)a8 adaptiveInactiveTopFrame:(void *)a9 spatialVisibleFrame:(uint64_t)a10 spatialAdaptiveFrame:(uint64_t)a11 timeFrame:(char)a12 adaptiveTimeFrame:(void *)a13 salientContentFrame:(uint64_t)a14 clockLayerOrder:(__int128)a15 clockIntersection:(uint64_t)a16 layoutVariant:(uint64_t)a17 hasTopEdgeContact:(__int128)a18 maxClockShift:(uint64_t)a19 debugLayouts:(uint64_t)a20
{
  v49 = a9;
  v50 = a13;
  v60.receiver = a1;
  v60.super_class = PFPosterOrientedLayout;
  v51 = objc_msgSendSuper2(&v60, sel_init);
  *(v51 + 7) = a2;
  *(v51 + 8) = a3;
  *(v51 + 9) = a4;
  *(v51 + 10) = a5;
  *(v51 + 11) = a6;
  *(v51 + 12) = a7;
  *(v51 + 104) = a15;
  *(v51 + 15) = a16;
  *(v51 + 16) = a17;
  *(v51 + 136) = a18;
  *(v51 + 19) = a19;
  *(v51 + 20) = a20;
  *(v51 + 232) = a21;
  *(v51 + 31) = a22;
  *(v51 + 32) = a23;
  *(v51 + 264) = a24;
  *(v51 + 35) = a25;
  *(v51 + 36) = a26;
  *(v51 + 168) = a27;
  *(v51 + 23) = a28;
  *(v51 + 24) = a29;
  *(v51 + 200) = a30;
  *(v51 + 27) = a31;
  *(v51 + 28) = a32;
  *(v51 + 296) = a33;
  *(v51 + 39) = a34;
  *(v51 + 40) = a35;
  *(v51 + 328) = a36;
  *(v51 + 43) = a37;
  *(v51 + 44) = a38;
  *(v51 + 360) = a39;
  *(v51 + 47) = a40;
  *(v51 + 48) = a41;
  objc_storeStrong(v51 + 2, a9);
  *(v51 + 3) = a10;
  v51[8] = a12;
  *(v51 + 4) = a42;
  *(v51 + 5) = a11;
  if (v50)
  {
    v52 = [v50 copy];
  }

  else
  {
    v52 = MEMORY[0x1E695E0F0];
  }

  v53 = *(v51 + 6);
  *(v51 + 6) = v52;

  return v51;
}

+ (id)layoutWithDictionaryRepresentation:(id)a3
{
  v3 = a3;
  v57 = *MEMORY[0x1E695F060];
  size = v57;
  v40 = v57;
  v4 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v4;
  v55.origin = rect.origin;
  v55.size = v4;
  v54.origin = rect.origin;
  v54.size = v4;
  v53.origin = rect.origin;
  v53.size = v4;
  v52.origin = rect.origin;
  v52.size = v4;
  v51.origin = rect.origin;
  v51.size = v4;
  v50.origin = rect.origin;
  v50.size = v4;
  v49.origin = rect.origin;
  v49.size = v4;
  v44 = v4;
  origin = rect.origin;
  v48.origin = rect.origin;
  v48.size = v4;
  v5 = [v3 objectForKeyedSubscript:@"imageSize"];
  v43 = v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGSizeMakeWithDictionaryRepresentation(v5, &size);

  v6 = [v3 objectForKeyedSubscript:@"deviceResolution"];
  v42 = v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGSizeMakeWithDictionaryRepresentation(v6, &v57);

  v7 = [v3 objectForKeyedSubscript:@"visibleFrame"];
  v41 = v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGRectMakeWithDictionaryRepresentation(v7, &rect);

  v8 = [v3 objectForKeyedSubscript:@"inactiveFrame"];
  v39 = v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGRectMakeWithDictionaryRepresentation(v8, &v52);

  v9 = [v3 objectForKeyedSubscript:@"adaptiveVisibleFrame"];
  v38 = v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGRectMakeWithDictionaryRepresentation(v9, &v55);

  v10 = [v3 objectForKeyedSubscript:@"spatialVisibleFrame"];
  v37 = v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGRectMakeWithDictionaryRepresentation(v10, &v54);

  v11 = [v3 objectForKeyedSubscript:@"spatialAdaptiveFrame"];
  v12 = v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGRectMakeWithDictionaryRepresentation(v11, &v53);

  v13 = [v3 objectForKeyedSubscript:@"adaptiveTimeFrame"];
  v14 = v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGRectMakeWithDictionaryRepresentation(v13, &v50);

  v15 = [v3 objectForKeyedSubscript:@"salientContentFrame"];
  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CGRectMakeWithDictionaryRepresentation(v15, &v48);
    }
  }

  v16 = [v3 objectForKeyedSubscript:@"timeFrame"];
  v17 = v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && CGRectMakeWithDictionaryRepresentation(v16, &v51);

  v18 = [v3 objectForKeyedSubscript:@"clockLayerOrder"];
  v19 = PFParallaxLayoutClockLayerOrderNamed(v18);

  v20 = [v3 objectForKeyedSubscript:@"clockIntersection"];
  v36 = [v20 integerValue];

  v47 = v40;
  v21 = [v3 objectForKeyedSubscript:@"parallaxPadding"];
  v22 = [v3 objectForKeyedSubscript:@"hasTopEdgeContact"];
  v23 = [v22 BOOLValue];

  v24 = [v3 objectForKeyedSubscript:@"layoutVariant"];
  v25 = [v24 integerValue];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = CGSizeMakeWithDictionaryRepresentation(v21, &v47);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v21 != 0;
      [(__CFDictionary *)v21 doubleValue];
      v47.width = v27;
      v47.height = v27;
    }

    else
    {
      v26 = 0;
    }
  }

  if (!v39)
  {
    v52.origin = origin;
    v52.size = v44;
  }

  if (!v38)
  {
    v55 = rect;
  }

  if (v37)
  {
    if (v12)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v54 = rect;
    if (v12)
    {
LABEL_51:
      if (v14)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }
  }

  v53 = rect;
  if (!v14)
  {
LABEL_52:
    v50 = v51;
  }

LABEL_53:
  v28 = [v3 objectForKeyedSubscript:@"maxClockShift"];
  [v28 floatValue];
  if (v29 == 0.0)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = v29;
  }

  v31 = [v3 objectForKeyedSubscript:@"inactiveAdaptive"];
  if (!v31 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_61;
  }

  v32 = CGRectMakeWithDictionaryRepresentation(v31, &v49);

  if (!v32)
  {
LABEL_61:
    v49.origin = origin;
    v49.size = v44;
  }

  if (v43 && v42 && v41 && v17 && v26)
  {
    v33 = [PFPosterOrientedLayout alloc];
    v34 = [(PFPosterOrientedLayout *)v33 initWithImageSize:v19 deviceResolution:v36 parallaxPadding:v25 visibleFrame:v23 adaptiveVisibleFrame:0 inactiveFrame:size.width adaptiveInactiveTopFrame:size.height spatialVisibleFrame:v57.width spatialAdaptiveFrame:v57.height timeFrame:v47.width adaptiveTimeFrame:v47.height salientContentFrame:*&rect.origin.x clockLayerOrder:*&rect.origin.y clockIntersection:*&rect.size.width layoutVariant:*&rect.size.height hasTopEdgeContact:*&v55.origin.x maxClockShift:*&v55.origin.y debugLayouts:*&v55.size.width, *&v55.size.height, *&v52.origin.x, *&v52.origin.y, *&v52.size.width, *&v52.size.height, *&v49.origin.x, *&v49.origin.y, *&v49.size.width, *&v49.size.height, *&v54.origin.x, *&v54.origin.y, *&v54.size.width, *&v54.size.height, *&v53.origin.x, *&v53.origin.y, *&v53.size.width, *&v53.size.height, *&v51.origin.x, *&v51.origin.y, *&v51.size.width, *&v51.size.height, *&v50.origin.x, *&v50.origin.y, *&v50.size.width, *&v50.size.height, *&v48.origin.x, *&v48.origin.y, *&v48.size.width, *&v48.size.height, *&v30];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1B35C1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to read layout data", buf, 2u);
    }

    v34 = 0;
  }

  return v34;
}

@end