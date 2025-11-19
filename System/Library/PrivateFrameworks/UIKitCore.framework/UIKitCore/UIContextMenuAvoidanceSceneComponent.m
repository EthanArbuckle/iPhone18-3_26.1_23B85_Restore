@interface UIContextMenuAvoidanceSceneComponent
@end

@implementation UIContextMenuAvoidanceSceneComponent

void __73___UIContextMenuAvoidanceSceneComponent__overlapInsetsInCoordinateSpace___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v43 = a3;
  v4 = [v43 coordinateSpace];

  v5 = v43;
  if (v4)
  {
    v6 = [v43 edge];
    [*(a1 + 32) bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = *(a1 + 32);
    [v43 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = [v43 coordinateSpace];
    [v15 convertRect:v24 fromCoordinateSpace:{v17, v19, v21, v23}];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v45.origin.x = v8;
    v45.origin.y = v10;
    v45.size.width = v12;
    v45.size.height = v14;
    v53.origin.x = v26;
    v53.origin.y = v28;
    v53.size.width = v30;
    v53.size.height = v32;
    v46 = CGRectIntersection(v45, v53);
    x = v46.origin.x;
    y = v46.origin.y;
    width = v46.size.width;
    height = v46.size.height;
    if (v6 > 3)
    {
      v5 = v43;
      if (v6 == 4)
      {
        v51.origin.x = v8;
        v51.origin.y = v10;
        v51.size.width = v12;
        v51.size.height = v14;
        MaxY = CGRectGetMaxY(v51);
        v52.origin.x = x;
        v52.origin.y = y;
        v52.size.width = width;
        v52.size.height = height;
        v38 = MaxY - CGRectGetMinY(v52);
        v39 = 48;
      }

      else
      {
        if (v6 != 8)
        {
          goto LABEL_12;
        }

        v48.origin.x = v8;
        v48.origin.y = v10;
        v48.size.width = v12;
        v48.size.height = v14;
        MaxX = CGRectGetMaxX(v48);
        v49.origin.x = x;
        v49.origin.y = y;
        v49.size.width = width;
        v49.size.height = height;
        v38 = MaxX - CGRectGetMinX(v49);
        v39 = 56;
      }
    }

    else
    {
      v5 = v43;
      if (v6 == 1)
      {
        v41 = CGRectGetMaxY(v46);
        v50.origin.x = v8;
        v50.origin.y = v10;
        v50.size.width = v12;
        v50.size.height = v14;
        v38 = v41 - CGRectGetMinY(v50);
        v39 = 32;
      }

      else
      {
        if (v6 != 2)
        {
          goto LABEL_12;
        }

        v37 = CGRectGetMaxX(v46);
        v47.origin.x = v8;
        v47.origin.y = v10;
        v47.size.width = v12;
        v47.size.height = v14;
        v38 = v37 - CGRectGetMinX(v47);
        v39 = 40;
      }
    }

    *(*(*(a1 + 40) + 8) + v39) = fmax(*(*(*(a1 + 40) + 8) + v39), v38);
    v5 = v43;
  }

LABEL_12:
}

void __88___UIContextMenuAvoidanceSceneComponent_assertionActivationStateChangedToState_forType___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  if ([a3 assertionID] == *(a1 + 40))
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end