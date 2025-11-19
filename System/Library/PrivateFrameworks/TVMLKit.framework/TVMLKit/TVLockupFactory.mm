@interface TVLockupFactory
@end

@implementation TVLockupFactory

_TVStackingPosterView *__35___TVLockupFactory__registerLockup__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [(objc_class *)[TVViewLayout layoutClassForElement:?]element:"layoutWithLayout:element:", v7, v6];

    [v9 setAcceptsFocus:1];
    [_TVLockupFactory _configureCell:v8 layout:v9 element:v6];
    v10 = v8;
    v7 = v9;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v8;
    }

    else
    {
      v11 = objc_alloc_init(_TVStackingPosterView);
    }

    v10 = v11;
    [_TVLockupFactory _configureStackingPoster:v11 layout:0 element:v6 forMetrics:0];
  }

  return v10;
}

double __52___TVLockupFactory_cellMetricsForCollectionElement___block_invoke(void *a1, uint64_t a2)
{
  v2 = *(a1[4] + 8);
  v5 = *(v2 + 32);
  v4 = *(v2 + 40);
  v3 = (v2 + 32);
  if (v5 == *MEMORY[0x277CBF3A8] && v4 == *(MEMORY[0x277CBF3A8] + 8))
  {
    *v3 = *a2;
    v17 = *(a1[5] + 8);
    v18 = *(a2 + 32);
    *(v17 + 32) = *(a2 + 16);
    *(v17 + 48) = v18;
    v19 = *(a1[6] + 8);
    v20 = *(a2 + 64);
    *(v19 + 32) = *(a2 + 48);
    *(v19 + 48) = v20;
    v21 = *(a1[7] + 8);
    v22 = *(a2 + 96);
    *(v21 + 32) = *(a2 + 80);
    *(v21 + 48) = v22;
    v23 = *(a1[8] + 8);
    v24 = *(a2 + 112);
    v25 = *(a2 + 128);
    *(v23 + 32) = v24;
    *(v23 + 48) = v25;
    return *&v24;
  }

  if (v5 != 0.0 && v5 != *a2)
  {
    *v3 = 0;
    *(*(a1[5] + 8) + 56) = 0;
    *(*(a1[5] + 8) + 40) = 0;
    *(*(a1[6] + 8) + 56) = 0;
    *(*(a1[6] + 8) + 40) = 0;
    *(*(a1[7] + 8) + 56) = 0;
    *(*(a1[7] + 8) + 40) = 0;
    *(*(a1[8] + 8) + 56) = 0;
    *(*(a1[8] + 8) + 40) = 0;
    v4 = *(*(a1[4] + 8) + 40);
  }

  v7 = *(a1[5] + 8);
  v8 = *(v7 + 32);
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = v10 - v8;
  v12 = v4 - (v8 + *(v7 + 48));
  v13 = *(a2 + 32);
  v14 = v9 - (v10 + v13);
  v15 = a1[9];
  if (v15 == 3)
  {
    v16 = v14 - v12;
    goto LABEL_13;
  }

  if (v15 == 2)
  {
    v16 = floor((v14 - v12) * 0.5);
LABEL_13:
    v11 = v11 + v16;
  }

  if (v11 <= 0.0)
  {
    if (v11 < 0.0)
    {
      v9 = v9 - v11;
      *(a2 + 8) = v9;
      *(a2 + 16) = v10 - v11;
      *(a2 + 112) = fmin(v11 + *(a2 + 112), 0.0);
    }
  }

  else
  {
    *(v7 + 32) = v8 + v11;
    *(*(a1[4] + 8) + 40) = v11 + *(*(a1[4] + 8) + 40);
    *(*(a1[8] + 8) + 32) = fmin(*(*(a1[8] + 8) + 32) - v11, 0.0);
    v9 = *(a2 + 8);
  }

  v26 = *(a1[4] + 8);
  v27 = *(v26 + 40);
  v28 = v9 - v27;
  if (v9 - v27 <= 0.0)
  {
    if (v9 - v27 < 0.0)
    {
      *(a2 + 8) = v9 - v28;
      v13 = v13 - v28;
      *(a2 + 32) = v13;
      *(a2 + 128) = fmax(v28 + *(a2 + 128), 0.0);
    }
  }

  else
  {
    *(v26 + 40) = v27 + v28;
    *(*(a1[5] + 8) + 48) = v28 + *(*(a1[5] + 8) + 48);
    *(*(a1[8] + 8) + 48) = fmax(*(*(a1[8] + 8) + 48) - v28, 0.0);
    v13 = *(a2 + 32);
  }

  *(*(a1[5] + 8) + 48) = fmin(*(*(a1[5] + 8) + 48), v13);
  *(*(a1[6] + 8) + 32) = fmin(*(*(a1[6] + 8) + 32), *(a2 + 48));
  *(*(a1[6] + 8) + 48) = fmin(*(*(a1[6] + 8) + 48), *(a2 + 64));
  *(*(a1[7] + 8) + 32) = fmin(*(*(a1[7] + 8) + 32), *(a2 + 80));
  *(*(a1[7] + 8) + 48) = fmin(*(*(a1[7] + 8) + 48), *(a2 + 96));
  *(*(a1[8] + 8) + 32) = fmax(*(*(a1[8] + 8) + 32), *(a2 + 112));
  v29 = *(a1[8] + 8);
  *&v24 = fmax(*(v29 + 48), *(a2 + 128));
  *(v29 + 48) = v24;
  return *&v24;
}

void *__71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  if (result != a2)
  {
    return [result setOverlayView:0];
  }

  return result;
}

void *__71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke_2(uint64_t a1, void *a2)
{
  result = *(a1 + 32);
  if (result != a2)
  {
    return [result setOverlayView:0];
  }

  return result;
}

void __71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v12 = a2;
  v7 = [*(a1 + 32) objectAtIndex:a3];
  v8 = [v12 tv_elementType];
  if (v8 == [v7 tv_elementType])
  {
    if ([v12 tv_elementType] == 55)
    {
      v9 = [v12 valueForTVViewStyle:@"tv-text-highlight-style"];
      v10 = [v7 style];
      v11 = [v10 tv_textHighlightStyle];

      if (v9 != v11 && ([v9 isEqualToString:v11] & 1) == 0)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void __71___TVLockupFactory__configureStackingPoster_layout_element_forMetrics___block_invoke_23(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v25 = v5;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v6 = [*(a1 + 32) objectAtIndex:a3];
    v7 = v25;
    v8 = v6;
  }

  else
  {
    v7 = v5;
    v8 = 0;
  }

  v9 = [v7 tv_elementType];
  v10 = [v8 tv_associatedIKViewElement];
  v11 = v25;
  v12 = v10;
  if (v8 && v10 == v25 && (v13 = [v25 updateType], v11 = v25, !v13))
  {
    v16 = v8;
  }

  else
  {
    [TVViewLayout layoutClassForElement:v11];
    v14 = objc_opt_new();
    [v14 setAcceptsFocus:*(a1 + 80)];
    v15 = +[TVInterfaceFactory sharedInterfaceFactory];
    v16 = [v15 _viewFromElement:v25 layout:v14 existingView:v8];

    if ([v25 isDisabled])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [*(a1 + 40) tv_elementType] == 24 && objc_msgSend(v25, "tv_elementType") == 55 && (objc_msgSend(v25, "tv_textStyle") == 1 || objc_msgSend(v25, "tv_textStyle") == 2))
      {
        v17 = v16;
        v18 = [v17 textColor];
        v19 = [v18 colorWithAlphaComponent:0.4];

        [v17 setTextColor:v19];
      }
    }
  }

  v20 = *(*(a1 + 64) + 8);
  v22 = *(v20 + 40);
  v21 = (v20 + 40);
  if (!v22 && (v9 == 30 || v9 == 16))
  {
    objc_storeStrong(v21, v16);
  }

  v23 = *(*(a1 + 72) + 8);
  v24 = *(v23 + 24);
  if (v16 != v8)
  {
    v24 = 0;
  }

  *(v23 + 24) = v24;
  if (v16)
  {
    [v16 tv_setAssociatedIKViewElement:v25];
    [*(a1 + 48) addObject:v16];
  }
}

id __55___TVLockupFactory__configurationIdentifierForElement___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = a2;
  v7 = [(__CFString *)v5 length];
  v8 = @"none";
  if (v7)
  {
    v8 = v5;
  }

  v9 = [v4 stringWithFormat:@"%@:%@", v6, v8];;

  return v9;
}

id __55___TVLockupFactory__configurationIdentifierForElement___block_invoke_4(uint64_t a1, void *a2)
{
  [a2 tv_imageScaleToSize];
  v4 = v3;
  v6 = v5;
  v7 = [MEMORY[0x277CCAB68] string];
  [v7 appendString:@"{"];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) style];
  [v9 tv_margin];
  v10 = (*(v8 + 16))(v8, @"margin");
  [v7 appendString:v10];

  v11 = (*(*(a1 + 48) + 16))(v4);
  [v7 appendString:v11];

  v12 = (*(*(a1 + 48) + 16))(v6);
  [v7 appendString:v12];

  [v7 appendString:@"}"];
  if ([v7 length])
  {
    v13 = [v7 copy];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __55___TVLockupFactory__configurationIdentifierForElement___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = [a2 style];
  v4 = [v3 tv_maxTextLines];

  if (v4 == 1)
  {
    v5 = [MEMORY[0x277CCAB68] string];
    [v5 appendString:@"{"];
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) style];
    [v7 tv_margin];
    v8 = (*(v6 + 16))(v6, @"margin");
    [v5 appendString:v8];

    v9 = *(a1 + 48);
    v10 = [*(a1 + 32) style];
    v11 = [v10 tv_textStyle];
    v12 = (*(v9 + 16))(v9, @"textStyle", v11);
    [v5 appendString:v12];

    v13 = *(a1 + 56);
    v14 = [*(a1 + 32) style];
    [v14 tv_fontSize];
    v15 = (*(v13 + 16))(v13, @"fontSize");
    [v5 appendString:v15];

    v16 = *(a1 + 48);
    v17 = [*(a1 + 32) style];
    v18 = [v17 tv_fontWeight];
    v19 = (*(v16 + 16))(v16, @"fontWeight", v18);
    [v5 appendString:v19];

    v20 = *(a1 + 48);
    v21 = [*(a1 + 32) style];
    v22 = [v21 tv_fontFamily];
    v23 = (*(v20 + 16))(v20, @"fontFamily", v22);
    [v5 appendString:v23];

    [v5 appendString:@"}"];
  }

  else
  {
    v5 = 0;
  }

  v24 = [v5 copy];

  return v24;
}

@end