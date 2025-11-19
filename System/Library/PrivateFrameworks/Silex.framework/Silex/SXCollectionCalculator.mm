@interface SXCollectionCalculator
+ (id)layoutWithCollectionDisplay:(id)a3 width:(double)a4 numberOfComponents:(unint64_t)a5 unitConverter:(id)a6;
@end

@implementation SXCollectionCalculator

+ (id)layoutWithCollectionDisplay:(id)a3 width:(double)a4 numberOfComponents:(unint64_t)a5 unitConverter:(id)a6
{
  v9 = a3;
  v10 = a6;
  v11 = [v9 gutter];
  [v10 convertValueToPoints:{v11, v12}];
  v14 = v13;
  v15 = [v9 minimumWidth];
  [v10 convertValueToPoints:{v15, v16}];
  if (v17 >= a4)
  {
    v17 = a4;
  }

  if (v14 > a4)
  {
    v17 = a4;
  }

  if (v17 >= 40.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 40.0;
  }

  v19 = [v9 maximumWidth];
  [v10 convertValueToPoints:{v19, v20}];
  v22 = 0;
  if (v21 == 0.0)
  {
    v21 = a4;
  }

  if (v21 >= v18)
  {
    v23 = v21;
  }

  else
  {
    v23 = v18;
  }

  do
  {
    v24 = v22++;
  }

  while (v22 <= a5 && (a4 - v14 * (v22 - 1)) / v22 > v18);
  if (v24 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  v26 = [v9 widows];
  if (v25 >= a5 || v26)
  {
    if ([v9 widows] != 1)
    {
      goto LABEL_26;
    }

      ;
    }

    goto LABEL_25;
  }

  if ((a5 & 1) == 0)
  {
      ;
    }

LABEL_25:
    ++v25;
    goto LABEL_26;
  }

  if (v25 + a5 / v25 * v25 - a5 >= 2)
  {
    do
    {
      --v25;
    }

    while (v25 + a5 / v25 * v25 - a5 > 1);
  }

LABEL_26:
  [v10 convertValueToPoints:{0x4069000000000000, 2}];
  v61 = v29;
  v30 = [v9 rowSpacing];
  [v10 convertValueToPoints:{v30, v31}];
  v60 = v32;
  v33 = vcvtpd_u64_f64(a5 / v25);
  v34 = [v9 variableSizing];
  v35 = [MEMORY[0x1E695DF70] array];
  if (v33)
  {
    while (1)
    {
      v36 = a5;
      v37 = a5 >= v25;
      a5 -= v25;
      if (v37)
      {
        v38 = v25;
      }

      else
      {
        v38 = v36;
      }

      if (v34)
      {
        v39 = v38;
      }

      else
      {
        v39 = v25;
      }

      v40 = v38;
      v41 = v39 - 1;
      v42 = v25;
      if (v34)
      {
        v42 = v38;
      }

      v43 = a4 - v14 * v41;
      if (v43 / v42 >= v23)
      {
        v44 = v23;
      }

      else
      {
        v44 = v43 / v42;
      }

      v45 = [v9 distribution];
      v46 = floor(v44);
      if (v45 || (v14 == 0.0 ? (v47 = v44 < v23) : (v47 = 0), !v47))
      {
        v44 = v46;
      }

      if (v34)
      {
        v48 = v43 - v44 * v40;
      }

      else
      {
        v48 = v43 - v44 * v40 + (v25 - v38) * v14;
      }

      v49 = 0.0;
      if ([v9 distribution] == 1)
      {
        if ([v9 alignment] == 1)
        {
          v50 = floor(v48 * 0.5);
          v49 = ceil(v48 * 0.5);
        }

        else
        {
          v50 = v48;
          if ([v9 alignment] != 2)
          {
            v50 = 0.0;
            if ([v9 alignment])
            {
              v49 = 0.0;
            }

            else
            {
              v49 = v48;
            }
          }
        }
      }

      else
      {
        v50 = 0.0;
      }

      v51 = v38 - 1;
      if (v38 <= 1)
      {
        v52 = 0.0;
      }

      else
      {
        v52 = v14 + (v48 - (v50 + v49)) / v51;
      }

      v53 = v52;
      v54 = -((floorf(v53) * v51) - v52 * (v38 - 1));
      if (v54 <= 0.00000011920929)
      {
        goto LABEL_59;
      }

      v55 = [v9 distribution];
      if (!v55)
      {
        goto LABEL_58;
      }

      if (v55 == 1)
      {
        break;
      }

LABEL_59:
      v56 = objc_alloc_init(SXCollectionRowLayout);
      [(SXCollectionRowLayout *)v56 setIntendedComponentsPerRow:v25];
      [(SXCollectionRowLayout *)v56 setComponentsPerRow:v38];
      [(SXCollectionRowLayout *)v56 setLeftMargin:v50];
      [(SXCollectionRowLayout *)v56 setRightMargin:v49];
      [(SXCollectionRowLayout *)v56 setComponentWidth:v44];
      [(SXCollectionRowLayout *)v56 setSpaceBetweenComponents:floor(v52)];
      [v35 addObject:v56];

      if (!--v33)
      {
        goto LABEL_70;
      }
    }

    if ([v9 alignment] != 1)
    {
      if ([v9 alignment] == 2)
      {
        v50 = v54;
      }

      else if (![v9 alignment])
      {
        v49 = v54;
      }

      goto LABEL_59;
    }

LABEL_58:
    v50 = floor(v54 * 0.5);
    v49 = ceil(v54 * 0.5);
    goto LABEL_59;
  }

LABEL_70:
  if (v60 >= v61)
  {
    v57 = v61;
  }

  else
  {
    v57 = v60;
  }

  v58 = objc_alloc_init(SXCollectionLayout);
  [(SXCollectionLayout *)v58 setSpaceBetweenRows:v57];
  [(SXCollectionLayout *)v58 setRowsLayouts:v35];

  return v58;
}

@end