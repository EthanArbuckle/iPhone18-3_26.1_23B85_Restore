void std::vector<ClipperLib::DoublePoint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(a1, a2);
  }

  std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<ClipperLib::PolyNode *>::__init_with_size[abi:ne200100]<ClipperLib::PolyNode **,ClipperLib::PolyNode **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<ClipperLib::TEdge *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B43C4C74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<std::vector<ClipperLib::IntPoint>>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<std::vector<ClipperLib::IntPoint>>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

id VKStringFromCGColor(CGColor *a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  ColorSpace = CGColorGetColorSpace(a1);
  v4 = CGColorSpaceCopyName(ColorSpace);
  if (v4)
  {
    [v2 addObject:v4];
    NumberOfComponents = CGColorGetNumberOfComponents(a1);
    Components = CGColorGetComponents(a1);
    if (NumberOfComponents)
    {
      v7 = Components;
      do
      {
        v8 = *v7++;
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%.10f", v8];
        [v2 addObject:v9];

        --NumberOfComponents;
      }

      while (NumberOfComponents);
    }
  }

  else
  {
    v10 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      VKStringFromCGColor_cold_1();
    }
  }

  if ([v2 count])
  {
    v11 = [v2 componentsJoinedByString:@""];;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

CGColorRef VKCGColorCreateWithString(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@""];;
  v3 = [v2 mutableCopy];

  if ([v3 count])
  {
    v4 = [v3 firstObject];
    [v3 removeObjectAtIndex:0];
    v5 = CGColorSpaceCreateWithName(v4);
    if (v5)
    {
      v6 = v5;
      if ([v3 count])
      {
        v7 = CGColorSpaceGetNumberOfComponents(v6) + 1;
        if ([v3 count] == v7)
        {
          v8 = malloc_type_malloc(8 * v7, 0x100004000313F17uLL);
          if (v7)
          {
            for (i = 0; i != v7; ++i)
            {
              v10 = [v3 objectAtIndexedSubscript:i];
              [v10 doubleValue];
              v8[i] = v11;
            }
          }

          v12 = CGColorCreate(v6, v8);
          free(v8);
          goto LABEL_22;
        }

        v15 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          VKCGColorCreateWithString_cold_1(v3, v7, v15);
        }
      }

      else
      {
        v14 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          VKCGColorCreateWithString_cold_2();
        }
      }

      v12 = 0;
LABEL_22:
      CGColorSpaceRelease(v6);
      goto LABEL_23;
    }

    v13 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      VKCGColorCreateWithString_cold_3();
    }
  }

  else
  {
    v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      VKCGColorCreateWithString_cold_4();
    }
  }

  v12 = 0;
LABEL_23:

  return v12;
}

CGColorRef VKCGColorCopyInverse(CGColor *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  Components = CGColorGetComponents(a1);
  CGColorGetNumberOfComponents(a1);
  MEMORY[0x1EEE9AC00]();
  v5 = (v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v3)
  {
    v6 = v3;
    v7 = Components;
    v8 = v5;
    do
    {
      v9 = *v7++;
      *v8++ = 1.0 - v9;
      --v6;
    }

    while (v6);
  }

  v5[v3] = Components[v3];
  ColorSpace = CGColorGetColorSpace(a1);
  return CGColorCreate(ColorSpace, v5);
}

void sub_1B43C5D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B43C75AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t vk_isCameraApp()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.camera"];

  return v2;
}

uint64_t vk_isPhotosApp()
{
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:@"com.apple.mobileslideshow"];

  return v2;
}

BOOL VKMNearlyEqualVKQuads(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [v3 topLeft];
  v6 = v5;
  v8 = v7;
  [v4 topLeft];
  if (VKMNearlyEqualPoints(v6, v8, v9, v10) && ([v3 topRight], v12 = v11, v14 = v13, objc_msgSend(v4, "topRight"), VKMNearlyEqualPoints(v12, v14, v15, v16)) && (objc_msgSend(v3, "bottomRight"), v18 = v17, v20 = v19, objc_msgSend(v4, "bottomRight"), VKMNearlyEqualPoints(v18, v20, v21, v22)))
  {
    [v3 bottomLeft];
    v24 = v23;
    v26 = v25;
    [v4 bottomLeft];
    v29 = VKMNearlyEqualPoints(v24, v26, v27, v28);
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

double VKMMininumQuadSideLength(double result, double a2, double a3, double a4)
{
  if (a3 >= a4)
  {
    a3 = a4;
  }

  if (a3 < result)
  {
    result = a3;
  }

  if (result >= a2)
  {
    return a2;
  }

  return result;
}

CGPath *VKMCreatePathFromTransformedRect(const CGAffineTransform *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  v12.origin.x = a2;
  v12.origin.y = a3;
  v12.size.width = a4;
  v12.size.height = a5;
  CGPathAddRect(Mutable, a1, v12);
  return Mutable;
}

float64x2_t VKMTransformedCornersOfRect(float64x2_t *a1, double *a2, double *a3, double *a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  MinX = CGRectGetMinX(*&a6);
  v23.origin.x = a6;
  v23.origin.y = a7;
  v23.size.width = a8;
  v23.size.height = a9;
  MinY = CGRectGetMinY(v23);
  v24.origin.x = a6;
  v24.origin.y = a7;
  v24.size.width = a8;
  v24.size.height = a9;
  MaxX = CGRectGetMaxX(v24);
  v25.origin.x = a6;
  v25.origin.y = a7;
  v25.size.width = a8;
  v25.size.height = a9;
  MaxY = CGRectGetMaxY(v25);
  *a2 = MinX;
  a2[1] = MinY;
  *a3 = MinX;
  a3[1] = MaxY;
  *a4 = MaxX;
  a4[1] = MaxY;
  *a5 = MaxX;
  a5[1] = MinY;
  *a2 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a2[1]), *a1, *a2));
  *a3 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a3[1]), *a1, *a3));
  *a4 = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a4[1]), *a1, *a4));
  result = vaddq_f64(a1[2], vmlaq_n_f64(vmulq_n_f64(a1[1], a5[1]), *a1, *a5));
  *a5 = result;
  return result;
}

CGAffineTransform *VKMAffineTransformShear@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  t1.a = 1.0;
  t1.b = a3;
  t1.c = a4;
  __asm { FMOV            V0.2D, #1.0 }

  *&t1.d = _Q0;
  t1.ty = 1.0;
  v9 = a1[1];
  *&v11.a = *a1;
  *&v11.c = v9;
  *&v11.tx = a1[2];
  return CGAffineTransformConcat(a2, &t1, &v11);
}

long double VKMTransformAngle(double *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (v1 * a1[2] - *a1 * a1[3] > 0.0)
  {
    v2 = -v2;
    v1 = -v1;
  }

  return atan2(v1, v2) * 57.2957795;
}

double VKMTransformIsValid(uint64_t a1)
{
  v1 = fabs(*a1 * *(a1 + 24) - *(a1 + 8) * *(a1 + 16));
  result = 0.0;
  if (v1 >= 0.001 && *&v1 <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 32) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    return 1.0;
  }

  return result;
}

CGAffineTransform *VKMTransformNormalizeScale@<X0>(uint64_t a1@<X0>, CGAffineTransform *a2@<X8>)
{
  v2 = 1.0 / sqrt(*(a1 + 8) * *(a1 + 8) + *a1 * *a1);
  v3 = 1.0 / sqrt(*(a1 + 24) * *(a1 + 24) + *(a1 + 16) * *(a1 + 16));
  v4 = *(a1 + 16);
  *&v6.a = *a1;
  *&v6.c = v4;
  *&v6.tx = *(a1 + 32);
  return CGAffineTransformScale(a2, &v6, v2, v3);
}

BOOL VKMIsTransformAxisAlignedWithObjectSize(double *a1, double a2, double a3)
{
  v3 = 1.0 / (a2 * 0.5);
  v4 = 1.0 / (a3 * 0.5);
  if (v3 >= v4)
  {
    v3 = v4;
  }

  v5 = fabs(a1[3]);
  if (fabs(*a1) < v3 && v5 < v3)
  {
    return 1;
  }

  if (fabs(a1[1]) >= v3)
  {
    return 0;
  }

  return fabs(a1[2]) < v3;
}

BOOL VKMIsTransformAxisAlignedWithThreshold(double *a1, double a2)
{
  if (fabs(*a1) < a2 && fabs(a1[3]) < a2)
  {
    return 1;
  }

  if (fabs(a1[1]) >= a2)
  {
    return 0;
  }

  return fabs(a1[2]) < a2;
}

double VKMPointFromApplyingTransformToPointInRect(_OWORD *a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v8 = VKMCenterOfRect(a4, a5, a6, a7);
  v10 = v9;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformMakeTranslation(&v18, -v8, -v9);
  t1 = v18;
  v11 = a1[1];
  *&t2.a = *a1;
  *&t2.c = v11;
  *&t2.tx = a1[2];
  CGAffineTransformConcat(&v17, &t1, &t2);
  v18 = v17;
  CGAffineTransformMakeTranslation(&t1, v8, v10);
  t2 = v18;
  CGAffineTransformConcat(&v17, &t2, &t1);
  *&result = *&vaddq_f64(*&v17.tx, vmlaq_n_f64(vmulq_n_f64(*&v17.c, a3), *&v17.a, a2));
  return result;
}

BOOL VKMIsTransformAxisAligned(double *a1)
{
  if (fabs(*a1) < 1.0e-12 && fabs(a1[3]) < 1.0e-12)
  {
    return 1;
  }

  if (fabs(a1[1]) >= 1.0e-12)
  {
    return 0;
  }

  return fabs(a1[2]) < 1.0e-12;
}

CGAffineTransform *VKMAffineTransformForFlips@<X0>(CGAffineTransform *result@<X0>, int a2@<W1>, uint64_t a3@<X8>, CGFloat a4@<D0>, CGFloat a5@<D1>, CGFloat a6@<D2>, CGFloat a7@<D3>)
{
  v13 = MEMORY[0x1E695EFD0];
  v14 = *MEMORY[0x1E695EFD0];
  v15 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  *(a3 + 16) = v15;
  v16 = *(v13 + 32);
  *(a3 + 32) = v16;
  if (result)
  {
    v31 = v15;
    v32 = v14;
    v17 = a4;
    v18 = a5;
    v30 = v16;
    v19 = a6;
    MinX = CGRectGetMinX(*(&a7 - 3));
    v35.origin.x = a4;
    v35.origin.y = a5;
    v35.size.width = a6;
    v35.size.height = a7;
    MaxX = CGRectGetMaxX(v35);
    *&v34.a = v32;
    *&v34.c = v31;
    *&v34.tx = v30;
    CGAffineTransformTranslate(a3, &v34, MinX + MaxX, 0.0);
    v22 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v22;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, -1.0, 1.0);
    v23 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v23;
    *(a3 + 32) = *&v34.tx;
  }

  if (a2)
  {
    v36.origin.x = a4;
    v36.origin.y = a5;
    v36.size.width = a6;
    v36.size.height = a7;
    MinY = CGRectGetMinY(v36);
    v37.origin.x = a4;
    v37.origin.y = a5;
    v37.size.width = a6;
    v37.size.height = a7;
    MaxY = CGRectGetMaxY(v37);
    v26 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v26;
    *&v33.tx = *(a3 + 32);
    CGAffineTransformTranslate(&v34, &v33, 0.0, MinY + MaxY);
    v27 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v27;
    *(a3 + 32) = *&v34.tx;
    v28 = *(a3 + 16);
    *&v33.a = *a3;
    *&v33.c = v28;
    *&v33.tx = *(a3 + 32);
    result = CGAffineTransformScale(&v34, &v33, 1.0, -1.0);
    v29 = *&v34.c;
    *a3 = *&v34.a;
    *(a3 + 16) = v29;
    *(a3 + 32) = *&v34.tx;
  }

  return result;
}

CGAffineTransform *VKMAffineTransformAspectFill@<X0>(CGAffineTransform *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  if (a2 == 0.0 || a3 == 0.0)
  {
    [VKAssert handleFailedAssertWithCondition:"imageSize.width != 0 && imageSize.height != 0" functionName:"CGAffineTransform VKMAffineTransformAspectFill(CGSize simulateCrash:CGSize)" showAlert:0 format:0, @"division by zero"];
  }

  v10 = fmax(a4 / a2, a5 / a3);
  v11 = (a4 - a2 * v10) * 0.5;
  v12 = (a5 - a3 * v10) * 0.5;
  CGAffineTransformMakeScale(&t1, v10, v10);
  CGAffineTransformMakeTranslation(&v14, v11, v12);
  return CGAffineTransformConcat(a1, &t1, &v14);
}

CGAffineTransform *VKMTransformFromTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v6 = a2[1];
  *&v12.a = *a2;
  *&v12.c = v6;
  *&v12.tx = a2[2];
  CGAffineTransformInvert(&t1, &v12);
  v7 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v7;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  v8 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v8;
  *&t1.tx = a2[2];
  return CGAffineTransformConcat(a3, &v12, &t1);
}

CGAffineTransform *VKMTransformInTransformSpace@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, CGAffineTransform *a3@<X8>)
{
  v5 = a2[1];
  *&t1.a = *a2;
  *&t1.c = v5;
  *&t1.tx = a2[2];
  v6 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v6;
  *&v9.tx = a1[2];
  CGAffineTransformConcat(&v11, &t1, &v9);
  v7 = a2[1];
  *&v9.a = *a2;
  *&v9.c = v7;
  *&v9.tx = a2[2];
  CGAffineTransformInvert(&t1, &v9);
  return CGAffineTransformConcat(a3, &v11, &t1);
}

CGAffineTransform *VKMTransformConvertForNewOrigin@<X0>(_OWORD *a1@<X0>, CGAffineTransform *a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>)
{
  memset(&v14, 0, sizeof(v14));
  CGAffineTransformMakeTranslation(&v14, -a3, -a4);
  memset(&v13, 0, sizeof(v13));
  CGAffineTransformMakeTranslation(&v13, a3, a4);
  t1 = v13;
  v8 = a1[1];
  *&v10.a = *a1;
  *&v10.c = v8;
  *&v10.tx = a1[2];
  CGAffineTransformConcat(&v12, &t1, &v10);
  t1 = v14;
  return CGAffineTransformConcat(a2, &v12, &t1);
}

CGAffineTransform *VKMTransformMakeFree@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, CGFloat a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  v18 = VKMDistance(a3, a4, a5, a6);
  v38 = a7;
  v19 = VKMDistance(a7, a8, a9, a10);
  if (v18 < 0.0001 || v19 < 0.0001)
  {

    return CGAffineTransformMakeTranslation(a2, a7 - a3, a8 - a4);
  }

  else
  {
    sx = v19 / v18;
    v20 = VKMSubtractPoints(a3, a4, a5);
    v22 = VKMAngleFromDelta(v20, v21);
    v23 = VKMSubtractPoints(a7, a8, a9);
    v25 = VKMAngleFromDelta(v23, v24);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    CGAffineTransformMakeTranslation(a2, -a3, -a4);
    CGAffineTransformMakeRotation(&t2, -v22);
    v26 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v26;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v27 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v27;
    *(a2 + 32) = *&v41.tx;
    v28 = 1.0;
    if (!a1)
    {
      v28 = sx;
    }

    CGAffineTransformMakeScale(&t2, sx, v28);
    v29 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v29;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v30 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v30;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeRotation(&t2, v25);
    v31 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v31;
    *&t1.tx = *(a2 + 32);
    CGAffineTransformConcat(&v41, &t1, &t2);
    v32 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v32;
    *(a2 + 32) = *&v41.tx;
    CGAffineTransformMakeTranslation(&t2, v38, a8);
    v33 = *(a2 + 16);
    *&t1.a = *a2;
    *&t1.c = v33;
    *&t1.tx = *(a2 + 32);
    result = CGAffineTransformConcat(&v41, &t1, &t2);
    v35 = *&v41.c;
    *a2 = *&v41.a;
    *(a2 + 16) = v35;
    *(a2 + 32) = *&v41.tx;
  }

  return result;
}

CGFloat VKMTransformMakeAxisAligned@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>, double a10, double a11, double a12)
{
  v19 = VKMDistance(a2, a3, a4, a5);
  v20 = VKMDistance(a6, a7, a8, a9);
  if (v19 < 0.0001 || v20 < 0.0001)
  {

    CGAffineTransformMakeTranslation(a1, a6 - a2, a7 - a3);
  }

  else
  {
    v21 = v20 / v19;
    if (v21 >= a10)
    {
      if (v21 > a11)
      {
        v21 = a11 + (v21 - a11) * a12;
      }
    }

    else
    {
      v21 = (v21 - a10) * a12 * 0.5 + a10;
    }

    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    CGAffineTransformMakeTranslation(a1, (a2 + a4) * -0.5, (a3 + a5) * -0.5);
    CGAffineTransformMakeScale(&t2, v21, v21);
    v23 = *(a1 + 16);
    *&t1.a = *a1;
    *&t1.c = v23;
    *&t1.tx = *(a1 + 32);
    CGAffineTransformConcat(&v31, &t1, &t2);
    v24 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v24;
    *(a1 + 32) = *&v31.tx;
    CGAffineTransformMakeTranslation(&t2, (a6 + a8) * 0.5, (a7 + a9) * 0.5);
    v25 = *(a1 + 16);
    *&t1.a = *a1;
    *&t1.c = v25;
    *&t1.tx = *(a1 + 32);
    CGAffineTransformConcat(&v31, &t1, &t2);
    v26 = *&v31.c;
    *a1 = *&v31.a;
    *(a1 + 16) = v26;
    result = v31.tx;
    *(a1 + 32) = *&v31.tx;
  }

  return result;
}

CGFloat VKMTransformConvertingRectToRectAtPercent@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D2>, double a4@<D3>, double a5@<D4>, double a6@<D5>, double a7@<D6>, double a8@<D7>, double a9)
{
  v14 = VKMSubtractPoints(a5, a6, a2);
  v15 = a7 / a3;
  v16 = a8 / a4;
  v18 = VKMMultiplyPointScalar(v14, v17, a9);
  v20 = v19;
  v21 = VKMInterpolatePoints(1.0, 1.0, v15, v16, a9);
  v23 = v22;
  v24 = MEMORY[0x1E695EFD0];
  v25 = *MEMORY[0x1E695EFD0];
  v26 = *(MEMORY[0x1E695EFD0] + 16);
  *a1 = *MEMORY[0x1E695EFD0];
  *(a1 + 16) = v26;
  v27 = *(v24 + 32);
  *(a1 + 32) = v27;
  *&v32.a = v25;
  *&v32.c = v26;
  *&v32.tx = v27;
  CGAffineTransformTranslate(a1, &v32, v18, v20);
  v28 = *(a1 + 16);
  *&v31.a = *a1;
  *&v31.c = v28;
  *&v31.tx = *(a1 + 32);
  CGAffineTransformScale(&v32, &v31, v21, v23);
  v29 = *&v32.c;
  *a1 = *&v32.a;
  *(a1 + 16) = v29;
  result = v32.tx;
  *(a1 + 32) = *&v32.tx;
  return result;
}

double VKM_CGAffineTransformDecompose(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = sqrt(v4 * v4 + *a1 * *a1);
  v8 = sqrt(v6 * v6 + v5 * v5);
  v9 = *a1 * v6 - v5 * v4;
  v10 = -v8;
  v11 = -v7;
  if (*a1 < v6)
  {
    v10 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v9 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v7;
  }

  if (v9 < 0.0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v8;
  }

  v14 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v14;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformScale(&v21, &v20, 1.0 / v12, 1.0 / v13);
  v15 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v15;
  *(a1 + 32) = *&v21.tx;
  v16 = atan2(*(a1 + 8), *a1);
  v17 = *(a1 + 16);
  *&v20.a = *a1;
  *&v20.c = v17;
  *&v20.tx = *(a1 + 32);
  CGAffineTransformRotate(&v21, &v20, -v16);
  v18 = *&v21.c;
  *a1 = *&v21.a;
  *(a1 + 16) = v18;
  *(a1 + 32) = *&v21.tx;
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = *a1;
  *(a2 + 32) = *(a1 + 8);
  *(a2 + 40) = *(a1 + 16);
  *(a2 + 48) = *(a1 + 24);
  *(a2 + 56) = *(a1 + 32);
  result = *(a1 + 40);
  *(a2 + 64) = result;
  return result;
}

CGFloat VKM_CGAffineTransformCompose@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 32) = *(a1 + 56);
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  *&v13.a = *a2;
  *&v13.c = v6;
  *&v13.tx = *(a2 + 32);
  CGAffineTransformRotate(a2, &v13, v5);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a2 + 16);
  *&v12.a = *a2;
  *&v12.c = v9;
  *&v12.tx = *(a2 + 32);
  CGAffineTransformScale(&v13, &v12, v7, v8);
  v10 = *&v13.c;
  *a2 = *&v13.a;
  *(a2 + 16) = v10;
  result = v13.tx;
  *(a2 + 32) = *&v13.tx;
  return result;
}

double VKMTransformDecompose(_OWORD *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v17[9] = *MEMORY[0x1E69E9840];
  v11 = a1[1];
  v16[0] = *a1;
  v16[1] = v11;
  v16[2] = a1[2];
  VKM_CGAffineTransformDecompose(v16, v17);
  v12 = v17[8];
  v13 = v17[1];
  v14 = v17[2];
  *a2 = v17[7];
  *a3 = v12;
  *a4 = v14;
  result = *v17;
  *a5 = v17[0];
  *a6 = v13;
  return result;
}

uint64_t VKMTransform3DDecompose(_OWORD *a1, CGFloat *a2, CGFloat *a3, CGFloat *a4, CGFloat *a5, CGFloat *a6)
{
  v28 = *MEMORY[0x1E69E9840];
  v12 = a1[5];
  *&v27.m31 = a1[4];
  *&v27.m33 = v12;
  v13 = a1[7];
  *&v27.m41 = a1[6];
  *&v27.m43 = v13;
  v14 = a1[1];
  *&v27.m11 = *a1;
  *&v27.m13 = v14;
  v15 = a1[3];
  *&v27.m21 = a1[2];
  *&v27.m23 = v15;
  v16 = MEMORY[0x1B8C75990](&v27);
  if (v16)
  {
    memset(&v25, 0, sizeof(v25));
    v17 = a1[5];
    *&v27.m31 = a1[4];
    *&v27.m33 = v17;
    v18 = a1[7];
    *&v27.m41 = a1[6];
    *&v27.m43 = v18;
    v19 = a1[1];
    *&v27.m11 = *a1;
    *&v27.m13 = v19;
    v20 = a1[3];
    *&v27.m21 = a1[2];
    *&v27.m23 = v20;
    CATransform3DGetAffineTransform(&v25, &v27);
    v26 = v25;
    VKM_CGAffineTransformDecompose(&v26, &v27);
    m31 = v27.m31;
    m12 = v27.m12;
    m13 = v27.m13;
    *a2 = v27.m24;
    *a3 = m31;
    *a4 = m13;
    *a5 = v27.m11;
    *a6 = m12;
  }

  return v16;
}

void VKMTransformMixAffineTransforms(__int128 *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = a1[1];
  v16 = *a1;
  v17[0] = v7;
  v17[1] = a1[2];
  VKM_CGAffineTransformDecompose(&v16, &v18);
  v8 = a2[1];
  v15[0] = *a2;
  v15[1] = v8;
  v15[2] = a2[2];
  VKM_CGAffineTransformDecompose(v15, &v16);
  if ((v18.f64[0] >= 0.0 || *(&v16 + 1) >= 0.0) && (v18.f64[1] >= 0.0 || *&v16 >= 0.0))
  {
    v9 = __x;
  }

  else
  {
    v18 = vnegq_f64(v18);
    v9 = __x + dbl_1B4428710[__x < 0.0];
  }

  v10 = fmod(v9, 6.28318531);
  __x = v10;
  v11 = fmod(*v17, 6.28318531);
  *v17 = v11;
  if (vabdd_f64(v10, v11) > 3.14159265)
  {
    v12 = v10 <= v11;
    if (v10 > v11)
    {
      v11 = v10;
    }

    v13 = &v16;
    if (!v12)
    {
      v13 = &v18;
    }

    v13[1].f64[0] = v11 + -6.28318531;
  }

  for (i = 0; i != 9; ++i)
  {
    v18.f64[i] = v18.f64[i] + (*(&v17[-1] + i * 8) - v18.f64[i]) * a4;
  }

  VKM_CGAffineTransformCompose(&v18, a3);
}

BOOL VKMTransform3DNearlyEqualToTransform(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  v6 = a2[5];
  v11[4] = a2[4];
  v11[5] = v6;
  v7 = a2[7];
  v11[6] = a2[6];
  v11[7] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v9 = a2[3];
  v11[2] = a2[2];
  v11[3] = v9;
  return VKMTransform3DNearlyEqualToTransformWithTolerance(v12, v11, 0.01);
}

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B43D1A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 160), 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

__CFString *VKMUIStringForBool(int a1)
{
  if (a1)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

uint64_t VKMUIStringForRectXYSpan(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = MEMORY[0x1E696AEC0];
  MinX = CGRectGetMinX(*&a1);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  MaxX = CGRectGetMaxX(v13);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  MinY = CGRectGetMinY(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  return [v8 stringWithFormat:@"X: [%d - %d] Y: [%d - %d]", MinX, MaxX, MinY, CGRectGetMaxY(v15)];
}

__CFString *VKMUIStringForRange(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = @"NSNotFound";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%d, %d}, [%d - %d]", a1, a2, a1, a1 + a2, v2];
  }

  return v4;
}

__CFString *VKMUIStringForVKRange(void *a1)
{
  v1 = a1;
  if ([v1 rangeCount])
  {
    if ([v1 rangeCount] == 1)
    {
      v2 = [v1 nsRange];
      v4 = VKMUIStringForRange(v2, v3);
    }

    else
    {
      v5 = objc_alloc_init(MEMORY[0x1E696AD60]);
      v6 = [v1 nsRangeArray];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __VKMUIStringForVKRange_block_invoke;
      v9[3] = &unk_1E7BE4E88;
      v10 = v5;
      v7 = v5;
      [v6 enumerateObjectsUsingBlock:v9];

      v4 = [v7 copy];
    }
  }

  else
  {
    v4 = &stru_1F2C04538;
  }

  return v4;
}

void __VKMUIStringForVKRange_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 rangeValue];
  v5 = VKMUIStringForRange(v3, v4);
  [v2 appendString:v5];
}

__CFString *VKMUIStringForRectEdge(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"None";
    goto LABEL_14;
  }

  v1 = a1;
  if (a1 == 15)
  {
    v2 = @"All";
    goto LABEL_14;
  }

  if (a1)
  {
    v3 = [&stru_1F2C04538 stringByAppendingString:{@"Top, "}];
    if ((v1 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = &stru_1F2C04538;
  if ((a1 & 2) != 0)
  {
LABEL_9:
    v4 = [(__CFString *)v3 stringByAppendingString:@"Leading, "];

    v3 = v4;
  }

LABEL_10:
  if ((v1 & 8) != 0)
  {
    v8 = [(__CFString *)v3 stringByAppendingString:@"Trailing, "];

    v3 = v8;
    if ((v1 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if ((v1 & 4) != 0)
  {
LABEL_12:
    v5 = [(__CFString *)v3 stringByAppendingString:@"Bottom, "];

    v3 = v5;
  }

LABEL_13:
  v6 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
  v2 = [(__CFString *)v3 stringByTrimmingCharactersInSet:v6];

LABEL_14:

  return v2;
}

__CFString *VKMUIStringForImageOrientation(unint64_t a1)
{
  if (a1 > 7)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE6F50[a1];
  }
}

id VKMUIStringForCVPixelBufferType(uint64_t a1)
{
  v5[0] = BYTE3(a1);
  v5[1] = BYTE2(a1);
  v5[2] = BYTE1(a1);
  v5[3] = a1;
  v5[4] = 0;
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
  v3 = [v2 stringByAppendingFormat:@" (%d)", a1];

  return v3;
}

__CFString *VKMUIStringForDDTypes(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"None";
    goto LABEL_21;
  }

  v1 = a1;
  if (a1 == -1)
  {
    v2 = @"All";
    goto LABEL_21;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  if (v1)
  {
    [v3 appendString:{@"PhoneNumber, "}];
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_26;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 appendString:{@"Address, "}];
  if ((v1 & 4) == 0)
  {
LABEL_8:
    if ((v1 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v4 appendString:{@"CalendarEvent, "}];
  if ((v1 & 8) == 0)
  {
LABEL_9:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v4 appendString:{@"ShipmentTrackingNumber, "}];
  if ((v1 & 0x10) == 0)
  {
LABEL_10:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  [v4 appendString:{@"FlightNumber, "}];
  if ((v1 & 0x20) == 0)
  {
LABEL_11:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  [v4 appendString:{@"LookupSuggestion, "}];
  if ((v1 & 0x40) == 0)
  {
LABEL_12:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  [v4 appendString:{@"WebURL, "}];
  if ((v1 & 0x80) == 0)
  {
LABEL_13:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  [v4 appendString:{@"MailURL, "}];
  if ((v1 & 0x100) == 0)
  {
LABEL_14:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v4 appendString:{@"GenericURL, "}];
  if ((v1 & 0x200) == 0)
  {
LABEL_15:
    if ((v1 & 0x200000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v4 appendString:{@"Email, "}];
  if ((v1 & 0x200000) == 0)
  {
LABEL_16:
    if ((v1 & 0x400000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v4 appendString:{@"MRC, "}];
  if ((v1 & 0x400000) == 0)
  {
LABEL_17:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_18;
    }

LABEL_36:
    [v4 appendString:{@"PhysicalValue, "}];
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_35:
  [v4 appendString:{@"AppCode, "}];
  if ((v1 & 0x400) != 0)
  {
    goto LABEL_36;
  }

LABEL_18:
  if ((v1 & 0x800) != 0)
  {
LABEL_19:
    [v4 appendString:{@"Money, "}];
  }

LABEL_20:
  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
  v2 = [v4 stringByTrimmingCharactersInSet:v5];

LABEL_21:

  return v2;
}

__CFString *VKMUIStringForAnalysisTypes(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"None";
    goto LABEL_14;
  }

  v1 = a1;
  if (a1 == -65)
  {
    v2 = @"All";
    goto LABEL_14;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  if (v1)
  {
    [v3 appendString:{@"Text, "}];
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_19;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 appendString:{@"TextDD, "}];
  if ((v1 & 4) == 0)
  {
LABEL_8:
    if ((v1 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  [v4 appendString:{@"MRC, "}];
  if ((v1 & 8) == 0)
  {
LABEL_9:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 appendString:{@"AppClip, "}];
  if ((v1 & 0x10) == 0)
  {
LABEL_10:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    [v4 appendString:{@"ImageSegmentation, "}];
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  [v4 appendString:{@"VisualSearch, "}];
  if ((v1 & 0x20) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v1 & 0x40) != 0)
  {
LABEL_12:
    [v4 appendString:{@"VisualIntelligence, "}];
  }

LABEL_13:
  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
  v2 = [v4 stringByTrimmingCharactersInSet:v5];

LABEL_14:

  return v2;
}

__CFString *VKMUIStringForAnalysisInteractionTypes(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"None";
    goto LABEL_12;
  }

  v1 = a1;
  if (a1 == -17)
  {
    v2 = @"All";
    goto LABEL_12;
  }

  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = v3;
  if (v1)
  {
    [v3 appendString:{@"Text, "}];
    if ((v1 & 2) == 0)
    {
LABEL_7:
      if ((v1 & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_7;
  }

  [v4 appendString:{@"DD, "}];
  if ((v1 & 4) == 0)
  {
LABEL_8:
    if ((v1 & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    [v4 appendString:{@"Subject, "}];
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_17:
  [v4 appendString:{@"VS, "}];
  if ((v1 & 8) != 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((v1 & 0x10) != 0)
  {
LABEL_10:
    [v4 appendString:{@"VI, "}];
  }

LABEL_11:
  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
  v2 = [v4 stringByTrimmingCharactersInSet:v5];

LABEL_12:

  return v2;
}

id VKMUIStringForStickerRepresentationType(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v3 = v2;
  if (a1)
  {
    [v2 appendString:{@"Still, "}];
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 appendString:{@"Animated, "}];
  if ((a1 & 4) != 0)
  {
LABEL_4:
    [v3 appendString:{@"Keyboard, "}];
  }

LABEL_5:
  v4 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:{@", "}];
  v5 = [v3 stringByTrimmingCharactersInSet:v4];

  return v5;
}

__CFString *VKMUIStringForAnalyzerRequestSource(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE6F90[a1];
  }
}

__CFString *VKMUIStringForAnalyzerRequestType(unint64_t a1)
{
  if (a1 > 7)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE6FA8[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsEventType(unint64_t a1)
{
  if (a1 > 9)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE6FE8[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsDDEventType(unint64_t a1)
{
  if (a1 > 4)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE7038[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsSubjectEventType(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE7060[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsSubjectInteractionType(unint64_t a1)
{
  if (a1 > 4)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE7078[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsQAEventType(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE70A0[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsTextEventType(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE70B8[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsEventSource(unint64_t a1)
{
  if (a1 > 5)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE70D8[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsInteractionEventType(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE7108[a1];
  }
}

__CFString *VKMUIStringForVKAnalyticsVisualSearchEventType(unint64_t a1)
{
  if (a1 > 3)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE7128[a1];
  }
}

__CFString *VKMUIStringForSubjectRequestStatus(unint64_t a1)
{
  if (a1 > 2)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE7148[a1];
  }
}

__CFString *VKMUIStringForVKCVSInvocationType(uint64_t a1)
{
  if ((a1 - 1) > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7BE7160[a1 - 1];
  }
}

__CFString *VKMUIStringForVKVSDomain(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E7BE7188[a1];
  }
}

__CFString *VKMUIStringForGMAvailabilityStatus(uint64_t a1)
{
  v1 = @"Available";
  if (a1 == 1)
  {
    v1 = @"Restricted";
  }

  if (a1 == 2)
  {
    return @"Unavailable";
  }

  else
  {
    return v1;
  }
}

__CFString *VKMUIStringForBCSParsedDataType(unint64_t a1)
{
  if (a1 > 0xF)
  {
    return &stru_1F2C04538;
  }

  else
  {
    return off_1E7BE7230[a1];
  }
}

void sub_1B43D5D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43D62F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43DA35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43DA5AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43DB69C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B43DD2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t VKMDeviceRGBColorSpace()
{
  if (VKMDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    VKMDeviceRGBColorSpace_cold_1();
  }

  return VKMDeviceRGBColorSpace_sDeviceRGBColorSpace;
}

CGColorSpaceRef __VKMDeviceRGBColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  VKMDeviceRGBColorSpace_sDeviceRGBColorSpace = result;
  return result;
}

uint64_t VKMDeviceCMYKColorSpace()
{
  if (VKMDeviceCMYKColorSpace_sDeviceCMYKDispatchOnce != -1)
  {
    VKMDeviceCMYKColorSpace_cold_1();
  }

  return VKMDeviceCMYKColorSpace_sDeviceCMYKColorSpace;
}

CGColorSpaceRef __VKMDeviceCMYKColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceCMYK();
  VKMDeviceCMYKColorSpace_sDeviceCMYKColorSpace = result;
  return result;
}

uint64_t VKMDeviceGrayColorSpace()
{
  if (VKMDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    VKMDeviceGrayColorSpace_cold_1();
  }

  return VKMDeviceGrayColorSpace_sDeviceGrayColorSpace;
}

CGColorSpaceRef __VKMDeviceGrayColorSpace_block_invoke()
{
  result = CGColorSpaceCreateDeviceGray();
  VKMDeviceGrayColorSpace_sDeviceGrayColorSpace = result;
  return result;
}

CGColorRef VKMCGColorCreateDeviceRGB(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  components[4] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  components[2] = a3;
  components[3] = a4;
  if (VKMDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    VKMDeviceRGBColorSpace_cold_1();
  }

  return CGColorCreate(VKMDeviceRGBColorSpace_sDeviceRGBColorSpace, components);
}

CGColorRef VKMCGColorCreateDeviceGray(CGFloat a1, CGFloat a2)
{
  components[2] = *MEMORY[0x1E69E9840];
  components[0] = a1;
  components[1] = a2;
  if (VKMDeviceGrayColorSpace_sDeviceGrayDispatchOnce != -1)
  {
    VKMDeviceGrayColorSpace_cold_1();
  }

  return CGColorCreate(VKMDeviceGrayColorSpace_sDeviceGrayColorSpace, components);
}

CGPatternRef VKMCGPatternCreateWithImageAndTransform(CGImageRef image, __int128 *a2)
{
  if (!image)
  {
    [VKAssert handleFailedAssertWithCondition:"image != ((void*)0)" functionName:"CGPatternRef VKMCGPatternCreateWithImageAndTransform(CGImageRef simulateCrash:const CGAffineTransform *)" showAlert:0 format:0, @"can't create an image pattern without an image"];
  }

  CGImageRetain(image);
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  if (a2)
  {
    v8 = a2[1];
    v13 = *a2;
    v14 = v8;
    v9 = a2[2];
  }

  else
  {
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v13 = *MEMORY[0x1E695EFD0];
    v14 = v10;
    v9 = *(MEMORY[0x1E695EFD0] + 32);
  }

  v15 = v9;
  v16.size.height = Height;
  v16.size.width = Width;
  *&v12.a = v13;
  *&v12.c = v14;
  *&v12.tx = v9;
  v16.origin.x = v4;
  v16.origin.y = v5;
  return CGPatternCreate(image, v16, &v12, Width, v16.size.height, kCGPatternTilingConstantSpacing, 1, &VKMCGPatternCreateWithImageAndTransform_sCallbacks);
}

void VKMDrawImageAtOriginInContext(CGImage *a1, CGContext *a2)
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  v8 = v4;
  v9 = v5;
  v10 = Width;

  CGContextDrawImage(a2, *&v8, a1);
}

CGColorRef VKMCGColorCreatePatternWithImageAndTransform(CGImage *a1, __int128 *a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = VKMCGPatternCreateWithImageAndTransform(a1, a2);
  Pattern = CGColorSpaceCreatePattern(0);
  v6[0] = 1.0;
  v4 = CGColorCreateWithPattern(Pattern, v2, v6);
  CGColorSpaceRelease(Pattern);
  CGPatternRelease(v2);
  return v4;
}

uint64_t VKMHSBFromCGColorRef(CGColorRef color, double *a2, double *a3, double *a4, CGFloat *a5)
{
  *a5 = 0.0;
  *a4 = 0.0;
  *a3 = 0.0;
  *a2 = 0.0;
  if (!color)
  {
    [VKAssert handleFailedAssertWithCondition:"color" functionName:"BOOL VKMHSBFromCGColorRef(CGColorRef simulateCrash:CGFloat * showAlert:CGFloat * format:CGFloat *, CGFloat *)", 0, 0, @"NULL color"];
  }

  ColorSpace = CGColorGetColorSpace(color);
  if (CGColorSpaceGetModel(ColorSpace) != kCGColorSpaceModelRGB || CGColorGetNumberOfComponents(color) != 4)
  {
    return 0;
  }

  *a5 = CGColorGetAlpha(color);
  Components = CGColorGetComponents(color);
  VKMRGBToHSB(a2, a3, a4, *Components, Components[1], Components[2]);
  return 1;
}

double VKMRGBToHSB(double *a1, double *a2, double *a3, double a4, double a5, double a6)
{
  if (a4 < a5 || a4 < a6)
  {
    if (a5 >= a4)
    {
      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    if (a4 >= a6)
    {
      v8 = a6;
    }

    else
    {
      v8 = a4;
    }

    v9 = a5 < a4 || a5 < a6;
    if (v9)
    {
      v10 = v7;
    }

    else
    {
      v10 = v8;
    }

    if (v9)
    {
      v11 = a6;
    }

    else
    {
      v11 = a5;
    }
  }

  else
  {
    if (a5 >= a6)
    {
      v10 = a6;
    }

    else
    {
      v10 = a5;
    }

    v11 = a4;
  }

  v12 = 0.0;
  if (v11 <= 0.0)
  {
    v14 = 0.0;
  }

  else
  {
    v13 = v11 - v10;
    v14 = (v11 - v10) / v11;
    if (v14 != 0.0)
    {
      v15 = (v11 - a5) / v13;
      v16 = (v11 - a6) / v13;
      if (v11 == a4)
      {
        if (v10 == a5)
        {
          v12 = v16 + 5.0;
        }

        else
        {
          v12 = 1.0 - v15;
        }
      }

      else
      {
        v18 = v11 == a5;
        v19 = (v11 - a4) / v13;
        if (v18)
        {
          if (v10 == a6)
          {
            v12 = v19 + 1.0;
          }

          else
          {
            v12 = 3.0 - v16;
          }
        }

        else if (v10 == a4)
        {
          v12 = v15 + 3.0;
        }

        else
        {
          v12 = 5.0 - v19;
        }
      }
    }
  }

  *a3 = v11;
  result = v12 / 6.0;
  *a1 = v12 / 6.0;
  *a2 = v14;
  return result;
}

double *VKMHSBToRGB(double *result, double *a2, double *a3, double a4, double a5, double a6)
{
  v6 = a4 * 6.0;
  v7 = a4 == 1.0;
  v8 = 0.0;
  if (!v7)
  {
    v8 = v6;
  }

  v9 = v8;
  v10 = v8 - v8;
  v11 = (1.0 - a5) * a6;
  v12 = (1.0 - a5 * v10) * a6;
  v13 = (1.0 - a5 * (1.0 - v10)) * a6;
  if (v9 <= 2)
  {
    if (v9)
    {
      if (v9 != 1)
      {
        v14 = (1.0 - a5) * a6;
        v15 = a6;
        if (v9 != 2)
        {
          return result;
        }

LABEL_19:
        *result = v14;
        *a2 = v15;
        *a3 = v13;
        return result;
      }

      v14 = v12;
      v15 = a6;
    }

    else
    {
      v14 = a6;
      v15 = v13;
    }

    v13 = v11;
    goto LABEL_19;
  }

  switch(v9)
  {
    case 3:
      v14 = (1.0 - a5) * a6;
      v15 = v12;
LABEL_18:
      v13 = a6;
      goto LABEL_19;
    case 4:
      v14 = v13;
      v15 = v11;
      goto LABEL_18;
    case 5:
      v14 = a6;
      v15 = v11;
      v13 = v12;
      goto LABEL_19;
  }

  return result;
}

double VKMCMYKToRGB(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  *a1 = 1.0 - fmin(a7 + a4 * (1.0 - a7), 1.0);
  *a2 = 1.0 - fmin(a7 + a5 * (1.0 - a7), 1.0);
  result = 1.0 - fmin(a7 + a6 * (1.0 - a7), 1.0);
  *a3 = result;
  return result;
}

BOOL VKMColorIsBlack(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  Components = CGColorGetComponents(a1);
  v5 = 0.0;
  if (Model)
  {
    if (Model == kCGColorSpaceModelCMYK)
    {
      Components += 3;
      v5 = 1.0;
    }

    else
    {
      if (Model != kCGColorSpaceModelRGB || *Components != 0.0 || Components[1] != 0.0)
      {
        return 0;
      }

      Components += 2;
    }
  }

  return *Components == v5;
}

CGFloat VKMColorLightness(CGColor *a1)
{
  ColorSpace = CGColorGetColorSpace(a1);
  Model = CGColorSpaceGetModel(ColorSpace);
  switch(Model)
  {
    case kCGColorSpaceModelMonochrome:
      return *CGColorGetComponents(a1);
    case kCGColorSpaceModelCMYK:
      Components = CGColorGetComponents(a1);
      v7 = Components[3];
      v8 = 1.0 - fmin(v7 + *Components * (1.0 - v7), 1.0);
      v9 = 1.0 - fmin(v7 + Components[1] * (1.0 - v7), 1.0);
      v10 = 1.0 - fmin(v7 + Components[2] * (1.0 - v7), 1.0);
      v5 = fmax(fmax(v8, v9), v10) + fmin(fmin(v8, v9), v10);
      return v5 * 0.5;
    case kCGColorSpaceModelRGB:
      v4 = CGColorGetComponents(a1);
      v5 = fmax(fmax(*v4, v4[1]), v4[2]) + fmin(fmin(*v4, v4[1]), v4[2]);
      return v5 * 0.5;
  }

  NSLog(&cfstr_WarningTesting.isa);
  return 0.0;
}

CGContext *VKMCreateRGBABitmapContext(int a1, double a2, CGFloat a3, CGFloat a4)
{
  if (VKMDeviceRGBColorSpace_sDeviceRGBDispatchOnce != -1)
  {
    VKMDeviceRGBColorSpace_cold_1();
  }

  v8 = CGBitmapContextCreate(0, (a2 * a4), (a3 * a4), 8uLL, (4 * (a2 * a4) + 31) & 0xFFFFFFFFFFFFFFE0, VKMDeviceRGBColorSpace_sDeviceRGBColorSpace, 0x2002u);
  CGAffineTransformMakeScale(&v10, a4, a4);
  CGContextConcatCTM(v8, &v10);
  if (a1)
  {
    CGContextTranslateCTM(v8, 0.0, a3);
    CGAffineTransformMakeScale(&v10, 1.0, -1.0);
    CGContextConcatCTM(v8, &v10);
  }

  return v8;
}

CGColorRef VKMCreateCheckerBoardColor(CGColor *a1, CGColor *a2, CGFloat a3, CGFloat a4)
{
  v8 = a3 + a3;
  v9 = a4 + a4;
  v10 = VKMCreateRGBABitmapContext(0, a3 + a3, a4 + a4, 1.0);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  CGContextSetFillColorWithColor(v10, a1);
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = v8;
  v15.size.height = v9;
  CGContextFillRect(v11, v15);
  CGContextSetFillColorWithColor(v11, a2);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a3;
  v16.size.height = a4;
  CGContextFillRect(v11, v16);
  v17.origin.x = a3;
  v17.origin.y = a4;
  v17.size.width = a3;
  v17.size.height = a4;
  CGContextFillRect(v11, v17);
  Image = CGBitmapContextCreateImage(v11);
  CGContextRelease(v11);
  if (!Image)
  {
    return 0;
  }

  PatternWithImageAndTransform = VKMCGColorCreatePatternWithImageAndTransform(Image, 0);
  CGImageRelease(Image);
  return PatternWithImageAndTransform;
}

id getkDDRVInteractionDidFinishNotification_0()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getkDDRVInteractionDidFinishNotificationSymbolLoc_ptr_0;
  v8 = getkDDRVInteractionDidFinishNotificationSymbolLoc_ptr_0;
  if (!getkDDRVInteractionDidFinishNotificationSymbolLoc_ptr_0)
  {
    v1 = DataDetectorsUILibrary_4();
    v6[3] = dlsym(v1, "kDDRVInteractionDidFinishNotification");
    getkDDRVInteractionDidFinishNotificationSymbolLoc_ptr_0 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void sub_1B43DEA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id getDDRevealBridgeClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDRevealBridgeClass_softClass_0;
  v7 = getDDRevealBridgeClass_softClass_0;
  if (!getDDRevealBridgeClass_softClass_0)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDRevealBridgeClass_block_invoke_0;
    v3[3] = &unk_1E7BE3F48;
    v3[4] = &v4;
    __getDDRevealBridgeClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B43DEF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43E1818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *__getkDDRVInteractionDidFinishNotificationSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_4();
  result = dlsym(v2, "kDDRVInteractionDidFinishNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDDRVInteractionDidFinishNotificationSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataDetectorsUILibrary_4()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_5)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DataDetectorsUILibraryCore_block_invoke_5;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7BE7458;
    v5 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_5 = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary_5;
  v1 = v3[0];
  if (!DataDetectorsUILibraryCore_frameworkLibrary_5)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_5()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_5 = result;
  return result;
}

VKCFormRegion *__getDDRevealBridgeClass_block_invoke_0(uint64_t a1)
{
  DataDetectorsUILibrary_4();
  result = objc_getClass("DDRevealBridge");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDRevealBridgeClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDRevealBridgeClass_block_invoke_cold_1();
    return [(VKCFormRegion *)v3 initWithSourceRegion:v4, v5];
  }

  return result;
}

id getAFTextContentTypeNone()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeNoneSymbolLoc_ptr;
  v8 = getAFTextContentTypeNoneSymbolLoc_ptr;
  if (!getAFTextContentTypeNoneSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeNone");
    getAFTextContentTypeNoneSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeNameSymbolLoc_ptr;
  if (!getAFTextContentTypeNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeName");
    getAFTextContentTypeNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeNamePrefix()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeNamePrefixSymbolLoc_ptr;
  v8 = getAFTextContentTypeNamePrefixSymbolLoc_ptr;
  if (!getAFTextContentTypeNamePrefixSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeNamePrefix");
    getAFTextContentTypeNamePrefixSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeGivenName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeGivenNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeGivenNameSymbolLoc_ptr;
  if (!getAFTextContentTypeGivenNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeGivenName");
    getAFTextContentTypeGivenNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeMiddleName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeMiddleNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeMiddleNameSymbolLoc_ptr;
  if (!getAFTextContentTypeMiddleNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeMiddleName");
    getAFTextContentTypeMiddleNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeFamilyName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeFamilyNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeFamilyNameSymbolLoc_ptr;
  if (!getAFTextContentTypeFamilyNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeFamilyName");
    getAFTextContentTypeFamilyNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeNameSuffix()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeNameSuffixSymbolLoc_ptr;
  v8 = getAFTextContentTypeNameSuffixSymbolLoc_ptr;
  if (!getAFTextContentTypeNameSuffixSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeNameSuffix");
    getAFTextContentTypeNameSuffixSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeNickname()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeNicknameSymbolLoc_ptr;
  v8 = getAFTextContentTypeNicknameSymbolLoc_ptr;
  if (!getAFTextContentTypeNicknameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeNickname");
    getAFTextContentTypeNicknameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeJobTitle()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeJobTitleSymbolLoc_ptr;
  v8 = getAFTextContentTypeJobTitleSymbolLoc_ptr;
  if (!getAFTextContentTypeJobTitleSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeJobTitle");
    getAFTextContentTypeJobTitleSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeOrganizationName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeOrganizationNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeOrganizationNameSymbolLoc_ptr;
  if (!getAFTextContentTypeOrganizationNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeOrganizationName");
    getAFTextContentTypeOrganizationNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeLocation()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeLocationSymbolLoc_ptr;
  v8 = getAFTextContentTypeLocationSymbolLoc_ptr;
  if (!getAFTextContentTypeLocationSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeLocation");
    getAFTextContentTypeLocationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeFullStreetAddress()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeFullStreetAddressSymbolLoc_ptr;
  v8 = getAFTextContentTypeFullStreetAddressSymbolLoc_ptr;
  if (!getAFTextContentTypeFullStreetAddressSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeFullStreetAddress");
    getAFTextContentTypeFullStreetAddressSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeStreetAddressLine1()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeStreetAddressLine1SymbolLoc_ptr;
  v8 = getAFTextContentTypeStreetAddressLine1SymbolLoc_ptr;
  if (!getAFTextContentTypeStreetAddressLine1SymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeStreetAddressLine1");
    getAFTextContentTypeStreetAddressLine1SymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeStreetAddressLine2()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeStreetAddressLine2SymbolLoc_ptr;
  v8 = getAFTextContentTypeStreetAddressLine2SymbolLoc_ptr;
  if (!getAFTextContentTypeStreetAddressLine2SymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeStreetAddressLine2");
    getAFTextContentTypeStreetAddressLine2SymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeAddressCity()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeAddressCitySymbolLoc_ptr;
  v8 = getAFTextContentTypeAddressCitySymbolLoc_ptr;
  if (!getAFTextContentTypeAddressCitySymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeAddressCity");
    getAFTextContentTypeAddressCitySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeAddressState()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeAddressStateSymbolLoc_ptr;
  v8 = getAFTextContentTypeAddressStateSymbolLoc_ptr;
  if (!getAFTextContentTypeAddressStateSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeAddressState");
    getAFTextContentTypeAddressStateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeAddressCityAndState()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeAddressCityAndStateSymbolLoc_ptr;
  v8 = getAFTextContentTypeAddressCityAndStateSymbolLoc_ptr;
  if (!getAFTextContentTypeAddressCityAndStateSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeAddressCityAndState");
    getAFTextContentTypeAddressCityAndStateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCountryName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCountryNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeCountryNameSymbolLoc_ptr;
  if (!getAFTextContentTypeCountryNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCountryName");
    getAFTextContentTypeCountryNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypePostalCode()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypePostalCodeSymbolLoc_ptr;
  v8 = getAFTextContentTypePostalCodeSymbolLoc_ptr;
  if (!getAFTextContentTypePostalCodeSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypePostalCode");
    getAFTextContentTypePostalCodeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeEmailAddress()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeEmailAddressSymbolLoc_ptr;
  v8 = getAFTextContentTypeEmailAddressSymbolLoc_ptr;
  if (!getAFTextContentTypeEmailAddressSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeEmailAddress");
    getAFTextContentTypeEmailAddressSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeURL()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeURLSymbolLoc_ptr;
  v8 = getAFTextContentTypeURLSymbolLoc_ptr;
  if (!getAFTextContentTypeURLSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeURL");
    getAFTextContentTypeURLSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypePassword()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypePasswordSymbolLoc_ptr;
  v8 = getAFTextContentTypePasswordSymbolLoc_ptr;
  if (!getAFTextContentTypePasswordSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypePassword");
    getAFTextContentTypePasswordSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardNameSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardName");
    getAFTextContentTypeCreditCardNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardGivenName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardGivenNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardGivenNameSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardGivenNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardGivenName");
    getAFTextContentTypeCreditCardGivenNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardMiddleName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardMiddleNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardMiddleNameSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardMiddleNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardMiddleName");
    getAFTextContentTypeCreditCardMiddleNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardFamilyName()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardFamilyNameSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardFamilyNameSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardFamilyNameSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardFamilyName");
    getAFTextContentTypeCreditCardFamilyNameSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardNumberSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardNumberSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardNumberSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardNumber");
    getAFTextContentTypeCreditCardNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardExpiration()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardExpirationSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardExpirationSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardExpirationSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardExpiration");
    getAFTextContentTypeCreditCardExpirationSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardExpirationMonth()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardExpirationMonthSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardExpirationMonthSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardExpirationMonthSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardExpirationMonth");
    getAFTextContentTypeCreditCardExpirationMonthSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardExpirationYear()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardExpirationYearSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardExpirationYearSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardExpirationYearSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardExpirationYear");
    getAFTextContentTypeCreditCardExpirationYearSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardSecurityCode()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardSecurityCodeSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardSecurityCodeSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardSecurityCodeSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardSecurityCode");
    getAFTextContentTypeCreditCardSecurityCodeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeCreditCardType()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeCreditCardTypeSymbolLoc_ptr;
  v8 = getAFTextContentTypeCreditCardTypeSymbolLoc_ptr;
  if (!getAFTextContentTypeCreditCardTypeSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeCreditCardType");
    getAFTextContentTypeCreditCardTypeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeBirthdate()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeBirthdateSymbolLoc_ptr;
  v8 = getAFTextContentTypeBirthdateSymbolLoc_ptr;
  if (!getAFTextContentTypeBirthdateSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeBirthdate");
    getAFTextContentTypeBirthdateSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeBirthdateDay()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeBirthdateDaySymbolLoc_ptr;
  v8 = getAFTextContentTypeBirthdateDaySymbolLoc_ptr;
  if (!getAFTextContentTypeBirthdateDaySymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeBirthdateDay");
    getAFTextContentTypeBirthdateDaySymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeBirthdateMonth()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeBirthdateMonthSymbolLoc_ptr;
  v8 = getAFTextContentTypeBirthdateMonthSymbolLoc_ptr;
  if (!getAFTextContentTypeBirthdateMonthSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeBirthdateMonth");
    getAFTextContentTypeBirthdateMonthSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeBirthdateYear()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeBirthdateYearSymbolLoc_ptr;
  v8 = getAFTextContentTypeBirthdateYearSymbolLoc_ptr;
  if (!getAFTextContentTypeBirthdateYearSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeBirthdateYear");
    getAFTextContentTypeBirthdateYearSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeTelephoneNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeTelephoneNumberSymbolLoc_ptr;
  v8 = getAFTextContentTypeTelephoneNumberSymbolLoc_ptr;
  if (!getAFTextContentTypeTelephoneNumberSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeTelephoneNumber");
    getAFTextContentTypeTelephoneNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeTelephoneCountryCode()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeTelephoneCountryCodeSymbolLoc_ptr;
  v8 = getAFTextContentTypeTelephoneCountryCodeSymbolLoc_ptr;
  if (!getAFTextContentTypeTelephoneCountryCodeSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeTelephoneCountryCode");
    getAFTextContentTypeTelephoneCountryCodeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeTelephoneNationalNumber()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeTelephoneNationalNumberSymbolLoc_ptr;
  v8 = getAFTextContentTypeTelephoneNationalNumberSymbolLoc_ptr;
  if (!getAFTextContentTypeTelephoneNationalNumberSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeTelephoneNationalNumber");
    getAFTextContentTypeTelephoneNationalNumberSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeTelephoneAreaCode()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeTelephoneAreaCodeSymbolLoc_ptr;
  v8 = getAFTextContentTypeTelephoneAreaCodeSymbolLoc_ptr;
  if (!getAFTextContentTypeTelephoneAreaCodeSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeTelephoneAreaCode");
    getAFTextContentTypeTelephoneAreaCodeSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

id getAFTextContentTypeTelephoneExtension()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getAFTextContentTypeTelephoneExtensionSymbolLoc_ptr;
  v8 = getAFTextContentTypeTelephoneExtensionSymbolLoc_ptr;
  if (!getAFTextContentTypeTelephoneExtensionSymbolLoc_ptr)
  {
    v1 = AutoFillCoreLibrary();
    v6[3] = dlsym(v1, "AFTextContentTypeTelephoneExtension");
    getAFTextContentTypeTelephoneExtensionSymbolLoc_ptr = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (!v0)
  {
    v4 = getkDDRVInteractionDidFinishNotification_cold_1();
    _Block_object_dispose(&v5, 8);
    _Unwind_Resume(v4);
  }

  v2 = *v0;

  return v2;
}

void *__getAFTextContentTypeNoneSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeNone");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeNoneSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t AutoFillCoreLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!AutoFillCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __AutoFillCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7BE7470;
    v5 = 0;
    AutoFillCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = AutoFillCoreLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!AutoFillCoreLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __AutoFillCoreLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  AutoFillCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getAFTextContentTypeNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeNamePrefixSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeNamePrefix");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeNamePrefixSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeGivenNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeGivenName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeGivenNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeMiddleNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeMiddleName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeMiddleNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeFamilyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeFamilyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeFamilyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeNameSuffixSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeNameSuffix");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeNameSuffixSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeNicknameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeNickname");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeNicknameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeJobTitleSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeJobTitle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeJobTitleSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeOrganizationNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeOrganizationName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeOrganizationNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeLocationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeLocation");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeLocationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeFullStreetAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeFullStreetAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeFullStreetAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeStreetAddressLine1SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeStreetAddressLine1");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeStreetAddressLine1SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeStreetAddressLine2SymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeStreetAddressLine2");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeStreetAddressLine2SymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeAddressCitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeAddressCity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeAddressCitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeAddressStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeAddressState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeAddressStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeAddressCityAndStateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeAddressCityAndState");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeAddressCityAndStateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCountryNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCountryName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCountryNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypePostalCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypePostalCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypePostalCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeEmailAddressSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeEmailAddress");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeEmailAddressSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeURLSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeURLSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypePasswordSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypePassword");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypePasswordSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardGivenNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardGivenName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardGivenNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardMiddleNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardMiddleName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardMiddleNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardFamilyNameSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardFamilyName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardFamilyNameSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardExpirationSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardExpiration");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardExpirationSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardExpirationMonthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardExpirationMonth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardExpirationMonthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardExpirationYearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardExpirationYear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardExpirationYearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardSecurityCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardSecurityCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardSecurityCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeCreditCardTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeCreditCardType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeCreditCardTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeBirthdateSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeBirthdate");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeBirthdateSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeBirthdateDaySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeBirthdateDay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeBirthdateDaySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeBirthdateMonthSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeBirthdateMonth");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeBirthdateMonthSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeBirthdateYearSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeBirthdateYear");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeBirthdateYearSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeTelephoneNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeTelephoneNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeTelephoneNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeTelephoneCountryCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeTelephoneCountryCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeTelephoneCountryCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeTelephoneNationalNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeTelephoneNationalNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeTelephoneNationalNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeTelephoneAreaCodeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeTelephoneAreaCode");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeTelephoneAreaCodeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeTelephoneLocalNumberSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeTelephoneLocalNumber");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeTelephoneLocalNumberSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeTelephoneExtensionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeTelephoneExtension");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeTelephoneExtensionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getAFTextContentTypeDateTimeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = AutoFillCoreLibrary();
  result = dlsym(v2, "AFTextContentTypeDateTime");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getAFTextContentTypeDateTimeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B43E7114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSearchUIResultsViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __SearchUILibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E7BE7488;
    v6 = 0;
    SearchUILibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SearchUILibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SearchUIResultsViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSearchUIResultsViewControllerClass_block_invoke_cold_1();
  }

  getSearchUIResultsViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary = result;
  return result;
}

void sub_1B43EA0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getDDContextMenuActionClass_1()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getDDContextMenuActionClass_softClass_3;
  v7 = getDDContextMenuActionClass_softClass_3;
  if (!getDDContextMenuActionClass_softClass_3)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getDDContextMenuActionClass_block_invoke_3;
    v3[3] = &unk_1E7BE3F48;
    v3[4] = &v4;
    __getDDContextMenuActionClass_block_invoke_3(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1B43EA188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getDDContextMenuActionClass_block_invoke_3(uint64_t a1)
{
  DataDetectorsUILibrary_5();
  result = objc_getClass("DDContextMenuAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDContextMenuActionClass_softClass_3 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getDDContextMenuActionClass_block_invoke_cold_1();
    return DataDetectorsUILibrary_5();
  }

  return result;
}

uint64_t DataDetectorsUILibrary_5()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!DataDetectorsUILibraryCore_frameworkLibrary_6)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __DataDetectorsUILibraryCore_block_invoke_6;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E7BE7560;
    v5 = 0;
    DataDetectorsUILibraryCore_frameworkLibrary_6 = _sl_dlopen();
  }

  v0 = DataDetectorsUILibraryCore_frameworkLibrary_6;
  v1 = v3[0];
  if (!DataDetectorsUILibraryCore_frameworkLibrary_6)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataDetectorsUILibraryCore_block_invoke_6()
{
  result = _sl_dlopen();
  DataDetectorsUILibraryCore_frameworkLibrary_6 = result;
  return result;
}

Class __getDDUIActionClass_block_invoke_1(uint64_t a1)
{
  DataDetectorsUILibrary_5();
  result = objc_getClass("DDUIAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getDDUIActionClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getDDUIActionClass_block_invoke_cold_1();
    return __getkDataDetectorsAllResultsKeySymbolLoc_block_invoke_1(v3);
  }

  return result;
}

void *__getkDataDetectorsAllResultsKeySymbolLoc_block_invoke_1(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_5();
  result = dlsym(v2, "kDataDetectorsAllResultsKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsAllResultsKeySymbolLoc_ptr_1 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkDataDetectorsMiddleTextSymbolLoc_block_invoke_0(uint64_t a1)
{
  v2 = DataDetectorsUILibrary_5();
  result = dlsym(v2, "kDataDetectorsMiddleText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkDataDetectorsMiddleTextSymbolLoc_ptr_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1B43ED5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43ED878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B43EDA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43EDC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43EE044(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 160), 8);
  _Block_object_dispose((v1 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1B43EE6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43EEE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43F0050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CGPathRandomAccess::CGPathRandomAccess(CGPathRandomAccess *this, const CGPath *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  CGPathRandomAccess::addPath(this, a2);
}

void sub_1B43F023C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t CGPathRandomAccess::addPath(CGPathRandomAccess *this, CGPathRef path)
{
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x4812000000;
  v10[3] = __Block_byref_object_copy__22;
  v10[4] = __Block_byref_object_dispose__22;
  v10[5] = &unk_1B44420A2;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke;
  block[3] = &unk_1E7BE6C58;
  block[4] = v10;
  CGPathApplyWithBlock(path, block);
  v4 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 1) - *this) >> 4);
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x4012000000;
  v7[3] = __Block_byref_object_copy__1;
  v7[4] = __Block_byref_object_dispose__2;
  v7[5] = &unk_1B44420A2;
  v8 = *MEMORY[0x1E695EFF8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke_4;
  v6[3] = &unk_1E7BE77F8;
  v6[6] = this;
  v6[7] = v4;
  v6[4] = v10;
  v6[5] = v7;
  CGPathApplyWithBlock(path, v6);
  CGPathRandomAccessSubpath::closeIfNeeded((*(this + 1) - 48));
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(v10, 8);
  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  return v4;
}

void sub_1B43F0448(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  v3 = *(v1 - 88);
  if (v3)
  {
    *(v1 - 80) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__22(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__22(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke(uint64_t a1, int *a2)
{
  v2 = *a2;
  if ((*a2 - 2) < 2)
  {
    v7 = *(*(*(a1 + 32) + 8) + 56);
    ++*(v7 - 16);
    v8 = *(*(*(a1 + 32) + 8) + 56);
    v9 = *(v8 - 8) + 3;
LABEL_8:
    *(v8 - 8) = v9;
    return;
  }

  if (v2 == 1)
  {
    v10 = *(*(*(a1 + 32) + 8) + 56);
    ++*(v10 - 16);
    v8 = *(*(*(a1 + 32) + 8) + 56);
    v9 = *(v8 - 8) + 1;
    goto LABEL_8;
  }

  if (!v2)
  {
    v3 = *(*(a1 + 32) + 8);
    v5 = v3[7];
    v4 = v3[8];
    if (v5 >= v4)
    {
      v11 = v3[6];
      v12 = v5 - v11;
      v13 = (v5 - v11) >> 4;
      v14 = v13 + 1;
      if ((v13 + 1) >> 60)
      {
        std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
      }

      v15 = v4 - v11;
      if (v15 >> 3 > v14)
      {
        v14 = v15 >> 3;
      }

      v16 = v15 >= 0x7FFFFFFFFFFFFFF0;
      v17 = 0xFFFFFFFFFFFFFFFLL;
      if (!v16)
      {
        v17 = v14;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>((v3 + 6), v17);
      }

      v18 = (v5 - v11) >> 4;
      v19 = (16 * v13);
      v20 = (16 * v13 - 16 * v18);
      *v19 = vdupq_n_s64(1uLL);
      v6 = v19 + 1;
      memcpy(v20, v11, v12);
      v21 = v3[6];
      v3[6] = v20;
      v3[7] = v6;
      v3[8] = 0;
      if (v21)
      {
        operator delete(v21);
      }
    }

    else
    {
      *v5 = vdupq_n_s64(1uLL);
      v6 = v5 + 1;
    }

    v3[7] = v6;
  }
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void ___ZN18CGPathRandomAccess7addPathEPK6CGPath_block_invoke_4(void *a1, uint64_t a2)
{
  v3 = a1[6];
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        return;
      }

      v5 = v3[1];
      v6 = ((*(v5 - 16) - *(v5 - 24)) >> 4) - 1;
      v8 = *(v5 - 40);
      v7 = *(v5 - 32);
      if (v8 < v7)
      {
        *v8 = v6;
        *(v8 + 8) = 0;
        v9 = v8 + 16;
        goto LABEL_50;
      }

      v23 = *(v5 - 48);
      v24 = v8 - v23;
      v25 = (v8 - v23) >> 4;
      v26 = v25 + 1;
      if (!((v25 + 1) >> 60))
      {
        v27 = v7 - v23;
        if (v27 >> 3 > v26)
        {
          v26 = v27 >> 3;
        }

        v28 = v27 >= 0x7FFFFFFFFFFFFFF0;
        v29 = 0xFFFFFFFFFFFFFFFLL;
        if (!v28)
        {
          v29 = v26;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v5 - 48, v29);
        }

        v54 = v25;
        v55 = 16 * v25;
        *v55 = v6;
        *(v55 + 8) = 0;
        v9 = 16 * v25 + 16;
        v56 = (v55 - 16 * v54);
        memcpy(v56, v23, v24);
        v57 = *(v5 - 48);
        *(v5 - 48) = v56;
        *(v5 - 40) = v9;
        *(v5 - 32) = 0;
        if (v57)
        {
          operator delete(v57);
        }

LABEL_50:
        *(v5 - 40) = v9;
        v38 = v3[1];
        v58 = *(a2 + 8);
        v41 = *(v38 - 16);
        v59 = *(v38 - 8);
        if (v41 < v59)
        {
          v42 = *v58;
          goto LABEL_93;
        }

        v60 = *(v38 - 24);
        v61 = (v41 - v60) >> 4;
        v62 = v61 + 1;
        if (!((v61 + 1) >> 60))
        {
          v63 = v59 - v60;
          if (v63 >> 3 > v62)
          {
            v62 = v63 >> 3;
          }

          if (v63 >= 0x7FFFFFFFFFFFFFF0)
          {
            v64 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v64 = v62;
          }

          if (v64)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v38 - 24, v64);
          }

          v87 = (16 * v61);
          v88 = *v58;
LABEL_103:
          *v87 = v88;
          v110 = v87 + 1;
          v116 = *(v38 - 24);
          v117 = *(v38 - 16) - v116;
          v118 = v87 - v117;
          memcpy(v87 - v117, v116, v117);
          v119 = *(v38 - 24);
          *(v38 - 24) = v118;
          *(v38 - 16) = v110;
          *(v38 - 8) = 0;
          if (v119)
          {
            operator delete(v119);
          }

          goto LABEL_105;
        }

        goto LABEL_107;
      }

LABEL_108:
      std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
    }

    v16 = v3[1];
    if (v16 != *v3)
    {
      CGPathRandomAccessSubpath::closeIfNeeded((v16 - 3));
      v16 = v3[1];
    }

    if (v16 >= v3[2])
    {
      v17 = std::vector<CGPathRandomAccessSubpath>::__emplace_back_slow_path<>(v3);
    }

    else
    {
      v16[1] = 0u;
      v16[2] = 0u;
      *v16 = 0u;
      v17 = (v16 + 3);
    }

    v3[1] = v17;
    v36 = (*(*(a1[4] + 8) + 48) - 0x5555555555555555 * (v17 - *v3) + 16 * ~a1[7]);
    v37 = v36[1];
    std::vector<CGPathRandomAccessElement>::reserve((v17 - 48), *v36);
    std::vector<ClipperLib::DoublePoint>::reserve((v3[1] - 24), v37);
    *(*(a1[5] + 8) + 48) = **(a2 + 8);
    v38 = v3[1];
    v39 = *(a1[5] + 8);
    v41 = *(v38 - 16);
    v40 = *(v38 - 8);
    if (v41 < v40)
    {
      v42 = *(v39 + 48);
LABEL_93:
      *v41 = v42;
      v110 = v41 + 1;
LABEL_105:
      *(v38 - 16) = v110;
      return;
    }

    v49 = *(v38 - 24);
    v50 = (v41 - v49) >> 4;
    v51 = v50 + 1;
    if (!((v50 + 1) >> 60))
    {
      v52 = v40 - v49;
      if (v52 >> 3 > v51)
      {
        v51 = v52 >> 3;
      }

      if (v52 >= 0x7FFFFFFFFFFFFFF0)
      {
        v53 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v53 = v51;
      }

      if (v53)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v38 - 24, v53);
      }

      v87 = (16 * v50);
      v88 = *(v39 + 48);
      goto LABEL_103;
    }

LABEL_107:
    std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
  }

  if (v4 == 2)
  {
    v18 = v3[1];
    v19 = ((*(v18 - 16) - *(v18 - 24)) >> 4) - 1;
    v21 = *(v18 - 40);
    v20 = *(v18 - 32);
    if (v21 >= v20)
    {
      v43 = *(v18 - 48);
      v44 = v21 - v43;
      v45 = (v21 - v43) >> 4;
      v46 = v45 + 1;
      if ((v45 + 1) >> 60)
      {
        goto LABEL_108;
      }

      v47 = v20 - v43;
      if (v47 >> 3 > v46)
      {
        v46 = v47 >> 3;
      }

      v28 = v47 >= 0x7FFFFFFFFFFFFFF0;
      v48 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v48 = v46;
      }

      if (v48)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v18 - 48, v48);
      }

      v72 = v45;
      v73 = 16 * v45;
      *v73 = v19;
      *(v73 + 8) = 1;
      v22 = 16 * v45 + 16;
      v74 = (v73 - 16 * v72);
      memcpy(v74, v43, v44);
      v75 = *(v18 - 48);
      *(v18 - 48) = v74;
      *(v18 - 40) = v22;
      *(v18 - 32) = 0;
      if (v75)
      {
        operator delete(v75);
      }
    }

    else
    {
      *v21 = v19;
      *(v21 + 8) = 1;
      v22 = v21 + 16;
    }

    *(v18 - 40) = v22;
    v76 = v3[1];
    v78 = *(v76 - 16);
    v77 = *(v76 - 8);
    v79 = vmlaq_f64(v78[-1], vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), v78[-1]));
    if (v78 >= v77)
    {
      v81 = *(v76 - 24);
      v82 = v78 - v81;
      v83 = (v78 - v81) >> 4;
      v84 = v83 + 1;
      if ((v83 + 1) >> 60)
      {
        goto LABEL_107;
      }

      v85 = v77 - v81;
      if (v85 >> 3 > v84)
      {
        v84 = v85 >> 3;
      }

      v28 = v85 >= 0x7FFFFFFFFFFFFFF0;
      v86 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v86 = v84;
      }

      if (v86)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v76 - 24, v86);
      }

      v89 = (v78 - v81) >> 4;
      v90 = (16 * v83);
      v91 = (16 * v83 - 16 * v89);
      *v90 = v79;
      f64 = v90[1].f64;
      memcpy(v91, v81, v82);
      v92 = *(v76 - 24);
      *(v76 - 24) = v91;
      *(v76 - 16) = f64;
      *(v76 - 8) = 0;
      if (v92)
      {
        operator delete(v92);
      }
    }

    else
    {
      *v78 = v79;
      f64 = v78[1].f64;
    }

    *(v76 - 16) = f64;
    v93 = v3[1];
    v94 = vmlaq_f64(*(*(a2 + 8) + 16), vdupq_n_s64(0x3FE5555555555555uLL), vsubq_f64(**(a2 + 8), *(*(a2 + 8) + 16)));
    v96 = *(v93 - 16);
    v95 = *(v93 - 8);
    if (v96 >= v95)
    {
      v98 = *(v93 - 24);
      v99 = v96 - v98;
      v100 = (v96 - v98) >> 4;
      v101 = v100 + 1;
      if ((v100 + 1) >> 60)
      {
        goto LABEL_107;
      }

      v102 = v95 - v98;
      if (v102 >> 3 > v101)
      {
        v101 = v102 >> 3;
      }

      v28 = v102 >= 0x7FFFFFFFFFFFFFF0;
      v103 = 0xFFFFFFFFFFFFFFFLL;
      if (!v28)
      {
        v103 = v101;
      }

      if (v103)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v93 - 24, v103);
      }

      v104 = (v96 - v98) >> 4;
      v105 = (16 * v100);
      v106 = (16 * v100 - 16 * v104);
      *v105 = v94;
      v97 = v105[1].f64;
      memcpy(v106, v98, v99);
      v107 = *(v93 - 24);
      *(v93 - 24) = v106;
      *(v93 - 16) = v97;
      *(v93 - 8) = 0;
      if (v107)
      {
        operator delete(v107);
      }
    }

    else
    {
      *v96 = v94;
      v97 = v96 + 16;
    }

    *(v93 - 16) = v97;
    v38 = v3[1];
    v108 = *(a2 + 8);
    v41 = *(v38 - 16);
    v109 = *(v38 - 8);
    if (v41 < v109)
    {
      v42 = *(v108 + 16);
      goto LABEL_93;
    }

    v111 = *(v38 - 24);
    v112 = (v41 - v111) >> 4;
    v113 = v112 + 1;
    if (!((v112 + 1) >> 60))
    {
      v114 = v109 - v111;
      if (v114 >> 3 > v113)
      {
        v113 = v114 >> 3;
      }

      if (v114 >= 0x7FFFFFFFFFFFFFF0)
      {
        v115 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v115 = v113;
      }

      if (v115)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(v38 - 24, v115);
      }

      v87 = (16 * v112);
      v88 = *(v108 + 16);
      goto LABEL_103;
    }

    goto LABEL_107;
  }

  if (v4 != 3)
  {
    return;
  }

  v10 = v3[1];
  v11 = ((*(v10 - 16) - *(v10 - 24)) >> 4) - 1;
  v13 = *(v10 - 40);
  v12 = *(v10 - 32);
  if (v13 >= v12)
  {
    v30 = *(v10 - 48);
    v31 = v13 - v30;
    v32 = (v13 - v30) >> 4;
    v33 = v32 + 1;
    if ((v32 + 1) >> 60)
    {
      goto LABEL_108;
    }

    v34 = v12 - v30;
    if (v34 >> 3 > v33)
    {
      v33 = v34 >> 3;
    }

    v28 = v34 >= 0x7FFFFFFFFFFFFFF0;
    v35 = 0xFFFFFFFFFFFFFFFLL;
    if (!v28)
    {
      v35 = v33;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(v10 - 48, v35);
    }

    v65 = v32;
    v66 = 16 * v32;
    *v66 = v11;
    *(v66 + 8) = 1;
    v14 = 16 * v32 + 16;
    v67 = (v66 - 16 * v65);
    memcpy(v67, v30, v31);
    v68 = *(v10 - 48);
    *(v10 - 48) = v67;
    *(v10 - 40) = v14;
    *(v10 - 32) = 0;
    if (v68)
    {
      operator delete(v68);
    }
  }

  else
  {
    *v13 = v11;
    *(v13 + 8) = 1;
    v14 = v13 + 16;
  }

  *(v10 - 40) = v14;
  v69 = v3[1];
  v70 = *(v69 - 16);
  v71 = *(a2 + 8);

  std::vector<CGPoint>::__insert_with_size[abi:ne200100]<CGPoint*,CGPoint*>(v69 - 24, v70, v71, v71 + 48, 3);
}

void CGPathRandomAccessSubpath::closeIfNeeded(CGPathRandomAccessSubpath *this)
{
  v1 = *this;
  v2 = *(this + 1);
  v3 = v2 - *this;
  v4 = v3 >> 4;
  if ((v3 >> 4) >= 2)
  {
    v6 = *(this + 3);
    v7 = *(this + 4);
    v8 = ((v7 - v6) >> 4) - 1;
    if (*(v2 - 16) != v8 && (*(v7 - 16) != *v6 || *(v7 - 8) != v6[1]))
    {
      v10 = *(this + 2);
      if (v2 >= v10)
      {
        v12 = v4 + 1;
        if ((v4 + 1) >> 60)
        {
          std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
        }

        v13 = v10 - v1;
        if (v13 >> 3 > v12)
        {
          v12 = v13 >> 3;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF0)
        {
          v12 = 0xFFFFFFFFFFFFFFFLL;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(this, v12);
        }

        v14 = 16 * v4;
        *v14 = v8;
        *(v14 + 8) = 0;
        v11 = 16 * v4 + 16;
        memcpy(0, v1, v3);
        v15 = *this;
        *this = 0;
        *(this + 1) = v11;
        *(this + 2) = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v2 = v8;
        *(v2 + 8) = 0;
        v11 = v2 + 16;
      }

      *(this + 1) = v11;
    }
  }
}

void *std::vector<CGPathRandomAccessElement>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(result, a2);
    }

    std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t std::vector<CGPathRandomAccessSubpath>::__emplace_back_slow_path<>(uint64_t *a1)
{
  v1 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v2 = v1 + 1;
  if (v1 + 1 > 0x555555555555555)
  {
    std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v4 = 0x555555555555555;
  }

  else
  {
    v4 = v2;
  }

  v15 = a1;
  if (v4)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>>(a1, v4);
  }

  v5 = 48 * v1;
  v12 = 0;
  v13 = v5;
  *(&v14 + 1) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *&v14 = 48 * v1 + 48;
  v6 = a1[1];
  v7 = 48 * v1 + *a1 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>(a1, *a1, v6, (v5 + *a1 - v6));
  v8 = *a1;
  *a1 = v7;
  v9 = a1[2];
  v11 = v14;
  *(a1 + 1) = v14;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v12 = v8;
  v13 = v8;
  std::__split_buffer<CGPathRandomAccessSubpath>::~__split_buffer(&v12);
  return v11;
}

void sub_1B43F100C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<CGPathRandomAccessSubpath>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      v7 += 48;
      a4 += 6;
    }

    while (v7 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      std::allocator<CGPathRandomAccessSubpath>::destroy[abi:ne200100](a1, v5);
      v5 += 48;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

void std::allocator<CGPathRandomAccessSubpath>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<CGPathRandomAccessSubpath>,CGPathRandomAccessSubpath*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      std::allocator<CGPathRandomAccessSubpath>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<CGPathRandomAccessSubpath>::~__split_buffer(void **a1)
{
  std::__split_buffer<CGPathRandomAccessSubpath>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<CGPathRandomAccessSubpath>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 48;
    std::allocator<CGPathRandomAccessSubpath>::destroy[abi:ne200100](v4, i - 48);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CGPathRandomAccessElement>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<CGPoint>::__insert_with_size[abi:ne200100]<CGPoint*,CGPoint*>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::DoublePoint>>(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &a4[v5];
      v25 = &a4[v5 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<CGPathRandomAccessSubpath>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<CGPathRandomAccessSubpath>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void CGPathRandomAccessSubpath::clipperPath(uint64_t *a1, uint64_t *a2, double a3)
{
  v4 = *a1;
  if (a1[1] != *a1)
  {
    v6 = 0;
    __asm
    {
      FMOV            V1.2D, #3.0
      FMOV            V0.2D, #6.0
    }

    v73 = _Q0;
    v74 = _Q1;
    __asm
    {
      FMOV            V1.2D, #0.125
      FMOV            V0.2D, #0.25
    }

    v71 = _Q0;
    v72 = _Q1;
    __asm { FMOV            V0.2D, #0.5 }

    v70 = _Q0;
    do
    {
      if (!v6)
      {
        v15 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(*a1[3], a3)));
        v16 = a2[1];
        v17 = a2[2];
        if (v16 >= v17)
        {
          v20 = *a2;
          v21 = v16 - *a2;
          v22 = 0xAAAAAAAAAAAAAAABLL * (v21 >> 3) + 1;
          if (v22 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_49;
          }

          v23 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v20) >> 3);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x555555555555555)
          {
            v22 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v22)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a2, v22);
          }

          v24 = 8 * (v21 >> 3);
          *&v25 = v15.i32[0];
          *(&v25 + 1) = v15.i32[1];
          *v24 = v25;
          *(v24 + 16) = 0;
          v19 = v24 + 24;
          v26 = v24 - v21;
          memcpy((v24 - v21), v20, v21);
          v27 = *a2;
          *a2 = v26;
          a2[1] = v19;
          a2[2] = 0;
          if (v27)
          {
            operator delete(v27);
          }
        }

        else
        {
          *&v18 = v15.i32[0];
          *(&v18 + 1) = v15.i32[1];
          *v16 = v18;
          *(v16 + 16) = 0;
          v19 = v16 + 24;
        }

        a2[1] = v19;
        v4 = *a1;
      }

      v28 = v4 + 16 * v6;
      if (*(v28 + 8) == 1)
      {
        v86[0] = 0;
        v86[1] = v86;
        v86[2] = 0x3812000000;
        v86[3] = __Block_byref_object_copy__7;
        v86[4] = __Block_byref_object_dispose__8;
        v86[5] = &unk_1B44420A2;
        v86[6] = 0;
        v29 = a1[3] + 16 * *v28;
        v80[0] = MEMORY[0x1E69E9820];
        v80[1] = 3221225472;
        v81 = ___ZNK25CGPathRandomAccessSubpath11clipperPathEdRNSt3__16vectorIN10ClipperLib8IntPointENS0_9allocatorIS3_EEEE_block_invoke;
        v82 = &unk_1E7BE7820;
        v85 = a3;
        v83 = v86;
        v84 = a2;
        v30 = v80;
        v32 = *v29;
        v31 = *(v29 + 16);
        v33 = vsubq_f64(v31, *v29);
        v35 = *(v29 + 32);
        v34 = *(v29 + 48);
        v36 = vsubq_f64(v35, v31);
        v37 = vsubq_f64(v36, v33);
        v38 = vsubq_f64(vsubq_f64(v34, v35), v36);
        v39 = vzip2q_s64(v37, v38);
        v40 = vzip1q_s64(v37, v38);
        v41 = vmlaq_f64(vmulq_f64(v39, v39), v40, v40);
        if (v41.n128_f64[0] <= v41.n128_f64[1])
        {
          v41.n128_f64[0] = v41.n128_f64[1];
        }

        v42 = v41.n128_f64[0] * 9.0 * 0.0625;
        v41.n128_u64[0] = *(v29 + 56);
        if (v42 > 0.04)
        {
          v43 = vsubq_f64(v38, v37);
          v44 = vmulq_f64(v43, v73);
          v45 = vmlaq_f64(v43, v74, vaddq_f64(v33, v37));
          v46 = vmulq_f64(vaddq_f64(v37, v43), v73);
          v47 = 1;
          do
          {
            v44 = vmulq_f64(v44, v72);
            v46 = vsubq_f64(vmulq_f64(v46, v71), v44);
            v45 = vsubq_f64(vmulq_f64(v45, v70), vmulq_f64(v46, v70));
            v47 *= 2;
            v42 = v42 * 0.0625;
          }

          while (v42 > 0.04 && v47 <= 0x10000);
          if (v47 >= 2)
          {
            for (i = 1; i != v47; ++i)
            {
              v76 = v45;
              v77 = v46;
              v78 = v44;
              v79 = vaddq_f64(v32, v45);
              (v81)(v30, v79.f64[0], v79.f64[1], i / v47);
              v41.n128_u64[1] = *&v76.f64[1];
              v34.n128_u64[1] = *&v77.f64[1];
              v45 = vaddq_f64(v76, v77);
              v44 = v78;
              v32 = v79;
              v46 = vaddq_f64(v78, v77);
            }

            v34.n128_u64[0] = *(v29 + 48);
            v41.n128_u64[0] = *(v29 + 56);
          }
        }

        (v81)(v30, v34, v41, 1.0);

        _Block_object_dispose(v86, 8);
      }

      else
      {
        v49 = vmovn_s64(vcvtq_s64_f64(vmulq_n_f64(*(a1[3] + 16 * ((*v28 + 1) % ((a1[4] - a1[3]) >> 4))), a3)));
        v50 = a2[1];
        v51 = a2[2];
        if (v50 >= v51)
        {
          v54 = *a2;
          v55 = v50 - *a2;
          v56 = 0xAAAAAAAAAAAAAAABLL * (v55 >> 3) + 1;
          if (v56 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_49:
            std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
          }

          v57 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v54) >> 3);
          if (2 * v57 > v56)
          {
            v56 = 2 * v57;
          }

          if (v57 >= 0x555555555555555)
          {
            v56 = 0xAAAAAAAAAAAAAAALL;
          }

          if (v56)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(a2, v56);
          }

          v58 = 8 * (v55 >> 3);
          *&v59 = v49.i32[0];
          *(&v59 + 1) = v49.i32[1];
          *v58 = v59;
          *(v58 + 16) = 0;
          v53 = v58 + 24;
          v60 = v58 - v55;
          memcpy((v58 - v55), v54, v55);
          v61 = *a2;
          *a2 = v60;
          a2[1] = v53;
          a2[2] = 0;
          if (v61)
          {
            operator delete(v61);
          }
        }

        else
        {
          *&v52 = v49.i32[0];
          *(&v52 + 1) = v49.i32[1];
          *v50 = v52;
          *(v50 + 16) = 0;
          v53 = v50 + 24;
        }

        a2[1] = v53;
      }

      ++v6;
      v4 = *a1;
    }

    while (v6 < (a1[1] - *a1) >> 4);
  }

  v63 = *a2;
  v62 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v62 - *a2) >> 3) > 1)
  {
    v65 = *(v62 - 24);
    v66 = *(v62 - 16);
    v64 = v62 - 24;
    v68 = *v63;
    v67 = v63[1];
    if (v65 == v68 && v66 == v67)
    {
      a2[1] = v64;
    }
  }
}

void ___ZNK25CGPathRandomAccessSubpath11clipperPathEdRNSt3__16vectorIN10ClipperLib8IntPointENS0_9allocatorIS3_EEEE_block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 48);
  v4 = (a2 * v3);
  v5 = (a3 * v3);
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  if (v8 >= v9)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
    v12 = *v6;
    v13 = v8 - *v6;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3) + 1;
    if (v14 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<ClipperLib::IntPoint>::__throw_length_error[abi:ne200100]();
    }

    v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v12) >> 3);
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    if (v15 < 0x555555555555555)
    {
      v11 = v14;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ClipperLib::IntPoint>>(*(a1 + 40), v11);
    }

    v16 = (8 * (v13 >> 3));
    *v16 = v4;
    v16[1] = v5;
    v16[2] = *(v7 + 48);
    v10 = v16 + 3;
    v17 = v16 - v13;
    memcpy(v16 - v13, v12, v13);
    v18 = *v6;
    *v6 = v17;
    *(v6 + 8) = v10;
    *(v6 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v8 = v4;
    v8[1] = v5;
    v8[2] = *(v7 + 48);
    v10 = v8 + 3;
  }

  *(v6 + 8) = v10;
}

void sub_1B43F1F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void vk_cgImageRemoveBackground(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (!vk_cgImageRemoveBackground_requestHandler)
  {
    v6 = objc_alloc_init(VKCRemoveBackgroundRequestHandler);
    v7 = vk_cgImageRemoveBackground_requestHandler;
    vk_cgImageRemoveBackground_requestHandler = v6;
  }

  v8 = [[VKCRemoveBackgroundRequest alloc] initWithCGImage:a1];
  [(VKCRemoveBackgroundRequest *)v8 setCropToFit:a2];
  [(VKCRemoveBackgroundRequest *)v8 setPerformInPlace:a2 ^ 1];
  v9 = vk_cgImageRemoveBackground_requestHandler;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __vk_cgImageRemoveBackground_block_invoke;
  v11[3] = &unk_1E7BE78D8;
  v12 = v5;
  v10 = v5;
  [v9 performRequest:v8 completion:v11];
}

void __vk_cgImageRemoveBackground_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = 0;
  if (v8 && !v5)
  {
    v6 = [v8 createCGImage];
  }

  v7 = *(a1 + 32);
  [v8 cropRect];
  (*(v7 + 16))(v7, v6, v5);
  CGImageRelease(v6);
}

void vk_cgImageRemoveBackgroundWithDownsizing(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (!vk_cgImageRemoveBackgroundWithDownsizing_requestHandler)
  {
    v8 = objc_alloc_init(VKCRemoveBackgroundRequestHandler);
    v9 = vk_cgImageRemoveBackgroundWithDownsizing_requestHandler;
    vk_cgImageRemoveBackgroundWithDownsizing_requestHandler = v8;
  }

  v10 = [VKCRemoveBackgroundRequest requestWithImage:a1 orientation:0 canResize:a2];
  [v10 setCropToFit:a3];
  [v10 setPerformInPlace:a3 ^ 1];
  v11 = vk_cgImageRemoveBackgroundWithDownsizing_requestHandler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __vk_cgImageRemoveBackgroundWithDownsizing_block_invoke;
  v13[3] = &unk_1E7BE78D8;
  v14 = v7;
  v12 = v7;
  [v11 performRequest:v10 completion:v13];
}

void __vk_cgImageRemoveBackgroundWithDownsizing_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = 0;
  v7 = v5;
  if (a2 && !v5)
  {
    v6 = [a2 createCGImage];
  }

  (*(*(a1 + 32) + 16))();
  CGImageRelease(v6);
}

BOOL vk_cgImageRemoveBackgroundIsValidSize(void *a1, double a2, double a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a2 >= a3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  v7 = VKMAspectRatio(a2, a3);
  if (a2 * a3 <= 12582912.0)
  {
    if (v6 <= 16000.0)
    {
      if (v7 >= 0.2 && v7 <= 5.0)
      {
        v11 = 0;
        v12 = 1;
        goto LABEL_17;
      }

      v8 = -13;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid aspect ratio. ratio:%f, min:%f, max:%f", v7, 5.0, *&v7, 0x3FC999999999999ALL, 0x4014000000000000];
    }

    else
    {
      v8 = -12;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid length. length:%f, max:%f", v7, 16000.0, *&v6, 0x40CF400000000000, v16];
    }
  }

  else
  {
    v8 = -11;
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid resolution. image-size:%f, max:%f", v7, a2 * a3, a2 * a3, 0x4168000000000000, v16];
  }
  v10 = ;
  v11 = v10;
  v12 = v10 == 0;
  if (a1 && v10)
  {
    v13 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696A578];
    v18[0] = v10;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    *a1 = [v13 errorWithDomain:@"com.apple.VisionKit.RemoveBackground" code:v8 userInfo:v14];

    v12 = 0;
  }

LABEL_17:

  return v12;
}

id vk_dataFromCGImage(CGImage *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v8 = CGImageDestinationCreateWithData(v7, v5, 1uLL, 0);
  if (v8)
  {
    v9 = v8;
    CGImageDestinationAddImage(v8, a1, v6);
    if (CGImageDestinationFinalize(v9))
    {
      CFRelease(v9);
      v10 = [(__CFData *)v7 copy];
      goto LABEL_11;
    }

    v12 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      vk_dataFromCGImage_cold_1();
    }

    CFRelease(v9);
  }

  else
  {
    v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      vk_dataFromCGImage_cold_2();
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

void sub_1B43F4678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGImageRef vk_createResizedCGImage(CGImage *a1, size_t a2, size_t a3)
{
  BitsPerComponent = CGImageGetBitsPerComponent(a1);
  BytesPerRow = CGImageGetBytesPerRow(a1);
  ColorSpace = CGImageGetColorSpace(a1);
  BitmapInfo = CGImageGetBitmapInfo(a1);
  v10 = CGBitmapContextCreate(0, a2, a3, BitsPerComponent, BytesPerRow, ColorSpace, BitmapInfo);
  CGContextSetInterpolationQuality(v10, kCGInterpolationHigh);
  v13.origin.x = VKMRectWithSize();
  CGContextDrawImage(v10, v13, a1);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  return Image;
}

CGColorSpace *vk_newARGB8BitmapContextFromImage(CGImage *a1)
{
  Width = CGImageGetWidth(a1);
  Height = CGImageGetHeight(a1);
  result = CGImageGetColorSpace(a1);
  if (result)
  {

    return CGBitmapContextCreate(0, Width, Height, 8uLL, 4 * Width, result, 2u);
  }

  return result;
}

CVPixelBufferRef vk_pixelBufferFromCGImageWithAttributes(CGImage *a1, void *a2)
{
  v3 = a2;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  pixelBufferOut = 0;
  if (a1)
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    if (!CVPixelBufferCreate(*MEMORY[0x1E695E480], Width, Height, 0x42475241u, v3, &pixelBufferOut))
    {
      CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
      BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
      BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
      v9 = CGBitmapContextCreate(BaseAddress, Width, Height, 8uLL, BytesPerRow, DeviceRGB, 0x2002u);
      v13.size.width = Width;
      v13.size.height = Height;
      v13.origin.x = 0.0;
      v13.origin.y = 0.0;
      CGContextDrawImage(v9, v13, a1);
      CGContextRelease(v9);
      CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
    }
  }

  CGColorSpaceRelease(DeviceRGB);
  v10 = pixelBufferOut;

  return v10;
}

CVPixelBufferRef vk_ioSurfaceBackedPixelBufferFromCGImage(CGImage *a1)
{
  v8[3] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v3 = *MEMORY[0x1E6966030];
  v7[0] = *MEMORY[0x1E69660D8];
  v7[1] = v3;
  v8[0] = MEMORY[0x1E695E0F8];
  v8[1] = MEMORY[0x1E695E118];
  v7[2] = *MEMORY[0x1E6966028];
  v8[2] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];
  v5 = vk_pixelBufferFromCGImageWithAttributes(a1, v4);
  CGColorSpaceRelease(DeviceRGB);

  return v5;
}

CVPixelBufferRef vk_cgImageBackedPixelBufferFromCGImage(CGImage *a1, uint64_t a2)
{
  if (a2)
  {

    return vk_pixelBufferFromCGImageWithAttributes(a1, 0);
  }

  else
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v5 = vk_pixelBufferFromCGImageWithAttributes(a1, 0);
    CGColorSpaceRelease(DeviceRGB);
    return v5;
  }
}

__CVBuffer *vk_cgImageFromPixelBuffer(__CVBuffer *result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    v2 = CVPixelBufferGetIOSurface(result);
    imageOut = _UICreateCGImageFromIOSurfaceWithOptions();
    if (imageOut)
    {
      v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "Using UIKit conversion form ioSurface to create CGImage from pixel buffer", buf, 2u);
      }
    }

    else
    {
      if (CVPixelBufferGetPixelFormatType(v1) == 1999843442)
      {
        v4 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v10 = 1999843442;
          _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "Bypassing VT due to incompatible format: %u", buf, 8u);
        }
      }

      else
      {
        VTCreateCGImageFromCVPixelBuffer(v1, 0, &imageOut);
        if (imageOut)
        {
LABEL_16:

          return imageOut;
        }
      }

      v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4335000, v5, OS_LOG_TYPE_DEFAULT, "VT did not return a CGImage from a buffer, trying CI", buf, 2u);
      }

      v3 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v1];
      v6 = [objc_alloc(MEMORY[0x1E695F620]) initWithOptions:0];
      CVPixelBufferGetHeight(v1);
      CVPixelBufferGetWidth(v1);
      imageOut = [v6 createCGImage:v3 fromRect:VKMRectWithSize()];
      v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v10 = imageOut != 0;
        _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "CGImage from CI has result: %d", buf, 8u);
      }
    }

    goto LABEL_16;
  }

  return result;
}

id vk_pngDataFromCGImage(CGImage *a1)
{
  v2 = [*MEMORY[0x1E6982F28] identifier];
  v3 = vk_dataFromCGImage(a1, v2, 0);

  return v3;
}

void vk_cgImageCropZeroAlpha(CGImage *a1, void *a2)
{
  v26 = a2;
  if (!a1)
  {
    [VKAssert handleFailedAssertWithCondition:"imageRef" functionName:"void vk_cgImageCropZeroAlpha(CGImageRef _Nonnull simulateCrash:void (^ _Nonnull __strong)(CGImageRef _Nullable showAlert:CGRect))" format:0, 0, @"Trying to crop a NULL image"];
  }

  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v5 = *(MEMORY[0x1E695F058] + 16);
  v6 = *(MEMORY[0x1E695F058] + 24);
  v7 = vk_newARGB8BitmapContextFromImage(a1);
  if (v7)
  {
    Width = CGImageGetWidth(a1);
    Height = CGImageGetHeight(a1);
    v10 = Width;
    v28.size.height = Height;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = Width;
    CGContextDrawImage(v7, v28, a1);
    Data = CGBitmapContextGetData(v7);
    Image = CGBitmapContextCreateImage(v7);
    if (Data)
    {
      if (Height)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        v16 = Height;
        v17 = Width;
        do
        {
          if (Width)
          {
            v18 = 0;
            v19 = Data;
            do
            {
              v21 = *v19;
              v19 += 4;
              v20 = v21;
              if (v17 >= v18)
              {
                v22 = v18;
              }

              else
              {
                v22 = v17;
              }

              if (v15 <= v18)
              {
                v23 = v18;
              }

              else
              {
                v23 = v15;
              }

              if (v16 >= v13)
              {
                v24 = v13;
              }

              else
              {
                v24 = v16;
              }

              if (v14 <= v13)
              {
                v25 = v13;
              }

              else
              {
                v25 = v14;
              }

              if (v20)
              {
                v17 = v22;
                v16 = v24;
                v15 = v23;
                v14 = v25;
              }

              ++v18;
            }

            while (Width != v18);
            Data += 4 * Width;
          }

          ++v13;
        }

        while (v13 != Height);
        v10 = v17;
        Width = v17;
      }

      else
      {
        v16 = 0;
        v15 = 0;
        v14 = 0;
      }

      v3 = v16;
      v5 = (v15 - Width + 1);
      v6 = (v14 - v16 + 1);
      v4 = v10;
    }

    CGContextRelease(v7);
    if (Image)
    {
      v29.origin.x = v4;
      v29.origin.y = v3;
      v29.size.width = v5;
      v29.size.height = v6;
      v7 = CGImageCreateWithImageInRect(Image, v29);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    [VKAssert handleFailedAssertWithCondition:"context" functionName:"void vk_cgImageCropZeroAlpha(CGImageRef _Nonnull simulateCrash:void (^ _Nonnull __strong)(CGImageRef _Nullable showAlert:CGRect))" format:0, 0, @"Couldn't create a bitmap context"];
    Image = 0;
  }

  CGImageRelease(Image);
  v26[2](v26, v7, v4, v3, v5, v6);
  CGImageRelease(v7);
}

BOOL vk_isPixelBufferTransparentAtPoint(__CVBuffer *a1, double a2, double a3, double a4)
{
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  LODWORD(v4) = llround(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if ((v4 & 0x80000000) != 0 || (LODWORD(v5) = llround(a3), (v5 & 0x80000000) != 0) || Width <= v4)
  {
    if (PixelFormatType == 1278226534)
    {
      return 0;
    }

LABEL_8:
    [VKAssert handleFailedAssertWithCondition:"__objc_no" functionName:"BOOL vk_isPixelBufferTransparentAtPoint(CVPixelBufferRef _Nullable simulateCrash:CGPoint showAlert:CGFloat)" format:0, 0, @"unsupported pixel format for vk_isPixelBufferTransparent"];
    return 0;
  }

  if (PixelFormatType != 1278226534)
  {
    goto LABEL_8;
  }

  if (Height <= v5)
  {
    return 0;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  v14 = *(CVPixelBufferGetBaseAddress(a1) + 4 * v4 + BytesPerRow * v5) <= a4;
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v14;
}

CGImageRef vk_createScaledCGImage(CGImage *a1, double a2)
{
  v4 = vcvtmd_u64_f64(CGImageGetWidth(a1) * a2);
  v5 = vcvtmd_u64_f64(CGImageGetHeight(a1) * a2);

  return vk_createResizedCGImage(a1, v4, v5);
}

double vk_sizeForPixelBuffer(__CVBuffer *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F060];
  }

  Width = CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  return Width;
}

double vk_sizeForCGImage(CGImage *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695F060];
  }

  Width = CGImageGetWidth(a1);
  CGImageGetHeight(a1);
  return Width;
}

void sub_1B43F7BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1B43F892C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLTUIVisualTranslationViewClass_block_invoke_1(uint64_t a1)
{
  TranslationUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LTUIVisualTranslationView");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLTUIVisualTranslationViewClass_softClass_1 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLTUIVisualTranslationViewClass_block_invoke_cold_1();
    TranslationUILibrary();
  }
}

void TranslationUILibrary()
{
  v4 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (!TranslationUILibraryCore_frameworkLibrary_1)
  {
    v1[1] = MEMORY[0x1E69E9820];
    v1[2] = 3221225472;
    v1[3] = __TranslationUILibraryCore_block_invoke_1;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_1E7BE7A20;
    v3 = 0;
    TranslationUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!TranslationUILibraryCore_frameworkLibrary_1)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __TranslationUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  TranslationUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

Class __getLTUIVisualTranslationServiceClass_block_invoke(uint64_t a1)
{
  TranslationUILibrary();
  result = objc_getClass("LTUIVisualTranslationService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getLTUIVisualTranslationServiceClass_block_invoke_cold_1();
  }

  getLTUIVisualTranslationServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

id VKBundle()
{
  v0 = VKBundle_vkBundle;
  if (!VKBundle_vkBundle)
  {
    v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v2 = VKBundle_vkBundle;
    VKBundle_vkBundle = v1;

    v0 = VKBundle_vkBundle;
  }

  return v0;
}

void sub_1B43F9620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1B43F999C(uint64_t result)
{
  v2 = v1[7];
  if (v2)
  {
    if (v2 == result)
    {
      return result;
    }
  }

  else if (!result)
  {
    return result;
  }

  v1[8] = 0;
  swift_unknownObjectRelease();
  v1[9] = 0;
  swift_unknownObjectRelease();
  v1[10] = 0;

  return swift_unknownObjectRelease();
}

void *sub_1B43F99FC(void *a1, void *a2)
{
  v3 = v2;
  v32[4] = *MEMORY[0x1E69E9840];
  *(v2 + 48) = 1022739087;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 96) = 125;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v6 = objc_allocWithZone(MEMORY[0x1E6974148]);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = [v6 init];
  v8 = sub_1B4416070();
  v9 = [a2 newFunctionWithName_];

  [v7 setVertexFunction_];
  swift_unknownObjectRelease();
  v10 = sub_1B4416070();
  v11 = [a2 newFunctionWithName_];

  [v7 setFragmentFunction_];
  swift_unknownObjectRelease();
  v12 = [v7 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
    __break(1u);
  }

  [v13 setPixelFormat_];

  v30 = 0;
  v14 = [a1 newRenderPipelineStateWithDescriptor:v7 error:&v30];
  v15 = v14;
  v16 = v30;
  if (!v14)
  {
    v27 = v30;
    sub_1B4415F30();

LABEL_8:
    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v28 = 0;
    goto LABEL_9;
  }

  v3[11] = v14;
  __asm { FMOV            V8.2S, #1.0 }

  v32[0] = 0x3F80000000000000;
  *&v32[1] = _D8;
  v32[2] = 0;
  v32[3] = 1065353216;
  v22 = v16;
  v23 = [a1 newBufferWithBytes:v32 length:32 options:0];
  if (!v23)
  {
    type metadata accessor for MTLCommandBufferError(0);
    sub_1B440A09C(MEMORY[0x1E69E7CC0]);
    sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);
    sub_1B4415F10();
    goto LABEL_8;
  }

  v3[5] = v23;
  __asm { FMOV            V0.2S, #-1.0 }

  *v31 = _D0;
  *&v31[1] = -_D8;
  *&v31[2] = -_D0;
  *&v31[3] = _D8;
  v25 = [a1 newBufferWithBytes:v31 length:32 options:0];
  if (v25)
  {
    v26 = v25;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v3[4] = v26;
    return v3;
  }

  type metadata accessor for MTLCommandBufferError(0);
  v28 = 1;
  sub_1B440A09C(MEMORY[0x1E69E7CC0]);
  sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);
  sub_1B4415F10();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_9:
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v28)
  {
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v15)
  {
    swift_unknownObjectRelease();
  }

  type metadata accessor for StickerShaderNormalGenerator();
  swift_deallocPartialClassInstance();
  return v3;
}

void sub_1B43F9E58(void *a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(v1 + 64);
    swift_unknownObjectRetain();
    if ((v4 || (v5 = [v2 width], v6 = objc_msgSend(v2, sel_height), v7 = objc_opt_self(), v8 = objc_msgSend(v7, sel_texture2DDescriptorWithPixelFormat_width_height_mipmapped_, 55, v5, v6, 0), objc_msgSend(v8, sel_setUsage_, 7), objc_msgSend(v8, sel_setStorageMode_, 2), v9 = *(v1 + 16), *(v1 + 64) = objc_msgSend(v9, sel_newTextureWithDescriptor_, v8), swift_unknownObjectRelease(), *(v1 + 72) = objc_msgSend(v9, sel_newTextureWithDescriptor_, v8), swift_unknownObjectRelease(), v10 = objc_msgSend(v7, sel_texture2DDescriptorWithPixelFormat_width_height_mipmapped_, *(v1 + 96), v5, v6, 0), objc_msgSend(v10, sel_setUsage_, 7), objc_msgSend(v10, sel_setStorageMode_, 2), v11 = objc_msgSend(v9, sel_newTextureWithDescriptor_, v10), v8, v10, *(v1 + 80) = v11, swift_unknownObjectRelease(), (v4 = *(v1 + 64)) != 0)) && (v12 = *(v1 + 72)) != 0)
    {
      v13 = *(v1 + 80);
      if (v13)
      {
        v14 = *(v1 + 16);
        v15 = objc_allocWithZone(MEMORY[0x1E6974608]);
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v16 = [v15 initWithDevice_];
        v17 = *(v1 + 48);
        v18 = v17 * [v13 width];
        if (v18 >= 1.0)
        {
          v19 = objc_allocWithZone(MEMORY[0x1E69745C0]);
          *&v20 = v18;
          v21 = [v19 initWithDevice:v14 sigma:v20];
          [v21 setEdgeMode_];
          [v21 encodeToCommandBuffer:a1 sourceTexture:v2 destinationTexture:v4];
          [v16 encodeToCommandBuffer:a1 primaryTexture:v4 secondaryTexture:v2 destinationTexture:v12];

          for (i = v18 * 0.5; i >= 1.0; i = i * 0.5)
          {
            v23 = objc_allocWithZone(MEMORY[0x1E69745C0]);
            *&v24 = i;
            v25 = [v23 initWithDevice:v14 sigma:v24];
            [v25 setEdgeMode_];
            [v25 encodeToCommandBuffer:a1 sourceTexture:v12 destinationTexture:v4];
            [v16 encodeToCommandBuffer:a1 primaryTexture:v4 secondaryTexture:v2 destinationTexture:v12];
          }
        }

        v26 = *(v1 + 48);
        v27 = v26 * [v13 width];
        v36 = 1.0 / [v13 width];
        v28 = [v13 height];
        *&v29 = v36;
        *(&v29 + 1) = 1.0 / v28;
        v37 = v29;
        v38 = v27;
        v30 = [objc_allocWithZone(MEMORY[0x1E6974128]) init];
        v31 = [v30 colorAttachments];
        v32 = [v31 objectAtIndexedSubscript_];

        if (v32)
        {
          swift_unknownObjectRetain();
          [v32 setTexture_];

          v33 = [a1 renderCommandEncoderWithDescriptor_];
          if (v33)
          {
            v34 = v33;
            [v33 setRenderPipelineState_];
            [v34 setVertexBuffer:*(v1 + 32) offset:0 atIndex:0];
            [v34 setVertexBuffer:*(v1 + 40) offset:0 atIndex:1];
            if (v18 < 1.0)
            {
              v35 = v2;
            }

            else
            {
              v35 = v12;
            }

            [v34 setFragmentTexture:v35 atIndex:0];
            [v34 setFragmentBytes:&v37 length:16 atIndex:0];
            [v34 drawPrimitives:4 vertexStart:0 vertexCount:4];
            [v34 endEncoding];
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          __break(1u);
        }
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1B43FA3C0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B43FA420()
{
  sub_1B43FA3C0();

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

BOOL sub_1B43FA520(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1B43FA61C()
{
  sub_1B44162B0();
  swift_getWitnessTable();
  sub_1B4415F50();
  return sub_1B44162D0();
}

uint64_t sub_1B43FA698(uint64_t a1)
{
  v2 = sub_1B43FACA0(&qword_1EB898B70, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B43FA704(uint64_t a1)
{
  v2 = sub_1B43FACA0(&qword_1EB898B70, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B43FA774(uint64_t a1)
{
  v2 = sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B43FA7F0()
{
  swift_getWitnessTable();

  return sub_1B4415F40();
}

_DWORD *sub_1B43FA85C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1B43FA888(uint64_t a1)
{
  v2 = sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B43FA8F4(uint64_t a1)
{
  v2 = sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B43FA960(void *a1, uint64_t a2)
{
  v4 = sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B43FAA14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B43FAA90()
{
  sub_1B44162B0();
  sub_1B4416060();
  return sub_1B44162D0();
}

uint64_t sub_1B43FAB04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B43FACA0(&qword_1EB899260, type metadata accessor for MTLCommandBufferError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B43FABBC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B43FABDC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1B43FACA0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B43FAE1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1B43FAEB4()
{
  result = qword_1EB898B98;
  if (!qword_1EB898B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB898B98);
  }

  return result;
}

id sub_1B43FB044(void *a1)
{

  return sub_1B43FB140(a1, &OBJC_IVAR____TtC13VisionKitCore34StickerComicGaussBlurExpressShader_sigma);
}

id sub_1B43FB0E0(void *a1)
{

  return sub_1B43FB140(a1, &OBJC_IVAR____TtC13VisionKitCore41StickerComicGaussBlurExpressPassTwoShader_sigma);
}

id sub_1B43FB140(void *a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + *a2);
  v5 = vcvt_f32_f64(*(v2 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
  v6 = v3;
  return [a1 setFragmentBytes:&v5 length:16 atIndex:0];
}

id sub_1B43FB1E0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B43FB250()
{
  sub_1B43FC3B4(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

id sub_1B43FB288()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69794A8]) init];
  [v0 setStiffness_];
  [v0 stiffness];
  v2 = sqrt(v1);
  [v0 setDamping_];
  v3 = v0;
  v4 = sub_1B44160F0();
  [v3 setFromValue_];

  v5 = sub_1B44160F0();
  [v3 setToValue_];

  v6 = v3;
  [v6 settlingDuration];
  [v6 setDuration_];

  return v6;
}

uint64_t sub_1B43FB37C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_unknownObjectRelease();
    return v4 == a2;
  }

  return result;
}

uint64_t sub_1B43FB3CC()
{
  type metadata accessor for StickerEffectMotionManager();
  swift_allocObject();
  result = sub_1B43FB408();
  qword_1EB89A480 = result;
  return result;
}

uint64_t sub_1B43FB408()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 1;
  *(v0 + 104) = sub_1B43FB288();
  *(v0 + 112) = 0x3FF0000000000000;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = MEMORY[0x1E69E7CC0];
  v1 = [objc_allocWithZone(MEMORY[0x1E69634D0]) init];
  *(v0 + 16) = v1;
  if (v1)
  {
    [v1 setDeviceMotionUpdateInterval_];
  }

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  [v3 addObserver:v0 selector:sel_backgroundFrom_ name:*MEMORY[0x1E69DDAC8] object:0];

  v4 = [v2 defaultCenter];
  [v4 addObserver:v0 selector:sel_foregroundFrom_ name:*MEMORY[0x1E69DDBC0] object:0];

  return v0;
}

void sub_1B43FB544()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 136);
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = v2 >> 62;
  if (v2 >> 62)
  {
    goto LABEL_77;
  }

  v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v4)
      {
        v6 = sub_1B4416210();
      }

      else
      {
        v6 = *(v3 + 16);
      }

      goto LABEL_21;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8C75830](v6, v2);
    }

    else
    {
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_68;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();

    if (!Strong)
    {
      break;
    }

    swift_unknownObjectRelease();
    v8 = __OFADD__(v6++, 1);
    if (v8)
    {
      goto LABEL_69;
    }
  }

  v9 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    goto LABEL_83;
  }

  if (v4)
  {
    if (v9 != sub_1B4416210())
    {
LABEL_34:
      v3 = v6 + 5;
      do
      {
        v20 = v3 - 4;
        v4 = v2 & 0xC000000000000001;
        if ((v2 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1B8C75830](v3 - 4, v2);
        }

        else
        {
          if ((v20 & 0x8000000000000000) != 0)
          {
            goto LABEL_70;
          }

          if (v20 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_71;
          }
        }

        v21 = swift_unknownObjectWeakLoadStrong();

        if (v21)
        {
          swift_unknownObjectRelease();
          if (v20 != v6)
          {
            if (v4)
            {
              v22 = MEMORY[0x1B8C75830](v6, v2);
              v23 = MEMORY[0x1B8C75830](v3 - 4, v2);
            }

            else
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_80;
              }

              v24 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v6 >= v24)
              {
                goto LABEL_81;
              }

              if (v20 >= v24)
              {
                goto LABEL_82;
              }

              v22 = *(v2 + 8 * v6 + 32);
              v23 = *(v2 + 8 * v3);
            }

            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v1 + 136) = v2;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_1B4407348(v2);
              *(v1 + 136) = v2;
            }

            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_74;
            }

            v4 = v2 & 0xFFFFFFFFFFFFFF8;
            if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            *((v2 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v23;

            *(v1 + 136) = v2;
            if ((v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
            {
              v2 = sub_1B4407348(v2);
              *(v1 + 136) = v2;
              v4 = v2 & 0xFFFFFFFFFFFFFF8;
              if ((v20 & 0x8000000000000000) != 0)
              {
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                __break(1u);
LABEL_76:
                __break(1u);
LABEL_77:
                v5 = sub_1B4416210();
                goto LABEL_3;
              }
            }

            else if ((v20 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v20 >= *(v4 + 16))
            {
              goto LABEL_76;
            }

            *(v4 + 8 * v3) = v22;

            *(v1 + 136) = v2;
          }

          v8 = __OFADD__(v6++, 1);
          if (v8)
          {
            goto LABEL_73;
          }
        }

        v8 = __OFADD__(v20, 1);
        v26 = v3 - 3;
        if (v8)
        {
          goto LABEL_72;
        }

        if (v2 >> 62)
        {
          v27 = sub_1B4416210();
        }

        else
        {
          v27 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v3;
      }

      while (v26 != v27);
    }
  }

  else if (v9 != *(v3 + 16))
  {
    goto LABEL_34;
  }

LABEL_21:
  if (!(v2 >> 62))
  {
    v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 >= v6)
    {
      goto LABEL_23;
    }

    goto LABEL_79;
  }

  v10 = sub_1B4416210();
  if (v10 < v6)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

LABEL_23:
  sub_1B440769C(v6, v10);
  swift_endAccess();
  v11 = *(v1 + 16);
  if (!v11)
  {
    return;
  }

  v12 = *(v1 + 24);
  v13 = v11;
  v2 = v13;
  if (v12)
  {
    goto LABEL_25;
  }

  v6 = &off_1E7BE8000;
  if ([v13 isDeviceMotionActive])
  {
    v16 = *(v1 + 136);
    if (!(v16 >> 62))
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

LABEL_25:
      [v2 stopDeviceMotionUpdates];
      v14 = *(v1 + 48);
      *(v1 + 64) = *(v1 + 32);
      *(v1 + 80) = v14;
      v15 = CACurrentMediaTime();

      *(v1 + 88) = v15;
      *(v1 + 96) = 0;
      *(v1 + 32) = 0;
      *(v1 + 40) = 0;
      *(v1 + 48) = 1;
      return;
    }

LABEL_84:
    if (sub_1B4416210())
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

LABEL_29:
  if ((*(v1 + 24) & 1) == 0 && ([v2 *(v6 + 2048)] & 1) == 0)
  {
    v17 = *(v1 + 136);
    if (v17 >> 62)
    {
      if (sub_1B4416210())
      {
        goto LABEL_33;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_33:
      v18 = [objc_opt_self() mainQueue];
      v28[4] = sub_1B43FC3DC;
      v28[5] = v1;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 1107296256;
      v28[2] = sub_1B43FBA68;
      v28[3] = &block_descriptor;
      v19 = _Block_copy(v28);

      [v2 startDeviceMotionUpdatesToQueue:v18 withHandler:v19];

      _Block_release(v19);
      return;
    }
  }
}

void sub_1B43FBA68(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1B43FBB04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1B4415EA0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4415E80();
  *(a1 + 24) = a4;

  sub_1B43FB544();

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B43FBBF8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = CACurrentMediaTime();
    v6 = [a2 attitude];
    [v6 quaternion];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    *&v15 = v8;
    *&v16 = v10;
    *&v17 = v12;
    *&v18 = v14;
    v20.i64[0] = __PAIR64__(v16, v15);
    v20.i64[1] = v17;
    v19 = vmulq_f32(v20, xmmword_1B4428ED0);
    v20.i32[3] = v18;
    *&v21 = v19.f32[2] + vaddv_f32(*v19.f32);
    v22.f32[0] = *&v21 * 0.0;
    v22.f32[1] = *&v21 * 0.0;
    v22.i64[1] = __PAIR64__(v18, v21);
    v23 = vmulq_f32(v22, v22);
    v24 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    if (vaddv_f32(v24) == 0.0)
    {
      v25 = xmmword_1B4428EE0;
    }

    else
    {
      v26 = vadd_f32(v24, vdup_lane_s32(v24, 1)).u32[0];
      v27 = vrsqrte_f32(v26);
      v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
      v25 = vmulq_f32(vmulq_n_f32(v22, vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28))).f32[0]), xmmword_1B4428EF0);
    }

    v29 = vnegq_f32(v20);
    v30 = vtrn2q_s32(v20, vtrn1q_s32(v20, v29));
    v31 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v20, v29, 8uLL), *v25.f32, 1), vextq_s8(v30, v30, 8uLL), v25.f32[0]);
    v32 = vrev64q_s32(v20);
    v32.i32[0] = v29.i32[1];
    v32.i32[3] = v29.i32[2];
    v33 = vaddq_f32(v31, vmlaq_laneq_f32(vmulq_laneq_f32(v20, v25, 3), v32, v25, 2));
    v34 = *(v4 + 32);
    if (*(v4 + 48) == 1)
    {
      *(v4 + 32) = v33;
      *(v4 + 48) = 0;
      v35 = v33.i64[1];
      v34 = v33.i64[0];
    }

    else
    {
      v35 = *(v4 + 40);
    }

    v36.i64[0] = v34;
    v36.i64[1] = v35;
    v99 = (v4 + 32);
    v101 = v33;
    v106 = v36;
    if ((*(v4 + 80) & 1) == 0 && (*(v4 + 96) & 1) == 0)
    {
      v104 = *(v4 + 64);
      v37 = v5 - *(v4 + 88);
      [*(v4 + 104) duration];
      v39 = fmin(fmax(v37 / v38, 0.0), 1.0);
      *&v39 = v39;
      [*(v4 + 104) _solveForInput_];
      simd_slerp(v104, v106, v40);
      v106 = v41;
    }

    result = swift_beginAccess();
    v42 = *(v4 + 136);
    if (v42 >> 62)
    {
      result = sub_1B4416210();
      v43 = result;
    }

    else
    {
      v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = v101;
    v45 = xmmword_1B4428EF0;
    if (v43)
    {
      if (v43 >= 1)
      {
        v100 = v4;
        v46 = vmulq_f32(v106, xmmword_1B4428EF0);
        v47 = vnegq_f32(v46);
        v48 = vrev64q_s32(v46);
        v49 = vtrn2q_s32(v46, vtrn1q_s32(v46, v47));
        v48.i32[0] = v47.i32[1];
        v48.i32[3] = v47.i32[2];
        v50 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v46, v101, 3), v48, v101, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v46, v47, 8uLL), *v101.f32, 1), vextq_s8(v49, v49, 8uLL), v101.f32[0]));
        v103 = vdupq_lane_s32(*v50.i8, 0);
        v107 = v50;
        v102 = vdupq_laneq_s32(v50, 2);

        v51 = 0;
        while (1)
        {
          if ((v42 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1B8C75830](v51, v42);
          }

          else
          {
          }

          Strong = swift_unknownObjectWeakLoadStrong();
          if (!Strong)
          {
            goto LABEL_18;
          }

          v53 = Strong;
          v105 = *(Strong + OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation);
          *(Strong + OBJC_IVAR___VKCStickerEffectViewInternal_deviceOrientation) = v107;
          v54 = swift_unknownObjectWeakLoadStrong();
          if (!v54)
          {
            goto LABEL_28;
          }

          v55 = v54;
          [v54 _horizontalVelocity];
          v57 = fabs(v56);
          [v55 _verticalVelocity];
          v59 = v58;

          v60 = fabs(v59);
          if (v57 > v60)
          {
            v60 = v57;
          }

          v61 = v60;
          if (v61 != 0.0)
          {
            v71 = v61 >= 0.0 && v61 < 0.2;
            v63 = xmmword_1B4428EF0;
            if (v71)
            {
              *&v76 = 0.01;
            }

            else
            {
              if (v61 < 0.2 || v61 >= 0.5)
              {
                v73 = 100.0;
                if (v61 >= 100.0 || v61 < 1.0)
                {
                  v73 = 0.004;
                }

                if (v61 >= 0.5 && v61 < 1.0)
                {
                  v62 = 0.1;
                }

                else
                {
                  v62 = v73;
                }

                goto LABEL_29;
              }

              *&v76 = 0.05;
            }

            v62 = *&v76;
          }

          else
          {
LABEL_28:
            v62 = 0.003;
            v63 = xmmword_1B4428EF0;
          }

LABEL_29:
          v64 = vmulq_f32(v105, v63);
          v65 = vnegq_f32(v64);
          v66 = vtrn2q_s32(v64, vtrn1q_s32(v64, v65));
          v67 = vrev64q_s32(v64);
          v67.i32[0] = v65.i32[1];
          v67.i32[3] = v65.i32[2];
          v68 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v64, v107, 3), v67, v102), vmlaq_f32(vmulq_lane_f32(vextq_s8(v64, v65, 8uLL), *v107.f32, 1), vextq_s8(v66, v66, 8uLL), v103));
          v69 = vmulq_f32(v68, v68);
          v70 = atan2f(sqrtf(v69.f32[2] + vaddv_f32(*v69.f32)), v68.f32[3]);
          if (fabsf(v70 + v70) >= v62)
          {
            v53[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] = 1;
            if (!*&v53[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
            {
              [v53 setNeedsLayout];
            }
          }

          if (!*&v53[OBJC_IVAR___VKCStickerEffectViewInternal_displayLink])
          {
            if (v53[OBJC_IVAR___VKCStickerEffectViewInternal_needsRender] == 1)
            {
              [v53 setNeedsLayout];
            }

            swift_unknownObjectRelease();
            goto LABEL_19;
          }

          swift_unknownObjectRelease();
LABEL_18:

LABEL_19:
          if (v43 == ++v51)
          {

            v4 = v100;
            v44 = v101;
            v45 = xmmword_1B4428EF0;
            goto LABEL_59;
          }
        }
      }

      __break(1u);
      goto LABEL_75;
    }

LABEL_59:
    if (*(v4 + 48))
    {
LABEL_75:
      __break(1u);
      return result;
    }

    v77 = *(v4 + 32);
    v78 = *(v4 + 40);
    v79.i64[0] = v77;
    v79.i64[1] = v78;
    v80 = vmulq_f32(v79, v45);
    v81 = vnegq_f32(v80);
    v82 = vtrn2q_s32(v80, vtrn1q_s32(v80, v81));
    v83 = vrev64q_s32(v80);
    v83.i32[0] = v81.i32[1];
    v83.i32[3] = v81.i32[2];
    v84 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v80, v44, 3), v83, vdupq_laneq_s32(v44, 2)), vmlaq_f32(vmulq_lane_f32(vextq_s8(v80, v81, 8uLL), *v44.f32, 1), vextq_s8(v82, v82, 8uLL), vdupq_lane_s32(*v44.f32, 0)));
    v85 = vmulq_f32(v84, xmmword_1B4428ED0);
    v80.f32[0] = v85.f32[2] + vaddv_f32(*v85.f32);
    v86.f32[0] = v80.f32[0] * 0.0;
    v86.f32[1] = v80.f32[0] * 0.0;
    v86.i64[1] = __PAIR64__(v84.u32[3], v80.u32[0]);
    v87 = vmulq_f32(v86, v86);
    v88 = vadd_f32(*v87.i8, *&vextq_s8(v87, v87, 8uLL));
    if (vaddv_f32(v88) == 0.0)
    {
      v89 = xmmword_1B4428EE0;
    }

    else
    {
      v90 = vadd_f32(v88, vdup_lane_s32(v88, 1)).u32[0];
      v91 = vrsqrte_f32(v90);
      v92 = vmul_f32(v91, vrsqrts_f32(v90, vmul_f32(v91, v91)));
      v89 = vmulq_f32(vmulq_n_f32(v86, vmul_f32(v92, vrsqrts_f32(v90, vmul_f32(v92, v92))).f32[0]), v45);
    }

    v93 = vnegq_f32(v89);
    v94 = vtrn2q_s32(v89, vtrn1q_s32(v89, v93));
    v95 = vrev64q_s32(v89);
    v95.i32[0] = v93.i32[1];
    v95.i32[3] = v93.i32[2];
    v96 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v89, v84, 3), v95, v84, 2), vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v89, v93, 8uLL), *v84.f32, 1), vextq_s8(v94, v94, 8uLL), v84.f32[0]));
    v97 = vmulq_f32(v96, v96);
    v98 = atan2f(sqrtf(v97.f32[2] + vaddv_f32(*v97.f32)), v96.f32[3]);
    if (fabsf(v98 + v98) <= 0.62832)
    {
      if (*(v4 + 128))
      {
      }

      *(v4 + 120) = 0;
    }

    else
    {
      if (*(v4 + 128) == 1)
      {
        *(v4 + 120) = v5;
        *(v4 + 128) = 0;
      }

      if (v5 - *(v4 + 120) <= 1.0)
      {
      }

      *(v4 + 64) = v77;
      *(v4 + 72) = v78;
      *(v4 + 80) = 0;
      *(v4 + 88) = CACurrentMediaTime();
      *(v4 + 96) = 0;
      *v99 = 0;
      v99[1] = 0;
      *(v4 + 48) = 1;
      *(v4 + 120) = 0;
    }

    *(v4 + 128) = 1;
  }

  return result;
}

uint64_t sub_1B43FC324()
{

  return MEMORY[0x1EEE6BDC0](v0, 144, 15);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1B43FC3F8()
{
  v1 = v0;
  v2 = sub_1B4416010();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00]();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B4416040();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v1 + 16);
  if (result)
  {
    result = [result deviceMotion];
    if (result)
    {
      v11 = result;
      sub_1B43FC6E4();
      v19 = v3;
      v18 = sub_1B4416150();
      v12 = swift_allocObject();
      swift_weakInit();
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *(v13 + 24) = v11;
      aBlock[4] = sub_1B43FC730;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B44085A0;
      aBlock[3] = &block_descriptor_41;
      v14 = _Block_copy(aBlock);

      v15 = v11;
      sub_1B4416020();
      v20 = MEMORY[0x1E69E7CC0];
      sub_1B43FC738();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB899000);
      sub_1B43FC7D8();
      sub_1B44161B0();
      v16 = v18;
      MEMORY[0x1B8C757C0](0, v9, v5, v14);
      _Block_release(v14);

      (*(v19 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }

  return result;
}

unint64_t sub_1B43FC6E4()
{
  result = qword_1EB899010;
  if (!qword_1EB899010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB899010);
  }

  return result;
}

unint64_t sub_1B43FC738()
{
  result = qword_1EB898CF0;
  if (!qword_1EB898CF0)
  {
    sub_1B4416010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB898CF0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B43FC7D8()
{
  result = qword_1EB898CF8;
  if (!qword_1EB898CF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB899000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB898CF8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void simd_slerp(float32x4_t a1, float32x4_t a2, float a3)
{
  v3 = vmulq_f32(a1, a2);
  v4 = vextq_s8(v3, v3, 8uLL);
  *v3.f32 = vadd_f32(*v3.f32, *v4.f32);
  v3.f32[0] = vaddv_f32(*v3.f32);
  v4.i64[0] = 0;
  _simd_slerp_internal(a1, vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v3, v4)), 0), vnegq_f32(a2), a2), a3);
}

void _simd_slerp_internal(float32x4_t a1, float32x4_t a2, float a3)
{
  v5 = 1.0 - a3;
  v6 = vsubq_f32(a1, a2);
  v7 = vmulq_f32(v6, v6);
  v8 = vaddq_f32(a1, a2);
  v9 = vmulq_f32(v8, v8);
  v10 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))));
  v11 = v10 + v10;
  if ((v10 + v10) != 0.0)
  {
    sinf(v11);
  }

  if ((v5 * v11) != 0.0)
  {
    sinf(v5 * v11);
  }

  v12 = v11 * a3;
  if (v12 != 0.0)
  {
    sinf(v12);
  }
}

VisionKitCore::StickerComicRenderer::Style_optional __swiftcall StickerComicRenderer.Style.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_1B43FCA44@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t StickerComicRenderer.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1B44162B0();
  MEMORY[0x1B8C75920](v1);
  return sub_1B44162D0();
}

uint64_t sub_1B43FCC84()
{
  v1 = *v0;
  sub_1B44162B0();
  MEMORY[0x1B8C75920](v1);
  return sub_1B44162D0();
}

uint64_t sub_1B43FCCCC()
{
  v1 = *v0;
  sub_1B44162B0();
  MEMORY[0x1B8C75920](v1);
  return sub_1B44162D0();
}

void *sub_1B43FCD1C(void *a1)
{
  v3 = v1;
  v30[1] = *MEMORY[0x1E69E9840];
  type metadata accessor for StickerComicRenderer();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v30[0] = 0;
  v7 = [a1 newDefaultLibraryWithBundle:v6 error:v30];

  v8 = v30[0];
  if (v7)
  {
    v9 = type metadata accessor for StickerComicSobelShader();
    objc_allocWithZone(v9);
    v10 = v8;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v11 = sub_1B44012EC(a1, v7);
    if (!v2)
    {
      v3[2] = v11;
      v13 = type metadata accessor for StickerComicGaussBlurExpressShader();
      v14 = objc_allocWithZone(v13);
      *&v14[OBJC_IVAR____TtC13VisionKitCore34StickerComicGaussBlurExpressShader_sigma] = 0x3FE0000000000000;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v29 = v13;
      v3[3] = sub_1B44012EC(a1, v7);
      v15 = type metadata accessor for StickerComicGaussBlurExpressPassTwoShader();
      v16 = objc_allocWithZone(v15);
      *&v16[OBJC_IVAR____TtC13VisionKitCore41StickerComicGaussBlurExpressPassTwoShader_sigma] = 0x3FE0000000000000;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[4] = sub_1B44012EC(a1, v7);
      v17 = objc_allocWithZone(type metadata accessor for StickerComicBFBlurPassOneShader());
      *&v17[OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigmaColor] = 0;
      *&v17[OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigma] = 0;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[5] = sub_1B4401828(a1, v7);
      v18 = objc_allocWithZone(type metadata accessor for StickerComicBFBlurPassTwoShader());
      *&v18[OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigmaColor] = 0;
      *&v18[OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigma] = 0;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[6] = sub_1B4401828(a1, v7);
      v19 = objc_allocWithZone(type metadata accessor for StickerComicVignetteAndQuantizeShader());
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[7] = sub_1B440CAD8(a1, v7);
      v20 = objc_allocWithZone(type metadata accessor for StickerComicEdgesShader());
      *&v20[OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_threshold] = 0x3FE0000000000000;
      *&v20[OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_preThreshold] = 0x3FE0000000000000;
      *&v20[OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_sigma] = 0;
      *&v20[OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_mode] = 0;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[9] = sub_1B4401828(a1, v7);
      v21 = objc_allocWithZone(type metadata accessor for StickerComicStrokeShader());
      *&v21[OBJC_IVAR____TtC13VisionKitCore24StickerComicStrokeShader_sigma] = 0;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[10] = sub_1B44012EC(a1, v7);
      v22 = objc_allocWithZone(type metadata accessor for StickerComicStrokeAndBlendShader());
      *&v22[OBJC_IVAR____TtC13VisionKitCore32StickerComicStrokeAndBlendShader_sigma] = 0;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[11] = sub_1B4401828(a1, v7);
      v23 = objc_allocWithZone(type metadata accessor for StickerComicColorStrokeShader());
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[8] = sub_1B4401828(a1, v7);
      v24 = objc_allocWithZone(type metadata accessor for StickerComicLookupFilterShader());
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[12] = sub_1B4401828(a1, v7);
      v26 = objc_allocWithZone(v9);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[13] = sub_1B44012EC(a1, v7);
      v27 = objc_allocWithZone(v29);
      *&v27[OBJC_IVAR____TtC13VisionKitCore34StickerComicGaussBlurExpressShader_sigma] = 0x3FE0000000000000;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v3[14] = sub_1B44012EC(a1, v7);
      v28 = objc_allocWithZone(v15);
      *&v28[OBJC_IVAR____TtC13VisionKitCore41StickerComicGaussBlurExpressPassTwoShader_sigma] = 0x3FE0000000000000;
      v3[15] = sub_1B44012EC(a1, v7);
      return v3;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v30[0];
    sub_1B4415F30();

    swift_willThrow();
  }

  swift_unknownObjectRelease();
  type metadata accessor for StickerComicRenderer.Shaders();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1B43FD79C()
{
  v0 = sub_1B43FD714();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

uint64_t StickerComicRenderer.__allocating_init(device:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StickerComicRenderer.init(device:)(a1);
  return v2;
}

uint64_t StickerComicRenderer.init(device:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v3;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 16) = a1;
  type metadata accessor for StickerComicRenderer.Shaders();
  swift_allocObject();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1B43FCD1C(v4);
  if (v2)
  {
    swift_unknownObjectRelease();

    type metadata accessor for StickerComicRenderer();
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v1 + 24) = v5;
  }

  return v1;
}

uint64_t sub_1B43FD920(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = *a3;
  v15 = *a3;
  v16 = *(a3 + 1);
  *v17 = *(a3 + 17);
  *&v17[15] = *(a3 + 32);
  if ((sub_1B43FF654(&v15) & 1) == 0)
  {
    v11 = 0;
LABEL_8:
    sub_1B43FF6BC();
    swift_allocError();
    *v12 = v11;
    return swift_willThrow();
  }

  if ([a1 pixelFormat] != 80 || objc_msgSend(a2, sel_pixelFormat) != 80)
  {
    v11 = 1;
    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_1B43FEEE0();
  }

  v15 = v9;
  v16 = *(a3 + 1);
  *v17 = *(a3 + 17);
  *&v17[15] = *(a3 + 32);
  sub_1B43FF710(a1, &v15);
  v15 = v9;
  v16 = *(a3 + 1);
  *v17 = *(a3 + 17);
  *&v17[15] = *(a3 + 32);
  sub_1B43FDFC0(&v15, a1, a2, v10, a4);
  swift_unknownObjectRelease();
  swift_beginAccess();
  v14 = MEMORY[0x1E69E7CC0];
  *(v4 + 32) = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  *(v4 + 40) = v14;
}

uint64_t sub_1B43FDAE0(unint64_t a1)
{
  v2 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_26:
    __break(1u);
LABEL_27:

    v11 = MEMORY[0x1B8C75830](v12, v1);

    return v11;
  }

  v3 = v1;
  v12 = a1;
  swift_beginAccess();
  while (1)
  {
    v4 = *(v3 + 32);
    if (v4 >> 62)
    {
      break;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v2)
    {
      goto LABEL_16;
    }

LABEL_5:
    v7 = *(v3 + 64);
    v6 = *(v3 + 72);
    v8 = objc_opt_self();
    if (v7 <= -9.22337204e18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v7 >= 9.22337204e18)
    {
      goto LABEL_22;
    }

    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    if (v6 <= -9.22337204e18)
    {
      goto LABEL_24;
    }

    if (v6 >= 9.22337204e18)
    {
      goto LABEL_25;
    }

    v1 = [v8 texture2DDescriptorWithPixelFormat:80 width:v7 height:v6 mipmapped:0];
    [v1 setUsage_];
    v9 = [*(v3 + 16) newTextureWithDescriptor_];

    if (v9)
    {
      swift_beginAccess();
      v10 = swift_unknownObjectRetain();
      MEMORY[0x1B8C75710](v10);
      if (*((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 32) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B44160D0();
      }

      v1 = v3 + 32;
      sub_1B44160E0();
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  result = sub_1B4416210();
  if (result < v2)
  {
    goto LABEL_5;
  }

LABEL_16:
  v1 = *(v3 + 32);
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
  {
    v11 = *(v1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B43FDD50(unint64_t a1)
{
  v2 = a1 + 1;
  if (__OFADD__(a1, 1))
  {
LABEL_26:
    __break(1u);
LABEL_27:

    v11 = MEMORY[0x1B8C75830](v12, v1);

    return v11;
  }

  v3 = v1;
  v12 = a1;
  swift_beginAccess();
  while (1)
  {
    v4 = *(v3 + 40);
    if (v4 >> 62)
    {
      break;
    }

    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result >= v2)
    {
      goto LABEL_16;
    }

LABEL_5:
    v7 = *(v3 + 48);
    v6 = *(v3 + 56);
    v8 = objc_opt_self();
    if (v7 <= -9.22337204e18)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v7 >= 9.22337204e18)
    {
      goto LABEL_22;
    }

    if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_23;
    }

    if (v6 <= -9.22337204e18)
    {
      goto LABEL_24;
    }

    if (v6 >= 9.22337204e18)
    {
      goto LABEL_25;
    }

    v1 = [v8 texture2DDescriptorWithPixelFormat:80 width:v7 height:v6 mipmapped:0];
    [v1 setUsage_];
    v9 = [*(v3 + 16) newTextureWithDescriptor_];

    if (v9)
    {
      swift_beginAccess();
      v10 = swift_unknownObjectRetain();
      MEMORY[0x1B8C75710](v10);
      if (*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1B44160D0();
      }

      v1 = v3 + 40;
      sub_1B44160E0();
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }

  result = sub_1B4416210();
  if (result < v2)
  {
    goto LABEL_5;
  }

LABEL_16:
  v1 = *(v3 + 40);
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_27;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) > v12)
  {
    v11 = *(v1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B43FDFC0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v93 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = *(v5 + 24);
  v11 = sub_1B43FDD50(0);
  sub_1B4401718(v11, a2, a5);
  swift_unknownObjectRelease();
  v12 = sub_1B43FDD50(1uLL);
  v13 = sub_1B43FDD50(0);
  sub_1B4401718(v12, v13, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = sub_1B43FDD50(0);
  v15 = sub_1B43FDD50(1uLL);
  sub_1B4401718(v14, v15, a5);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v16 = *(v10 + 40);
  v17 = sub_1B43FDD50(1uLL);
  v18 = sub_1B43FDD50(0);
  sub_1B440156C(v17, a5);
  if (v9)
  {
    if (v19)
    {
      v20 = v19;
      [v19 setFragmentTexture:a2 atIndex:0];
      [v20 setFragmentTexture:v18 atIndex:1];
      [v20 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
      [v20 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
      [v20 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
      *&v21 = *(v16 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigma);
      *&v22 = *(v16 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigmaColor);
      v23 = vcvt_f32_f64(*(v16 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
      v91 = __PAIR64__(v22, v21);
      v92 = v23;
      [v20 setFragmentBytes:&v91 length:16 atIndex:0];
      [v20 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v20 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v24 = *(v10 + 48);
    v25 = sub_1B43FDD50(2uLL);
    v26 = sub_1B43FDD50(1uLL);
    v27 = sub_1B43FDD50(0);
    sub_1B440156C(v25, a5);
    if (v28)
    {
      v29 = v28;
      [v28 setFragmentTexture:v26 atIndex:0];
      [v29 setFragmentTexture:v27 atIndex:1];
      [v29 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
      [v29 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
      [v29 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
      *&v30 = *(v24 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigma);
      *&v31 = *(v24 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigmaColor);
      v32 = vcvt_f32_f64(*(v24 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
      v91 = __PAIR64__(v31, v30);
      v92 = v32;
      [v29 setFragmentBytes:&v91 length:16 atIndex:0];
      [v29 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v29 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v33 = sub_1B43FDD50(1uLL);
    v34 = sub_1B43FDD50(2uLL);
    v35 = sub_1B43FDD50(0);
    sub_1B440156C(v33, a5);
    if (v36)
    {
      v37 = v36;
      [v36 setFragmentTexture:v34 atIndex:0];
      [v37 setFragmentTexture:v35 atIndex:1];
      [v37 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
      [v37 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
      [v37 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
      sub_1B440C9A0(v37);
      [v37 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v37 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v38 = *(v10 + 80);
    v39 = sub_1B43FDD50(1uLL);
    sub_1B4401718(a3, v39, a5);
  }

  else
  {
    if (v19)
    {
      v40 = v19;
      [v19 setFragmentTexture:a2 atIndex:0];
      [v40 setFragmentTexture:v18 atIndex:1];
      [v40 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
      [v40 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
      [v40 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
      *&v41 = *(v16 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigma);
      *&v42 = *(v16 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigmaColor);
      v43 = vcvt_f32_f64(*(v16 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
      v91 = __PAIR64__(v42, v41);
      v92 = v43;
      [v40 setFragmentBytes:&v91 length:16 atIndex:0];
      [v40 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v40 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v44 = *(v10 + 48);
    v45 = sub_1B43FDD50(2uLL);
    v46 = sub_1B43FDD50(1uLL);
    v47 = sub_1B43FDD50(0);
    sub_1B440156C(v45, a5);
    if (v48)
    {
      v49 = v48;
      [v48 setFragmentTexture:v46 atIndex:0];
      [v49 setFragmentTexture:v47 atIndex:1];
      [v49 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
      [v49 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
      [v49 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
      *&v50 = *(v44 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigma);
      *&v51 = *(v44 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigmaColor);
      v52 = vcvt_f32_f64(*(v44 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
      v91 = __PAIR64__(v51, v50);
      v92 = v52;
      [v49 setFragmentBytes:&v91 length:16 atIndex:0];
      [v49 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v49 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v53 = sub_1B43FDAE0(0);
    v54 = sub_1B43FDD50(2uLL);
    sub_1B4401718(v53, v54, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v55 = sub_1B43FDD50(1uLL);
    v56 = sub_1B43FDAE0(0);
    sub_1B4401718(v55, v56, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v57 = sub_1B43FDD50(3uLL);
    v58 = sub_1B43FDD50(1uLL);
    sub_1B4401718(v57, v58, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v59 = sub_1B43FDD50(1uLL);
    v60 = sub_1B43FDD50(3uLL);
    sub_1B4401718(v59, v60, a5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v61 = *(v10 + 64);
    v62 = sub_1B43FDAE0(1uLL);
    v63 = sub_1B43FDAE0(0);
    v64 = sub_1B43FDD50(1uLL);
    sub_1B440156C(v62, a5);
    if (v65)
    {
      v66 = v65;
      [v65 setFragmentTexture:v63 atIndex:0];
      [v66 setFragmentTexture:v64 atIndex:1];
      [v66 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
      [v66 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
      [v66 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
      v91 = vcvt_f32_f64(*(v61 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
      [v66 setFragmentBytes:&v91 length:8 atIndex:0];
      [v66 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v66 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v67 = sub_1B43FDD50(1uLL);
    v68 = sub_1B43FDD50(2uLL);
    v69 = sub_1B43FDD50(0);
    sub_1B440156C(v67, a5);
    if (v70)
    {
      v71 = v70;
      [v70 setFragmentTexture:v68 atIndex:0];
      [v71 setFragmentTexture:v69 atIndex:1];
      [v71 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
      [v71 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
      [v71 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
      sub_1B440C9A0(v71);
      [v71 drawPrimitives:4 vertexStart:0 vertexCount:4];
      [v71 endEncoding];
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (a4)
    {
      v72 = *(v10 + 88);
      swift_unknownObjectRetain();
      v73 = sub_1B43FDAE0(0);
      v74 = sub_1B43FDD50(1uLL);
      v75 = sub_1B43FDAE0(1uLL);
      sub_1B440156C(v73, a5);
      v77 = &off_1E7BE8000;
      if (v76)
      {
        v78 = v76;
        [v76 setFragmentTexture:v74 atIndex:0];
        [v78 setFragmentTexture:v75 atIndex:1];
        [v78 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
        [v78 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
        v77 = &off_1E7BE8000;
        [v78 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
        v79 = *(v72 + OBJC_IVAR____TtC13VisionKitCore32StickerComicStrokeAndBlendShader_sigma);
        v91 = vcvt_f32_f64(*(v72 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
        v92.f32[0] = v79;
        [v78 setFragmentBytes:&v91 length:16 atIndex:0];
        [v78 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v78 endEncoding];
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v80 = sub_1B43FDAE0(0);
      sub_1B440156C(a3, a5);
      if (v81)
      {
        v82 = v81;
        [v81 setFragmentTexture:v80 atIndex:0];
        [v82 setFragmentTexture:a4 atIndex:1];
        [v82 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
        [v82 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
        [v82 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
        [v82 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v82 v77[247]];
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v83 = *(v10 + 88);
      v84 = sub_1B43FDD50(1uLL);
      v85 = sub_1B43FDAE0(1uLL);
      sub_1B440156C(a3, a5);
      if (v86)
      {
        v87 = v86;
        [v86 setFragmentTexture:v84 atIndex:0];
        [v87 setFragmentTexture:v85 atIndex:1];
        [v87 setVertexBytes:&unk_1F2C03880 length:32 atIndex:0];
        [v87 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:1];
        [v87 setVertexBytes:&unk_1F2C038C0 length:32 atIndex:2];
        v88 = *(v83 + OBJC_IVAR____TtC13VisionKitCore32StickerComicStrokeAndBlendShader_sigma);
        v91 = vcvt_f32_f64(*(v83 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
        v92.f32[0] = v88;
        [v87 setFragmentBytes:&v91 length:16 atIndex:0];
        [v87 drawPrimitives:4 vertexStart:0 vertexCount:4];
        [v87 endEncoding];
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_1B43FEEE0()
{
  cacheOut[1] = *MEMORY[0x1E69E9840];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v2 = sub_1B4416070();
  v3 = [objc_opt_self() imageNamed_];

  if (v3)
  {
    [v3 size];
    v5 = v4;
    [v3 scale];
    v7 = v5 * v6;
    if (COERCE__INT64(fabs(v5 * v6)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v7 > -9.22337204e18)
    {
      if (v7 < 9.22337204e18)
      {
        [v3 size];
        v9 = v8;
        [v3 scale];
        v11 = v9 * v10;
        if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v11 > -9.22337204e18)
          {
            if (v11 < 9.22337204e18)
            {
              cacheOut[0] = 0;
              v12 = *MEMORY[0x1E695E480];
              if (CVMetalTextureCacheCreate(*MEMORY[0x1E695E480], 0, *(v0 + 16), 0, cacheOut) || (v13 = cacheOut[0]) == 0)
              {

LABEL_33:
                return 0;
              }

              v55 = v3;
              v56 = DeviceRGB;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB898D20);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_1B4428FE0;
              v15 = *MEMORY[0x1E6966208];
              *(inited + 32) = *MEMORY[0x1E6966208];
              v16 = MEMORY[0x1E69E6530];
              v54 = v7;
              *(inited + 40) = v7;
              v17 = *MEMORY[0x1E69660B8];
              *(inited + 64) = v16;
              *(inited + 72) = v17;
              v53 = v11;
              *(inited + 80) = v11;
              v18 = *MEMORY[0x1E6966130];
              *(inited + 104) = v16;
              *(inited + 112) = v18;
              v19 = MEMORY[0x1E69E7668];
              *(inited + 120) = 1111970369;
              v20 = *MEMORY[0x1E6966030];
              *(inited + 144) = v19;
              *(inited + 152) = v20;
              v21 = MEMORY[0x1E69E6370];
              *(inited + 160) = 1;
              v22 = v12;
              v23 = *MEMORY[0x1E6966028];
              *(inited + 184) = v21;
              *(inited + 192) = v23;
              *(inited + 200) = 1;
              v24 = *MEMORY[0x1E6966100];
              *(inited + 224) = v21;
              *(inited + 232) = v24;
              *(inited + 240) = 1;
              v25 = *MEMORY[0x1E69660D8];
              *(inited + 264) = v21;
              *(inited + 272) = v25;
              textureCache = v13;
              v26 = v15;
              v27 = v17;
              v28 = v18;
              v29 = v20;
              v30 = v23;
              v31 = v24;
              v32 = v25;
              sub_1B440A1CC(MEMORY[0x1E69E7CC0]);
              type metadata accessor for CFString(0);
              sub_1B43FFE24();
              v33 = sub_1B4416050();

              type metadata accessor for CFDictionary(0);
              *(inited + 304) = v34;
              *(inited + 280) = v33;
              sub_1B440A1CC(inited);
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB898D30);
              swift_arrayDestroy();
              v35 = sub_1B4416050();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8992E0);
              v36 = swift_initStackObject();
              v37 = MEMORY[0x1E6966158];
              *(v36 + 16) = xmmword_1B4428FF0;
              v38 = *v37;
              *(v36 + 32) = v38;
              *(v36 + 40) = 1;
              v39 = v38;
              sub_1B440A2F4(v36);
              swift_setDeallocating();
              sub_1B43FFE7C(v36 + 32);
              v40 = sub_1B4416050();

              poolOut = 0;
              if (CVPixelBufferPoolCreate(v22, v40, v35, &poolOut) || !poolOut)
              {

                v52 = textureCache;
LABEL_32:

                goto LABEL_33;
              }

              pixelBufferOut = 0;
              v41 = poolOut;
              if (CVPixelBufferPoolCreatePixelBuffer(v22, v41, &pixelBufferOut) || !pixelBufferOut)
              {
              }

              else
              {
                v42 = pixelBufferOut;
                CVPixelBufferLockBaseAddress(v42, 0);
                BaseAddress = CVPixelBufferGetBaseAddress(v42);
                if (BaseAddress)
                {
                  v44 = BaseAddress;
                  BytesPerRow = CVPixelBufferGetBytesPerRow(v42);
                  v46 = __CGBitmapContextCreate(v44, v54, v53, BytesPerRow, v56);
                  if (v46)
                  {
                    v47 = v53;
                    v48 = v46;
                    CGContextTranslateCTM(v46, 0.0, v53);
                    CGContextScaleCTM(v48, 1.0, -1.0);
                    UIGraphicsPushContext(v48);
                    [v55 drawInRect_];
                    UIGraphicsPopContext();
                    CVPixelBufferUnlockBaseAddress(v42, 0);
                    textureOut = 0;
                    if (v54 > -9.22337204e18)
                    {
                      if (v54 < 9.22337204e18)
                      {
                        if (v47 > -9.22337204e18)
                        {
                          if (v47 < 9.22337204e18)
                          {
                            if (CVMetalTextureCacheCreateTextureFromImage(v22, textureCache, v42, 0, MTLPixelFormatBGRA8Unorm, v54, v53, 0, &textureOut) || !textureOut)
                            {
                            }

                            else
                            {
                              v49 = textureOut;
                              v50 = CVMetalTextureGetTexture(v49);

                              if (v50)
                              {

                                return v50;
                              }
                            }

                            goto LABEL_31;
                          }

LABEL_44:
                          __break(1u);
                        }

LABEL_43:
                        __break(1u);
                        goto LABEL_44;
                      }

LABEL_42:
                      __break(1u);
                      goto LABEL_43;
                    }

LABEL_41:
                    __break(1u);
                    goto LABEL_42;
                  }
                }
              }

LABEL_31:
              v52 = pixelBufferOut;
              goto LABEL_32;
            }

LABEL_40:
            __break(1u);
            goto LABEL_41;
          }

LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_37;
  }

  return 0;
}

uint64_t StickerComicRenderer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t StickerComicRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1B43FF654(uint64_t a1)
{
  v1 = *(a1 + 4);
  v2 = *(a1 + 12);
  v3 = vextq_s8(v2, v1, 8uLL);
  __asm { FMOV            V3.4S, #1.0 }

  *v1.i8 = vmovn_s16(vmvnq_s8(vuzp1q_s16(vcgtq_f32(v1, _Q3), vcgtq_f32(v3, xmmword_1B4429000))));
  v1.i16[3] = vuzp1_s8(*&v1, vmovn_s32(vmvnq_s8(vcgtq_f32(xmmword_1B4429000, v3)))).i16[3];
  v1.i8[0] = vminv_u8(*v1.i8);
  v9 = v1.i32[0];
  *v1.i8 = vmovn_s32(vcltzq_f32(v2));
  v1.i16[0] = vmaxv_u16(*v1.i8);
  return v9 & ~v1.i32[0] & 1;
}

unint64_t sub_1B43FF6BC()
{
  result = qword_1EB898D00;
  if (!qword_1EB898D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB898D00);
  }

  return result;
}

id sub_1B43FF710(void *a1, uint64_t a2)
{
  v5 = *(a2 + 4);
  v4 = *(a2 + 8);
  v7 = *(a2 + 12);
  v6 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = [a1 width];
  result = [a1 height];
  v11 = v9 * 0.76;
  v12 = result * 0.76;
  if (v12 >= v9 * 0.76)
  {
    v13 = v9 * 0.76;
  }

  else
  {
    v13 = result * 0.76;
  }

  if (v11 > v12)
  {
    v14 = v9 * 0.76;
  }

  else
  {
    v14 = result * 0.76;
  }

  if (v13 <= 720.0)
  {
    if (v14 >= 140.0)
    {
      goto LABEL_12;
    }

    v15 = 140.0 / v14;
  }

  else
  {
    v15 = 720.0 / v13;
  }

  v12 = v12 * v15;
  v11 = v11 * v15;
LABEL_12:
  *(v2 + 64) = v11;
  *(v2 + 72) = v12;
  v16 = ((v5 + v5) + 1.0);
  v17 = v11 / v16;
  v18 = v12 / v16;
  *(v2 + 48) = v17;
  *(v2 + 56) = v18;
  v19 = *(v2 + 24);
  v20 = v19[5];
  *(v20 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigmaColor) = 0x3FBBC408E0000000;
  *(v20 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassOneShader_sigma) = 0x401A0A4260000000;
  v21 = v19[6];
  *(v21 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigmaColor) = 0x3FBBC408E0000000;
  *(v21 + OBJC_IVAR____TtC13VisionKitCore31StickerComicBFBlurPassTwoShader_sigma) = 0x401A0A4260000000;
  v22 = v19[7];
  *(v22 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteStart) = 0x3FD3333333333333;
  *(v22 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_vignetteEnd) = 0x3FE999999999999ALL;
  *(v22 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_mode) = 0;
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v8))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  *(v22 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_numLevels) = v8;
  v23 = 1.0 / v8;
  if (!v8)
  {
    v23 = 0.0;
  }

  *(v22 + OBJC_IVAR____TtC13VisionKitCore37StickerComicVignetteAndQuantizeShader_numLevelsRecip) = v23;
  v24 = v19[9];
  *(v24 + OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_sigma) = (1.0 - v4) * 3.807 + 1.6;
  v25 = OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_preThreshold;
  *(v24 + OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_preThreshold) = 0x3FF0000000000000;
  *(v24 + OBJC_IVAR____TtC13VisionKitCore23StickerComicEdgesShader_mode) = 0;
  v26 = v19[10];
  *(v26 + OBJC_IVAR____TtC13VisionKitCore24StickerComicStrokeShader_sigma) = v7 * 12.0 + 4.0;
  v27 = v19[11];
  *(v27 + OBJC_IVAR____TtC13VisionKitCore32StickerComicStrokeAndBlendShader_sigma) = v7 * 32.0 + 4.8;
  v28 = v7 * 6.0 + 2.340625;
  v29 = v19[3];
  *(v29 + OBJC_IVAR____TtC13VisionKitCore34StickerComicGaussBlurExpressShader_sigma) = v28;
  v30 = v19[4];
  *(v30 + OBJC_IVAR____TtC13VisionKitCore41StickerComicGaussBlurExpressPassTwoShader_sigma) = v28;
  v31 = v19[14];
  *(v31 + OBJC_IVAR____TtC13VisionKitCore34StickerComicGaussBlurExpressShader_sigma) = 0x4001800000000000;
  v32 = v19[15];
  *(v32 + OBJC_IVAR____TtC13VisionKitCore41StickerComicGaussBlurExpressPassTwoShader_sigma) = 0x4001800000000000;
  *(v24 + v25) = v6 * -0.65 + 1.0;
  v33 = (v26 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v33 = v11;
  v33[1] = v12;
  v34 = (v27 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v34 = v11;
  v34[1] = v12;
  v35 = (v22 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v35 = v11;
  v35[1] = v12;
  v36 = (v19[8] + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v36 = v11;
  v36[1] = v12;
  v37 = (v19[12] + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v37 = v11;
  v37[1] = v12;
  result = OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size;
  v38 = (v19[2] + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v38 = v17;
  v38[1] = v18;
  v39 = (v20 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v39 = v17;
  v39[1] = v18;
  v40 = (v21 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v40 = v17;
  v40[1] = v18;
  v41 = (v24 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v41 = v17;
  v41[1] = v18;
  v42 = (v29 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v42 = v17;
  v42[1] = v18;
  v43 = (v30 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v43 = v17;
  v43[1] = v18;
  v44 = (v31 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v44 = v17;
  v44[1] = v18;
  v45 = (v32 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v45 = v17;
  v45[1] = v18;
  v46 = (v19[13] + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size);
  *v46 = v17;
  v46[1] = v18;
  return result;
}

unint64_t sub_1B43FFAE0()
{
  result = qword_1EB898D08;
  if (!qword_1EB898D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB898D08);
  }

  return result;
}

unint64_t sub_1B43FFB38()
{
  result = qword_1EB898D10;
  if (!qword_1EB898D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB898D10);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B43FFC34(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B43FFC78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B43FFCD4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B43FFD64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B43FFE24()
{
  result = qword_1EB8990B0;
  if (!qword_1EB8990B0)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8990B0);
  }

  return result;
}

uint64_t sub_1B43FFE7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB898D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B43FFF18()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicLookupFilterShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B43FFF70(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = vcvt_f32_f64(*(v1 + OBJC_IVAR____TtC13VisionKitCore22StickerComicShaderBase_size));
  return [a1 setFragmentBytes:v3 length:8 atIndex:0];
}

id sub_1B43FFFE8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerComicColorStrokeShader();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VKCStickerEffectType.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736302;
    }

    if (a1 == 1)
    {
      return 0x64656B6F727473;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x63696D6F63;
      case 3:
        return 0x7966667570;
      case 4:
        return 0x6563736564697269;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1B44000F0()
{
  v1 = *v0;
  if (*v0 <= 1)
  {
    if (!v1)
    {
      return 1701736302;
    }

    if (v1 == 1)
    {
      return 0x64656B6F727473;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x63696D6F63;
      case 3:
        return 0x7966667570;
      case 4:
        return 0x6563736564697269;
    }
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_1B44002C0()
{
  v1 = *(v0 + OBJC_IVAR___VKCStickerEffectInternal_type);
  if (v1 <= 1)
  {
    if (!v1)
    {
      return 1701736302;
    }

    if (v1 == 1)
    {
      return 0x64656B6F727473;
    }
  }

  else
  {
    switch(v1)
    {
      case 2:
        return 0x63696D6F63;
      case 3:
        return 0x7966667570;
      case 4:
        return 0x6563736564697269;
    }
  }

  return 0x6E776F6E6B6E75;
}

double sub_1B44005BC()
{
  LOBYTE(xmmword_1EB89A488) = 0;
  *(&xmmword_1EB89A488 + 4) = xmmword_1B4429360;
  result = 5.23869072e-11;
  unk_1EB89A49C = 0x3DCCCCCD3F000000;
  qword_1EB89A4A8 = 6;
  return result;
}

double sub_1B44005EC()
{
  LOBYTE(xmmword_1EB89A4B0) = 1;
  *(&xmmword_1EB89A4B0 + 4) = xmmword_1B4429370;
  result = 5.23869072e-11;
  unk_1EB89A4C4 = 0x3DCCCCCD3F000000;
  qword_1EB89A4D0 = 6;
  return result;
}

BOOL sub_1B4400648()
{
  if (*(v0 + OBJC_IVAR___VKCStickerEffectInternal_shadowAlpha) == 0.0 || *(v0 + OBJC_IVAR___VKCStickerEffectInternal_shadowRadius) == 0.0)
  {
    result = 0;
  }

  else
  {
    result = COERCE_FLOAT(*(v0 + OBJC_IVAR___VKCStickerEffectInternal_shadowParallax)) != 0.0 || COERCE_FLOAT(HIDWORD(*(v0 + OBJC_IVAR___VKCStickerEffectInternal_shadowParallax))) != 0.0;
  }

  if (*(v0 + OBJC_IVAR___VKCStickerEffectInternal_iridescence) || (*(v0 + OBJC_IVAR___VKCStickerEffectInternal_isPuffy) & 1) != 0 || *(v0 + OBJC_IVAR___VKCStickerEffectInternal_isBrushed) == 1)
  {
    return 1;
  }

  return result;
}

id static StickerEffect.effectWithType(_:)(uint64_t a1)
{
  v1 = sub_1B4400EA4(a1);

  return v1;
}

double sub_1B4400878()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v0[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowRadius] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowAlpha] = 0;
  result = 0.0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowOffset] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowParallax] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_type] = 0;
  qword_1EB89A4D8 = v0;
  return result;
}

id StickerEffect.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

_BYTE *sub_1B440094C()
{
  result = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  result[OBJC_IVAR___VKCStickerEffectInternal_isStroked] = 1;
  result[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled] = 0;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier] = 1075838976;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier] = 1075838976;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_smallShadowAlphaMultiplier] = 0x40000000;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_type] = 1;
  qword_1EB89A4E0 = result;
  return result;
}

double sub_1B4400A14()
{
  v0 = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  v0[OBJC_IVAR___VKCStickerEffectInternal_isStroked] = 0;
  v0[OBJC_IVAR___VKCStickerEffectInternal_isComicEnabled] = 1;
  v0[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowRadius] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowAlpha] = 0;
  result = 0.0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowOffset] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowParallax] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_type] = 2;
  return result;
}

_BYTE *sub_1B4400ACC()
{
  result = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  result[OBJC_IVAR___VKCStickerEffectInternal_isStroked] = 0;
  result[OBJC_IVAR___VKCStickerEffectInternal_isPuffy] = 1;
  result[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled] = 0;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_type] = 3;
  qword_1EB89A4F0 = result;
  return result;
}

_BYTE *sub_1B4400B58()
{
  result = sub_1B4400B78();
  qword_1EB89A4F8 = result;
  return result;
}

_BYTE *sub_1B4400B78()
{
  result = [objc_allocWithZone(type metadata accessor for StickerEffect()) init];
  result[OBJC_IVAR___VKCStickerEffectInternal_isStroked] = 1;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_iridescence] = 3;
  result[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled] = 0;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier] = 0x40000000;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier] = 0x40000000;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_smallShadowAlphaMultiplier] = 0x40000000;
  *&result[OBJC_IVAR___VKCStickerEffectInternal_type] = 4;
  return result;
}

id sub_1B4400C28(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 == -1)
  {
    v5 = *a4;
  }

  else
  {
    swift_once();
    v5 = *a4;
  }

  return v5;
}

id StickerEffect.init()()
{
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_type] = 0;
  v0[OBJC_IVAR___VKCStickerEffectInternal_isStroked] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_strokeRadius] = 1023745720;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_strokeBlurRadius] = 994352038;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_smallStrokeRadiusMultiplier] = 1065353216;
  v0[OBJC_IVAR___VKCStickerEffectInternal_forceSmallStrokeRadiusMultiplier] = 0;
  v0[OBJC_IVAR___VKCStickerEffectInternal_isPuffy] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_normalsRadius] = 1021396910;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_iridescence] = 0;
  v0[OBJC_IVAR___VKCStickerEffectInternal_applyIridescenceBeforeStroke] = 0;
  v0[OBJC_IVAR___VKCStickerEffectInternal_isBrushed] = 0;
  v0[OBJC_IVAR___VKCStickerEffectInternal_applyBrushBeforeStroke] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowRadius] = 1017370378;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowAlpha] = 1046562734;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowOffset] = 0xBBA3D70A00000000;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_shadowParallax] = 0;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_smallShadowSizeMultiplier] = 1065353216;
  *&v0[OBJC_IVAR___VKCStickerEffectInternal_smallShadowAlphaMultiplier] = 1065353216;
  v0[OBJC_IVAR___VKCStickerEffectInternal_isComicEnabled] = 0;
  v1 = OBJC_IVAR___VKCStickerEffectInternal_comicParameters;
  if (qword_1EB898A38 != -1)
  {
    swift_once();
  }

  v2 = &v0[v1];
  v3 = xmmword_1EB89A488;
  v4 = unk_1EB89A498;
  *(v2 + 4) = qword_1EB89A4A8;
  *v2 = v3;
  *(v2 + 1) = v4;
  v0[OBJC_IVAR___VKCStickerEffectInternal_isCurlEnabled] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for StickerEffect();
  return objc_msgSendSuper2(&v6, sel_init);
}

id StickerEffect.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StickerEffect();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B4400EA4(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (a1 != 1)
    {
LABEL_12:
      if (qword_1EB898A48 != -1)
      {
        swift_once();
      }

      v1 = &qword_1EB89A4D8;
      return *v1;
    }

    if (qword_1EB898A50 != -1)
    {
      swift_once();
    }

    v1 = &qword_1EB89A4E0;
  }

  else
  {
    switch(a1)
    {
      case 2:
        if (qword_1EB898A58 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EB89A4E8;
        break;
      case 3:
        if (qword_1EB898A60 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EB89A4F0;
        break;
      case 4:
        if (qword_1EB898A68 != -1)
        {
          swift_once();
        }

        v1 = &qword_1EB89A4F8;
        return *v1;
      default:
        goto LABEL_12;
    }
  }

  return *v1;
}