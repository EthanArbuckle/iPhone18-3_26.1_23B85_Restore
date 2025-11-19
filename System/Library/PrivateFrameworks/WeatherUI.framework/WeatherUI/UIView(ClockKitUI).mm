@interface UIView(ClockKitUI)
- (void)_updateFilter:()ClockKitUI amount:;
- (void)setMaxAPL:()ClockKitUI;
@end

@implementation UIView(ClockKitUI)

- (void)_updateFilter:()ClockKitUI amount:
{
  v31 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v6 = filterNamesToIndicesMap();
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v7 = [a1 layer];
  v8 = [v7 filters];

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v8, "count") + 3}];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v46;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v46 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v45 + 1) + 8 * i);
        v16 = [v15 name];
        v17 = [v6 objectForKeyedSubscript:v16];

        if (v17)
        {
          objc_storeStrong(&v50 + [v17 unsignedIntegerValue], v15);
        }

        else
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v45 objects:v49 count:16];
    }

    while (v12);
  }

  if (!v31)
  {
    if (fabs(a2 + -1.0) >= 0.00000011920929)
    {
      v22 = a2;
      v23 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
      [v23 setName:@"CLKUITritiumViewFilterTypeBrightnessName"];
      v32 = v22;
      v34 = 0;
      v33 = 0;
      v35 = 0;
      v36 = v22;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v40 = v22;
      v42 = 0;
      v41 = 0;
      v43 = 0;
      v44 = 1065353216;
      v24 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v32];
      [v23 setValue:v24 forKey:@"inputColorMatrix"];

      v19 = v50;
      v50 = v23;
    }

    else
    {
      v19 = v50;
      v50 = 0;
    }

    goto LABEL_22;
  }

  if (v31 == 1)
  {
    if (fabs(a2 + -1.0) >= 0.00000011920929)
    {
      v20 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
      [v20 setName:@"CLKUITritiumViewFilterTypeSaturationName"];
      v21 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
      [v20 setValue:v21 forKey:@"inputAmount"];

      v19 = v51;
      v51 = v20;
    }

    else
    {
      v19 = v51;
      v51 = 0;
    }

LABEL_22:
    v18 = a1;
LABEL_23:

    goto LABEL_24;
  }

  v18 = a1;
  if (v31 == 2)
  {
    if (fabs(a2 + -1.0) >= 0.00000011920929)
    {
      v28 = a2;
      v29 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
      [v29 setName:@"CLKUIViewFilterTypeNameTritiumTapThrough"];
      v32 = v28;
      v34 = 0;
      v33 = 0;
      v35 = 0;
      v36 = v28;
      v38 = 0;
      v37 = 0;
      v39 = 0;
      v40 = v28;
      v42 = 0;
      v41 = 0;
      v43 = 0;
      v44 = 1065353216;
      v30 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:&v32];
      [v29 setValue:v30 forKey:@"inputColorMatrix"];

      v19 = v52;
      v52 = v29;
    }

    else
    {
      v19 = v52;
      v52 = 0;
    }

    goto LABEL_23;
  }

LABEL_24:
  for (j = 0; j != 24; j += 8)
  {
    if (*(&v50 + j))
    {
      [v9 addObject:?];
    }
  }

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  v26 = [v18 layer];
  [v26 setFilters:v9];

  [MEMORY[0x1E6979518] commit];
  for (k = 16; k != -8; k -= 8)
  {
  }
}

- (void)setMaxAPL:()ClockKitUI
{
  v6 = [a1 layer];
  v2 = [v6 superlayer];
  v3 = objc_alloc_init(MEMORY[0x1E69793A8]);
  [v6 frame];
  [v3 setFrame:?];
  v4 = [a1 layer];
  [v4 removeFromSuperlayer];

  [v2 addSublayer:v3];
  v5 = [MEMORY[0x1E6979320] remoteContext];
  [v5 setLayer:v6];
  [v3 setContextId:{objc_msgSend(v5, "contextId")}];
  [v3 setRendersAsynchronously:1];
}

@end