@interface CRCTLD
- (CRCTLD)initWithDelegate:(id)delegate;
- (CRCTLDDelegate)delegate;
- (CTLDRegion)CTLDRegionFromCRRegion:(SEL)region index:(id)index imageSize:(int)size rotationAngle:(CGSize)angle mainDirection:(float)direction;
- (double)getBaselineAngle:(id)angle;
- (double)getQuadrantOrientation:(id)orientation;
- (float)getFeaturesGlobalAngle:(id)angle;
- (id)groupAndOrderRegions:(id)regions config:(id)config;
- (id)groupAndOrderRegions:(id)regions config:(id)config delegate:(id)delegate;
- (id)singleCTLDGroupingPass:(CRConstrainedTextLineDetectionImpl *)pass textRegions:(id)regions;
- (unint64_t)getFeaturesMainLayoutDirection:(id)direction;
- (void)enforceQuadrilateralOrder:(CGPoint *)order;
- (void)mirrorAxisX:(CGPoint *)x;
@end

@implementation CRCTLD

- (CRCTLD)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = CRCTLD;
  v5 = [(CRCTLD *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)enforceQuadrilateralOrder:(CGPoint *)order
{
  v3 = 1;
  v4 = 16;
  do
  {
    v5 = order[v3];
    v6 = v4;
    v7 = v3;
    while (1)
    {
      v8 = v7 - 1;
      v9 = &order[(v7 - 1)];
      if (v9->x <= v5.x)
      {
        break;
      }

      *(order + v6) = *v9;
      v6 -= 16;
      --v7;
      if (v8 + 1 <= 1)
      {
        LODWORD(v7) = 0;
        break;
      }
    }

    order[v7] = v5;
    ++v3;
    v4 += 16;
  }

  while (v3 != 4);
  y = order->y;
  orderCopy2 = order + 1;
  v12 = order[1].y;
  if (y >= v12)
  {
    orderCopy = order + 1;
  }

  else
  {
    orderCopy = order;
  }

  if (y >= v12)
  {
    orderCopy2 = order;
  }

  v14 = *orderCopy2;
  v15 = order + 2;
  v16 = order[2].y;
  v17 = order[3].y;
  if (v16 >= v17)
  {
    v18 = order + 3;
  }

  else
  {
    v18 = order + 2;
  }

  if (v16 < v17)
  {
    v15 = order + 3;
  }

  v19 = *v15;
  v20 = *v18;
  *order = *orderCopy;
  order[1] = v20;
  order[2] = v14;
  order[3] = v19;
}

- (double)getBaselineAngle:(id)angle
{
  angleCopy = angle;
  boundingQuad = [angleCopy boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];
  [denormalizedQuad bottomLeft];
  v7 = v6;
  v9 = v8;

  boundingQuad2 = [angleCopy boundingQuad];
  denormalizedQuad2 = [boundingQuad2 denormalizedQuad];
  [denormalizedQuad2 bottomRight];
  v13 = v12;
  v15 = v14;

  v16 = atan2(-(v15 - v9), v13 - v7);
  return v16;
}

- (void)mirrorAxisX:(CGPoint *)x
{
  for (i = 0; i != 4; ++i)
  {
    x[i].x = -x[i].x;
  }

  v4 = *x;
  *x = x[1];
  x[1] = v4;
  v5 = x[2];
  x[2] = x[3];
  x[3] = v5;
}

- (CTLDRegion)CTLDRegionFromCRRegion:(SEL)region index:(id)index imageSize:(int)size rotationAngle:(CGSize)angle mainDirection:(float)direction
{
  height = angle.height;
  width = angle.width;
  v32 = *MEMORY[0x1E69E9840];
  indexCopy = index;
  boundingQuad = [indexCopy boundingQuad];
  denormalizedQuad = [boundingQuad denormalizedQuad];

  [denormalizedQuad topLeft];
  *&v28 = v18;
  *(&v28 + 1) = v19;
  [denormalizedQuad topRight];
  *&v29 = v20;
  *(&v29 + 1) = v21;
  [denormalizedQuad bottomLeft];
  *&v30 = v22;
  *(&v30 + 1) = v23;
  [denormalizedQuad bottomRight];
  *&v31 = v24;
  *(&v31 + 1) = v25;
  [(CRCTLD *)self angleThresholdForRotationCorrection];
  if (v26 < fabsf(direction))
  {
    rotatePolygon(&v28, &v28, width * 0.5, height * 0.5, direction);
  }

  [(CRCTLD *)self enforceQuadrilateralOrder:&v28];
  if (a8 == 2)
  {
    [(CRCTLD *)self mirrorAxisX:&v28];
  }

  CRTextRecognition::CRCTLD::CTLDRegion::CTLDRegion(retstr, &v28, &v29, &v30, &v31, size, indexCopy);

  return result;
}

- (double)getQuadrantOrientation:(id)orientation
{
  v19[2] = *MEMORY[0x1E69E9840];
  v19[0] = 0;
  v19[1] = 0;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  orientationCopy = orientation;
  v5 = [orientationCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(orientationCopy);
        }

        [(CRCTLD *)self getBaselineAngle:*(*(&v14 + 1) + 8 * i), v14];
        if (v8 <= 3.14159265)
        {
          if (v8 <= -3.14159265)
          {
            v8 = v8 + 6.28318531;
          }
        }

        else
        {
          v8 = v8 + -6.28318531;
        }

        v9 = (v8 + 0.785398163 + 3.14159265) / 1.57079633;
        if (v9 <= 0)
        {
          v10 = -(-v9 & 3);
        }

        else
        {
          v10 = v9 & 3;
        }

        ++*(v19 + v10);
      }

      v5 = [orientationCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = 0;
  v12 = 0;
  do
  {
    if (*(v19 + v12) < *(v19 + v11))
    {
      v12 = v11;
    }

    ++v11;
  }

  while (v11 != 4);

  return v12 * 1.57079633 + -3.14159265;
}

- (float)getFeaturesGlobalAngle:(id)angle
{
  v28 = *MEMORY[0x1E69E9840];
  angleCopy = angle;
  if ([angleCopy count])
  {
    [(CRCTLD *)self getQuadrantOrientation:angleCopy];
    v6 = v5;
    array = [MEMORY[0x1E695DF70] array];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = angleCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v8);
          }

          [(CRCTLD *)self getBaselineAngle:*(*(&v23 + 1) + 8 * i)];
          v13 = v12 - v6;
          if (v13 <= 3.14159265)
          {
            if (v13 <= -3.14159265)
            {
              v13 = v13 + 6.28318531;
            }
          }

          else
          {
            v13 = v13 + -6.28318531;
          }

          v14 = -v13;
          if (v13 >= 0.0)
          {
            v14 = v13;
          }

          if (v14 > 0.785398163)
          {
            if (v14 <= 2.35619449)
            {
              if (v13 >= 0.0)
              {
                v13 = v13 + -1.57079633;
              }

              else
              {
                v13 = v13 + 1.57079633;
              }
            }

            else
            {
              v13 = v13 + 3.14159265;
              if (v13 <= 3.14159265)
              {
                if (v13 <= -3.14159265)
                {
                  v13 = v13 + 6.28318531;
                }
              }

              else
              {
                v13 = v13 + -6.28318531;
              }
            }
          }

          *&v13 = v13;
          v15 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
          [array addObject:v15];
        }

        v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [array sortedArrayUsingSelector:sel_compare_];
    v17 = [v16 objectAtIndexedSubscript:{objc_msgSend(v16, "count") >> 1}];
    [v17 floatValue];
    v19 = v6 + v18;
    if (v19 <= 3.14159265)
    {
      if (v19 > -3.14159265)
      {
LABEL_33:

        v21 = v19;
        goto LABEL_34;
      }

      v20 = 6.28318531;
    }

    else
    {
      v20 = -6.28318531;
    }

    v19 = v19 + v20;
    goto LABEL_33;
  }

  v21 = 0.0;
LABEL_34:

  return v21;
}

- (unint64_t)getFeaturesMainLayoutDirection:(id)direction
{
  v29 = *MEMORY[0x1E69E9840];
  directionCopy = direction;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = directionCopy;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      v8 = 0;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(*(&v24 + 1) + 8 * v8), "layoutDirection")}];
        v10 = [v4 objectForKey:v9];
        v11 = v10 == 0;

        if (v11)
        {
          v14 = 1;
        }

        else
        {
          v12 = [v4 objectForKeyedSubscript:v9];
          integerValue = [v12 integerValue];

          v14 = integerValue + 1;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
        [v4 setObject:v15 forKeyedSubscript:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __41__CRCTLD_getFeaturesMainLayoutDirection___block_invoke;
  v18[3] = &unk_1E7BC2950;
  v18[4] = v19;
  v18[5] = &v20;
  [v4 enumerateKeysAndObjectsUsingBlock:v18];
  v16 = v21[3];
  _Block_object_dispose(v19, 8);
  _Block_object_dispose(&v20, 8);

  return v16;
}

void __41__CRCTLD_getFeaturesMainLayoutDirection___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 integerValue] > *(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = [v5 integerValue];
    *(*(*(a1 + 40) + 8) + 24) = [v6 integerValue];
  }
}

- (id)singleCTLDGroupingPass:(CRConstrainedTextLineDetectionImpl *)pass textRegions:(id)regions
{
  v64 = *MEMORY[0x1E69E9840];
  regionsCopy = regions;
  [(CRCTLD *)self getFeaturesGlobalAngle:regionsCopy];
  v10 = v9;
  v11 = [(CRCTLD *)self getFeaturesMainLayoutDirection:regionsCopy];
  if ([regionsCopy count])
  {
    v12 = [regionsCopy objectAtIndexedSubscript:0];
    boundingQuad = [v12 boundingQuad];
    [boundingQuad normalizationSize];
    v4 = v14;
    v5 = v15;
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::reserve(&v52, [regionsCopy count]);
  for (i = 0; [regionsCopy count] > i; ++i)
  {
    v17 = [regionsCopy objectAtIndexedSubscript:i];
    *&v18 = v10;
    [(CRCTLD *)self CTLDRegionFromCRRegion:v17 index:i imageSize:v11 rotationAngle:v4 mainDirection:v5, v18];
    v19 = v53;
    if (v53 >= v54)
    {
      v25 = std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__emplace_back_slow_path<CRTextRecognition::CRCTLD::CTLDRegion>(&v52, &v55);
    }

    else
    {
      *v53 = v55;
      v20 = *(&v55 + 1);
      *(&v55 + 1) = 0;
      *(v19 + 1) = v20;
      v21 = v57;
      *(v19 + 1) = v56;
      *(v19 + 2) = v21;
      v22 = v58;
      v23 = v59;
      v24 = v60;
      v19[24] = v61;
      *(v19 + 4) = v23;
      *(v19 + 5) = v24;
      *(v19 + 3) = v22;
      *(v19 + 13) = 0;
      *(v19 + 14) = 0;
      *(v19 + 15) = 0;
      *(v19 + 26) = v62;
      *(v19 + 15) = v63;
      v62 = 0uLL;
      v63 = 0;
      v25 = (v19 + 32);
    }

    v53 = v25;
    v50 = &v62;
    std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v50);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  CRTextRecognition::CRCTLD::CRConstrainedTextLineDetectionImpl::groupRegions(pass, &v52, v11, WeakRetained, &v50);

  v48 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = v50;
  if (v51 != v50)
  {
    v28 = 0;
    v29 = fabsf(v10);
    v30 = -v10;
    do
    {
      v31 = &v27[16 * v28];
      v55 = *(v31 + 2);
      v56 = *(v31 + 3);
      v57 = *(v31 + 4);
      v58 = *(v31 + 5);
      if (v11 == 2)
      {
        [(CRCTLD *)self mirrorAxisX:&v55];
      }

      [(CRCTLD *)self angleThresholdForRotationCorrection];
      if (v32 < v29)
      {
        rotatePolygon(&v55, &v55, v4 * 0.5, v5 * 0.5, v30);
      }

      v33 = [CRNormalizedQuad alloc];
      v34 = [CRImageSpaceQuad alloc];
      v35 = [(CRImageSpaceQuad *)v34 initWithTopLeft:v55 topRight:*&v56 bottomRight:*(&v56 + 1) bottomLeft:*&v58, *(&v58 + 1), *&v57, *(&v57 + 1)];
      v36 = [(CRNormalizedQuad *)v33 initWithDenormalizedQuad:v35 size:v4, v5];

      v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:(v50[16 * v28 + 14] - v50[16 * v28 + 13]) >> 7];
      v38 = v50[16 * v28 + 13];
      if (v50[16 * v28 + 14] != v38)
      {
        v39 = 0;
        v40 = 0;
        do
        {
          v41 = [regionsCopy objectAtIndexedSubscript:*&v38[v39]];
          [v37 addObject:v41];

          ++v40;
          v38 = v50[16 * v28 + 13];
          v39 += 128;
        }

        while (v40 < (v50[16 * v28 + 14] - v38) >> 7);
      }

      v42 = objc_loadWeakRetained(&self->_delegate);
      v43 = objc_opt_respondsToSelector();

      if (v43)
      {
        v44 = objc_loadWeakRetained(&self->_delegate);
        v45 = [v44 groupWithQuad:v36 layoutDirection:0 subregions:v37];

        if (!v45)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v45 = [[CRGroupRegion alloc] initWithBoundingQuad:v36 layoutDirection:0 subregions:v37];
        if (!v45)
        {
LABEL_22:
          v46 = CROSLogForCategory(0);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1B40D2000, v46, OS_LOG_TYPE_FAULT, "GroupRegion is NULL in singleCTLDGroupingPass", buf, 2u);
          }

          goto LABEL_25;
        }
      }

      [v48 addObject:v45];
LABEL_25:

      ++v28;
      v27 = v50;
    }

    while (v28 < (v51 - v50) >> 7);
  }

  *&v55 = &v50;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v55);
  *&v55 = &v52;
  std::vector<CRTextRecognition::CRCTLD::CTLDRegion>::__destroy_vector::operator()[abi:ne200100](&v55);

  return v48;
}

- (id)groupAndOrderRegions:(id)regions config:(id)config delegate:(id)delegate
{
  regionsCopy = regions;
  configCopy = config;
  delegateCopy = delegate;
  [configCopy allowedOverlap];
  v12 = v11;
  maxRegions = [configCopy maxRegions];
  maxQueueCapacity = [configCopy maxQueueCapacity];
  [configCopy minWhitespaceWidth];
  v16 = v15;
  [configCopy minWhitespaceHeight];
  v18 = v17;
  numLookupElements = [configCopy numLookupElements];
  numPointsForSegmentsIntersection = [configCopy numPointsForSegmentsIntersection];
  [configCopy qualityHeightFactor];
  v22 = v21;
  [configCopy qualityWidthFactor];
  v24 = v23;
  [configCopy minSubRectangleSize];
  v26 = v25;
  [configCopy minQuadrilateralRotation];
  v28 = v27;
  flatMergeJumps = [configCopy flatMergeJumps];
  [configCopy minWhitespaceHeightForReadingOrder];
  v34[0] = v12;
  v34[1] = maxRegions;
  v34[2] = maxQueueCapacity;
  v34[3] = v16;
  v34[4] = v18;
  v34[5] = v26;
  v34[6] = v28;
  v34[7] = v30;
  v34[8] = numLookupElements;
  v34[9] = numPointsForSegmentsIntersection;
  v34[10] = v22;
  v34[11] = v24;
  v35 = flatMergeJumps;
  [configCopy angleThresholdForRotationCorrection];
  self->_angleThresholdForRotationCorrection = v31;
  objc_storeWeak(&self->_delegate, delegateCopy);
  v32 = [(CRCTLD *)self singleCTLDGroupingPass:v34 textRegions:regionsCopy];

  return v32;
}

- (id)groupAndOrderRegions:(id)regions config:(id)config
{
  v4 = [(CRCTLD *)self groupAndOrderRegions:regions config:config delegate:0];

  return v4;
}

- (CRCTLDDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end