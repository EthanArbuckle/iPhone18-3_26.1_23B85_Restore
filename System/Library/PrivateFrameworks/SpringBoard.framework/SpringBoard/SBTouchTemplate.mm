@interface SBTouchTemplate
- (unint64_t)matchesPolygon:(id)polygon matchTransformsAllowed:(unint64_t)allowed acceptanceFactor:(double)factor outMorphedCandidate:(id *)candidate;
@end

@implementation SBTouchTemplate

- (unint64_t)matchesPolygon:(id)polygon matchTransformsAllowed:(unint64_t)allowed acceptanceFactor:(double)factor outMorphedCandidate:(id *)candidate
{
  allowedCopy = allowed;
  polygonCopy = polygon;
  pointCount = [(SBPolygon *)self pointCount];
  if (pointCount > [polygonCopy pointCount])
  {
    v12 = 0;
    goto LABEL_29;
  }

  pointCount2 = [(SBPolygon *)self pointCount];
  if (pointCount2 < [polygonCopy pointCount])
  {
    v12 = 2;
    goto LABEL_29;
  }

  v14 = [SBPolygon alloc];
  _points = [polygonCopy _points];
  v16 = [(SBPolygon *)v14 initWithPoints:_points];

  if ((allowedCopy & 8) != 0)
  {
    _isLeftHanded = [(SBPolygon *)self _isLeftHanded];
    if (_isLeftHanded != [(SBPolygon *)v16 _isLeftHanded])
    {
      [(SBPolygon *)v16 _flipHorizontally];
    }
  }

  if (allowedCopy)
  {
    [(SBPolygon *)self _meanFingertipRowAngle];
    v37 = v36;
    [(SBPolygon *)v16 _meanFingertipRowAngle];
    [(SBPolygon *)v16 _rotate:v37 - v38];
    if ((allowedCopy & 2) == 0)
    {
LABEL_10:
      if ((allowedCopy & 4) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      [(SBPolygon *)self _weightedCentroid];
      v45 = v44;
      v47 = v46;
      [(SBPolygon *)v16 _weightedCentroid];
      [(SBPolygon *)v16 _translate:v45 - v48, v47 - v49];
      if (!candidate)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((allowedCopy & 2) == 0)
  {
    goto LABEL_10;
  }

  [(SBPolygon *)self _meanRadius];
  v40 = v39;
  [(SBPolygon *)v16 _meanRadius];
  v42 = v40 / v41;
  v43 = 1.5;
  if (v42 <= 1.5)
  {
    v43 = v42;
    if (v42 < 0.444444444)
    {
      v43 = 0.444444444;
    }
  }

  [(SBPolygon *)v16 _scale:v43];
  if ((allowedCopy & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (candidate)
  {
LABEL_12:
    v18 = v16;
    *candidate = v16;
  }

LABEL_13:
  pointCount3 = [polygonCopy pointCount];
  if (pointCount3)
  {
    v20 = pointCount3;
    v21 = 0;
    v22 = 0.0;
    v23 = 0.0;
    do
    {
      [(SBPolygon *)self _pointAtIndex:v21];
      v25 = v24;
      v27 = v26;
      [(SBPolygon *)v16 _pointAtIndex:v21];
      v29 = v28;
      v31 = v30;
      [(SBPolygon *)self _weightAtIndex:v21];
      *&v32 = v32;
      *&v32 = *&v32 * *&v32;
      v33 = v29 - v25;
      v34 = v31 - v27;
      v23 = v23 + *&v32 * ((v33 * v33) + (v34 * v34));
      v22 = v22 + *&v32;
      ++v21;
    }

    while (v20 != v21);
    v35 = v23 / v22;
  }

  else
  {
    v35 = NAN;
  }

  if (factor * 55.0 > sqrtf(v35))
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

LABEL_29:
  return v12;
}

@end