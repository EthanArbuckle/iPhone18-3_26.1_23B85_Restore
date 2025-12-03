@interface CRRegionGroupGeometryInfo
- (id)_geometryInfoForRegion:(void *)region;
- (id)initFromRegionGroup:(id)group;
@end

@implementation CRRegionGroupGeometryInfo

- (id)initFromRegionGroup:(id)group
{
  groupCopy = group;
  subregions = [groupCopy subregions];
  if ([subregions count])
  {
    subregions2 = [groupCopy subregions];
    firstObject = [subregions2 firstObject];
    layoutDirection = [firstObject layoutDirection];
  }

  else
  {
    layoutDirection = 0;
  }

  v101.receiver = self;
  v101.super_class = CRRegionGroupGeometryInfo;
  v10 = [(CRRegionGeometryInfo *)&v101 initFromRegion:groupCopy layoutDirection:layoutDirection];
  if (!v10)
  {
    goto LABEL_82;
  }

  subregions3 = [groupCopy subregions];
  if (![subregions3 count])
  {
    v13 = 0;
    goto LABEL_9;
  }

  firstObject2 = [subregions3 firstObject];
  v13 = [CRRegionGroupGeometryInfo _geometryInfoForRegion:firstObject2];

  if (!v13)
  {
LABEL_9:
    isKindOfClass = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
LABEL_10:
  objc_storeStrong(v10 + 16, v13);
  v15 = [subregions3 count];
  if (v15 == 1)
  {
    v16 = v10[16];
  }

  else
  {
    lastObject = [subregions3 lastObject];
    v16 = [CRRegionGroupGeometryInfo _geometryInfoForRegion:lastObject];
  }

  objc_storeStrong(v10 + 17, v16);
  if (v15 != 1)
  {
  }

  *(v10 + 121) = 0;
  *(v10 + 120) = 0;
  *(v10 + 122) = 0;
  if ([subregions3 count] >= 2)
  {
    if ([subregions3 count] < 2)
    {
      [v10 setEstimatedLineHeight:{0.0 / (objc_msgSend(subregions3, "count") - 1)}];
      goto LABEL_81;
    }

    v85 = v13;
    v86 = groupCopy;
    v17 = 0;
    v89 = 0;
    v87 = *(MEMORY[0x1E695F060] + 8);
    v88 = *MEMORY[0x1E695F060];
    v18 = *MEMORY[0x1E695F060] > 0.0;
    if (v87 <= 0.0)
    {
      v18 = 0;
    }

    v90 = v18;
    v19 = 0.0;
    while (1)
    {
      v20 = [subregions3 objectAtIndexedSubscript:{v17, v85, v86}];
      boundingQuad = [v20 boundingQuad];
      denormalizedQuad = [boundingQuad denormalizedQuad];

      v23 = [subregions3 objectAtIndexedSubscript:v17 + 1];
      boundingQuad2 = [v23 boundingQuad];
      denormalizedQuad2 = [boundingQuad2 denormalizedQuad];

      v26 = [subregions3 objectAtIndexedSubscript:v17];
      v27 = [CRRegionGroupGeometryInfo _geometryInfoForRegion:v26];

      v28 = [subregions3 objectAtIndexedSubscript:v17 + 1];
      v29 = [CRRegionGroupGeometryInfo _geometryInfoForRegion:v28];

      if ((isKindOfClass & (v27 != 0)) != 0)
      {
        firstSubregion = [v27 firstSubregion];
        [firstSubregion size];
        v32 = v31;
      }

      else
      {
        [denormalizedQuad size];
        v32 = v33;
      }

      v100 = v19;
      if ((isKindOfClass & (v29 != 0)) != 0)
      {
        firstSubregion2 = [v29 firstSubregion];
        [firstSubregion2 size];
        v98 = v35;
      }

      else
      {
        [denormalizedQuad2 size];
        v98 = v36;
      }

      [denormalizedQuad2 topLeft];
      v97 = v37;
      [denormalizedQuad topLeft];
      v96 = v38;
      [denormalizedQuad2 topLeft];
      v95 = v39;
      [denormalizedQuad topLeft];
      v94 = v40;
      [denormalizedQuad2 topRight];
      v93 = v41;
      [denormalizedQuad topRight];
      v92 = v42;
      [denormalizedQuad2 topRight];
      v91 = v43;
      [denormalizedQuad topRight];
      v45 = v44;
      [denormalizedQuad bottomRight];
      v47 = v46;
      [denormalizedQuad bottomLeft];
      v49 = v48;
      [denormalizedQuad bottomRight];
      v51 = v50;
      [denormalizedQuad bottomLeft];
      v53 = v52;
      [denormalizedQuad midPoint];
      v55 = v54;
      v57 = v56;
      [denormalizedQuad2 midPoint];
      if (v90)
      {
        v55 = v88 * v55;
        v57 = v87 * v57;
        v58 = v88 * v58;
        v59 = v87 * v59;
      }

      v99 = v32;
      v60 = (v32 + v98) * 0.5;
      v61 = v47 - v49;
      v62 = sqrt((v51 - v53) * (v51 - v53) + v61 * v61);
      v63 = ((v95 - v94) * (v51 - v53) + (v97 - v96) * (v47 - v49)) / v62;
      v64 = -((v91 - v45) * (v51 - v53) + (v93 - v92) * v61) / v62;
      v65 = sqrt((v57 - v59) * (v57 - v59) + (v55 - v58) * (v55 - v58));
      [denormalizedQuad size];
      v67 = v66;
      [denormalizedQuad2 size];
      v69 = vabdd_f64(v67, v68);
      v70 = v69 / v60;
      v71 = fmin((v65 + v65) / v60, 1.4);
      if (v65 < v60 * 1.4)
      {
        break;
      }

      v73 = 0.5;
      v74 = (vabdd_f64(v63, v64) - v69 * 0.5) * 0.5 >= v60 * 0.5 || v70 <= v71;
      v72 = v100;
      if (!v74)
      {
        goto LABEL_39;
      }

      if (*(v10 + 120) == 1 && v70 > v71)
      {
        v75 = 0;
        v89 = 1;
        v76 = v99;
        goto LABEL_72;
      }

LABEL_43:
      v76 = v99;
      v77 = fabs(v63) / v99;
      v78 = fabs(v64) / v99;
      if (v77 < v73 && v78 >= v73)
      {
        if (*(v10 + 121) == 1 && *(v10 + 122) == 1)
        {
          *(v10 + 122) = 0;
        }

        else if (*(v10 + 120) == 1 && v70 <= v71 || (*(v10 + 122) & 1) != 0)
        {
LABEL_71:
          v75 = 0;
          v89 = 1;
          goto LABEL_72;
        }

        if (!v17)
        {
          *(v10 + 121) = 1;
        }
      }

      if (v77 < v73 || v78 >= v73)
      {
        goto LABEL_59;
      }

      if (*(v10 + 121) == 1)
      {
        if (*(v10 + 122) != 1)
        {
          goto LABEL_71;
        }

        *(v10 + 121) = 0;
      }

      else if (*(v10 + 120) == 1 && v70 <= v71)
      {
        goto LABEL_71;
      }

      if (!v17)
      {
        *(v10 + 122) = 1;
LABEL_59:
        v75 = 1;
        if (!v17 && v77 < v73 && v78 < v73)
        {
          *(v10 + 121) = 1;
          *(v10 + 122) = 1;
        }

        goto LABEL_72;
      }

      v75 = 1;
LABEL_72:
      v19 = v72 + v76;

      if (v75)
      {
        v82 = [subregions3 count];
        v83 = v17 + 2;
        ++v17;
        if (v83 < v82)
        {
          continue;
        }
      }

      [v10 setEstimatedLineHeight:{v19 / (objc_msgSend(subregions3, "count") - 1)}];
      v13 = v85;
      groupCopy = v86;
      if (v89)
      {
        *(v10 + 121) = 0;
        *(v10 + 120) = 0;
        *(v10 + 122) = 0;
      }

      goto LABEL_81;
    }

    v72 = v100;
    v73 = 0.5;
    if (v70 <= v71)
    {
      goto LABEL_43;
    }

LABEL_39:
    if (!v17 || *(v10 + 121) == 1 && *(v10 + 122) == 1)
    {
      *(v10 + 120) = 1;
      *(v10 + 121) = 0;
      *(v10 + 122) = 0;
    }

    goto LABEL_43;
  }

LABEL_81:

LABEL_82:
  return v10;
}

- (id)_geometryInfoForRegion:(void *)region
{
  regionCopy = region;
  if (objc_opt_respondsToSelector())
  {
    geometryInfo = [regionCopy geometryInfo];
  }

  else
  {
    geometryInfo = -[CRRegionGeometryInfo initFromRegion:layoutDirection:]([CRRegionGeometryInfo alloc], "initFromRegion:layoutDirection:", regionCopy, [regionCopy layoutDirection]);
  }

  v3 = geometryInfo;

  return v3;
}

@end