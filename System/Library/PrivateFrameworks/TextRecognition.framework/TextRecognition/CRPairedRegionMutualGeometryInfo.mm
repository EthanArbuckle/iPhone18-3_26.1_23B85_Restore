@interface CRPairedRegionMutualGeometryInfo
- (CGVector)leadingOffsetAlongBaseline;
- (CGVector)leftOffsetAlongBaseline;
- (CGVector)rightOffsetAlongBaseline;
- (CGVector)trailingOffsetAlongBaseline;
- (id)initFromGeometryInfo1:(id)a3 geometryInfo2:(id)a4;
@end

@implementation CRPairedRegionMutualGeometryInfo

- (id)initFromGeometryInfo1:(id)a3 geometryInfo2:(id)a4
{
  v6 = a3;
  v7 = a4;
  v59.receiver = self;
  v59.super_class = CRPairedRegionMutualGeometryInfo;
  v8 = [(CRPairedRegionMutualGeometryInfo *)&v59 init];
  if (v8)
  {
    [v7 topLeft];
    v10 = v9;
    [v6 topLeft];
    v12 = v10 - v11;
    [v7 topLeft];
    v14 = v13;
    [v6 topLeft];
    v16 = v14 - v15;
    [v7 topRight];
    v18 = v17;
    [v6 topRight];
    v20 = v18 - v19;
    [v7 topRight];
    v22 = v21;
    [v6 topRight];
    v24 = v22 - v23;
    [v6 baselineVector];
    v27 = sqrt(v25 * v25 + v26 * v26);
    [v6 baselineVector];
    v29 = v28;
    [v6 baselineVector];
    v31 = (v16 * v30 + v12 * v29) / v27;
    [v6 baselineVector];
    v33 = v32;
    [v6 baselineVector];
    v35 = (v24 * v34 + v20 * v33) / v27;
    *(v8 + 5) = v35;
    *(v8 + 3) = v31;
    *(v8 + 4) = sqrt(round(v16 * v16 + v12 * v12) - round(v31 * v31));
    *(v8 + 6) = sqrt(round(v24 * v24 + v20 * v20) - round(v35 * v35));
    if ([v6 layoutDirection] == 2 && objc_msgSend(v7, "layoutDirection") == 2)
    {
      *(v8 + 56) = vnegq_f64(*(v8 + 40));
      v36 = vnegq_f64(*(v8 + 24));
    }

    else
    {
      *(v8 + 56) = *(v8 + 24);
      v36 = *(v8 + 40);
    }

    *(v8 + 72) = v36;
    [v6 size];
    v38 = v31 - v37;
    [v7 size];
    *(v8 + 2) = fmin(v38, fabs(v31) - v39);
    [v6 estimatedLineHeight];
    v41 = v40;
    [v7 estimatedLineHeight];
    v43 = (v41 + v42) * 0.5;
    [v6 midPoint];
    v45 = v44;
    v47 = v46;
    [v7 midPoint];
    v50 = *MEMORY[0x1E695F060];
    if (*MEMORY[0x1E695F060] > 0.0)
    {
      v51 = *(MEMORY[0x1E695F060] + 8);
      if (v51 > 0.0)
      {
        v45 = v45 * v50;
        v47 = v47 * v51;
        v48 = v48 * v50;
        v49 = v49 * v51;
      }
    }

    v52 = sqrt((v47 - v49) * (v47 - v49) + (v45 - v48) * (v45 - v48));
    [v6 size];
    v54 = v53;
    [v7 size];
    v56 = vabdd_f64(v54, v55);
    v57 = v56 / v43 > fmin((v52 + v52) / v43, 1.5);
    if (v52 >= v43 * 1.5 && (vabdd_f64(v31, v35) - v56 * 0.5) * 0.5 >= v43 * 0.5)
    {
      v57 = 0;
    }

    v8[8] = v57;
  }

  return v8;
}

- (CGVector)leftOffsetAlongBaseline
{
  objc_copyStruct(v4, &self->_leftOffsetAlongBaseline, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (CGVector)rightOffsetAlongBaseline
{
  objc_copyStruct(v4, &self->_rightOffsetAlongBaseline, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (CGVector)leadingOffsetAlongBaseline
{
  objc_copyStruct(v4, &self->_leadingOffsetAlongBaseline, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (CGVector)trailingOffsetAlongBaseline
{
  objc_copyStruct(v4, &self->_trailingOffsetAlongBaseline, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

@end