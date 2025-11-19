@interface UIStatusBarRegionAxisFillingLayout
@end

@implementation UIStatusBarRegionAxisFillingLayout

void __52___UIStatusBarRegionAxisFillingLayout_fillingLayout__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1ED4A0930;
  qword_1ED4A0930 = v1;
}

void __100___UIStatusBarRegionAxisFillingLayout_constraintsForDisplayItems_layoutGuides_inContainerItem_axis___block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 layoutItem];
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = v4;
  v8 = v7;
  if (v6 == 1)
  {
    v9 = [v7 topAnchor];
  }

  else
  {
    if (v6)
    {
      goto LABEL_6;
    }

    v9 = [v7 leftAnchor];
  }

  v2 = v9;
LABEL_6:

  v10 = *(a1 + 48);
  v11 = *(a1 + 40);
  v12 = v11;
  if (v10 == 1)
  {
    v13 = [v11 topAnchor];
  }

  else
  {
    if (v10)
    {
      goto LABEL_11;
    }

    v13 = [v11 leftAnchor];
  }

  v6 = v13;
LABEL_11:

  v14 = [v2 constraintEqualToAnchor:v6];
  LODWORD(v15) = 1112276992;
  v16 = [v14 _ui_constraintWithPriority:v15];
  [v5 addObject:v16];

  v17 = *(a1 + 32);
  v18 = *(a1 + 48);
  v19 = v8;
  v20 = v19;
  if (v18 == 1)
  {
    v21 = [v19 bottomAnchor];
  }

  else
  {
    if (v18)
    {
      goto LABEL_16;
    }

    v21 = [v19 rightAnchor];
  }

  v2 = v21;
LABEL_16:

  v22 = *(a1 + 48);
  v23 = *(a1 + 40);
  v24 = v23;
  if (v22 == 1)
  {
    v25 = [v23 bottomAnchor];
  }

  else
  {
    if (v22)
    {
      goto LABEL_21;
    }

    v25 = [v23 rightAnchor];
  }

  v18 = v25;
LABEL_21:

  v26 = [v2 constraintEqualToAnchor:v18];
  LODWORD(v27) = 1112276992;
  v28 = [v26 _ui_constraintWithPriority:v27];
  [v17 addObject:v28];

  v29 = *(a1 + 32);
  v30 = *(a1 + 48);
  v31 = v20;
  v38 = v31;
  if (v30 == 1)
  {
    v32 = [v31 centerYAnchor];
  }

  else
  {
    if (v30)
    {
      goto LABEL_26;
    }

    v32 = [v31 centerXAnchor];
  }

  v20 = v32;
  v31 = v38;
LABEL_26:

  v33 = *(a1 + 48);
  v34 = *(a1 + 40);
  v35 = v34;
  if (v33 == 1)
  {
    v36 = [v34 centerYAnchor];
  }

  else
  {
    if (v33)
    {
      goto LABEL_31;
    }

    v36 = [v34 centerXAnchor];
  }

  a1 = v36;
LABEL_31:

  v37 = [v20 constraintEqualToAnchor:a1];
  [v29 addObject:v37];
}

@end