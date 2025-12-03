@interface PXStoryTextResourceInfo
+ (BOOL)titleShouldBeUppercasedForStylePairing:(int64_t)pairing kind:(unint64_t)kind;
+ (NSCache)subtitleCachedCharacterSetByKind;
+ (NSCache)titleCachedCharacterSetByStyleAndKind;
+ (id)_allowedSubtitleCharacterSetWithKind:(unint64_t)kind;
+ (id)_allowedTitleCharacterSetWithStylePairing:(int64_t)pairing kind:(unint64_t)kind;
+ (id)_rangesAndStylesForTitle:(id)title;
+ (id)_subtitleFontCacheKeyForKind:(unint64_t)kind;
+ (id)_subtitleFontForKind:(unint64_t)kind scale:(double)scale hasExtendedCharacterSet:(BOOL)set internationalStyle:(int64_t)style;
+ (id)_titleFontCacheKeyForStylePairing:(int64_t)pairing kind:(unint64_t)kind;
+ (id)_titleFontForStylePairing:(int64_t)pairing scale:(double)scale kind:(unint64_t)kind internationalStyle:(int64_t)style;
+ (id)_titlePrimaryAttributesForStylePairing:(int64_t)pairing scale:(double)scale kind:(unint64_t)kind layoutScheme:(int64_t)scheme allowHyphenation:(BOOL)hyphenation internationalStyle:(int64_t)style;
+ (id)subtitleAttributesForSize:(CGSize)size string:(id)string scale:(double)scale kind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot internationalStyle:(int64_t)style;
+ (id)titleFontDescriptorForStylePairing:(int64_t)pairing kind:(unint64_t)kind;
+ (int64_t)stylePairingFromTitleCategory:(id)category string:(id)string kind:(unint64_t)kind layoutScheme:(int64_t)scheme;
+ (void)_increaseMaximumLineHeightToAvoidOverlapForLines:(id)lines attributes:(id)attributes attributedString:(id *)string;
+ (void)_setKashidaToParagraphStyle:(id)style;
- (BOOL)isEqual:(id)equal;
- (CGPoint)_subtitlePositionInFrame:(CGRect)frame titleCategory:(id)category displayAsset:(id)asset currentAssetCropRect:(CGRect)rect kind:(unint64_t)kind relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)self0 isTitleVertical:(BOOL)self1 isSubtitleVertical:(BOOL)self2;
- (CGPoint)bestPositionInFrame:(CGRect)frame occlusionSize:(CGSize)size possiblePositions:(id)positions displayAsset:(id)asset currentAssetCropRect:(CGRect)rect layoutOrientation:(int64_t)orientation desiredInternationalStyle:(int64_t)style;
- (CGPoint)origin;
- (CGRect)attributedStringFrameInRect:(CGRect)rect titleCategory:(id)category displayAsset:(id)asset currentAssetCropRect:(CGRect)cropRect kind:(unint64_t)kind relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)self0;
- (CGSize)_availableSizeForRect:(CGRect)rect extendedTraitCollectionSnapshot:(id)snapshot kind:(unint64_t)kind fixedBottomPadding:(double)padding;
- (CGSize)_fullScreenAvailableSizeForExtendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding;
- (CGSize)_occlusionSizeForSize:(CGSize)size kind:(unint64_t)kind size:(CGSize)a5 containerRect:(CGRect)rect stylePairing:(int64_t)pairing extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding isVerticalText:(BOOL)self0 isKashida:(BOOL)self1;
- (CGSize)boundingSize;
- (NSAttributedString)attributedString;
- (NSStringDrawingContext)drawingContext;
- (PXStoryTextResourceInfo)initWithString:(id)string associatedSubtitleString:(id)subtitleString type:(int64_t)type layoutScheme:(int64_t)scheme assetCollectionUUID:(id)d;
- (double)_paddingBottomForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot rect:(CGRect)rect fixedBottomPadding:(double)padding;
- (double)_paddingBottomScaleForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot;
- (double)_paddingLeadingMinimumForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape;
- (double)_paddingLeftOrRightAlignmentLeadingForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot rect:(CGRect)rect;
- (double)_paddingLeftOrRightAlignmentLeadingScaleForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape;
- (double)_paddingTopForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot rect:(CGRect)rect;
- (double)_paddingTopScaleForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot;
- (double)_sizeWidthMaximumForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape;
- (double)_sizeWidthMinimumForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape;
- (double)_sizeWidthScaleForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot;
- (double)_subtitleLineSpacingForKind:(unint64_t)kind size:(CGSize)size extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding isVerticalText:(BOOL)text;
- (double)_subtitleScalingFactorForKind:(unint64_t)kind size:(CGSize)size extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding;
- (double)_titleScalingFactorForKind:(unint64_t)kind size:(CGSize)size extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding;
- (id)_possibleTitlePositionsForRect:(CGRect)rect boudingSize:(CGSize)size occlusionSize:(CGSize)occlusionSize kind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding isTitleVertical:(BOOL)vertical isSubtitleVertical:(BOOL)self0 isKashida:(BOOL)self1;
- (id)attributedStringBoundingSizeForSubtitle:(id)subtitle size:(CGSize)size containerRect:(CGRect)rect kind:(unint64_t)kind relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding desiredInternationalStyle:(int64_t)self0;
- (id)attributedStringBoundingSizeForTitle:(id)title stylePairing:(int64_t)pairing availableSize:(CGSize)size containerRect:(CGRect)rect kind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding;
- (int64_t)_fullScreenTitlePositionWithTitleCategory:(id)category displayAsset:(id)asset currentAssetCropRect:(CGRect)rect relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding desiredInternationalStyle:(int64_t)style;
- (int64_t)effectivePositionIndex;
- (int64_t)textAlignment;
- (void)_checkForForcedPositioning:(id *)positioning;
@end

@implementation PXStoryTextResourceInfo

- (CGPoint)bestPositionInFrame:(CGRect)frame occlusionSize:(CGSize)size possiblePositions:(id)positions displayAsset:(id)asset currentAssetCropRect:(CGRect)rect layoutOrientation:(int64_t)orientation desiredInternationalStyle:(int64_t)style
{
  v58 = *MEMORY[0x1E69E9840];
  positionsCopy = positions;
  assetCopy = asset;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__85429;
  v55 = __Block_byref_object_dispose__85430;
  v56 = positionsCopy;
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__85429;
  v49[4] = __Block_byref_object_dispose__85430;
  v50 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __157__PXStoryTextResourceInfo_bestPositionInFrame_occlusionSize_possiblePositions_displayAsset_currentAssetCropRect_layoutOrientation_desiredInternationalStyle___block_invoke;
  aBlock[3] = &unk_1E77364F0;
  v46 = &v51;
  v34 = v56;
  v44 = v34;
  selfCopy = self;
  v47 = v49;
  v48 = a2;
  v33 = _Block_copy(aBlock);
  if (style)
  {
    if (style == 2)
    {
      v33[2](v33, &unk_1F1910660);
      v14 = 0;
    }

    else if (style == 1)
    {
      v14 = 3;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v33[2](v33, &unk_1F19106C0);
    v14 = 2;
  }

  v15 = [v34 objectAtIndexedSubscript:v14];
  [v15 pointValue];
  v35.x = v16;
  v35.y = v17;

  v18 = +[PXStorySettings sharedInstance];
  [v18 titleFarthestDistanceThreshold];
  v32 = v18;
  enableTitlePositioningLogs = [v18 enableTitlePositioningLogs];
  if (enableTitlePositioningLogs)
  {
    string = [(PXStoryTextResourceInfo *)self string];
    NSLog(&cfstr_MemoriesTitles.isa, string, v34);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v52[5];
  v21 = [obj countByEnumeratingWithState:&v39 objects:v57 count:16];
  if (v21)
  {
    v22 = *MEMORY[0x1E695EFF8];
    v38 = *(MEMORY[0x1E695EFF8] + 8);
    v23 = *v40;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v40 != v23)
        {
          objc_enumerationMutation(obj);
        }

        [*(*(&v39 + 1) + 8 * i) pointValue];
        if (v26 != v22 || v25 != v38)
        {
          PXRectNormalize();
        }
      }

      v21 = [obj countByEnumeratingWithState:&v39 objects:v57 count:{16, v38}];
    }

    while (v21);
  }

  if (enableTitlePositioningLogs)
  {
    string2 = [(PXStoryTextResourceInfo *)self string];
    v29 = NSStringFromPoint(v35);
    NSLog(&cfstr_MemoriesTitles_2.isa, string2, v29);
  }

  _Block_object_dispose(v49, 8);
  _Block_object_dispose(&v51, 8);

  y = v35.y;
  x = v35.x;
  result.y = y;
  result.x = x;
  return result;
}

uint64_t __157__PXStoryTextResourceInfo_bestPositionInFrame_occlusionSize_possiblePositions_displayAsset_currentAssetCropRect_layoutOrientation_desiredInternationalStyle___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 objectAtIndexedSubscript:v3];
}

void __157__PXStoryTextResourceInfo_bestPositionInFrame_occlusionSize_possiblePositions_displayAsset_currentAssetCropRect_layoutOrientation_desiredInternationalStyle___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(a1 + 32) objectAtIndexedSubscript:{objc_msgSend(*(*(&v13 + 1) + 8 * v9), "integerValue")}];
        if (!v10)
        {
          v12 = [MEMORY[0x1E696AAA8] currentHandler];
          [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"PXStoryTextResourceInfo.m" lineNumber:1748 description:{@"Invalid parameter not satisfying: %@", @"positionValue != nil"}];
        }

        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [*(a1 + 48) setObject:v11 forKeyedSubscript:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (CGPoint)_subtitlePositionInFrame:(CGRect)frame titleCategory:(id)category displayAsset:(id)asset currentAssetCropRect:(CGRect)rect kind:(unint64_t)kind relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)self0 isTitleVertical:(BOOL)self1 isSubtitleVertical:(BOOL)self2
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  toCopy = to;
  snapshotCopy = snapshot;
  [snapshotCopy layoutOrientation];
  if (!toCopy)
  {
    PXRectGetCenter();
  }

  [(PXStoryTextResourceInfo *)self _availableSizeForRect:snapshotCopy extendedTraitCollectionSnapshot:kind kind:x fixedBottomPadding:y, width, height, padding];
  [PXStoryTextResourceInfo _subtitleLineSpacingForKind:"_subtitleLineSpacingForKind:size:extendedTraitCollectionSnapshot:fixedBottomPadding:isVerticalText:" size:kind extendedTraitCollectionSnapshot:snapshotCopy fixedBottomPadding:subtitleVertical isVerticalText:?];
  v22 = v21;
  [toCopy origin];
  v24 = v23;
  v26 = v25;
  [toCopy boundingSize];
  v28 = v27;
  v30 = v29;
  drawingContext = [toCopy drawingContext];
  [drawingContext baselineOffset];
  v33 = v32;

  drawingContext2 = [(PXStoryTextResourceInfo *)self drawingContext];
  [drawingContext2 baselineOffset];
  v36 = v35;

  if (subtitleVertical)
  {
    rect = v28;
    v37 = ceil(width * 0.0032);
    if ([toCopy textAlignment])
    {
      textAlignment = [toCopy textAlignment];
      [toCopy boundingSize];
      v40 = v39;
      [(PXStoryTextResourceInfo *)self boundingSize];
      v42 = v26 + v40 * 0.5 + v41 * -0.5;
      v43 = v26 + v40 - v41 - v37;
      if (textAlignment == 2)
      {
        v44 = v43;
      }

      else
      {
        v44 = v42;
      }
    }

    else
    {
      v44 = v37 + v26;
    }

    if (([toCopy effectivePositionIndex] - 6) > 2)
    {
      v24 = v22 + v24 + v33 - v36;
    }

    else
    {
      v58.origin.x = v24;
      v58.origin.y = v26;
      v58.size.width = rect;
      v58.size.height = v30;
      v49 = v22 + v24 + v33 - v36 - CGRectGetMaxX(v58);
      [(PXStoryTextResourceInfo *)self boundingSize];
      v24 = v24 - v50 - v49;
    }
  }

  else
  {
    v44 = v22 + v26 + v33 - v36;
    effectivePositionIndex = [toCopy effectivePositionIndex];
    if (effectivePositionIndex > 8)
    {
      v24 = 0.0;
    }

    else if (((1 << effectivePositionIndex) & 7) != 0)
    {
      [toCopy boundingSize];
      v52 = v24 + v51 * 0.5;
      [(PXStoryTextResourceInfo *)self boundingSize];
      v24 = v52 + v53 * -0.5;
    }

    else if (((1 << effectivePositionIndex) & 0x38) == 0)
    {
      [toCopy boundingSize];
      v47 = v24 + v46;
      [(PXStoryTextResourceInfo *)self boundingSize];
      v24 = v47 - v48;
    }
  }

  v54 = v24;
  v55 = v44;
  result.y = v55;
  result.x = v54;
  return result;
}

- (id)attributedStringBoundingSizeForSubtitle:(id)subtitle size:(CGSize)size containerRect:(CGRect)rect kind:(unint64_t)kind relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding desiredInternationalStyle:(int64_t)self0
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v19 = size.height;
  v20 = size.width;
  subtitleCopy = subtitle;
  toCopy = to;
  snapshotCopy = snapshot;
  localizedUppercaseString = [subtitleCopy localizedUppercaseString];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __179__PXStoryTextResourceInfo_attributedStringBoundingSizeForSubtitle_size_containerRect_kind_relativeTo_extendedTraitCollectionSnapshot_fixedBottomPadding_desiredInternationalStyle___block_invoke;
  aBlock[3] = &unk_1E7736480;
  v78 = v20;
  v79 = v19;
  aBlock[4] = self;
  kindCopy = kind;
  v26 = snapshotCopy;
  v74 = v26;
  v81 = x;
  v82 = y;
  v83 = width;
  v84 = height;
  v67 = toCopy;
  v75 = v67;
  v27 = subtitleCopy;
  v76 = v27;
  v28 = localizedUppercaseString;
  v77 = v28;
  v29 = _Block_copy(aBlock);
  v30 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v28];
  v68 = v26;
  [(PXStoryTextResourceInfo *)self _subtitleScalingFactorForKind:kind size:v26 extendedTraitCollectionSnapshot:v20 fixedBottomPadding:v19, padding];
  v32 = v31;
  v33 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  v34 = +[PXStorySettings sharedInstance];
  [v34 subtitleMinimumScale];
  [v33 setMinimumScaleFactor:?];

  [v33 setWrapsForTruncationMode:1];
  [v33 setWantsBaselineOffset:1];
  [v33 setMaximumNumberOfLines:1];
  assetCollectionUUID = [(PXStoryTextResourceInfo *)self assetCollectionUUID];
  v36 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(v27, assetCollectionUUID);

  if (v36 == style)
  {
    styleCopy = style;
  }

  else
  {
    styleCopy = 0;
  }

  if (styleCopy == 2)
  {
    v70 = v30;
    v38 = v29[2](v29, &v70, v33, 0, v32, 0.0);
    v39 = v70;

    [v38 totalBounds];
    v41.n128_f64[0] = ceil(v40);
    v69 = v39;
    v42 = &v69;
    v43.n128_f64[0] = v32;
    (v29[2])(v29, &v69, v38, 2, v43, v41);
  }

  else
  {
    v72 = v30;
    v38 = v29[2](v29, &v72, v33, styleCopy, v32, 0.0);
    v39 = v72;

    [v38 actualScaleFactor];
    v45.n128_f32[0] = v45.n128_f64[0] * 10.0;
    v45.n128_f32[0] = floorf(v45.n128_f32[0]) / 10.0;
    if (v45.n128_f32[0] == 1.0)
    {
      goto LABEL_9;
    }

    v45.n128_f64[0] = v32 * v45.n128_f32[0];
    v71 = v39;
    v42 = &v71;
    v44.n128_u64[0] = 0;
    (v29[2])(v29, &v71, v38, styleCopy, v45, v44);
  }
  v46 = ;
  v47 = *v42;

  v38 = v46;
  v39 = v47;
LABEL_9:
  [v38 totalBounds];
  v49 = ceil(v48);
  v51 = ceil(v50);
  v52 = v49 + 40.0;
  v53 = v51 + 40.0;
  if (styleCopy == 1)
  {
    if ([v39 length])
    {
      v54 = [v39 attributesAtIndex:0 effectiveRange:0];
      v55 = [v54 mutableCopy];
    }

    else
    {
      v55 = 0;
    }

    [v55 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E7722288];
    [v39 setAttributes:v55 range:{0, objc_msgSend(v39, "length")}];

    v56 = v52;
  }

  else
  {
    v56 = v51 + 40.0;
    v53 = v49 + 40.0;
  }

  uppercaseString = [v27 uppercaseString];
  string = [(PXStoryTextResourceInfo *)self string];
  uppercaseString2 = [string uppercaseString];
  v60 = [uppercaseString isEqualToString:uppercaseString2];

  if (v60)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_drawingContext, v38);
    v61 = [v39 copy];
    lock_attributedString = self->_lock_attributedString;
    self->_lock_attributedString = v61;

    self->_lock_boundingSize.width = v53;
    self->_lock_boundingSize.height = v56;
    os_unfair_lock_unlock(&self->_lock);
  }

  v63 = [off_1E7721930 alloc];
  v64 = [MEMORY[0x1E696B098] valueWithCGSize:{v53, v56}];
  v65 = [v63 initWithFirst:v39 second:v64];

  return v65;
}

id __179__PXStoryTextResourceInfo_attributedStringBoundingSizeForSubtitle_size_containerRect_kind_relativeTo_extendedTraitCollectionSnapshot_fixedBottomPadding_desiredInternationalStyle___block_invoke(uint64_t a1, id *a2, void *a3, uint64_t a4, double a5, double a6)
{
  v11 = a3;
  v13 = *(a1 + 72);
  v12 = *(a1 + 80);
  if (a4 == 2)
  {
    [*(a1 + 32) _paddingLeftOrRightAlignmentLeadingForKind:*(a1 + 88) extendedTraitCollectionSnapshot:*(a1 + 40) rect:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120)}];
    v15 = fmin(v13, (*(a1 + 112) + v14 * -2.0) * 0.5);
    [*(a1 + 48) boundingSize];
    v17 = v16 + -40.0;
    v18 = [off_1E7721780 defaultSpecs];
    [v18 maximumWidthForSubtitle:*(a1 + 56) titleWidth:v17];
    v13 = fmax(fmin(v15, v19), a6);
  }

  v20 = *a2;
  v21 = [PXStoryTextResourceInfo subtitleAttributesForSize:*(a1 + 64) string:*(a1 + 88) scale:*(a1 + 40) kind:a4 extendedTraitCollectionSnapshot:v13 internationalStyle:v12, a5];
  [v20 setAttributes:v21 range:{0, objc_msgSend(*(a1 + 64), "length")}];

  [*a2 boundingRectWithSize:objc_msgSend(*(a1 + 32) options:"drawingOptions") context:{v11, v13, v12}];

  return v11;
}

- (id)attributedStringBoundingSizeForTitle:(id)title stylePairing:(int64_t)pairing availableSize:(CGSize)size containerRect:(CGRect)rect kind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15 = size.height;
  v16 = size.width;
  v19 = size.height;
  titleCopy = title;
  snapshotCopy = snapshot;
  if ([objc_opt_class() titleShouldBeUppercasedForStylePairing:pairing kind:kind])
  {
    localizedUppercaseString = [titleCopy localizedUppercaseString];
  }

  else
  {
    localizedUppercaseString = titleCopy;
  }

  v23 = localizedUppercaseString;
  v24 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:localizedUppercaseString];
  [(PXStoryTextResourceInfo *)self _titleScalingFactorForKind:kind size:snapshotCopy extendedTraitCollectionSnapshot:v16 fixedBottomPadding:v19, padding];
  v26 = v25;
  v96 = 0;
  v97 = &v96;
  v98 = 0x2020000000;
  v99 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __161__PXStoryTextResourceInfo_attributedStringBoundingSizeForTitle_stylePairing_availableSize_containerRect_kind_extendedTraitCollectionSnapshot_fixedBottomPadding___block_invoke;
  aBlock[3] = &unk_1E7736458;
  v83 = v23;
  v89 = v83;
  selfCopy = self;
  pairingCopy = pairing;
  kindCopy = kind;
  v94 = v16;
  v95 = v19;
  v91 = &v96;
  v27 = _Block_copy(aBlock);
  v28 = objc_alloc_init(MEMORY[0x1E69DB7E0]);
  v29 = +[PXStorySettings sharedInstance];
  [v29 titleMinimumScale];
  v31 = v30;

  [v28 setMinimumScaleFactor:v31];
  [v28 setWrapsForTruncationMode:1];
  [v28 setWantsBaselineOffset:1];
  v32 = +[PXStorySettings sharedInstance];
  [v28 setMaximumNumberOfLines:{objc_msgSend(v32, "titleMaximumNumberOfLines")}];
  v84 = snapshotCopy;

  v33 = v27[2];
  v87 = v24;
  v34 = v33(v27, &v87, v28, 0, 0, v26, v16, v19);
  v35 = v87;

  [v34 actualScaleFactor];
  *&v36 = v36 * 10.0;
  v37 = floorf(*&v36) / 10.0;
  v38 = v26 * v37;
  if (v37 == 1.0)
  {
    v40 = 0;
  }

  else
  {
    v39 = v31 * 10.0;
    v40 = (floorf(v37 * 10.0) / 10.0) == (floorf(v39) / 10.0);
    v86 = v35;
    v41 = (v27[2])(v27, &v86, v34, v40, 0, v38, v16, v19);
    v42 = v86;

    v34 = v41;
    v35 = v42;
  }

  v43 = 0;
  if (kind == 64 || v97[3] > 2)
  {
    v58 = 0;
  }

  else
  {
    assetCollectionUUID = [(PXStoryTextResourceInfo *)self assetCollectionUUID];

    if (assetCollectionUUID)
    {
      assetCollectionUUID2 = [(PXStoryTextResourceInfo *)self assetCollectionUUID];
      v46 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(titleCopy, assetCollectionUUID2);

      if (v46 == 2)
      {
        [(PXStoryTextResourceInfo *)self _paddingLeftOrRightAlignmentLeadingForKind:kind extendedTraitCollectionSnapshot:v84 rect:x, y, width, height];
        v48 = fmin(v16 * 1.25, width - (v47 + v47)) / v16;
        v49 = v16 * v48;
        v19 = v15 * v48;
        if (v97[3] == 1)
        {
          defaultSpecs = [off_1E7721780 defaultSpecs];
          string = [v35 string];
          [defaultSpecs maximumWidthForTitle:string containerSize:{v49, v19}];
          v53 = v52;

          [v34 totalBounds];
          v55 = v53 > 0.0;
          v56 = ceil(v54) < v53;
          v57 = fmin(v53, v16);
          if (v55 && v56)
          {
            v16 = v57;
          }

          else
          {
            v16 = v49;
          }

          if (v55 && v56)
          {
            v46 = 2;
          }

          else
          {
            v46 = 0;
          }
        }

        else
        {
          v46 = 2;
          v16 = v16 * v48;
        }
      }

      v85 = v35;
      v59 = (v27[2])(v27, &v85, v34, v40, v46, v38, v16, v19);
      v60 = v85;

      v58 = v46 == 1;
      v43 = 1;
      v34 = v59;
      v35 = v60;
    }

    else
    {
      v43 = 0;
      v58 = 0;
    }
  }

  [v34 totalBounds];
  v62 = ceil(v61);
  v64 = v62 + 40.0;
  v65 = ceil(v63) + 40.0;
  if ((v43 & v58 & 1) != 0 && v97[3] == 1 && v62 < v15 * 0.85 && ([(PXStoryTextResourceInfo *)self associatedSubtitleString], v66 = objc_claimAutoreleasedReturnValue(), [(PXStoryTextResourceInfo *)self assetCollectionUUID], v67 = objc_claimAutoreleasedReturnValue(), v68 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(v66, v67), v67, v66, v68 == 1))
  {
    if ([v35 length])
    {
      v69 = [v35 attributesAtIndex:0 effectiveRange:0];
      v70 = [v69 mutableCopy];
    }

    else
    {
      v70 = 0;
    }

    [v70 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E7722288];
    [v35 setAttributes:v70 range:{0, objc_msgSend(v35, "length")}];
    [v34 setMaximumNumberOfLines:1];

    v71 = v65;
  }

  else
  {
    v71 = v64;
    v64 = v65;
  }

  uppercaseString = [titleCopy uppercaseString];
  string2 = [(PXStoryTextResourceInfo *)self string];
  uppercaseString2 = [string2 uppercaseString];
  v75 = [uppercaseString isEqualToString:uppercaseString2];

  if (v75)
  {
    os_unfair_lock_lock(&self->_lock);
    objc_storeStrong(&self->_lock_drawingContext, v34);
    v76 = [v35 copy];
    lock_attributedString = self->_lock_attributedString;
    self->_lock_attributedString = v76;

    self->_lock_boundingSize.width = v71;
    self->_lock_boundingSize.height = v64;
    os_unfair_lock_unlock(&self->_lock);
  }

  v78 = [off_1E7721930 alloc];
  v79 = [MEMORY[0x1E696B098] valueWithCGSize:{v71, v64}];
  v80 = [v78 initWithFirst:v35 second:v79];

  _Block_object_dispose(&v96, 8);

  return v80;
}

id __161__PXStoryTextResourceInfo_attributedStringBoundingSizeForTitle_stylePairing_availableSize_containerRect_kind_extendedTraitCollectionSnapshot_fixedBottomPadding___block_invoke(uint64_t a1, id *a2, void *a3, unsigned int a4, uint64_t a5, double a6, double a7, double a8)
{
  v49 = *MEMORY[0x1E69E9840];
  v39 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [PXStoryTextResourceInfo _rangesAndStylesForTitle:*(a1 + 32)];
  v13 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
  v14 = a2;
  if (v13)
  {
    v15 = v13;
    v16 = 0;
    v17 = *v45;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v45 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v44 + 1) + 8 * i);
        v20 = [v19 second];
        v21 = [v20 integerValue];

        if (!v21)
        {
          v22 = [objc_opt_class() _titlePrimaryAttributesForStylePairing:*(a1 + 56) scale:*(a1 + 64) kind:objc_msgSend(*(a1 + 40) layoutScheme:"layoutScheme") allowHyphenation:a4 internationalStyle:{a5, a6}];

          v16 = v22;
        }

        a2 = v14;
        v23 = *v14;
        v24 = [v19 first];
        v25 = [v24 rangeValue];
        [v23 setAttributes:v16 range:{v25, v26}];
      }

      v15 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  if ([*a2 length])
  {
    v27 = *MEMORY[0x1E69DB688];
    v28 = [v16 valueForKey:*MEMORY[0x1E69DB688]];
    obja = [v28 mutableCopy];

    [obja setLineBreakMode:0];
    v29 = [v16 mutableCopy];
    [v29 setValue:obja forKey:v27];
    v30 = objc_alloc(MEMORY[0x1E696AAB0]);
    v31 = *(a1 + 32);
    v32 = [v29 copy];
    v33 = [v30 initWithString:v31 attributes:v32];

    v34 = [[off_1E7721508 alloc] initWithAttributedString:v33 context:0];
    v35 = [v34 frameWithRect:5 maximumLineCount:0 allowTruncation:{0.0, 0.0, *(a1 + 72), *(a1 + 80)}];
    v36 = [v35 lines];
    *(*(*(a1 + 48) + 8) + 24) = [v36 count];
    v37 = [*v14 attributesAtIndex:0 effectiveRange:0];
    a2 = v14;
    [PXStoryTextResourceInfo _increaseMaximumLineHeightToAvoidOverlapForLines:v36 attributes:v37 attributedString:v14];
  }

  [*a2 boundingRectWithSize:objc_msgSend(*(a1 + 40) options:"drawingOptions") context:{v39, a7, a8}];

  return v39;
}

- (double)_subtitleScalingFactorForKind:(unint64_t)kind size:(CGSize)size extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding
{
  width = size.width;
  snapshotCopy = snapshot;
  v11 = +[PXStorySettings sharedInstance];
  useReferenceWidthBasedTitleLayout = [v11 useReferenceWidthBasedTitleLayout];

  layoutOrientation = [snapshotCopy layoutOrientation];
  if (!useReferenceWidthBasedTitleLayout)
  {
    v18 = +[PXStorySettings sharedInstance];
    [v18 subtitleSizeScale];
    v20 = v19;

    v21 = 1.96;
    if (layoutOrientation != 2)
    {
      v21 = 2.0;
    }

    if (v20 == 0.0)
    {
      v22 = dbl_1A5380EB0[layoutOrientation == 2];
    }

    else
    {
      v22 = v20;
    }

    if (v20 == 0.0)
    {
      v23 = v21;
    }

    else
    {
      v23 = v20;
    }

    v14 = 0.0;
    if (kind > 127)
    {
      if (kind > 511)
      {
        if (kind != 512 && kind != 1024)
        {
          goto LABEL_45;
        }
      }

      else if (kind != 128 && kind != 256)
      {
        goto LABEL_45;
      }
    }

    else
    {
      if (kind - 2 > 0x3E)
      {
LABEL_20:
        if (!kind)
        {
          goto LABEL_44;
        }

        v14 = 0.0;
        if (kind == 1)
        {
          v14 = v22;
        }

        goto LABEL_45;
      }

      if (((1 << (kind - 2)) & 0x40004044) == 0)
      {
        v14 = v23;
        if (kind == 2)
        {
          goto LABEL_45;
        }

        if (kind == 64)
        {
          goto LABEL_44;
        }

        goto LABEL_20;
      }
    }

    if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy, dbl_1A5380EB0[layoutOrientation == 2], v21])
    {
      v25 = v23;
    }

    else
    {
      v25 = v22;
    }

    [(PXStoryTextResourceInfo *)self _fullScreenAvailableSizeForExtendedTraitCollectionSnapshot:snapshotCopy fixedBottomPadding:padding];
    v14 = width * (v25 / v26);
    goto LABEL_45;
  }

  v14 = 0.0;
  if (kind <= 127)
  {
    if (kind - 1 > 0x3F)
    {
      goto LABEL_43;
    }

    if (((1 << (kind - 1)) & 0x8000808BLL) != 0)
    {
      goto LABEL_5;
    }

    if (kind != 64)
    {
LABEL_43:
      if (kind)
      {
        goto LABEL_45;
      }
    }

LABEL_44:
    v14 = 1.0;
    goto LABEL_45;
  }

  if (kind <= 511)
  {
    if (kind != 128)
    {
      if (kind != 256)
      {
        goto LABEL_45;
      }

      v15 = +[PXStorySettings sharedInstance];
      v16 = v15;
      goto LABEL_6;
    }

LABEL_5:
    v15 = +[PXStorySettings sharedInstance];
    v16 = v15;
    if (layoutOrientation != 2)
    {
      [v15 titleReferenceWidthPortrait];
      goto LABEL_24;
    }

LABEL_6:
    [v15 titleReferenceWidthLandscape];
LABEL_24:
    v24 = v17;

    v14 = width / v24;
    goto LABEL_45;
  }

  if (kind == 512 || kind == 1024)
  {
    goto LABEL_5;
  }

LABEL_45:

  return v14;
}

- (double)_titleScalingFactorForKind:(unint64_t)kind size:(CGSize)size extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding
{
  width = size.width;
  snapshotCopy = snapshot;
  v11 = +[PXStorySettings sharedInstance];
  useReferenceWidthBasedTitleLayout = [v11 useReferenceWidthBasedTitleLayout];

  layoutOrientation = [snapshotCopy layoutOrientation];
  v14 = layoutOrientation;
  if (!useReferenceWidthBasedTitleLayout)
  {
    v19 = layoutOrientation == 2;
    v20 = +[PXStorySettings sharedInstance];
    [v20 titleSizeScale];
    v22 = v21;

    if (v22 == 0.0)
    {
      v23 = 1.5;
    }

    else
    {
      v23 = v22;
    }

    if (v22 == 0.0)
    {
      v24 = dbl_1A5380EB0[v19];
    }

    else
    {
      v24 = v22;
    }

    v15 = 0.0;
    if (kind > 127)
    {
      if (kind > 511)
      {
        if (kind != 512 && kind != 1024)
        {
          goto LABEL_43;
        }
      }

      else if (kind != 128 && kind != 256)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (kind - 2 > 0x3E)
      {
LABEL_18:
        if (!kind)
        {
          goto LABEL_42;
        }

        v15 = 0.0;
        if (kind == 1)
        {
          v15 = v24;
        }

        goto LABEL_43;
      }

      if (((1 << (kind - 2)) & 0x40004044) == 0)
      {
        v15 = v23;
        if (kind == 2)
        {
          goto LABEL_43;
        }

        if (kind == 64)
        {
          goto LABEL_42;
        }

        goto LABEL_18;
      }
    }

    if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy, dbl_1A5380EB0[v19]])
    {
      v26 = v23;
    }

    else
    {
      v26 = v24;
    }

    [(PXStoryTextResourceInfo *)self _fullScreenAvailableSizeForExtendedTraitCollectionSnapshot:snapshotCopy fixedBottomPadding:padding];
    v15 = width * (v26 / v27);
    goto LABEL_43;
  }

  v15 = 0.0;
  if (kind <= 127)
  {
    if (kind - 1 > 0x3F)
    {
      goto LABEL_41;
    }

    if (((1 << (kind - 1)) & 0x8000808BLL) != 0)
    {
      goto LABEL_5;
    }

    if (kind != 64)
    {
LABEL_41:
      if (kind)
      {
        goto LABEL_43;
      }
    }

LABEL_42:
    v15 = 1.0;
    goto LABEL_43;
  }

  if (kind <= 511)
  {
    if (kind != 128)
    {
      if (kind != 256)
      {
        goto LABEL_43;
      }

      v16 = +[PXStorySettings sharedInstance];
      v17 = v16;
      goto LABEL_6;
    }

LABEL_5:
    v16 = +[PXStorySettings sharedInstance];
    v17 = v16;
    if (v14 != 2)
    {
      [v16 titleReferenceWidthPortrait];
      goto LABEL_22;
    }

LABEL_6:
    [v16 titleReferenceWidthLandscape];
LABEL_22:
    v25 = v18;

    v15 = width / v25;
    goto LABEL_43;
  }

  if (kind == 512 || kind == 1024)
  {
    goto LABEL_5;
  }

LABEL_43:

  return v15;
}

- (int64_t)_fullScreenTitlePositionWithTitleCategory:(id)category displayAsset:(id)asset currentAssetCropRect:(CGRect)rect relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding desiredInternationalStyle:(int64_t)style
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  snapshotCopy = snapshot;
  assetCopy = asset;
  categoryCopy = category;
  if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy])
  {
    v17 = 2;
  }

  else
  {
    v17 = 1;
  }

  [snapshotCopy fullScreenReferenceRect];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(PXStoryTextResourceInfo *)self _fullScreenAvailableSizeForExtendedTraitCollectionSnapshot:snapshotCopy fixedBottomPadding:padding];
  v27 = v26;
  v29 = v28;
  v58 = v28;
  v30 = objc_opt_class();
  string = [(PXStoryTextResourceInfo *)self string];
  v32 = [v30 stylePairingFromTitleCategory:categoryCopy string:string kind:v17 layoutScheme:{-[PXStoryTextResourceInfo layoutScheme](self, "layoutScheme")}];

  string2 = [(PXStoryTextResourceInfo *)self string];
  v34 = v29;
  v35 = v19;
  v36 = v21;
  padding = [(PXStoryTextResourceInfo *)self attributedStringBoundingSizeForTitle:string2 stylePairing:v32 availableSize:v17 containerRect:snapshotCopy kind:v27 extendedTraitCollectionSnapshot:v34 fixedBottomPadding:v19, v21, v23, v25, padding];

  second = [padding second];
  [second CGSizeValue];
  v40 = v39;
  v42 = v41;

  paddingCopy = padding;
  [(PXStoryTextResourceInfo *)self _occlusionSizeForSize:v17 kind:v32 size:snapshotCopy containerRect:style == 1 stylePairing:style == 2 extendedTraitCollectionSnapshot:v40 fixedBottomPadding:v42 isVerticalText:v27 isKashida:v58, v35, v36, v23, v25, *&padding];
  v44 = v43;
  v46 = v45;
  if (style == 1)
  {
    associatedSubtitleString = [(PXStoryTextResourceInfo *)self associatedSubtitleString];
    assetCollectionUUID = [(PXStoryTextResourceInfo *)self assetCollectionUUID];
    v49 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(associatedSubtitleString, assetCollectionUUID) == 1;
  }

  else
  {
    v49 = 0;
  }

  v50 = [(PXStoryTextResourceInfo *)self _possibleTitlePositionsForRect:v17 boudingSize:snapshotCopy occlusionSize:style == 1 kind:v49 extendedTraitCollectionSnapshot:style == 2 fixedBottomPadding:v35 isTitleVertical:v36 isSubtitleVertical:v23 isKashida:v25, v40, v42, v44, v46, *&paddingCopy];
  -[PXStoryTextResourceInfo bestPositionInFrame:occlusionSize:possiblePositions:displayAsset:currentAssetCropRect:layoutOrientation:desiredInternationalStyle:](self, "bestPositionInFrame:occlusionSize:possiblePositions:displayAsset:currentAssetCropRect:layoutOrientation:desiredInternationalStyle:", v50, assetCopy, [snapshotCopy layoutOrientation], style, v35, v36, v23, v25, v44, v46, *&x, *&y, *&width, *&height);
  v52 = v51;
  v54 = v53;

  v55 = [MEMORY[0x1E696B098] valueWithPoint:{v52, v54}];
  v56 = [v50 indexOfObject:v55];

  return v56;
}

- (CGSize)_fullScreenAvailableSizeForExtendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding
{
  snapshotCopy = snapshot;
  if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy])
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [snapshotCopy fullScreenReferenceRect];
  [PXStoryTextResourceInfo _availableSizeForRect:"_availableSizeForRect:extendedTraitCollectionSnapshot:kind:fixedBottomPadding:" extendedTraitCollectionSnapshot:snapshotCopy kind:v6 fixedBottomPadding:?];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CGSize)_availableSizeForRect:(CGRect)rect extendedTraitCollectionSnapshot:(id)snapshot kind:(unint64_t)kind fixedBottomPadding:(double)padding
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  snapshotCopy = snapshot;
  v14 = [snapshotCopy layoutOrientation] == 2;
  [(PXStoryTextResourceInfo *)self _sizeWidthMinimumForKind:kind orientationIsLandscape:v14];
  v16 = v15;
  [(PXStoryTextResourceInfo *)self _sizeWidthMaximumForKind:kind orientationIsLandscape:v14];
  v28 = v17;
  [(PXStoryTextResourceInfo *)self _sizeWidthScaleForKind:kind extendedTraitCollectionSnapshot:snapshotCopy];
  v19 = v18;
  [(PXStoryTextResourceInfo *)self _paddingLeftOrRightAlignmentLeadingForKind:kind extendedTraitCollectionSnapshot:snapshotCopy rect:x, y, width, height];
  v27 = v20;
  [(PXStoryTextResourceInfo *)self _paddingTopForKind:kind extendedTraitCollectionSnapshot:snapshotCopy rect:x, y, width, height];
  v22 = v21;
  [(PXStoryTextResourceInfo *)self _paddingBottomForKind:kind extendedTraitCollectionSnapshot:snapshotCopy rect:x fixedBottomPadding:y, width, height, padding];
  v24 = v23;

  if (width * v19 >= v16 || width - v16 + v27 * -2.0 <= 0.0)
  {
    v16 = fmin(width * v19, v28);
  }

  v25 = height - v22 - v24;
  v26 = v16;
  result.height = v25;
  result.width = v26;
  return result;
}

- (id)_possibleTitlePositionsForRect:(CGRect)rect boudingSize:(CGSize)size occlusionSize:(CGSize)occlusionSize kind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding isTitleVertical:(BOOL)vertical isSubtitleVertical:(BOOL)self0 isKashida:(BOOL)self1
{
  kashidaCopy = kashida;
  subtitleVerticalCopy = subtitleVertical;
  verticalCopy = vertical;
  height = occlusionSize.height;
  width = occlusionSize.width;
  v16 = size.width;
  v17 = rect.size.height;
  v18 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  snapshotCopy = snapshot;
  [(PXStoryTextResourceInfo *)self _paddingLeftOrRightAlignmentLeadingForKind:kind extendedTraitCollectionSnapshot:snapshotCopy rect:x, y, v18, v17];
  v24 = v23;
  [(PXStoryTextResourceInfo *)self _paddingTopForKind:kind extendedTraitCollectionSnapshot:snapshotCopy rect:x, y, v18, v17];
  v62 = v25;
  [(PXStoryTextResourceInfo *)self _paddingBottomForKind:kind extendedTraitCollectionSnapshot:snapshotCopy rect:x fixedBottomPadding:y, v18, v17, padding];
  v27 = v26;
  v28 = +[PXStorySettings sharedInstance];
  titleUseCenterAlignment = [v28 titleUseCenterAlignment];

  if (titleUseCenterAlignment)
  {
    v30 = width <= v16 + -40.0;
  }

  else
  {
    v30 = 1;
  }

  if (v30)
  {
    v31 = v24 + -20.0;
  }

  else
  {
    v31 = v24 + (width - v16) * 0.5;
  }

  if (v30)
  {
    v32 = v18 - v16 - v24 + 20.0;
  }

  else
  {
    v32 = v18 - width - v24 + (width - v16) * 0.5;
  }

  v33 = v16 * -0.5 + v18 * 0.5;
  v34 = v62 + -20.0;
  v35 = v17 - height - v27 + -20.0;
  v36 = height * -0.5 + v17 * 0.5 + -20.0;
  userInterfaceIdiom = [snapshotCopy userInterfaceIdiom];

  v38 = kind == 4 && verticalCopy;
  v39 = v34 + v18 * 0.05;
  if (!v38 || (userInterfaceIdiom - 1) >= 2)
  {
    v39 = v62 + -20.0;
  }

  v64 = v39;
  v40 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:9];
  v41 = [MEMORY[0x1E696B098] valueWithPoint:{v33, v34}];
  [v40 setObject:v41 atIndexedSubscript:0];

  v43 = *MEMORY[0x1E695EFF8];
  v42 = *(MEMORY[0x1E695EFF8] + 8);
  if (verticalCopy)
  {
    v44 = *(MEMORY[0x1E695EFF8] + 8);
  }

  else
  {
    v44 = v36;
  }

  if (verticalCopy)
  {
    v45 = *MEMORY[0x1E695EFF8];
  }

  else
  {
    v45 = v33;
  }

  v46 = [MEMORY[0x1E696B098] valueWithPoint:{v45, v44}];
  [v40 setObject:v46 atIndexedSubscript:1];

  if (verticalCopy || kashidaCopy)
  {
    v47 = v42;
  }

  else
  {
    v47 = v35;
  }

  if (verticalCopy || kashidaCopy)
  {
    v48 = v43;
  }

  else
  {
    v48 = v33;
  }

  v49 = [MEMORY[0x1E696B098] valueWithPoint:{v48, v47}];
  [v40 setObject:v49 atIndexedSubscript:2];

  v50 = [MEMORY[0x1E696B098] valueWithPoint:{v31, v34}];
  [v40 setObject:v50 atIndexedSubscript:3];

  v51 = verticalCopy ^ subtitleVerticalCopy | kashidaCopy;
  if (v51)
  {
    v52 = v42;
  }

  else
  {
    v52 = v36;
  }

  if (v51)
  {
    v53 = v43;
  }

  else
  {
    v53 = v31;
  }

  if (v51)
  {
    v54 = v42;
  }

  else
  {
    v54 = v35;
  }

  if (v51)
  {
    v55 = v43;
  }

  else
  {
    v55 = v32;
  }

  v56 = [MEMORY[0x1E696B098] valueWithPoint:{v53, v52}];
  [v40 setObject:v56 atIndexedSubscript:4];

  v57 = [MEMORY[0x1E696B098] valueWithPoint:{v53, v54}];
  [v40 setObject:v57 atIndexedSubscript:5];

  v58 = [MEMORY[0x1E696B098] valueWithPoint:{v32, v64}];
  [v40 setObject:v58 atIndexedSubscript:6];

  v59 = [MEMORY[0x1E696B098] valueWithPoint:{v55, v52}];
  [v40 setObject:v59 atIndexedSubscript:7];

  v60 = [MEMORY[0x1E696B098] valueWithPoint:{v55, v54}];
  [v40 setObject:v60 atIndexedSubscript:8];

  return v40;
}

- (double)_paddingBottomForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot rect:(CGRect)rect fixedBottomPadding:(double)padding
{
  height = rect.size.height;
  snapshotCopy = snapshot;
  v11 = snapshotCopy;
  v12 = 14.0;
  if (kind != 64)
  {
    if (padding == 0.0)
    {
      [(PXStoryTextResourceInfo *)self _paddingBottomScaleForKind:kind extendedTraitCollectionSnapshot:snapshotCopy];
      v12 = height * v13;
    }

    else
    {
      layoutOrientation = [snapshotCopy layoutOrientation];
      v15 = 40.0;
      if (layoutOrientation == 2)
      {
        v15 = 26.0;
      }

      v12 = v15 + padding;
    }
  }

  return v12;
}

- (double)_paddingTopForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot rect:(CGRect)rect
{
  if (kind == 64)
  {
    return 14.0;
  }

  height = rect.size.height;
  [(PXStoryTextResourceInfo *)self _paddingTopScaleForKind:kind extendedTraitCollectionSnapshot:snapshot, rect.origin.x, rect.origin.y, rect.size.width];
  v9 = height * v8;
  v10 = kind == 8 || kind == 4;
  v11 = 48.0;
  if (!v10)
  {
    v11 = 0.0;
  }

  return fmax(v11, v9);
}

- (double)_paddingLeftOrRightAlignmentLeadingForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot rect:(CGRect)rect
{
  width = rect.size.width;
  layoutOrientation = [snapshot layoutOrientation];
  if (kind == 64)
  {
    return 14.0;
  }

  v10 = layoutOrientation == 2;
  [(PXStoryTextResourceInfo *)self _paddingLeftOrRightAlignmentLeadingScaleForKind:kind orientationIsLandscape:v10];
  v12 = width * v11;
  [(PXStoryTextResourceInfo *)self _paddingLeadingMinimumForKind:kind orientationIsLandscape:v10];
  return fmax(v12, v13);
}

- (double)_paddingBottomScaleForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot
{
  layoutOrientation = [snapshot layoutOrientation];
  result = 0.0;
  if (kind > 31)
  {
    if (kind > 255)
    {
      if (kind != 256 && kind != 512 && kind != 1024)
      {
        return result;
      }
    }

    else if (kind != 32)
    {
      if (kind == 64)
      {
        return 1.0;
      }

      if (kind != 128)
      {
        return result;
      }
    }

    return dbl_1A5380EC0[layoutOrientation == 2];
  }

  if (kind <= 3)
  {
    if (kind)
    {
      if (kind == 1)
      {
        v7 = +[PXStorySettings sharedInstance];
        [v7 titleRegularPaddingBottomScale];
        v9 = v8;

        return v9;
      }

      else if (kind == 2)
      {
        return 0.14;
      }

      return result;
    }

    return 1.0;
  }

  switch(kind)
  {
    case 4uLL:
      return dbl_1A5380EC0[layoutOrientation == 2];
    case 8uLL:
      return 0.2;
    case 0x10uLL:
      return 0.26;
  }

  return result;
}

- (double)_paddingTopScaleForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  layoutOrientation = [snapshotCopy layoutOrientation];
  v8 = 0.0;
  if (kind > 31)
  {
    if (kind > 255)
    {
      if (kind != 256 && kind != 512 && kind != 1024)
      {
        goto LABEL_26;
      }
    }

    else if (kind != 32)
    {
      if (kind == 64)
      {
        goto LABEL_21;
      }

      if (kind != 128)
      {
        goto LABEL_26;
      }
    }

    v11 = layoutOrientation == 2;
    v12 = dbl_1A5380EC0;
LABEL_20:
    v8 = v12[v11];
    goto LABEL_26;
  }

  if (kind > 3)
  {
    if (kind == 4)
    {
      v13 = layoutOrientation == 2;
      v14 = [(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy];
      v10 = dbl_1A5380ED0[v13];
      v9 = !v14;
    }

    else
    {
      if (kind != 8 && kind != 16)
      {
        goto LABEL_26;
      }

      v9 = ![(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy];
      v10 = 0.2;
    }

    if (v9)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0.14;
    }

    goto LABEL_26;
  }

  switch(kind)
  {
    case 0uLL:
LABEL_21:
      v8 = 1.0;
      break;
    case 1uLL:
      v11 = layoutOrientation == 2;
      v12 = &unk_1A5380EE0;
      goto LABEL_20;
    case 2uLL:
      v8 = 0.14;
      break;
  }

LABEL_26:
  v15 = +[PXStorySettings sharedInstance];
  [v15 titlePaddingTopScale];
  v17 = v16;

  if (v17 != 0.0)
  {
    v19 = +[PXStorySettings sharedInstance];
    [v19 titlePaddingTopScale];
    v8 = v20;
  }

  return v8;
}

- (double)_paddingLeftOrRightAlignmentLeadingScaleForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape
{
  result = 0.0;
  if (kind > 31)
  {
    if (kind > 255)
    {
      if (kind != 256 && kind != 512 && kind != 1024)
      {
        return result;
      }
    }

    else if (kind != 32)
    {
      if (kind == 64)
      {
        return 1.0;
      }

      if (kind != 128)
      {
        return result;
      }
    }

    v5 = !landscape;
    result = 0.1;
    v6 = 0.08;
LABEL_20:
    if (!v5)
    {
      return v6;
    }

    return result;
  }

  if (kind > 3)
  {
    if (kind != 4)
    {
      if (kind == 8 || kind == 16)
      {
        return 0.07;
      }

      return result;
    }

    v5 = !landscape;
    result = 0.1;
    v6 = 0.07;
    goto LABEL_20;
  }

  switch(kind)
  {
    case 0uLL:
      return 1.0;
    case 1uLL:
      return 0.1;
    case 2uLL:
      v5 = !landscape;
      result = 0.14;
      v6 = 0.1;
      goto LABEL_20;
  }

  return result;
}

- (double)_paddingLeadingMinimumForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape
{
  result = 0.0;
  if (kind > 127)
  {
    if (kind > 511)
    {
      if (kind != 512 && kind != 1024)
      {
        return result;
      }
    }

    else if (kind != 128 && kind != 256)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (kind <= 3)
  {
    if (kind == 1)
    {
      return 45.0;
    }

    if (kind == 2)
    {
      return 50.0;
    }

    return result;
  }

  if (kind != 4)
  {
    if (kind != 32)
    {
      return result;
    }

LABEL_16:
    v5 = !landscape;
    result = 35.0;
    v6 = 25.0;
    goto LABEL_17;
  }

  v5 = !landscape;
  result = 35.0;
  v6 = 0.0;
LABEL_17:
  if (!v5)
  {
    return v6;
  }

  return result;
}

- (double)_sizeWidthScaleForKind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  layoutOrientation = [snapshotCopy layoutOrientation];
  v8 = +[PXStorySettings sharedInstance];
  useReferenceWidthBasedTitleLayout = [v8 useReferenceWidthBasedTitleLayout];

  if (!useReferenceWidthBasedTitleLayout)
  {
    if (kind == 2)
    {
      v10 = 0.4;
      goto LABEL_41;
    }

    if ((kind == 128 || kind == 32) && layoutOrientation == 2)
    {
      v12 = 0.76;
    }

    else
    {
      v12 = 0.7;
    }

    goto LABEL_37;
  }

  v10 = dbl_1A5380EF0[layoutOrientation == 2];
  v11 = dbl_1A5380F00[layoutOrientation == 2];
  v12 = 0.0;
  if (kind > 31)
  {
    if (kind <= 255)
    {
      if (kind != 32)
      {
        if (kind != 64)
        {
          if (kind == 128)
          {
            if (layoutOrientation == 2)
            {
              v12 = 0.5;
            }

            else
            {
              v12 = 0.7;
            }

            goto LABEL_56;
          }

          goto LABEL_37;
        }

        goto LABEL_34;
      }

      goto LABEL_30;
    }

    switch(kind)
    {
      case 0x100uLL:
        v12 = 0.6;
        goto LABEL_56;
      case 0x200uLL:
        if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy])
        {
          v12 = v11;
        }

        else
        {
          v12 = v10;
        }

        goto LABEL_56;
      case 0x400uLL:
        v12 = 0.4;
        goto LABEL_56;
    }

LABEL_37:
    if (kind > 127)
    {
      if (kind > 511)
      {
        if (kind != 512 && kind != 1024)
        {
          goto LABEL_62;
        }
      }

      else if (kind != 128 && kind != 256)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (kind > 0x20)
      {
        goto LABEL_62;
      }

      if (((1 << kind) & 0x100010110) == 0)
      {
        v10 = v12;
        if (((1 << kind) & 6) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_41;
      }
    }

LABEL_56:
    v22 = +[PXStorySettings sharedInstance];
    v23 = v22;
    if (layoutOrientation == 2)
    {
      [v22 titleFeedLandscapeWidthScale];
      v25 = v24;

      if (v25 != 0.0)
      {
        v18 = +[PXStorySettings sharedInstance];
        [v18 titleFeedLandscapeWidthScale];
        goto LABEL_61;
      }
    }

    else
    {
      [v22 titleFeedPortraitWidthScale];
      v27 = v26;

      if (v27 != 0.0)
      {
        v18 = +[PXStorySettings sharedInstance];
        [v18 titleFeedPortraitWidthScale];
        goto LABEL_61;
      }
    }

    goto LABEL_62;
  }

  if (kind > 3)
  {
    if (kind != 4)
    {
      if (kind == 8 || kind == 16)
      {
        v12 = 0.4;
      }

      goto LABEL_37;
    }

LABEL_30:
    if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy])
    {
      if (layoutOrientation == 2)
      {
        v12 = 0.5;
      }

      else
      {
        v12 = 0.65;
      }
    }

    else
    {
      v12 = dbl_1A5380F10[layoutOrientation == 2];
    }

    goto LABEL_37;
  }

  if (!kind)
  {
LABEL_34:
    v12 = 0.8;
    goto LABEL_37;
  }

  if (kind != 1)
  {
    v10 = dbl_1A5380F00[layoutOrientation == 2];
    if (kind != 2)
    {
      goto LABEL_37;
    }
  }

LABEL_41:
  v13 = +[PXStorySettings sharedInstance];
  v14 = v13;
  if (layoutOrientation == 2)
  {
    [v13 titleFullScreenLandscapeWidthScale];
    v16 = v15;

    v17 = v16 == 0.0;
    v12 = v10;
    if (!v17)
    {
      v18 = +[PXStorySettings sharedInstance];
      [v18 titleFullScreenLandscapeWidthScale];
LABEL_61:
      v12 = v19;
    }
  }

  else
  {
    [v13 titleFullScreenPortraitWidthScale];
    v21 = v20;

    v17 = v21 == 0.0;
    v12 = v10;
    if (!v17)
    {
      v18 = +[PXStorySettings sharedInstance];
      [v18 titleFullScreenPortraitWidthScale];
      goto LABEL_61;
    }
  }

LABEL_62:

  return v12;
}

- (double)_sizeWidthMaximumForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape
{
  if (kind == 2)
  {
    v5 = 600.0;
  }

  else if (kind == 128 || kind == 32)
  {
    v4 = 360.0;
    if (landscape)
    {
      v4 = 280.0;
    }

    if (kind == 128)
    {
      v5 = 680.0;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 360.0;
  }

  v6 = +[PXStorySettings sharedInstance];
  [v6 titleWidthMax];
  v8 = v7;

  if (v8 != 0.0)
  {
    v12 = +[PXStorySettings sharedInstance];
    [v12 titleWidthMax];
    v5 = v13;
  }

  v9 = +[PXStorySettings sharedInstance];
  useReferenceWidthBasedTitleLayout = [v9 useReferenceWidthBasedTitleLayout];

  result = 1.79769313e308;
  if (!useReferenceWidthBasedTitleLayout)
  {
    return v5;
  }

  return result;
}

- (double)_sizeWidthMinimumForKind:(unint64_t)kind orientationIsLandscape:(BOOL)landscape
{
  if (kind > 63)
  {
    if (kind == 64)
    {
      *&v5 = 100.0;
      goto LABEL_12;
    }

    if (kind != 128)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if (kind == 2)
    {
      *&v5 = 200.0;
      goto LABEL_12;
    }

    if (kind != 32)
    {
LABEL_4:
      *&v5 = 240.0;
LABEL_12:
      v6 = *&v5;
      goto LABEL_13;
    }
  }

  v4 = 170.0;
  if (landscape)
  {
    v6 = 170.0;
  }

  else
  {
    v6 = 240.0;
  }

LABEL_13:
  v7 = +[PXStorySettings sharedInstance];
  [v7 titleWidthMin];
  v9 = v8;

  if (v9 != 0.0)
  {
    v13 = +[PXStorySettings sharedInstance];
    [v13 titleWidthMin];
    v6 = v14;
  }

  v10 = +[PXStorySettings sharedInstance];
  useReferenceWidthBasedTitleLayout = [v10 useReferenceWidthBasedTitleLayout];

  result = 0.0;
  if (!useReferenceWidthBasedTitleLayout)
  {
    return v6;
  }

  return result;
}

- (CGRect)attributedStringFrameInRect:(CGRect)rect titleCategory:(id)category displayAsset:(id)asset currentAssetCropRect:(CGRect)cropRect kind:(unint64_t)kind relativeTo:(id)to extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)self0
{
  height = cropRect.size.height;
  width = cropRect.size.width;
  x = cropRect.origin.x;
  y = cropRect.origin.y;
  v14 = rect.size.height;
  v15 = rect.size.width;
  v16 = rect.origin.y;
  v17 = rect.origin.x;
  categoryCopy = category;
  assetCopy = asset;
  toCopy = to;
  snapshotCopy = snapshot;
  v23 = MEMORY[0x1E695F060];
  v24 = MEMORY[0x1E695EFF8];
  if (kind == 1)
  {
    if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy])
    {
      kind = 2;
    }

    else
    {
      kind = 1;
    }
  }

  v26 = *v23;
  v25 = v23[1];
  v28 = *v24;
  v27 = v24[1];
  string = [(PXStoryTextResourceInfo *)self string];
  v148 = v16;
  v149 = v15;
  v30 = v16;
  v31 = v14;
  [(PXStoryTextResourceInfo *)self _availableSizeForRect:snapshotCopy extendedTraitCollectionSnapshot:kind kind:v17 fixedBottomPadding:v30, v15, v14, padding];
  v33 = v32;
  v35 = v34;
  layoutScheme = [(PXStoryTextResourceInfo *)self layoutScheme];
  v154 = snapshotCopy;
  if (layoutScheme == 1)
  {
    type = [(PXStoryTextResourceInfo *)self type];
    if (type == 1)
    {
      v28 = *MEMORY[0x1E695F058];
      v27 = *(MEMORY[0x1E695F058] + 8);
      v26 = *(MEMORY[0x1E695F058] + 16);
      v25 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_27;
    }

    v153 = string;
    if (!type)
    {
      associatedSubtitleString = [(PXStoryTextResourceInfo *)self associatedSubtitleString];
      if ([associatedSubtitleString length])
      {
        v134 = [string stringByAppendingFormat:@"\n%@", associatedSubtitleString];
        v135 = string;
        v136 = v134;

        v153 = v136;
      }

      v59 = -[PXStoryTextResourceInfo attributedStringBoundingSizeForTitle:stylePairing:availableSize:containerRect:kind:extendedTraitCollectionSnapshot:fixedBottomPadding:](self, "attributedStringBoundingSizeForTitle:stylePairing:availableSize:containerRect:kind:extendedTraitCollectionSnapshot:fixedBottomPadding:", v153, [objc_opt_class() stylePairingFromTitleCategory:categoryCopy string:v153 kind:kind layoutScheme:{-[PXStoryTextResourceInfo layoutScheme](self, "layoutScheme")}], kind, snapshotCopy, v33, v35, v17, v148, v149, v31, padding);
      first = [v59 first];
      second = [v59 second];
      [second CGSizeValue];
      v26 = v62;
      v25 = v63;

      drawingContext = [(PXStoryTextResourceInfo *)self drawingContext];
      if ([first length])
      {
        v64 = [first attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
      }

      else
      {
        v64 = 0;
      }

      v158.origin.x = v17;
      v158.origin.y = v148;
      v158.size.width = v149;
      v158.size.height = v31;
      v28 = CGRectGetMidX(v158) + v26 * -0.5;
      v159.origin.x = v17;
      v159.origin.y = v148;
      v159.size.width = v149;
      v159.size.height = v31;
      v99 = CGRectGetMaxY(v159) - padding;
      [v64 descender];
      v27 = v99 - v100 - v25 + 20.0;

      textAlignment = 1;
      v66 = 2;
      goto LABEL_22;
    }
  }

  else
  {
    v153 = string;
    if (!layoutScheme)
    {
      type2 = [(PXStoryTextResourceInfo *)self type];
      if (type2 != 1)
      {
        if (!type2)
        {
          v38 = [objc_opt_class() stylePairingFromTitleCategory:categoryCopy string:string kind:kind layoutScheme:{-[PXStoryTextResourceInfo layoutScheme](self, "layoutScheme")}];
          padding = [(PXStoryTextResourceInfo *)self attributedStringBoundingSizeForTitle:string stylePairing:v38 availableSize:kind containerRect:snapshotCopy kind:v33 extendedTraitCollectionSnapshot:v35 fixedBottomPadding:v17, v148, v149, v31, padding];
          second2 = [padding second];
          [second2 CGSizeValue];
          v42 = v41;
          v44 = v43;

          v140 = padding;
          first2 = [padding first];
          drawingContext = [(PXStoryTextResourceInfo *)self drawingContext];
          v46 = [(PXStoryTextResourceInfo *)self _isVerticalText:first2];
          v139 = first2;
          v47 = [(PXStoryTextResourceInfo *)self _isKashidaText:first2];
          v48 = 2;
          if (!v47)
          {
            v48 = 0;
          }

          if (v46)
          {
            v48 = 1;
          }

          v138 = v48;
          v142 = v42;
          v25 = v44;
          [(PXStoryTextResourceInfo *)self _occlusionSizeForSize:kind kind:v38 size:snapshotCopy containerRect:v46 stylePairing:v47 extendedTraitCollectionSnapshot:v42 fixedBottomPadding:v44 isVerticalText:v33 isKashida:v35, v17, v148, v149, v31, *&padding];
          v50 = v49;
          v52 = v51;
          if (v46)
          {
            associatedSubtitleString2 = [(PXStoryTextResourceInfo *)self associatedSubtitleString];
            [(PXStoryTextResourceInfo *)self assetCollectionUUID];
            v55 = v54 = toCopy;
            v56 = PXStoryTitleInternationalStyleForStringAndAssetCollectionUUID(associatedSubtitleString2, v55) == 1;

            toCopy = v54;
            snapshotCopy = v154;
          }

          else
          {
            v56 = 0;
          }

          v91 = [(PXStoryTextResourceInfo *)self _possibleTitlePositionsForRect:kind boudingSize:snapshotCopy occlusionSize:v46 kind:v56 extendedTraitCollectionSnapshot:v47 fixedBottomPadding:v17 isTitleVertical:v148 isSubtitleVertical:v149 isKashida:v31, v42, v25, v50, v52, *&padding];
          v92 = [v91 objectAtIndexedSubscript:5];
          [v92 pointValue];
          v28 = v93;
          v27 = v94;

          if (kind != 64)
          {
            if ([(PXStoryTextResourceInfo *)self hasForcedPositioning])
            {
              v95 = [(PXStoryTextResourceInfo *)self forcedPositionIndex]== 2;
              forcedPositionIndex = [(PXStoryTextResourceInfo *)self forcedPositionIndex];
              if (v47 && v95)
              {
                v97 = 0;
              }

              else
              {
                v97 = forcedPositionIndex;
              }

              if (v46 && v95)
              {
                v98 = 5;
              }

              else
              {
                v98 = v97;
              }
            }

            else
            {
              padding2 = [(PXStoryTextResourceInfo *)self _fullScreenTitlePositionWithTitleCategory:categoryCopy displayAsset:assetCopy currentAssetCropRect:toCopy relativeTo:snapshotCopy extendedTraitCollectionSnapshot:v138 fixedBottomPadding:x desiredInternationalStyle:y, width, height, padding];
              if (padding2 == 0x7FFFFFFFFFFFFFFFLL)
              {
                -[PXStoryTextResourceInfo bestPositionInFrame:occlusionSize:possiblePositions:displayAsset:currentAssetCropRect:layoutOrientation:desiredInternationalStyle:](self, "bestPositionInFrame:occlusionSize:possiblePositions:displayAsset:currentAssetCropRect:layoutOrientation:desiredInternationalStyle:", v91, assetCopy, [snapshotCopy layoutOrientation], v138, v17, v148, v149, v31, v50, v52, *&x, *&y, *&width, *&height);
                v28 = v102;
                v27 = v103;
                goto LABEL_61;
              }

              v98 = padding2;
            }

            v117 = [v91 objectAtIndexedSubscript:v98];
            [v117 pointValue];
            v28 = v118;
            v27 = v119;
          }

LABEL_61:
          first = v139;
          v26 = v142;
          if (v46)
          {
            v120 = [v91 objectAtIndexedSubscript:4];
            [v120 pointValue];
            v122 = v121;

            if (v27 != v122)
            {
              v123 = v91;
              v124 = [v91 objectAtIndexedSubscript:5];
              [v124 pointValue];
              v126 = v27 == v125;
LABEL_64:

              textAlignment = 2 * v126;
LABEL_70:
              v132 = [MEMORY[0x1E696B098] valueWithCGPoint:{v28, v27}];
              effectivePositionIndex = [v123 indexOfObject:v132];

              goto LABEL_23;
            }
          }

          else
          {
            if (v47)
            {
              v123 = v91;
              textAlignment = 3;
              goto LABEL_70;
            }

            v127 = +[PXStorySettings sharedInstance];
            titleUseCenterAlignment = [v127 titleUseCenterAlignment];

            if ((titleUseCenterAlignment & 1) == 0)
            {
              v129 = [v91 objectAtIndexedSubscript:0];
              [v129 pointValue];
              v131 = v130;

              if (v28 != v131)
              {
                v123 = v91;
                v124 = [v91 objectAtIndexedSubscript:3];
                [v124 pointValue];
                v126 = v28 != v133;
                goto LABEL_64;
              }
            }
          }

          v123 = v91;
          textAlignment = 1;
          goto LABEL_70;
        }

        goto LABEL_21;
      }

      if (toCopy)
      {
        [toCopy attributedStringFrameInRect:categoryCopy titleCategory:assetCopy displayAsset:kind currentAssetCropRect:0 kind:snapshotCopy relativeTo:v17 extendedTraitCollectionSnapshot:v148 fixedBottomPadding:{v149, v31, x, y, width, height, *&padding}];
      }

      attributedString = [toCopy attributedString];
      v84 = [toCopy _isVerticalText:attributedString];

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __170__PXStoryTextResourceInfo_attributedStringFrameInRect_titleCategory_displayAsset_currentAssetCropRect_kind_relativeTo_extendedTraitCollectionSnapshot_fixedBottomPadding___block_invoke;
      aBlock[3] = &unk_1E7736430;
      v85 = toCopy;
      v157 = v85;
      v86 = _Block_copy(aBlock);
      v141 = v84;
      v143 = v86;
      if (v84 && !(*(v86 + 2))())
      {
        v89 = 1;
        v90 = 1;
      }

      else
      {
        attributedString2 = [v85 attributedString];
        v88 = [v85 _isKashidaText:attributedString2];

        v89 = v88 ^ 1;
        if (v88)
        {
          v90 = 2;
        }

        else
        {
          v90 = 0;
        }
      }

      padding3 = [(PXStoryTextResourceInfo *)self attributedStringBoundingSizeForSubtitle:v153 size:kind containerRect:v85 kind:snapshotCopy relativeTo:v90 extendedTraitCollectionSnapshot:v33 fixedBottomPadding:v35 desiredInternationalStyle:v17, v148, v149, v31, padding];
      second3 = [padding3 second];
      [second3 CGSizeValue];
      v26 = v106;
      v25 = v107;

      first3 = [padding3 first];
      drawingContext = [(PXStoryTextResourceInfo *)self drawingContext];
      first = first3;
      v109 = [(PXStoryTextResourceInfo *)self _isVerticalText:first3];
      if (v141)
      {
        v110 = x;
        v111 = y;
        if ((v89 & v109 & 1) == 0)
        {
LABEL_52:
          if ([first3 length])
          {
            v112 = [first3 attribute:*MEMORY[0x1E69DB648] atIndex:0 effectiveRange:0];
          }

          else
          {
            v112 = 0;
          }

          v160.origin.x = v17;
          v160.origin.y = v148;
          v160.size.width = v149;
          v160.size.height = v31;
          v28 = CGRectGetMidX(v160) + v26 * -0.5;
          v161.origin.x = v17;
          v161.origin.y = v148;
          v161.size.width = v149;
          v161.size.height = v31;
          v115 = CGRectGetMaxY(v161) - padding;
          [v112 descender];
          v27 = v115 - v116 - v25 + -5.0;

          effectivePositionIndex = 2;
          goto LABEL_58;
        }
      }

      else
      {
        v110 = x;
        v111 = y;
        if ((v89 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      LOBYTE(v137) = v109;
      [(PXStoryTextResourceInfo *)self _subtitlePositionInFrame:categoryCopy titleCategory:assetCopy displayAsset:kind currentAssetCropRect:v85 kind:v154 relativeTo:v17 extendedTraitCollectionSnapshot:v148 fixedBottomPadding:v149 isTitleVertical:v31 isSubtitleVertical:v110, v111, width, height, *&padding, v137];
      v28 = v113;
      v27 = v114;
      effectivePositionIndex = [v85 effectivePositionIndex];
LABEL_58:
      textAlignment = [v85 textAlignment];

      goto LABEL_23;
    }
  }

LABEL_21:
  textAlignment = 0;
  drawingContext = 0;
  first = 0;
  v66 = 5;
LABEL_22:
  effectivePositionIndex = v66;
LABEL_23:
  v152 = toCopy;
  v150 = assetCopy;
  v67 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:first];
  if ([first length])
  {
    v68 = [first attributesAtIndex:0 effectiveRange:0];
  }

  else
  {
    v68 = MEMORY[0x1E695E0F8];
  }

  v69 = first;
  v70 = *MEMORY[0x1E69DB688];
  v71 = [v68 valueForKey:*MEMORY[0x1E69DB688]];
  v72 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v68];
  v73 = textAlignment;
  [v71 setAlignment:textAlignment];
  [v72 setValue:v71 forKey:v70];
  v74 = [v72 copy];

  [v67 setAttributes:v74 range:{0, objc_msgSend(v69, "length")}];
  os_unfair_lock_lock(&self->_lock);
  v75 = [v67 copy];
  lock_attributedString = self->_lock_attributedString;
  self->_lock_attributedString = v75;

  self->_lock_boundingSize.width = v26;
  self->_lock_boundingSize.height = v25;
  self->_lock_origin.x = v28;
  self->_lock_origin.y = v27;
  lock_drawingContext = self->_lock_drawingContext;
  self->_lock_drawingContext = drawingContext;
  self->_lock_textAlignment = v73;
  v78 = drawingContext;

  self->_lock_effectivePositionIndex = effectivePositionIndex;
  os_unfair_lock_unlock(&self->_lock);

  assetCopy = v150;
  toCopy = v152;
  string = v153;
  snapshotCopy = v154;
LABEL_27:

  v79 = v28;
  v80 = v27;
  v81 = v26;
  v82 = v25;
  result.size.height = v82;
  result.size.width = v81;
  result.origin.y = v80;
  result.origin.x = v79;
  return result;
}

- (CGSize)_occlusionSizeForSize:(CGSize)size kind:(unint64_t)kind size:(CGSize)a5 containerRect:(CGRect)rect stylePairing:(int64_t)pairing extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding isVerticalText:(BOOL)self0 isKashida:(BOOL)self1
{
  textCopy = text;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16 = a5.height;
  v17 = a5.width;
  v19 = size.height;
  v20 = size.width;
  snapshotCopy = snapshot;
  if (textCopy)
  {
    v23 = v19;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 + -40.0;
  drawingContext = [(PXStoryTextResourceInfo *)self drawingContext];
  [drawingContext baselineOffset];
  v27 = v26;

  if (!kashida)
  {
    [(PXStoryTextResourceInfo *)self _subtitleLineSpacingForKind:kind size:snapshotCopy extendedTraitCollectionSnapshot:textCopy fixedBottomPadding:v17 isVerticalText:v16, padding];
    v39 = v28;
    associatedSubtitleString = [(PXStoryTextResourceInfo *)self associatedSubtitleString];
    v30 = associatedSubtitleString;
    if (associatedSubtitleString)
    {
      v31 = associatedSubtitleString;
    }

    else
    {
      v31 = &stru_1F1741150;
    }

    padding = [(PXStoryTextResourceInfo *)self attributedStringBoundingSizeForSubtitle:v31 size:kind containerRect:self kind:snapshotCopy relativeTo:0 extendedTraitCollectionSnapshot:v17 fixedBottomPadding:v16 desiredInternationalStyle:x, y, width, height, padding];
    second = [padding second];
    [second CGSizeValue];
    v35 = v34;

    if (v24 < v35 + -40.0)
    {
      v24 = v35 + -40.0;
    }

    v27 = v27 + v39;
  }

  if (textCopy)
  {
    v36 = v24;
  }

  else
  {
    v36 = v27;
  }

  if (!textCopy)
  {
    v27 = v24;
  }

  v37 = v27;
  v38 = v36;
  result.height = v38;
  result.width = v37;
  return result;
}

- (double)_subtitleLineSpacingForKind:(unint64_t)kind size:(CGSize)size extendedTraitCollectionSnapshot:(id)snapshot fixedBottomPadding:(double)padding isVerticalText:(BOOL)text
{
  textCopy = text;
  height = size.height;
  width = size.width;
  snapshotCopy = snapshot;
  if (textCopy)
  {
    v14 = 25.0;
  }

  else
  {
    v14 = 30.0;
  }

  v15 = +[PXStorySettings sharedInstance];
  useReferenceWidthBasedTitleLayout = [v15 useReferenceWidthBasedTitleLayout];

  if (useReferenceWidthBasedTitleLayout || kind - 1 <= 1)
  {
    [(PXStoryTextResourceInfo *)self _titleScalingFactorForKind:kind size:snapshotCopy extendedTraitCollectionSnapshot:width fixedBottomPadding:height, padding];
    v18 = v14 * v17;
  }

  else
  {
    if ([(PXStoryTextResourceInfo *)self _isUserInterfaceIdiomPadOrMacOrTV:snapshotCopy])
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    [(PXStoryTextResourceInfo *)self _fullScreenAvailableSizeForExtendedTraitCollectionSnapshot:snapshotCopy fixedBottomPadding:padding];
    v21 = v20;
    [PXStoryTextResourceInfo _titleScalingFactorForKind:"_titleScalingFactorForKind:size:extendedTraitCollectionSnapshot:fixedBottomPadding:" size:v19 extendedTraitCollectionSnapshot:snapshotCopy fixedBottomPadding:?];
    v18 = width * (v14 * v22 / v21);
  }

  if (kind == 64)
  {
    v23 = 18.0;
  }

  else
  {
    v23 = v18;
  }

  return v23;
}

- (int64_t)effectivePositionIndex
{
  os_unfair_lock_lock(&self->_lock);
  lock_effectivePositionIndex = self->_lock_effectivePositionIndex;
  os_unfair_lock_unlock(&self->_lock);
  return lock_effectivePositionIndex;
}

- (int64_t)textAlignment
{
  os_unfair_lock_lock(&self->_lock);
  lock_textAlignment = self->_lock_textAlignment;
  os_unfair_lock_unlock(&self->_lock);
  return lock_textAlignment;
}

- (NSStringDrawingContext)drawingContext
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_drawingContext;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (CGPoint)origin
{
  os_unfair_lock_lock(&self->_lock);
  x = self->_lock_origin.x;
  y = self->_lock_origin.y;
  os_unfair_lock_unlock(&self->_lock);
  v5 = x;
  v6 = y;
  result.y = v6;
  result.x = v5;
  return result;
}

- (CGSize)boundingSize
{
  os_unfair_lock_lock(&self->_lock);
  width = self->_lock_boundingSize.width;
  height = self->_lock_boundingSize.height;
  os_unfair_lock_unlock(&self->_lock);
  v5 = width;
  v6 = height;
  result.height = v6;
  result.width = v5;
  return result;
}

- (NSAttributedString)attributedString
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSAttributedString *)self->_lock_attributedString copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    string = [(PXStoryTextResourceInfo *)self string];
    string2 = [v5 string];
    v8 = string2;
    if (string == string2)
    {
    }

    else
    {
      v9 = [string isEqual:string2];

      if ((v9 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    type = [(PXStoryTextResourceInfo *)self type];
    if (type == [v5 type])
    {
      associatedSubtitleString = [(PXStoryTextResourceInfo *)self associatedSubtitleString];
      associatedSubtitleString2 = [v5 associatedSubtitleString];
      if (associatedSubtitleString == associatedSubtitleString2)
      {
        v10 = 1;
      }

      else
      {
        v10 = [associatedSubtitleString isEqualToString:associatedSubtitleString2];
      }

      goto LABEL_13;
    }

LABEL_10:
    v10 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (void)_checkForForcedPositioning:(id *)positioning
{
  if ([*positioning hasSuffix:@"*"])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:9];
    [v7 setObject:@"*M1*" atIndexedSubscript:0];
    [v7 setObject:@"*M2*" atIndexedSubscript:1];
    [v7 setObject:@"*M3*" atIndexedSubscript:2];
    [v7 setObject:@"*L1*" atIndexedSubscript:3];
    [v7 setObject:@"*L2*" atIndexedSubscript:4];
    [v7 setObject:@"*L3*" atIndexedSubscript:5];
    [v7 setObject:@"*R1*" atIndexedSubscript:6];
    [v7 setObject:@"*R2*" atIndexedSubscript:7];
    [v7 setObject:@"*R3*" atIndexedSubscript:8];
    if ([v7 count])
    {
      v5 = 0;
      while (1)
      {
        v6 = [v7 objectAtIndexedSubscript:v5];
        if ([*positioning hasSuffix:v6])
        {
          break;
        }

        if (++v5 >= [v7 count])
        {
          goto LABEL_9;
        }
      }

      *positioning = [*positioning substringToIndex:{objc_msgSend(*positioning, "length") - objc_msgSend(v6, "length")}];
      [(PXStoryTextResourceInfo *)self setHasForcedPositioning:1];
      [(PXStoryTextResourceInfo *)self setForcedPositionIndex:v5];
    }

LABEL_9:
  }
}

- (PXStoryTextResourceInfo)initWithString:(id)string associatedSubtitleString:(id)subtitleString type:(int64_t)type layoutScheme:(int64_t)scheme assetCollectionUUID:(id)d
{
  stringCopy = string;
  subtitleStringCopy = subtitleString;
  dCopy = d;
  v22.receiver = self;
  v22.super_class = PXStoryTextResourceInfo;
  v15 = [(PXStoryTextResourceInfo *)&v22 init];
  if (v15)
  {
    v16 = [stringCopy stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F1741150];

    if (PFOSVariantHasInternalUI())
    {
      v21 = v16;
      [(PXStoryTextResourceInfo *)v15 _checkForForcedPositioning:&v21];
      v17 = v21;

      v16 = v17;
    }

    objc_storeStrong(&v15->_string, v16);
    v15->_type = type;
    v15->_layoutScheme = scheme;
    v18 = [subtitleStringCopy copy];
    associatedSubtitleString = v15->_associatedSubtitleString;
    v15->_associatedSubtitleString = v18;

    objc_storeStrong(&v15->_assetCollectionUUID, d);
    v15->_lock._os_unfair_lock_opaque = 0;
    stringCopy = v16;
  }

  return v15;
}

+ (BOOL)titleShouldBeUppercasedForStylePairing:(int64_t)pairing kind:(unint64_t)kind
{
  v6 = MEMORY[0x1A590D320](self, a2);
  v8 = (pairing & 0xFFFFFFFFFFFFFFFDLL) == 1 || kind == 64;
  return (v6 & 1) == 0 && v8;
}

+ (id)_rangesAndStylesForTitle:(id)title
{
  v3 = MEMORY[0x1E695DF70];
  titleCopy = title;
  v5 = objc_alloc_init(v3);
  v6 = [off_1E7721930 alloc];
  v7 = MEMORY[0x1E696B098];
  v8 = [titleCopy length];

  v9 = [v7 valueWithRange:{0, v8}];
  v10 = [v6 initWithFirst:v9 second:&unk_1F190BBD8];
  [v5 addObject:v10];

  return v5;
}

+ (void)_increaseMaximumLineHeightToAvoidOverlapForLines:(id)lines attributes:(id)attributes attributedString:(id *)string
{
  stringCopy = string;
  v59 = *MEMORY[0x1E69E9840];
  linesCopy = lines;
  attributesCopy = attributes;
  v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(linesCopy, "count")}];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = linesCopy;
  v9 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v54;
    v12 = *MEMORY[0x1E69DB688];
    MinY = 1.79769313e308;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        v48 = MinY;
        if (*v54 != v11)
        {
          objc_enumerationMutation(obj);
        }

        line = [*(*(&v53 + 1) + 8 * i) line];
        v16 = [attributesCopy valueForKey:v12];
        BoundsWithOptions = CTLineGetBoundsWithOptions(line, 0);
        x = BoundsWithOptions.origin.x;
        y = BoundsWithOptions.origin.y;
        width = BoundsWithOptions.size.width;
        height = BoundsWithOptions.size.height;
        v61 = CTLineGetBoundsWithOptions(line, 8uLL);
        v21 = v61.size.width;
        v22 = v61.size.height;
        v46 = v61.origin.y;
        v47 = v61.origin.x;
        MaxY = CGRectGetMaxY(v61);
        [v16 maximumLineHeight];
        v25 = v24;
        if (v24 <= 0.0)
        {
          v62.origin.x = x;
          v62.origin.y = y;
          v62.size.width = width;
          v62.size.height = height;
          v24 = CGRectGetHeight(v62);
        }

        v26 = v48 - MaxY;
        v27 = v24 * 0.0500000007;
        v28 = roundf(v27);
        if (v48 - MaxY < v28)
        {
          if (v26 < 0.0)
          {
            v26 = -v26;
          }

          v29 = v26 + v28;
          if (v26 + v28 > v25)
          {
            v30 = [attributesCopy mutableCopy];
            [v16 setMinimumLineHeight:v29];
            [v16 setMaximumLineHeight:v29];
            [v30 setValue:v16 forKey:v12];
            v31 = [v30 copy];

            attributesCopy = v31;
          }
        }

        v63.origin.y = v46;
        v63.origin.x = v47;
        v63.size.width = v21;
        v63.size.height = v22;
        MinY = CGRectGetMinY(v63);
        v32 = MEMORY[0x1E696B098];
        location = CTLineGetStringRange(line).location;
        v34 = [v32 valueWithRange:{location, CTLineGetStringRange(line).length}];
        [v8 addObject:v34];
      }

      v10 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v10);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v35 = v8;
  v36 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
  v37 = stringCopy;
  if (v36)
  {
    v38 = v36;
    v39 = *v50;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(v35);
        }

        v41 = *v37;
        rangeValue = [*(*(&v49 + 1) + 8 * j) rangeValue];
        [v41 setAttributes:attributesCopy range:{rangeValue, v43}];
      }

      v38 = [v35 countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v38);
  }
}

+ (id)subtitleAttributesForSize:(CGSize)size string:(id)string scale:(double)scale kind:(unint64_t)kind extendedTraitCollectionSnapshot:(id)snapshot internationalStyle:(int64_t)style
{
  v34[3] = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E69DC888];
  stringCopy = string;
  whiteColor = [v12 whiteColor];
  v15 = [objc_opt_class() _allowedSubtitleCharacterSetWithKind:kind];
  v16 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:stringCopy];

  v17 = [v15 isSupersetOfSet:v16];
  v18 = kind != 64;
  v19 = v18 & v17;
  v20 = 14.0;
  if ((v18 & v17) == 0)
  {
    v20 = 0.0;
  }

  v21 = v20 * scale;
  v22 = [self _subtitleFontForKind:kind scale:v17 ^ 1u hasExtendedCharacterSet:style internationalStyle:scale];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v24 = [defaultParagraphStyle mutableCopy];

  [v24 setMaximumLineHeight:v21];
  [v24 setLineBreakMode:4];
  v25 = *MEMORY[0x1E69DB650];
  v33[0] = *MEMORY[0x1E69DB648];
  v33[1] = v25;
  v34[0] = v22;
  v34[1] = whiteColor;
  v33[2] = *MEMORY[0x1E69DB688];
  v34[2] = v24;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v27 = [v26 mutableCopy];

  if (style == 2)
  {
    [self _setKashidaToParagraphStyle:v24];
  }

  else
  {
    v28 = 2.0;
    if (style != 1)
    {
      v28 = 0.0;
    }

    if (v19)
    {
      v28 = 1.566;
    }

    v29 = v28 * scale;
    [v24 setAlignment:1];
    v30 = [MEMORY[0x1E696AD98] numberWithDouble:v29];
    [v27 setObject:v30 forKeyedSubscript:*MEMORY[0x1E69DB748]];
  }

  v31 = [v27 copy];

  return v31;
}

+ (id)_subtitleFontForKind:(unint64_t)kind scale:(double)scale hasExtendedCharacterSet:(BOOL)set internationalStyle:(int64_t)style
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = scale * 14.0;
  if (v6 < 10.0)
  {
    v6 = 10.0;
  }

  if (kind == 64)
  {
    v6 = 11.0;
  }

  if (style == 1)
  {
    v7 = v6 * 1.16;
  }

  else
  {
    v7 = v6;
  }

  if (set || MEMORY[0x1A590D320](self, a2))
  {
    v8 = [MEMORY[0x1E69DB878] systemFontOfSize:v7 weight:*MEMORY[0x1E69DB980]];
  }

  else
  {
    v18 = *MEMORY[0x1E69DB8F0];
    v16[0] = *MEMORY[0x1E69DB9C0];
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69659B8]];
    v17[0] = v9;
    v16[1] = *MEMORY[0x1E69DB990];
    v10 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
    v16[2] = *MEMORY[0x1E69DB940];
    v11 = *MEMORY[0x1E69DB8C8];
    v17[1] = v10;
    v17[2] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v19[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];

    v14 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:v13];
    v8 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:v7];
  }

  return v8;
}

+ (id)_allowedSubtitleCharacterSetWithKind:(unint64_t)kind
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [self _subtitleFontCacheKeyForKind:?];
  subtitleCachedCharacterSetByKind = [self subtitleCachedCharacterSetByKind];
  v7 = [subtitleCachedCharacterSetByKind objectForKey:v5];

  if (!v7)
  {
    v8 = [self _subtitleFontForKind:kind scale:0 hasExtendedCharacterSet:0 internationalStyle:1.0];
    fontDescriptor = [v8 fontDescriptor];
    fontAttributes = [fontDescriptor fontAttributes];
    v7 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB898]];

    if (!v7)
    {
      letterCharacterSet = CTFontCopyCharacterSet(v8);
      if (!letterCharacterSet)
      {
        v12 = PLStoryGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v15[0] = 67109120;
          v15[1] = kind;
          _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "font missing NSCharacterSet mapping for kind: %d", v15, 8u);
        }

        letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
      }

      v7 = letterCharacterSet;
    }

    subtitleCachedCharacterSetByKind2 = [self subtitleCachedCharacterSetByKind];
    [subtitleCachedCharacterSetByKind2 setObject:v7 forKey:v5];
  }

  return v7;
}

+ (id)_subtitleFontCacheKeyForKind:(unint64_t)kind
{
  if (kind == 64)
  {
    return &unk_1F190BBA8;
  }

  else
  {
    return &unk_1F190BBC0;
  }
}

+ (void)_setKashidaToParagraphStyle:(id)style
{
  styleCopy = style;
  [styleCopy setSpansAllLines:1];
  [styleCopy setAlignment:3];
}

+ (id)_titlePrimaryAttributesForStylePairing:(int64_t)pairing scale:(double)scale kind:(unint64_t)kind layoutScheme:(int64_t)scheme allowHyphenation:(BOOL)hyphenation internationalStyle:(int64_t)style
{
  hyphenationCopy = hyphenation;
  v30[3] = *MEMORY[0x1E69E9840];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  v16 = 0.0;
  if (MEMORY[0x1A590D320]())
  {
    goto LABEL_2;
  }

  if (kind == 64)
  {
    v17 = 20.0;
    if (pairing == 7)
    {
      v17 = 0.0;
    }

    goto LABEL_30;
  }

  v17 = 0.0;
  if (pairing > 3)
  {
    if (pairing > 5)
    {
      if (pairing != 6)
      {
        if (pairing != 7)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }

      v16 = -0.5;
    }

    else
    {
      if (pairing != 4)
      {
        v16 = 0.665;
LABEL_17:
        v18 = 0x4043000000000000;
LABEL_29:
        v17 = *&v18;
        goto LABEL_30;
      }

      v16 = -0.476;
    }

    v18 = 0x4044000000000000;
    goto LABEL_29;
  }

  if (pairing > 1)
  {
    if (pairing == 2)
    {
      v16 = 1.564;
LABEL_2:
      v17 = 35.0;
      goto LABEL_30;
    }

    v16 = 2.499;
    goto LABEL_17;
  }

  if (pairing)
  {
    if (pairing == 1)
    {
      v16 = 1.556;
      v17 = 45.0;
    }

    goto LABEL_30;
  }

LABEL_20:
  v17 = 55.0;
  if (style != 2)
  {
    v17 = 0.0;
  }

  if (style == 1)
  {
    v16 = 4.0;
  }

  else
  {
    v16 = 0.0;
  }

LABEL_30:
  if (scheme == 1)
  {
    scale = scale * 0.8;
  }

  v19 = scale * v17;
  v20 = [self _titleFontForStylePairing:pairing scale:kind kind:style internationalStyle:scale];
  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v22 = [defaultParagraphStyle mutableCopy];

  [v22 setMaximumLineHeight:v19];
  [v22 setLineBreakMode:4];
  [v22 setUsesDefaultHyphenation:hyphenationCopy];
  v23 = *MEMORY[0x1E69DB650];
  v29[0] = *MEMORY[0x1E69DB648];
  v29[1] = v23;
  v30[0] = v20;
  v30[1] = whiteColor;
  v29[2] = *MEMORY[0x1E69DB688];
  v30[2] = v22;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v25 = [v24 mutableCopy];

  if (style == 2)
  {
    [self _setKashidaToParagraphStyle:v22];
  }

  else
  {
    v26 = [MEMORY[0x1E696AD98] numberWithDouble:scale * v16];
    [v25 setObject:v26 forKeyedSubscript:*MEMORY[0x1E69DB748]];
  }

  v27 = [v25 copy];

  return v27;
}

+ (id)_titleFontForStylePairing:(int64_t)pairing scale:(double)scale kind:(unint64_t)kind internationalStyle:(int64_t)style
{
  if (kind == 64)
  {
    v8 = 20.0;
LABEL_3:
    v9 = scale * v8;
LABEL_27:
    v16 = [objc_opt_class() titleFontDescriptorForStylePairing:pairing kind:kind];
    v17 = [MEMORY[0x1E69DB878] fontWithDescriptor:v16 size:v9];

    goto LABEL_28;
  }

  if (pairing > 3)
  {
    if (pairing > 5)
    {
      if (pairing != 6)
      {
        if (pairing != 7)
        {
          goto LABEL_31;
        }

        v11 = 38.0;
        goto LABEL_17;
      }

      *&v13 = 36.0;
    }

    else
    {
      if (pairing == 4)
      {
        v12 = 37.0;
        goto LABEL_26;
      }

      *&v13 = 32.0;
    }

    v12 = *&v13;
    goto LABEL_26;
  }

  if (pairing > 1)
  {
    if (pairing == 2)
    {
      v12 = 29.0;
    }

    else
    {
      v12 = 28.0;
    }

    goto LABEL_26;
  }

  v11 = 28.0;
  if (pairing)
  {
    if (pairing == 1)
    {
      v12 = 45.0;
LABEL_26:
      v9 = v12 * scale;
      goto LABEL_27;
    }

LABEL_31:
    v8 = 0.0;
    goto LABEL_3;
  }

LABEL_17:
  v9 = v11 * scale;
  if (MEMORY[0x1A590D320](self, a2))
  {
    goto LABEL_27;
  }

  if (style == 2)
  {
    v15 = MEMORY[0x1E69DB978];
    goto LABEL_34;
  }

  if (style == 1)
  {
    v15 = MEMORY[0x1E69DB980];
    goto LABEL_34;
  }

  v14 = 0.0;
  if (!style)
  {
    v15 = MEMORY[0x1E69DB958];
LABEL_34:
    v14 = *v15;
  }

  v17 = [MEMORY[0x1E69DB878] systemFontOfSize:v9 weight:v14];
LABEL_28:

  return v17;
}

+ (id)titleFontDescriptorForStylePairing:(int64_t)pairing kind:(unint64_t)kind
{
  v66[1] = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1A590D320](self, a2))
  {
    v65 = *MEMORY[0x1E69DB8F0];
    v63[0] = *MEMORY[0x1E69DB990];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
    v63[1] = *MEMORY[0x1E69DB940];
    v64[0] = v6;
    v64[1] = *MEMORY[0x1E69DB8C8];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
    v66[0] = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = v66;
    v10 = &v65;
LABEL_3:
    v11 = [v8 dictionaryWithObjects:v9 forKeys:v10 count:1];
LABEL_14:

    goto LABEL_15;
  }

  if (kind == 64)
  {
    if (pairing == 7)
    {
      v61 = *MEMORY[0x1E69DB8F0];
      v59[0] = *MEMORY[0x1E69DB9C0];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965980]];
      v60[0] = v6;
      v59[1] = *MEMORY[0x1E69DB990];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
      v59[2] = *MEMORY[0x1E69DB940];
      v12 = *MEMORY[0x1E69DB8C8];
      v60[1] = v7;
      v60[2] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:3];
      v62 = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v62;
      v16 = &v61;
    }

    else
    {
      v57 = *MEMORY[0x1E69DB8F0];
      v55[0] = *MEMORY[0x1E69DB9C0];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965998]];
      v56[0] = v6;
      v55[1] = *MEMORY[0x1E69DB990];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
      v55[2] = *MEMORY[0x1E69DB940];
      v18 = *MEMORY[0x1E69DB8C8];
      v56[1] = v7;
      v56[2] = v18;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
      v58 = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v58;
      v16 = &v57;
    }

    goto LABEL_13;
  }

  v11 = 0;
  if (pairing <= 3)
  {
    if (pairing > 1)
    {
      if (pairing != 2)
      {
        v45 = *MEMORY[0x1E69DB8F0];
        v43[0] = *MEMORY[0x1E69DB990];
        v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
        v43[1] = *MEMORY[0x1E69DB940];
        v44[0] = v6;
        v44[1] = *MEMORY[0x1E69DB8E0];
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
        v46 = v7;
        v8 = MEMORY[0x1E695DF20];
        v9 = &v46;
        v10 = &v45;
        goto LABEL_3;
      }

      v49 = *MEMORY[0x1E69DB8F0];
      v47[0] = *MEMORY[0x1E69DB9C0];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69659A8]];
      v48[0] = v6;
      v47[1] = *MEMORY[0x1E69DB990];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB980]];
      v47[2] = *MEMORY[0x1E69DB940];
      v22 = *MEMORY[0x1E69DB8C8];
      v48[1] = v7;
      v48[2] = v22;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
      v50 = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v50;
      v16 = &v49;
    }

    else
    {
      if (!pairing)
      {
        v29 = *MEMORY[0x1E69DB8F0];
        v27[0] = *MEMORY[0x1E69DB990];
        v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
        v27[1] = *MEMORY[0x1E69DB940];
        v28[0] = v6;
        v28[1] = *MEMORY[0x1E69DB8C8];
        v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
        v30 = v7;
        v8 = MEMORY[0x1E695DF20];
        v9 = &v30;
        v10 = &v29;
        goto LABEL_3;
      }

      if (pairing != 1)
      {
        goto LABEL_15;
      }

      v53 = *MEMORY[0x1E69DB8F0];
      v51[0] = *MEMORY[0x1E69DB9C0];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965998]];
      v52[0] = v6;
      v51[1] = *MEMORY[0x1E69DB990];
      v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
      v51[2] = *MEMORY[0x1E69DB940];
      v17 = *MEMORY[0x1E69DB8C8];
      v52[1] = v7;
      v52[2] = v17;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:3];
      v54 = v13;
      v14 = MEMORY[0x1E695DF20];
      v15 = &v54;
      v16 = &v53;
    }

LABEL_13:
    v11 = [v14 dictionaryWithObjects:v15 forKeys:v16 count:1];

    goto LABEL_14;
  }

  if (pairing <= 5)
  {
    if (pairing == 4)
    {
      v41 = *MEMORY[0x1E69DB8F0];
      v39[0] = *MEMORY[0x1E69DB990];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB950]];
      v39[1] = *MEMORY[0x1E69DB940];
      v40[0] = v6;
      v40[1] = *MEMORY[0x1E69DB8D8];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
      v42 = v7;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v42;
      v10 = &v41;
    }

    else
    {
      v37 = *MEMORY[0x1E69DB8F0];
      v35[0] = *MEMORY[0x1E69DB990];
      v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB960]];
      v35[1] = *MEMORY[0x1E69DB940];
      v36[0] = v6;
      v36[1] = *MEMORY[0x1E69DB8D0];
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v38 = v7;
      v8 = MEMORY[0x1E695DF20];
      v9 = &v38;
      v10 = &v37;
    }

    goto LABEL_3;
  }

  if (pairing == 6)
  {
    v33 = *MEMORY[0x1E69DB8F0];
    v31[0] = *MEMORY[0x1E69DB990];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB950]];
    v31[1] = *MEMORY[0x1E69DB940];
    v32[0] = v6;
    v32[1] = *MEMORY[0x1E69DB8E0];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v34 = v7;
    v8 = MEMORY[0x1E695DF20];
    v9 = &v34;
    v10 = &v33;
    goto LABEL_3;
  }

  if (pairing == 7)
  {
    v25 = *MEMORY[0x1E69DB8F0];
    v23[0] = *MEMORY[0x1E69DB9C0];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965980]];
    v24[0] = v6;
    v23[1] = *MEMORY[0x1E69DB990];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
    v23[2] = *MEMORY[0x1E69DB940];
    v21 = *MEMORY[0x1E69DB8C8];
    v24[1] = v7;
    v24[2] = v21;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
    v26 = v13;
    v14 = MEMORY[0x1E695DF20];
    v15 = &v26;
    v16 = &v25;
    goto LABEL_13;
  }

LABEL_15:
  v19 = [MEMORY[0x1E69DB880] fontDescriptorWithFontAttributes:v11];

  return v19;
}

+ (id)_titleFontCacheKeyForStylePairing:(int64_t)pairing kind:(unint64_t)kind
{
  if (kind == 64)
  {
    v4 = &unk_1F190BBC0;
    if (pairing == 7)
    {
      v4 = &unk_1F190BBA8;
    }

    v5 = v4;
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:pairing + 3];
  }

  return v5;
}

+ (int64_t)stylePairingFromTitleCategory:(id)category string:(id)string kind:(unint64_t)kind layoutScheme:(int64_t)scheme
{
  v26 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  stringCopy = string;
  if (MEMORY[0x1A590D320]())
  {
    v11 = 0;
  }

  else
  {
    if (scheme > 1)
    {
      v12 = 0;
    }

    else if ([categoryCopy isEqual:*MEMORY[0x1E69C0E00]])
    {
      v12 = 1;
    }

    else if ([categoryCopy isEqual:*MEMORY[0x1E69C0DE8]])
    {
      v12 = 2;
    }

    else if ([categoryCopy isEqual:*MEMORY[0x1E69C0DE0]])
    {
      v12 = 3;
    }

    else if ([categoryCopy isEqual:*MEMORY[0x1E69C0DF8]])
    {
      v12 = 4;
    }

    else if ([categoryCopy isEqual:*MEMORY[0x1E69C0DF0]])
    {
      v12 = 5;
    }

    else if ([categoryCopy isEqual:*MEMORY[0x1E69C0E08]])
    {
      v12 = 6;
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_opt_class() _allowedTitleCharacterSetWithStylePairing:v12 kind:kind];
    v14 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:stringCopy];
    v15 = [v13 isSupersetOfSet:v14];

    if (v15)
    {
      v11 = v12;
    }

    else
    {
      v11 = 7;
    }

    v16 = PLStoryGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v18 = 134218754;
      v19 = v11;
      v20 = 2112;
      v21 = categoryCopy;
      v22 = 2048;
      schemeCopy = scheme;
      v24 = 2112;
      v25 = stringCopy;
      _os_log_impl(&dword_1A3C1C000, v16, OS_LOG_TYPE_DEBUG, "stylePairing: %ti for titleCategory: %@, layoutScheme: %ti, string: %@", &v18, 0x2Au);
    }
  }

  return v11;
}

+ (id)_allowedTitleCharacterSetWithStylePairing:(int64_t)pairing kind:(unint64_t)kind
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = [self _titleFontCacheKeyForStylePairing:? kind:?];
  titleCachedCharacterSetByStyleAndKind = [self titleCachedCharacterSetByStyleAndKind];
  v9 = [titleCachedCharacterSetByStyleAndKind objectForKey:v7];

  if (!v9)
  {
    v10 = [self _titleFontForStylePairing:pairing scale:kind kind:0 internationalStyle:1.0];
    fontDescriptor = [v10 fontDescriptor];
    fontAttributes = [fontDescriptor fontAttributes];
    v9 = [fontAttributes objectForKeyedSubscript:*MEMORY[0x1E69DB898]];

    if (!v9)
    {
      letterCharacterSet = CTFontCopyCharacterSet(v10);
      if (!letterCharacterSet)
      {
        v14 = PLStoryGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v17[0] = 67109376;
          v17[1] = pairing;
          v18 = 1024;
          kindCopy = kind;
          _os_log_impl(&dword_1A3C1C000, v14, OS_LOG_TYPE_ERROR, "font missing NSCharacterSet mapping for stylePairing: %d, kind: %d", v17, 0xEu);
        }

        letterCharacterSet = [MEMORY[0x1E696AB08] letterCharacterSet];
      }

      v9 = letterCharacterSet;
    }

    titleCachedCharacterSetByStyleAndKind2 = [self titleCachedCharacterSetByStyleAndKind];
    [titleCachedCharacterSetByStyleAndKind2 setObject:v9 forKey:v7];
  }

  return v9;
}

+ (NSCache)subtitleCachedCharacterSetByKind
{
  if (subtitleCachedCharacterSetByKind_onceToken != -1)
  {
    dispatch_once(&subtitleCachedCharacterSetByKind_onceToken, &__block_literal_global_2);
  }

  v3 = subtitleCachedCharacterSetByKind_instance;

  return v3;
}

void __59__PXStoryTextResourceInfo_subtitleCachedCharacterSetByKind__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = subtitleCachedCharacterSetByKind_instance;
  subtitleCachedCharacterSetByKind_instance = v0;
}

+ (NSCache)titleCachedCharacterSetByStyleAndKind
{
  if (titleCachedCharacterSetByStyleAndKind_onceToken != -1)
  {
    dispatch_once(&titleCachedCharacterSetByStyleAndKind_onceToken, &__block_literal_global_85572);
  }

  v3 = titleCachedCharacterSetByStyleAndKind_instance;

  return v3;
}

void __64__PXStoryTextResourceInfo_titleCachedCharacterSetByStyleAndKind__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = titleCachedCharacterSetByStyleAndKind_instance;
  titleCachedCharacterSetByStyleAndKind_instance = v0;
}

@end