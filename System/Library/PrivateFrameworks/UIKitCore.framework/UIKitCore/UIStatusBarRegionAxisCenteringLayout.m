@interface UIStatusBarRegionAxisCenteringLayout
@end

@implementation UIStatusBarRegionAxisCenteringLayout

void __102___UIStatusBarRegionAxisCenteringLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v84 = a2;
  v6 = [v84 layoutItem];
  if (!a3)
  {
    v19 = *(a1 + 32);
    v20 = *(a1 + 96);
    v21 = *(a1 + 40);
    v22 = v21;
    if (v20 == 1)
    {
      v23 = [v21 topAnchor];
    }

    else
    {
      if (v20)
      {
        goto LABEL_35;
      }

      v23 = [v21 leadingAnchor];
    }

    v3 = v23;
LABEL_35:

    v46 = *(a1 + 96);
    v47 = *(a1 + 48);
    v48 = v47;
    if (v46 == 1)
    {
      v49 = [v47 topAnchor];
    }

    else
    {
      if (v46)
      {
        goto LABEL_40;
      }

      v49 = [v47 leadingAnchor];
    }

    v22 = v49;
LABEL_40:

    v50 = [v3 constraintEqualToAnchor:v22];
    [v19 addObject:v50];

    v51 = *(a1 + 32);
    v52 = *(a1 + 96);
    v53 = *(a1 + 40);
    v17 = v53;
    if (v52 == 1)
    {
      v54 = [v53 bottomAnchor];
    }

    else
    {
      if (v52)
      {
        goto LABEL_45;
      }

      v54 = [v53 trailingAnchor];
    }

    v22 = v54;
LABEL_45:

    v55 = *(a1 + 96);
    v56 = v6;
    v57 = v56;
    if (v55 == 1)
    {
      v58 = [v56 topAnchor];
    }

    else
    {
      if (v55)
      {
LABEL_50:

        v10 = [v22 constraintEqualToAnchor:v17];
        [v51 addObject:v10];
        goto LABEL_85;
      }

      v58 = [v56 leadingAnchor];
    }

    v17 = v58;
    goto LABEL_50;
  }

  v7 = [v84 layoutItem];
  v8 = [*(a1 + 56) objectAtIndexedSubscript:a3 - 1];
  v9 = [v8 layoutItem];

  v10 = *(*(*(a1 + 88) + 8) + 40);
  v11 = objc_alloc_init(UILayoutGuide);
  v12 = *(*(a1 + 88) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = *(a1 + 32);
  v15 = *(a1 + 96);
  v16 = v9;
  v17 = v16;
  if (v15 == 1)
  {
    v18 = [v16 bottomAnchor];
  }

  else
  {
    if (v15)
    {
      goto LABEL_10;
    }

    v18 = [v16 trailingAnchor];
  }

  v9 = v18;
LABEL_10:
  v82 = v6;

  v24 = *(a1 + 96);
  v25 = *(*(*(a1 + 88) + 8) + 40);
  v26 = v25;
  if (v24 == 1)
  {
    v27 = [v25 topAnchor];
  }

  else
  {
    if (v24)
    {
      goto LABEL_15;
    }

    v27 = [v25 leadingAnchor];
  }

  v6 = v27;
LABEL_15:

  v28 = [v9 constraintEqualToAnchor:v6];
  [v14 addObject:v28];

  v29 = *(a1 + 32);
  v30 = *(a1 + 96);
  v31 = *(*(*(a1 + 88) + 8) + 40);
  v32 = v31;
  if (v30 == 1)
  {
    v33 = [v31 bottomAnchor];
  }

  else
  {
    if (v30)
    {
      goto LABEL_20;
    }

    v33 = [v31 trailingAnchor];
  }

  v9 = v33;
LABEL_20:

  v34 = *(a1 + 96);
  v35 = v7;
  v22 = v35;
  if (v34 == 1)
  {
    v36 = [v35 topAnchor];
  }

  else
  {
    if (v34)
    {
      goto LABEL_25;
    }

    v36 = [v35 leadingAnchor];
  }

  v32 = v36;
LABEL_25:

  v37 = [v9 constraintEqualToAnchor:v32];
  [v29 addObject:v37];

  if (*(*(a1 + 64) + 8) != -1.0)
  {
    v9 = *(a1 + 32);
    v42 = *(a1 + 96);
    v43 = *(*(*(a1 + 88) + 8) + 40);
    v44 = v43;
    if (v42 == 1)
    {
      v45 = [v43 heightAnchor];
    }

    else
    {
      if (v42)
      {
LABEL_61:

        v40 = [v29 constraintEqualToConstant:*(*(a1 + 64) + 8)];
        [v9 addObject:v40];
        goto LABEL_62;
      }

      v45 = [v43 widthAnchor];
    }

    v29 = v45;
    goto LABEL_61;
  }

  if (!v10)
  {
    goto LABEL_63;
  }

  v9 = *(a1 + 32);
  v38 = *(a1 + 96);
  v39 = *(*(*(a1 + 88) + 8) + 40);
  v40 = v39;
  if (v38 == 1)
  {
    v41 = [v39 heightAnchor];
  }

  else
  {
    if (v38)
    {
      goto LABEL_53;
    }

    v41 = [v39 widthAnchor];
  }

  v29 = v41;
LABEL_53:

  v59 = *(a1 + 96);
  v60 = v10;
  v61 = v60;
  if (v59 == 1)
  {
    v62 = [v60 heightAnchor];
    goto LABEL_57;
  }

  if (!v59)
  {
    v62 = [v60 widthAnchor];
LABEL_57:
    v40 = v62;
  }

  v63 = [v29 constraintEqualToAnchor:v40];
  [v9 addObject:v63];

LABEL_62:
LABEL_63:
  [*(a1 + 72) addObject:{*(*(*(a1 + 88) + 8) + 40), v82}];
  if (*(a1 + 104) - 1 != a3)
  {
    v6 = v83;
    goto LABEL_85;
  }

  v64 = *(a1 + 32);
  v65 = *(a1 + 96);
  v66 = v22;
  v22 = v66;
  if (v65 == 1)
  {
    v67 = [v66 bottomAnchor];
  }

  else
  {
    if (v65)
    {
      goto LABEL_70;
    }

    v67 = [v66 trailingAnchor];
  }

  v29 = v67;
LABEL_70:

  v68 = *(a1 + 96);
  v69 = *(a1 + 80);
  v70 = v69;
  if (v68 == 1)
  {
    v71 = [v69 topAnchor];
  }

  else
  {
    if (v68)
    {
      goto LABEL_75;
    }

    v71 = [v69 leadingAnchor];
  }

  v9 = v71;
LABEL_75:

  v72 = [v29 constraintEqualToAnchor:v9];
  [v64 addObject:v72];

  v73 = *(a1 + 32);
  v74 = *(a1 + 96);
  v75 = *(a1 + 80);
  v76 = v75;
  if (v74 == 1)
  {
    v29 = [v75 bottomAnchor];
    v6 = v83;
  }

  else
  {
    v6 = v83;
    if (!v74)
    {
      v29 = [v75 trailingAnchor];
    }
  }

  v77 = *(a1 + 96);
  v78 = *(a1 + 48);
  v79 = v78;
  if (v77 == 1)
  {
    v80 = [v78 bottomAnchor];
    goto LABEL_83;
  }

  if (!v77)
  {
    v80 = [v78 trailingAnchor];
LABEL_83:
    a1 = v80;
  }

  v81 = [v29 constraintEqualToAnchor:a1];
  [v73 addObject:v81];

LABEL_85:
}

@end