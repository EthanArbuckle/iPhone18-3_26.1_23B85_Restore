@interface CALayer(PhotosUI)
+ (void)pu_animateAlongsideView:()PhotosUI animations:;
- (id)_pu_uniqueAnimationKeyWithProposedKey:()PhotosUI;
- (uint64_t)pu_setPosition:()PhotosUI;
- (uint64_t)pu_setTransform:()PhotosUI;
@end

@implementation CALayer(PhotosUI)

- (id)_pu_uniqueAnimationKeyWithProposedKey:()PhotosUI
{
  v4 = a3;
  v5 = [a1 animationForKey:v4];

  v6 = v4;
  if (v5)
  {
    v7 = 2;
    v8 = v4;
    do
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%ld", v4, v7];

      ++v7;
      v9 = [a1 animationForKey:v6];

      v8 = v6;
    }

    while (v9);
  }

  return v6;
}

- (uint64_t)pu_setTransform:()PhotosUI
{
  memset(&v33, 0, sizeof(v33));
  [a1 transform];
  v5 = a3[5];
  *&a.m31 = a3[4];
  *&a.m33 = v5;
  v6 = a3[7];
  *&a.m41 = a3[6];
  *&a.m43 = v6;
  v7 = a3[1];
  *&a.m11 = *a3;
  *&a.m13 = v7;
  v8 = a3[3];
  *&a.m21 = a3[2];
  *&a.m23 = v8;
  b = v33;
  result = CATransform3DEqualToTransform(&a, &b);
  if ((result & 1) == 0)
  {
    if (PULayerReferenceBasicAnimation)
    {
      v10 = [PULayerReferenceBasicAnimation mutableCopy];
      memset(&a, 0, sizeof(a));
      v11 = a3[5];
      *&v30.m31 = a3[4];
      *&v30.m33 = v11;
      v12 = a3[7];
      *&v30.m41 = a3[6];
      *&v30.m43 = v12;
      v13 = a3[1];
      *&v30.m11 = *a3;
      *&v30.m13 = v13;
      v14 = a3[3];
      *&v30.m21 = a3[2];
      *&v30.m23 = v14;
      CATransform3DInvert(&b, &v30);
      v30 = v33;
      CATransform3DConcat(&a, &v30, &b);
      b = a;
      v15 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
      [v10 setFromValue:v15];

      v16 = *(MEMORY[0x1E69792E8] + 80);
      *&b.m31 = *(MEMORY[0x1E69792E8] + 64);
      *&b.m33 = v16;
      v17 = *(MEMORY[0x1E69792E8] + 112);
      *&b.m41 = *(MEMORY[0x1E69792E8] + 96);
      *&b.m43 = v17;
      v18 = *(MEMORY[0x1E69792E8] + 16);
      *&b.m11 = *MEMORY[0x1E69792E8];
      *&b.m13 = v18;
      v19 = *(MEMORY[0x1E69792E8] + 48);
      *&b.m21 = *(MEMORY[0x1E69792E8] + 32);
      *&b.m23 = v19;
      v20 = [MEMORY[0x1E696B098] valueWithCATransform3D:&b];
      [v10 setToValue:v20];

      [v10 setKeyPath:@"transform"];
      v21 = [v10 keyPath];
      v22 = [a1 _pu_uniqueAnimationKeyWithProposedKey:v21];

      v23 = [v10 keyPath];
      v24 = [v22 isEqualToString:v23];

      if ((v24 & 1) == 0)
      {
        v25 = PLUIGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(b.m11) = 0;
          _os_log_impl(&dword_1B36F3000, v25, OS_LOG_TYPE_DEFAULT, "Additive animations of CALayer's transform will not always produce the expected results.", &b, 2u);
        }
      }

      [a1 addAnimation:v10 forKey:v22];
    }

    v26 = a3[5];
    *&a.m31 = a3[4];
    *&a.m33 = v26;
    v27 = a3[7];
    *&a.m41 = a3[6];
    *&a.m43 = v27;
    v28 = a3[1];
    *&a.m11 = *a3;
    *&a.m13 = v28;
    v29 = a3[3];
    *&a.m21 = a3[2];
    *&a.m23 = v29;
    return [a1 setTransform:&a];
  }

  return result;
}

- (uint64_t)pu_setPosition:()PhotosUI
{
  result = [a1 position];
  if (a2 != v7 || a3 != v8)
  {
    if (PULayerReferenceBasicAnimation)
    {
      v10 = v7;
      v11 = v8;
      v12 = [PULayerReferenceBasicAnimation mutableCopy];
      v13 = [MEMORY[0x1E696B098] valueWithCGPoint:{v10 - a2, v11 - a3}];
      [v12 setFromValue:v13];

      v14 = [MEMORY[0x1E696B098] valueWithCGPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
      [v12 setToValue:v14];

      [v12 setKeyPath:@"position"];
      v15 = [v12 keyPath];
      v16 = [a1 _pu_uniqueAnimationKeyWithProposedKey:v15];

      [a1 addAnimation:v12 forKey:v16];
    }

    return [a1 setPosition:{a2, a3}];
  }

  return result;
}

+ (void)pu_animateAlongsideView:()PhotosUI animations:
{
  v21 = a3;
  v8 = a4;
  if (v21)
  {
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"CALayer+PhotosUI.m" lineNumber:31 description:{@"Invalid parameter not satisfying: %@", @"view"}];

    if (!v8)
    {
      goto LABEL_12;
    }
  }

  v9 = PULayerReferenceView;
  if (PULayerReferenceView)
  {
    v10 = PULayerReferenceView == v21;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = NSStringFromSelector(a2);
    [v19 handleFailureInMethod:a2 object:a1 file:@"CALayer+PhotosUI.m" lineNumber:36 description:{@"nested calls to %@ with different views (%@ vs %@)", v20, v21, PULayerReferenceView}];

    v9 = PULayerReferenceView;
  }

  v11 = v9;
  if (v11)
  {
    v8[2](v8);
  }

  else
  {
    v12 = [v21 _pu_referenceBasicAnimationForCurrentAnimation];
    v13 = [v12 mutableCopy];

    [v13 setDelegate:0];
    [v13 setAdditive:1];
    objc_storeStrong(&PULayerReferenceView, a3);
    v14 = PULayerReferenceBasicAnimation;
    PULayerReferenceBasicAnimation = v13;
    v15 = v13;

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setValue:*MEMORY[0x1E695E4D0] forKey:*MEMORY[0x1E697A020]];

    v8[2](v8);
    [MEMORY[0x1E6979518] commit];
    v16 = PULayerReferenceView;
    PULayerReferenceView = 0;

    v17 = PULayerReferenceBasicAnimation;
    PULayerReferenceBasicAnimation = 0;
  }

LABEL_12:
}

@end