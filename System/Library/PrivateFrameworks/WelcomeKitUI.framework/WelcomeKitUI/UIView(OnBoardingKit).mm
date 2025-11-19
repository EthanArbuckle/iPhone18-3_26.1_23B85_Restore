@interface UIView(OnBoardingKit)
- (id)wl_progressLabel;
@end

@implementation UIView(OnBoardingKit)

- (id)wl_progressLabel
{
  v52 = *MEMORY[0x277D85DE8];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v1 = [a1 subviews];
  v2 = [v1 countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v2)
  {
    v3 = *v45;
    while (2)
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v45 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v44 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = v5;
          goto LABEL_11;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = [v2 subviews];
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    while (2)
    {
      for (j = 0; j != v8; ++j)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v40 + 1) + 8 * j);
        if ([v11 isMemberOfClass:objc_opt_class()])
        {
          v12 = v11;

          v2 = v12;
          goto LABEL_21;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v13 = [v2 subviews];
  v14 = [v13 countByEnumeratingWithState:&v36 objects:v49 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    while (2)
    {
      for (k = 0; k != v15; ++k)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v36 + 1) + 8 * k);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v21 = [v20 isEqualToString:@"OBContentView"];

        if (v21)
        {
          v22 = v18;

          v2 = v22;
          goto LABEL_31;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v36 objects:v49 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = [v2 subviews];
  v24 = [v23 countByEnumeratingWithState:&v32 objects:v48 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    while (2)
    {
      for (m = 0; m != v25; ++m)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * m);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = v28;

          v2 = v29;
          goto LABEL_41;
        }
      }

      v25 = [v23 countByEnumeratingWithState:&v32 objects:v48 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_41:

  v30 = *MEMORY[0x277D85DE8];

  return v2;
}

@end