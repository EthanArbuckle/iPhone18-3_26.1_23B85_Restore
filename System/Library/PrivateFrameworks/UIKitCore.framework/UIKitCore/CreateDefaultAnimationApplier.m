@interface CreateDefaultAnimationApplier
@end

@implementation CreateDefaultAnimationApplier

uint64_t ___CreateDefaultAnimationApplier_block_invoke(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) convertPoint:objc_msgSend(*(a1 + 32) toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v7 = v6;
  v9 = v8;
  memset(&v21, 0, sizeof(v21));
  v10 = *(a1 + 32);
  if (v10)
  {
    [v10 transform];
    v11 = *(a1 + 32);
  }

  else
  {
    v11 = 0;
    memset(&v20, 0, sizeof(v20));
  }

  CGAffineTransformRotate(&v21, &v20, a3 - a2);
  v20 = v21;
  [v11 setTransform:&v20];
  v12 = *(a1 + 32);
  [v12 convertPoint:objc_msgSend(v12 toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v14 = v13;
  v16 = v15;
  [v12 center];
  return [v12 setCenter:{v7 - v14 + v17, v9 - v16 + v18}];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_2(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) convertPoint:objc_msgSend(*(a1 + 32) toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) bounds];
  [*(a1 + 32) setBounds:?];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v9 = *(a1 + 32);
  [v9 convertPoint:objc_msgSend(v9 toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v11 = v10;
  v13 = v12;
  [v9 center];
  v15 = v6 - v11 + v14;
  v17 = v8 - v13 + v16;

  return [v9 setCenter:{v15, v17}];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_3(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) convertPoint:objc_msgSend(*(a1 + 32) toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) bounds];
  [*(a1 + 32) setBounds:?];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v9 = *(a1 + 32);
  [v9 convertPoint:objc_msgSend(v9 toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v11 = v10;
  v13 = v12;
  [v9 center];
  v15 = v6 - v11 + v14;
  v17 = v8 - v13 + v16;

  return [v9 setCenter:{v15, v17}];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_4(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) convertPoint:objc_msgSend(*(a1 + 32) toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v6 = v5;
  v8 = v7;
  [*(a1 + 32) bounds];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  [*(a1 + 32) setBounds:?];
  v9 = *(a1 + 32);
  [v9 convertPoint:objc_msgSend(v9 toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v11 = v10;
  v13 = v12;
  [v9 center];
  v15 = v6 - v11 + v14;
  v17 = v8 - v13 + v16;

  return [v9 setCenter:{v15, v17}];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_5(uint64_t a1, double a2, CGFloat a3)
{
  [*(a1 + 32) convertPoint:objc_msgSend(*(a1 + 32) toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v6 = v5;
  v8 = v7;
  memset(&v21, 0, sizeof(v21));
  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 transform];
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformScale(&v20, &v19, 1.0 / *(*(*(a1 + 48) + 8) + 24), 1.0);
  CGAffineTransformScale(&v21, &v20, a3, 1.0);
  v20 = v21;
  [v10 setTransform:&v20];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v11 = *(a1 + 32);
  [v11 convertPoint:objc_msgSend(v11 toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v13 = v12;
  v15 = v14;
  [v11 center];
  return [v11 setCenter:{v6 - v13 + v16, v8 - v15 + v17}];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_6(uint64_t a1, double a2, CGFloat a3)
{
  [*(a1 + 32) convertPoint:objc_msgSend(*(a1 + 32) toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v6 = v5;
  v8 = v7;
  memset(&v21, 0, sizeof(v21));
  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 transform];
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformScale(&v20, &v19, 1.0, 1.0 / *(*(*(a1 + 48) + 8) + 24));
  CGAffineTransformScale(&v21, &v20, 1.0, a3);
  v20 = v21;
  [v10 setTransform:&v20];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v11 = *(a1 + 32);
  [v11 convertPoint:objc_msgSend(v11 toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v13 = v12;
  v15 = v14;
  [v11 center];
  return [v11 setCenter:{v6 - v13 + v16, v8 - v15 + v17}];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_7(uint64_t a1, double a2, CGFloat a3)
{
  [*(a1 + 32) convertPoint:objc_msgSend(*(a1 + 32) toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v6 = v5;
  v8 = v7;
  memset(&v21, 0, sizeof(v21));
  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 transform];
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
    memset(&v19, 0, sizeof(v19));
  }

  CGAffineTransformScale(&v20, &v19, 1.0 / *(*(*(a1 + 48) + 8) + 24), 1.0 / *(*(*(a1 + 48) + 8) + 24));
  CGAffineTransformScale(&v21, &v20, a3, a3);
  v20 = v21;
  [v10 setTransform:&v20];
  *(*(*(a1 + 48) + 8) + 24) = a3;
  v11 = *(a1 + 32);
  [v11 convertPoint:objc_msgSend(v11 toView:{"superview"), *(*(*(a1 + 40) + 8) + 32), *(*(*(a1 + 40) + 8) + 40)}];
  v13 = v12;
  v15 = v14;
  [v11 center];
  return [v11 setCenter:{v6 - v13 + v16, v8 - v15 + v17}];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_8(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_msgSend(*(a1 + 32) "layer")];
  v15 = [v14 needsLayoutOnGeometryChange];
  [*(a1 + 32) setBounds:{a3 - a2 + v7, v9, v11, v13}];

  return [v14 setNeedsLayoutOnGeometryChange:v15];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_9(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [objc_msgSend(*(a1 + 32) "layer")];
  v15 = [v14 needsLayoutOnGeometryChange];
  [*(a1 + 32) setBounds:{v7, a3 - a2 + v9, v11, v13}];

  return [v14 setNeedsLayoutOnGeometryChange:v15];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_10(uint64_t a1, double a2, double a3)
{
  [*(a1 + 32) center];
  v7 = a3 - a2 + v6;
  v8 = *(a1 + 32);

  return [v8 setCenter:v7];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_11(uint64_t a1)
{
  [*(a1 + 32) center];
  v2 = *(a1 + 32);

  return [v2 setCenter:?];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_12(uint64_t a1, double a2, double a3)
{
  memset(&v12, 0, sizeof(v12));
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 transform];
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  CGAffineTransformMakeTranslation(&t2, a3 - a2, 0.0);
  v9 = v12;
  CGAffineTransformConcat(&v11, &v9, &t2);
  v12 = v11;
  return [v7 setTransform:&v11];
}

uint64_t ___CreateDefaultAnimationApplier_block_invoke_13(uint64_t a1, double a2, double a3)
{
  memset(&v12, 0, sizeof(v12));
  v6 = *(a1 + 32);
  if (v6)
  {
    [v6 transform];
    v7 = *(a1 + 32);
  }

  else
  {
    v7 = 0;
  }

  CGAffineTransformMakeTranslation(&t2, 0.0, a3 - a2);
  v9 = v12;
  CGAffineTransformConcat(&v11, &v9, &t2);
  v12 = v11;
  return [v7 setTransform:&v11];
}

@end