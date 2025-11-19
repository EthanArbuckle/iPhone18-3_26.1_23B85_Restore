@interface SBTouchTemplate
- (unint64_t)matchesPolygon:(id)a3 matchTransformsAllowed:(unint64_t)a4 acceptanceFactor:(double)a5 outMorphedCandidate:(id *)a6;
@end

@implementation SBTouchTemplate

- (unint64_t)matchesPolygon:(id)a3 matchTransformsAllowed:(unint64_t)a4 acceptanceFactor:(double)a5 outMorphedCandidate:(id *)a6
{
  v8 = a4;
  v10 = a3;
  v11 = [(SBPolygon *)self pointCount];
  if (v11 > [v10 pointCount])
  {
    v12 = 0;
    goto LABEL_29;
  }

  v13 = [(SBPolygon *)self pointCount];
  if (v13 < [v10 pointCount])
  {
    v12 = 2;
    goto LABEL_29;
  }

  v14 = [SBPolygon alloc];
  v15 = [v10 _points];
  v16 = [(SBPolygon *)v14 initWithPoints:v15];

  if ((v8 & 8) != 0)
  {
    v17 = [(SBPolygon *)self _isLeftHanded];
    if (v17 != [(SBPolygon *)v16 _isLeftHanded])
    {
      [(SBPolygon *)v16 _flipHorizontally];
    }
  }

  if (v8)
  {
    [(SBPolygon *)self _meanFingertipRowAngle];
    v37 = v36;
    [(SBPolygon *)v16 _meanFingertipRowAngle];
    [(SBPolygon *)v16 _rotate:v37 - v38];
    if ((v8 & 2) == 0)
    {
LABEL_10:
      if ((v8 & 4) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      [(SBPolygon *)self _weightedCentroid];
      v45 = v44;
      v47 = v46;
      [(SBPolygon *)v16 _weightedCentroid];
      [(SBPolygon *)v16 _translate:v45 - v48, v47 - v49];
      if (!a6)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((v8 & 2) == 0)
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
  if ((v8 & 4) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if (a6)
  {
LABEL_12:
    v18 = v16;
    *a6 = v16;
  }

LABEL_13:
  v19 = [v10 pointCount];
  if (v19)
  {
    v20 = v19;
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

  if (a5 * 55.0 > sqrtf(v35))
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