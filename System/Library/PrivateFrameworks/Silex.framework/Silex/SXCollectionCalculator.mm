@interface SXCollectionCalculator
+ (id)layoutWithCollectionDisplay:(id)display width:(double)width numberOfComponents:(unint64_t)components unitConverter:(id)converter;
@end

@implementation SXCollectionCalculator

+ (id)layoutWithCollectionDisplay:(id)display width:(double)width numberOfComponents:(unint64_t)components unitConverter:(id)converter
{
  displayCopy = display;
  converterCopy = converter;
  gutter = [displayCopy gutter];
  [converterCopy convertValueToPoints:{gutter, v12}];
  v14 = v13;
  minimumWidth = [displayCopy minimumWidth];
  [converterCopy convertValueToPoints:{minimumWidth, v16}];
  if (widthCopy2 >= width)
  {
    widthCopy2 = width;
  }

  if (v14 > width)
  {
    widthCopy2 = width;
  }

  if (widthCopy2 >= 40.0)
  {
    v18 = widthCopy2;
  }

  else
  {
    v18 = 40.0;
  }

  maximumWidth = [displayCopy maximumWidth];
  [converterCopy convertValueToPoints:{maximumWidth, v20}];
  v22 = 0;
  if (widthCopy3 == 0.0)
  {
    widthCopy3 = width;
  }

  if (widthCopy3 >= v18)
  {
    v23 = widthCopy3;
  }

  else
  {
    v23 = v18;
  }

  do
  {
    v24 = v22++;
  }

  while (v22 <= components && (width - v14 * (v22 - 1)) / v22 > v18);
  if (v24 <= 1)
  {
    v25 = 1;
  }

  else
  {
    v25 = v24;
  }

  widows = [displayCopy widows];
  if (v25 >= components || widows)
  {
    if ([displayCopy widows] != 1)
    {
      goto LABEL_26;
    }

      ;
    }

    goto LABEL_25;
  }

  if ((components & 1) == 0)
  {
      ;
    }

LABEL_25:
    ++v25;
    goto LABEL_26;
  }

  if (v25 + components / v25 * v25 - components >= 2)
  {
    do
    {
      --v25;
    }

    while (v25 + components / v25 * v25 - components > 1);
  }

LABEL_26:
  [converterCopy convertValueToPoints:{0x4069000000000000, 2}];
  v61 = v29;
  rowSpacing = [displayCopy rowSpacing];
  [converterCopy convertValueToPoints:{rowSpacing, v31}];
  v60 = v32;
  v33 = vcvtpd_u64_f64(components / v25);
  variableSizing = [displayCopy variableSizing];
  array = [MEMORY[0x1E695DF70] array];
  if (v33)
  {
    while (1)
    {
      componentsCopy = components;
      v37 = components >= v25;
      components -= v25;
      if (v37)
      {
        v38 = v25;
      }

      else
      {
        v38 = componentsCopy;
      }

      if (variableSizing)
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
      if (variableSizing)
      {
        v42 = v38;
      }

      v43 = width - v14 * v41;
      if (v43 / v42 >= v23)
      {
        v44 = v23;
      }

      else
      {
        v44 = v43 / v42;
      }

      distribution = [displayCopy distribution];
      v46 = floor(v44);
      if (distribution || (v14 == 0.0 ? (v47 = v44 < v23) : (v47 = 0), !v47))
      {
        v44 = v46;
      }

      if (variableSizing)
      {
        v48 = v43 - v44 * v40;
      }

      else
      {
        v48 = v43 - v44 * v40 + (v25 - v38) * v14;
      }

      v49 = 0.0;
      if ([displayCopy distribution] == 1)
      {
        if ([displayCopy alignment] == 1)
        {
          v50 = floor(v48 * 0.5);
          v49 = ceil(v48 * 0.5);
        }

        else
        {
          v50 = v48;
          if ([displayCopy alignment] != 2)
          {
            v50 = 0.0;
            if ([displayCopy alignment])
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

      distribution2 = [displayCopy distribution];
      if (!distribution2)
      {
        goto LABEL_58;
      }

      if (distribution2 == 1)
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
      [array addObject:v56];

      if (!--v33)
      {
        goto LABEL_70;
      }
    }

    if ([displayCopy alignment] != 1)
    {
      if ([displayCopy alignment] == 2)
      {
        v50 = v54;
      }

      else if (![displayCopy alignment])
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
  [(SXCollectionLayout *)v58 setRowsLayouts:array];

  return v58;
}

@end