@interface UIImageContentLayout
@end

@implementation UIImageContentLayout

CGFloat __56___UIImageContentLayout_initWithSource_target_withSize___block_invoke@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = MEMORY[0x1E695EFD0];
  v8 = *MEMORY[0x1E695EFD0];
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *a4 = *MEMORY[0x1E695EFD0];
  *(a4 + 16) = v9;
  v10 = *(v7 + 32);
  *(a4 + 32) = v10;
  tx = *(a1 + 56);
  *&v12 = *(a1 + 64);
  if (!a2)
  {
    v15 = *(a1 + 64);
    v14 = *(a1 + 56);
    goto LABEL_28;
  }

  v86 = v9;
  v88 = v8;
  rect = v10;
  if ((a2 & 2) != 0)
  {
    v14 = *(a1 + 64);
  }

  else
  {
    v14 = *(a1 + 56);
  }

  if ((a2 & 2) != 0)
  {
    v15 = *(a1 + 56);
  }

  else
  {
    v15 = *(a1 + 64);
  }

  CGAffineTransformMakeTranslation(&t2, tx * -0.5, *&v12 * -0.5);
  *&t1.a = v88;
  *&t1.c = v86;
  *&t1.tx = rect;
  CGAffineTransformConcat(a4, &t1, &t2);
  memset(&t1, 0, sizeof(t1));
  if (a2 <= 3)
  {
    switch(a2)
    {
      case 1:
        t1.tx = 0.0;
        t1.ty = 0.0;
        v16 = -1.0;
        t1.a = -1.0;
        t1.b = 0.0;
LABEL_23:
        t1.c = 0.0;
        t1.d = v16;
        goto LABEL_27;
      case 2:
        t1.tx = 0.0;
        t1.ty = 0.0;
        _Q0 = xmmword_18A678B60;
        goto LABEL_26;
      case 3:
        t1.tx = 0.0;
        t1.ty = 0.0;
        _Q0 = xmmword_18A678B70;
LABEL_26:
        *&t1.b = _Q0;
        goto LABEL_27;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      t1.tx = 0.0;
      t1.ty = 0.0;
      if (a2 == 4)
      {
        t1.a = -1.0;
        t1.b = 0.0;
        v16 = 1.0;
      }

      else
      {
        t1.a = 1.0;
        t1.b = 0.0;
        v16 = -1.0;
      }

      goto LABEL_23;
    }

    if (a2 == 6)
    {
      t1.tx = 0.0;
      t1.ty = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      goto LABEL_26;
    }

    if (a2 == 7)
    {
      t1.tx = 0.0;
      t1.ty = 0.0;
      __asm { FMOV            V0.2D, #-1.0 }

      goto LABEL_26;
    }
  }

  *&t1.a = v88;
  *&t1.c = v86;
  *&t1.tx = rect;
LABEL_27:
  v22 = *(a4 + 16);
  *&v91.a = *a4;
  *&v91.c = v22;
  *&v91.tx = *(a4 + 32);
  CGAffineTransformConcat(&t2, &v91, &t1);
  v23 = *&t2.c;
  *a4 = *&t2.a;
  *(a4 + 16) = v23;
  *(a4 + 32) = *&t2.tx;
  CGAffineTransformMakeTranslation(&t1, v14 * 0.5, v15 * 0.5);
  v24 = *(a4 + 16);
  *&v91.a = *a4;
  *&v91.c = v24;
  *&v91.tx = *(a4 + 32);
  CGAffineTransformConcat(&t2, &v91, &t1);
  v12 = *&t2.c;
  *a4 = *&t2.a;
  *(a4 + 16) = v12;
  tx = t2.tx;
  *(a4 + 32) = *&t2.tx;
LABEL_28:
  [*(a1 + 32) _contentInsets];
  v28 = v27 == 0.0;
  if (v29 != 0.0)
  {
    v28 = 0;
  }

  if (v25 != 0.0)
  {
    v28 = 0;
  }

  v30 = v26 == 0.0 && v28;
  if (!v30)
  {
    [*(a1 + 32) _contentInsets];
    v35 = v32;
    if (!a3)
    {
      v36 = v32;
      v32 = v31;
LABEL_50:
      CGAffineTransformMakeTranslation(&t1, v36, v32);
      v38 = *(a4 + 16);
      *&v91.a = *a4;
      *&v91.c = v38;
      *&v91.tx = *(a4 + 32);
      CGAffineTransformConcat(&t2, &v91, &t1);
      v39 = *&t2.c;
      *a4 = *&t2.a;
      *(a4 + 16) = v39;
      *(a4 + 32) = *&t2.tx;
      goto LABEL_51;
    }

    if (a3 <= 7)
    {
      if (((1 << a3) & 0x22) != 0)
      {
        v32 = v33;
        v36 = v34;
        v37 = v31;
        v31 = v35;
        goto LABEL_46;
      }

      if (((1 << a3) & 0x44) != 0)
      {
        v32 = v34;
        v36 = v31;
        v37 = v35;
        v31 = v33;
        goto LABEL_46;
      }

      if (((1 << a3) & 0x88) != 0)
      {
        v36 = v33;
        v37 = v34;
        goto LABEL_46;
      }
    }

    v32 = v31;
    v36 = v35;
    v37 = v33;
    v31 = v34;
LABEL_46:
    if (a3 - 6 < 2)
    {
      v32 = v37;
    }

    else if (a3 - 4 <= 1)
    {
      v36 = v31;
    }

    goto LABEL_50;
  }

LABEL_51:
  LayerContentModeTransform(*(a1 + 72), &t1, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
  v40 = *(a4 + 16);
  *&v91.a = *a4;
  *&v91.c = v40;
  *&v91.tx = *(a4 + 32);
  CGAffineTransformConcat(&t2, &v91, &t1);
  v41 = *&t2.c;
  *a4 = *&t2.a;
  *(a4 + 16) = v41;
  *(a4 + 32) = *&t2.tx;
  v42 = *MEMORY[0x1E695EFF8];
  v43 = *(MEMORY[0x1E695EFF8] + 8);
  v44 = *(a4 + 16);
  *&t2.a = *a4;
  *&t2.c = v44;
  *&t2.tx = *(a4 + 32);
  v87 = v42;
  *&v44 = v43;
  v89 = v14;
  v45 = v14;
  v46 = v15;
  v94 = CGRectApplyAffineTransform(*&v42, &t2);
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  UIRoundToScale(v94.size.width, *(*(a1 + 40) + 64));
  v52 = v51;
  UIRoundToScale(height, *(*(a1 + 40) + 64));
  v54 = v53;
  v55 = *(a1 + 72);
  if (v55 <= 3 && *(a1 + 128) == 1)
  {
    v56 = *(*(a1 + 48) + 8);
    *(v56 + 32) = v52;
    *(v56 + 40) = v53;
  }

  if (!v30)
  {
    v95.origin.x = x;
    v95.origin.y = y;
    v95.size.width = width;
    v95.size.height = height;
    recta = v15;
    v57 = -CGRectGetMidX(v95);
    v96.origin.x = x;
    v96.origin.y = y;
    v96.size.width = width;
    v96.size.height = height;
    MidY = CGRectGetMidY(v96);
    CGAffineTransformMakeTranslation(&t1, v57, -MidY);
    v59 = *(a4 + 16);
    *&v91.a = *a4;
    *&v91.c = v59;
    *&v91.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v91, &t1);
    v60 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v60;
    *(a4 + 32) = *&t2.tx;
    CGAffineTransformMakeScale(&t1, v52 / width, v54 / height);
    v61 = *(a4 + 16);
    *&v91.a = *a4;
    *&v91.c = v61;
    *&v91.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v91, &t1);
    v62 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v62;
    *(a4 + 32) = *&t2.tx;
    v63 = x;
    *&v62 = y;
    v64 = width;
    v65 = height;
    MidX = CGRectGetMidX(*(&v62 - 8));
    v97.origin.x = x;
    v97.origin.y = y;
    v97.size.width = width;
    v97.size.height = height;
    v67 = CGRectGetMidY(v97);
    CGAffineTransformMakeTranslation(&t1, MidX, v67);
    v68 = *(a4 + 16);
    *&v91.a = *a4;
    *&v91.c = v68;
    *&v91.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v91, &t1);
    v69 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v69;
    *(a4 + 32) = *&t2.tx;
    v70 = *(a4 + 16);
    *&t2.a = *a4;
    *&t2.c = v70;
    *&t2.tx = *(a4 + 32);
    v71 = v87;
    *&v70 = v43;
    v72 = v89;
    v73 = recta;
    v98 = CGRectApplyAffineTransform(*(&v70 - 8), &t2);
    v74 = v98.origin.x;
    v75 = v98.origin.y;
    UIRoundToScale(v98.origin.x, *(*(a1 + 40) + 64));
    v77 = v76;
    UIRoundToScale(v75, *(*(a1 + 40) + 64));
    CGAffineTransformMakeTranslation(&t1, v77 - v74, v78 - v75);
    v79 = *(a4 + 16);
    *&v91.a = *a4;
    *&v91.c = v79;
    *&v91.tx = *(a4 + 32);
    CGAffineTransformConcat(&t2, &v91, &t1);
    v80 = *&t2.c;
    *a4 = *&t2.a;
    *(a4 + 16) = v80;
    *(a4 + 32) = *&t2.tx;
    v55 = *(a1 + 72);
  }

  memset(&t2, 0, sizeof(t2));
  LayerContentModeTransform(v55, &t2, *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 56), *(a1 + 64));
  t1 = t2;
  CGAffineTransformInvert(&v91, &t1);
  v81 = *(a4 + 16);
  *&v90.a = *a4;
  *&v90.c = v81;
  *&v90.tx = *(a4 + 32);
  CGAffineTransformConcat(&t1, &v91, &v90);
  v82 = *&t1.c;
  *a4 = *&t1.a;
  *(a4 + 16) = v82;
  result = t1.tx;
  *(a4 + 32) = *&t1.tx;
  return result;
}

double __61___UIImageContentLayout__prepareContentOfSize_source_target___block_invoke@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 32) layerContents];
  *a2 = 0;
  *(a2 + 8) = v4;
  result = *(a1 + 40);
  *(a2 + 16) = result;
  return result;
}

double __61___UIImageContentLayout__prepareContentOfSize_source_target___block_invoke_2@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(a1 + 32) renditionWithSize:*(a1 + 40) scale:*(a1 + 48) renditionContext:{*(a1 + 56), *(a1 + 64)}];
  v5 = [(_UIImageContentRendition *)v4 CGImage];
  v6 = CGImageRetain(v5);
  *a2 = v4;
  *(a2 + 8) = v6;
  result = *(a1 + 72);
  *(a2 + 16) = result;
  return result;
}

@end