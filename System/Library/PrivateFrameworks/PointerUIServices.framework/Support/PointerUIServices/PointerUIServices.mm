void sub_100001C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 32));
  objc_destroyWeak(&a24);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001C74(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePointerViewCornerCurve];
}

void sub_100001CB4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    [WeakRetained[17] presentationValue];
    WeakRetained = v8;
    v2 = v8[185];
    v4 = v3 > 0.0;
    v8[185] = v4;
    if (v2 != v4)
    {
      v5 = [v8 delegate];
      v6 = objc_opt_respondsToSelector();

      WeakRetained = v8;
      if (v6)
      {
        v7 = [v8 delegate];
        [v7 pointerShapeViewVisibilityDidChange:v8];

        WeakRetained = v8;
      }
    }
  }
}

id sub_100001D78(uint64_t a1, void *a2, const void *a3)
{
  [a2 _handleAccessibilityPointerPreferencesDidChange];
  result = CFEqual(a3, kAXSZoomTouchEnabledNotification);
  if (result)
  {

    return [a2 _axRegisterForZoomUpdatesIfNecessary];
  }

  return result;
}

void sub_100001DDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001E98;
  v6[3] = &unk_100048A28;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = v3;
  v4 = v3;
  v5 = WeakRetained;
  dispatch_async(&_dispatch_main_q, v6);
}

id sub_100001E98(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) orientation];
  [*(a1 + 40) duration];
  v5 = v4;
  v6 = [*(a1 + 40) rotationDirection];

  return [v2 _didUpdateToOrientation:v3 duration:v6 rotationDirection:v5];
}

void sub_1000028F8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(a1 + 48) & 1) != 0 || ([*(*(a1 + 32) + 160) value], v4 != 1.0))
  {
    [*(a1 + 32) _performShakeToFindScalingAnimation];
    goto LABEL_4;
  }

  if ([*(a1 + 40) shapeType] == 4)
  {
    goto LABEL_6;
  }

  v17 = *(a1 + 40);
  if (_UIPlasmaEnabled() && [v17 shapeType] == 1)
  {

LABEL_6:
    v5 = *(a1 + 40);
    if (_UIPlasmaEnabled() && [v5 shapeType] == 1)
    {

      [*(a1 + 32) _beginRequiringShapeMorphingViewForReason:@"SystemShape"];
      if (qword_100059C90 != -1)
      {
        sub_100026C10();
      }

      v6 = qword_100059C88;
      v7 = *(a1 + 32);
      v8 = v7[22];
      [v7 _pointerSizeMultiplier];
      v10 = v9;
      v11 = *&CGAffineTransformIdentity.c;
      *&transform.a = *&CGAffineTransformIdentity.a;
      *&transform.c = v11;
      *&transform.tx = *&CGAffineTransformIdentity.tx;
      if ((v8 - 2) <= 2)
      {
        CGAffineTransformMakeRotation(&transform, dbl_100032160[v8 - 2]);
      }

      CGAffineTransformMakeScale(&t1, v10, v10);
      t2 = transform;
      CGAffineTransformConcat(&v52, &t1, &t2);
      transform = v52;
      v12 = CGPathCreateCopyByTransformingPath(v6, &transform);
      v13 = [UIBezierPath bezierPathWithCGPath:v12];
      [v13 setUsesEvenOddFillRule:{objc_msgSend(*(a1 + 40), "usesEvenOddFillRule")}];
      v14 = *(a1 + 32);
      v15 = *(a1 + 50);
      v16 = v3[2](v3, @"systemShape");
      [v14 _setShapeMorphingViewPath:v13 animated:v15 completion:v16];

      CGPathRelease(v12);
      [*(a1 + 32) _endRequiringShapeMorphingViewForReason:@"CustomShape"];
    }

    else
    {

      [*(a1 + 32) _beginRequiringShapeMorphingViewForReason:@"CustomShape"];
      v18 = +[UIBezierPath bezierPathWithCGPath:](UIBezierPath, "bezierPathWithCGPath:", [*(a1 + 40) path]);
      [v18 setUsesEvenOddFillRule:{objc_msgSend(*(a1 + 40), "usesEvenOddFillRule")}];
      v19 = *(a1 + 32);
      v20 = *(a1 + 50);
      v21 = v3[2](v3, @"shapeMorphing");
      [v19 _setShapeMorphingViewPath:v18 animated:v20 completion:v21];
    }

    goto LABEL_4;
  }

  [*(a1 + 32) expectedShapeBoundsForPointerShape:*(a1 + 40)];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  [*(a1 + 32) _cornerRadiusForPointerShape:*(a1 + 40)];
  v31 = v30;
  if (*(a1 + 49) == 1)
  {
    [*(a1 + 32) _beginRequiringShapeMorphingViewForReason:@"SystemShape"];
  }

  v32 = *(a1 + 32);
  if (v32[4])
  {
    v33 = [v32 _bezierPathWithRoundedRect:v23 cornerRadius:{v25, v27, v29, v31}];
    v34 = *(a1 + 32);
    v35 = *(a1 + 50);
    v36 = v3[2](v3, @"shapeMorphing");
    [v34 _setShapeMorphingViewPath:v33 animated:v35 completion:v36];
  }

  else
  {
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100002E30;
    v43[3] = &unk_100048A78;
    v43[4] = v32;
    v45 = v23;
    v46 = v25;
    v47 = v27;
    v48 = v29;
    v49 = v31;
    v44 = *(a1 + 40);
    v37 = objc_retainBlock(v43);
    if (*(a1 + 50) == 1)
    {
      ++*(*(a1 + 32) + 112);
      v38 = v3[2](v3, @"pointerViewAnimations");
      v39 = [*(*(a1 + 32) + 104) standardShapeAnimationSettings];
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_100002EC8;
      v41[3] = &unk_100048AA0;
      v41[4] = *(a1 + 32);
      v42 = v38;
      v40 = v38;
      [UIView _animateUsingSpringBehavior:v39 tracking:0 animations:v37 completion:v41];
    }

    else
    {
      [UIView _performWithoutRetargetingAnimations:v37];
    }
  }

  [*(a1 + 32) _endRequiringShapeMorphingViewForReason:@"CustomShape"];
  [*(a1 + 32) _endRequiringShapeMorphingViewForReason:@"SystemShape"];
LABEL_4:
}

id sub_100002E30(uint64_t a1)
{
  [*(*(a1 + 32) + 16) setFrame:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  v2 = [*(*(a1 + 32) + 16) layer];
  [v2 setCornerRadius:*(a1 + 80)];

  v3 = *(*(a1 + 32) + 128);
  [v3 value];
  [v3 setValue:1.0 - v4];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v5 _applyAXPointerStyleForPointerShape:v6];
}

uint64_t sub_100002EF0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

id sub_100003600(void *a1, const CGPath *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if (!v5)
  {
    v5 = +[CAShapeLayer layer];
  }

  v7 = [v6 layer];
  [v7 bounds];
  [v5 setFrame:?];

  [v6 frame];
  v9 = -v8;
  [v6 frame];
  CGAffineTransformMakeTranslation(&v13, v9, -v10);
  v11 = CGPathCreateCopyByTransformingPath(a2, &v13);
  [v5 setPath:v11];
  CGPathRelease(v11);

  return v5;
}

void sub_100003914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100003930(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _endRequiringShapeMorphingViewForReason:*(a1 + 32)];
    [v7 _endRequiringShapeMorphingViewForReason:@"SystemShape"];
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, a2, a2 ^ 1);
  }

  return _objc_release_x1();
}

void sub_100003D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 40));
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v31 - 160));
  _Unwind_Resume(a1);
}

void sub_100003D80(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 40));
    _AXSPointerSizeMultiplier();
    v5 = v4;
    [WeakRetained _axPointerZoomScaleFactor];
    v7 = v6 * v5;
    [v3 presentationValue];
    v9 = v8;
    if (qword_100059C90 != -1)
    {
      sub_100026C10();
    }

    v10 = v7 * v9;
    v11 = qword_100059C88;
    v12 = WeakRetained[22];
    v13 = *&CGAffineTransformIdentity.c;
    *&transform.a = *&CGAffineTransformIdentity.a;
    *&transform.c = v13;
    *&transform.tx = *&CGAffineTransformIdentity.tx;
    v14 = v12 - 2;
    if (v14 <= 2)
    {
      CGAffineTransformMakeRotation(&transform, dbl_100032160[v14]);
    }

    CGAffineTransformMakeScale(&t1, v10, v10);
    v20 = transform;
    CGAffineTransformConcat(&v22, &t1, &v20);
    transform = v22;
    v15 = CGPathCreateCopyByTransformingPath(v11, &transform);
    v16 = [WeakRetained[2] layer];
    v17 = [WeakRetained[2] layer];
    v18 = [v17 mask];
    v19 = sub_100003600(v18, v15, WeakRetained[2]);
    [v16 setMask:v19];
  }
}

BOOL sub_100005408(id a1, CAFilter *a2, unint64_t a3, BOOL *a4)
{
  v5 = [(CAFilter *)a2 name];
  v6 = [v5 isEqualToString:@"InvertColorsDoubleInvert"];

  if (v6)
  {
    *a4 = 1;
  }

  return v6;
}

void sub_100005764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1000057B0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained _axPointerZoomScaleFactor];
    if (vabdd_f64(v2, v4[10]) > 0.00000011920929)
    {
      v4[10] = v2;
      if (!_AXSPointerScaleWithZoomLevelEnabled())
      {
        [v4 _handleAccessibilityPointerPreferencesDidChange];
      }
    }
  }

  return _objc_release_x1();
}

void sub_100005838(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v2 = [sub_100006670() sharedInstance];
    v3 = [v2 zoomPreferredCurrentLensMode];
    v4 = sub_1000068E4();
    v5[88] = [v3 isEqualToString:v4];

    WeakRetained = v5;
  }
}

void sub_100005B68(id a1)
{
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, 1.5, 0.0);
  CGPathAddCurveToPoint(Mutable, 0, 1.90664, 0.0, 2.29586, 0.165097, 2.57848, 0.457467);
  CGPathAddLineToPoint(Mutable, 0, 12.0422, 10.2475);
  CGPathAddCurveToPoint(Mutable, 0, 12.618, 10.8432, 12.6019, 11.7928, 12.0063, 12.3686);
  CGPathAddCurveToPoint(Mutable, 0, 11.7266, 12.6389, 11.3528, 12.7901, 10.9637, 12.7901);
  CGPathAddLineToPoint(Mutable, 0, 6.58348, 12.7901);
  CGPathAddCurveToPoint(Mutable, 0, 6.20819, 12.7901, 5.84653, 12.9307, 5.56989, 13.1843);
  CGPathAddLineToPoint(Mutable, 0, 2.51359, 15.9859);
  CGPathAddCurveToPoint(Mutable, 0, 1.90291, 16.5457, 0.954057, 16.5045, 0.394269, 15.8938);
  CGPathAddCurveToPoint(Mutable, 0, 0.140678, 15.6172, 0.0, 15.2555, 0.0, 14.8802);
  CGPathAddLineToPoint(Mutable, 0, 0.0, 1.5);
  CGPathAddCurveToPoint(Mutable, 0, 0.0, 0.671573, 0.671573, 0.0, 1.5, 0.0);
  CGPathCloseSubpath(Mutable);
  memset(&v2, 0, sizeof(v2));
  CGAffineTransformMakeTranslation(&v2, -1.5, -1.5);
  qword_100059C88 = CGPathCreateCopyByTransformingPath(Mutable, &v2);
  CGPathRelease(Mutable);
}

void sub_100005DD0(id a1)
{
  if (qword_100059C90 != -1)
  {
    sub_100026C10();
  }

  *ymmword_100059C98 = CGPathGetBoundingBox(qword_100059C88);
}

uint64_t sub_100005E28()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_100059CC0;
  v5 = qword_100059CC0;
  if (!qword_100059CC0)
  {
    v6 = *off_100048CD0;
    v7 = *off_100048CE0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_100059CC0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_100005F3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100005F54(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100059CC0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100005FEC()
{
  v1 = 0;
  result = sub_100005E28();
  if (!result)
  {
    sub_100026D58(&v1);
  }

  return result;
}

id sub_100006040()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100059CC8;
  v7 = qword_100059CC8;
  if (!qword_100059CC8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100006120;
    v3[3] = &unk_100048D28;
    v3[4] = &v4;
    sub_100006120(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100006108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100006120(uint64_t a1)
{
  sub_100005FEC();
  result = objc_getClass("ZoomServices");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100026DD8();
  }

  qword_100059CC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100006178()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100059CD0;
  v6 = qword_100059CD0;
  if (!qword_100059CD0)
  {
    v1 = sub_100005FEC();
    v4[3] = dlsym(v1, "ZWAttributeKeyZoomLevel");
    qword_100059CD0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10000624C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100006264(uint64_t a1)
{
  v2 = sub_100005FEC();
  result = dlsym(v2, "ZWAttributeKeyZoomLevel");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100059CD0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000062B4()
{
  v0 = sub_100006178();
  if (!v0)
  {
    sub_100026E54();
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_1000062E8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100059CD8;
  v6 = qword_100059CD8;
  if (!qword_100059CD8)
  {
    v1 = sub_100005FEC();
    v4[3] = dlsym(v1, "ZWAttributeKeyInStandbyMode");
    qword_100059CD8 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1000063BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1000063D4(uint64_t a1)
{
  v2 = sub_100005FEC();
  result = dlsym(v2, "ZWAttributeKeyInStandbyMode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100059CD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_100006424()
{
  v0 = sub_1000062E8();
  if (!v0)
  {
    sub_100026ECC();
  }

  v1 = *v0;

  return v1;
}

uint64_t sub_100006458()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = qword_100059CE0;
  v5 = qword_100059CE0;
  if (!qword_100059CE0)
  {
    v6 = *off_100048D48;
    v7 = *off_100048D58;
    v8 = 0;
    v3[3] = _sl_dlopen();
    qword_100059CE0 = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_10000656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006584(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100059CE0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000661C()
{
  v1 = 0;
  result = sub_100006458();
  if (!result)
  {
    sub_100026F44(&v1);
  }

  return result;
}

id sub_100006670()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100059CE8;
  v7 = qword_100059CE8;
  if (!qword_100059CE8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100006750;
    v3[3] = &unk_100048D28;
    v3[4] = &v4;
    sub_100006750(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100006738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class sub_100006750(uint64_t a1)
{
  sub_10000661C();
  result = objc_getClass("AXSettings");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100026FC4();
  }

  qword_100059CE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_1000067A8()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_100059CF0;
  v6 = qword_100059CF0;
  if (!qword_100059CF0)
  {
    v1 = sub_10000661C();
    v4[3] = dlsym(v1, "AXZoomLensModeWindowAnchored");
    qword_100059CF0 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_10000687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_100006894(uint64_t a1)
{
  v2 = sub_10000661C();
  result = dlsym(v2, "AXZoomLensModeWindowAnchored");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_100059CF0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id sub_1000068E4()
{
  v0 = sub_1000067A8();
  if (!v0)
  {
    sub_100027040();
  }

  v1 = *v0;

  return v1;
}

void sub_100007050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1000070A8(id *a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [a1[4] mutableCopy];
  v5 = v4;
  if (a2 != 2)
  {
    a2 = a2 == 1;
  }

  [v4 setPreferredPointerMaterialLuminance:a2];
  PSIntensityForLuminanceAndUsage();
  [v5 setPointerVisualIntensity:?];
  [a1[5] setActiveHoverRegion:v5];
  if (WeakRetained)
  {
    v6 = WeakRetained[16];
    v7 = objc_loadWeakRetained(a1 + 7);

    if (v6 == v7)
    {
      [WeakRetained _updatePointerWithOptions:0 updateHandlerCollection:0];
    }
  }
}

id sub_100007A98(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!v2)
  {
    v2 = BKSHIDEventGetPointerAttributes();
  }

  v3 = [v2 source];

  return v3;
}

void sub_100007D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100007D94(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (sub_100007A98(*(WeakRetained + 9), *(WeakRetained + 10)) == 11 && (v3[307] & 1) == 0)
    {
      [v3 _performRecenteringForActiveFocusRegion];
    }
  }

  return _objc_release_x1();
}

void sub_10000844C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100008470(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[392] == 1)
  {
    WeakRetained[392] = 0;
    v3 = WeakRetained;
    [WeakRetained _getShakeToFindPointerSizeMultiplierAtTime:mach_absolute_time()];
    v3[50] = v2;
    [v3 _updatePointerWithOptions:0 updateHandlerCollection:0];
    WeakRetained = v3;
  }
}

id *sub_100008CF8(id *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return [result[4] _adjustDecelerationTargetForProjectedPosition:result[5] liftOffPointerPosition:result[6] pointerVelocity:result[7] hitTestContexts:result[14] locationsInsideHitTestContexts:*(result + 8) projectedDisplayContext:*(result + 9) withLookupGenerationID:{*(result + 10), *(result + 11), *(result + 12), *(result + 13)}];
  }

  return result;
}

void sub_100009128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 64));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009154(uint64_t a1, double a2, double a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = WeakRetained;
  if (WeakRetained && WeakRetained[17] == *(a1 + 72) && (BSPointEqualToPoint() & 1) == 0)
  {
    v9 = [[BKSContextRelativePoint alloc] initWithPoint:objc_msgSend(*(a1 + 32) contextID:{"contextID"), a2, a3}];
    LODWORD(v10) = [*(a1 + 40) pid];
    v11 = sub_100027730(*(a1 + 48));
    v12 = [v11 pid];

    if (v10 == v12)
    {
      v10 = 0xFFFFFFFFLL;
    }

    else
    {
      v10 = v10;
    }

    v13 = +[BKSMousePointerService sharedInstance];
    v14 = sub_1000276BC(v15[6]);
    [v13 setContextRelativePointerPosition:v9 withInitialVelocity:0 onDisplay:v14 withDecelerationRate:v10 restrictingToPID:*(a1 + 96)];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, v7);
  }
}

uint64_t sub_100009920(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  if (IOHIDEventGetType() != 17)
  {
LABEL_17:
    v8 = 0;
    goto LABEL_19;
  }

  if (v4)
  {
    if (([v4 options] & 0x400) != 0)
    {
      goto LABEL_18;
    }

    [v4 acceleratedRelativePositionX];
    if (!BSFloatIsZero())
    {
      goto LABEL_18;
    }

    [v4 acceleratedRelativePositionY];
    IsZero = BSFloatIsZero();
    if (!a3 || (IsZero & 1) == 0)
    {
      if (!IsZero)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    goto LABEL_11;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  if (IntegerValue != IOHIDEventGetIntegerValue())
  {
LABEL_18:
    v8 = 1;
    goto LABEL_19;
  }

LABEL_11:
  Children = IOHIDEventGetChildren();
  v8 = Children;
  if (Children)
  {
    Count = CFArrayGetCount(Children);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v8, v11);
        v12 = IOHIDEventGetType() - 2;
        if (v12 < 6 && ((0x3Du >> v12) & 1) != 0)
        {
          goto LABEL_18;
        }

        if (v10 == ++v11)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

LABEL_19:

  return v8;
}

BOOL sub_100009A48(void *a1)
{
  v1 = [a1 hitTestContexts];
  v2 = [v1 count] != 0;

  return v2;
}

const __CFArray *sub_100009A84()
{
  if (IOHIDEventGetType() != 17)
  {
    return 0;
  }

  result = IOHIDEventGetChildren();
  if (!result)
  {
    return result;
  }

  v1 = result;
  Count = CFArrayGetCount(result);
  if (Count < 1)
  {
    return 0;
  }

  v3 = Count;
  v4 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(v1, v4);
    if (IOHIDEventGetType() == 11)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  return (IOHIDEventGetIntegerValue() & 1);
}

uint64_t sub_100009B20()
{
  if (IOHIDEventGetType() != 17)
  {
    return 0;
  }

  result = IOHIDEventGetChildren();
  if (!result)
  {
    return result;
  }

  v1 = result;
  Count = CFArrayGetCount(result);
  v3 = Count - 1;
  if (Count < 1)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    CFArrayGetValueAtIndex(v1, v4);
    v5 = IOHIDEventGetType() == 11;
    result = v5;
    v5 = v5 || v3 == v4++;
  }

  while (!v5);
  return result;
}

void sub_100009CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009CF0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[307] == 1)
  {
    v2 = WeakRetained;
    [WeakRetained _unhidePointerForReason:@"provisional unhide after delay"];
    [v2 _startProvisionalPromotionTimer];
    WeakRetained = v2;
    v2[308] = 1;
  }
}

void sub_100009EA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100009EC4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 307) & 1) == 0)
  {
    *(WeakRetained + 308) = 0;
    v3 = PSLogAutohide();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Promoting to visible based on touch duration", v4, 2u);
    }
  }
}

void sub_10000A0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A10C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained isActiveOnMainDisplay];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = @"autohide after delay for unknown source";
    if (v4 == 11)
    {
      v5 = @"autohide after delay for mouse";
    }

    if (v4 == 12)
    {
      v6 = @"autohide after delay for trackpad";
    }

    else
    {
      v6 = v5;
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    [v8 _hidePointerForReason:v6];
  }

  else
  {
    v7 = PSLogAutohide();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Timer fired while not on main display, pointer not hiding", buf, 2u);
    }
  }
}

void sub_10000A324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A348(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[336] = 0;
  }
}

void sub_10000A498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000A4B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && WeakRetained[352] == 1)
  {
    WeakRetained[352] = 0;
    v3 = WeakRetained;
    [*(a1 + 32) _unhidePointerForReason:@"Screen done rotating"];
    [*(a1 + 32) _restartAutohideTimer];
    WeakRetained = v3;
  }
}

id *sub_10000A7A8(id *result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return [result[4] _invalidateHoverRegionsForAllPointerClientsExcludingPointerClient:0 hoverRegion:0];
  }

  return result;
}

void sub_10000AEA4(uint64_t a1, _OWORD *a2)
{
  if ([*(a1 + 32) hoverRegionGenerationID] == *(a1 + 64))
  {
    v4 = *(a1 + 32);
    v5 = a2[5];
    v14[4] = a2[4];
    v14[5] = v5;
    v6 = a2[7];
    v14[6] = a2[6];
    v14[7] = v6;
    v7 = a2[1];
    v14[0] = *a2;
    v14[1] = v7;
    v8 = a2[3];
    v14[2] = a2[2];
    v14[3] = v8;
    [v4 setTransformFromClientContextToDisplay:v14];
    [*(a1 + 32) setActiveHoverRegion:*(a1 + 40)];
    [*(a1 + 32) setPreviousPointerEventActiveHoverRegionHitTestState:0];
    [*(a1 + 32) invalidateAutomaticRegionExitTimer];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000B054;
    v13[3] = &unk_100048F08;
    v13[4] = *(a1 + 48);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000B124;
    v11[3] = &unk_100048AF0;
    v12 = *(a1 + 56);
    [SBC2GroupCompletion perform:v13 finalCompletion:v11];
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = [NSError errorWithDomain:@"PUIDPointerControllerErrorDomain" code:-5003 userInfo:0];
      (*(v9 + 16))(v9, v10);
    }
  }
}

void sub_10000B054(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_alloc_init(PUIDPointerStateUpdateHandlerCollection);
  v4 = v3[2](v3, @"portalSourceTransition");
  [(PUIDPointerStateUpdateHandlerCollection *)v6 setPortalSourceTransitionCompletion:v4];

  v5 = v3[2](v3, @"contentMatchMoveSource");

  [(PUIDPointerStateUpdateHandlerCollection *)v6 setContentMatchMoveSourceTransitionCompletion:v5];
  [*(a1 + 32) _updatePointerWithOptions:0 updateHandlerCollection:v6];
}

uint64_t sub_10000B124(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

id sub_10000C550(id a1, NSNumber *a2)
{
  [(NSNumber *)a2 integerValue];

  return PSPointerAutohideReasonToString();
}

id sub_10000C700(id a1, NSNumber *a2)
{
  v2 = [(NSNumber *)a2 integerValue];

  return _PSPointerForceVisibleReasonToString(v2);
}

void sub_10000CE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000CE88(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePeriodicRefreshTimerAction];
}

void sub_10000D040(void *a1, __int128 *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000D100;
  block[3] = &unk_100048FD8;
  v2 = a2[5];
  v13 = a2[4];
  v14 = v2;
  v3 = a2[7];
  v15 = a2[6];
  v16 = v3;
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  v5 = a2[3];
  v11 = a2[2];
  v12 = v5;
  v6 = a1[5];
  v17 = a1[6];
  block[4] = a1[4];
  v8 = v6;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10000D100(uint64_t a1)
{
  v2 = *(a1 + 128);
  *&a.m31 = *(a1 + 112);
  *&a.m33 = v2;
  v3 = *(a1 + 160);
  *&a.m41 = *(a1 + 144);
  *&a.m43 = v3;
  v4 = *(a1 + 64);
  *&a.m11 = *(a1 + 48);
  *&a.m13 = v4;
  v5 = *(a1 + 96);
  *&a.m21 = *(a1 + 80);
  *&a.m23 = v5;
  memset(&v12, 0, sizeof(v12));
  if (CATransform3DEqualToTransform(&a, &v12))
  {
    sub_1000273D8(a1);
  }

  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);
    v8 = *(a1 + 128);
    *&a.m31 = *(a1 + 112);
    *&a.m33 = v8;
    v9 = *(a1 + 160);
    *&a.m41 = *(a1 + 144);
    *&a.m43 = v9;
    v10 = *(a1 + 64);
    *&a.m11 = *(a1 + 48);
    *&a.m13 = v10;
    v11 = *(a1 + 96);
    *&a.m21 = *(a1 + 80);
    *&a.m23 = v11;
    return v7(result, &a);
  }

  return result;
}

void sub_10000D78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10000D7B0(uint64_t a1, _OWORD *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if ((*(a1 + 48) || WeakRetained[315] == 1) && [*(a1 + 32) hoverRegionGenerationID] == *(a1 + 56))
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        [v6 transformFromClientContextToDisplay];
      }

      else
      {
        memset(&a, 0, sizeof(a));
      }

      v7 = a2[5];
      *&v16.m31 = a2[4];
      *&v16.m33 = v7;
      v8 = a2[7];
      *&v16.m41 = a2[6];
      *&v16.m43 = v8;
      v9 = a2[1];
      *&v16.m11 = *a2;
      *&v16.m13 = v9;
      v10 = a2[3];
      *&v16.m21 = a2[2];
      *&v16.m23 = v10;
      if (!CATransform3DEqualToTransform(&a, &v16))
      {
        v11 = *(a1 + 32);
        v12 = a2[5];
        *&a.m31 = a2[4];
        *&a.m33 = v12;
        v13 = a2[7];
        *&a.m41 = a2[6];
        *&a.m43 = v13;
        v14 = a2[1];
        *&a.m11 = *a2;
        *&a.m13 = v14;
        v15 = a2[3];
        *&a.m21 = a2[2];
        *&a.m23 = v15;
        [v11 setTransformFromClientContextToDisplay:&a];
        [v5 _updatePointerWithOptions:0 updateHandlerCollection:0];
      }
    }

    if (*(v5 + 32) == 2)
    {
      *(v5 + 32) = 0;
    }

    *(v5 + 314) = 0;
    if (*(v5 + 315) == 1 && !*(v5 + 37))
    {
      [v5 _beginPeriodicClientTransformRefreshTimer];
    }
  }
}

void sub_10000DEC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000DF18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10000DF30(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v7];
  if (!v6)
  {
    v6 = +[NSMutableSet set];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKey:v7];
  }

  [v6 addObject:v5];
}

void sub_10000DFE8(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(*(*(a1 + 32) + 8) + 40) objectForKey:v7];
  if (!v6)
  {
    v6 = +[NSMutableSet set];
    [*(*(*(a1 + 32) + 8) + 40) setObject:v6 forKey:v7];
  }

  [v6 addObject:v5];
}

void sub_10000F91C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak(&STACK[0x320]);
  _Unwind_Resume(a1);
}

void sub_10000F968(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && *(WeakRetained + 32) != 1)
  {
    [v5 invalidateAutomaticRegionExitTimer];
    [v5 setActiveHoverRegion:0];
    [v4 _updatePointerWithOptions:0 updateHandlerCollection:0];
  }
}

uint64_t sub_10000F9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = PSLogMaterial();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100027678(v6);
  }

  *(*(a1 + 32) + 313) = 0;
  [*(a1 + 32) _updatePointerWithOptions:0 updateHandlerCollection:0];
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, a2, a3);
  }

  return result;
}

void sub_10000FA7C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained + 316) = 0;
    v1 = *(WeakRetained + 30);
    *(WeakRetained + 30) = 0;

    if (*(WeakRetained + 9))
    {
      v2 = IOHIDEventGetIntegerValue() != 0;
      if (v2 == [*(WeakRetained + 15) isPressed])
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if ([*(WeakRetained + 15) isPressed])
    {
LABEL_4:
      [WeakRetained _updatePointerWithOptions:0 updateHandlerCollection:0];
    }
  }

LABEL_5:
}

uint64_t sub_10000FCB8(uint64_t a1)
{
  v1 = *(a1 + 32);
  BKSHIDServicesGetCALayerTransform();
  return (*(v1 + 16))(v1, &v3);
}

void sub_100010100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10001011C(uint64_t a1)
{
  objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  return _objc_release_x1();
}

double sub_1000103E4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = [*(a1 + 24) screen];
    memset(&v9, 0, sizeof(v9));
    [v3 _rotation];
    CGAffineTransformMakeRotation(&m, -v4);
    UIIntegralTransform();
    [v3 scale];
    v7 = v9;
    CGAffineTransformScale(&m, &v7, v5, v5);
    v9 = m;
    CATransform3DMakeAffineTransform(a2, &m);
  }

  else
  {
    result = 0.0;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id sub_100010590(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 8));
  v4 = [v2 appendObject:WeakRetained withName:@"display"];

  v5 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 16) withName:@"pointerRenderingController"];
  v6 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 24) puid_description];
  v8 = [v6 appendObject:v7 withName:@"pointerRenderingWindow"];

  v9 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 32) withName:@"systemPointerRenderingController"];
  v10 = *(a1 + 32);
  v11 = [*(*(a1 + 40) + 40) puid_description];
  v12 = [v10 appendObject:v11 withName:@"systemPointerWindow"];

  v13 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 48) withName:@"pointerEventStream"];
  v14 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 56) withName:@"touchStream"];
  return [*(a1 + 32) appendObject:*(*(a1 + 40) + 64) withName:@"systemPointerClient"];
}

void sub_100010CF4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[PSPointerClientDefaultServiceSpecification domainName];
  [v5 setDomain:v3];

  v4 = +[PSPointerClientDefaultServiceSpecification serviceName];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

void sub_100010D94(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = +[PSPointerClientDefaultLaunchingServiceSpecification domainName];
  [v5 setDomain:v3];

  v4 = +[PSPointerClientDefaultLaunchingServiceSpecification serviceName];
  [v5 setService:v4];

  [v5 setDelegate:*(a1 + 32)];
}

void sub_100010F4C(uint64_t a1)
{
  v2 = [*(a1 + 32) _nonLaunchingServiceConnectionForPointerClient:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v11 = [v2 remoteTarget];
    v4 = [NSValue bs_valueWithCGPoint:*(a1 + 56), *(a1 + 64)];
    v5 = [NSValue bs_valueWithCGPoint:*(a1 + 72), *(a1 + 80)];
    v6 = [NSNumber numberWithUnsignedInt:*(a1 + 112)];
    v7 = [NSNumber numberWithDouble:*(a1 + 88)];
    v8 = [NSNumber numberWithDouble:*(a1 + 96)];
    v9 = [NSNumber numberWithDouble:*(a1 + 104)];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100011158;
    v15[3] = &unk_100049190;
    v10 = &v16;
    v16 = *(a1 + 48);
    [v11 adjustedDecelerationTargetPointerPosition:v4 velocity:v5 inContextID:v6 cursorRegionLookupRadius:v7 cursorRegionLookupResolution:v8 lookupConeAngle:v9 completion:v15];

LABEL_5:
    goto LABEL_6;
  }

  if (*(a1 + 48))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011280;
    block[3] = &unk_1000491B8;
    v10 = &v13;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    dispatch_async(&_dispatch_main_q, block);
    goto LABEL_5;
  }

LABEL_6:
}

void sub_100011158(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 32))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100011234;
    block[3] = &unk_100049168;
    v10 = *(a1 + 32);
    v8 = v5;
    v9 = v6;
    dispatch_async(&_dispatch_main_q, block);
  }
}

uint64_t sub_100011234(uint64_t a1)
{
  v2 = *(a1 + 48);
  [*(a1 + 32) bs_CGPointValue];
  v3 = *(a1 + 40);
  v4 = *(v2 + 16);

  return v4(v2, v3);
}

void sub_100011280(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1001 userInfo:0];
  (*(v2 + 16))(v2, v3, *(a1 + 40), *(a1 + 48));
}

void sub_1000113EC(uint64_t a1)
{
  v2 = [*(a1 + 32) _nonLaunchingServiceConnectionForPointerClient:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 remoteTarget];
    [v4 invalidatedPortalSourceCollections:*(a1 + 48) matchMoveSources:*(a1 + 56)];
  }

  else
  {
    v4 = PSLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ - failed to find connection in order to invalidate sources", &v6, 0xCu);
    }
  }
}

void sub_100011850(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PSPointerClientDefaultServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = [[_PUIDXPCClientControllerTarget alloc] initWithConnection:*(a1 + 32) proxyInterface:*(a1 + 40)];
  [v3 setInterfaceTarget:v5];
  [v3 setTargetQueue:*(*(a1 + 40) + 56)];
  v6 = +[PSPointerClientDefaultServiceSpecification serviceQuality];
  [v3 setServiceQuality:v6];

  objc_initWeak(&location, *(a1 + 40));
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_1000119B8;
  v11 = &unk_100049230;
  objc_copyWeak(&v12, &location);
  v7 = objc_retainBlock(&v8);
  [v3 setInterruptionHandler:{v7, v8, v9, v10, v11}];
  [v3 setInvalidationHandler:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_10001199C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000119B8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDisconnectForNonLaunchingConnection:v5];
  }
}

void sub_100011A1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) didAddPointerClient:*(a1 + 40)];
}

void sub_100011A70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[PSPointerClientDefaultLaunchingServiceSpecification interface];
  [v3 setInterface:v4];

  v5 = [[_PUIDXPCClientControllerTarget alloc] initWithConnection:*(a1 + 32) proxyInterface:*(a1 + 40)];
  [v3 setInterfaceTarget:v5];
  [v3 setTargetQueue:*(*(a1 + 40) + 56)];
  v6 = +[PSPointerClientDefaultLaunchingServiceSpecification serviceQuality];
  [v3 setServiceQuality:v6];

  objc_initWeak(&location, *(a1 + 40));
  v8 = _NSConcreteStackBlock;
  v9 = 3221225472;
  v10 = sub_100011BD8;
  v11 = &unk_100049230;
  objc_copyWeak(&v12, &location);
  v7 = objc_retainBlock(&v8);
  [v3 setInterruptionHandler:{v7, v8, v9, v10, v11}];
  [v3 setInvalidationHandler:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void sub_100011BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100011BD8(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleDisconnectForLaunchingConnection:v5];
  }
}

void sub_100011C3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) didAddPointerClient:*(a1 + 40)];
}

void sub_100011DF8(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v6 = [WeakRetained xpcClientContextController:v3 createPointerPortalSourceCollectionForDisplay:v4 client:v5 error:&v9];
  v7 = v9;

  v8 = a1[7];
  if (v8)
  {
    (*(v8 + 16))(v8, v6, v7);
  }
}

uint64_t sub_100011FEC(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained xpcClientContextController:a1[4] invalidatePointerPortalSourceCollection:a1[5] forClient:a1[6]];

  result = a1[7];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void sub_1000121E0(uint64_t a1)
{
  v2 = [*(a1 + 32) integerValue];
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
  if (!v2)
  {
    v11 = 0;
LABEL_21:
    v4 = 0;
    goto LABEL_22;
  }

  v4 = 0;
  v5 = v2;
  while (1)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v25 = 0;
    v9 = [WeakRetained xpcClientContextController:v6 createContentMatchMoveSourceForDisplay:v7 client:v8 error:&v25];
    v10 = v25;
    v11 = v10;
    if (!v9)
    {
      break;
    }

    if (!v4)
    {
      v4 = [[NSMutableArray alloc] initWithCapacity:v2];
    }

    [v4 addObject:v9];

    if (!--v5)
    {
      v11 = 0;
      goto LABEL_22;
    }
  }

  if (v10 && [v4 count])
  {
    v12 = PSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 56);
      v14 = [v4 count];
      *buf = 138543618;
      v28 = v13;
      v29 = 2048;
      v30 = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - error creating match move sources, invlidating %lu source(s)", buf, 0x16u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = v4;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [WeakRetained xpcClientContextController:*(a1 + 40) invalidateContentMatchMoveSource:*(*(&v21 + 1) + 8 * v19) forClient:{*(a1 + 56), v21}];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v17);
    }

    goto LABEL_21;
  }

LABEL_22:
  v20 = *(a1 + 64);
  if (v20)
  {
    (*(v20 + 16))(v20, v4, v11);
  }
}

void sub_100012598(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [WeakRetained xpcClientContextController:*(a1 + 32) invalidateContentMatchMoveSource:*(*(&v9 + 1) + 8 * v7) forClient:{*(a1 + 48), v9}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 56);
  if (v8)
  {
    (*(v8 + 16))(v8, 0);
  }
}

void sub_100012828(uint64_t a1)
{
  if (([*(a1 + 32) isNumericDataValid] & 1) != 0 || !*(a1 + 32))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 64));
    if (WeakRetained)
    {
      [WeakRetained xpcClientContextController:*(a1 + 40) didUpdateHoverRegion:*(a1 + 32) forClient:*(a1 + 48) transitionCompletion:*(a1 + 56)];
    }

    else
    {
      v6 = *(a1 + 56);
      if (v6)
      {
        (*(v6 + 16))(v6, 0);
      }
    }

    _objc_release_x1();
  }

  else
  {
    v2 = PSLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100027ABC(v2);
    }

    v3 = *(a1 + 56);
    if (v3)
    {
      v4 = [NSError errorWithDomain:@"PUIDXPCClientControllerErrorDomain" code:-1003 userInfo:0];
      (*(v3 + 16))(v3, v4);
    }
  }
}

void sub_100012A64(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) autohidePointerForReason:objc_msgSend(*(a1 + 40) forClient:{"integerValue"), *(a1 + 48)}];
}

void sub_100012CA8(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained xpcClientContextController:a1[4] setPointerPersistentlyHiddenForReasons:a1[5] forClient:a1[6]];
}

void sub_100012EDC(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 64));
  [WeakRetained xpcClientContextController:a1[4] setPointerPersistentlyVisibleForReasons:a1[5] forClient:a1[6]];
}

void sub_100013084(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) didSetSystemPointerInteractionContextID:objc_msgSend(*(a1 + 40) display:"unsignedIntValue") forClient:{*(a1 + 48), *(a1 + 56)}];
}

void sub_10001326C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) didSetOverridesHoverRegions:objc_msgSend(*(a1 + 40) display:"BOOLValue") forClient:{*(a1 + 48), *(a1 + 56)}];
}

void sub_1000133FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) setWantsServiceKeepAlive:objc_msgSend(*(a1 + 40) forClient:{"BOOLValue"), *(a1 + 48)}];
}

void sub_1000134FC(uint64_t a1)
{
  v2 = PSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    [v3 _clientInteractionState];
    v4 = PSPointerClientInteractionStateToString();
    *buf = 138543618;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Client interaction state changing to %{public}@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(*(a1 + 32) + 24) copy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) remoteTarget];
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) _clientInteractionState]);
        [v10 clientInteractionStateDidChange:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_100013754(uint64_t a1)
{
  v2 = PSLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    [v3 _pointerVisibilityState];
    v4 = PSPointerVisibilityStateToString();
    *buf = 138543618;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: Pointer visibility state finished changing to %{public}@", buf, 0x16u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [*(*(a1 + 32) + 24) copy];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) remoteTarget];
        v11 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [*(a1 + 32) _pointerVisibilityState]);
        [v10 pointerVisibilityStateDidChange:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

void sub_1000139EC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) didRemovePointerClient:*(a1 + 40)];
}

void sub_100013B18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 64));
  [WeakRetained xpcClientContextController:*(a1 + 32) didRemovePointerClient:*(a1 + 40)];
}

void sub_100014100(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained createPointerPortalSourceCollectionForDisplay:a1[5] completion:a1[6]];
}

void sub_100014214(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained invalidatePointerPortalSourceCollection:a1[5] completion:a1[6]];
}

void sub_100014348(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained createContentMatchMoveSourcesForDisplay:a1[5] countValue:a1[6] completion:a1[7]];
}

void sub_100014460(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained invalidateContentMatchMoveSources:a1[5] completion:a1[6]];
}

void sub_100014574(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained setActiveHoverRegion:a1[5] transitionCompletion:a1[6]];
}

void sub_10001465C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained autohidePointerForReason:*(a1 + 40)];
}

void sub_100014744(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setPointerPersistentlyHiddenForReasons:*(a1 + 40)];
}

void sub_10001482C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setPointerPersistentlyVisibleForReasons:*(a1 + 40)];
}

void sub_100014940(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained setSystemPointerInteractionContextID:a1[5] display:a1[6]];
}

void sub_100014A54(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 16));
  [WeakRetained setOverridesHoverRegions:a1[5] display:a1[6]];
}

void sub_100014B3C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  [WeakRetained setWantsServiceKeepAlive:*(a1 + 40)];
}

void sub_100014D28(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  _set_user_dir_suffix();
  BSSetMainThreadPriorityFixedForUI();
  pthread_self();
  BSPthreadSetFixedPriority();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = UIApplicationMain(a1, a2, v6, v8);

  objc_autoreleasePoolPop(v4);
  return v9;
}

uint64_t sub_100015250(uint64_t a1)
{
  if (IOHIDEventGetType() != 17)
  {
    IOHIDEventGetChildren();
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = v12 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = sub_100015250(*(*(&v9 + 1) + 8 * v6));
          if (v7)
          {
            a1 = v7;
            goto LABEL_12;
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    a1 = 0;
LABEL_12:
  }

  return a1;
}

void sub_100019580(uint64_t a1)
{
  v2 = objc_alloc_init(FBSWorkspaceSceneUpdateResponse);
  (*(*(a1 + 32) + 16))();
}

void sub_1000199F4(id a1)
{
  pthread_self();

  BSPthreadSetFixedPriority();
}

void sub_100019B34(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 24));
  v4 = [v2 appendObject:WeakRetained withName:@"display"];

  v5 = *(a1 + 32);
  v6 = objc_loadWeakRetained((*(a1 + 40) + 16));
  v7 = [v5 appendPointer:v6 withName:@"pointerRenderingScene"];

  v8 = *(a1 + 32);
  v10 = objc_loadWeakRetained((*(a1 + 40) + 8));
  v9 = [v8 appendPointer:v10 withName:@"systemPointerScene"];
}

uint64_t sub_100019EA0()
{
  if (BSFloatEqualToFloat())
  {
    return 1;
  }

  return BSFloatEqualToFloat();
}

void sub_10001A9E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a64);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001AA40(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v11 = [v7 window];

  if (!v11)
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_10001ABCC;
    v17 = &unk_100048A28;
    v18 = WeakRetained;
    v19 = v7;
    [UIView performWithoutAnimation:&v14];
  }

  v12 = [v8 shape];
  [v7 setPointerShape:v12 animated:v11 != 0 completion:0];

  v13 = [v8 shape];
  [v13 bounds];
  [v7 setBounds:?];

  if (v9)
  {
    [WeakRetained _removeRecordOfAccessory:v9];
    [a1[4] removeObjectForKey:v9];
  }

  [WeakRetained _recordAccessory:v8 withShapeView:v7];
  [a1[5] setObject:v7 forKeyedSubscript:v8];
}

void sub_10001ABD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10001ACB0;
  v10[3] = &unk_100048A28;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v10 completion:0];
}

id sub_10001ACB0(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 finalTransform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [v3 setTransform:v5];
  return [*(a1 + 32) setAlpha:1.0];
}

void sub_10001AD10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [v6 alpha];
  if (BSFloatGreaterThanFloat())
  {
    v7 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001AE58;
    v10[3] = &unk_100048A28;
    v11 = v6;
    v12 = v5;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001AEB8;
    v8[3] = &unk_1000493E8;
    v8[4] = *(a1 + 40);
    v9 = v12;
    [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v10 completion:v8];
  }
}

id sub_10001AE58(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 initialTransform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [v3 setTransform:v5];
  return [*(a1 + 32) setAlpha:0.0];
}

void sub_10001AEB8(uint64_t a1)
{
  if (([*(*(a1 + 32) + 8) containsObject:*(a1 + 40)] & 1) == 0)
  {
    v2 = [*(a1 + 32) _visibleShapeViewForAccessory:*(a1 + 40)];
    if (v2)
    {
      v3 = v2;
      [v2 removeFromSuperview];
      [*(a1 + 32) _removeRecordOfAccessory:*(a1 + 40)];
      v2 = v3;
    }
  }
}

id sub_10001B0FC(uint64_t a1)
{
  [*(a1 + 32) setIntensity:1.0];
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 32) setCenter:{CGPointZero.x, CGPointZero.y}];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    [v2 initialTransform];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  return [v3 setTransform:v5];
}

void sub_10001CED8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 112));
  objc_destroyWeak((v1 + 104));
  objc_destroyWeak(&STACK[0x228]);
  objc_destroyWeak(&STACK[0x220]);
  objc_destroyWeak(&STACK[0x470]);
  objc_destroyWeak(&STACK[0x2C8]);
  objc_destroyWeak(&STACK[0x330]);
  _Unwind_Resume(a1);
}

id sub_10001CF80(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 88) == 1)
  {
    [*(v2 + 40) setPath:0];
    v3 = [*(*(a1 + 32) + 48) layer];
    [v3 setContents:*(a1 + 40)];

    [*(*(a1 + 32) + 48) setFrame:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
    [*(*(a1 + 32) + 48) setAlpha:1.0];
  }

  else
  {
    v4 = [*(v2 + 48) layer];
    [v4 setContents:0];

    v5 = *(a1 + 32);
    v6 = *(v5 + 40);
    v7 = [*(v5 + 88) path];
    [v6 setPath:v7];

    [*(*(a1 + 32) + 48) setAlpha:0.0];
    v8 = [*(*(a1 + 32) + 64) layer];
    [v8 setValue:&__kCFBooleanTrue forKeyPath:@"filters.alphaThreshold.enabled"];
  }

  v9 = *(*(a1 + 32) + 88);
  v10 = *(a1 + 48);

  return [v9 setPath:v10];
}

void sub_10001D0E8(id *a1, int a2, double a3)
{
  WeakRetained = objc_loadWeakRetained(a1 + 13);
  if (WeakRetained)
  {
    v7 = objc_alloc_init(_PUIDPointerShapeMorphingAnimationProxy);
    [a1[4] applyForTime:v7 presentationObject:0 modelObject:a3];
    memset(&v60, 0, sizeof(v60));
    v8 = [a1[4] keyPath];
    v9 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v8];
    v10 = v9;
    if (v9)
    {
      [v9 CATransform3DValue];
    }

    else
    {
      memset(&v60, 0, sizeof(v60));
    }

    if (a2)
    {
      v11 = WeakRetained[3];
      if (v11)
      {
        [v11 transform3D];
      }

      else
      {
        memset(&a, 0, sizeof(a));
      }

      b = v60;
      if (CATransform3DEqualToTransform(&a, &b))
      {
        v12 = WeakRetained[3];
        CATransform3DMakeTranslation(&a, -1.0, -1.0, 0.0);
        [v12 setTransform3D:&a];
      }
    }

    v13 = WeakRetained[3];
    a = v60;
    [v13 setTransform3D:&a];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[5] applyForTime:v7 presentationObject:0 modelObject:a3];
    memset(&a, 0, sizeof(a));
    v14 = [a1[5] keyPath];
    v15 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v14];
    v16 = v15;
    if (v15)
    {
      [v15 CATransform3DValue];
    }

    else
    {
      memset(&a, 0, sizeof(a));
    }

    if (a2)
    {
      v17 = WeakRetained[7];
      if (v17)
      {
        [v17 transform3D];
      }

      else
      {
        memset(&b, 0, sizeof(b));
      }

      v57 = a;
      if (CATransform3DEqualToTransform(&b, &v57))
      {
        v18 = WeakRetained[7];
        CATransform3DMakeTranslation(&b, -1.0, -1.0, 0.0);
        [v18 setTransform3D:&b];
      }
    }

    v19 = WeakRetained[7];
    b = a;
    [v19 setTransform3D:&b];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[6] applyForTime:v7 presentationObject:0 modelObject:a3];
    memset(&b, 0, sizeof(b));
    v20 = [a1[6] keyPath];
    v21 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v20];
    v22 = v21;
    if (v21)
    {
      [v21 CATransform3DValue];
    }

    else
    {
      memset(&b, 0, sizeof(b));
    }

    if (a2)
    {
      v23 = WeakRetained[2];
      if (v23)
      {
        [v23 transform3D];
      }

      else
      {
        memset(&v57, 0, sizeof(v57));
      }

      v56 = b;
      if (CATransform3DEqualToTransform(&v57, &v56))
      {
        v24 = WeakRetained[2];
        CATransform3DMakeTranslation(&v57, -1.0, -1.0, 0.0);
        [v24 setTransform3D:&v57];
      }
    }

    v25 = WeakRetained[2];
    v57 = b;
    [v25 setTransform3D:&v57];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[7] applyForTime:v7 presentationObject:0 modelObject:a3];
    v26 = [a1[7] keyPath];
    v27 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v26];
    [v27 doubleValue];
    v29 = v28;

    if (a2)
    {
      [WeakRetained[2] alpha];
      if (BSFloatEqualToFloat())
      {
        [WeakRetained[2] setAlpha:1.0 - v29];
      }
    }

    [WeakRetained[2] setAlpha:v29];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[8] applyForTime:v7 presentationObject:0 modelObject:a3];
    v30 = [a1[8] keyPath];
    v31 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v30];
    [v31 doubleValue];
    v33 = v32;

    if (a2)
    {
      [WeakRetained[11] alpha];
      if (BSFloatEqualToFloat())
      {
        [WeakRetained[11] setAlpha:1.0 - v33];
      }
    }

    [WeakRetained[11] setAlpha:v33];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[9] applyForTime:v7 presentationObject:0 modelObject:a3];
    v34 = [a1[9] keyPath];
    v35 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v34];
    [v35 doubleValue];
    v37 = v36;

    if (a2)
    {
      [WeakRetained[5] alpha];
      if (BSFloatEqualToFloat())
      {
        [WeakRetained[5] setAlpha:1.0 - v37];
      }
    }

    [WeakRetained[5] setAlpha:v37];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[10] applyForTime:v7 presentationObject:0 modelObject:a3];
    v38 = [a1[10] keyPath];
    v39 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v38];
    [v39 doubleValue];
    v41 = v40;

    if (a2)
    {
      [WeakRetained[3] alpha];
      if (BSFloatEqualToFloat())
      {
        [WeakRetained[3] setAlpha:1.0 - v41];
      }
    }

    [WeakRetained[3] setAlpha:v41];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[11] applyForTime:v7 presentationObject:0 modelObject:a3];
    v42 = [a1[11] keyPath];
    v43 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v42];
    [v43 doubleValue];
    v45 = v44;

    if (a2)
    {
      [WeakRetained[7] alpha];
      if (BSFloatEqualToFloat())
      {
        [WeakRetained[7] setAlpha:1.0 - v45];
      }
    }

    [WeakRetained[7] setAlpha:v45];
    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
    [a1[12] applyForTime:v7 presentationObject:0 modelObject:a3];
    v46 = [a1[12] keyPath];
    v47 = [(_PUIDPointerShapeMorphingAnimationProxy *)v7 valueForKeyPath:v46];

    if (a2)
    {
      v48 = [WeakRetained[8] layer];
      v49 = [a1[12] keyPath];
      v50 = [v48 valueForKeyPath:v49];
      v51 = [v47 isEqual:v50];

      if (v51)
      {
        v52 = [WeakRetained[8] layer];
        v53 = [a1[12] keyPath];
        [v52 setValue:&off_10004C6B0 forKeyPath:v53];
      }
    }

    v54 = [WeakRetained[8] layer];
    v55 = [a1[12] keyPath];
    [v54 setValue:v47 forKeyPath:v55];

    [(_PUIDPointerShapeMorphingAnimationProxy *)v7 reset];
  }
}

void sub_10001D8FC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    os_unfair_lock_lock(WeakRetained + 18);
    v3 = *&v6[8]._os_unfair_lock_opaque;
    v4 = *(a1 + 56);
    os_unfair_lock_unlock(v6 + 18);
    WeakRetained = v6;
    if (v3 == v4)
    {
      v5 = objc_loadWeakRetained((a1 + 48));
      [v5 value];
      (*(*(a1 + 32) + 16))();

      WeakRetained = v6;
    }
  }
}

void sub_10001D9B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  if (WeakRetained)
  {
    os_unfair_lock_lock(WeakRetained + 18);
    v2 = *&WeakRetained[8]._os_unfair_lock_opaque;
    v3 = *(a1 + 120);
    os_unfair_lock_unlock(WeakRetained + 18);
    if (v2 == v3)
    {
      v4 = objc_alloc_init(_PUIDPointerShapeMorphingAnimationProxy);
      v5 = objc_loadWeakRetained((a1 + 112));
      [v5 presentationValue];
      v7 = v6;
      [*(a1 + 32) applyForTime:v4 presentationObject:0 modelObject:?];
      v8 = *&WeakRetained[6]._os_unfair_lock_opaque;
      v9 = [*(a1 + 32) keyPath];
      v10 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v9];
      v11 = [*(a1 + 32) keyPath];
      [v8 _setPresentationValue:v10 forKey:v11];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 40) applyForTime:v4 presentationObject:0 modelObject:v7];
      v12 = *&WeakRetained[14]._os_unfair_lock_opaque;
      v13 = [*(a1 + 40) keyPath];
      v14 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v13];
      v15 = [*(a1 + 40) keyPath];
      [v12 _setPresentationValue:v14 forKey:v15];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 48) applyForTime:v4 presentationObject:0 modelObject:v7];
      v16 = *&WeakRetained[4]._os_unfair_lock_opaque;
      v17 = [*(a1 + 48) keyPath];
      v18 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v17];
      v19 = [*(a1 + 48) keyPath];
      [v16 _setPresentationValue:v18 forKey:v19];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 56) applyForTime:v4 presentationObject:0 modelObject:v7];
      v20 = *&WeakRetained[4]._os_unfair_lock_opaque;
      v21 = [*(a1 + 56) keyPath];
      v22 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v21];
      v23 = [*(a1 + 56) keyPath];
      [v20 _setPresentationValue:v22 forKey:v23];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 64) applyForTime:v4 presentationObject:0 modelObject:v7];
      v24 = *&WeakRetained[22]._os_unfair_lock_opaque;
      v25 = [*(a1 + 64) keyPath];
      v26 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v25];
      v27 = [*(a1 + 64) keyPath];
      [v24 _setPresentationValue:v26 forKey:v27];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 72) applyForTime:v4 presentationObject:0 modelObject:v7];
      v28 = *&WeakRetained[10]._os_unfair_lock_opaque;
      v29 = [*(a1 + 72) keyPath];
      v30 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v29];
      v31 = [*(a1 + 72) keyPath];
      [v28 _setPresentationValue:v30 forKey:v31];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 80) applyForTime:v4 presentationObject:0 modelObject:v7];
      v32 = *&WeakRetained[6]._os_unfair_lock_opaque;
      v33 = [*(a1 + 80) keyPath];
      v34 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v33];
      v35 = [*(a1 + 80) keyPath];
      [v32 _setPresentationValue:v34 forKey:v35];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 88) applyForTime:v4 presentationObject:0 modelObject:v7];
      v36 = *&WeakRetained[14]._os_unfair_lock_opaque;
      v37 = [*(a1 + 88) keyPath];
      v38 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v37];
      v39 = [*(a1 + 88) keyPath];
      [v36 _setPresentationValue:v38 forKey:v39];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
      [*(a1 + 96) applyForTime:v4 presentationObject:0 modelObject:v7];
      v40 = *&WeakRetained[16]._os_unfair_lock_opaque;
      v41 = [*(a1 + 96) keyPath];
      v42 = [(_PUIDPointerShapeMorphingAnimationProxy *)v4 valueForKeyPath:v41];
      v43 = [*(a1 + 96) keyPath];
      [v40 _setPresentationValue:v42 forKey:v43];

      [(_PUIDPointerShapeMorphingAnimationProxy *)v4 reset];
    }
  }
}

void sub_10001DED8(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_6;
  }

  v3 = *&WeakRetained[2]._os_unfair_lock_opaque;
  if (v3 == *(a1 + 32))
  {
    *&WeakRetained[2]._os_unfair_lock_opaque = 0;

    WeakRetained = v8;
  }

  os_unfair_lock_lock(WeakRetained + 18);
  v4 = *&v8[8]._os_unfair_lock_opaque;
  v5 = *(a1 + 56);
  os_unfair_lock_unlock(v8 + 18);
  if (v4 == v5)
  {
    [(os_unfair_lock_s *)v8 _resetToStableStateWithPath:*&v8[24]._os_unfair_lock_opaque];
    v6 = 1;
  }

  else
  {
LABEL_6:
    v6 = 0;
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v6);
  }
}

void sub_10001E05C(uint64_t a1)
{
  [*(*(a1 + 32) + 88) setPath:*(a1 + 40)];
  [*(*(a1 + 32) + 88) setAlpha:1.0];
  [*(*(a1 + 32) + 16) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 16);
  v14 = *&CATransform3DIdentity.m33;
  v20 = *&CATransform3DIdentity.m31;
  v15 = v20;
  v21 = v14;
  v12 = *&CATransform3DIdentity.m43;
  v22 = *&CATransform3DIdentity.m41;
  v13 = v22;
  v23 = v12;
  v10 = *&CATransform3DIdentity.m13;
  v16 = *&CATransform3DIdentity.m11;
  v11 = v16;
  v17 = v10;
  v8 = *&CATransform3DIdentity.m23;
  v18 = *&CATransform3DIdentity.m21;
  v9 = v18;
  v19 = v8;
  [v2 setTransform3D:&v16];
  [*(*(a1 + 32) + 24) setAlpha:0.0];
  v3 = *(*(a1 + 32) + 24);
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [v3 setTransform3D:&v16];
  v4 = *(*(a1 + 32) + 56);
  v20 = v15;
  v21 = v14;
  v22 = v13;
  v23 = v12;
  v16 = v11;
  v17 = v10;
  v18 = v9;
  v19 = v8;
  [v4 setTransform3D:&v16];
  [*(*(a1 + 32) + 56) setAlpha:1.0];
  [*(*(a1 + 32) + 40) setAlpha:0.0];
  [*(*(a1 + 32) + 40) setPath:0];
  v5 = [*(*(a1 + 32) + 48) layer];
  [v5 setContents:0];

  [*(*(a1 + 32) + 48) setAlpha:0.0];
  v6 = [*(*(a1 + 32) + 64) layer];
  [v6 setValue:&__kCFBooleanFalse forKeyPath:@"filters.alphaThreshold.enabled"];

  v7 = [*(*(a1 + 32) + 64) layer];
  [v7 setValue:&off_10004C660 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

void sub_10001F680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id location)
{
  objc_destroyWeak((v30 + 32));
  objc_destroyWeak(&a19);
  objc_destroyWeak(&a24);
  objc_destroyWeak(&a29);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001F720(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[30] value];
    [v3 _updatePointerShapePosition:1 onAxis:1 isModel:v2];
    WeakRetained = v3;
  }
}

void sub_10001F7A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[30] presentationValue];
    [v3 _updatePointerShapePosition:1 onAxis:0 isModel:v2];
    WeakRetained = v3;
  }
}

void sub_10001F828(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[31] value];
    [v3 _updatePointerShapePosition:2 onAxis:1 isModel:v2];
    WeakRetained = v3;
  }
}

void sub_10001F8AC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[31] presentationValue];
    [v3 _updatePointerShapePosition:2 onAxis:0 isModel:v2];
    WeakRetained = v3;
  }
}

void sub_10001FAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10001FAC8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    [WeakRetained[30] value];
    [v5[30] setValue:v3 + (*(a1 + 40) - *(a1 + 56)) * 0.5];
    [v5[31] value];
    [v5[31] setValue:v4 + (*(a1 + 48) - *(a1 + 64)) * 0.5];
    WeakRetained = v5;
  }
}

uint64_t sub_100022070(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  v9 = 1;
  if (fabs(a3) == INFINITY)
  {
    v10 = PSLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      sub_1000284E8();
    }

    v9 = 0;
  }

  if (fabs(a4) == INFINITY)
  {
    v11 = PSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1000285B8();
    }

    v9 = 0;
  }

  return v9;
}

void sub_1000221D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_100022768;
  v49[3] = &unk_100049538;
  v4 = *(a1 + 40);
  v49[4] = *(a1 + 32);
  v50 = v4;
  v51 = *(a1 + 48);
  v5 = objc_retainBlock(v49);
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_1000227CC;
  v47[3] = &unk_100049560;
  v47[4] = *(a1 + 32);
  v48 = *(a1 + 64);
  v6 = objc_retainBlock(v47);
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_1000227E8;
  v45[3] = &unk_100049560;
  v45[4] = *(a1 + 32);
  v46 = *(a1 + 64);
  v7 = objc_retainBlock(v45);
  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100022804;
  v44[3] = &unk_100048BA8;
  v44[4] = *(a1 + 32);
  v8 = objc_retainBlock(v44);
  if (*(a1 + 88) != 1)
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100022858;
    v35[3] = &unk_100049588;
    v36 = v5;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    [UIView _performWithoutRetargetingAnimations:v35];

    v11 = v36;
    goto LABEL_23;
  }

  v33 = v7;
  v34 = v5;
  v9 = *(a1 + 80);
  v10 = *(*(a1 + 32) + 256);
  if ((v9 & 4) == 0)
  {
    v11 = [v10 systemPointerPositionAnimationSettings];
    v12 = *(a1 + 32);
    goto LABEL_7;
  }

  v11 = [v10 systemPointerPositionHighQualityFrequencyAnimationSettings];
  v12 = *(a1 + 32);
  if (v12[37])
  {
LABEL_7:
    v13 = v3[2](v3, @"modelPositionAnimations");
    v14 = [v12 _positionAnimationCountIncrementingCompletionWrapper:v13];

    [UIView _animateUsingSpringBehavior:v11 tracking:0 animations:v34 completion:v14];
    goto LABEL_8;
  }

  (v34[2])();
LABEL_8:
  v15 = *(a1 + 40);
  v16 = [*(*(a1 + 32) + 24) isPointerUnderlayingContent];
  v17 = v15;
  v18 = v17;
  v21 = (v16 & 1) == 0 && (([v17 bounds], v19 != CGSizeZero.width) || v20 != CGSizeZero.height) && fmax(v19 / v20, v20 / v19) > 7.9;

  v42 = 0.0;
  v43 = 0.0;
  v40 = 0.0;
  v41 = 0.0;
  [*(a1 + 32) _relativePositionAnimationParametersUsingSystemPointerPositionSettings:v11 forTextContent:v21 outXDamping:&v43 outXResponse:&v42 outYDamping:&v41 outYResponse:&v40];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v23 = *(a1 + 32);
LABEL_19:
    v25 = v3[2](v3, @"relativePositionXAnimations");
    v26 = [v23 _positionAnimationCountIncrementingCompletionWrapper:v25];

    v24 = v6;
    [UIView _animateUsingSpringWithDampingRatio:"_animateUsingSpringWithDampingRatio:response:tracking:dampingRatioSmoothing:responseSmoothing:targetSmoothing:projectionDeceleration:animations:completion:" response:0 tracking:v43 dampingRatioSmoothing:v42 responseSmoothing:0.0 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:?];
    v27 = *(a1 + 32);
    v28 = v3[2](v3, @"relativePositionYAnimations");
    v29 = [v27 _positionAnimationCountIncrementingCompletionWrapper:v28];

    v7 = v33;
    [UIView _animateUsingSpringWithDampingRatio:0 response:v33 tracking:v29 dampingRatioSmoothing:v41 responseSmoothing:v40 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];

    goto LABEL_20;
  }

  IsZero = BSFloatIsZero();
  v23 = *(a1 + 32);
  if ((v9 & 4) == 0 || !IsZero || v23[37])
  {
    goto LABEL_19;
  }

  v24 = v6;
  (v6[2])(v6);
  v7 = v33;
  (v33[2])(v33);
LABEL_20:
  v30 = [*(*(a1 + 32) + 200) materialStyle];
  if (v30 != [*(*(a1 + 32) + 24) pointerMaterialLuminance])
  {
    v31 = [*(*(a1 + 32) + 256) materialTransitionAnimationSettings];
    v32 = v3[2](v3, @"pointerMaterialTransitionAnimations");
    [UIView _animateUsingSpringBehavior:v31 tracking:0 animations:v8 completion:v32];
  }

  v5 = v34;
  v6 = v24;
LABEL_23:
}

id sub_100022768(double *a1)
{
  v2 = *(a1 + 4);
  v3 = v2[26];
  [v2 _samplingBoundsForPointerShape:*(a1 + 5)];
  [v3 setBounds:?];
  v4 = *(*(a1 + 4) + 264);
  v5 = a1[6];
  v6 = a1[7];

  return [v4 setPosition:{v5, v6}];
}

id sub_100022804(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 200);
  v3 = [*(v1 + 24) pointerMaterialLuminance];

  return [v2 setMaterialStyle:v3];
}

uint64_t sub_100022858(void *a1)
{
  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  (*(a1[6] + 16))();
  v2 = *(a1[7] + 16);

  return v2();
}

void sub_1000228C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != v3)
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = (*(a2 + 16))(a2, @"portalTransitionAnimations");
    [v4 _transitionFromPointerPortalSourceView:v3 toPointerPortalSourceView:v2 animated:v5 completion:v6];
  }
}

void sub_10002296C(uint64_t a1)
{
  v1 = [*(a1 + 32) portalSourceTransitionCompletion];
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 1, 0);
    v1 = v2;
  }
}

void sub_1000229C4(uint64_t a1, void (**a2)(id, const __CFString *))
{
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 200);
  v5 = *(a1 + 48);
  v7 = a2 + 2;
  v6 = a2[2];
  v8 = a2;
  v9 = v6();
  [v4 setPointerShape:v3 animated:v5 completion:v9];

  v10 = *(a1 + 40);
  v11 = *(*(a1 + 32) + 272);
  v12 = *(a1 + 48);
  v13 = (*v7)(v8, @"specularEffectPointerShape");

  [v11 setPointerShape:v10 animated:v12 completion:v13];
}

void sub_100022AB0(uint64_t a1)
{
  v1 = [*(a1 + 32) shapeTransitionCompletion];
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 1, 0);
    v1 = v2;
  }
}

void sub_100022B08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  if (*(a1 + 48) == 1)
  {
    [*(*(a1 + 32) + 256) visibleToHiddenPointerBlurRadius];
    v4 = v5;
  }

  [*(*(a1 + 32) + 24) pointerVisualIntensity];
  v7 = *(a1 + 48);
  if (v7 == 1)
  {
    v9 = 0.0;
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
    v9 = 1.0;
    if (v7 == 3)
    {
      if (BSFloatGreaterThanFloat())
      {
        v10 = v8 + 0.15;
        v11 = [*(*(a1 + 32) + 24) pointerMaterialLuminance];
        v12 = *(*(a1 + 32) + 256);
        if (v11 == 2)
        {
          [v12 minFlexibleRectLightLuminanceIntensity];
        }

        else
        {
          [v12 minFlexibleRectDarkLuminanceIntensity];
        }

        v14 = v13;
        [*(a1 + 40) bounds];
        Width = CGRectGetWidth(v58);
        [*(a1 + 40) bounds];
        Height = CGRectGetHeight(v59);
        if (Width >= Height)
        {
          v17 = Width;
        }

        else
        {
          v17 = Height;
        }

        [*(*(a1 + 32) + 256) systemPointerSize];
        v19 = v18;
        [*(*(a1 + 32) + 256) systemPointerPressedScale];
        v21 = v19 * v20;
        [*(*(a1 + 32) + 256) flexibleRectIntensityReductionRange];
        v23 = (v17 - v21) / v22;
        v9 = 1.0;
        v8 = fmax(v14, fmin(1.0 - v23 + v14 * v23, v10));
      }
    }

    else if (v7 == 2 && BSFloatGreaterThanFloat())
    {
      v8 = v8 + 0.15;
    }
  }

  if (*(a1 + 48) != *(a1 + 56) || ([*(*(a1 + 32) + 200) blurRadius], !BSFloatEqualToFloat()) || (objc_msgSend(*(*(a1 + 32) + 272), "blurRadius"), !BSFloatEqualToFloat()) || (objc_msgSend(*(*(a1 + 32) + 200), "intensity"), !BSFloatEqualToFloat()) || (objc_msgSend(*(*(a1 + 32) + 200), "feather"), (BSFloatEqualToFloat() & 1) == 0))
  {
    v57[0] = _NSConcreteStackBlock;
    v57[1] = 3221225472;
    v57[2] = sub_100023244;
    v57[3] = &unk_100049668;
    v57[4] = *(a1 + 32);
    v57[5] = v4;
    *&v57[6] = v9;
    v57[7] = 0;
    *&v57[8] = v8;
    v24 = objc_retainBlock(v57);
    v25 = *&CGAffineTransformIdentity.c;
    *&v56.a = *&CGAffineTransformIdentity.a;
    *&v56.c = v25;
    *&v56.tx = *&CGAffineTransformIdentity.tx;
    v26 = *(a1 + 48);
    if (v26 == 1)
    {
      [*(*(a1 + 32) + 256) visibleToHiddenPointerScale];
      CGAffineTransformMakeScale(&v55, v33, v33);
      v56 = v55;
    }

    else if (v26 == 2)
    {
      [*(*(a1 + 32) + 24) contentHoverInverseScale];
      v28 = v27;
      IsZero = BSFloatIsZero();
      if ([*(*(a1 + 32) + 24) isPointerUnderlayingContent])
      {
        if (IsZero)
        {
          v30 = 1.0;
        }

        else
        {
          v30 = 1.0 / v28;
        }

        [*(*(a1 + 32) + 256) underlayingPointerPressedScaleFactor];
        v32 = v31 / v30;
      }

      else
      {
        [*(*(a1 + 32) + 256) systemPointerPressedScale];
      }

      CGAffineTransformMakeScale(&v56, v32, v32);
    }

    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v52 = *&v56.a;
    v51[2] = sub_1000232D8;
    v51[3] = &unk_100049690;
    v51[4] = *(a1 + 32);
    v53 = *&v56.c;
    v54 = *&v56.tx;
    v34 = objc_retainBlock(v51);
    if (*(a1 + 72) != 1)
    {
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_100023438;
      v47[3] = &unk_1000496B8;
      v48 = v24;
      v49 = v34;
      [UIView _performWithoutRetargetingAnimations:v47];

      v38 = v48;
LABEL_63:

      goto LABEL_64;
    }

    v35 = *(a1 + 56);
    if (*(a1 + 48) == 1)
    {
      if (v35 != 1)
      {
        if ((*(a1 + 64) & 8) != 0 && [*(*(a1 + 32) + 256) supportsTeleporting])
        {
          v36 = PSLogAutohide();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v55.a) = 0;
            _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Using teleport hiding animation", &v55, 2u);
          }

          *(*(a1 + 32) + 313) = 1;
          v37 = [*(*(a1 + 32) + 256) visibleToHiddenTeleportingAnimationSettings];
        }

        else
        {
          v37 = [*(*(a1 + 32) + 256) visibleToHiddenAnimationSettings];
        }

        goto LABEL_49;
      }
    }

    else if (v35 == 1)
    {
      v39 = *(a1 + 32);
      if (*(v39 + 313) == 1)
      {
        v40 = PSLogAutohide();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v55.a) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Using teleport unhide animation", &v55, 2u);
        }

        *(*(a1 + 32) + 313) = 0;
        v41 = [*(*(a1 + 32) + 256) hiddenToVisibleTeleportingAnimationSettings];
      }

      else
      {
        v41 = [*(v39 + 256) hiddenToVisibleAnimationSettings];
      }

      v38 = v41;
LABEL_52:
      if (*(a1 + 48) != 1 && *(a1 + 56) == 1)
      {
        [*(*(a1 + 32) + 200) presentationIntensity];
        if (BSFloatIsZero())
        {
          v50[0] = _NSConcreteStackBlock;
          v50[1] = 3221225472;
          v50[2] = sub_100023358;
          v50[3] = &unk_100048BA8;
          v50[4] = *(a1 + 32);
          [UIView _performWithoutRetargetingAnimations:v50];
        }
      }

      v42 = v3[2](v3, @"visibilityAnimations");
      [UIView _animateUsingSpringBehavior:v38 tracking:0 animations:v24 completion:v42];

      v43 = *(a1 + 56);
      if (*(a1 + 48) == 1)
      {
        if (v43 != 1)
        {
          v44 = [*(*(a1 + 32) + 256) visibleToHiddenScaleAnimationSettings];
LABEL_62:
          v45 = v44;
          v46 = v3[2](v3, @"visibilityScaleAnimations");
          [UIView _animateUsingSpringBehavior:v45 tracking:0 animations:v34 completion:v46];

          goto LABEL_63;
        }
      }

      else if (v43 == 1)
      {
        v44 = [*(*(a1 + 32) + 256) hiddenToVisibleScaleAnimationSettings];
        goto LABEL_62;
      }

      v44 = [*(*(a1 + 32) + 256) pressedScaleAnimationSettings];
      goto LABEL_62;
    }

    v37 = [*(*(a1 + 32) + 256) visibleIntensityAnimationSettings];
LABEL_49:
    v38 = v37;
    goto LABEL_52;
  }

LABEL_64:
}

id sub_100023244(uint64_t a1)
{
  [*(*(a1 + 32) + 200) setBlurRadius:*(a1 + 40)];
  [*(*(a1 + 32) + 272) setBlurRadius:*(a1 + 40)];
  [*(*(a1 + 32) + 304) setAlpha:*(a1 + 48)];
  [*(*(a1 + 32) + 200) setFeather:*(a1 + 56)];
  v2 = *(*(a1 + 32) + 200);
  v3 = *(a1 + 64);

  return [v2 setIntensity:v3];
}

id sub_1000232D8(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 200);
  v3 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 72);
  [v2 setTransform:&v7];
  v4 = *(*(a1 + 32) + 272);
  v5 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = v5;
  v9 = *(a1 + 72);
  return [v4 setTransform:&v7];
}

id sub_100023358(uint64_t a1)
{
  [*(*(a1 + 32) + 256) hiddenToVisiblePointerBlurRadius];
  v3 = v2;
  [*(*(a1 + 32) + 200) setBlurRadius:?];
  [*(*(a1 + 32) + 272) setBlurRadius:v3];
  [*(*(a1 + 32) + 256) hiddenToVisiblePointerScale];
  memset(&v9, 0, sizeof(v9));
  CGAffineTransformMakeScale(&v9, v4, v4);
  v5 = *(*(a1 + 32) + 200);
  v8 = v9;
  [v5 setTransform:&v8];
  v6 = *(*(a1 + 32) + 272);
  v8 = v9;
  return [v6 setTransform:&v8];
}

uint64_t sub_100023438(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_100023484(uint64_t a1)
{
  v1 = [*(a1 + 32) visibilityTransitionCompletion];
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 1, 0);
    v1 = v2;
  }
}

void sub_1000234DC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) isPressed];
  v5 = 1.0;
  if (v4)
  {
    [*(*(a1 + 32) + 24) contentHoverInverseScale];
  }

  memset(&v38, 0, sizeof(v38));
  CATransform3DMakeScale(&a, v5, v5, 1.0);
  CATransform3DTranslate(&v38, &a, *(a1 + 64), *(a1 + 72), 0.0);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100023830;
  v33[3] = &unk_100049708;
  v34 = *(a1 + 40);
  v35 = *(a1 + 48);
  v36 = v38;
  v6 = objc_retainBlock(v33);
  v7 = *(a1 + 40);
  if (v7 != *(a1 + 48))
  {
    v8 = [v7 superview];

    if (!v8)
    {
      [*(a1 + 56) addSubview:*(a1 + 40)];
    }
  }

  v9 = (*(a1 + 32) + 64);
  v10 = *v9;
  v11 = *(*(a1 + 32) + 80);
  v12 = *(*(a1 + 32) + 112);
  *&a.m21 = *(*(a1 + 32) + 96);
  *&a.m23 = v12;
  *&a.m11 = v10;
  *&a.m13 = v11;
  v13 = v9[4];
  v14 = v9[5];
  v15 = v9[7];
  *&a.m41 = v9[6];
  *&a.m43 = v15;
  *&a.m31 = v13;
  *&a.m33 = v14;
  b = v38;
  if (!CATransform3DEqualToTransform(&a, &b) || *(a1 + 40) != *(a1 + 48))
  {
    v16 = (*(a1 + 32) + 64);
    v17 = *&v38.m11;
    v18 = *&v38.m13;
    v19 = *&v38.m23;
    v16[2] = *&v38.m21;
    v16[3] = v19;
    *v16 = v17;
    v16[1] = v18;
    v20 = *&v38.m31;
    v21 = *&v38.m33;
    v22 = *&v38.m43;
    v16[6] = *&v38.m41;
    v16[7] = v22;
    v16[4] = v20;
    v16[5] = v21;
    if (*(a1 + 80) == 1)
    {
      v23 = v3[2](v3, @"contentMatchMoveAnimations");
      v24 = [*(*(a1 + 32) + 256) focusedContentPositionAnimationSettings];
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000238C8;
      v28[3] = &unk_100049730;
      v29 = *(a1 + 40);
      v30 = *(a1 + 48);
      v31 = v23;
      v25 = v23;
      [UIView _animateUsingSpringBehavior:v24 tracking:0 animations:v6 completion:v28];
    }

    else
    {
      v26[0] = _NSConcreteStackBlock;
      v26[1] = 3221225472;
      v26[2] = sub_100023930;
      v26[3] = &unk_100049350;
      v27 = v6;
      [UIView _performWithoutRetargetingAnimations:v26];
      v25 = v27;
    }
  }
}

id sub_100023830(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2 != v3)
  {
    v4 = *&CATransform3DIdentity.m33;
    v17 = *&CATransform3DIdentity.m31;
    v18 = v4;
    v5 = *&CATransform3DIdentity.m43;
    v19 = *&CATransform3DIdentity.m41;
    v20 = v5;
    v6 = *&CATransform3DIdentity.m13;
    v13 = *&CATransform3DIdentity.m11;
    v14 = v6;
    v7 = *&CATransform3DIdentity.m23;
    v15 = *&CATransform3DIdentity.m21;
    v16 = v7;
    [v3 setTransform3D:&v13];
    v2 = *(a1 + 32);
  }

  v8 = *(a1 + 128);
  v17 = *(a1 + 112);
  v18 = v8;
  v9 = *(a1 + 160);
  v19 = *(a1 + 144);
  v20 = v9;
  v10 = *(a1 + 64);
  v13 = *(a1 + 48);
  v14 = v10;
  v11 = *(a1 + 96);
  v15 = *(a1 + 80);
  v16 = v11;
  return [v2 setTransform3D:&v13];
}

uint64_t sub_1000238C8(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v5 = a1[4];
    v4 = a1[5];
    if (v5 != v4)
    {
      [v4 removeFromSuperview];
    }
  }

  v6 = *(a1[6] + 16);

  return v6();
}

void sub_100023940(uint64_t a1)
{
  v1 = [*(a1 + 32) contentMatchMoveSourceTransitionCompletion];
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 1, 0);
    v1 = v2;
  }
}

void sub_100023998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 24) overlayEffectStyle];
  v5 = *(a1 + 32);
  if (*(v5 + 8) != v4)
  {
    *(v5 + 8) = v4;
    v6 = *&CGAffineTransformIdentity.c;
    *&v29.a = *&CGAffineTransformIdentity.a;
    *&v29.c = v6;
    *&v29.tx = *&CGAffineTransformIdentity.tx;
    v7 = *(a1 + 32);
    if (*(v7 + 8))
    {
      [*(v7 + 200) expectedShapeBoundsForPointerShape:*(a1 + 40)];
      if (v8 >= v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      v11 = 0.0;
      v12 = fmax(v10, 0.0);
      v13 = *(a1 + 32);
      v14 = *(v13 + 8);
      if (v14 == 2)
      {
        [*(v13 + 256) specularProminentLongestSideBaseMultiplier];
        v15 = v18;
        [*(*(a1 + 32) + 256) specularProminentOpacityMultiplier];
      }

      else
      {
        v15 = 0.0;
        if (v14 == 1)
        {
          [*(v13 + 256) specularStandardLongestSideBaseMultiplier];
          v15 = v16;
          [*(*(a1 + 32) + 256) specularStandardOpacityMultiplier];
        }
      }

      v19 = v12 * v15;
      if (v12 * v15 > 1.0)
      {
        v19 = 1.0;
      }

      v20 = fmax(v19, 0.0);
      v17 = v11 * v20;
      CGAffineTransformMakeScale(&v29, v20 + 1.0, v20 + 1.0);
      v7 = *(a1 + 32);
    }

    else
    {
      v17 = 0.0;
    }

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100023C2C;
    v27[3] = &unk_100049780;
    v27[4] = v7;
    *&v27[5] = v17;
    v28 = v29;
    v21 = objc_retainBlock(v27);
    v22 = v21;
    if (*(a1 + 48) == 1)
    {
      v23 = [*(*(a1 + 32) + 256) specularOpacityAnimationSettings];
      v24 = v3[2](v3, @"specularAnimations");
      [UIView _animateUsingSpringBehavior:v23 tracking:0 animations:v22 completion:v24];
    }

    else
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100023CAC;
      v25[3] = &unk_100049350;
      v26 = v21;
      [UIView performWithoutAnimation:v25];
      v23 = v26;
    }
  }
}

id sub_100023C2C(uint64_t a1)
{
  [*(*(a1 + 32) + 280) setHidden:*(a1 + 40) == 0.0];
  [*(*(a1 + 32) + 264) setAlpha:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 264);
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v5[2] = *(a1 + 80);
  return [v2 setTransform:v5];
}

void sub_100023CBC(uint64_t a1)
{
  v1 = [*(a1 + 32) overlayEffectTransitionCompletion];
  if (v1)
  {
    v2 = v1;
    v1[2](v1, 1, 0);
    v1 = v2;
  }
}

id sub_1000244EC(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  [v5 value];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    v6 = *(a1 + 40);
    if ((BSFloatEqualToFloat() & 1) != 0 || !v6)
    {
      [v5 invalidate];
      v8 = objc_alloc_init(UIViewFloatAnimatableProperty);

      [v8 setValue:a3];
      v5 = v8;
    }

    else
    {
      v7 = [*(*(a1 + 32) + 256) rampingExitAnimationSettings];
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100024638;
      v10[3] = &unk_1000497A8;
      v5 = v5;
      v11 = v5;
      v12 = a3;
      [UIView _animateUsingSpringBehavior:v7 tracking:0 animations:v10 completion:0];
    }
  }

  return v5;
}

id sub_100024F2C(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 setAlpha:1.0];
}

BOOL sub_100024F70(id a1, id a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 name];
    v4 = [v3 isEqualToString:@"opacityPair"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL sub_100024FEC(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 name], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"opacityPair"), v6, v7))
  {
    v8 = 1;
    *a4 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id sub_100025078(uint64_t a1)
{
  [*(a1 + 32) setValue:*(a1 + 40) forKeyPath:@"_PUIDPointerLayerKeyOpacityPairGenerationID"];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 48) presentationLayer];
  v4 = v3;
  if (!v3)
  {
    v3 = *(a1 + 48);
  }

  [v3 opacity];
  v5 = [NSNumber numberWithFloat:?];
  [v2 setValue:v5 forKeyPath:@"filters.opacityPair.inputAmount"];

  v6 = *(a1 + 56);
  v7 = *(a1 + 64);

  return [v6 _setVelocity:v7 forKey:@"filters.opacityPair.inputAmount"];
}

void sub_10002512C(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 32);
  [*(a1 + 40) alpha];
  v3 = [NSNumber numberWithDouble:?];
  [v2 setValue:v3 forKeyPath:@"filters.opacityPair.inputAmount"];
}

uint64_t sub_1000251B4(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:@"_PUIDPointerLayerKeyOpacityPairGenerationID"];
  v3 = [v2 isEqual:*(a1 + 40)];

  if (v3)
  {
    v4 = [*(a1 + 32) filters];
    v5 = [v4 indexOfObjectPassingTest:&stru_100049898];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [v4 mutableCopy];
      [v7 removeObjectAtIndex:v6];
      [*(a1 + 32) setFilters:v7];
    }

    [*(a1 + 32) setValue:0 forKeyPath:@"_PUIDPointerLayerKeyOpacityPairGenerationID"];
  }

  v8 = *(*(a1 + 48) + 16);

  return v8();
}

BOOL sub_1000252A4(id a1, id a2, unint64_t a3, BOOL *a4)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 name], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"opacityPair"), v6, v7))
  {
    v8 = 1;
    *a4 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1000253EC(double a1, uint64_t a2, void *a3, char a4, int a5)
{
  if ((a4 & 2) != 0)
  {
    v7 = @"position.y";
  }

  else
  {
    v7 = @"position.x";
  }

  if (a5)
  {
    v8 = v7;
    v9 = a3;
    v11 = [v9 layer];

    v10 = [NSNumber numberWithDouble:a1];
    [v11 setValue:v10 forKeyPath:v8];
  }

  else
  {
    v7;
    v10 = a3;
    v11 = [NSNumber numberWithDouble:a1];
    [v10 _setPresentationValue:? forKey:?];
  }
}

void sub_100025D58(uint64_t a1, int *a2)
{
  v3 = *a2;
  if (*a2 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        CA_CGPointApplyTransform();
        CGPathAddLineToPoint(*(a1 + 160), 0, v5, v6);
      }
    }

    else
    {
      CA_CGPointApplyTransform();
      CGPathMoveToPoint(*(a1 + 160), 0, v23, v24);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        CA_CGPointApplyTransform();
        v8 = v7;
        v10 = v9;
        CA_CGPointApplyTransform();
        CGPathAddQuadCurveToPoint(*(a1 + 160), 0, v8, v10, v11, v12);
        break;
      case 3:
        CA_CGPointApplyTransform();
        v14 = v13;
        v16 = v15;
        CA_CGPointApplyTransform();
        v18 = v17;
        v20 = v19;
        CA_CGPointApplyTransform();
        CGPathAddCurveToPoint(*(a1 + 160), 0, v14, v16, v18, v20, v21, v22);
        break;
      case 4:
        v4 = *(a1 + 160);

        CGPathCloseSubpath(v4);
        break;
    }
  }
}

id sub_100025FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 handleFailureInFunction:v5 file:a4 lineNumber:608 description:?];
}

void sub_100025FD8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_10002608C(id a1)
{
  qword_100059D08 = [NSBundle bundleForClass:objc_opt_class()];

  _objc_release_x1();
}

id sub_1000265B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = BSStringFromCGRect();
  v4 = [v2 appendObject:v3 withName:@"_contentBounds"];

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = [NSString stringWithFormat:@" m11: %f \n m12: %f \n m13: %f \n m14: %f \n m21: %f \n m22: %f \n m23: %f \n m24: %f \n m31: %f \n m32: %f \n m33: %f \n m34: %f \n m41: %f \n m42: %f \n m43: %f \n m44: %f \n", v5[5], v5[6], v5[7], v5[8], v5[9], v5[10], v5[11], v5[12], v5[13], v5[14], v5[15], v5[16], v5[17], v5[18], v5[19], v5[20]];
  v8 = [v6 appendObject:v7 withName:@"_clientCoordinateSpaceTransformToDisplay"];

  v9 = [*(a1 + 32) appendFloat:@"_contentHoverInverseScale" withName:*(*(a1 + 40) + 168)];
  v10 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 176) withName:@"_contentMatchMoveSource"];
  v11 = *(a1 + 32);
  v12 = *(*(a1 + 40) + 184);
  if (v12)
  {
    [v12 CGPointValue];
    v13 = BSStringFromCGPoint();
    v14 = [v11 appendObject:v13 withName:@"_contentSlipValue"];
  }

  else
  {
    v15 = [*(a1 + 32) appendObject:@"<nil>" withName:@"_contentSlipValue"];
  }

  v16 = [*(a1 + 32) appendFloat:@"_shakeToFindPointerSizeMultiplier" withName:*(*(a1 + 40) + 280)];
  v17 = *(a1 + 32);
  v18 = BSStringFromCGPoint();
  v19 = [v17 appendObject:v18 withName:@"_modelPointerReferencePosition"];

  v20 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 208) withName:@"_overlayEffectStyle"];
  v21 = [*(a1 + 32) appendInteger:*(*(a1 + 40) + 216) withName:@"_pointerMaterialLuminance"];
  v22 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 224) withName:@"_pointerPortalSourceCollection"];
  v23 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 232) withName:@"_pointerShape"];
  v24 = *(a1 + 32);
  v25 = *(*(a1 + 40) + 240);
  if (v25)
  {
    [v25 CGPointValue];
    v26 = BSStringFromCGPoint();
    v27 = [v24 appendObject:v26 withName:@"_pointerSlipValue"];
  }

  else
  {
    v28 = [*(a1 + 32) appendObject:@"<nil>" withName:@"_pointerSlipValue"];
  }

  v29 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 248) withName:@"_debugRequestingClientString"];
  v30 = [*(a1 + 32) appendFloat:@"_pointerVisualIntensity" withName:*(*(a1 + 40) + 256)];
  v31 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 264) withName:@"_pointerAutoHidden"];
  v32 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 265) withName:@"_pointerUnderlayingContent"];
  v33 = [*(a1 + 32) appendBool:*(*(a1 + 40) + 266) withName:@"_pressed"];
  return [*(a1 + 32) appendBool:*(*(a1 + 40) + 267) withName:@"_suppressPointerMirroring"];
}

void sub_100026B20(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Changed material Alpha: %@", &v2, 0xCu);
}

void sub_100026B98(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Changed material Style: %@", &v2, 0xCu);
}

void sub_100026C24(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PUIDPointerShapeView.m" lineNumber:547 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

void sub_100026CA0(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PUIDPointerShapeView.m" lineNumber:618 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
}

void sub_100026D58(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *ZoomServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PUIDAXSoftLinking.m" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100026DD8()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getZoomServicesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PUIDAXSoftLinking.m" lineNumber:12 description:{@"Unable to find class %s", "ZoomServices"}];

  __break(1u);
}

void sub_100026E54()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"typeof (((typeof (ZWAttributeKeyZoomLevel) (*)(void))0)()) getZWAttributeKeyZoomLevel(void)"];
  [v0 handleFailureInFunction:v1 file:@"PUIDAXSoftLinking.m" lineNumber:13 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100026ECC()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"typeof (((typeof (ZWAttributeKeyInStandbyMode) (*)(void))0)()) getZWAttributeKeyInStandbyMode(void)"];
  [v0 handleFailureInFunction:v1 file:@"PUIDAXSoftLinking.m" lineNumber:14 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_100026F44(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *AccessibilityUtilitiesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"PUIDAXSoftLinking.m" lineNumber:16 description:{@"%s", *a1}];

  __break(1u);
}

void sub_100026FC4()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getAXSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"PUIDAXSoftLinking.m" lineNumber:17 description:{@"Unable to find class %s", "AXSettings"}];

  __break(1u);
}

void sub_100027040()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"typeof (((typeof (AXZoomLensModeWindowAnchored) (*)(void))0)()) getAXZoomLensModeWindowAnchored(void)"];
  [v0 handleFailureInFunction:v1 file:@"PUIDAXSoftLinking.m" lineNumber:18 description:{@"%s", dlerror()}];

  __break(1u);
}

void sub_1000270B8()
{
  sub_1000103BC();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"PUIDPointerController.m" lineNumber:278 description:{@"Already tracking a context for display %@, please destroy it first", v0}];
}

void sub_100027130(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[PUIDPointerController xpcClientContextController:didUpdateHoverRegion:forClient:transitionCompletion:]";
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "%s - Hover region update from %@ disallowed while context-locked.", &v2, 0x16u);
}

void sub_1000271BC()
{
  sub_1000103BC();
  v3 = +[NSAssertionHandler currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"PUIDPointerController.m" lineNumber:1514 description:{@"nil pointerRenderingController for display %@", v0}];
}

void sub_100027234()
{
  sub_1000103BC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100027838(*v0);
  objc_claimAutoreleasedReturnValue();
  sub_1000103CC();
  sub_1000103D8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000272C0()
{
  sub_1000103BC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100027838(v0);
  objc_claimAutoreleasedReturnValue();
  sub_1000103CC();
  sub_1000103D8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_10002734C()
{
  sub_1000103BC();
  v2 = +[NSAssertionHandler currentHandler];
  sub_100027838(*v0);
  objc_claimAutoreleasedReturnValue();
  sub_1000103CC();
  sub_1000103D8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000273D8(uint64_t a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = *(a1 + 176);
  v4 = *(a1 + 32);
  v5 = [NSString stringWithFormat:@"setting value received from BKSHIDServicesGetCALayerTransform()"];
  [v2 handleFailureInMethod:v3 object:v4 file:@"PUIDPointerController.m" lineNumber:1863 description:{@"invalid transform (all 0s) from: %@", v5}];
}

void sub_100027470()
{
  sub_1000103BC();
  v1 = +[NSAssertionHandler currentHandler];
  [NSString stringWithFormat:@"transformFromClientContextToDisplay; just pulled out of clientState (%@)", v0];
  objc_claimAutoreleasedReturnValue();
  sub_1000103CC();
  sub_1000103D8();
  [v2 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_1000274FC()
{
  sub_1000103BC();
  v1 = +[NSAssertionHandler currentHandler];
  sub_100027868(*v0);
  objc_claimAutoreleasedReturnValue();
  sub_1000103CC();
  v2 = [NSString stringWithFormat:@"transformToReferenceSpace result from -transformToLocalWindowForCoordinateSpaceTransformToDisplay:, _pointerRenderingController (%@)"];;
  sub_1000103D8();
  [v3 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

void sub_1000275EC()
{
  sub_1000103BC();
  v1 = +[NSAssertionHandler currentHandler];
  [NSString stringWithFormat:@"Setting pointerState value from pointerClientState (%@), in -_updatePointerWithTransitionCompletion:", v0];
  objc_claimAutoreleasedReturnValue();
  sub_1000103CC();
  sub_1000103D8();
  [v2 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

id sub_1000276BC(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 8));
    v2 = [WeakRetained hardwareIdentifier];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *sub_100027714(id *result)
{
  if (result)
  {
    return [result[3] _contextId];
  }

  return result;
}

uint64_t sub_100027724(uint64_t a1)
{
  if (a1)
  {
    return sub_100010B54(a1);
  }

  return a1;
}

id sub_100027730(id *a1)
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v1 = [WeakRetained systemPointerInteractionContextForDisplayContext:v1];
  }

  return v1;
}

id *sub_100027788(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 9);
    v1 = vars8;
  }

  return WeakRetained;
}

id *sub_1000277B8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_100027730(a1);
    if (v2)
    {
      v1 = 0;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(v1 + 9);
      v1 = [WeakRetained overridingHoverRegionClientsForDisplayContext:v1];
    }
  }

  return v1;
}

id *sub_100027838(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 1);
    v1 = vars8;
  }

  return WeakRetained;
}

uint64_t sub_100027868(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

uint64_t sub_100027874(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

uint64_t sub_100027880(uint64_t result)
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

uint64_t sub_10002788C(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t sub_100027898(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t sub_1000278A4(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_1000278B0(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

id *sub_1000278BC(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 9, a2);
  }

  return result;
}

void sub_100027A20(objc_class *a1, uint64_t a2, uint64_t a3)
{
  v7 = +[NSAssertionHandler currentHandler];
  v6 = NSStringFromClass(a1);
  [v7 handleFailureInMethod:a2 object:a3 file:@"PUIDDisplayContext.m" lineNumber:121 description:{@"contextClass '%@' was not PUIDDisplayContext or a subclass.", v6}];
}

void sub_100027C38()
{
  sub_100014D44();
  v2 = 2114;
  v3 = @"com.apple.pointerui.set-system-cursor-interaction-context";
  _os_log_error_impl(&_mh_execute_header, v0, OS_LOG_TYPE_ERROR, "%{public}@: Ignoring request to override hover regions from client missing entitlement %{public}@", v1, 0x16u);
}

id *sub_100027CD4(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 3, a2);
  }

  return result;
}

id *sub_100027CE4(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 1, a2);
  }

  return result;
}

id *sub_100027CF4(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 2);
    v1 = vars8;
  }

  return WeakRetained;
}

id *sub_100027D24(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 2, a2);
  }

  return result;
}

id *sub_100027D34(id *WeakRetained)
{
  if (WeakRetained)
  {
    WeakRetained = objc_loadWeakRetained(WeakRetained + 3);
    v1 = vars8;
  }

  return WeakRetained;
}

void sub_100027D64()
{
  sub_100019C48();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100027DD0()
{
  sub_100019C48();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100027E2C()
{
  sub_100019C48();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100027E88()
{
  sub_100019C48();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100027EE4()
{
  sub_100019C48();
  v0 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100027F40()
{
  sub_100019C48();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void sub_100027FAC()
{
  v9 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController viewDidLoad]_block_invoke"];
  [sub_100025FF8(v0 v1];
}

void sub_10002804C()
{
  v9 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController viewDidLoad]_block_invoke_2"];
  [sub_100025FF8(v0 v1];
}

void sub_1000280EC()
{
  v9 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController viewDidLoad]_block_invoke_3"];
  [sub_100025FF8(v0 v1];
}

void sub_10002818C()
{
  v9 = +[NSAssertionHandler currentHandler];
  v0 = [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController viewDidLoad]_block_invoke_4"];
  [sub_100025FF8(v0 v1];
}

void sub_10002822C()
{
  v1 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController _updatePointerWithOptions:updateHandlerCollection:error:]"];
  objc_claimAutoreleasedReturnValue();
  sub_100026008();
  sub_100025FB8(v2, v3, v4, @"PUIDPointerRenderingRootViewController.m");
}

void sub_1000282B0()
{
  v1 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController _updatePointerWithOptions:updateHandlerCollection:error:]"];
  objc_claimAutoreleasedReturnValue();
  sub_100026008();
  sub_100025FB8(v2, v3, v4, @"PUIDPointerRenderingRootViewController.m");
}

void sub_100028334()
{
  v1 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController _updatePointerWithOptions:updateHandlerCollection:error:]"];
  objc_claimAutoreleasedReturnValue();
  sub_100026008();
  sub_100025FB8(v2, v3, v4, @"PUIDPointerRenderingRootViewController.m");
}

void sub_1000283B8()
{
  v1 = +[NSAssertionHandler currentHandler];
  [NSString stringWithUTF8String:"[PUIDPointerRenderingRootViewController _updatePointerWithOptions:updateHandlerCollection:error:]"];
  objc_claimAutoreleasedReturnValue();
  sub_100026008();
  sub_100025FB8(v2, v3, v4, @"PUIDPointerRenderingRootViewController.m");
}

void sub_100028620()
{
  sub_100019C48();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v0 handleFailureInMethod:@"outXDamping != NULL" object:? file:? lineNumber:? description:?];
}

void sub_100028694()
{
  sub_100019C48();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v0 handleFailureInMethod:@"outXResponse != NULL" object:? file:? lineNumber:? description:?];
}

void sub_100028708()
{
  sub_100019C48();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v0 handleFailureInMethod:@"outYDamping != NULL" object:? file:? lineNumber:? description:?];
}

void sub_10002877C()
{
  sub_100019C48();
  v1 = +[NSAssertionHandler currentHandler];
  sub_1000103D8();
  [v0 handleFailureInMethod:@"outYResponse != NULL" object:? file:? lineNumber:? description:?];
}

void sub_100028804(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = +[NSAssertionHandler currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"NSBundle+PUIDAdditions.m" lineNumber:21 description:@"Failed to find pointeruid's bundle."];

  *a3 = qword_100059D08;
}