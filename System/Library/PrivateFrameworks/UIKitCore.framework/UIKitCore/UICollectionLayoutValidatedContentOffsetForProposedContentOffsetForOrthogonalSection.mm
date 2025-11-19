@interface UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection
@end

@implementation UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection

double ___UICollectionLayoutValidatedContentOffsetForProposedContentOffsetForOrthogonalSection_block_invoke(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = a5 + a5 + *(a1 + 40) - *(a1 + 48);
  v11 = fabs(a4);
  IsNull = CGRectIsNull(*(a1 + 56));
  if (v11 >= 2.22044605e-16)
  {
    v15 = IsNull;
    v16 = *(a1 + 32);
    v17 = 0.0;
    v18 = 0.0;
    v19 = 0.0;
    if (v16)
    {
      v19 = *(v16 + 96);
      v18 = *(v16 + 104);
    }

    v20 = *(a1 + 104);
    if (v20)
    {
      v21 = *(a1 + 88) - v19;
      v22 = *(a1 + 96) - v18;
      v23 = 1.0;
      v24 = v22 < 0.0;
      v25 = v22 <= 0.0;
      v26 = 1.0;
      if (v25)
      {
        v26 = 0.0;
        if (v24)
        {
          v26 = -1.0;
        }
      }

      if (v21 <= 0.0)
      {
        v23 = 0.0;
        if (v21 < 0.0)
        {
          v23 = -1.0;
        }
      }

      if (v20)
      {
        v17 = v23;
      }

      else
      {
        v17 = 0.0;
      }

      if ((v20 & 2) != 0)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0.0;
      }
    }

    else
    {
      v27 = 0.0;
    }

    v28 = _UIPointValueForAxis(v20, a2, a3) - v10 + 0.0001;
    v29 = *(a1 + 104);
    v30 = 1.0;
    if (v29 == 2)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = v27;
    }

    if (v29 == 3)
    {
      v31 = 1.0;
      v32 = 1.0;
    }

    else
    {
      v32 = v17;
    }

    if (v29 == 1)
    {
      v31 = v27;
    }

    else
    {
      v30 = v32;
    }

    v33 = v28 < 0.0;
    if (v28 >= 0.0)
    {
      v34 = v31;
    }

    else
    {
      v34 = v27;
    }

    if (v33)
    {
      v30 = v17;
    }

    if (v29 == 1)
    {
      v35 = v30;
    }

    else
    {
      v35 = v34;
    }

    v36 = _UIPointValueForAxis(v29, a2, a3) / a4;
    v37 = -v35;
    if (v35 >= 0.0)
    {
      v37 = v35;
    }

    if (v37 > 2.22044605e-16 && v15)
    {
      if (v35 >= 0.0)
      {
        v38 = ceil(v36 + -0.005);
      }

      else
      {
        v38 = floor(v36 + 0.005);
      }
    }

    else
    {
      v38 = round(v36);
    }

    v39 = v38 & ~(v38 >> 63);
    v14 = _UISetPointValueForAxis(*(a1 + 104), a2, a3, v39 * a4);
    v13 = v40;
    if (!v15)
    {
      v52 = a3;
      v41 = _UIPointValueForAxis(*(a1 + 104), *(a1 + 56), *(a1 + 64));
      v42 = a5;
      v43 = v41 + _UISizeValueForAxis(*(a1 + 104), *(a1 + 72), *(a1 + 80));
      v44 = _UIPointValueForAxis(*(a1 + 104), v14, v13);
      v45 = *(a1 + 48);
      v46 = v44 + v45 - v42;
      if (v45 - a4 + 0.0001 >= 0.0 && v44 > v41 != v46 < v43)
      {
        if (v44 <= v41)
        {
          v47 = 0;
        }

        else
        {
          v47 = (0.0 - ceil((v44 - v41) / a4));
        }

        if (v46 < v43)
        {
          v47 = (ceil((v43 - v46) / a4) + v47);
        }

        v14 = _UISetPointValueForAxis(*(a1 + 104), a2, v52, (v47 + v39) * a4);
        v13 = v48;
      }
    }
  }

  else
  {
    v13 = a3;
    v14 = a2;
  }

  v49 = _UIPointValueForAxis(*(a1 + 104), v14, v13);
  v50 = 0.0;
  if (v10 < 0.0)
  {
    return _UISetPointValueForAxis(*(a1 + 104), v14, v13, v50);
  }

  if (v49 < 0.0)
  {
    return _UISetPointValueForAxis(*(a1 + 104), v14, v13, v50);
  }

  v50 = v10;
  if (v49 > v10)
  {
    return _UISetPointValueForAxis(*(a1 + 104), v14, v13, v50);
  }

  return v14;
}

@end