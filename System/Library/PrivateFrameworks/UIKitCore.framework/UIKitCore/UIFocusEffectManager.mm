@interface UIFocusEffectManager
@end

@implementation UIFocusEffectManager

void __41___UIFocusEffectManager_moveFocusToItem___block_invoke(uint64_t a1)
{
  v42 = [*(a1 + 32) haloView];
  v2 = [*(a1 + 40) position];
  switch(v2)
  {
    case 2:
      v29 = 1;
      goto LABEL_32;
    case 1:
      v29 = 0;
      goto LABEL_32;
    case 0:
      v3 = *(a1 + 48);
      v4 = *(a1 + 56);
      [v42 totalConsumedSpace];
      v6 = v5;
      v7 = v3;
      v8 = v4;
      v9 = v8;
      if (!v8)
      {
        goto LABEL_30;
      }

      v10 = v8;
      while (1)
      {
        v11 = _UIFocusItemFrameInCoordinateSpace(v7, v10);
        v13 = v12;
        v15 = v14;
        v17 = v16;
        v18 = v10;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        if (![v18 clipsToBounds])
        {
          goto LABEL_15;
        }

        [v18 bounds];
        v49 = CGRectInset(v48, v6, v6);
        v51.origin.x = v11;
        v51.origin.y = v13;
        v51.size.width = v15;
        v51.size.height = v17;
        v28 = CGRectContainsRect(v49, v51);

        if (!v28)
        {
          v10 = v18;
          goto LABEL_31;
        }

LABEL_16:
        v10 = [v18 superview];

        if (!v10)
        {
          goto LABEL_31;
        }
      }

      v10 = v18;
      [v10 contentSize];
      v20 = v19;
      [v10 frame];
      v22 = v20 > v21;
      [v10 contentSize];
      v24 = v23;
      [v10 frame];
      v26 = (v24 > v25) | (2 * v22);
      v44.origin.x = v11;
      v44.origin.y = v13;
      v44.size.width = v15;
      v44.size.height = v17;
      v45 = CGRectInset(v44, -v6, -v6);
      if (v26)
      {
        if (v26 != 1)
        {
          if (v26 != 3)
          {
            width = v45.size.width;
            if ([v10 clipsToBounds])
            {
              [v10 frame];
              v32 = v31;

              if (width >= v32)
              {
                goto LABEL_31;
              }

LABEL_29:

LABEL_30:
              v10 = 0;
              goto LABEL_31;
            }
          }

LABEL_28:

          goto LABEL_29;
        }

        height = v45.size.height;
        if (![v10 clipsToBounds])
        {
          goto LABEL_28;
        }

        [v10 frame];
        v35 = v34;

        if (height < v35)
        {
          goto LABEL_29;
        }

LABEL_31:
        v29 = v10 != 0;

LABEL_32:
        [v42 setPosition:v29];
        break;
      }

      if ([v10 clipsToBounds])
      {
        [v10 bounds];
        v47 = CGRectInset(v46, v6, v6);
        v50.origin.x = v11;
        v50.origin.y = v13;
        v50.size.width = v15;
        v50.size.height = v17;
        v27 = CGRectContainsRect(v47, v50);

        if (!v27)
        {
          goto LABEL_31;
        }

        goto LABEL_16;
      }

LABEL_15:
      goto LABEL_16;
  }

  if (dyld_program_sdk_at_least() && ([*(a1 + 40) referenceView], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v37 = v36;
    while (1)
    {
      v38 = [v37 superview];
      v39 = *(a1 + 56);

      if (v38 == v39)
      {
        break;
      }

      v40 = [v37 superview];

      v37 = v40;
      if (!v40)
      {
        goto LABEL_38;
      }
    }

    [*(a1 + 56) insertSubview:v42 aboveSubview:v37];
  }

  else
  {
LABEL_38:
    [*(a1 + 56) addSubview:v42];
  }

  [v42 setGeometryFrozen:0];
  [*(a1 + 64) bounds];
  [v42 setFrame:?];
  v41 = [*(a1 + 64) zeroOriginShape];
  [v42 setShape:v41];

  [v42 setGeometryFrozen:1];
}

@end