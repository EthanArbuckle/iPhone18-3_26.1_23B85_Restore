@interface SBPolygon
+ (CGPoint)_pointAtIndex:(unint64_t)a3 ofPointArray:(id)a4;
+ (id)_sortPoints:(id)a3;
- (BOOL)_isLeftHanded;
- (BOOL)isEqual:(id)a3;
- (CGPoint)_centroid;
- (CGPoint)_pointAtIndex:(unint64_t)a3;
- (CGPoint)_weightedCentroid;
- (SBPolygon)initWithPoints:(CGPoint *)a3 pointCount:(unint64_t)a4;
- (SBPolygon)initWithPoints:(id)a3;
- (double)_baseOrientation;
- (double)_meanFingertipRowAngle;
- (double)_meanRadius;
- (double)_perimeter;
- (double)_weightAtIndex:(unint64_t)a3;
- (double)distanceOfFarthestPointFromCentroid;
- (id)description;
- (unint64_t)_thumbIndex;
- (unint64_t)pointCount;
- (void)_applyTransform:(CGAffineTransform *)a3;
- (void)_flipHorizontally;
- (void)_rotate:(double)a3;
- (void)_scale:(double)a3;
- (void)_translate:(CGPoint)a3;
- (void)_updateCentroid;
- (void)_updateProperties;
- (void)_updateWeightedCentroid;
- (void)_updateWeights;
- (void)enumeratePointsUsingBlock:(id)a3;
@end

@implementation SBPolygon

- (SBPolygon)initWithPoints:(CGPoint *)a3 pointCount:(unint64_t)a4
{
  v4 = a4;
  if (a4 >= 6)
  {
    [SBPolygon initWithPoints:a2 pointCount:self];
  }

  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v4];
  if (v4)
  {
    p_y = &a3->y;
    do
    {
      v9 = [MEMORY[0x277CCAE60] valueWithCGPoint:{*(p_y - 1), *p_y}];
      [v7 addObject:v9];

      p_y += 2;
      --v4;
    }

    while (v4);
  }

  v10 = [(SBPolygon *)self initWithPoints:v7];

  return v10;
}

- (SBPolygon)initWithPoints:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SBPolygon;
  v5 = [(SBPolygon *)&v8 init];
  if (v5)
  {
    v6 = [SBPolygon _sortPoints:v4];
    [(SBPolygon *)v5 _setPoints:v6];
    [(SBPolygon *)v5 _updateProperties];
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x277CBEB18] array];
  if ([(SBPolygon *)self pointCount])
  {
    v4 = 0;
    do
    {
      [(SBPolygon *)self _pointAtIndex:v4];
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%f, %f)", v5, v6];
      [v3 addObject:v7];

      ++v4;
    }

    while ([(SBPolygon *)self pointCount]> v4);
  }

  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  [(SBPolygon *)self _isLeftHanded];
  v10 = NSStringFromBOOL();
  v11 = [v8 stringWithFormat:@"<%@:%p points=%@ leftHanded=%@ thumbIndex: %lu>", v9, self, v3, v10, -[SBPolygon _thumbIndex](self, "_thumbIndex")];

  return v11;
}

- (unint64_t)pointCount
{
  v2 = [(SBPolygon *)self points];
  v3 = [v2 count];

  return v3;
}

- (double)distanceOfFarthestPointFromCentroid
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  [(SBPolygon *)self _centroid];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SBPolygon_distanceOfFarthestPointFromCentroid__block_invoke;
  v7[3] = &unk_2783B7430;
  v7[5] = v3;
  v7[6] = v4;
  v7[4] = &v8;
  [(SBPolygon *)self enumeratePointsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t __48__SBPolygon_distanceOfFarthestPointFromCentroid__block_invoke(uint64_t a1)
{
  result = UIDistanceBetweenPoints();
  v4 = *(*(a1 + 32) + 8);
  if (v3 > *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  return result;
}

- (void)enumeratePointsUsingBlock:(id)a3
{
  v4 = a3;
  v6 = 0;
  if ([(SBPolygon *)self pointCount])
  {
    v5 = 1;
    do
    {
      if (v4)
      {
        [(SBPolygon *)self _pointAtIndex:v5 - 1];
        v4[2](v4, v5 - 1, &v6);
      }

      if (v5 >= [(SBPolygon *)self pointCount])
      {
        break;
      }

      ++v5;
    }

    while ((v6 & 1) == 0);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SBPolygon *)self points];
      v7 = [(SBPolygon *)v5 points];

      v8 = [v6 isEqualToArray:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (double)_perimeter
{
  v3 = 0.0;
  if ([(SBPolygon *)self pointCount]>= 2 && [(SBPolygon *)self pointCount]!= 1)
  {
    v4 = 0;
    do
    {
      [(SBPolygon *)self _pointAtIndex:v4++];
      [(SBPolygon *)self _pointAtIndex:v4];
      UIDistanceBetweenPoints();
      v3 = v3 + v5;
    }

    while (v4 < [(SBPolygon *)self pointCount]- 1);
  }

  return v3;
}

- (CGPoint)_pointAtIndex:(unint64_t)a3
{
  [SBPolygon _pointAtIndex:a3 ofPointArray:self->_mutablePoints];
  result.y = v4;
  result.x = v3;
  return result;
}

- (double)_weightAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_weights objectAtIndex:a3];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (void)_updateProperties
{
  [(SBPolygon *)self _updateCentroid];
  [(SBPolygon *)self _updateWeights];

  [(SBPolygon *)self _updateWeightedCentroid];
}

- (void)_updateCentroid
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __28__SBPolygon__updateCentroid__block_invoke;
  v4[3] = &unk_2783B7458;
  v4[4] = &v9;
  v4[5] = &v5;
  [(SBPolygon *)self enumeratePointsUsingBlock:v4];
  v3 = [(SBPolygon *)self pointCount];
  [(SBPolygon *)self _setCentroid:v10[3] / v3, v6[3] / v3];
  _Block_object_dispose(&v5, 8);
  _Block_object_dispose(&v9, 8);
}

double __28__SBPolygon__updateCentroid__block_invoke(uint64_t a1, double a2, double a3)
{
  *(*(*(a1 + 32) + 8) + 24) = a2 + *(*(*(a1 + 32) + 8) + 24);
  v3 = *(*(a1 + 40) + 8);
  result = a3 + *(v3 + 24);
  *(v3 + 24) = result;
  return result;
}

- (void)_updateWeights
{
  v3 = [(SBPolygon *)self pointCount];
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v3];
  v6 = v4;
  if (v3)
  {
    v5 = v3;
    do
    {
      [v4 addObject:&unk_283370FE8];
      v4 = v6;
      --v5;
    }

    while (v5);
    if (v3 == 5)
    {
      [v6 setObject:&unk_28336F340 atIndexedSubscript:{-[SBPolygon _thumbIndex](self, "_thumbIndex")}];
      v4 = v6;
    }
  }

  [(SBPolygon *)self _setWeights:v4];
}

- (void)_updateWeightedCentroid
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __36__SBPolygon__updateWeightedCentroid__block_invoke;
  v3[3] = &unk_2783B7480;
  v3[4] = self;
  v3[5] = &v12;
  v3[6] = &v8;
  v3[7] = &v4;
  [(SBPolygon *)self enumeratePointsUsingBlock:v3];
  [(SBPolygon *)self _setWeightedCentroid:v13[3] / v5[3], v9[3] / v5[3]];
  _Block_object_dispose(&v4, 8);
  _Block_object_dispose(&v8, 8);
  _Block_object_dispose(&v12, 8);
}

double __36__SBPolygon__updateWeightedCentroid__block_invoke(uint64_t a1, uint64_t a2, double a3, double a4)
{
  [*(a1 + 32) _weightAtIndex:a2];
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v8 * a3;
  [*(a1 + 32) _weightAtIndex:a2];
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v9 * a4;
  [*(a1 + 32) _weightAtIndex:a2];
  v10 = *(*(a1 + 56) + 8);
  result = v11 + *(v10 + 24);
  *(v10 + 24) = result;
  return result;
}

- (BOOL)_isLeftHanded
{
  if ([(SBPolygon *)self pointCount]!= 5)
  {
    return 0;
  }

  [(SBPolygon *)self _pointAtIndex:0];
  v4 = v3;
  v6 = v5;
  [(SBPolygon *)self _pointAtIndex:1];
  *&v7 = v7 - v4;
  *&v8 = v8 - v6;
  v9 = (*&v7 * *&v7) + (*&v8 * *&v8);
  [(SBPolygon *)self _pointAtIndex:3];
  v11 = v10;
  v13 = v12;
  [(SBPolygon *)self _pointAtIndex:4];
  *&v14 = v14 - v11;
  *&v15 = v15 - v13;
  return v9 < ((*&v14 * *&v14) + (*&v15 * *&v15));
}

- (unint64_t)_thumbIndex
{
  if ([(SBPolygon *)self _isLeftHanded])
  {
    return [(SBPolygon *)self pointCount]- 1;
  }

  else
  {
    return 0;
  }
}

- (void)_applyTransform:(CGAffineTransform *)a3
{
  [(SBPolygon *)self _centroid];
  v14 = v6;
  v15 = v5;
  if ([(SBPolygon *)self pointCount])
  {
    v7 = 0;
    v8.f64[0] = v15;
    v8.f64[1] = v14;
    v13 = v8;
    do
    {
      [(SBPolygon *)self _pointAtIndex:v7, *&v13];
      v16 = vaddq_f64(v13, vaddq_f64(*&a3->tx, vmlaq_n_f64(vmulq_n_f64(*&a3->c, v10 - v14), *&a3->a, v9 - v15)));
      v11 = [(SBPolygon *)self _points];
      v12 = [MEMORY[0x277CCAE60] valueWithCGPoint:*&v16];
      [v11 setObject:v12 atIndexedSubscript:v7];

      ++v7;
    }

    while ([(SBPolygon *)self pointCount]> v7);
  }
}

- (void)_flipHorizontally
{
  CGAffineTransformMakeScale(&v13, -1.0, 1.0);
  [(SBPolygon *)self _applyTransform:&v13];
  v3 = [(SBPolygon *)self pointCount];
  v4 = v3 - 1;
  if (v3 != 1)
  {
    v5 = 1;
    do
    {
      v6 = [(SBPolygon *)self _points];
      v7 = [v6 objectAtIndex:v5 - 1];

      v8 = [(SBPolygon *)self _points];
      v9 = [(SBPolygon *)self _points];
      v10 = [v9 objectAtIndex:v4];
      [v8 setObject:v10 atIndexedSubscript:v5 - 1];

      v11 = [(SBPolygon *)self _points];
      [v11 setObject:v7 atIndexedSubscript:v4];
    }

    while (v5++ < --v4);
  }

  [(SBPolygon *)self _updateProperties];
}

- (void)_scale:(double)a3
{
  CGAffineTransformMakeScale(&v4, a3, a3);
  [(SBPolygon *)self _applyTransform:&v4];
  [(SBPolygon *)self _updateCentroid];
  [(SBPolygon *)self _updateWeightedCentroid];
}

- (void)_rotate:(double)a3
{
  CGAffineTransformMakeRotation(&v4, a3);
  [(SBPolygon *)self _applyTransform:&v4];
  [(SBPolygon *)self _updateCentroid];
  [(SBPolygon *)self _updateWeightedCentroid];
}

- (void)_translate:(CGPoint)a3
{
  CGAffineTransformMakeTranslation(&v4, a3.x, a3.y);
  [(SBPolygon *)self _applyTransform:&v4];
  [(SBPolygon *)self _updateCentroid];
  [(SBPolygon *)self _updateWeightedCentroid];
}

- (double)_baseOrientation
{
  if ([(SBPolygon *)self pointCount]< 2)
  {
    return 0.0;
  }

  [(SBPolygon *)self _pointAtIndex:0];
  v5 = v4;
  v7 = v6;
  [(SBPolygon *)self _pointAtIndex:[(SBPolygon *)self pointCount]- 1];

  return atan2(v9 - v7, v8 - v5);
}

- (double)_meanFingertipRowAngle
{
  v3 = [(SBPolygon *)self pointCount];
  switch(v3)
  {
    case 5uLL:
      if (![(SBPolygon *)self _isLeftHanded])
      {
        [(SBPolygon *)self _pointAtIndex:1];
        v6 = v19;
        v8 = v20;
        [(SBPolygon *)self _pointAtIndex:2];
        v10 = v21;
        v12 = v22;
        [(SBPolygon *)self _pointAtIndex:3];
        v14 = v23;
        v16 = v24;
        v17 = self;
        v18 = 4;
        goto LABEL_11;
      }

      break;
    case 4uLL:
      break;
    case 3uLL:

      [(SBPolygon *)self _baseOrientation];
      return result;
    default:
      return 0.0;
  }

  [(SBPolygon *)self _pointAtIndex:0];
  v6 = v5;
  v8 = v7;
  [(SBPolygon *)self _pointAtIndex:1];
  v10 = v9;
  v12 = v11;
  [(SBPolygon *)self _pointAtIndex:2];
  v14 = v13;
  v16 = v15;
  v17 = self;
  v18 = 3;
LABEL_11:
  [(SBPolygon *)v17 _pointAtIndex:v18];

  return mean_tetragon_orientation(v6, v8, v10, v12, v14, v16, v25, v26);
}

- (double)_meanRadius
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__SBPolygon__meanRadius__block_invoke;
  v6[3] = &unk_2783B74A8;
  v6[4] = self;
  v6[5] = &v11;
  v6[6] = &v7;
  [(SBPolygon *)self enumeratePointsUsingBlock:v6];
  v2 = v12[3];
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v8[3];
    if (v4 != 0.0)
    {
      v3 = v2 / v4;
    }
  }

  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
  return v3;
}

double __24__SBPolygon__meanRadius__block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _weightAtIndex:a2];
  v5 = v4;
  [*(a1 + 32) _centroid];
  UIDistanceBetweenPoints();
  *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) + v5 * v6;
  [*(a1 + 32) _weightAtIndex:a2];
  v7 = *(*(a1 + 48) + 8);
  result = v8 + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

+ (CGPoint)_pointAtIndex:(unint64_t)a3 ofPointArray:(id)a4
{
  v4 = [a4 objectAtIndex:a3];
  [v4 CGPointValue];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

+ (id)_sortPoints:(id)a3
{
  v4 = a3;
  v5 = [v4 count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0.0;
    v11 = 1;
    do
    {
      [a1 _pointAtIndex:v7 ofPointArray:v4];
      v14 = v7 + 1;
      if (v6 > v7 + 1)
      {
        v15 = v12;
        v16 = v13;
        for (i = v11; v6 > i; ++i)
        {
          [a1 _pointAtIndex:i ofPointArray:v4];
          v19 = v18;
          v21 = v20;
          UIDistanceBetweenPoints();
          v23 = v22;
          v24 = v23;
          v25 = v10 < v23;
          if (v10 < v23)
          {
            v26 = i;
          }

          else
          {
            v26 = v9;
          }

          if (v10 < v23)
          {
            v27 = v7;
          }

          else
          {
            v27 = v8;
          }

          if (v10 < v23)
          {
            v28 = v23;
          }

          else
          {
            v28 = v10;
          }

          if (v25 && v6 >= 3)
          {
            v30 = 0;
            v31 = v19 - v15;
            v32 = -(v21 - v16);
            v33 = 1.17549435e-38;
            v34 = 3.40282347e38;
            do
            {
              [a1 _pointAtIndex:v30 ofPointArray:v4];
              v37 = -((v36 - v15) * v32 + v31 * (v35 - v16)) / v24;
              if (v37 > v33)
              {
                v33 = v37;
              }

              if (v37 < v34)
              {
                v34 = v37;
              }

              ++v30;
            }

            while (v6 != v30);
            if (fabs(v33) <= fabs(v34))
            {
              if (v33 < 20.0)
              {
                v9 = v7;
                v8 = i;
                goto LABEL_30;
              }
            }

            else if (v34 > -20.0)
            {
              v9 = i;
              v8 = v7;
LABEL_30:
              v10 = v24;
            }
          }

          else
          {
            v9 = v26;
            v8 = v27;
            v10 = v28;
          }
        }
      }

      ++v11;
      ++v7;
    }

    while (v14 != v6);
    if (v10 > 0.0)
    {
      [a1 _pointAtIndex:v8 ofPointArray:v4];
      v39 = v38;
      v41 = v40;
      [a1 _pointAtIndex:v9 ofPointArray:v4];
      v43 = v42;
      v45 = v44;
      v46 = [MEMORY[0x277CBEB18] array];
      v47 = [MEMORY[0x277CBEB18] array];
      v48 = 0;
      v49 = v43 - v39;
      v50 = v45 - v41;
      while (1)
      {
        if (v8 != v48 && v9 != v48)
        {
          [a1 _pointAtIndex:v48 ofPointArray:v4];
          v52 = v51;
          v54 = v53;
          v55 = v50 * (v53 - v41) + v49 * (v51 - v39);
          if ([v47 count])
          {
            if ([v47 count])
            {
              v56 = 0;
              do
              {
                v57 = [v47 objectAtIndex:v56];
                [v57 doubleValue];
                v59 = v58;

                if (v55 <= v59)
                {
                  v60 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
                  [v47 insertObject:v60 atIndex:v56];

                  v61 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v52, v54}];
                  [v46 insertObject:v61 atIndex:v56];
                }

                ++v56;
              }

              while ([v47 count] > v56 && v55 > v59);
              if (v55 <= v59)
              {
                goto LABEL_48;
              }
            }

            v62 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
            [v47 addObject:v62];

            v63 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v52, v54}];
            v64 = v46;
          }

          else
          {
            v65 = [MEMORY[0x277CCAE60] valueWithCGPoint:{v52, v54}];
            [v46 addObject:v65];

            v63 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
            v64 = v47;
          }

          [v64 addObject:v63];
        }

LABEL_48:
        if (++v48 == v6)
        {
          v66 = MEMORY[0x277CCAE60];
          [a1 _pointAtIndex:v8 ofPointArray:v4];
          v67 = [v66 valueWithCGPoint:?];
          [v46 insertObject:v67 atIndex:0];

          v68 = MEMORY[0x277CCAE60];
          [a1 _pointAtIndex:v9 ofPointArray:v4];
          v69 = [v68 valueWithCGPoint:?];
          [v46 insertObject:v69 atIndex:v6 - 1];

          goto LABEL_51;
        }
      }
    }
  }

  v46 = v4;
LABEL_51:

  return v46;
}

- (CGPoint)_centroid
{
  x = self->_centroid.x;
  y = self->_centroid.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)_weightedCentroid
{
  x = self->_weightedCentroid.x;
  y = self->_weightedCentroid.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)initWithPoints:(uint64_t)a1 pointCount:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPolygon.m" lineNumber:20 description:{@"The max number of points allowed is %d", 5}];
}

@end