double TSDClampPointInRect()
{
  TSUClamp();
  v1 = v0;
  TSUClamp();
  return v1;
}

double TSDTranslatedRectMaximizingOverlapWithRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v44.origin.x = a5;
  v44.origin.y = a6;
  v44.size.width = a7;
  v44.size.height = a8;
  MaxX = CGRectGetMaxX(v44);
  v42 = a1;
  v45.origin.x = a1;
  v45.origin.y = a2;
  v45.size.width = a3;
  v45.size.height = a4;
  if (MaxX > CGRectGetMaxX(v45))
  {
    v46.origin.x = a5;
    v46.origin.y = a6;
    v46.size.width = a7;
    v46.size.height = a8;
    MinX = CGRectGetMinX(v46);
    v47.origin.x = a1;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    if (MinX > CGRectGetMinX(v47))
    {
      v48.origin.x = a5;
      v48.origin.y = a6;
      v48.size.width = a7;
      v48.size.height = a8;
      v33 = CGRectGetMaxX(v48);
      v49.origin.x = a1;
      v49.origin.y = a2;
      v49.size.width = a3;
      v49.size.height = a4;
      v34 = v33 - CGRectGetMaxX(v49);
      v50.origin.x = a5;
      v50.origin.y = a6;
      v50.size.width = a7;
      v50.size.height = a8;
      v17 = CGRectGetMinX(v50);
      v51.origin.x = a1;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      if (v34 >= v17 - CGRectGetMinX(v51))
      {
        v64.origin.x = a5;
        v64.origin.y = a6;
        v64.size.width = a7;
        v64.size.height = a8;
        v18 = CGRectGetMinX(v64);
        v65.origin.x = a1;
        v65.origin.y = a2;
        v65.size.width = a3;
        v65.size.height = a4;
        v19 = CGRectGetMinX(v65);
      }

      else
      {
        v52.origin.x = a5;
        v52.origin.y = a6;
        v52.size.width = a7;
        v52.size.height = a8;
        v18 = CGRectGetMaxX(v52);
        v53.origin.x = a1;
        v53.origin.y = a2;
        v53.size.width = a3;
        v53.size.height = a4;
        v19 = CGRectGetMaxX(v53);
      }

      v24 = a1 + v18 - v19;
LABEL_13:
      v42 = v24;
      goto LABEL_14;
    }
  }

  v54.origin.x = a5;
  v54.origin.y = a6;
  v54.size.width = a7;
  v54.size.height = a8;
  v20 = CGRectGetMinX(v54);
  v55.origin.x = a1;
  v55.origin.y = a2;
  v55.size.width = a3;
  v55.size.height = a4;
  if (v20 < CGRectGetMinX(v55))
  {
    v56.origin.x = a5;
    v56.origin.y = a6;
    v56.size.width = a7;
    v56.size.height = a8;
    v21 = CGRectGetMaxX(v56);
    v57.origin.x = a1;
    v57.origin.y = a2;
    v57.size.width = a3;
    v57.size.height = a4;
    if (v21 < CGRectGetMaxX(v57))
    {
      v58.origin.x = a1;
      v58.origin.y = a2;
      v58.size.width = a3;
      v58.size.height = a4;
      v35 = CGRectGetMinX(v58);
      v59.origin.x = a5;
      v59.origin.y = a6;
      v59.size.width = a7;
      v59.size.height = a8;
      v36 = v35 - CGRectGetMinX(v59);
      v60.origin.x = a1;
      v60.origin.y = a2;
      v60.size.width = a3;
      v60.size.height = a4;
      v31 = CGRectGetMaxX(v60);
      v61.origin.x = a5;
      v61.origin.y = a6;
      v61.size.width = a7;
      v61.size.height = a8;
      if (v36 >= v31 - CGRectGetMaxX(v61))
      {
        v66.origin.x = a1;
        v66.origin.y = a2;
        v66.size.width = a3;
        v66.size.height = a4;
        v22 = CGRectGetMaxX(v66);
        v67.origin.x = a5;
        v67.origin.y = a6;
        v67.size.width = a7;
        v67.size.height = a8;
        v23 = CGRectGetMaxX(v67);
      }

      else
      {
        v62.origin.x = a1;
        v62.origin.y = a2;
        v62.size.width = a3;
        v62.size.height = a4;
        v22 = CGRectGetMinX(v62);
        v63.origin.x = a5;
        v63.origin.y = a6;
        v63.size.width = a7;
        v63.size.height = a8;
        v23 = CGRectGetMinX(v63);
      }

      v24 = a1 - (v22 - v23);
      goto LABEL_13;
    }
  }

LABEL_14:
  v68.origin.x = a5;
  v68.origin.y = a6;
  v68.size.width = a7;
  v68.size.height = a8;
  MaxY = CGRectGetMaxY(v68);
  v69.origin.x = a1;
  v69.origin.y = a2;
  v69.size.width = a3;
  v69.size.height = a4;
  if (MaxY <= CGRectGetMaxY(v69) || (v70.origin.x = a5, v70.origin.y = a6, v70.size.width = a7, v70.size.height = a8, v26 = CGRectGetMinY(v70), v71.origin.x = a1, v71.origin.y = a2, v71.size.width = a3, v71.size.height = a4, v26 <= CGRectGetMinY(v71)))
  {
    v78.origin.x = a5;
    v78.origin.y = a6;
    v78.size.width = a7;
    v78.size.height = a8;
    MinY = CGRectGetMinY(v78);
    v79.origin.x = a1;
    v79.origin.y = a2;
    v79.size.width = a3;
    v79.size.height = a4;
    if (MinY < CGRectGetMinY(v79))
    {
      v80.origin.x = a5;
      v80.origin.y = a6;
      v80.size.width = a7;
      v80.size.height = a8;
      v29 = CGRectGetMaxY(v80);
      v81.origin.x = a1;
      v81.origin.y = a2;
      v81.size.width = a3;
      v81.size.height = a4;
      if (v29 < CGRectGetMaxY(v81))
      {
        v82.origin.x = a1;
        v82.origin.y = a2;
        v82.size.width = a3;
        v82.size.height = a4;
        v39 = CGRectGetMinY(v82);
        v83.origin.x = a5;
        v83.origin.y = a6;
        v83.size.width = a7;
        v83.size.height = a8;
        v40 = v39 - CGRectGetMinY(v83);
        v84.origin.x = a1;
        v84.origin.y = a2;
        v84.size.width = a3;
        v84.size.height = a4;
        v32 = CGRectGetMaxY(v84);
        v85.origin.x = a5;
        v85.origin.y = a6;
        v85.size.width = a7;
        v85.size.height = a8;
        if (v40 >= v32 - CGRectGetMaxY(v85))
        {
          v90.origin.x = a1;
          v90.origin.y = a2;
          v90.size.width = a3;
          v90.size.height = a4;
          CGRectGetMaxY(v90);
          v91.origin.x = a5;
          v91.origin.y = a6;
          v91.size.width = a7;
          v91.size.height = a8;
          CGRectGetMaxY(v91);
        }

        else
        {
          v86.origin.x = a1;
          v86.origin.y = a2;
          v86.size.width = a3;
          v86.size.height = a4;
          CGRectGetMinY(v86);
          v87.origin.x = a5;
          v87.origin.y = a6;
          v87.size.width = a7;
          v87.size.height = a8;
          CGRectGetMinY(v87);
        }
      }
    }
  }

  else
  {
    v72.origin.x = a5;
    v72.origin.y = a6;
    v72.size.width = a7;
    v72.size.height = a8;
    v37 = CGRectGetMaxY(v72);
    v73.origin.x = a1;
    v73.origin.y = a2;
    v73.size.width = a3;
    v73.size.height = a4;
    v38 = v37 - CGRectGetMaxY(v73);
    v74.origin.x = a5;
    v74.origin.y = a6;
    v74.size.width = a7;
    v74.size.height = a8;
    v27 = CGRectGetMinY(v74);
    v75.origin.x = a1;
    v75.origin.y = a2;
    v75.size.width = a3;
    v75.size.height = a4;
    if (v38 >= v27 - CGRectGetMinY(v75))
    {
      v88.origin.x = a5;
      v88.origin.y = a6;
      v88.size.width = a7;
      v88.size.height = a8;
      CGRectGetMinY(v88);
      v89.origin.x = a1;
      v89.origin.y = a2;
      v89.size.width = a3;
      v89.size.height = a4;
      CGRectGetMinY(v89);
    }

    else
    {
      v76.origin.x = a5;
      v76.origin.y = a6;
      v76.size.width = a7;
      v76.size.height = a8;
      CGRectGetMaxY(v76);
      v77.origin.x = a1;
      v77.origin.y = a2;
      v77.size.width = a3;
      v77.size.height = a4;
      CGRectGetMaxY(v77);
    }
  }

  return v42;
}

double TSDOriginRotate(double *a1, double a2, double a3)
{
  v5 = __sincos_stret(a3);
  result = v5.__sinval * a2;
  *a1 = v5.__cosval * a2;
  a1[1] = v5.__sinval * a2;
  return result;
}

double TSDNiceAngleFromDelta(long double a1, long double a2)
{
  if (a2 != 0.0)
  {
    return atan2(a2, a1);
  }

  result = 3.14159265;
  if (a1 >= 0.0)
  {
    return 0.0;
  }

  return result;
}

double TSDDeltaFromAngle(double a1)
{
  if (a1 == 0.0)
  {
    return 1.0;
  }

  return __sincos_stret(a1).__cosval;
}

double TSDRotatePoint90Degrees(int a1, double a2, double a3)
{
  if (a1)
  {
    return -a3;
  }

  else
  {
    return a3;
  }
}

double TSDNormalizeAngleAboutZeroInRadians(double a1)
{
  v1 = fmod(a1 + 3.14159265, 6.28318531);
  if (v1 < 0.0)
  {
    v1 = v1 + 6.28318531;
  }

  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return v1 + -3.14159265;
}

void TSDRectFromNormalizedSubrect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v12.origin.x = a5;
  v12.origin.y = a6;
  v12.size.width = a7;
  v12.size.height = a8;
  CGRectGetMaxX(v12);
  v13.origin.x = a5;
  v13.origin.y = a6;
  v13.size.width = a7;
  v13.size.height = a8;
  CGRectGetMaxY(v13);
}

double TSDRectSubtractingRect(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8)
{
  v11 = a1;
  v42 = CGRectIntersection(*&a1, *&a5);
  x = v42.origin.x;
  y = v42.origin.y;
  width = v42.size.width;
  height = v42.size.height;
  if (!CGRectIsNull(v42))
  {
    v43.origin.x = x;
    v43.origin.y = y;
    v43.size.width = width;
    v43.size.height = height;
    MaxY = CGRectGetMaxY(v43);
    v44.origin.x = v11;
    v44.origin.y = a2;
    v44.size.width = a3;
    v44.size.height = a4;
    MinY = CGRectGetMinY(v44);
    v45.origin.x = v11;
    v45.origin.y = a2;
    v45.size.width = a3;
    v45.size.height = a4;
    v37 = CGRectGetMaxY(v45);
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v38 = v37 - CGRectGetMaxY(v46);
    v47.origin.x = v11;
    v47.origin.y = a2;
    v47.size.width = a3;
    v47.size.height = a4;
    v33 = v38 * CGRectGetWidth(v47);
    v36 = height;
    v39 = x;
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = height;
    v16 = CGRectGetMinY(v48);
    v49.origin.x = v11;
    v49.origin.y = a2;
    v49.size.width = a3;
    v49.size.height = a4;
    v17 = v16 - CGRectGetMinY(v49);
    v50.origin.x = v11;
    v50.origin.y = a2;
    v50.size.width = a3;
    v50.size.height = a4;
    v18 = v17 * CGRectGetWidth(v50);
    v19 = v33;
    if (v18 <= v33)
    {
      v35 = MaxY - MinY;
      v21 = CGRectMinYEdge;
    }

    else
    {
      v51.origin.x = v11;
      v51.origin.y = a2;
      v51.size.width = a3;
      v51.size.height = a4;
      v20 = CGRectGetMaxY(v51);
      v52.size.height = v36;
      v52.origin.x = v39;
      v52.origin.y = y;
      v52.size.width = width;
      v35 = v20 - CGRectGetMinY(v52);
      v21 = CGRectMaxYEdge;
      v19 = v18;
    }

    v53.origin.x = v11;
    v53.origin.y = a2;
    v53.size.width = a3;
    v53.size.height = a4;
    MaxX = CGRectGetMaxX(v53);
    v54.size.height = v36;
    v54.origin.x = v39;
    v54.origin.y = y;
    v54.size.width = width;
    v23 = MaxX - CGRectGetMaxX(v54);
    v55.origin.x = v11;
    v55.origin.y = a2;
    v55.size.width = a3;
    v55.size.height = a4;
    v24 = v23 * CGRectGetHeight(v55);
    if (v24 > v19)
    {
      v56.size.height = v36;
      v56.origin.x = v39;
      v56.origin.y = y;
      v56.size.width = width;
      v25 = CGRectGetMaxX(v56);
      v57.origin.x = v11;
      v57.origin.y = a2;
      v57.size.width = a3;
      v57.size.height = a4;
      v21 = CGRectMinXEdge;
      v35 = v25 - CGRectGetMinX(v57);
      v19 = v24;
    }

    v58.size.height = v36;
    v58.origin.x = v39;
    v58.origin.y = y;
    v58.size.width = width;
    MinX = CGRectGetMinX(v58);
    v59.origin.x = v11;
    v59.origin.y = a2;
    v59.size.width = a3;
    v59.size.height = a4;
    v27 = MinX - CGRectGetMinX(v59);
    v60.origin.x = v11;
    v60.origin.y = a2;
    v60.size.width = a3;
    v60.size.height = a4;
    v28 = CGRectGetHeight(v60);
    v29 = v35;
    if (v27 * v28 > v19)
    {
      v61.origin.x = v11;
      v61.origin.y = a2;
      v61.size.width = a3;
      v61.size.height = a4;
      v30 = CGRectGetMaxX(v61);
      v62.size.height = v36;
      v62.origin.x = v39;
      v62.origin.y = y;
      v62.size.width = width;
      v29 = v30 - CGRectGetMinX(v62);
      v21 = CGRectMaxXEdge;
    }

    memset(&remainder, 0, sizeof(remainder));
    memset(&slice, 0, sizeof(slice));
    v63.origin.x = v11;
    v63.origin.y = a2;
    v63.size.width = a3;
    v63.size.height = a4;
    CGRectDivide(v63, &slice, &remainder, v29, v21);
    return remainder.origin.x;
  }

  return v11;
}

double TSDSizeWithAspectRatio(int a1, double result, double a3, double a4, double a5)
{
  v5 = result == a4 && a3 == a5;
  if (!v5 && a4 != 0.0 && a5 != 0.0 && a4 != 3.40282347e38 && a5 != 3.40282347e38)
  {
    if (a1)
    {
      v6 = sqrt(a5 * a5 + a4 * a4);
      return a4 / v6 * (a3 * (a5 / v6) + result * (a4 / v6));
    }

    else if (vabdd_f64(result, a4) < 0.01)
    {
      return a3 * a4 / a5;
    }
  }

  return result;
}

double TSDSizeExpandedToMatchAspectRatio(double a1, double a2, double a3, double a4)
{
  v4 = a1 != a3;
  if (a2 != a4)
  {
    v4 = 1;
  }

  v5 = a3 <= 0.0 || !v4;
  if (v5 || a4 <= 0.0)
  {
    goto LABEL_12;
  }

  v6 = a3 / a4;
  if (v6 <= a1 / a2)
  {
    if (v6 < a1 / a2)
    {
      v7 = a1;
      v8 = a1 / v6;
      goto LABEL_13;
    }

LABEL_12:
    v8 = a2;
    v7 = a1;
    goto LABEL_13;
  }

  v7 = a2 * v6;
  v8 = a2;
LABEL_13:
  if (v7 < a1 || v8 < a2)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGSize TSDSizeExpandedToMatchAspectRatio(CGSize, CGSize)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGeometry.m"), 992, @"TSDSizeExpandedToMatchAspectRatio() actually shrank the size"}];
  }

  return v7;
}

double TSDScaleSizeWithinSize(double a1, double a2, double a3, double a4)
{
  if (a1 / a2 < a3 / a4)
  {
    return a1 * (a4 / a2);
  }

  return a3;
}

double TSDShrinkSizeToFitInSize(double result, double a2, double a3, double a4)
{
  if (result <= a3)
  {
    v4 = a2 == a4;
    v5 = a2 < a4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  if (!v5 && !v4)
  {
    if (result / a2 <= a3 / a4)
    {
      if (result / a2 < a3 / a4)
      {
        return result * (a4 / a2);
      }

      else
      {
        return a3;
      }
    }

    else
    {
      return a3;
    }
  }

  return result;
}

double TSDFitOrFillSizeInSize(int a1, double a2, double a3, double a4, double a5)
{
  v5 = a4 / a2;
  v6 = a5 / a3;
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v5 >= v6)
  {
    v5 = v6;
  }

  if (a1)
  {
    v5 = v7;
  }

  return a2 * v5;
}

double TSDFitOrFillSizeInRect(int a1, double a2, double a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v11 = a6 / a2;
  if (a6 / a2 <= a7 / a3)
  {
    v12 = a7 / a3;
  }

  else
  {
    v12 = a6 / a2;
  }

  if (a6 / a2 >= a7 / a3)
  {
    v11 = a7 / a3;
  }

  if (a1)
  {
    v13 = v12;
  }

  else
  {
    v13 = v11;
  }

  return TSDCenterRectOverRect(0.0, 0.0, a2 * v13, a3 * v13, a4, a5, a6, a7);
}

void TSDScaleRectAroundPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7)
{
  memset(&v17, 0, sizeof(v17));
  CGAffineTransformMakeTranslation(&v17, -a5, -a6);
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeScale(&v16, a7, a7);
  memset(&v15, 0, sizeof(v15));
  t1 = v17;
  v12 = v16;
  CGAffineTransformConcat(&v14, &t1, &v12);
  v12 = v17;
  CGAffineTransformInvert(&t1, &v12);
  CGAffineTransformConcat(&v15, &v14, &t1);
  v14 = v15;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectApplyAffineTransform(v18, &v14);
}

void TSDVisibleUnscaledRectForNewScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, CGFloat a7, double a8)
{
  memset(&v19, 0, sizeof(v19));
  CGAffineTransformMakeScale(&v19, a7, a7);
  v17 = v19;
  memset(&v18, 0, sizeof(v18));
  CGAffineTransformInvert(&v18, &v17);
  v17 = v18;
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  v21 = CGRectApplyAffineTransform(v20, &v17);
  v14 = vaddq_f64(*&v18.tx, vmlaq_n_f64(vmulq_n_f64(*&v18.c, a6), *&v18.a, a5));
  TSDScaleRectAroundPoint(v21.origin.x, v21.origin.y, v21.size.width, v21.size.height, v14.f64[0], v14.f64[1], a7 / a8);
}

double TSDRectByExpandingBoundingRectToContentRect(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, double a11, double a12)
{
  v25 = a1 + a5 * a3;
  v36.origin.x = a5;
  v36.origin.y = a6;
  v36.size.width = a7;
  v36.size.height = a8;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMaxY(v37);
  v26 = a1 + MaxX * a3;
  if (v25 >= v26)
  {
    v27 = a1 + MaxX * a3;
  }

  else
  {
    v27 = v25;
  }

  if (v25 > v26)
  {
    v26 = v25;
  }

  v35 = v27;
  v28 = v26 - v27;
  v29 = -a9 / a11 * (v26 - v27);
  v38.origin.x = -a9 / a11;
  v38.origin.y = -a10 / a12;
  v38.size.width = 1.0 / a11;
  v38.size.height = 1.0 / a12;
  v30 = CGRectGetMaxX(v38);
  v39.origin.x = -a9 / a11;
  v39.origin.y = -a10 / a12;
  v39.size.width = 1.0 / a11;
  v39.size.height = 1.0 / a12;
  CGRectGetMaxY(v39);
  if (v29 >= v30 * v28)
  {
    v31 = v30 * v28;
  }

  else
  {
    v31 = v29;
  }

  return v35 + v31;
}

double TSDAliasRound(double a1)
{
  v1 = fabs(a1);
  v2 = v1 - floor(v1);
  if ((a1 >= 0.0 || v2 > 0.49) && (a1 < 0.0 || v2 < 0.49))
  {
    return floor(a1);
  }

  else
  {
    return ceil(a1);
  }
}

double TSDAliasRoundedPoint(double a1)
{
  v1 = fabs(a1);
  v2 = v1 - floor(v1);
  if ((a1 >= 0.0 || v2 > 0.49) && (a1 < 0.0 || v2 < 0.49))
  {
    return floor(a1);
  }

  else
  {
    return ceil(a1);
  }
}

double TSDRoundedPoint()
{
  TSURound();
  v1 = v0;
  TSURound();
  return v1;
}

double TSDRoundedPointForView(double a1, double a2)
{
  TSUScreenScale();

  return TSDRoundedPointForScale(a1, a2, v4);
}

double TSDRoundedPointForScale(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGPoint TSDRoundedPointForScale(CGPoint, CGFloat)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGeometry.m"), 1150, @"cannot give scale = 0 for TSDRoundedPointForScale!"}];
  }

  else
  {
    TSURound();
    v8 = v7;
    TSURound();
    return 1.0 / a3 * v8;
  }

  return a1;
}

double TSDRoundedSize()
{
  TSURound();
  v1 = v0;
  TSURound();
  return v1;
}

double TSDRoundedSizeForScale(double a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGSize TSDRoundedSizeForScale(CGSize, CGFloat)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGeometry.m"), 1172, @"cannot give scale = 0 for TSDRoundedSizeForScale!"}];
  }

  else
  {
    TSURound();
    v8 = v7;
    TSURound();
    return 1.0 / a3 * v8;
  }

  return a1;
}

double TSDRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 == 0.0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSDRoundedRectForScale(CGRect, CGFloat)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGeometry.m"), 1221, @"cannot give scale = 0 for TSDRoundedRectForScale!"}];
  }

  else if (!CGRectIsNull(*&a1))
  {
    v24.origin.x = TSDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    CGRectGetMinX(v24);
    TSURound();
    v17 = v16;
    v25.origin.x = x;
    v25.origin.y = y;
    v25.size.width = width;
    v25.size.height = height;
    CGRectGetMinY(v25);
    TSURound();
    v19 = v18;
    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    CGRectGetMaxX(v26);
    TSURound();
    v21 = v20 - v17;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    CGRectGetMaxY(v27);
    TSURound();
    return TSDMultiplyRectScalar(v17, v19, v21, v22 - v19, 1.0 / a5);
  }

  return v8;
}

double TSDRoundedRectForView(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  TSUScreenScale();

  return TSDRoundedRectForScale(a1, a2, a3, a4, v8);
}

double TSDRoundedRectForMainScreen(double a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  TSUScreenScale();

  return TSDRoundedRectForScale(a1, a2, a3, a4, v8);
}

double TSDAliasRoundedRectForScale(double a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  v8 = a1;
  if (a5 == 0.0)
  {
    v9 = [MEMORY[0x277D6C290] currentHandler];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGRect TSDAliasRoundedRectForScale(CGRect, CGFloat)"}];
    [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGeometry.m"), 1247, @"cannot give scale = 0 for TSDRoundedRectForScale!"}];
  }

  else if (!CGRectIsNull(*&a1))
  {
    v34.origin.x = TSDMultiplyRectScalar(v8, a2, a3, a4, a5);
    x = v34.origin.x;
    y = v34.origin.y;
    width = v34.size.width;
    height = v34.size.height;
    MinX = CGRectGetMinX(v34);
    v17 = fabs(MinX);
    v18 = v17 - floor(v17);
    if ((MinX >= 0.0 || v18 > 0.49) && (MinX < 0.0 || v18 < 0.49))
    {
      v19 = floor(MinX);
    }

    else
    {
      v19 = ceil(MinX);
    }

    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    MinY = CGRectGetMinY(v35);
    v21 = fabs(MinY);
    v22 = v21 - floor(v21);
    if ((MinY >= 0.0 || v22 > 0.49) && (MinY < 0.0 || v22 < 0.49))
    {
      v23 = floor(MinY);
    }

    else
    {
      v23 = ceil(MinY);
    }

    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MaxX = CGRectGetMaxX(v36);
    v25 = fabs(MaxX);
    v26 = v25 - floor(v25);
    if ((MaxX >= 0.0 || v26 > 0.49) && (MaxX < 0.0 || v26 < 0.49))
    {
      v27 = floor(MaxX);
    }

    else
    {
      v27 = ceil(MaxX);
    }

    v28 = v27 - v19;
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    MaxY = CGRectGetMaxY(v37);
    v30 = fabs(MaxY);
    v31 = v30 - floor(v30);
    if ((MaxY >= 0.0 || v31 > 0.49) && (MaxY < 0.0 || v31 < 0.49))
    {
      v32 = floor(MaxY);
    }

    else
    {
      v32 = ceil(MaxY);
    }

    return TSDMultiplyRectScalar(v19, v23, v28, v32 - v23, 1.0 / a5);
  }

  return v8;
}

uint64_t TSDRoundedMinX(double a1, double a2, double a3, double a4)
{
  CGRectGetMinX(*&a1);

  return TSURound();
}

uint64_t TSDRoundedMidX(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  TSURound();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxX(v10);
  TSURound();

  return TSURound();
}

uint64_t TSDRoundedMaxX(double a1, double a2, double a3, double a4)
{
  CGRectGetMaxX(*&a1);

  return TSURound();
}

uint64_t TSDRoundedMinY(double a1, double a2, double a3, double a4)
{
  CGRectGetMinY(*&a1);

  return TSURound();
}

uint64_t TSDRoundedMidY(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  TSURound();
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  TSURound();

  return TSURound();
}

uint64_t TSDRoundedMaxY(double a1, double a2, double a3, double a4)
{
  CGRectGetMaxY(*&a1);

  return TSURound();
}

double TSDFloorForMainScreen()
{
  TSUScreenScale();
  v1 = v0;
  TSURound();
  return v2 / v1;
}

double TSDCeilForMainScreen(double a1)
{
  TSUScreenScale();
  v3 = v2 * a1;
  return ceilf(v3) / v2;
}

void p_evaluateGradient(void *a1, double *a2, void *a3)
{
  v8 = [a1 newColorAtFraction:*a2];
  [v8 redComponent];
  *a3 = v4;
  [v8 greenComponent];
  a3[1] = v5;
  [v8 blueComponent];
  a3[2] = v6;
  [v8 alphaComponent];
  a3[3] = v7;
}

uint64_t gradientStopCompare(void *a1, void *a2)
{
  if (!a1 || !a2)
  {
    v4 = [MEMORY[0x277D6C290] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult gradientStopCompare(id, id, void *)"}];
    [v4 handleFailureInFunction:v5 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 1723, @"Passing in nil is invalid."}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v6 = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"NSComparisonResult gradientStopCompare(id, id, void *)"}];
    [v6 handleFailureInFunction:v7 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDGradient.m"), 1724, @"Non-TSDGradients in array."}];
  }

  [a1 fraction];
  v9 = v8;
  [a2 fraction];
  if (v9 >= v10)
  {
    return v10 < v9;
  }

  else
  {
    return -1;
  }
}

void sub_26C7C0750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CGPath *TSDCreatePathByComputingArc(int a1, int a2, double a3, double a4, double a5, double a6, long double a7, double a8, double a9)
{
  v16 = (a3 - a8) * 0.5;
  v17 = (a4 - a9) * 0.5;
  angle = fmod(a7, 360.0) * 3.14159265 / 180.0;
  v18 = __sincos_stret(angle);
  v19 = v18.__sinval * v17 + v18.__cosval * v16;
  v20 = v18.__cosval * v17 - v18.__sinval * v16;
  v21 = fabs(a5);
  v22 = fabs(a6);
  v23 = a5 * a5;
  v24 = a6 * a6;
  v25 = v19 * v19 / (a5 * a5) + v20 * v20 / (a6 * a6);
  if (v25 > 1.0)
  {
    v26 = sqrt(v25);
    v21 = v21 * v26;
    v22 = v22 * v26;
    v23 = v21 * v21;
    v24 = v22 * v22;
  }

  v27 = (v23 * v24 - v23 * (v20 * v20) - v24 * (v19 * v19)) / (v19 * v19 * v24 + v23 * (v20 * v20));
  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  v28 = sqrt(v27);
  if (a1 == a2)
  {
    v28 = -v28;
  }

  v29 = v20 * v21 / v22 * v28;
  v30 = -(v22 * v19) / v21 * v28;
  v42 = (a4 + a9) * 0.5 + v18.__cosval * v30 + v18.__sinval * v29;
  v44 = (a3 + a8) * 0.5 + v30 * -v18.__sinval + v18.__cosval * v29;
  v31 = (v20 - v30) / v22;
  v32 = (-v19 - v29) / v21;
  v33 = (-v20 - v30) / v22;
  v34 = acos((v19 - v29) / v21 / sqrt(v31 * v31 + (v19 - v29) / v21 * ((v19 - v29) / v21)));
  if (v31 < 0.0)
  {
    v34 = -v34;
  }

  v35 = v34 * 180.0 / 3.14159265;
  v36 = acos(v32 / sqrt(v33 * v33 + v32 * v32));
  if (v33 < 0.0)
  {
    v36 = -v36;
  }

  v37 = fmod(v36 * 180.0 / 3.14159265, 360.0);
  v38 = fmod(v35, 360.0);
  Mutable = CGPathCreateMutable();
  v40 = *(MEMORY[0x277CBF2C0] + 16);
  *&m.a = *MEMORY[0x277CBF2C0];
  *&m.c = v40;
  *&m.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&v47.a = *&m.a;
  *&v47.c = v40;
  *&v47.tx = *&m.tx;
  CGAffineTransformTranslate(&m, &v47, v44, v42);
  v46 = m;
  CGAffineTransformRotate(&v47, &v46, angle);
  m = v47;
  v46 = v47;
  CGAffineTransformScale(&v47, &v46, 1.0, v22 / v21);
  m = v47;
  v46 = v47;
  CGAffineTransformTranslate(&v47, &v46, -v44, -v42);
  m = v47;
  CGPathAddArc(Mutable, &m, v44, v42, v21, v38 * 3.14159265 / 180.0, v37 * 3.14159265 / 180.0, a2 != 1);
  return Mutable;
}

CGPath *TSDCreatePathByAppendingPathFromElementToElement(const CGPath *a1, const CGPath *a2, uint64_t a3, uint64_t a4)
{
  x[6] = *MEMORY[0x277D85DE8];
  MutableCopy = CGPathCreateMutableCopy(a1);
  if (a3 < a4)
  {
    do
    {
      ElementTypeAtIndexAndAssociatedPoints = TSDPathGetElementTypeAtIndexAndAssociatedPoints(a2, a3, x);
      if (ElementTypeAtIndexAndAssociatedPoints > 2)
      {
        if (ElementTypeAtIndexAndAssociatedPoints == 3)
        {
          CGPathAddCurveToPoint(MutableCopy, 0, x[0], x[1], x[2], x[3], x[4], x[5]);
        }

        else if (ElementTypeAtIndexAndAssociatedPoints == 4)
        {
          CGPathCloseSubpath(MutableCopy);
        }
      }

      else if (ElementTypeAtIndexAndAssociatedPoints)
      {
        if (ElementTypeAtIndexAndAssociatedPoints == 1)
        {
          CGPathAddLineToPoint(MutableCopy, 0, x[0], x[0]);
        }
      }

      else
      {
        CGPathMoveToPoint(MutableCopy, 0, x[0], x[1]);
      }

      ++a3;
    }

    while (a4 != a3);
  }

  return MutableCopy;
}

CGPath *TSDCreateTransformedPath(const CGPath *a1, const CGAffineTransform *a2)
{
  Mutable = CGPathCreateMutable();
  CGPathAddPath(Mutable, a2, a1);
  return Mutable;
}

void TSDCreateAADefeatedRectPoints(int8x16_t a1, double a2, int8x16_t a3, double a4, double a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a9 >= 1)
  {
    v9 = a9;
    *a1.i64 = a5 * a6;
    *a1.i32 = a5 * a6;
    *a3.i32 = *a1.i32 + (truncf(*a1.i32 * 0.5) * -2.0);
    v10.i64[0] = 0x8000000080000000;
    v10.i64[1] = 0x8000000080000000;
    v11 = (*vbslq_s8(v10, a3, a1).i32 * 0.5);
    v12 = (a8 + 8);
    do
    {
      *(v12 - 1) = TSDRoundedPoint() + v11;
      *v12 = v13 + v11;
      v12 += 2;
      --v9;
    }

    while (v9);
  }
}

void TSDCreateAADefeatedRect(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v18[4] = *MEMORY[0x277D85DE8];
  v18[0] = CGRectGetMinX(*&a2);
  v19.origin.x = a2;
  v19.origin.y = a3;
  v19.size.width = a4;
  v19.size.height = a5;
  v18[1] = CGRectGetMinY(v19);
  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  v18[2] = CGRectGetMaxX(v20);
  v21.origin.x = a2;
  v21.origin.y = a3;
  v21.size.width = a4;
  v21.size.height = a5;
  *v14.i64 = CGRectGetMaxY(v21);
  v18[3] = v14.i64[0];
  TSDCreateAADefeatedRectPoints(v14, v15, v16, v17, a6, a7, a1, v18, 2);
}

CGPath *TSDCreateAADefeatedRectPath(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v23[0] = CGRectGetMinX(*&a2);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  v23[1] = CGRectGetMinY(v24);
  v25.origin.x = a2;
  v25.origin.y = a3;
  v25.size.width = a4;
  v25.size.height = a5;
  v23[2] = CGRectGetMaxX(v25);
  v26.origin.x = a2;
  v26.origin.y = a3;
  v26.size.width = a4;
  v26.size.height = a5;
  v23[3] = CGRectGetMinY(v26);
  v27.origin.x = a2;
  v27.origin.y = a3;
  v27.size.width = a4;
  v27.size.height = a5;
  v23[4] = CGRectGetMaxX(v27);
  v28.origin.x = a2;
  v28.origin.y = a3;
  v28.size.width = a4;
  v28.size.height = a5;
  v23[5] = CGRectGetMaxY(v28);
  v29.origin.x = a2;
  v29.origin.y = a3;
  v29.size.width = a4;
  v29.size.height = a5;
  v23[6] = CGRectGetMinX(v29);
  v30.origin.x = a2;
  v30.origin.y = a3;
  v30.size.width = a4;
  v30.size.height = a5;
  *v14.i64 = CGRectGetMaxY(v30);
  v23[7] = v14.i64[0];
  TSDCreateAADefeatedRectPoints(v14, v15, v16, v17, a6, a7, a1, v23, 4);
  Mutable = CGPathCreateMutable();
  for (i = 0; i != 8; i += 2)
  {
    v20 = *&v23[i];
    v21 = *&v23[i + 1];
    if (i * 8)
    {
      CGPathAddLineToPoint(Mutable, 0, v20, v21);
    }

    else
    {
      CGPathMoveToPoint(Mutable, 0, v20, v21);
    }
  }

  CGPathCloseSubpath(Mutable);
  return Mutable;
}

void TSDPathBoundsIncludingStroke(CGPathRef path, void *a2)
{
  if (a2 && [a2 shouldRender])
  {
    if ([a2 isFrame])
    {
      BoundingBox = CGPathGetBoundingBox(path);
      [a2 coverageRect:{BoundingBox.origin.x, BoundingBox.origin.y, BoundingBox.size.width, BoundingBox.size.height}];
    }

    else
    {
      [a2 width];
      v5 = v4;
      [a2 miterLimit];
      TSDPathBoundsIncludingStrokeWithParameters(path, [a2 cap], objc_msgSend(a2, "join"), v5, v6);
    }
  }

  else
  {
    CGPathGetBoundingBox(path);
  }
}

double TSDPathBoundsIncludingStrokeWithParameters(const CGPath *a1, int a2, int a3, double a4, double a5)
{
  BoundingBox = CGPathGetBoundingBox(a1);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if (!CGPathIsEmpty(a1))
  {
    v22.origin.x = x;
    v22.origin.y = y;
    v22.size.width = width;
    v22.size.height = height;
    v23 = CGRectInset(v22, -(a4 * 0.5), -(a4 * 0.5));
    x = v23.origin.x;
    v14 = v23.origin.y;
    v15 = v23.size.width;
    v16 = v23.size.height;
    if (!a3)
    {
      memset(&v20[40], 0, 200);
      *&v20[24] = *MEMORY[0x277CBF348];
      *&v20[8] = *&v20[24];
      v19 = a4 * 0.5;
      *v20 = a5;
      info = v23;
      CGPathApply(a1, &info, TSDPathCornerBoundsApplier);
      v14 = info.origin.y;
      x = info.origin.x;
      v16 = info.size.height;
      v15 = info.size.width;
    }

    if (a2 == 2)
    {
      memset(&v20[32], 0, 112);
      *v20 = *MEMORY[0x277CBF348];
      *&v20[16] = *v20;
      info.size.height = v16;
      v19 = a4 * 0.5;
      info.origin.x = x;
      info.origin.y = v14;
      info.size.width = v15;
      CGPathApply(a1, &info, TSDPathEndBoundsApplier);
      TSDPathEndBoundsApplierFinishSubpath(&info);
      return info.origin.x;
    }
  }

  return x;
}

void TSDPathCornerBoundsApplier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v3 == 4)
    {
      if (*(a1 + 80))
      {
        if (*(a1 + 64) != *(a1 + 48) || *(a1 + 72) != *(a1 + 56))
        {
          v12 = a1 + 48;
          v11 = 1;
          TSDPathCornerBoundsApplierProcessSegment(a1, &v11);
        }

        v10 = *(a1 + 224);
        v12 = a1 + 232;
        v11 = v10;
        TSDPathCornerBoundsApplierProcessSegment(a1, &v11);
      }

      *(a1 + 80) = 0;
      v8 = *(a1 + 48);
    }

    else
    {
      if (v3)
      {
        return;
      }

      *(a1 + 80) = 0;
      v7 = *(a2 + 8);
      *(a1 + 48) = *v7;
      v8 = *v7;
    }

    *(a1 + 64) = v8;
  }

  else
  {
    if (!*(a1 + 80))
    {
      v4 = 0;
      *(a1 + 224) = v3;
      v5 = kPointCountsByElementType[v3];
      if (v5 <= 1)
      {
        v5 = 1;
      }

      v6 = 16 * v5;
      do
      {
        *(a1 + 232 + v4) = *(*(a2 + 8) + v4);
        v4 += 16;
      }

      while (v6 != v4);
    }

    TSDPathCornerBoundsApplierProcessSegment(a1, a2);
  }
}

void TSDPathEndBoundsApplier(uint64_t a1, int *a2)
{
  v4 = *a2;
  if ((*a2 - 1) < 3)
  {
    if ((*(a1 + 72) & 1) == 0)
    {
      *(a1 + 72) = 1;
      *(a1 + 76) = v4;
      *(a1 + 80) = *(a1 + 56);
      v5 = *a2;
      if (v5 == 4)
      {
        v4 = 4;
      }

      else
      {
        v8 = 0;
        v9 = kPointCountsByElementType[v5];
        if (v9 <= 1)
        {
          v9 = 1;
        }

        v10 = 16 * v9;
        do
        {
          *(a1 + 96 + v8) = *(*(a2 + 1) + v8);
          v8 += 16;
        }

        while (v10 != v8);
        v4 = *a2;
      }
    }

    *(a1 + 128) = v4;
    *(a1 + 136) = *(a1 + 56);
    v11 = *a2;
    v12 = kPointCountsByElementType[v11];
    if (v11 != 4)
    {
      v13 = 0;
      if (v12 <= 1)
      {
        v12 = 1;
      }

      v14 = 16 * v12;
      do
      {
        *(a1 + 152 + v13) = *(*(a2 + 1) + v13);
        v13 += 16;
      }

      while (v14 != v13);
      v12 = kPointCountsByElementType[*a2];
    }

    v7 = *(*(a2 + 1) + 16 * v12 - 16);
    goto LABEL_21;
  }

  if (v4 == 4)
  {
    *(a1 + 72) = 0;
    v7 = *(a1 + 40);
LABEL_21:
    *(a1 + 56) = v7;
    return;
  }

  if (!v4)
  {
    TSDPathEndBoundsApplierFinishSubpath(a1);
    *(a1 + 72) = 0;
    v6 = *(a2 + 1);
    *(a1 + 56) = *v6;
    *(a1 + 40) = *v6;
  }
}

void TSDPathEndBoundsApplierFinishSubpath(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 80);
    v3 = *(a1 + 88);
    v4 = gradientAtTFromTypeAndPoints(*(a1 + 76), (a1 + 80));
    v6 = TSDMultiplyPointScalar(v4, v5, *(a1 + 32));
    v8 = v7;
    v9 = TSDSubtractPoints(v2, v3, v6);
    v11 = v10;
    v12 = TSDRotatePoint90Degrees(1, v6, v8);
    v13 = TSDAddPoints(v9, v11, v12);
    v15 = TSDGrowRectToPoint(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v13, v14);
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = TSDSubtractPoints(v9, v11, v12);
    *a1 = TSDGrowRectToPoint(v15, v17, v19, v21, v22, v23);
    *(a1 + 8) = v24;
    *(a1 + 16) = v25;
    *(a1 + 24) = v26;
    v27 = *(a1 + 128);
    v28 = (a1 + 136 + 16 * kPointCountsByElementType[v27]);
    v29 = *v28;
    v30 = v28[1];
    v31 = gradientAtTFromTypeAndPoints(v27, (a1 + 136));
    v33 = TSDMultiplyPointScalar(v31, v32, *(a1 + 32));
    v35 = v34;
    v36 = TSDAddPoints(v29, v30, v33);
    v38 = v37;
    v39 = TSDRotatePoint90Degrees(1, v33, v35);
    v40 = TSDAddPoints(v36, v38, v39);
    v42 = TSDGrowRectToPoint(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v40, v41);
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = TSDSubtractPoints(v36, v38, v39);
    *a1 = TSDGrowRectToPoint(v42, v44, v46, v48, v49, v50);
    *(a1 + 8) = v51;
    *(a1 + 16) = v52;
    *(a1 + 24) = v53;
  }
}

CGPath *TSDCreateWobblyPathWithMaxWobbleAndSubdivisions(const CGPath *a1, unint64_t a2, double a3)
{
  v44 = *MEMORY[0x277D85DE8];
  Mutable = CGPathCreateMutable();
  ElementCount = TSDPathGetElementCount(a1);
  if (ElementCount)
  {
    v8 = ElementCount;
    v9 = 0;
    v37 = *(MEMORY[0x277CBF348] + 8);
    v38 = *MEMORY[0x277CBF348];
    do
    {
      ElementTypeAtIndexAndAssociatedPoints = TSDPathGetElementTypeAtIndexAndAssociatedPoints(a1, v9, &v39);
      if (ElementTypeAtIndexAndAssociatedPoints > 2)
      {
        if (ElementTypeAtIndexAndAssociatedPoints == 3)
        {
          v31 = v42;
          v32 = v43;
          TSURandom();
          v34 = v31 + (v33 + -0.5) * a3;
          TSURandom();
          CGPathAddCurveToPoint(Mutable, 0, *&v39, *(&v39 + 1), v40, v41, v34, v32 + (v35 + -0.5) * a3);
        }

        else if (ElementTypeAtIndexAndAssociatedPoints == 4)
        {
          v13 = v37;
          v12 = v38;
          *&v39 = v38;
          *(&v39 + 1) = v37;
          v11 = 1;
LABEL_10:
          v14 = 0;
          v15 = a2;
          do
          {
            CurrentPoint = CGPathGetCurrentPoint(Mutable);
            v17 = TSDSubtractPoints(v12, v13, CurrentPoint.x);
            v19 = v18;
            if (v15)
            {
              TSURandom();
              *&v20 = 1.0 / v15 * (v20 + 0.5);
              v21 = fminf(*&v20, 1.0);
            }

            else
            {
              v21 = 1.0;
            }

            v22 = CurrentPoint.x + v17 * v21;
            v23 = CurrentPoint.y + v19 * v21;
            TSURandom();
            v25 = v22 + (v24 + -0.5) * a3;
            TSURandom();
            CGPathAddLineToPoint(Mutable, 0, v25, v23 + (v26 + -0.5) * a3);
            ++v14;
            --v15;
          }

          while (v14 <= a2);
          if (v11)
          {
            CGPathCloseSubpath(Mutable);
          }
        }
      }

      else if (ElementTypeAtIndexAndAssociatedPoints)
      {
        if (ElementTypeAtIndexAndAssociatedPoints == 1)
        {
          v11 = 0;
          v13 = *(&v39 + 1);
          v12 = *&v39;
          goto LABEL_10;
        }
      }

      else
      {
        v27 = v39;
        TSURandom();
        v29 = *&v27 + (v28 + -0.5) * a3;
        TSURandom();
        v37 = *(&v27 + 1) + (v30 + -0.5) * a3;
        v38 = v29;
        CGPathMoveToPoint(Mutable, 0, v29, v37);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  return Mutable;
}

CGPath *TSDCreateRoundRectPathForRectWithRadius(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  Mutable = CGPathCreateMutable();
  v11 = Mutable;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  if (a5 == 0.0)
  {
    CGPathAddRect(Mutable, 0, *&v12);
  }

  else
  {
    x1 = CGRectGetMinX(*&v12);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    MaxY = CGRectGetMaxY(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    MaxX = CGRectGetMaxX(v24);
    v25.origin.x = a1;
    v25.origin.y = a2;
    v25.size.width = a3;
    v25.size.height = a4;
    v21 = CGRectGetMaxY(v25);
    v26.origin.x = a1;
    v26.origin.y = a2;
    v26.size.width = a3;
    v26.size.height = a4;
    v17 = CGRectGetMaxX(v26);
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    MinY = CGRectGetMinY(v27);
    CGPathMoveToPoint(v11, 0, x1 + 0.0, MaxY - a5);
    CGPathAddArcToPoint(v11, 0, a1, a2, a1 + a5, a2 + 0.0, a5);
    CGPathAddArcToPoint(v11, 0, v17, MinY, v17, MinY + a5, a5);
    CGPathAddArcToPoint(v11, 0, MaxX, v21, MaxX - a5, v21, a5);
    CGPathAddArcToPoint(v11, 0, x1, MaxY, x1 + 0.0, MaxY - a5, a5);
    CGPathCloseSubpath(v11);
  }

  return v11;
}

CGPath *TSDCreateRoundRectPathForRectWithRadii(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  Mutable = CGPathCreateMutable();
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  MinX = CGRectGetMinX(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  y1 = CGRectGetMaxY(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  x1 = CGRectGetMaxX(v26);
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  MaxY = CGRectGetMaxY(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  MaxX = CGRectGetMaxX(v28);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  MinY = CGRectGetMinY(v29);
  CGPathMoveToPoint(Mutable, 0, MinX, y1 - a5);
  CGPathAddArcToPoint(Mutable, 0, a1, a2, a1 + a6, a2, a6);
  CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MinY + a7, a7);
  CGPathAddArcToPoint(Mutable, 0, x1, MaxY, x1 - a8, MaxY, a8);
  CGPathAddArcToPoint(Mutable, 0, MinX, y1, MinX, y1 - a5, a5);
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

uint64_t TSDPathIsOpen(const CGPath *a1)
{
  info = 0;
  v4 = *MEMORY[0x277CBF348];
  if (a1)
  {
    CGPathApply(a1, &info, TSDPathIsOpenApplier);
    v1 = info;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t TSDPathIsOpenApplier(uint64_t result, int *a2)
{
  v2 = result;
  v3 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v3 == 4)
    {
      *result = 0;
    }

    else if (!v3)
    {
      *(result + 8) = **(a2 + 1);
    }
  }

  else
  {
    v4 = *(a2 + 1) + 16 * kPointCountsByElementType[v3];
    result = TSDNearlyEqualPoints(*(v4 - 16), *(v4 - 8), *(result + 8), *(result + 16));
    *v2 = result ^ 1;
  }

  return result;
}

const CGPath *TSDPathIsLineSegment(const CGPath *result)
{
  v1 = 0;
  if (result)
  {
    info[0] = &v1;
    info[1] = TSDPathIsLineSegmentApplier;
    v3 = *MEMORY[0x277CBF348];
    v4 = v3;
    v5 = 0;
    CGPathApply(result, info, TSDPathApplyToSegmentsApplier);
    return (v1 == 1);
  }

  return result;
}

void TSDPathApplyToSegments(const CGPath *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      info[0] = a2;
      info[1] = a3;
      v4 = *MEMORY[0x277CBF348];
      v5 = v4;
      v6 = 0;
      CGPathApply(a1, info, TSDPathApplyToSegmentsApplier);
    }
  }
}

int *TSDPathIsLineSegmentApplier(int *result, _DWORD *a2)
{
  if (*result == 1)
  {
    v2 = 2;
  }

  else
  {
    if (*result)
    {
      return result;
    }

    if (*a2 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  *result = v2;
  return result;
}

double TSDPathGetStartAndEndPoints(const CGPath *a1, _OWORD *a2, _OWORD *a3)
{
  info = 0;
  v7 = *MEMORY[0x277CBF348];
  v8 = v7;
  CGPathApply(a1, &info, TSDPathGetStartAndEndPointsApplier);
  if (a2)
  {
    result = *&v7;
    *a2 = v7;
  }

  if (a3)
  {
    result = *&v8;
    *a3 = v8;
  }

  return result;
}

__n128 TSDPathGetStartAndEndPointsApplier(uint64_t a1, int *a2)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *a2;
    if (*a2)
    {
      goto LABEL_5;
    }

    result = **(a2 + 1);
    *(a1 + 8) = result;
    *a1 = 1;
  }

  v2 = *a2;
LABEL_5:
  if (v2 != 4)
  {
    result = *(*(a2 + 1) + 16 * kPointCountsByElementType[v2] - 16);
    *(a1 + 24) = result;
  }

  return result;
}

void TSDPathApplyToSegmentsApplier(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if ((*a2 - 1) >= 3)
  {
    if (v3 == 4)
    {
      if (*(a1 + 48))
      {
        if (*(a1 + 32) != *(a1 + 16) || *(a1 + 40) != *(a1 + 24))
        {
          v7[1] = a1 + 16;
          v7[0] = 1;
          processSegmentElement(a1, v7);
        }
      }

      *(a1 + 48) = 0;
      v5 = *(a1 + 16);
    }

    else
    {
      if (v3)
      {
        return;
      }

      *(a1 + 48) = 0;
      v4 = *(a2 + 8);
      *(a1 + 16) = *v4;
      v5 = *v4;
    }

    *(a1 + 32) = v5;
  }

  else
  {

    processSegmentElement(a1, a2);
  }
}

const CGPath *TSDPathGetSegmentCount(const CGPath *result)
{
  v1 = 0;
  if (result)
  {
    info[0] = &v1;
    info[1] = TSDPathGetSegmentCountApplier;
    v3 = *MEMORY[0x277CBF348];
    v4 = v3;
    v5 = 0;
    CGPathApply(result, info, TSDPathApplyToSegmentsApplier);
    return v1;
  }

  return result;
}

const CGPath *TSDPathGetSegmentAtIndex(const CGPath *result, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = a3;
  v3[0] = a2;
  v3[1] = 0;
  v3[2] = v4;
  if (result)
  {
    info[0] = v3;
    info[1] = TSDPathGetSegmentAtIndexApplier;
    v6 = *MEMORY[0x277CBF348];
    v7 = v6;
    v8 = 0;
    CGPathApply(result, info, TSDPathApplyToSegmentsApplier);
    return LODWORD(v4[0]);
  }

  return result;
}

uint64_t TSDPathGetSegmentAtIndexApplier(uint64_t result, int *a2)
{
  v2 = *(result + 8);
  if (*result == v2)
  {
    v3 = 0;
    v4 = *a2;
    **(result + 16) = v4;
    v5 = 16 * (kPointCountsByElementType[v4] & ~(kPointCountsByElementType[v4] >> 31)) + 16;
    do
    {
      *(*(*(result + 16) + 8) + v3) = *(*(a2 + 1) + v3);
      v3 += 16;
    }

    while (v5 != v3);
    v2 = *(result + 8);
  }

  *(result + 8) = v2 + 1;
  return result;
}

void TSDPathCornerBoundsApplierProcessSegment(uint64_t a1, int *a2)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    v5 = *(a1 + 152);
    *(a1 + 84) = v5;
    memmove((a1 + 88), (a1 + 160), 16 * (kPointCountsByElementType[v5] & ~(kPointCountsByElementType[v5] >> 31)) + 16);
  }

  *(a1 + 152) = *a2;
  *(a1 + 160) = *(a1 + 64);
  v6 = *a2;
  v7 = kPointCountsByElementType[v6];
  if (v6 != 4)
  {
    v8 = 0;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    v9 = 16 * v7;
    do
    {
      *(a1 + 176 + v8) = *(*(a2 + 1) + v8);
      v8 += 16;
    }

    while (v9 != v8);
    v7 = kPointCountsByElementType[*a2];
  }

  *(a1 + 64) = *(*(a2 + 1) + 16 * v7 - 16);
  *(a1 + 80) = v4 + 1;
  if ((v4 + 1) > 1)
  {
    v10 = gradientAtTFromTypeAndPoints(*(a1 + 84), (a1 + 88));
    v12 = v11;
    v13 = gradientAtTFromTypeAndPoints(*(a1 + 152), (a1 + 160));
    v15 = v14;
    v16 = TSDSubtractPoints(v10, v12, v13);
    v18 = TSDNormalizePoint(v16, v17);
    v20 = v19;
    v21 = -1.0 / TSDCrossPoints(v18, v19, v13, v15);
    if (v21 * v21 < *(a1 + 40) * *(a1 + 40))
    {
      v22 = TSDMultiplyPointScalar(v18, v20, v21 * *(a1 + 32));
      v23 = *(a1 + 160);
      v24 = *(a1 + 168);
      v25 = TSDAddPoints(v23, v24, v22);
      v27 = TSDGrowRectToPoint(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), v25, v26);
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v34 = TSDSubtractPoints(v23, v24, v22);
      *a1 = TSDGrowRectToPoint(v27, v29, v31, v33, v34, v35);
      *(a1 + 8) = v36;
      *(a1 + 16) = v37;
      *(a1 + 24) = v38;
    }
  }
}

double gradientAtTFromTypeAndPoints(int a1, float64x2_t *a2)
{
  v3 = *MEMORY[0x277CBF348];
  if (a1 <= 1)
  {
    if (!a1)
    {
      v17 = *MEMORY[0x277CBF348];
      v14 = [MEMORY[0x277D6C290] currentHandler];
      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGPoint gradientAtTFromTypeAndPoints(CGFloat, CGPathElementType, CGPoint *)"}];
      [v14 handleFailureInFunction:v15 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/CGPathAdditions.m"), 220, @"path gradient can't handle moveTo element"}];
      v3 = v17;
      goto LABEL_13;
    }

    if (a1 != 1)
    {
      goto LABEL_13;
    }

LABEL_8:
    v3.f64[0] = TSDSubtractPoints(a2[1].f64[0], a2[1].f64[1], a2->f64[0]);
    v3.f64[1] = v4;
    goto LABEL_13;
  }

  switch(a1)
  {
    case 2:
      TSUClamp();
      v6 = vmlaq_n_f64(vmulq_n_f64(vaddq_f64(a2[1], a2[1]), v5 * -2.0 + 1.0), vaddq_f64(*a2, *a2), v5 + -1.0);
      v7 = vaddq_f64(a2[2], a2[2]);
LABEL_11:
      v3 = vmlaq_n_f64(v6, v7, v5);
      break;
    case 3:
      TSUClamp();
      __asm
      {
        FMOV            V4.2D, #-3.0
        FMOV            V5.2D, #3.0
      }

      v6 = vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_f64(a2[1], _Q5), v5 * -4.0 + 1.0 + v5 * 3.0 * v5), vmulq_n_f64(vmulq_f64(*a2, _Q4), v5 + -1.0), v5 + -1.0), vmulq_n_f64(vmulq_f64(a2[2], _Q5), v5), v5 * -3.0 + 2.0);
      v7 = vmulq_n_f64(vmulq_f64(a2[3], _Q5), v5);
      goto LABEL_11;
    case 4:
      goto LABEL_8;
  }

LABEL_13:

  return TSDNormalizePoint(v3.f64[0], v3.f64[1]);
}

__n128 processSegmentElement(uint64_t a1, unsigned int *a2)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v11 = *(a1 + 32);
  v4 = *a2;
  if (*a2 != 4)
  {
    LODWORD(v5) = kPointCountsByElementType[v4];
    v6 = *(a2 + 1);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = v5;
    }

    v7 = v12;
    do
    {
      v8 = *v6++;
      *v7++ = v8;
      --v5;
    }

    while (v5);
  }

  v10[1] = &v11;
  v10[0] = v4;
  (*(a1 + 8))(*a1, v10);
  result = *(*(a2 + 1) + 16 * kPointCountsByElementType[*a2] - 16);
  *(a1 + 32) = result;
  ++*(a1 + 48);
  return result;
}

double TSDMetalLayerTimeWithHostTime(unint64_t a1)
{
  if (TSDMetalLayerTimeWithHostTime_onceToken != -1)
  {
    TSDMetalLayerTimeWithHostTime_cold_1();
  }

  return *&__timeScale * a1;
}

double __TSDMetalLayerTimeWithHostTime_block_invoke()
{
  info = 0;
  if (!mach_timebase_info(&info))
  {
    LODWORD(result) = info.numer;
    LODWORD(v1) = info.denom;
    result = *&result / v1 * 0.000000001;
    __timeScale = *&result;
  }

  return result;
}

float64x2_t TSDBezierToBSpline(float64x2_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = &qword_26CA65608;
  do
  {
    result = a1[2];
    *(a2 + v2) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[1], *(v3 - 4)), *a1, *(v3 - 8)), result, *v3), a1[3], v3[4]);
    v2 += 16;
    ++v3;
  }

  while (v2 != 64);
  return result;
}

float64x2_t TSDBSplineToBezier(float64x2_t *a1, uint64_t a2)
{
  v2 = 0;
  v3 = &qword_26CA65688;
  do
  {
    result = a1[2];
    *(a2 + v2) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[1], *(v3 - 4)), *a1, *(v3 - 8)), result, *v3), a1[3], v3[4]);
    v2 += 16;
    ++v3;
  }

  while (v2 != 64);
  return result;
}

double TSDPointOnCurve(float64x2_t *a1, double a2)
{
  __asm { FMOV            V5.2D, #3.0 }

  *&result = *&vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[1], _Q5), a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(*a1, 1.0 - a2), 1.0 - a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(vmulq_f64(a1[2], _Q5), a2), a2), 1.0 - a2), vmulq_n_f64(vmulq_n_f64(a1[3], a2), a2), a2);
  return result;
}

void TSDCurveBetween(float64x2_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = 1.0 - a3;
  *a2 = F(a1, 1.0 - a3, a3, 1.0 - a3, a3, 1.0 - a3, a3);
  *(a2 + 8) = v9;
  *(a2 + 16) = F(a1, v8, a3, v8, a3, 1.0 - a4, a4);
  *(a2 + 24) = v10;
  *(a2 + 32) = F(a1, v8, a3, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 40) = v11;
  *(a2 + 48) = F(a1, 1.0 - a4, a4, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 56) = v12;
}

void TSDDCurveBetween(float64x2_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = 1.0 - a3;
  *a2 = F(a1, 1.0 - a3, a3, 1.0 - a3, a3, 1.0 - a3, a3);
  *(a2 + 8) = v9;
  *(a2 + 16) = F(a1, v8, a3, v8, a3, 1.0 - a4, a4);
  *(a2 + 24) = v10;
  *(a2 + 32) = F(a1, v8, a3, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 40) = v11;
  *(a2 + 48) = F(a1, 1.0 - a4, a4, 1.0 - a4, a4, 1.0 - a4, a4);
  *(a2 + 56) = v12;
}

uint64_t TSDIntersectionOfLines(double *a1, double *a2, double *a3, double *a4, double *a5)
{
  v5 = a1[1];
  v6 = a1[2] - *a1;
  v7 = a1[3] - v5;
  v8 = a2[1];
  v9 = a2[2] - *a2;
  v10 = a2[3] - v8;
  v11 = (v7 * (*a2 - *a1) + (v5 - v8) * v6) / (v10 * v6 - v9 * v7);
  *a4 = v11;
  if (v11 >= 0.0)
  {
    v13 = v11 == 1.0;
    v12 = v11 >= 1.0;
  }

  else
  {
    v12 = 1;
    v13 = 0;
  }

  if (!v13 && v12)
  {
    return 0;
  }

  v14 = (v10 * (*a1 - *a2) + (a2[1] - a1[1]) * v9) / (v7 * v9 - v6 * v10);
  *a3 = v14;
  if (v14 >= 0.0)
  {
    v16 = v14 == 1.0;
    v15 = v14 >= 1.0;
  }

  else
  {
    v15 = 1;
    v16 = 0;
  }

  if (!v16 && v15)
  {
    return 0;
  }

  v17 = a1[1];
  *a5 = *a1 + v14 * v6;
  a5[1] = v17 + *a3 * v7;
  return 1;
}

double TSDDistanceToPointFromLine(double *a1, double a2, double a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 - a1[1];
  v6 = v4 - *a1;
  v7 = v6 * v6 + v5 * v5;
  v8 = (1.0 / sqrtf(v7));
  return a3 * -(v6 * v8) + v5 * v8 * a2 - (v3 * -(v6 * v8) + v5 * v8 * v4);
}

double TSDDDistanceToPointFromLine(double *a1, double a2, double a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = v3 - a1[1];
  v6 = v4 - *a1;
  v7 = v6 * v6 + v5 * v5;
  v8 = (1.0 / sqrtf(v7));
  return a3 * -(v6 * v8) + v5 * v8 * a2 - (v3 * -(v6 * v8) + v5 * v8 * v4);
}

uint64_t TSDNearestPointOnLineToPoint(double *a1, double a2, double a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = TSDSubtractPoints(a2, a3, *a1);
  v8 = v7;
  v9 = a1[2];
  v10 = a1[3];
  v11 = TSDSubtractPoints(v9, v10, v4);
  TSDDotPoints(v6, v8, v11, v12);
  TSDDistanceSquared(v9, v10, v4, v5);

  return TSUClamp();
}

double TSDNearestPointOnCurveToPoint(float64x2_t *a1, double a2, double a3, double a4)
{
  v24 = a4 * a4;
  v6 = 1.0;
  v7 = 0.0;
  while (1)
  {
    v8 = (v6 - v7) * 0.125;
    v9 = 0.0;
    if (v7 <= v6)
    {
      v10 = 3.40282347e38;
      v11 = v7;
      do
      {
        v12 = TSDPointOnCurve(a1, v11);
        v14 = TSDSubtractPoints(v12, v13, a2);
        v16 = TSDPointSquaredLength(v14, v15);
        if (v16 < v10)
        {
          v10 = v16;
          v9 = v11;
        }

        v11 = v8 + v11;
      }

      while (v11 <= v6);
    }

    v17 = TSDPointOnCurve(a1, v7);
    v19 = v18;
    v20 = TSDPointOnCurve(a1, v6);
    v21 = TSDSubtractPoints(v17, v19, v20);
    if (TSDPointSquaredLength(v21, v22) < v24)
    {
      break;
    }

    v7 = fmax(v9 - v8, 0.0);
    v6 = fmin(v8 + v9, 1.0);
  }

  return v9;
}

void TSDNearestPointOnCurveToLine(float64x2_t *a1, double *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = a2[2];
  v5 = a2[3];
  v7 = v5 - a2[1];
  v8 = v6 - *a2;
  v9 = v8 * v8 + v7 * v7;
  v10 = (1.0 / sqrtf(v9));
  v11 = v7 * v10;
  v12 = -(v8 * v10);
  v13 = v5 * v12 + v11 * v6;
  v14 = a1->f64[1] * v12 + v11 * a1->f64[0] - v13;
  v31.f64[0] = 0.0;
  v31.f64[1] = v14;
  v15 = a1[1].f64[1] * v12 + v11 * a1[1].f64[0] - v13;
  v32 = 0x3FD5555560000000;
  v33 = v15;
  v16 = a1[2].f64[1] * v12 + v11 * a1[2].f64[0] - v13;
  v34 = 0x3FE5555560000000;
  v35 = v16;
  v17 = v12 * a1[3].f64[1] + v11 * a1[3].f64[0] - v13;
  v36 = 0x3FF0000000000000;
  v37 = v17;
  *&v17 = v15 * 9.0 + v14 * -3.0 + v16 * -9.0 + v17 * 3.0;
  *&v16 = v15 * -12.0 + v14 * 6.0 + v16 * 6.0;
  *&v14 = v15 * 3.0 + v14 * -3.0;
  *&v14 = sqrtf(((*&v17 * -4.0) * *&v14) + (*&v16 * *&v16));
  *&v17 = *&v17 + *&v17;
  v18 = (-*&v16 - *&v14) / *&v17;
  v19 = TSDPointOnCurve(&v31, ((*&v14 - *&v16) / *&v17));
  v21 = v20;
  v22 = TSDPointOnCurve(&v31, v18);
  v23 = fabs(v21);
  v25 = fabs(v24);
  if ((v22 > 1.0 || v23 < v25 || v22 < 0.0) && v19 >= 0.0 && v19 <= 1.0)
  {
    goto LABEL_20;
  }

  if (v22 >= 0.0 && v22 <= 1.0)
  {
    v19 = v22;
LABEL_20:
    *a3 = TSDPointOnCurve(a1, v19);
    *(a3 + 8) = v30;
  }
}

double TSDPathGetElementLengthAtIndex(const CGPath *a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = a2;
  v3[2] = 0;
  v4 = 0.0;
  CGPathApply(a1, v3, TSDPathGetLengthApplierFunction);
  return v4;
}

void TSDPathGetLengthApplierFunction(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  if (v3 >= *a1 && v3 <= *(a1 + 8))
  {
    v4 = *a2;
    if (*a2 == 4)
    {
      goto LABEL_6;
    }

    if (v4 == 3)
    {
      v8 = *(a2 + 1);
      v9 = 0.0;
      p_AddIfClose(v8, &v9);
      v5 = v9;
      goto LABEL_8;
    }

    v5 = 0.0;
    if (v4 == 1)
    {
LABEL_6:
      v6 = *(a2 + 1);
      v7 = (v6[1] - v6[3]) * (v6[1] - v6[3]) + (*v6 - v6[2]) * (*v6 - v6[2]);
      v5 = sqrtf(v7);
    }

LABEL_8:
    *(a1 + 24) = v5 + *(a1 + 24);
  }

  *(a1 + 16) = v3 + 1;
}

double TSDPathGetLength(const CGPath *a1)
{
  v2 = xmmword_26CA656C8;
  v3 = unk_26CA656D8;
  CGPathApply(a1, &v2, TSDPathGetLengthApplierFunction);
  return *(&v3 + 1);
}

double TSDPathGetLengthToElement(const CGPath *a1, uint64_t a2)
{
  v3[0] = 0;
  v4 = 0u;
  v3[1] = a2;
  CGPathApply(a1, v3, TSDPathGetLengthApplierFunction);
  return *(&v4 + 1);
}

double TSDPathGetLengthFromElement(const CGPath *a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = 0x7FFFFFFFLL;
  v3[2] = 0;
  v4 = 0.0;
  CGPathApply(a1, v3, TSDPathGetLengthApplierFunction);
  return v4;
}

uint64_t TSDPathGetElementCount(const CGPath *a1)
{
  info = 0;
  CGPathApply(a1, &info, TSDPathGetElementCountApplierFunction);
  return info;
}

uint64_t TSDPathGetElementTypeAtIndex(const CGPath *a1, uint64_t a2)
{
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  info = a2;
  CGPathApply(a1, &info, TSDPathGetElementApplierFunction);
  return DWORD2(v4);
}

uint64_t TSDPathGetElementApplierFunction(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*result == v2)
  {
    *(result + 16) = *a2;
    *(result + 72) = *(*(a2 + 8) + 48);
    *(result + 56) = *(*(a2 + 8) + 32);
    *(result + 40) = *(*(a2 + 8) + 16);
    *(result + 24) = **(a2 + 8);
  }

  *(result + 8) = v2 + 1;
  return result;
}

uint64_t TSDPathGetElementTypeAtIndexAndAllPoints(const CGPath *a1, uint64_t a2, _OWORD *a3)
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v8 = 0u;
  info = a2;
  CGPathApply(a1, &info, TSDPathGetElementApplierFunction);
  v4 = v10;
  *a3 = v9;
  a3[1] = v4;
  v5 = v12;
  a3[2] = v11;
  a3[3] = v5;
  return DWORD2(v8);
}

uint64_t TSDPathGetElementTypeAtIndexAndAssociatedPoints(const CGPath *a1, uint64_t a2, _OWORD *a3)
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  info = a2;
  CGPathApply(a1, &info, TSDPathGetElementApplierFunction);
  if (!a3)
  {
    return DWORD2(v7);
  }

  *a3 = v8;
  result = DWORD2(v7);
  if (DWORD2(v7) == 3)
  {
    v5 = v10;
    a3[1] = v9;
    a3[2] = v5;
  }

  return result;
}

void curveIntersectLine(double *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6)
{
  v64 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v12 = a1[2];
  v13 = a1[4];
  v14 = a1[5];
  v15 = a1[6];
  v16 = a1[7];
  v18 = a2[2];
  v17 = a2[3];
  v19 = v17 - a2[1];
  v20 = v18 - *a2;
  v21 = v20 * v20 + v19 * v19;
  v22 = (1.0 / sqrtf(v21));
  v23 = v19 * v22;
  v24 = -(v20 * v22);
  v25 = v17 * v24 + v23 * v18;
  v55 = a1[3];
  v56 = a1[1];
  v57.f64[0] = 0.0;
  v57.f64[1] = v56 * v24 + v23 * v11 - v25;
  v58 = 0x3FD5555555555555;
  v59 = v55 * v24 + v23 * v12 - v25;
  v53 = v16;
  v54 = v14;
  v60 = 0x3FE5555555555555;
  v61 = v14 * v24 + v23 * v13 - v25;
  v62 = 0x3FF0000000000000;
  v63 = v16 * v24 + v23 * v15 - v25;
  v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
  curveIntersectLineR(&v57, &v57, v26, 1.0);
  v27 = [v26 count];
  if (v27 >= 1)
  {
    v28 = v27;
    v29 = 0;
    v52 = v13;
    do
    {
      [objc_msgSend(v26 objectAtIndex:{v29), "doubleValue"}];
      v31 = v30;
      v32 = 1.0 - v30;
      v33 = v31 * (v31 * (v15 * v31 + v32 * v13) + v32 * (v13 * v31 + v32 * v12)) + v32 * (v31 * (v13 * v31 + v32 * v12) + v32 * (v12 * v31 + v32 * v11));
      v34 = a2[2] - *a2;
      v35 = v33 - *a2;
      if (v34 * v35 > -0.001)
      {
        v36 = v31 * (v31 * (v53 * v31 + v32 * v54) + v32 * (v54 * v31 + v32 * v55)) + v32 * (v31 * (v54 * v31 + v32 * v55) + v32 * (v55 * v31 + v32 * v56));
        v37 = a2[1];
        v38 = a2[3] - v37;
        v39 = v38 * v38 + v34 * v34;
        v40 = (v36 - v37) * (v36 - v37) + v35 * v35;
        if (v38 * (v36 - v37) > -0.001 && v40 <= v39)
        {
          if (!a6)
          {
            break;
          }

          v42 = v12;
          v43 = v15;
          v44 = v11;
          v45 = sqrt(v40) / sqrt(v39);
          v46 = [TSDPathIntersection alloc];
          if (a5)
          {
            v47 = a4;
            v48 = v45;
            v49 = a3;
            v50 = v31;
          }

          else
          {
            v47 = a3;
            v48 = v31;
            v49 = a4;
            v50 = v45;
          }

          v51 = [(TSDPathIntersection *)v46 initWithSegment:v47 atT:v49 onSegmentB:v48 atT:v50 atPoint:v33, v36];
          [a6 addObject:v51];

          v11 = v44;
          v15 = v43;
          v12 = v42;
          v13 = v52;
        }
      }

      ++v29;
    }

    while (v28 != v29);
  }
}

void lineIntersectsLine(double *a1, double *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = 0.0;
  v12 = 0.0;
  v10 = *MEMORY[0x277CBF348];
  if (TSDIntersectionOfLines(a1, a2, &v12, &v11, &v10))
  {
    v8 = [TSDPathIntersection alloc];
    v9 = [(TSDPathIntersection *)v8 initWithSegment:a3 atT:a4 onSegmentB:v12 atT:v11 atPoint:v10];
    [a5 addObject:v9];
  }
}

void nearestAngleOnCurveToLine(float64x2_t *a1, double *a2, uint64_t a3)
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = TSDSubtractPoints(a2[2], a2[3], *a2);
  v8 = TSDNormalizePoint(v6, v7);
  v10 = v9;
  v11 = TSDSubtractPoints(a1->f64[0], a1->f64[1], v5);
  v13 = TSDNormalizePoint(v11, v12);
  v41.f64[0] = 0.0;
  v41.f64[1] = TSDDotPoints(v8, v10, v13, v14);
  v15 = TSDSubtractPoints(a1[1].f64[0], a1[1].f64[1], v5);
  v17 = TSDNormalizePoint(v15, v16);
  v42 = 0x3FD5555555555555;
  v43 = TSDDotPoints(v8, v10, v17, v18);
  v19 = TSDSubtractPoints(a1[2].f64[0], a1[2].f64[1], v5);
  v21 = TSDNormalizePoint(v19, v20);
  v44 = 0x3FE5555555555555;
  v45 = TSDDotPoints(v8, v10, v21, v22);
  v23 = TSDSubtractPoints(a1[3].f64[0], a1[3].f64[1], v5);
  v25 = TSDNormalizePoint(v23, v24);
  v46 = 0x3FF0000000000000;
  v47 = TSDDotPoints(v8, v10, v25, v26);
  v27 = v43 * 9.0 + v41.f64[1] * -3.0 + v45 * -9.0 + v47 * 3.0;
  v28 = v43 * -12.0 + v41.f64[1] * 6.0 + v45 * 6.0;
  v29 = sqrt((v43 * 3.0 + v41.f64[1] * -3.0) * (v27 * -4.0) + v28 * v28);
  v30 = (-v28 - v29) / (v27 + v27);
  v31 = TSDPointOnCurve(&v41, (v29 - v28) / (v27 + v27));
  v33 = v32;
  v34 = TSDPointOnCurve(&v41, v30);
  if ((v34 < 0.0 || v33 > v35 || v34 > 1.0) && v31 >= 0.0 && v31 <= 1.0)
  {
    goto LABEL_19;
  }

  if (v34 >= 0.0 && v34 <= 1.0)
  {
    v31 = v34;
LABEL_19:
    *a3 = TSDPointOnCurve(a1, v31);
    *(a3 + 8) = v40;
  }
}

double F(float64x2_t *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a1[1];
  v8 = a1[2];
  v9 = vmlaq_n_f64(vmulq_n_f64(v8, a7), v7, a6);
  *&result = *&vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(a1[3], a7), v8, a6), a5), v9, a4), a3), vmlaq_n_f64(vmulq_n_f64(v9, a5), vmlaq_n_f64(vmulq_n_f64(v7, a7), *a1, a6), a4), a2);
  return result;
}

uint64_t recursiveSubdivideCurve(float64x2_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6, int a7, uint64_t a8)
{
  v109 = *MEMORY[0x277D85DE8];
  v99 = 0.0;
  v98 = 0;
  [a2 transformedTotalCoordinate:a3 betweenElement:a4 andElement:a5 withPressure:&v98 getElement:&v99 getPercentage:{a1->f64[0], a1->f64[1]}];
  v96 = v16;
  v97 = v17;
  v102.f64[0] = v16;
  v102.f64[1] = v17;
  [a2 curvatureAt:v98 fromElement:v99];
  v19 = v18;
  *&v18 = v99;
  [a2 myGradientAt:v98 fromElement:v18];
  v91 = v21;
  v92 = v20;
  [a2 transformedTotalCoordinate:a3 betweenElement:a4 andElement:a5 withPressure:&v98 getElement:&v99 getPercentage:{a1[3].f64[0], a1[3].f64[1]}];
  v94 = v22;
  v95 = v23;
  v107 = v22;
  v108 = v23;
  [a2 curvatureAt:v98 fromElement:v99];
  v25 = v24;
  *&v24 = v99;
  [a2 myGradientAt:v98 fromElement:v24];
  v89 = v27;
  v90 = v26;
  v28 = 0.5;
  if (v19 <= 0.5)
  {
    v29 = v19;
  }

  else
  {
    v29 = 0.5;
  }

  if (v29 >= -0.5)
  {
    v30 = v29;
  }

  else
  {
    v30 = -0.5;
  }

  if (v25 <= 0.5)
  {
    v28 = v25;
  }

  if (v28 < -0.5)
  {
    v28 = -0.5;
  }

  v88 = v28;
  [a2 lineWidth];
  v32 = v31;
  v33 = a1->f64[1];
  if (a5)
  {
    [a5 pressureAt:a1->f64[0]];
    v35 = v32;
    v36 = v33 * v34 * v35;
    v37 = a1[1].f64[1];
    [a5 pressureAt:a1[1].f64[0]];
    v39 = v37 * v38 * v35;
    v40 = a1[2].f64[1];
    [a5 pressureAt:a1[2].f64[0]];
    v42 = v40 * v41 * v35;
    v43 = a1[3].f64[1];
    [a5 pressureAt:a1[3].f64[0]];
  }

  else
  {
    v35 = v32;
    v36 = v33 * v35;
    v39 = a1[1].f64[1] * v35;
    v42 = a1[2].f64[1] * v35;
    v43 = a1[3].f64[1];
    v44 = 1.0;
  }

  v45 = v39;
  v46 = v36;
  v47 = v42;
  v48 = v35 * (v43 * v44);
  v49 = a1[1].f64[0] - a1->f64[0];
  v50 = (v45 - v46);
  v51 = TSDMultiplyPointScalar(v92, v91, 1.0 - (v30 * v46));
  v52 = TSDNormalizePoint(-v91, v92);
  v53 = TSDAddPoints(v96, v97, v52 * v50 + v49 * v51);
  v55 = v54;
  v93 = v53;
  v103 = v53;
  v104 = v54;
  v56 = a1[2].f64[0] - a1[3].f64[0];
  v57 = TSDMultiplyPointScalar(v90, v89, 1.0 - (v88 * v48));
  v58 = TSDNormalizePoint(-v89, v90) * (v47 - v48) + v56 * v57;
  v59 = TSDAddPoints(v94, v95, v58);
  v61 = v60;
  v105 = v59;
  v106 = v60;
  if (a7 && (a7 > 19 || (v62 = TSDSubtractPoints(v94, v95, v96), TSDPointSquaredLength(v62, v63) <= 0.5)) || (v64 = TSDPointOnCurve(&v102, 0.33), v66 = v65, [a2 transformedTotalCoordinate:a3 betweenElement:a4 andElement:a5 withPressure:&v98 getElement:&v99 getPercentage:{TSDPointOnCurve(a1, 0.33)}], v68 = TSDSubtractPoints(v64, v66, v67), *&v66 = TSDPointSquaredLength(v68, v69) + 0.0, v70 = TSDPointOnCurve(&v102, 0.5), v72 = v71, objc_msgSend(a2, "transformedTotalCoordinate:betweenElement:andElement:withPressure:getElement:getPercentage:", a3, a4, a5, &v98, &v99, TSDPointOnCurve(a1, 0.5)), v74 = TSDSubtractPoints(v70, v72, v73), v76 = TSDPointSquaredLength(v74, v75) + *&v66, v77 = TSDPointOnCurve(&v102, 0.66), v79 = v78, objc_msgSend(a2, "transformedTotalCoordinate:betweenElement:andElement:withPressure:getElement:getPercentage:", a3, a4, a5, &v98, &v99, TSDPointOnCurve(a1, 0.66)), v81 = TSDSubtractPoints(v77, v79, v80), v83 = TSDPointSquaredLength(v81, v82) + v76, v83 <= 0.2))
  {
    if (a8)
    {
      [a6 moveToPoint:{v96, v97}];
    }

    else
    {
      [a6 currentPoint];
      v86 = TSDSubtractPoints(v96, v97, v85);
      if (TSDPointSquaredLength(v86, v87) > 1.0)
      {
        [a6 lineToPoint:{v96, v97}];
      }
    }

    return [a6 curveToPoint:v94 controlPoint1:v95 controlPoint2:{v93, v55, v59, v61}];
  }

  else
  {
    TSDCurveBetween(a1, v101, 0.0, 0.5);
    TSDCurveBetween(a1, v100, 0.5, 1.0);
    recursiveSubdivideCurve(v101, a2, a3, a4, a5, a6, (a7 + 1), a8);
    return recursiveSubdivideCurve(v100, a2, a3, a4, a5, a6, (a7 + 1), 0);
  }
}

void recursiveSubdivideCurveSplit(float64x2_t *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v134 = *MEMORY[0x277D85DE8];
  v10 = [a6 count];
  v11 = v10 - 1;
  if ((v10 - 1) < 2)
  {
    v28 = 0;
    v12 = 0;
LABEL_22:
    v13 = v11;
    goto LABEL_23;
  }

  v126 = v10 - 1;
  v128 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a1[1].f64[0];
  v15 = a1[2].f64[0];
  v16 = a1[3].f64[0];
  v17 = fmin(a1->f64[0], fmin(v14, fmin(v15, v16)));
  v18 = 2 - v10;
  v19 = fmax(a1->f64[0], fmax(v14, fmax(v15, v16)));
  v20 = 1;
  do
  {
    [objc_msgSend(a6 objectAtIndex:{v20), "t"}];
    v22 = v21;
    _NF = v22 > v17 && v22 < v19;
    v24 = v22;
    if (_NF)
    {
      v25 = v128;
      if (!v128)
      {
        v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v130.f64[0] = v24;
      v130.f64[1] = -100.0;
      v131.f64[0] = v24;
      v131.f64[1] = 100.0;
      v128 = v25;
      curveIntersectLine(a1->f64, v130.f64, v20, v20, 0, v25);
    }

    v26 = a1[3].f64[0];
    if (v26 > v24)
    {
      v12 = v20;
    }

    if (v26 < v24)
    {
      v27 = v20;
    }

    else
    {
      v27 = 0;
    }

    if (!v13)
    {
      v13 = v27;
    }

    ++v20;
  }

  while (v18 + v20 != 1);
  v28 = v128;
  v11 = v126;
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_23:
  v129 = v28;
  if (v28 && [v28 count])
  {
    [v129 sortUsingSelector:sel_compareT_];
    v29 = [[TSDPathIntersection alloc] initWithSegment:v12 atT:1.0 atPoint:1000.0, 0.0];
    [v129 addObject:v29];

    v30 = [v129 count];
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v120 = v30 - 1;
      v33 = 0.0;
      v34.f64[0] = NAN;
      v34.f64[1] = NAN;
      v122 = vdupq_n_s64(0x7FF0000000000000uLL);
      v123 = vnegq_f64(v34);
      __asm { FMOV            V0.2D, #0.5 }

      v121 = _Q0;
      do
      {
        v39 = v33;
        v40 = [v129 objectAtIndex:v32];
        [v40 t];
        v41 = a1[1];
        v130 = *a1;
        v131 = v41;
        v42 = a1[3];
        v132 = a1[2];
        v133 = v42;
        v33 = v43;
        v42.f64[0] = 1.0 - v39;
        v44 = vmlaq_n_f64(vmulq_n_f64(v132, v39), v131, v42.f64[0]);
        v127 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v133, v39), v132, v42.f64[0]), v39), v44, v42.f64[0]), v39), vmlaq_n_f64(vmulq_n_f64(v44, v39), vmlaq_n_f64(vmulq_n_f64(v131, v39), v130, v42.f64[0]), v42.f64[0]), v42.f64[0]);
        v45 = 1.0 - v33;
        v46 = vmlaq_n_f64(vmulq_n_f64(v131, v33), v130, v45);
        v47 = vmlaq_n_f64(vmulq_n_f64(v132, v33), v131, v45);
        v48 = vmlaq_n_f64(vmulq_n_f64(v133, v33), v132, v45);
        v130 = v127;
        v131 = vmlaq_n_f64(vmulq_n_f64(vmlaq_n_f64(vmulq_n_f64(v48, v39), v47, v42.f64[0]), v39), vmlaq_n_f64(vmulq_n_f64(v47, v39), v46, v42.f64[0]), v42.f64[0]);
        v49 = vmlaq_n_f64(vmulq_n_f64(v47, v33), v46, v45);
        v50 = vmlaq_n_f64(vmulq_n_f64(v48, v33), v47, v45);
        v132 = vmlaq_n_f64(vmulq_n_f64(v50, v39), v49, v42.f64[0]);
        v133 = vmlaq_n_f64(vmulq_n_f64(v50, v33), v49, v45);
        [v40 point];
        v52 = v51;
        v53 = [v40 segment];
        v54 = [v40 segment];
        if (v127.f64[0] <= v52)
        {
          if (v32 == v120)
          {
            v55 = v54 + 1;
          }

          else
          {
            v55 = v54;
          }

          v53 -= v32 != v120;
        }

        else
        {
          v55 = v54 + 1;
        }

        v56 = [a6 objectAtIndex:{v53, v127.f64[0]}];
        v57 = [a6 objectAtIndex:v55];
        [v56 t];
        v59 = v58;
        [v57 t];
        v61 = v60;
        [v56 skew];
        v63 = v62;
        [v57 skew];
        v65 = v64;
        [a2 lineWidth];
        v67 = v66;
        [a2 length];
        v68 = 0;
        v69 = v63;
        *&v70 = -v69;
        v71 = v65;
        *&v72 = (v69 + v71);
        *&v73 = v67 / v73;
        v74 = *&v73;
        v75 = v61;
        v76 = v59;
        *&v77 = (v75 - v76);
        v78 = vdupq_lane_s64(COERCE__INT64(v76), 0);
        v79 = vdupq_lane_s64(v77, 0);
        v80 = vdupq_lane_s64(v72, 0);
        v81 = vdupq_lane_s64(v70, 0);
        do
        {
          v82 = &v130.f64[v68];
          v136 = vld2q_f64(v82);
          v83 = vdivq_f64(vsubq_f64(v136.val[0], v78), v79);
          __asm { FMOV            V16.2D, #1.0 }

          v85 = vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v83, v123), v122), v121, v83), _Q16);
          v136.val[0] = vmlaq_f64(v136.val[0], v136.val[1], vmulq_n_f64(vmlaq_f64(v81, v80, vbicq_s8(v85, vcltzq_f64(v85))), v74));
          *v82 = v136.val[0].f64[0];
          *(&v130 + v68 * 8 + 16) = v136.val[0].f64[1];
          v68 += 4;
        }

        while (v68 != 8);
        recursiveSubdivideCurve(&v130, a2, [v56 segment] + 1, objc_msgSend(v57, "segment"), a3, a4, 0, a5 & 1);
        LOBYTE(a5) = 0;
        ++v32;
      }

      while (v32 != v31);
    }
  }

  else
  {
    v86 = [a6 objectAtIndex:v12];
    v87 = [a6 objectAtIndex:v13];
    [v86 t];
    v89 = v88;
    [v87 t];
    v91 = v90;
    [v86 skew];
    v93 = v92;
    [v87 skew];
    v95 = v94;
    [a2 lineWidth];
    v97 = v96;
    [a2 length];
    v98 = 0;
    v99 = vdupq_n_s64(0x7FF0000000000000uLL);
    v100 = v93;
    *&v101 = -v100;
    v102 = v95;
    *&v103 = (v100 + v102);
    *&v104 = v97 / v104;
    v105 = *&v104;
    v106 = v91;
    v107 = v89;
    *&v108 = (v106 - v107);
    v109 = vdupq_lane_s64(COERCE__INT64(v107), 0);
    v110 = vdupq_lane_s64(v108, 0);
    v111 = vdupq_lane_s64(v103, 0);
    v112 = vdupq_lane_s64(v101, 0);
    v113.f64[0] = NAN;
    v113.f64[1] = NAN;
    v114 = vnegq_f64(v113);
    __asm
    {
      FMOV            V7.2D, #0.5
      FMOV            V16.2D, #1.0
    }

    do
    {
      f64 = a1[v98].f64;
      v137 = vld2q_f64(f64);
      v118 = vdivq_f64(vsubq_f64(v137.val[0], v109), v110);
      v119 = vminnmq_f64(vbslq_s8(vcgeq_s64(vandq_s8(v118, v114), v99), _Q7, v118), _Q16);
      v137.val[0] = vmlaq_f64(v137.val[0], v137.val[1], vmulq_n_f64(vmlaq_f64(v112, v111, vbicq_s8(v119, vcltzq_f64(v119))), v105));
      *f64 = v137.val[0].f64[0];
      a1[v98 + 1].f64[0] = v137.val[0].f64[1];
      v98 += 2;
    }

    while (v98 != 4);
    recursiveSubdivideCurve(a1, a2, [v86 segment] + 1, objc_msgSend(v87, "segment"), a3, a4, 0, a5);
  }
}

double TSDPathNearestAngleOnPathToLine(const CGPath *a1, double *a2)
{
  v4 = TSDSubtractPoints(a2[2], a2[3], *a2);
  v6 = TSDNormalizePoint(v4, v5);
  v9[0] = a2;
  v9[1] = 0xC000000000000000;
  v10 = *MEMORY[0x277CBF348];
  v11 = v6;
  v12 = v7;
  TSDPathApplyToSegments(a1, v9, TSDPathNearestAngleOnPathToLineApplier);
  return *&v10;
}

void TSDPathNearestAngleOnPathToLineApplier(uint64_t a1, uint64_t a2)
{
  if (*a2 == 3)
  {
    v5 = *(a2 + 8);
    v15 = *(v5 + 48);
    v17 = *MEMORY[0x277CBF348];
    nearestAngleOnCurveToLine(v5, *a1, &v17);
    if (v6 > *(a1 + 8))
    {
      *(a1 + 16) = v17;
      *(a1 + 8) = v6;
    }

    v4 = v15;
  }

  else if (*a2 == 1)
  {
    v4 = *(*(a2 + 8) + 16);
  }

  else
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void TSDPathNearestAngleOnPathToLineApplier(void *, const TSDPathSegment *)"}];
    [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDPathDistortion.m"), 2182, @"TSDPathAddIntersectionsWithLine doesn't handle quad curves or some other element type"}];
    v4 = *(*(a2 + 8) + 32);
  }

  v9 = *(&v4 + 1);
  v16 = v4;
  v10 = TSDSubtractPoints(*&v4, *(&v4 + 1), **a1);
  v12 = TSDNormalizePoint(v10, v11);
  v14 = TSDDotPoints(*(a1 + 32), *(a1 + 40), v12, v13);
  if (v14 > *(a1 + 8))
  {
    *(a1 + 16) = v16;
    *(a1 + 24) = v9;
    *(a1 + 8) = v14;
  }
}

void p_AddIfClose(uint64_t a1, double *a2)
{
  v4 = 0;
  v35[25] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 0.0;
  v8 = v6;
  v9 = *a1;
  do
  {
    v10 = *(a1 + v4 + 16);
    v11 = *(a1 + v4 + 24);
    v7 = v7 + TSDDistance(v9, v8, v10, v11);
    v4 += 16;
    v8 = v11;
    v9 = v10;
  }

  while (v4 != 48);
  if (v7 - TSDDistance(v5, v6, *(a1 + 48), *(a1 + 56)) <= 0.100000001)
  {
    *a2 = v7 + *a2;
  }

  else
  {
    v12 = *(a1 + 16);
    v34[0] = *a1;
    v34[1] = v12;
    v13 = *(a1 + 48);
    v34[2] = *(a1 + 32);
    v34[3] = v13;
    v14 = v35;
    v15 = 1;
    v16 = 3;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v22 = v34[4 * v15 - 4];
      v23 = v16;
      v24 = v14;
      do
      {
        v25 = v24[-3];
        *v24++ = vmlaq_f64(vmulq_f64(v25, _Q0), _Q0, v22);
        v22 = v25;
        --v23;
      }

      while (v23);
      ++v15;
      --v16;
      v14 += 4;
    }

    while (v15 != 4);
    v26 = 0;
    v27 = v34;
    do
    {
      v28 = *v27;
      v27 += 4;
      *&v33[v26] = v28;
      v26 += 16;
    }

    while (v26 != 64);
    v29 = v32;
    v30 = 3;
    v31 = 12;
    do
    {
      *v29++ = v34[v31];
      --v30;
      v31 -= 3;
    }

    while (v30 != -1);
    p_AddIfClose(v33, a2);
    p_AddIfClose(v32, a2);
  }
}

void curveIntersectCurveR(float64x2_t *a1, double *a2, uint64_t a3, uint64_t a4, int a5, void *a6, double a7, double a8, double a9, double a10)
{
  v41[8] = *MEMORY[0x277D85DE8];
  v39 = 0.0;
  v40 = 0.0;
  clipToFatCurve(a1->f64, a2, &v40, &v39);
  v20 = v40;
  if (v40 <= 1.0)
  {
    v21 = v39;
    if (v39 >= 0.0)
    {
      if ((v39 - v40) * a7 >= 0.0001)
      {
        if (v39 - v40 >= 0.8)
        {
          v35 = (v40 + v39) * 0.5;
          TSDDCurveBetween(a1, v41, v40, v35);
          curveIntersectCurveR(a2, v41, a4, a3, a5 ^ 1u, a6, a9, a10, (v21 - v35) * a7, a8 + v20 * a7);
          TSDDCurveBetween(a1, v41, (v20 + v21) * 0.5, v21);
          v28 = a8 + v35 * a7;
          v29 = a5 ^ 1u;
          v30 = a2;
          v31 = a9;
          v32 = a10;
          v33 = a4;
          v34 = (v21 - v35) * a7;
        }

        else
        {
          TSDDCurveBetween(a1, v41, v40, v39);
          v28 = a8 + v20 * a7;
          v29 = a5 ^ 1u;
          v30 = a2;
          v31 = a9;
          v32 = a10;
          v33 = a4;
          v34 = (v21 - v20) * a7;
        }

        curveIntersectCurveR(v30, v41, v33, a3, v29, a6, v31, v32, v34, v28);
      }

      else
      {
        v37 = 0.0;
        v38 = 0.0;
        TSDDCurveBetween(a1, v41, v40, v39);
        clipToFatCurve(a2, v41, &v38, &v37);
        if ((v37 - v38) * a9 < 0.1)
        {
          v22 = (v37 + v38) * a9 * 0.5 + a10;
          v23 = [TSDPathIntersection alloc];
          if (a5)
          {
            v24 = a4;
            v25 = v22;
            v26 = a3;
            v27 = (v20 + v21) * a7 * 0.5 + a8;
          }

          else
          {
            v24 = a3;
            v25 = (v20 + v21) * a7 * 0.5 + a8;
            v26 = a4;
            v27 = v22;
          }

          v36 = [(TSDPathIntersection *)v23 initWithSegment:v24 atT:v26 onSegmentB:v25 atT:v27 atPoint:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)];
          [a6 addObject:v36];
        }
      }
    }
  }
}

double *clipToFatCurve(double *a1, double *a2, double *a3, double *a4)
{
  v28[8] = *MEMORY[0x277D85DE8];
  v6 = a2[6];
  v7 = a2[7];
  v8 = v7 - a2[1];
  v9 = v6 - *a2;
  v10 = v9 * v9 + v8 * v8;
  v11 = (1.0 / sqrtf(v10));
  v12 = v8 * v11;
  v13 = -(v9 * v11);
  v14 = v7 * v13 + v12 * v6;
  v15 = a1[1] * v13 + v12 * *a1 - v14;
  v28[0] = 0;
  *&v28[1] = v15;
  v16 = a1[3] * v13 + v12 * a1[2] - v14;
  v28[2] = 0x3FD5555555555555;
  *&v28[3] = v16;
  v17 = v13 * a1[5] + v12 * a1[4] - v14;
  v28[4] = 0x3FE5555555555555;
  *&v28[5] = v17;
  v18 = v13 * a1[7] + v12 * a1[6] - v14;
  v28[6] = 0x3FF0000000000000;
  *&v28[7] = v18;
  v19 = v13 * a2[3] + v12 * a2[2] - v14;
  v20 = v13 * a2[5] + v12 * a2[4] - v14;
  v21 = fmin(v19, fmin(v20, 0.0));
  v22 = fmax(v19, fmax(v20, 0.0));
  *a3 = 2.0;
  *a4 = -1.0;
  shrinkIntervalWithIntersectionsFromCurve(a3, a4, v28, v21);
  result = shrinkIntervalWithIntersectionsFromCurve(a3, a4, v28, v22);
  for (i = 0; i != 8; i += 2)
  {
    v25 = *&v28[i + 1];
    if (v25 > v21 && v25 < v22)
    {
      v27 = *&v28[i];
      *a3 = fmin(*a3, v27);
      *a4 = fmax(*a4, v27);
    }
  }

  return result;
}

double *shrinkIntervalWithIntersectionsFromCurve(double *result, double *a2, uint64_t a3, double a4)
{
  v4 = 0;
  v5 = (a3 + 24);
  v6 = 3;
  do
  {
    if (v4 <= 2)
    {
      v7 = (a3 + 16 * v4);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v7[1];
        if ((v10 <= a4 || *v9 <= a4) && (v10 >= a4 || *v9 >= a4))
        {
          v11 = *v7;
          v12 = *(v9 - 1) - *v7;
          if (v12 != 0.0)
          {
            v11 = v12 * (a4 - (v10 - v11 * (*v9 - v10) / v12)) / (*v9 - v10);
          }

          if (v11 < *result)
          {
            *result = v11;
          }

          if (v11 > *a2)
          {
            *a2 = v11;
          }
        }

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    ++v4;
    v5 += 2;
    --v6;
  }

  while (v4 != 4);
  return result;
}

double *curveIntersectLineR(float64x2_t *a1, uint64_t a2, void *a3, double a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v14 = -1.0;
  v15 = 2.0;
  result = shrinkIntervalWithIntersectionsFromCurve(&v15, &v14, a2, 0.0);
  v8 = v15;
  if (v15 <= 1.0)
  {
    v9 = v14;
    if (v14 >= 0.0)
    {
      if (v14 - v15 >= 0.00005)
      {
        if (v14 - v15 >= a4 * 0.8)
        {
          v13 = (v15 + v14) * 0.5;
          TSDDCurveBetween(a1, v16, v15, v13);
          curveIntersectLineR(a1, v16, a3, v13 - v8);
          TSDDCurveBetween(a1, v16, (v8 + v9) * 0.5, v9);
          v12 = v9 - v13;
          v11 = a1;
        }

        else
        {
          TSDDCurveBetween(a1, v16, v15, v14);
          v11 = a1;
          v12 = v9 - v8;
        }

        return curveIntersectLineR(v11, v16, a3, v12);
      }

      else
      {
        v10 = [MEMORY[0x277CCABB0] numberWithDouble:(v15 + v14) * 0.5];

        return [a3 addObject:v10];
      }
    }
  }

  return result;
}

uint64_t TSDAdjustGeometryForAlignPathSourceToOrigin(void *a1, void *a2)
{
  [a1 transformedBounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  BoundingBox = CGPathGetBoundingBox([a2 pathWithoutFlips]);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  memset(&v31, 0, sizeof(v31));
  if (a2)
  {
    [a2 pathFlipTransform];
  }

  v16 = *(MEMORY[0x277CBF2C0] + 16);
  *&v30.a = *MEMORY[0x277CBF2C0];
  *&v30.c = v16;
  *&v30.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&t1.a = *&v30.a;
  *&t1.c = v16;
  *&t1.tx = *&v30.tx;
  t2 = v31;
  CGAffineTransformConcat(&v30, &t1, &t2);
  if (a1)
  {
    [a1 transform];
  }

  else
  {
    memset(&t2, 0, sizeof(t2));
  }

  v27 = v30;
  CGAffineTransformConcat(&t1, &v27, &t2);
  v30 = t1;
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  *&v17 = CGRectApplyAffineTransform(v33, &t1);
  t1 = v30;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectApplyAffineTransform(v34, &t1);
  v18 = TSDSubtractPoints(v35.origin.x, v35.origin.y, v17);
  [a1 center];
  [a1 setCenter:{TSDAddPoints(v19, v20, v18)}];
  v21 = [objc_msgSend(a2 "bezierPath")];
  if (width >= 1.0)
  {
    v22 = width;
  }

  else
  {
    v22 = 1.0;
  }

  if (height >= 1.0)
  {
    v23 = height;
  }

  else
  {
    v23 = 1.0;
  }

  if (v21)
  {
    v24 = width;
  }

  else
  {
    v24 = v22;
  }

  if (v21)
  {
    v25 = height;
  }

  else
  {
    v25 = v23;
  }

  return [a1 setSize:{v24, v25, v23}];
}

void sub_26C7E1EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t TSDSpatialDrawableComparator_block_invoke()
{
  v0 = TSUProtocolCast();
  v1 = TSUProtocolCast();
  [objc_msgSend(v0 "geometry")];
  v3 = v2;
  v5 = v4;
  [objc_msgSend(v1 "geometry")];
  if (v5 < v7)
  {
    return -1;
  }

  if (v5 > v7)
  {
    return 1;
  }

  if (v3 < v6)
  {
    return -1;
  }

  return v3 > v6;
}

uint64_t TSDKnobTagByRotating270Degrees(uint64_t a1)
{
  v7 = a1 - 1;
  if (a1 - 1) < 9 && ((0x1EFu >> v7))
  {
    return qword_26CA65790[v7];
  }

  v9 = [MEMORY[0x277D6C290] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSDKnobTag TSDKnobTagByRotating270Degrees(TSDKnobTag)"];
  [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 58, @"Unexpected knob tag"}];
  return 0;
}

uint64_t TSDOppositeKnobTag(uint64_t a1)
{
  if ((a1 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_26CA657D8[a1 - 1];
  }
}

uint64_t TSDKnobTagByRotating90Degrees(uint64_t a1)
{
  v7 = a1 - 1;
  if (a1 - 1) < 9 && ((0x1EFu >> v7))
  {
    return qword_26CA65830[v7];
  }

  v9 = [MEMORY[0x277D6C290] currentHandler];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSDKnobTag TSDKnobTagByRotating90Degrees(TSDKnobTag)"];
  [v9 handleFailureInFunction:v10 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 89, @"Unexpected knob tag"}];
  return 0;
}

uint64_t TSDKnobTagForAngle(double a1)
{
  if (a1 > 22.5 && a1 <= 67.5)
  {
    return 7;
  }

  if (a1 > 67.5 && a1 <= 112.5)
  {
    return 4;
  }

  if (a1 > 112.5 && a1 <= 157.5)
  {
    return 1;
  }

  if (a1 > 157.5 && a1 <= 202.5)
  {
    return 2;
  }

  if (a1 > 202.5 && a1 <= 247.5)
  {
    return 3;
  }

  if (a1 > 247.5 && a1 <= 292.5)
  {
    return 6;
  }

  if (a1 > 292.5 && a1 <= 337.5)
  {
    return 9;
  }

  if (a1 >= 22.5 && a1 <= 337.5)
  {
    return 0;
  }

  else
  {
    return 8;
  }
}

uint64_t TSDKnobTagByRotatingKnobByAngle(uint64_t a1)
{
  TSURound();
  TSDNormalizeAngleInDegrees(v2 * 90.0);
  if (fabs(v3 + -90.0) >= 0.00999999978)
  {
    if (fabs(v3 + -180.0) >= 0.00999999978)
    {
      result = a1;
      if (fabs(v3 + -270.0) < 0.00999999978)
      {

        return TSDKnobTagByRotating270Degrees(a1);
      }
    }

    else
    {

      return TSDOppositeKnobTag(a1);
    }
  }

  else
  {

    return TSDKnobTagByRotating90Degrees(a1);
  }

  return result;
}

double TSDPositionOfKnobOnRectangle(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if ((a1 - 1) > 8)
  {
    return *MEMORY[0x277CBF348];
  }

  v9 = 2 - (a1 - 1) % 3u;
  if (a4 >= 0.0)
  {
    v9 = (a1 - 1) % 3u;
  }

  if (a5 >= 0.0)
  {
    v10 = (a1 - 1) / 3u;
  }

  else
  {
    v10 = 2 - (a1 - 1) / 3u;
  }

  v11 = qword_287D34588[v9]();
  qword_287D345A0[v10](a2, a3, a4, a5);
  return v11;
}

uint64_t TSDKnobTagWithFlip(uint64_t a1)
{
  v1 = a1;
  if (a1 > 6)
  {
    if (a1 <= 8)
    {
      if (a1 == 7)
      {
        return 9;
      }
    }

    else
    {
      if (a1 == 9)
      {
        return 7;
      }

      if (a1 != 12 && a1 != 31)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    if (a1 > 2)
    {
      switch(a1)
      {
        case 3:
          return 1;
        case 4:
          return 6;
        case 6:
          return 4;
      }

LABEL_17:
      v2 = [MEMORY[0x277D6C290] currentHandler];
      v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"TSDKnobTag TSDKnobTagWithFlip(TSDKnobTag)"];
      [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDKnob.m"), 246, @"don't know how to flip knob tag %lu", v1}];
      return v1;
    }

    if (a1 == 1)
    {
      return 3;
    }

    if (a1 != 2)
    {
      goto LABEL_17;
    }
  }

  return v1;
}

void sub_26C7EF198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_26C7F0C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_26C7F1010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_26C7F12BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_26C7F1D4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_26C7F7E68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t p_bezierPathFittingPointsCallback(uint64_t a1, double *a2, void *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v11 = a2[7];
  if (![a3 elementCount])
  {
    [a3 moveToPoint:{v4, v5}];
  }

  return [a3 curveToPoint:v10 controlPoint1:v11 controlPoint2:{v6, v7, v8, v9}];
}

double BezierII(int a1, uint64_t a2, double a3)
{
  v5 = malloc_type_malloc((16 * a1 + 16), 0x1000040451B5BE8uLL);
  if ((a1 & 0x80000000) == 0)
  {
    v6 = 0;
    do
    {
      v5[v6] = *(a2 + v6 * 16);
      ++v6;
    }

    while (a1 + 1 != v6);
    if (a1)
    {
      v7 = vdupq_lane_s64(COERCE__INT64(1.0 - a3), 0);
      v8 = 1;
      v9 = a1;
      do
      {
        if (v8 <= a1)
        {
          v10 = *v5;
          v11 = v9;
          v12 = v5 + 1;
          do
          {
            v13 = *v12;
            v12[-1] = vmlaq_f64(vmulq_n_f64(*v12, a3), v10, v7);
            ++v12;
            v10 = v13;
            --v11;
          }

          while (v11);
        }

        --v9;
      }

      while (v8++ != a1);
    }
  }

  v15 = v5->f64[0];
  free(v5);
  return v15;
}

void FitCubic(uint64_t a1, uint64_t a2, uint64_t a3, double ***a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8, double a9)
{
  while (1)
  {
    v9 = a4;
    v81 = a8;
    v82 = a7;
    v10 = a3;
    v11 = a2;
    v12 = a1;
    v94[2] = *MEMORY[0x277D85DE8];
    v13 = a3 - a2;
    v83 = a6;
    v84 = a5;
    if (a3 - a2 == 1)
    {
      break;
    }

    v25 = a9;
    size = 8 * v13 + 8;
    v26 = malloc_type_malloc(size & 0x7FFFFFFF8, 0x100004000313F17uLL);
    v27 = v26;
    *v26 = 0.0;
    v87 = v11;
    if (v10 > v11)
    {
      v28 = v26 + 1;
      v29 = *v26;
      v30 = (v12 + 16 * v11 + 16);
      v31 = v13;
      do
      {
        v29 = v29 + sqrt((v30[1] - *(v30 - 1)) * (v30[1] - *(v30 - 1)) + (*v30 - *(v30 - 2)) * (*v30 - *(v30 - 2)));
        *v28++ = v29;
        v30 += 2;
        --v31;
      }

      while (v31);
      v32 = v26 + 1;
      v33 = v13;
      do
      {
        *v32 = *v32 / v26[v13];
        ++v32;
        --v33;
      }

      while (v33);
    }

    v89 = 0;
    GenerateBezier(v12, v11, v10, v26, v9, v84.n128_f64[0], v83.n128_f64[0], v82.n128_f64[0], v81.n128_f64[0]);
    v35 = v34;
    v36.n128_f64[0] = ComputeMaxError(v12, v11, v10, v34, v27, &v89, v9);
    if (v36.n128_f64[0] < v25)
    {
      DrawBezierCurve(v35, v9, v36);
LABEL_34:
      free(v27);
      v24 = v35;
      goto LABEL_35;
    }

    v86 = v12;
    v78 = v9;
    if (v36.n128_f64[0] < v25 * v25)
    {
      v37 = v27;
      v38 = 0;
      __asm { FMOV            V0.2D, #3.0 }

      v85 = _Q0;
      while (1)
      {
        v80 = v38;
        v27 = malloc_type_malloc(size, 0x100004000313F17uLL);
        v44 = v11;
        if (v10 >= v11)
        {
          v45 = v11;
          do
          {
            v46 = (v86 + 16 * v45);
            v47 = v45 - v44;
            v48 = v37[v47];
            v49 = *v46;
            v50 = v46[1];
            v51 = BezierII(3, v35, v48);
            v53 = v52;
            v54 = 0;
            v55 = *v35;
            do
            {
              v56 = v35[v54 + 1];
              v92[v54++] = vmulq_f64(vsubq_f64(v56, v55), v85);
              v55 = v56;
            }

            while (v54 != 3);
            v57 = v90;
            v58 = 1;
            v59 = v92[0];
            v60 = &v93;
            do
            {
              v61 = v58;
              v62 = *v60;
              v63 = vsubq_f64(*v60, v59);
              *v57 = vaddq_f64(v63, v63);
              v57 = &v91;
              v60 = v94;
              v59 = v62;
              v58 = 0;
            }

            while ((v61 & 1) != 0);
            v64 = BezierII(2, v92, v48);
            v66 = v65;
            v67 = BezierII(1, v90, v48);
            v69 = v66 * v66 + v64 * v64 + (v51 - v49) * v67 + (v53 - v50) * v68;
            if (v69 != 0.0)
            {
              v48 = v48 - ((v53 - v50) * v66 + (v51 - v49) * v64) / v69;
            }

            *(v27 + v47) = v48;
            _ZF = v45++ == v10;
            v44 = v11;
          }

          while (!_ZF);
        }

        free(v35);
        GenerateBezier(v86, v44, v10, v27, v78, v84.n128_f64[0], v83.n128_f64[0], v82.n128_f64[0], v81.n128_f64[0]);
        v35 = v70;
        v71.n128_f64[0] = ComputeMaxError(v86, v44, v10, v70, v27, &v89, v78);
        if (v71.n128_f64[0] < v25)
        {
          break;
        }

        free(v37);
        v37 = v27;
        v38 = v80 + 1;
        if (v80 == 3)
        {
          goto LABEL_28;
        }
      }

      DrawBezierCurve(v35, v78, v71);
      free(v37);
      goto LABEL_34;
    }

LABEL_28:
    free(v27);
    free(v35);
    v72 = v89;
    __asm { FMOV            V1.2D, #0.5 }

    v74 = vmulq_f64(vaddq_f64(vsubq_f64(*(v86 + 16 * v89 - 16), *(v86 + 16 * v89)), vsubq_f64(*(v86 + 16 * v89), *(v86 + 16 * v89 + 16))), _Q1);
    v75 = sqrt(COERCE_DOUBLE(*&vmulq_f64(*&v74, *&v74).f64[1]) + v74.n128_f64[0] * v74.n128_f64[0]);
    if (v75 != 0.0)
    {
      v74 = vdivq_f64(v74, vdupq_lane_s64(*&v75, 0));
    }

    v76 = v74.n128_f64[1];
    v77 = v87;
    v88 = v74;
    FitCubic(v86, v77, v89, v78, v84, v83, v74, v74.n128_f64[1], v25);
    a5.n128_u64[1] = v88.n128_u64[1];
    a5.n128_f64[0] = -v88.n128_f64[0];
    a6.n128_f64[0] = -v76;
    a1 = v86;
    a2 = v72;
    a3 = v10;
    a8 = v81;
    a7 = v82;
    a9 = v25;
    a4 = v78;
  }

  v14 = (a1 + 16 * a3);
  v15 = (a1 + 16 * a2);
  v16 = sqrt((v14[1] - v15[1]) * (v14[1] - v15[1]) + (*v14 - *v15) * (*v14 - *v15)) / 3.0;
  v17 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
  v18 = v17;
  *v17 = *v15;
  v17[3] = *v14;
  *&v20.f64[0] = v84.n128_u64[0];
  v19 = sqrt(v83.n128_f64[0] * v83.n128_f64[0] + v20.f64[0] * v20.f64[0]);
  *&v20.f64[1] = v83.n128_u64[0];
  if (v19 != 0.0)
  {
    v20 = vmulq_n_f64(v20, v16 / v19);
  }

  v17[1] = vaddq_f64(v20, *v17);
  *&v22.f64[0] = v82.n128_u64[0];
  v21 = sqrt(v81.n128_f64[0] * v81.n128_f64[0] + v22.f64[0] * v22.f64[0]);
  *&v22.f64[1] = v81.n128_u64[0];
  if (v21 != 0.0)
  {
    v22 = vmulq_n_f64(v22, v16 / v21);
  }

  v23 = vaddq_f64(v22, v17[3]);
  v17[2] = v23;
  DrawBezierCurve(v17, v9, v23);
  v24 = v18;
LABEL_35:

  free(v24);
}

uint64_t DrawBezierCurve(uint64_t a1, uint64_t a2, __n128 a3)
{
  a3.n128_u64[0] = *(a1 + 56);
  v4 = *(a2 + 24);
  v3 = *(a2 + 32);

  return v4(3, a1, v3, a3);
}

double GenerateBezier(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double ***a5, double a6, double a7, double a8, double a9)
{
  v15 = *a5;
  v16 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
  v17 = (a1 + 16 * a3);
  v18 = (a1 + 16 * a2);
  if (a3 >= a2)
  {
    v24.f64[0] = a6;
    v25 = a7;
    v26 = sqrt(v25 * v25 + v24.f64[0] * v24.f64[0]);
    v27 = a3 - a2 + 1;
    v28 = v27;
    v29 = a4;
    v30 = v15;
    v31 = sqrt(a9 * a9 + a8 * a8);
    do
    {
      v32 = 1.0 - *v29;
      v33 = *v29 * 3.0;
      v34 = a6;
      v35 = a7;
      if (v26 != 0.0)
      {
        v36 = v33 * (v32 * v32) / v26;
        v34 = a6 * v36;
        v35 = a7 * v36;
      }

      v37 = a8;
      v38 = a9;
      if (v31 != 0.0)
      {
        v39 = v32 * (*v29 * v33) / v31;
        v37 = a8 * v39;
        v38 = a9 * v39;
      }

      v40 = *v30++;
      *v40 = v34;
      v40[1] = v35;
      v40[2] = v37;
      v40[3] = v38;
      ++v29;
      --v28;
    }

    while (v28);
    v41 = v18 + 1;
    v23 = 0.0;
    v22 = 0.0;
    v21 = 0.0;
    v20 = 0.0;
    v19 = 0.0;
    do
    {
      v42 = *v15++;
      v43 = *v42;
      v44 = v42[1];
      v45 = v42[2];
      v46 = v42[3];
      v47 = v44 * v46 + *v42 * v45;
      v48 = *a4++;
      v49 = 1.0 - v48;
      v50 = v49 * (v49 * v49);
      v51 = v48 * 3.0 * (v49 * v49);
      v21 = v21 + v44 * v44 + v43 * v43;
      v52 = (1.0 - v48) * (v48 * (v48 * 3.0));
      v22 = v22 + v47;
      v53 = v48 * (v48 * v48);
      v23 = v23 + v46 * v46 + v45 * v45;
      v54 = *(v41 - 1) - (*v18 * v50 + *v18 * v51 + *v17 * v52 + v53 * *v17);
      v55 = *v41 - (v18[1] * v50 + v18[1] * v51 + v52 * v17[1] + v53 * v17[1]);
      v19 = v19 + v44 * v55 + v43 * v54;
      v20 = v20 + v46 * v55 + v45 * v54;
      v41 += 2;
      --v27;
    }

    while (v27);
  }

  else
  {
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = 0.0;
    v23 = 0.0;
    v24.f64[0] = a6;
    v25 = a7;
  }

  v56 = v21 * v23 - v22 * v22;
  v57 = v19 * v23 - v20 * v22;
  v58 = v21 * v23 * 1.0e-11;
  if (v56 == 0.0)
  {
    v56 = v58;
  }

  if (v57 / v56 < 0.000001 || (v59 = (v21 * v20 - v22 * v19) / v56, v59 < 0.000001))
  {
    v59 = sqrt((v17[1] - v18[1]) * (v17[1] - v18[1]) + (*v17 - *v18) * (*v17 - *v18)) / 3.0;
    *v16 = *v18;
    v16[3] = *v17;
    v62 = sqrt(v25 * v25 + v24.f64[0] * v24.f64[0]);
    v24.f64[1] = v25;
    if (v62 == 0.0)
    {
      goto LABEL_20;
    }

    v61 = v59 / v62;
  }

  else
  {
    *v16 = *v18;
    v16[3] = *(a1 + 16 * a3);
    v60 = sqrt(v25 * v25 + v24.f64[0] * v24.f64[0]);
    v24.f64[1] = v25;
    if (v60 == 0.0)
    {
      goto LABEL_20;
    }

    v61 = v57 / v56 / v60;
  }

  v24 = vmulq_n_f64(v24, v61);
LABEL_20:
  v16[1] = vaddq_f64(v24, *v16);
  v63 = sqrt(a9 * a9 + a8 * a8);
  if (v63 != 0.0)
  {
    v64 = v59 / v63;
    a8 = a8 * v64;
    a9 = a9 * v64;
  }

  result = a8 + v16[3].f64[0];
  v66 = a9 + v16[3].f64[1];
  v16[2].f64[0] = result;
  v16[2].f64[1] = v66;
  return result;
}

double ComputeMaxError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  *a6 = (a3 - a2 + 1) / 2;
  v7 = a2 + 1;
  v8 = 0.0;
  if (a2 + 1 < a3)
  {
    v13 = *(a7 + 16);
    v14 = a2;
    do
    {
      v15 = v7;
      if (v13 <= 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v16 = (a1 + 16 * v7);
        v17 = 0.0;
        v18 = 1;
        v19 = 0.0;
        v20 = (a1 + 16 * v14);
        do
        {
          v21 = 1.0 - v17 / v13;
          v22 = *v20 + (*v16 - *v20) * v21;
          v23 = v20[1] + (v16[1] - v20[1]) * v21;
          v24 = BezierII(3, a4, *(a5 + 8 * (v15 - a2) - 8) + (*(a5 + 8 * (v15 - a2)) - *(a5 + 8 * (v15 - a2) - 8)) * v21);
          v19 = v19 + (v25 - v23) * (v25 - v23) + (v24 - v22) * (v24 - v22);
          v17 = v18;
          v13 = *(a7 + 16);
          ++v18;
        }

        while (v13 > v17);
      }

      if (v19 / v13 >= v8)
      {
        *a6 = v15;
        v8 = v19 / v13;
      }

      v7 = v15 + 1;
      v14 = v15;
    }

    while (v15 + 1 != a3);
  }

  return v8;
}

void _SFRSetLineWidth(CGContextRef c, CGFloat a2)
{
  if (a2 == 0.0)
  {
    NSLog(@"BOGUS - lineWidth is 0.");
    CGContextGetCTM(&v3, c);
    CGAffineTransformInvert(&v4, &v3);
    a2 = v4.a + v4.c;
  }

  CGContextSetLineWidth(c, a2);
}

void *pBuildBezierPath(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *a2;
  if (*a2 > 1)
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v10 = *(a2 + 8);
        v11 = v10[4];
        v12 = v10[5];
        v13 = *v10;
        v14 = v10[1];
        v15 = v10[2];
        v16 = v10[3];

        return [result curveToPoint:v11 controlPoint1:v12 controlPoint2:{v13, v14, v15, v16}];
      }

      else if (v4 == 4)
      {

        return [result closePath];
      }

      return result;
    }

    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void pBuildBezierPath(void *, const CGPathElement *)"}];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPath.m"), 203, @"kCGPathElementAddQuadCurveToPoint not supported yet"}];
    goto LABEL_12;
  }

  if (v4)
  {
    if (v4 != 1)
    {
      return result;
    }

LABEL_12:
    v7 = *(a2 + 8);
    v8 = *v7;
    v9 = v7[1];

    return [v3 lineToPoint:{v8, v9}];
  }

  v17 = *(a2 + 8);
  v18 = *v17;
  v19 = v17[1];

  return [result moveToPoint:{v18, v19}];
}

void addifclose(uint64_t a1, float *a2)
{
  v4 = 0;
  v36[25] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = 0.0;
  v8 = v6;
  v9 = *a1;
  do
  {
    v10 = *(a1 + v4 + 16);
    v11 = *(a1 + v4 + 24);
    v7 = TSDDistance(v9, v8, v10, v11) + v7;
    v4 += 16;
    v8 = v11;
    v9 = v10;
  }

  while (v4 != 48);
  v12 = TSDDistance(v5, v6, *(a1 + 48), *(a1 + 56));
  if ((v7 - v12) <= 0.1)
  {
    *a2 = *a2 + v7;
  }

  else
  {
    v13 = *(a1 + 16);
    v35[0] = *a1;
    v35[1] = v13;
    v14 = *(a1 + 48);
    v35[2] = *(a1 + 32);
    v35[3] = v14;
    v15 = v36;
    v16 = 3;
    v17 = 1;
    __asm { FMOV            V0.2D, #0.5 }

    do
    {
      v23 = v35[4 * v17 - 4];
      v24 = v16;
      v25 = v15;
      do
      {
        v26 = v25[-3];
        *v25++ = vmlaq_f64(vmulq_f64(v26, _Q0), _Q0, v23);
        v23 = v26;
        --v24;
      }

      while (v24);
      ++v17;
      --v16;
      v15 += 4;
    }

    while (v17 != 4);
    v27 = 0;
    v28 = v35;
    do
    {
      v29 = *v28;
      v28 += 4;
      *&v34[v27] = v29;
      v27 += 16;
    }

    while (v27 != 64);
    v30 = v33;
    v31 = 3;
    v32 = 12;
    do
    {
      *v30++ = v35[v32];
      --v31;
      v32 -= 3;
    }

    while (v31 != -1);
    addifclose(v34, a2);
    addifclose(v33, a2);
  }
}

double p_getMaxMinTailSize(double *a1, double *a2, double *a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v18 = TSDSubtractPoints(a4, a5, a8);
  v20 = TSDDotPoints(a6, a7, v18, v19);
  v21 = TSDDistanceToPointFromLine(a1, a4, a5) * a10 / v20;
  *a2 = fmax(*a2, v21);
  result = fmin(*a3, v21);
  *a3 = result;
  return result;
}

void TSDEllipseParametricAngleWithPolarAngle(double a1, double a2, double a3)
{
  if (a2 != 0.0 && a3 != 0.0)
  {
    v5 = a1;
    for (i = 0.0; v5 >= 360.0; v5 = v5 + -360.0)
    {
      i = i + 1.0;
    }

    for (; v5 < 0.0; v5 = v5 + 360.0)
    {
      i = i + -1.0;
    }

    if (v5 < 0.0 || v5 >= 360.0)
    {
      v7 = [MEMORY[0x277D6C290] currentHandler];
      v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSDEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"}];
      [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 714, @"Angle out of range"}];
    }

    if (v5 / 90.0 - floor(v5 / 90.0) >= 0.01 && ceil(v5 / 90.0) - v5 / 90.0 >= 0.01)
    {
      v9 = __sincos_stret(v5 * 3.14159265 / 180.0);
        ;
      }

        ;
      }

      if (j < 0.0 || j >= 360.0)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"CGFloat TSDEllipseParametricAngleWithPolarAngle(CGFloat, CGFloat, CGFloat)"}];
        [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 736, @"Angle out of range"}];
      }
    }
  }
}

double TSDEllipsePolarAngleWithParametricAngle(double a1, double a2, double a3)
{
  if (a2 == 0.0 || a3 == 0.0)
  {
    return 0.0;
  }

  TSDEllipseParametricAngleWithPolarAngle(a1, 1.0 / a2, 1.0 / a3);
  return result;
}

BOOL triangleIsClockwise(CGPoint a1, CGPoint a2, CGPoint a3)
{
  v3 = a1.x * a2.y - a1.y * a2.x + 0.0;
  v4 = a2.x * a3.y - a2.y * a3.x + v3;
  v5 = a3.x * a1.y - a3.y * a1.x + v4;
  return v5 >= 0.0;
}

int *polygonFromBezier(void *a1)
{
  v1 = a1;
  v16 = *MEMORY[0x277D85DE8];
  if (([a1 isFlat] & 1) == 0)
  {
    v1 = [v1 bezierPathByFlatteningPath];
  }

  v2 = [v1 elementCount];
  if (v2 != v2)
  {
    polygonFromBezier_cold_1();
    return 0;
  }

  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040B05087B7uLL);
  if (v3 && v2)
  {
    LODWORD(v13) = v2;
    v14 = malloc_type_calloc(0x10uLL, v2, 0x1000040451B5BE8uLL);
    if (v2 < 1)
    {
      goto LABEL_28;
    }

    v4 = 0;
    v5 = 0;
    v6 = INFINITY;
    v7 = INFINITY;
    while (1)
    {
      v8 = [v1 elementAtIndex:v4 associatedPoints:{v15, v13}];
      if (v8 <= 1)
      {
        break;
      }

      if (v8 == 2)
      {
        NSLog(@"Warning: Path should be flat. Illegal NSCurveToBezierPathElement.");
LABEL_21:
        v9 = *&v7;
        v10 = *&v6;
LABEL_22:
        v11 = v5;
        goto LABEL_23;
      }

      if (v8 != 3)
      {
        goto LABEL_21;
      }

      LODWORD(v13) = v5;
      TSDgpc_add_contour(v3, &v13, 0);
      v11 = -1;
      v9 = 0x7FF0000000000000;
      v10 = 0x7FF0000000000000;
LABEL_23:
      ++v4;
      v5 = v11 + 1;
      v6 = *&v10;
      v7 = *&v9;
      if ((v2 & 0x7FFFFFFF) == v4)
      {
        if (v11 >= 1)
        {
          LODWORD(v13) = v11 + 1;
          TSDgpc_add_contour(v3, &v13, 0);
        }

LABEL_28:
        free(v14);
        return v3;
      }
    }

    if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_21;
      }

      v9 = *&v15[1];
      v10 = *&v15[0];
      if (vabdd_f64(v15[0], v6) <= 0.699999988 && vabdd_f64(v15[1], v7) <= 0.699999988)
      {
        v11 = v5 - 1;
        v9 = *&v7;
        v10 = *&v6;
        goto LABEL_23;
      }

      *(v14 + v5) = *v15;
    }

    else
    {
      if (v5 >= 2)
      {
        LODWORD(v13) = v5;
        TSDgpc_add_contour(v3, &v13, 0);
        v5 = 0;
      }

      *(v14 + v5) = *v15;
      v9 = *&v15[1];
      v10 = *&v15[0];
    }

    goto LABEL_22;
  }

  return v3;
}

id bezierFromPolygon(int *a1)
{
  v2 = +[TSDBezierPath bezierPath];
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a1 + 2);
      boundsForVertexList(v5 + v3);
      if (v7 > 0.00999999978 && v6 > 0.00999999978)
      {
        addVertexListToPath((v5 + v3), v2);
      }

      ++v4;
      v3 += 16;
    }

    while (v4 < *a1);
  }

  return v2;
}

double boundsForVertexList(uint64_t a1)
{
  if (!a1)
  {
    v2 = [MEMORY[0x277D6C290] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGRect boundsForVertexList(gpc_vertex_list *)"];
    [v2 handleFailureInFunction:v3 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2647, @"Bad list ptr"}];
  }

  v4 = *a1;
  if (*a1 < 1)
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CGRect boundsForVertexList(gpc_vertex_list *)"];
    [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2648, @"Bad vertex count"}];
    v4 = *a1;
  }

  v7 = *(a1 + 8);
  v8 = vcvt_hight_f32_f64(vcvt_f32_f64(*v7), *v7);
  if (v4 > 1)
  {
    v9 = v4;
    v10 = v7 + 1;
    v11 = v9 - 1;
    do
    {
      v12 = vcvt_hight_f64_f32(v8);
      v13 = *v10++;
      v14.i32[0] = vuzp1_s16(vmovn_s64(vcgtq_f64(v13, vcvtq_f64_f32(*v8.f32))), *&v12.f64[0]).u32[0];
      *&v12.f64[0] = vmovn_s64(vcgtq_f64(v12, v13));
      v14.i32[1] = vuzp1_s16(*&v12, *&v12).i32[1];
      v8 = vbslq_s8(vmovl_s16(v14), v8, vcvt_hight_f32_f64(vcvt_f32_f64(v13), v13));
      --v11;
    }

    while (v11);
  }

  return v8.f32[0];
}

uint64_t addVertexListToPath(double **a1, void *a2)
{
  [a2 moveToPoint:{*a1[1], a1[1][1]}];
  if (*a1 >= 2)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      [a2 lineToPoint:{a1[1][v4 + 2], a1[1][v4 + 3]}];
      ++v5;
      v4 += 2;
    }

    while (v5 < *a1);
  }

  return [a2 closePath];
}

int *copyPolygon(int *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040B05087B7uLL);
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      TSDgpc_add_contour(v2, (*(a1 + 2) + v3), *(*(a1 + 1) + 4 * v4++));
      v3 += 16;
    }

    while (v4 < *a1);
  }

  return v2;
}

int *validatePolygon(int *result, double a2)
{
  v2 = result;
  if (*result <= 0)
  {
    v3 = [MEMORY[0x277D6C290] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void validatePolygon(gpc_polygon *)"];
    result = [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2678, @"Bad contour count"}];
  }

  if (!*(v2 + 1))
  {
    v5 = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void validatePolygon(gpc_polygon *)"];
    result = [v5 handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2679, @"Missing hole"}];
  }

  if (!*(v2 + 2))
  {
    v7 = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void validatePolygon(gpc_polygon *)"];
    result = [v7 handleFailureInFunction:v8 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2680, @"Bad contour ptr"}];
  }

  if (*v2 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = (*(v2 + 2) + 16 * v9);
      if (*v10 <= 0)
      {
        v11 = [MEMORY[0x277D6C290] currentHandler];
        v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void validatePolygon(gpc_polygon *)"];
        result = [v11 handleFailureInFunction:v12 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2685, @"Bad vertex count"}];
      }

      if (!*(v10 + 1))
      {
        v13 = [MEMORY[0x277D6C290] currentHandler];
        v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void validatePolygon(gpc_polygon *)"];
        result = [v13 handleFailureInFunction:v14 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2686, @"Bad vertex list"}];
      }

      if (*v10 >= 1)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          a2 = *(*(v10 + 1) + v15 + 8);
          ++v16;
          v15 += 16;
        }

        while (v16 < *v10);
      }

      if (*(*(v2 + 1) + 4 * v9) >= 2u)
      {
        v17 = [MEMORY[0x277D6C290] currentHandler];
        v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void validatePolygon(gpc_polygon *)"];
        result = [v17 handleFailureInFunction:v18 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"), 2693, @"Bad flags"}];
      }

      ++v9;
    }

    while (v9 < *v2);
  }

  return result;
}

uint64_t polygonFromBezier_cold_1()
{
  v0 = [MEMORY[0x277D6C290] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"gpc_polygon *polygonFromBezier(TSDBezierPath *)"];
  v2 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDBezierPathAdditions.mm"];

  return [v0 handleFailureInFunction:v1 file:v2 lineNumber:2545 description:@"Out-of-bounds type assignment failed"];
}

void *gpc_malloc(size_t a1)
{
  pthread_once(&gpc_malloc_once, initialize_blocks);
  pthread_mutex_lock(&gpc_malloc_lock);
  if (a1 <= 0x20 && first_free_block)
  {
    v2 = (first_free_block + 8);
    first_free_block = *first_free_block;
    pthread_mutex_unlock(&gpc_malloc_lock);
  }

  else
  {
    v2 = malloc_type_malloc(a1, 0x11351EC7uLL);
    pthread_mutex_unlock(&gpc_malloc_lock);
    if (!v2)
    {
      NSLog(@"gpc_malloc allocation failure");
    }
  }

  return v2;
}

uint64_t initialize_blocks()
{
  result = pthread_mutex_init(&gpc_malloc_lock, 0);
  if (!blocks)
  {
    result = malloc_type_malloc(0x28000uLL, 0x102004065753CD5uLL);
    blocks = result;
    first_free_block = result;
    v1 = result + 40;
    v2 = 4096;
    do
    {
      *(v1 - 40) = v1;
      v1 += 40;
      --v2;
    }

    while (v2);
    *(result + 163800) = 0;
  }

  return result;
}

void gpc_free(void *a1)
{
  if (a1)
  {
    if (blocks <= a1 && blocks + 163840 > a1)
    {
      pthread_mutex_lock(&gpc_malloc_lock);
      *(a1 - 1) = first_free_block;
      first_free_block = (a1 - 1);

      pthread_mutex_unlock(&gpc_malloc_lock);
    }

    else
    {

      free(a1);
    }
  }
}

void AVLTree::AVLTree(AVLTree *this)
{
  DblLinked::DblLinked(this);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
}

{
  DblLinked::DblLinked(this);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
}

void *AVLTree::MakeNew(AVLTree *this)
{
  result = DblLinked::MakeNew(this);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 4) = 0;
  return result;
}

AVLTree *AVLTree::Leftmost(AVLTree *this)
{
  do
  {
    v1 = this;
    this = *(this + 3);
  }

  while (this);
  return v1;
}

AVLTree *AVLTree::LeftLeaf(AVLTree *this, AVLTree *a2, char a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        result = this;
        if ((a3 & 1) == 0)
        {
          break;
        }

        this = *(this + 3);
        a3 = 1;
        a2 = result;
        if (!this)
        {
          return result;
        }
      }

      this = *(this + 3);
      if (*(result + 4) != a2)
      {
        break;
      }

      a3 = 1;
      a2 = result;
      if (!this)
      {
        goto LABEL_6;
      }
    }

    if (this != a2)
    {
      return 0;
    }

LABEL_6:
    a3 = 0;
    this = *(result + 2);
    a2 = result;
  }

  while (this);
  return 0;
}

AVLTree *AVLTree::RightLeaf(AVLTree **this, AVLTree *a2, char a3)
{
  do
  {
    while (1)
    {
      while (1)
      {
        result = this;
        if ((a3 & 1) == 0)
        {
          break;
        }

        this = this[4];
        a3 = 1;
        a2 = result;
        if (!this)
        {
          return result;
        }
      }

      v5 = this[3];
      this = this[4];
      if (v5 != a2)
      {
        break;
      }

      a3 = 1;
      a2 = result;
      if (!this)
      {
        goto LABEL_6;
      }
    }

    if (this != a2)
    {
      return 0;
    }

LABEL_6:
    a3 = 0;
    this = *(result + 2);
    a2 = result;
  }

  while (this);
  return 0;
}

uint64_t AVLTree::RestoreBalances(uint64_t this, AVLTree *a2, AVLTree **a3)
{
  while (1)
  {
    v3 = this;
    if (a2)
    {
      break;
    }

LABEL_7:
    this = *(this + 16);
    a2 = v3;
    if (!this)
    {
      return this;
    }
  }

  v4 = *(this + 40);
  if (!v4)
  {
    if (*(this + 24) == a2)
    {
      *(this + 40) = 1;
    }

    if (*(this + 32) == a2)
    {
      *(this + 40) = -1;
    }

    goto LABEL_7;
  }

  if (v4 < 1)
  {
    v10 = *(this + 24);
    if (v10 != a2)
    {
      v6 = *(this + 32);
      if (v6)
      {
        v11 = *(v6 + 24);
        v12 = *(v6 + 32);
        v13 = *(this + 16);
        if ((*(v6 + 40) & 0x80000000) != 0)
        {
          *(v6 + 24) = this;
          *(this + 16) = v6;
          *(this + 24) = v10;
          if (v10)
          {
            *(v10 + 2) = this;
          }

          *(this + 32) = v11;
          if (v11)
          {
            *(v11 + 16) = this;
          }

          *(v6 + 32) = v12;
          if (v12)
          {
            *(v12 + 16) = v6;
          }

          *(v6 + 16) = v13;
          if (v13)
          {
            if (*(v13 + 24) == this)
            {
              *(v13 + 24) = v6;
            }

            if (*(v13 + 32) == this)
            {
              *(v13 + 32) = v6;
            }
          }

LABEL_78:
          if (*a3 == this)
          {
            *a3 = v6;
          }

          goto LABEL_80;
        }

        if (v11)
        {
          v15 = *(v11 + 24);
          v14 = *(v11 + 32);
          *(this + 16) = v11;
          *(v6 + 16) = v11;
          *(v11 + 24) = this;
          *(v11 + 32) = v6;
          *(this + 32) = v15;
          if (v15)
          {
            *(v15 + 16) = this;
          }

          *(this + 24) = v10;
          if (v10)
          {
            *(v10 + 2) = this;
          }

          *(v6 + 32) = v12;
          if (v12)
          {
            *(v12 + 16) = v6;
          }

          *(v6 + 24) = v14;
          if (v14)
          {
            *(v14 + 16) = v6;
          }

          *(v11 + 16) = v13;
          if (v13)
          {
            if (*(v13 + 24) == this)
            {
              *(v13 + 24) = v11;
            }

            if (*(v13 + 32) == this)
            {
              *(v13 + 32) = v11;
            }
          }

          if (*a3 == this)
          {
            *a3 = v11;
          }

          v16 = *(v11 + 40);
          *(v11 + 40) = 0;
          if (v16)
          {
            if (v16 >= 1)
            {
              this = 0;
              *(v3 + 10) = 0;
              v17 = -1;
              goto LABEL_85;
            }

            this = 0;
            v22 = 1;
LABEL_83:
            *(v3 + 10) = v22;
            goto LABEL_81;
          }

LABEL_80:
          this = 0;
          *(v3 + 10) = 0;
LABEL_81:
          *(v6 + 40) = 0;
          return this;
        }
      }

      return 1;
    }

LABEL_46:
    this = 0;
    *(v3 + 10) = 0;
    return this;
  }

  v5 = *(this + 32);
  if (v5 == a2)
  {
    goto LABEL_46;
  }

  v6 = *(this + 24);
  if (!v6)
  {
    return 1;
  }

  v8 = *(v6 + 24);
  v7 = *(v6 + 32);
  if (*(v6 + 40) >= 1)
  {
    v9 = *(this + 16);
    *(this + 16) = v6;
    *(v6 + 32) = this;
    *(this + 32) = v5;
    if (v5)
    {
      *(v5 + 2) = this;
    }

    *(this + 24) = v7;
    if (v7)
    {
      *(v7 + 16) = this;
    }

    *(v6 + 24) = v8;
    if (v8)
    {
      *(v8 + 16) = v6;
    }

    *(v6 + 16) = v9;
    if (v9)
    {
      if (*(v9 + 24) == this)
      {
        *(v9 + 24) = v6;
      }

      if (*(v9 + 32) == this)
      {
        *(v9 + 32) = v6;
      }
    }

    goto LABEL_78;
  }

  if (!v7)
  {
    return 1;
  }

  v18 = *(v7 + 24);
  v19 = *(v7 + 32);
  v20 = *(this + 16);
  *(v7 + 24) = v6;
  *(v7 + 32) = this;
  *(this + 16) = v7;
  *(v6 + 16) = v7;
  *(this + 24) = v19;
  if (v19)
  {
    *(v19 + 16) = this;
  }

  *(this + 32) = v5;
  if (v5)
  {
    *(v5 + 2) = this;
  }

  *(v6 + 24) = v8;
  if (v8)
  {
    *(v8 + 16) = v6;
  }

  *(v6 + 32) = v18;
  if (v18)
  {
    *(v18 + 16) = v6;
  }

  *(v7 + 16) = v20;
  if (v20)
  {
    if (*(v20 + 24) == this)
    {
      *(v20 + 24) = v7;
    }

    if (*(v20 + 32) == this)
    {
      *(v20 + 32) = v7;
    }
  }

  if (*a3 == this)
  {
    *a3 = v7;
  }

  v21 = *(v7 + 40);
  *(v7 + 40) = 0;
  if (!v21)
  {
    goto LABEL_80;
  }

  if (v21 >= 1)
  {
    this = 0;
    v22 = -1;
    goto LABEL_83;
  }

  this = 0;
  *(v3 + 10) = 0;
  v17 = 1;
LABEL_85:
  *(v6 + 40) = v17;
  return this;
}

uint64_t AVLTree::RestoreBalances(uint64_t this, int a2, AVLTree **a3)
{
  while (1)
  {
    while (1)
    {
      v3 = this;
      v4 = *(this + 40);
      if (v4 < 1)
      {
        break;
      }

      if (a2 < 0)
      {
LABEL_26:
        *(this + 40) = 0;
        this = *(this + 16);
        if (!this)
        {
          return this;
        }

        a2 = 1;
        if (*(this + 32) != v3)
        {
          v5 = *(this + 24);
          goto LABEL_29;
        }
      }

      else
      {
        if (!a2)
        {
          return 0;
        }

        v5 = *(this + 24);
        if (!v5)
        {
          return 1;
        }

        this = *(this + 16);
        v6 = *(v3 + 32);
        v8 = *(v5 + 24);
        v7 = *(v5 + 32);
        v9 = *(v5 + 40);
        if (v9 < 1)
        {
          if (!v9)
          {
            *(v5 + 32) = v3;
            *(v3 + 24) = v7;
            *(v3 + 32) = v6;
            *(v3 + 16) = v5;
            if (v8)
            {
              *(v8 + 16) = v5;
            }

            if (v6)
            {
              *(v6 + 16) = v3;
            }

            if (v7)
            {
              *(v7 + 16) = v3;
            }

            *(v5 + 16) = this;
            if (this)
            {
              if (*(this + 24) == v3)
              {
                *(this + 24) = v5;
              }

              if (*(this + 32) == v3)
              {
                *(this + 32) = v5;
              }
            }

            if (*a3 == v3)
            {
              *a3 = v5;
            }

            *(v5 + 40) = -1;
LABEL_97:
            v19 = 1;
            goto LABEL_113;
          }

          if (!v7)
          {
            return 1;
          }

          v10 = *(v7 + 24);
          v11 = *(v7 + 32);
          *(v7 + 24) = v5;
          *(v7 + 32) = v3;
          *(v3 + 24) = v11;
          *(v3 + 32) = v6;
          *(v5 + 24) = v8;
          *(v5 + 32) = v10;
          if (v6)
          {
            *(v6 + 16) = v3;
          }

          if (v11)
          {
            *(v11 + 16) = v3;
          }

          if (v8)
          {
            *(v8 + 16) = v5;
          }

          if (v10)
          {
            *(v10 + 16) = v5;
          }

          *(v3 + 16) = v7;
          *(v5 + 16) = v7;
          *(v7 + 16) = this;
          if (this)
          {
            if (*(this + 24) == v3)
            {
              *(this + 24) = v7;
            }

            if (*(this + 32) == v3)
            {
              *(this + 32) = v7;
            }
          }

          if (*a3 == v3)
          {
            *a3 = v7;
          }

          v12 = *(v7 + 40);
          *(v7 + 40) = 0;
          if (v12 < 1)
          {
            v13 = v12 != 0;
            *(v3 + 40) = 0;
          }

          else
          {
            v13 = 0;
            *(v3 + 40) = -1;
          }

          goto LABEL_75;
        }

        *(v5 + 32) = v3;
        *(v3 + 24) = v7;
        *(v3 + 32) = v6;
LABEL_7:
        *(v3 + 16) = v5;
        if (v8)
        {
          *(v8 + 16) = v5;
        }

        if (v6)
        {
          *(v6 + 16) = v3;
        }

        if (v7)
        {
          *(v7 + 16) = v3;
        }

        *(v5 + 16) = this;
        if (this)
        {
          if (*(this + 24) == v3)
          {
            *(this + 24) = v5;
          }

          if (*(this + 32) == v3)
          {
            *(this + 32) = v5;
          }
        }

        if (*a3 == v3)
        {
          *a3 = v5;
        }

        *(v5 + 40) = 0;
        *(v3 + 40) = 0;
        if (!this)
        {
          return this;
        }

        a2 = 1;
        if (v5 != *(this + 32))
        {
          v3 = *(this + 24);
LABEL_29:
          a2 = -1;
          if (v5 != v3)
          {
            return 0;
          }
        }
      }
    }

    if (!v4)
    {
      break;
    }

    if ((a2 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return 0;
      }

      goto LABEL_26;
    }

    v5 = *(this + 32);
    if (!v5)
    {
      return 1;
    }

    this = *(this + 16);
    v6 = *(v3 + 24);
    v7 = *(v5 + 24);
    v8 = *(v5 + 32);
    v14 = *(v5 + 40);
    if (v14 < 0)
    {
      *(v5 + 24) = v3;
      *(v3 + 24) = v6;
      *(v3 + 32) = v7;
      goto LABEL_7;
    }

    if (!v14)
    {
      *(v5 + 24) = v3;
      *(v3 + 24) = v6;
      *(v3 + 32) = v7;
      *(v3 + 16) = v5;
      if (v8)
      {
        *(v8 + 16) = v5;
      }

      if (v6)
      {
        *(v6 + 16) = v3;
      }

      if (v7)
      {
        *(v7 + 16) = v3;
      }

      *(v5 + 16) = this;
      if (this)
      {
        if (*(this + 24) == v3)
        {
          *(this + 24) = v5;
        }

        if (*(this + 32) == v3)
        {
          *(this + 32) = v5;
        }
      }

      if (*a3 == v3)
      {
        *a3 = v5;
      }

      *(v5 + 40) = 1;
      goto LABEL_112;
    }

    if (!v7)
    {
      return 1;
    }

    v16 = *(v7 + 24);
    v15 = *(v7 + 32);
    *(v7 + 24) = v3;
    *(v7 + 32) = v5;
    *(v3 + 24) = v6;
    *(v3 + 32) = v16;
    *(v5 + 24) = v15;
    *(v5 + 32) = v8;
    if (v6)
    {
      *(v6 + 16) = v3;
    }

    if (v16)
    {
      *(v16 + 16) = v3;
    }

    if (v8)
    {
      *(v8 + 16) = v5;
    }

    if (v15)
    {
      *(v15 + 16) = v5;
    }

    *(v3 + 16) = v7;
    *(v5 + 16) = v7;
    *(v7 + 16) = this;
    if (this)
    {
      if (*(this + 24) == v3)
      {
        *(this + 24) = v7;
      }

      if (*(this + 32) == v3)
      {
        *(this + 32) = v7;
      }
    }

    if (*a3 == v3)
    {
      *a3 = v7;
    }

    v17 = *(v7 + 40);
    *(v7 + 40) = 0;
    v18 = v17 >> 31;
    if (v17 <= 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = -1;
    }

    *(v3 + 40) = v18;
LABEL_75:
    *(v5 + 40) = v13;
    if (!this)
    {
      return this;
    }

    a2 = 1;
    if (v7 != *(this + 32))
    {
      a2 = -1;
      if (v7 != *(this + 24))
      {
        return 0;
      }
    }
  }

  if ((a2 & 0x80000000) == 0)
  {
    if (!a2)
    {
      return 0;
    }

    goto LABEL_97;
  }

LABEL_112:
  v19 = -1;
LABEL_113:
  this = 0;
  *(v3 + 40) = v19;
  return this;
}

uint64_t AVLTree::Remove(AVLTree *this, AVLTree **a2, int a3)
{
  v9 = 0;
  v8 = 0;
  result = AVLTree::Remove(this, a2, &v9, &v8);
  if (!result && a3 && v9)
  {
    v6 = v8;
    v7 = v9;

    return AVLTree::RestoreBalances(v7, v6, a2);
  }

  return result;
}

uint64_t AVLTree::Remove(AVLTree *this, AVLTree **a2, AVLTree **a3, int *a4)
{
  DblLinked::Extract(this);
  v9 = *(this + 3);
  v8 = *(this + 4);
  if (v9)
  {
    if (v8)
    {
      v10 = *(this + 3);
      do
      {
        v11 = v10;
        v10 = *(v10 + 32);
      }

      while (v10);
      if (v11 == v9)
      {
        *a3 = v11;
        *a4 = -1;
        v21 = *(this + 4);
        *(v11 + 32) = v21;
        *(v21 + 16) = v11;
        v22 = *(this + 2);
        *(v11 + 16) = v22;
        if (!v22)
        {
          goto LABEL_39;
        }

        if (*(v22 + 24) == this)
        {
          *(v22 + 24) = v11;
        }

        v23 = *(v22 + 32);
        v17 = (v22 + 32);
        if (v23 != this)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = *(v11 + 16);
        *a3 = v12;
        *a4 = 1;
        v13 = *(v11 + 24);
        *(v12 + 4) = v13;
        if (v13)
        {
          *(v13 + 16) = v12;
        }

        v14 = *(this + 1);
        *(v11 + 16) = v14;
        *(v11 + 32) = *(this + 4);
        if (v14)
        {
          if (*(v14 + 24) == this)
          {
            *(v14 + 24) = v11;
          }

          if (*(v14 + 32) == this)
          {
            *(v14 + 32) = v11;
          }
        }

        v15 = *(this + 3);
        if (v15)
        {
          *(v15 + 16) = v11;
        }

        v16 = *(this + 4);
        if (!v16)
        {
          goto LABEL_39;
        }

        v17 = (v16 + 16);
      }

      *v17 = v11;
LABEL_39:
      *(v11 + 40) = *(this + 10);
      goto LABEL_55;
    }

    v18 = *(this + 2);
    *a3 = v18;
    *a4 = 0;
    if (v18)
    {
      v19 = *(v18 + 3);
      if (v19 == this)
      {
        *a4 = -1;
      }

      v20 = *(v18 + 4);
      if (v20 == this)
      {
        *a4 = 1;
      }

      v11 = *(this + 3);
LABEL_31:
      if (v19 == this)
      {
        *(v18 + 3) = v11;
      }

      if (v20 == this)
      {
        *(v18 + 4) = v11;
      }

      goto LABEL_53;
    }

    v11 = *(this + 3);
    goto LABEL_53;
  }

  v18 = *(this + 2);
  *a3 = v18;
  *a4 = 0;
  if (v8)
  {
    if (v18)
    {
      v19 = *(v18 + 3);
      if (v19 == this)
      {
        *a4 = -1;
      }

      v20 = *(v18 + 4);
      if (v20 == this)
      {
        *a4 = 1;
      }

      v11 = *(this + 4);
      goto LABEL_31;
    }

    v11 = *(this + 4);
LABEL_53:
    if (*(v11 + 16) == this)
    {
      *(v11 + 16) = v18;
    }

LABEL_55:
    if (*a2 == this)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  if (v18)
  {
    v24 = *(v18 + 3);
    if (v24 == this)
    {
      *a4 = -1;
    }

    v25 = *(v18 + 4);
    if (v25 == this)
    {
      *a4 = 1;
    }

    if (v24 == this)
    {
      *(v18 + 3) = 0;
    }

    if (v25 == this)
    {
      *(v18 + 4) = 0;
    }
  }

  if (*a2 == this)
  {
    v11 = 0;
LABEL_56:
    *a2 = v11;
  }

LABEL_57:
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  *(this + 4) = 0;
  return 0;
}

uint64_t AVLTree::Insert(AVLTree *this, AVLTree **a2, int a3, AVLTree *a4, AVLTree *a5, int a6)
{
  result = AVLTree::Insert(this, a2, a3, a4, a5);
  if (!result && a6)
  {

    return AVLTree::RestoreBalances(this, 0, a2);
  }

  return result;
}

uint64_t AVLTree::Insert(AVLTree *this, AVLTree **a2, int a3, AVLTree *a4, AVLTree *a5)
{
  v5 = *a2;
  if (!*a2)
  {
    *a2 = this;
    return v5;
  }

  v5 = 3;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      if (a4)
      {
        if (!*(a4 + 4))
        {
          *(a4 + 4) = this;
          *(this + 2) = a4;
          DblLinked::InsertOnRight(this, a4);
          return 0;
        }

        return 3;
      }

      return v5;
    }

    if (a3 != 4 || !a4 || !a5)
    {
      return v5;
    }

    v6 = a5 + 24;
    if (*(a5 + 3))
    {
      v6 = a4 + 32;
      if (*(a4 + 4))
      {
        return 3;
      }

      v7 = a4;
    }

    else
    {
      v7 = a5;
    }

    *v6 = this;
    *(this + 2) = v7;
    v10 = a4;
    v9 = a5;
LABEL_27:
    DblLinked::InsertBetween(this, v10, v9);
    return 0;
  }

  if (a3 == 1)
  {
    if (!a4)
    {
      return v5;
    }

    v8 = *(a4 + 4);
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *(v8 + 3);
      }

      while (v8);
      *(v9 + 3) = this;
      *(this + 2) = v9;
      v10 = *v9;
    }

    else
    {
      *(a4 + 4) = this;
      *(this + 2) = a4;
      v9 = *(a4 + 1);
      v10 = a4;
    }

    goto LABEL_27;
  }

  if (a3 == 2 && a5)
  {
    if (!*(a5 + 3))
    {
      *(a5 + 3) = this;
      *(this + 2) = a5;
      DblLinked::InsertOnLeft(this, a5);
      return 0;
    }

    return 3;
  }

  return v5;
}

uint64_t *AVLTree::Relocate(AVLTree *this, AVLTree *a2)
{
  result = DblLinked::Relocate(this, a2);
  v5 = *(this + 2);
  if (v5)
  {
    if (*(v5 + 24) == this)
    {
      *(v5 + 24) = a2;
    }

    if (*(v5 + 32) == this)
    {
      *(v5 + 32) = a2;
    }
  }

  v6 = *(this + 4);
  if (v6)
  {
    *(v6 + 16) = a2;
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(v7 + 16) = a2;
  }

  v8 = *(this + 2);
  *(a2 + 3) = v7;
  *(a2 + 4) = v6;
  *(a2 + 2) = v8;
  return result;
}

void DblLinked::DblLinked(DblLinked *this)
{
  *this = 0;
  *(this + 1) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
}

void *DblLinked::MakeNew(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

void DblLinked::~DblLinked(DblLinked *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this)
  {
    *(v1 + 8) = v2;
  }

  if (v2)
  {
    *v2 = v1;
  }

  *this = 0;
  *(this + 1) = 0;
}

{
  v1 = *this;
  v2 = *(this + 1);
  if (*this)
  {
    *(v1 + 8) = v2;
  }

  if (v2)
  {
    *v2 = v1;
  }

  *this = 0;
  *(this + 1) = 0;
}

uint64_t *DblLinked::MakeDelete(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this)
  {
    *(v1 + 8) = v2;
  }

  if (v2)
  {
    *v2 = v1;
  }

  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t *DblLinked::Extract(uint64_t *this)
{
  v1 = *this;
  v2 = this[1];
  if (*this)
  {
    *(v1 + 8) = v2;
  }

  if (v2)
  {
    *v2 = v1;
  }

  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t DblLinked::InsertOnLeft(uint64_t this, DblLinked *a2)
{
  *(this + 8) = a2;
  if (a2)
  {
    *a2 = this;
  }

  return this;
}

void *DblLinked::InsertOnRight(void *this, DblLinked *a2)
{
  *this = a2;
  if (a2)
  {
    *(a2 + 1) = this;
  }

  return this;
}

void *DblLinked::InsertBetween(void *this, DblLinked *a2, DblLinked *a3)
{
  if (a2)
  {
    *(a2 + 1) = this;
  }

  if (a3)
  {
    *a3 = this;
  }

  *this = a2;
  this[1] = a3;
  return this;
}

uint64_t *DblLinked::Relocate(uint64_t *this, DblLinked *a2)
{
  v2 = *this;
  if (*this)
  {
    *(v2 + 8) = a2;
  }

  v3 = this[1];
  if (v3)
  {
    *v3 = a2;
    v2 = *this;
  }

  *a2 = v2;
  *(a2 + 1) = v3;
  return this;
}

void FloatLigne::FloatLigne(FloatLigne *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = -1;
  *(this + 5) = -1;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = -1;
  *(this + 5) = -1;
}

void FloatLigne::~FloatLigne(void **this)
{
  if (*(this + 1) >= 1)
  {
    free(this[1]);
    *this = 0;
    this[1] = 0;
  }

  if (*(this + 5) >= 1)
  {
    free(this[3]);
    this[2] = 0;
    this[3] = 0;
  }
}

uint64_t FloatLigne::Reset(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 32) = -1;
  *(this + 40) = -1;
  return this;
}

uint64_t FloatLigne::AddBord(FloatLigne *this, float a2, float a3, float a4, float a5, signed int a6)
{
  if (a2 >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = *this;
  v13 = *this + 1;
  if (v13 >= *(this + 1))
  {
    v16 = 2 * v12 + 2;
    *(this + 1) = v16;
    v14 = malloc_type_realloc(*(this + 1), 44 * v16, 0x10000402DEC8469uLL);
    *(this + 1) = v14;
    v12 = *this;
    v13 = *this + 1;
  }

  else
  {
    v14 = *(this + 1);
  }

  *this = v13;
  v17 = &v14[44 * v12];
  *v17 = a2;
  v17[4] = 1;
  *(v17 + 4) = v13;
  v18 = (a5 - a3) / (a4 - a2);
  if (v12 <= a6)
  {
    v19 = -1;
  }

  else
  {
    v19 = a6;
  }

  *(v17 + 2) = a3;
  *(v17 + 3) = v18;
  *(v17 + 20) = -1;
  *(v17 + 28) = -1;
  FloatLigne::InsertBord(this, v12, v18, v19);
  v15 = *this;
  *this = v15 + 1;
  v20 = *(this + 1);
  v21 = v20 + 44 * v15;
  *v21 = a4;
  *(v21 + 4) = 0;
  *(v21 + 16) = v15 - 1;
  v22 = *(v20 + 44 * (v15 - 1) + 12);
  *(v21 + 8) = a5;
  *(v21 + 12) = v22;
  *(v21 + 20) = -1;
  *(v21 + 28) = -1;
  FloatLigne::InsertBord(this, v15, v22, v15 - 1);
  return v15;
}

unsigned int *FloatLigne::InsertBord(unsigned int *this, unsigned int a2, float a3, unsigned int a4)
{
  if ((a2 & 0x80000000) != 0)
  {
    return this;
  }

  v4 = *this;
  if (v4 <= a2)
  {
    return this;
  }

  v5 = this[10];
  if ((v5 & 0x80000000) != 0)
  {
    this[10] = a2;
    this[11] = a2;
    *(*(this + 1) + 44 * a2 + 28) = -1;
    return this;
  }

  v6 = a4;
  if ((a4 & 0x80000000) != 0 || v4 <= a4)
  {
    do
    {
      if (v5 >= v4)
      {
        break;
      }

      v11 = *(this + 1);
      v12 = v11 + 44 * v5;
      v13 = v11 + 44 * a2;
      if (*v12 == *v13)
      {
        if ((*(v12 + 4) & 1) != 0 || (*(v13 + 4) & 1) == 0)
        {
LABEL_28:
          v18 = *(this + 1);
          v19 = v18 + 44 * v5;
          v22 = *(v19 + 28);
          v20 = (v19 + 28);
          v21 = v22;
          *(v18 + 44 * a2 + 28) = v22;
          if ((v22 & 0x80000000) != 0)
          {
            this[10] = a2;
          }

          else
          {
            *(v18 + 44 * v21 + 32) = a2;
          }

          *(v18 + 44 * a2 + 32) = v5;
          *v20 = a2;
          return this;
        }
      }

      else if (*v12 >= *v13)
      {
        goto LABEL_28;
      }

      v5 = *(v11 + 44 * v5 + 32);
    }

    while ((v5 & 0x80000000) == 0);
    v14 = this[11];
    v15 = *(this + 1);
    *(v15 + 44 * a2 + 28) = v14;
    v16 = v15 + 44 * v14;
LABEL_39:
    *(v16 + 32) = a2;
    this[11] = a2;
    return this;
  }

  v7 = *(this + 1);
  v8 = v7 + 44 * a4;
  v9 = v7 + 44 * a2;
  v10 = *v9;
  if (*v8 != *v9)
  {
    if (*v8 < *v9)
    {
      goto LABEL_31;
    }

    do
    {
LABEL_20:
      if (v6 >= v4)
      {
        break;
      }

      v17 = v7 + 44 * v6;
      if (*v17 == v10)
      {
        if (*(v17 + 4) != 1 || (*(v9 + 4) & 1) != 0)
        {
LABEL_44:
          v26 = v7 + 44 * v6;
          v27 = *(v26 + 32);
          v28 = v7 + 44 * a2;
          *(v28 + 32) = v27;
          v29 = (v7 + 44 * v27 + 28);
          if (v27 < 0)
          {
            v29 = this + 11;
          }

          *v29 = a2;
          *(v28 + 28) = v6;
          *(v26 + 32) = a2;
          return this;
        }
      }

      else if (*v17 < v10)
      {
        goto LABEL_44;
      }

      v6 = *(v7 + 44 * v6 + 28);
    }

    while ((v6 & 0x80000000) == 0);
    *(v7 + 44 * a2 + 32) = v5;
    *(v7 + 44 * v5 + 28) = a2;
    this[10] = a2;
    return this;
  }

  if (*(v8 + 4) == 1)
  {
    if ((*(v9 + 4) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

  if ((*(v9 + 4) & 1) == 0)
  {
LABEL_41:
    v25 = v7 + 44 * a4;
    goto LABEL_48;
  }

  while (1)
  {
LABEL_31:
    if (v6 >= v4)
    {
LABEL_38:
      v24 = this[11];
      *(v7 + 44 * a2 + 28) = v24;
      v16 = v7 + 44 * v24;
      goto LABEL_39;
    }

    v23 = v7 + 44 * v6;
    if (*v23 != v10)
    {
      if (*v23 >= v10)
      {
        break;
      }

      goto LABEL_37;
    }

    if ((*(v23 + 4) & 1) != 0 || (*(v9 + 4) & 1) == 0)
    {
      break;
    }

LABEL_37:
    v6 = *(v7 + 44 * v6 + 32);
    if ((v6 & 0x80000000) != 0)
    {
      goto LABEL_38;
    }
  }

  v25 = v7 + 44 * v6;
LABEL_48:
  v32 = *(v25 + 28);
  v30 = (v25 + 28);
  v31 = v32;
  *(v7 + 44 * a2 + 28) = v32;
  if ((v32 & 0x80000000) != 0)
  {
    this[10] = a2;
  }

  else
  {
    *(v7 + 44 * v31 + 32) = a2;
  }

  *(v7 + 44 * a2 + 32) = v6;
  *v30 = a2;
  return this;
}

uint64_t FloatLigne::AddBord(FloatLigne *this, float a2, float a3, float a4, float a5, float a6, signed int a7)
{
  if (a2 >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = *this;
  v15 = (*this + 1);
  if (v15 >= *(this + 1))
  {
    v17 = 2 * v14 + 2;
    *(this + 1) = v17;
    v16 = malloc_type_realloc(*(this + 1), 44 * v17, 0x10000402DEC8469uLL);
    *(this + 1) = v16;
    v14 = *this;
    v15 = (*this + 1);
  }

  else
  {
    v16 = *(this + 1);
  }

  v18 = &v16[44 * v14];
  *v18 = a2;
  v18[4] = 1;
  if (v14 <= a7)
  {
    v19 = -1;
  }

  else
  {
    v19 = a7;
  }

  *(v18 + 4) = v15;
  *(v18 + 2) = a3;
  *(v18 + 3) = a6;
  *(v18 + 20) = -1;
  *(v18 + 28) = -1;
  *this = v14 + 2;
  v20 = &v16[44 * v15];
  *v20 = a4;
  v20[4] = 0;
  *(v20 + 4) = v14;
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  *(v20 + 20) = -1;
  *(v20 + 28) = -1;
  FloatLigne::InsertBord(this, v14, a2, v19);
  FloatLigne::InsertBord(this, v15, v21, v14);
  return v15;
}

uint64_t FloatLigne::AddBordR(FloatLigne *this, float a2, float a3, float a4, float a5, float a6, int a7)
{
  if (a2 >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = *this;
  v15 = v14 + 1;
  if (v14 + 1 >= *(this + 1))
  {
    v17 = 2 * v14 + 2;
    *(this + 1) = v17;
    v16 = malloc_type_realloc(*(this + 1), 44 * v17, 0x10000402DEC8469uLL);
    *(this + 1) = v16;
    v14 = *this;
    v15 = v14 + 1;
  }

  else
  {
    v16 = *(this + 1);
  }

  v18 = &v16[44 * v14];
  *v18 = a2;
  v18[4] = 1;
  if (v14 <= a7)
  {
    v19 = -1;
  }

  else
  {
    v19 = a7;
  }

  *(v18 + 4) = v15;
  *(v18 + 2) = a3;
  *(v18 + 3) = a6;
  *(v18 + 20) = -1;
  *(v18 + 28) = -1;
  *this = v14 + 2;
  v20 = &v16[44 * v15];
  *v20 = a4;
  v20[4] = 0;
  *(v20 + 4) = v14;
  *(v20 + 2) = a5;
  *(v20 + 3) = a6;
  *(v20 + 20) = -1;
  *(v20 + 28) = -1;
  FloatLigne::InsertBord(this, v15, a2, v19);
  FloatLigne::InsertBord(this, v14, v21, v15);
  return v14;
}

uint64_t FloatLigne::AppendBord(FloatLigne *this, float a2, float a3, float a4, float a5, float a6)
{
  if (a2 >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *this;
  v12 = *(this + 1);
  result = (*this + 1);
  if (result >= v12)
  {
    v16 = 2 * v13 + 2;
    *(this + 1) = v16;
    v15 = malloc_type_realloc(*(this + 1), 44 * v16, 0x10000402DEC8469uLL);
    *(this + 1) = v15;
    v13 = *this;
    result = (*this + 1);
  }

  else
  {
    v15 = *(this + 1);
  }

  v17 = &v15[11 * v13];
  *v17 = a2;
  v17[4] = 1;
  *(v17 + 4) = result;
  *(v17 + 2) = a3;
  *(v17 + 3) = a6;
  *(v17 + 20) = -1;
  v18 = *(this + 11);
  *(v17 + 7) = v18;
  *(v17 + 8) = result;
  if ((v18 & 0x80000000) == 0)
  {
    v15[11 * v18 + 8] = v13;
  }

  if ((*(this + 10) & 0x80000000) != 0)
  {
    *(this + 10) = v13;
  }

  *this = v13 + 2;
  v19 = &v15[11 * result];
  *v19 = a4;
  v19[4] = 0;
  *(v19 + 4) = v13;
  *(v19 + 2) = a5;
  *(v19 + 3) = a6;
  *(v19 + 20) = -1;
  *(v19 + 7) = v13;
  *(v19 + 8) = -1;
  *(this + 11) = result;
  return result;
}

float FloatLigne::RemainingValAt(FloatLigne *this, float a2, int a3)
{
  if (a3 < 1)
  {
    return 0.0;
  }

  v3 = *(this + 1);
  v4 = a3;
  v5 = (v3 + 36);
  v6 = 0.0;
  do
  {
    v7 = *v5;
    v5 += 11;
    v6 = v6 + (*(v3 + 44 * v7 + 8) + ((a2 - *(v3 + 44 * v7)) * *(v3 + 44 * v7 + 12)));
    --v4;
  }

  while (v4);
  return v6;
}

uint64_t FloatLigne::Flatten(uint64_t this)
{
  v1 = this;
  if (*this > 1)
  {
    *(this + 16) = 0;
    *(this + 32) = -1;
    v2 = *(this + 40);
    if ((v2 & 0x80000000) == 0)
    {
      LODWORD(v3) = 0;
      v4 = 0;
      v5 = **(this + 8);
      v6 = 0.0;
      v7 = 0.0;
      v8 = 0.0;
      v9 = 0.0;
      do
      {
        v10 = *v1;
        if (v2 >= v10)
        {
          break;
        }

        v11 = *(v1 + 1);
        v12 = *(v11 + 44 * v2);
        v13 = 0.0;
        if (v2 >= v10)
        {
          v15 = 0.0;
        }

        else
        {
          v3 = v3;
          v14 = (v11 + 44 * v3 - 8);
          v15 = 0.0;
          do
          {
            v16 = v11 + 44 * v2;
            if (*v16 != v12 || (*(v16 + 4) & 1) != 0)
            {
              break;
            }

            v17 = *(v16 + 16);
            if ((v17 & 0x80000000) == 0 && v17 < v10)
            {
              v18 = *(v11 + 44 * v17 + 40);
              if ((v18 & 0x80000000) == 0 && v3 > v18)
              {
                v19 = *v14;
                *(v11 + 44 * v18 + 36) = *v14;
                *(v11 + 44 * v19 + 40) = v18;
              }
            }

            v15 = v15 + *(v16 + 12);
            --v3;
            v2 = *(v11 + 44 * v2 + 32);
            if ((v2 & 0x80000000) != 0)
            {
              break;
            }

            v14 -= 11;
          }

          while (v2 < v10);
        }

        if ((v2 & 0x80000000) == 0 && v2 < v10)
        {
          v20 = (v11 + 44 * v3 + 36);
          v13 = 0.0;
          do
          {
            v21 = v11 + 44 * v2;
            if (*v21 != v12)
            {
              break;
            }

            if (*(v21 + 4) != 1)
            {
              break;
            }

            v13 = v13 + *(v21 + 12);
            *v20 = v2;
            v20 += 11;
            v22 = v11 + 44 * v2;
            *(v22 + 40) = v3;
            v2 = *(v22 + 32);
            LODWORD(v3) = v3 + 1;
            if ((v2 & 0x80000000) != 0)
            {
              break;
            }
          }

          while (v2 < v10);
        }

        if (v4)
        {
          this = FloatLigne::AddRun(v1, v9, v12, v8, v7 + (v6 * (v12 - v5)), v6);
        }

        v4 = v3 > 0;
        if (v3 < 1)
        {
          v7 = 0.0;
        }

        else
        {
          v23 = *(v1 + 1);
          v24 = v3;
          v25 = (v23 + 36);
          v8 = 0.0;
          do
          {
            v26 = *v25;
            v25 += 11;
            v8 = v8 + (*(v23 + 44 * v26 + 8) + ((v12 - *(v23 + 44 * v26)) * *(v23 + 44 * v26 + 12)));
            --v24;
          }

          while (v24);
          v9 = v12;
          v7 = v8;
        }

        v6 = v6 + (v13 - v15);
        v5 = v12;
      }

      while ((v2 & 0x80000000) == 0);
    }
  }

  else
  {
    *this = 0;
    *(this + 16) = 0;
    *(this + 32) = -1;
    *(this + 40) = -1;
  }

  return this;
}

uint64_t FloatLigne::AddRun(FloatLigne *this, float a2, float a3, float a4, float a5, float a6)
{
  if (a2 >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(this + 4);
  if (result >= *(this + 5))
  {
    v14 = (2 * result) | 1;
    *(this + 5) = v14;
    v13 = malloc_type_realloc(*(this + 3), 20 * v14, 0x1000040A86A77D5uLL);
    *(this + 3) = v13;
    result = *(this + 4);
  }

  else
  {
    v13 = *(this + 3);
  }

  *(this + 4) = result + 1;
  v15 = &v13[20 * result];
  *v15 = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = a6;
  return result;
}

uint64_t FloatLigne::Affiche(FloatLigne *this)
{
  printf("%i : \n", *this);
  if (*this >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      printf("(%f %f %f %i) ", *(*(this + 1) + v2), *(*(this + 1) + v2 + 8), *(*(this + 1) + v2 + 12), *(*(this + 1) + v2 + 4));
      ++v3;
      v2 += 44;
    }

    while (v3 < *this);
  }

  putchar(10);
  printf("%i : \n", *(this + 4));
  if (*(this + 4) >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      printf("(%f %f -> %f %f) ", *(*(this + 3) + v4), *(*(this + 3) + v4 + 8), *(*(this + 3) + v4 + 4), *(*(this + 3) + v4 + 12));
      ++v5;
      v4 += 20;
    }

    while (v5 < *(this + 4));
  }

  return putchar(10);
}

float FloatLigne::AddRun(FloatLigne *this, float result, float a3, float a4, float a5)
{
  if (result < a3)
  {
    v8 = result;
    v10 = *(this + 4);
    if (v10 >= *(this + 5))
    {
      v12 = (2 * v10) | 1;
      *(this + 5) = v12;
      v11 = malloc_type_realloc(*(this + 3), 20 * v12, 0x1000040A86A77D5uLL);
      *(this + 3) = v11;
      v10 = *(this + 4);
    }

    else
    {
      v11 = *(this + 3);
    }

    *(this + 4) = v10 + 1;
    v13 = &v11[20 * v10];
    *v13 = v8;
    v13[1] = a3;
    v13[2] = a4;
    v13[3] = a5;
    result = (a5 - a4) / (a3 - v8);
    v13[4] = result;
  }

  return result;
}

void **FloatLigne::Copy(void **this, FloatLigne *a2)
{
  v2 = this;
  v3 = *(a2 + 4);
  *this = 0;
  if (v3 <= 0)
  {
    *(this + 4) = 0;
    this[4] = -1;
    this[5] = -1;
  }

  else
  {
    *(this + 4) = v3;
    if (v3 <= *(this + 5))
    {
      v5 = this[3];
    }

    else
    {
      *(this + 5) = v3;
      v5 = malloc_type_realloc(this[3], 20 * v3, 0x1000040A86A77D5uLL);
      v2[3] = v5;
      LODWORD(v3) = *(v2 + 4);
    }

    v6 = *(a2 + 3);

    return memcpy(v5, v6, 20 * v3);
  }

  return this;
}

void **FloatLigne::Copy(void **result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  *result = 0;
  if (v3 <= 0)
  {
    *(result + 4) = 0;
    result[4] = -1;
    result[5] = -1;
  }

  else
  {
    *(result + 4) = v3;
    if (v3 <= *(result + 5) || (*(result + 5) = 2 * v3, result = malloc_type_realloc(result[3], 40 * v3, 0x1000040A86A77D5uLL), v2[3] = result, LODWORD(v3) = *(v2 + 4), v3 >= 1))
    {
      v3 = v3;
      v5 = v2[3] + 8;
      v6 = (*(a2 + 24) + 8);
      do
      {
        *(v5 - 1) = vcvt_f32_s32(*(v6 - 1));
        v7 = *v6;
        v6 += 2;
        *v5 = v7;
        v5 = (v5 + 20);
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

void FloatLigne::Booleen(uint64_t a1, uint64_t a2, FloatLigne *a3, int a4)
{
  v5 = a3;
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = -1;
  v6 = *(a2 + 16);
  v7 = *(a3 + 4);
  if (v6 <= 0)
  {
    if (v7 < 1 || a4 && a4 != 3)
    {
      return;
    }

    goto LABEL_116;
  }

  if (v7 <= 0)
  {
    if (a4 > 3)
    {
      return;
    }

    v5 = a2;
    if (a4 == 1)
    {
      return;
    }

LABEL_116:

    FloatLigne::Copy(a1, v5);
    return;
  }

  v9 = *(a2 + 24);
  v10 = *(a3 + 3);
  if (*v9 >= *v10)
  {
    v11 = *v10;
  }

  else
  {
    v11 = *v9;
  }

  v12 = 0.0;
  v13 = 0.0;
  if (v11 == *v9)
  {
    v13 = v9[2];
  }

  if (v11 == *v10)
  {
    v12 = v10[2];
  }

  if (*(a3 + 4) >= 1)
  {
    v14 = 0;
    LODWORD(v15) = 0;
    v16 = v11;
    while (1)
    {
      v17 = (*(a2 + 24) + 20 * v15);
      v18 = *v17;
      v19 = v17[1];
      v20 = (*(v5 + 3) + 20 * v14);
      v21 = *v20;
      v22 = v20[1];
      v24 = v16 < v19 && v16 >= v18;
      v26 = v16 < v22 && v16 >= v21;
      v80 = v14;
      if (v16 >= v18)
      {
        if (v16 >= v21)
        {
          v36 = v19 == v22;
          if (v19 == v22)
          {
            v37 = v17[1];
          }

          else
          {
            v37 = v20[1];
          }

          if (v19 < v22)
          {
            v36 = 1;
            v37 = v17[1];
          }

          v38 = v19 == v22;
          if (v19 == v22)
          {
            v39 = v17[1];
          }

          else
          {
            v39 = v20[1];
          }

          if (v19 < v22)
          {
            v38 = 1;
            v39 = v17[1];
          }

          v32 = v19 >= v22;
          if (v16 == v21)
          {
            v33 = v38;
          }

          else
          {
            v33 = v36;
          }

          v34 = 0;
          v35 = 0;
          if (v16 == v21)
          {
            v11 = v39;
          }

          else
          {
            v11 = v37;
          }
        }

        else
        {
          v32 = 0;
          v33 = v19 < v21 || v19 == v21;
          v34 = v19 >= v21;
          v35 = 0;
          if (v19 >= v21)
          {
            v11 = *v20;
          }

          else
          {
            v11 = v17[1];
          }
        }
      }

      else
      {
        v27 = v18 == v22;
        if (v18 == v22)
        {
          v28 = *v17;
        }

        else
        {
          v28 = v20[1];
        }

        v29 = v18 >= v22;
        if (v18 < v22)
        {
          v27 = 1;
          v28 = *v17;
        }

        if (v16 < v21)
        {
          v29 = 0;
          v27 = 0;
          v28 = v16;
        }

        v30 = v18 == v21;
        if (v18 == v21)
        {
          v31 = *v17;
        }

        else
        {
          v31 = *v20;
        }

        if (v18 < v21)
        {
          v30 = 1;
          v31 = *v17;
        }

        v32 = v16 >= v21 && v29;
        v33 = 0;
        v34 = v16 < v21 && v18 >= v21;
        if (v16 < v21)
        {
          v35 = v30;
        }

        else
        {
          v35 = v27;
        }

        if (v16 < v21)
        {
          v11 = v31;
        }

        else
        {
          v11 = v28;
        }
      }

      v40 = v17[2];
      v41 = 0.0;
      v42 = 0.0;
      if (v24)
      {
        v42 = ((v40 * (v19 - v11)) + ((v11 - v18) * v17[3])) / (v19 - v18);
      }

      v43 = v20[2];
      if (v26)
      {
        v41 = ((v43 * (v22 - v11)) + ((v11 - v21) * v20[3])) / (v22 - v21);
      }

      if (a4 > 1)
      {
        if (a4 != 2)
        {
          if (a4 != 3)
          {
            goto LABEL_92;
          }

          if (!v26 && v24)
          {
            FloatLigne::AddRun(a1, v16, v11, v13 - v12, v42 - v41);
          }

          if (v24 || !v26)
          {
            goto LABEL_92;
          }

          v44 = v12 - v13;
          v45 = v41 - v42;
          goto LABEL_91;
        }

        if (v24)
        {
          v44 = v13 - v12;
          v45 = v42 - v41;
          goto LABEL_91;
        }
      }

      else if (a4)
      {
        if (a4 == 1 && v24 && v26)
        {
          v44 = v12 * v13;
          v45 = v42 * v41;
LABEL_91:
          FloatLigne::AddRun(a1, v16, v11, v44, v45);
        }
      }

      else if (v24 || v26)
      {
        v44 = v12 + v13;
        v45 = v42 + v41;
        goto LABEL_91;
      }

LABEL_92:
      if (v35)
      {
        v13 = v40;
      }

      else
      {
        v13 = v42;
      }

      if (v34)
      {
        v12 = v43;
      }

      else
      {
        v12 = v41;
      }

      if (v33)
      {
        v15 = v15 + 1;
        v13 = 0.0;
        v14 = v80;
        if (v15 < *(a2 + 16))
        {
          v46 = (*(a2 + 24) + 20 * v15);
          if (*v46 == v11)
          {
            v13 = v46[2];
          }
        }
      }

      else
      {
        v14 = v80;
      }

      if (v32)
      {
        v14 = v14 + 1;
        v12 = 0.0;
        if (v14 < *(v5 + 4))
        {
          v47 = (*(v5 + 3) + 20 * v14);
          if (*v47 == v11)
          {
            v12 = v47[2];
          }
        }
      }

      v6 = *(a2 + 16);
      if (v15 < v6)
      {
        v16 = v11;
        if (v14 < *(v5 + 4))
        {
          continue;
        }
      }

      goto LABEL_120;
    }
  }

  LODWORD(v14) = 0;
  LODWORD(v15) = 0;
LABEL_120:
  if (v15 < v6)
  {
    do
    {
      v48 = v11;
      v49 = (*(a2 + 24) + 20 * v15);
      v51 = *v49;
      v50 = v49[1];
      v52 = v49[2];
      v53 = v11 >= *v49;
      if (v11 < *v49)
      {
        v54 = *v49;
      }

      else
      {
        v54 = v11;
      }

      if (v11 < *v49)
      {
        v11 = v54;
      }

      else
      {
        v11 = v49[1];
      }

      if (v48 >= v50)
      {
        v53 = 0;
      }

      v55 = 0.0;
      if (v53)
      {
        v55 = ((v52 * (v50 - v11)) + ((v11 - v51) * v49[3])) / (v50 - v51);
      }

      if (a4 == 3 || a4 == 2)
      {
        if (v53)
        {
          v56 = v13 - v12;
          v58 = a1;
          v59 = v48;
          v60 = v11;
          v57 = v55;
          goto LABEL_138;
        }
      }

      else if (!a4 && v53)
      {
        v56 = v12 + v13;
        v57 = v55 + 0.0;
        v58 = a1;
        v59 = v48;
        v60 = v11;
LABEL_138:
        FloatLigne::AddRun(v58, v59, v60, v56, v57);
      }

      if (v48 < v51)
      {
        v13 = v52;
      }

      else
      {
        v13 = v55;
      }

      v61 = *(a2 + 16);
      if (v48 >= v51)
      {
        v15 = v15 + 1;
        v13 = 0.0;
        if (v15 < v61)
        {
          v62 = (*(a2 + 24) + 20 * v15);
          if (*v62 == v50)
          {
            v13 = v62[2];
          }
        }
      }

      v12 = 0.0;
    }

    while (v15 < v61);
  }

  if (v14 < *(v5 + 4))
  {
    LODWORD(v63) = v14;
    do
    {
      v64 = v11;
      v65 = (*(v5 + 3) + 20 * v63);
      v67 = *v65;
      v66 = v65[1];
      v68 = v65[2];
      v69 = v11 >= *v65;
      if (v11 < *v65)
      {
        v70 = *v65;
      }

      else
      {
        v70 = v11;
      }

      if (v11 < *v65)
      {
        v11 = v70;
      }

      else
      {
        v11 = v65[1];
      }

      if (v64 >= v66)
      {
        v69 = 0;
      }

      v71 = 0.0;
      if (v69)
      {
        v71 = ((v68 * (v66 - v11)) + ((v11 - v67) * v65[3])) / (v66 - v67);
      }

      if (a4 == 3)
      {
        if (v69)
        {
          v72 = v12 - v13;
          v74 = a1;
          v75 = v64;
          v76 = v11;
          v73 = v71;
          goto LABEL_165;
        }
      }

      else if (!a4 && v69)
      {
        v72 = v12 + v13;
        v73 = v71 + 0.0;
        v74 = a1;
        v75 = v64;
        v76 = v11;
LABEL_165:
        FloatLigne::AddRun(v74, v75, v76, v72, v73);
      }

      if (v64 < v67)
      {
        v12 = v68;
      }

      else
      {
        v12 = v71;
      }

      v77 = *(v5 + 4);
      if (v64 >= v67)
      {
        v63 = v63 + 1;
        v12 = 0.0;
        if (v63 < v77)
        {
          v78 = (*(v5 + 3) + 20 * v63);
          if (*v78 == v66)
          {
            v12 = v78[2];
          }
        }
      }

      v13 = 0.0;
    }

    while (v63 < v77);
  }
}

void FloatLigne::Min(FloatLigne *this, FloatLigne *a2, float a3, int a4)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 4) = -1;
  *(this + 5) = -1;
  if (*(a2 + 4) < 1)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v13 = (*(a2 + 3) + v8);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    if (v17 <= a3)
    {
      if (v16 <= a3)
      {
        if (v10)
        {
          v24 = v15 + -0.00001;
          if (v24 <= v12)
          {
            v25 = v11;
          }

          else
          {
            v25 = *v13;
          }

          if (v24 <= v12 || a4 == 0)
          {
            v10 = 1;
            v12 = v13[1];
            v11 = v25;
            goto LABEL_34;
          }

          FloatLigne::AddRun(this, v11, v12, a3, a3);
        }

        v10 = 1;
        v12 = v14;
        v11 = v15;
        goto LABEL_34;
      }

      v23 = ((v14 * (v17 - a3)) + (v15 * (a3 - v16))) / (v17 - v16);
      if (v10)
      {
        if (v15 + -0.00001 <= v12)
        {
          if (a4)
          {
            v27 = this;
            v28 = v11;
            goto LABEL_30;
          }
        }

        else if (a4)
        {
          FloatLigne::AddRun(this, v11, v12, a3, a3);
LABEL_27:
          v27 = this;
          v28 = v15;
LABEL_30:
          FloatLigne::AddRun(v27, v28, v23, a3, a3);
        }
      }

      else if (a4)
      {
        goto LABEL_27;
      }

      v19 = this;
      v20 = v23;
      v21 = v14;
      v22 = a3;
LABEL_32:
      FloatLigne::AddRun(v19, v20, v21, v22, v16);
      v10 = 0;
      goto LABEL_34;
    }

    v18 = v10 & a4;
    if (v16 > a3)
    {
      if (v18 == 1)
      {
        FloatLigne::AddRun(this, v11, v12, a3, a3);
      }

      v19 = this;
      v20 = v15;
      v21 = v14;
      v22 = v17;
      goto LABEL_32;
    }

    if (v18 == 1)
    {
      FloatLigne::AddRun(this, v11, v12, a3, a3);
    }

    v11 = ((v14 * (a3 - v17)) + (v15 * (v16 - a3))) / (v16 - v17);
    FloatLigne::AddRun(this, v15, v11, v17, a3);
    v10 = 1;
    v12 = v14;
LABEL_34:
    ++v9;
    v8 += 20;
  }

  while (v9 < *(a2 + 4));
  if (v10 & a4)
  {

    FloatLigne::AddRun(this, v11, v12, a3, a3);
  }
}

void FloatLigne::Split(FloatLigne *this, FloatLigne *a2, float a3, FloatLigne *a4)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 4) = -1;
  *(this + 5) = -1;
  if (*(a2 + 4) >= 1)
  {
    v8 = 0;
    for (i = 0; i < *(a2 + 4); ++i)
    {
      v10 = (*(a2 + 3) + v8);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      v14 = v10[3];
      if (v13 >= a3)
      {
        if (v14 < a3)
        {
          v16 = (v12 * (v13 - a3)) + (v11 * (a3 - v14));
          v17 = v16 / (v13 - v14);
          if (a4)
          {
            FloatLigne::AddRun(a4, v11, v16 / (v13 - v14), v13, a3);
          }

          v15 = this;
LABEL_12:
          v11 = v17;
          v18 = v12;
          v13 = a3;
LABEL_16:
          FloatLigne::AddRun(v15, v11, v18, v13, v14);
          goto LABEL_17;
        }

        if (a4)
        {
          v15 = a4;
LABEL_15:
          v18 = v10[1];
          goto LABEL_16;
        }
      }

      else
      {
        if (v14 < a3)
        {
          v15 = this;
          goto LABEL_15;
        }

        v17 = ((v12 * (a3 - v13)) + (v11 * (v14 - a3))) / (v14 - v13);
        FloatLigne::AddRun(this, v11, v17, v13, a3);
        if (a4)
        {
          v15 = a4;
          goto LABEL_12;
        }
      }

LABEL_17:
      v8 += 20;
    }
  }
}

void FloatLigne::Max(FloatLigne *this, FloatLigne *a2, float a3, int a4)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 4) = -1;
  *(this + 5) = -1;
  if (*(a2 + 4) < 1)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  v12 = 0.0;
  do
  {
    v13 = (*(a2 + 3) + v8);
    v15 = *v13;
    v14 = v13[1];
    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= a3)
    {
      if (v16 >= a3)
      {
        if (v10)
        {
          v24 = v15 + -0.00001;
          if (v24 <= v12)
          {
            v25 = v11;
          }

          else
          {
            v25 = *v13;
          }

          if (v24 <= v12 || a4 == 0)
          {
            v10 = 1;
            v12 = v13[1];
            v11 = v25;
            goto LABEL_34;
          }

          FloatLigne::AddRun(this, v11, v12, a3, a3);
        }

        v10 = 1;
        v12 = v14;
        v11 = v15;
        goto LABEL_34;
      }

      v23 = ((v14 * (v17 - a3)) + (v15 * (a3 - v16))) / (v17 - v16);
      if (v10)
      {
        if (v15 + -0.00001 <= v12)
        {
          if (a4)
          {
            v27 = this;
            v28 = v11;
            goto LABEL_30;
          }
        }

        else if (a4)
        {
          FloatLigne::AddRun(this, v11, v12, a3, a3);
LABEL_27:
          v27 = this;
          v28 = v15;
LABEL_30:
          FloatLigne::AddRun(v27, v28, v23, a3, a3);
        }
      }

      else if (a4)
      {
        goto LABEL_27;
      }

      v19 = this;
      v20 = v23;
      v21 = v14;
      v22 = a3;
LABEL_32:
      FloatLigne::AddRun(v19, v20, v21, v22, v16);
      v10 = 0;
      goto LABEL_34;
    }

    v18 = v10 & a4;
    if (v16 < a3)
    {
      if (v18 == 1)
      {
        FloatLigne::AddRun(this, v11, v12, a3, a3);
      }

      v19 = this;
      v20 = v15;
      v21 = v14;
      v22 = v17;
      goto LABEL_32;
    }

    if (v18 == 1)
    {
      FloatLigne::AddRun(this, v11, v12, a3, a3);
    }

    v11 = ((v14 * (a3 - v17)) + (v15 * (v16 - a3))) / (v16 - v17);
    FloatLigne::AddRun(this, v15, v11, v17, a3);
    v10 = 1;
    v12 = v14;
LABEL_34:
    ++v9;
    v8 += 20;
  }

  while (v9 < *(a2 + 4));
  if (v10 & a4)
  {

    FloatLigne::AddRun(this, v11, v12, a3, a3);
  }
}

void FloatLigne::Over(FloatLigne *this, FloatLigne *a2, float a3)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 4) = -1;
  *(this + 5) = -1;
  if (*(a2 + 4) < 1)
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    v11 = (*(a2 + 3) + v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];
    if (v14 < a3)
    {
      if (v15 >= a3)
      {
        v12 = ((v13 * (a3 - v14)) + (v12 * (v15 - a3))) / (v15 - v14);
        if (v8)
        {
LABEL_16:
          FloatLigne::AddRun(this, v9, v10, a3, a3);
        }

LABEL_17:
        v8 = 1;
        v10 = v13;
        v9 = v12;
        goto LABEL_22;
      }

      if ((v8 & 1) == 0)
      {
        goto LABEL_21;
      }

      v16 = this;
      v17 = v9;
      v18 = v10;
LABEL_20:
      FloatLigne::AddRun(v16, v17, v18, a3, a3);
LABEL_21:
      v8 = 0;
      goto LABEL_22;
    }

    if (v15 < a3)
    {
      v19 = ((v13 * (v14 - a3)) + (v12 * (a3 - v15))) / (v14 - v15);
      if (v8)
      {
        v16 = this;
        if (v12 + -0.00001 <= v10)
        {
          v17 = v9;
          goto LABEL_19;
        }

        FloatLigne::AddRun(this, v9, v10, a3, a3);
      }

      v16 = this;
      v17 = v12;
LABEL_19:
      v18 = v19;
      goto LABEL_20;
    }

    if ((v8 & 1) == 0)
    {
      goto LABEL_17;
    }

    if (v12 + -0.00001 > v10)
    {
      goto LABEL_16;
    }

    v8 = 1;
    v10 = v11[1];
LABEL_22:
    ++v7;
    v6 += 20;
  }

  while (v7 < *(a2 + 4));
  if (v8)
  {

    FloatLigne::AddRun(this, v9, v10, a3, a3);
  }
}

double FloatLigne::Enqueue(FloatLigne *this, int a2)
{
  if ((*(this + 8) & 0x80000000) != 0)
  {
    *(this + 8) = a2;
    *(this + 9) = a2;
    result = NAN;
    *(*(this + 1) + 44 * a2 + 20) = -1;
  }

  else
  {
    v2 = *(this + 1);
    v3 = v2 + 44 * a2;
    v4 = *(this + 9);
    *(v3 + 20) = v4;
    *(v3 + 24) = -1;
    *(v2 + 44 * v4 + 24) = a2;
    *(this + 9) = a2;
  }

  return result;
}

double FloatLigne::Dequeue(FloatLigne *this, int a2)
{
  v2 = *(this + 9);
  if (*(this + 8) == a2)
  {
    if (v2 == a2)
    {
      *(this + 4) = -1;
    }

    else
    {
      *(this + 8) = *(*(this + 1) + 44 * a2 + 24);
    }
  }

  else if (v2 == a2)
  {
    *(this + 9) = *(*(this + 1) + 44 * a2 + 20);
  }

  v3 = *(this + 1);
  v4 = v3 + 44 * a2;
  v5 = *(v4 + 20);
  v6 = *(v4 + 24);
  if ((v5 & 0x80000000) == 0)
  {
    *(v3 + 44 * v5 + 24) = v6;
  }

  if ((v6 & 0x80000000) == 0)
  {
    *(v3 + 44 * v6 + 20) = v5;
  }

  result = NAN;
  *(v3 + 44 * a2 + 20) = -1;
  return result;
}

void IntLigne::IntLigne(IntLigne *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = -1;
}

{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = -1;
}

void IntLigne::~IntLigne(void **this)
{
  if (*(this + 1) >= 1)
  {
    free(this[1]);
    *this = 0;
    this[1] = 0;
  }

  if (*(this + 5) >= 1)
  {
    free(this[3]);
    this[2] = 0;
    this[3] = 0;
  }
}

double IntLigne::Reset(IntLigne *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = NAN;
  *(this + 4) = -1;
  return result;
}

double IntLigne::AddBord(IntLigne *this, int a2, float a3, int a4, float a5)
{
  v10 = *this;
  v11 = v10 + 1;
  if (v10 + 1 >= *(this + 1))
  {
    v13 = 2 * v10 + 2;
    *(this + 1) = v13;
    v12 = malloc_type_realloc(*(this + 1), 24 * v13, 0x1000040C4EE764BuLL);
    *(this + 1) = v12;
    v10 = *this;
    v11 = *this + 1;
  }

  else
  {
    v12 = *(this + 1);
  }

  v14 = &v12[24 * v10];
  *v14 = a2;
  v14[2] = a3;
  *(v14 + 4) = 1;
  *(v14 + 3) = v11;
  result = NAN;
  *(v14 + 2) = -1;
  *this = v10 + 2;
  v16 = &v12[24 * v11];
  *v16 = a4;
  v16[2] = a5;
  *(v16 + 4) = 0;
  *(v16 + 3) = v10;
  *(v16 + 2) = -1;
  return result;
}

double IntLigne::RemainingValAt(IntLigne *this, int a2)
{
  v2 = *(this + 8);
  if ((v2 & 0x80000000) != 0)
  {
    return 0.0;
  }

  v3 = *(this + 1);
  result = 0.0;
  do
  {
    v5 = v3 + 24 * v2;
    v6 = v3 + 24 * *(v5 + 12);
    *&result = *&result + (((*(v6 + 8) * (*v5 - a2)) + ((a2 - *v6) * *(v5 + 8))) / (*v5 - *v6));
    v2 = *(v5 + 20);
  }

  while ((v2 & 0x80000000) == 0);
  return result;
}

void IntLigne::Flatten(IntLigne *this)
{
  v2 = *this;
  if (v2 > 1)
  {
    v3 = 0;
    *(this + 4) = 0;
    *(this + 4) = -1;
    v4 = *(this + 1);
    v5 = vdupq_n_s64(v2 - 1);
    v6 = xmmword_26CA63D50;
    v7 = xmmword_26CA639B0;
    v8 = vdupq_n_s64(4uLL);
    v9 = v4 + 16;
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v5, v7));
      if (vuzp1_s16(v10, *v5.i8).u8[0])
      {
        *(v9 - 12) = v3;
      }

      if (vuzp1_s16(v10, *&v5).i8[2])
      {
        *(v9 - 6) = v3 + 1;
      }

      if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, *&v6))).i32[1])
      {
        *v9 = v3 + 2;
        v9[6] = v3 + 3;
      }

      v3 += 4;
      v6 = vaddq_s64(v6, v8);
      v7 = vaddq_s64(v7, v8);
      v9 += 24;
    }

    while (((v2 + 3) & 0xFFFFFFFC) != v3);
    qsort(v4, v2, 0x18uLL, IntLigne::CmpBord);
    v11 = *this;
    if (v11 >= 1)
    {
      v12 = 0;
      v13 = *(this + 1);
      v14 = (v13 + 16);
      do
      {
        v15 = *v14;
        v14 += 6;
        *(v13 + 24 * v15 + 20) = v12++;
      }

      while (v11 != v12);
      v16 = *(this + 1);
      v17 = (v16 + 12);
      v18 = v11;
      do
      {
        *v17 = *(v16 + 24 * *v17 + 20);
        v17 += 6;
        --v18;
      }

      while (v18);
      LODWORD(v19) = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0.0;
      do
      {
        v23 = *(this + 1);
        v24 = *(v23 + 24 * v19);
        if (v19 < v11 && (v25 = v19, v26 = v23 + 24 * v19, *v26 == v24))
        {
          v27 = 24 * v19;
          v28 = v25 + 1;
          v29 = 0.0;
          while (1)
          {
            if (*(v26 + 4))
            {
LABEL_23:
              LODWORD(v19) = v25;
              goto LABEL_25;
            }

            IntLigne::Dequeue(this, v25);
            v30 = *(this + 1);
            v31 = v30 + v27;
            v29 = v29 + *(v30 + v27 + 8);
            v11 = *this;
            if (v28 >= v11)
            {
              break;
            }

            ++v25;
            v26 = v30 + 24 * v25;
            v27 += 24;
            ++v28;
            if (*(v31 + 24) != v24)
            {
              goto LABEL_23;
            }
          }

          LODWORD(v19) = v25 + 1;
        }

        else
        {
          v29 = 0.0;
        }

LABEL_25:
        v32 = IntLigne::RemainingValAt(this, v24);
        v33 = *&v32;
        v34 = 0.0;
        if (v19 < v11)
        {
          v35 = *(this + 1) + 24 * v19;
          if (*v35 == v24)
          {
            v19 = v19;
            v36 = 24 * v19 + 24;
            do
            {
              if (*(v35 + 4) != 1)
              {
                break;
              }

              v34 = v34 + *(v35 + 8);
              IntLigne::Enqueue(this, *(v35 + 12));
              ++v19;
              v11 = *this;
              if (v19 >= v11)
              {
                break;
              }

              v37 = *(this + 1);
              v35 = v37 + 24 * v19;
              LODWORD(v37) = *(v37 + v36);
              v36 += 24;
            }

            while (v37 == v24);
          }
        }

        if (v20)
        {
          IntLigne::AddRun(this, v21, v24, v22, v29 + v33);
          LODWORD(v11) = *this;
        }

        v38 = *(this + 8);
        v20 = v38 >= 0;
        if (v38 >= 0)
        {
          v21 = v24;
          v22 = v33 + v34;
        }
      }

      while (v19 < v11);
    }
  }

  else
  {
    *this = 0;
    *(this + 4) = 0;
    *(this + 4) = -1;
  }
}

uint64_t IntLigne::CmpBord(IntLigne *this, _BYTE *a2, const void *a3)
{
  if (*this == *a2)
  {
    if (*(this + 4) == 1)
    {
      if ((a2[4] & 1) == 0)
      {
        return 1;
      }
    }

    else if (a2[4])
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  else if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 1;
  }
}

double IntLigne::Dequeue(IntLigne *this, int a2)
{
  v2 = *(this + 9);
  if (*(this + 8) == a2)
  {
    if (v2 == a2)
    {
      *(this + 4) = -1;
    }

    else
    {
      *(this + 8) = *(*(this + 1) + 24 * a2 + 20);
    }
  }

  else if (v2 == a2)
  {
    *(this + 9) = *(*(this + 1) + 24 * a2 + 16);
  }

  v3 = *(this + 1);
  v4 = v3 + 24 * a2;
  v5 = *(v4 + 16);
  v6 = *(v4 + 20);
  if ((v5 & 0x80000000) == 0)
  {
    *(v3 + 24 * v5 + 20) = v6;
  }

  if ((v6 & 0x80000000) == 0)
  {
    *(v3 + 24 * v6 + 16) = v5;
  }

  result = NAN;
  *(v3 + 24 * a2 + 16) = -1;
  return result;
}

double IntLigne::Enqueue(IntLigne *this, int a2)
{
  if ((*(this + 8) & 0x80000000) != 0)
  {
    *(this + 8) = a2;
    *(this + 9) = a2;
    result = NAN;
    *(*(this + 1) + 24 * a2 + 16) = -1;
  }

  else
  {
    v2 = *(this + 1);
    v3 = v2 + 24 * a2;
    v4 = *(this + 9);
    *(v3 + 16) = v4;
    *(v3 + 20) = -1;
    *(v2 + 24 * v4 + 20) = a2;
    *(this + 9) = a2;
  }

  return result;
}

uint64_t IntLigne::AddRun(IntLigne *this, int a2, int a3, float a4, float a5)
{
  if (a2 >= a3)
  {
    return 0xFFFFFFFFLL;
  }

  result = *(this + 4);
  if (result >= *(this + 5))
  {
    v12 = (2 * result) | 1;
    *(this + 5) = v12;
    v11 = malloc_type_realloc(*(this + 3), 16 * v12, 0x1000040451B5BE8uLL);
    *(this + 3) = v11;
    result = *(this + 4);
  }

  else
  {
    v11 = *(this + 3);
  }

  *(this + 4) = result + 1;
  v13 = &v11[16 * result];
  *v13 = a2;
  *(v13 + 1) = a3;
  *(v13 + 2) = a4;
  *(v13 + 3) = a5;
  return result;
}

uint64_t IntLigne::Affiche(IntLigne *this)
{
  printf("%i : \n", *(this + 4));
  if (*(this + 4) >= 1)
  {
    v2 = 0;
    v3 = 0;
    do
    {
      printf("(%i %f -> %i %f) ", *(*(this + 3) + v2), *(*(this + 3) + v2 + 8), *(*(this + 3) + v2 + 4), *(*(this + 3) + v2 + 12));
      ++v3;
      v2 += 16;
    }

    while (v3 < *(this + 4));
  }

  return putchar(10);
}

uint64_t IntLigne::Booleen(uint64_t result, uint64_t a2, IntLigne *a3, int a4)
{
  v5 = a3;
  *result = 0;
  *(result + 16) = 0;
  v71 = result;
  *(result + 32) = -1;
  v6 = *(a2 + 16);
  v7 = *(a3 + 4);
  if (v6 <= 0)
  {
    if (v7 < 1 || a4 && a4 != 3)
    {
      return result;
    }

    goto LABEL_109;
  }

  if (v7 <= 0)
  {
    if (a4 > 3)
    {
      return result;
    }

    v5 = a2;
    if (a4 == 1)
    {
      return result;
    }

LABEL_109:

    return IntLigne::Copy(result, v5);
  }

  v9 = *(a2 + 24);
  v10 = *v9;
  v11 = *(a3 + 3);
  v12 = *v11;
  v13 = 0.0;
  v14 = 0.0;
  if (*v9 >= *v11)
  {
    v15 = *v11;
  }

  else
  {
    v15 = *v9;
  }

  if (v10 <= v12)
  {
    v14 = *(v9 + 8);
  }

  if (v12 <= v10)
  {
    v13 = *(v11 + 8);
  }

  if (*(a3 + 4) >= 1)
  {
    v16 = 0;
    LODWORD(v17) = 0;
    v18 = v15;
    while (1)
    {
      v19 = *(a2 + 24) + 16 * v17;
      v20 = *v19;
      v21 = *(v19 + 4);
      v72 = v16;
      v22 = *(v5 + 3) + 16 * v16;
      v23 = *v22;
      v24 = *(v22 + 4);
      v25 = v18 < v21 && v18 >= *v19;
      v27 = v18 >= v23 && v18 < v24;
      if (v18 >= v20)
      {
        if (v18 >= v23)
        {
          v35 = v21 == v24;
          if (v21 >= v24)
          {
            v36 = *(v22 + 4);
          }

          else
          {
            v35 = 1;
            v36 = *(v19 + 4);
          }

          result = v21 < v24 || v21 == v24;
          if (v21 >= v24)
          {
            v37 = *(v22 + 4);
          }

          else
          {
            v37 = *(v19 + 4);
          }

          v31 = v21 >= v24;
          if (v18 == v23)
          {
            v32 = result;
          }

          else
          {
            v32 = v35;
          }

          v33 = 0;
          v34 = 0;
          if (v18 == v23)
          {
            v15 = v37;
          }

          else
          {
            v15 = v36;
          }
        }

        else
        {
          v31 = 0;
          v32 = v21 < v23 || v21 == v23;
          v33 = v21 >= v23;
          v34 = 0;
          if (v21 >= v23)
          {
            v15 = *v22;
          }

          else
          {
            v15 = *(v19 + 4);
          }
        }
      }

      else
      {
        v28 = v20 == v24;
        if (v20 >= v24)
        {
          v29 = *(v22 + 4);
        }

        else
        {
          v28 = 1;
          v29 = *v19;
        }

        result = v20 < v23 || v20 == v23;
        if (v20 >= v23)
        {
          v30 = *v22;
        }

        else
        {
          v30 = *v19;
        }

        v31 = v18 >= v23 && v20 >= v24;
        v32 = 0;
        v33 = v18 < v23 && v20 >= v23;
        if (v18 < v23)
        {
          v34 = result;
        }

        else
        {
          v34 = v28;
        }

        if (v18 < v23)
        {
          v15 = v30;
        }

        else
        {
          v15 = v29;
        }
      }

      v38 = *(v19 + 8);
      v39 = 0.0;
      v40 = 0.0;
      if (v25)
      {
        v40 = ((v38 * (v21 - v15)) + ((v15 - v20) * *(v19 + 12))) / (v21 - v20);
      }

      v41 = *(v22 + 8);
      if (v27)
      {
        v39 = ((v41 * (v24 - v15)) + ((v15 - v23) * *(v22 + 12))) / (v24 - v23);
      }

      if (a4 > 1)
      {
        if (a4 != 2)
        {
          if (a4 != 3)
          {
            goto LABEL_85;
          }

          if (!v27 && v25)
          {
            v69 = v32;
            v70 = v31;
            result = IntLigne::AddRun(v71, v18, v15, v14 - v13, v40 - v39);
            v32 = v69;
            v31 = v70;
          }

          if (v25 || !v27)
          {
            goto LABEL_85;
          }

          v42 = v13 - v14;
          v43 = v39 - v40;
          goto LABEL_84;
        }

        if (v25)
        {
          v42 = v14 - v13;
          v43 = v40 - v39;
          goto LABEL_84;
        }
      }

      else if (a4)
      {
        if (a4 == 1 && v25 && v27)
        {
          v42 = v13 * v14;
          v43 = v40 * v39;
LABEL_84:
          v44 = v32;
          v45 = v31;
          result = IntLigne::AddRun(v71, v18, v15, v42, v43);
          v32 = v44;
          v31 = v45;
        }
      }

      else if (v25 || v27)
      {
        v42 = v13 + v14;
        v43 = v40 + v39;
        goto LABEL_84;
      }

LABEL_85:
      if (v34)
      {
        v14 = v38;
      }

      else
      {
        v14 = v40;
      }

      if (v33)
      {
        v13 = v41;
      }

      else
      {
        v13 = v39;
      }

      if (v32)
      {
        v17 = v17 + 1;
        v14 = 0.0;
        v16 = v72;
        if (v17 < *(a2 + 16))
        {
          v46 = *(a2 + 24) + 16 * v17;
          if (*v46 == v15)
          {
            v14 = *(v46 + 8);
          }
        }
      }

      else
      {
        v16 = v72;
      }

      if (v31)
      {
        v16 = v16 + 1;
        v13 = 0.0;
        if (v16 < *(v5 + 4))
        {
          v47 = *(v5 + 3) + 16 * v16;
          if (*v47 == v15)
          {
            v13 = *(v47 + 8);
          }
        }
      }

      v6 = *(a2 + 16);
      if (v17 < v6)
      {
        v18 = v15;
        if (v16 < *(v5 + 4))
        {
          continue;
        }
      }

      goto LABEL_113;
    }
  }

  LODWORD(v16) = 0;
  LODWORD(v17) = 0;
LABEL_113:
  if (v17 < v6)
  {
    while (1)
    {
      v48 = v15;
      v49 = *(a2 + 24) + 16 * v17;
      v51 = *v49;
      v50 = *(v49 + 4);
      v52 = *(v49 + 8);
      v53 = v15 >= *v49;
      if (v15 >= *v49)
      {
        v15 = *(v49 + 4);
      }

      else
      {
        v15 = *v49;
      }

      if (v48 >= v50)
      {
        v53 = 0;
      }

      v54 = 0.0;
      if (v53)
      {
        v54 = ((v52 * (v50 - v15)) + ((v15 - v51) * *(v49 + 12))) / (v50 - v51);
      }

      if (a4 == 3 || a4 == 2)
      {
        if (!v53)
        {
          goto LABEL_129;
        }

        v55 = v14 - v13;
      }

      else
      {
        if (a4 || !v53)
        {
          goto LABEL_129;
        }

        v55 = v13 + v14;
        v54 = v54 + 0.0;
      }

      result = IntLigne::AddRun(v71, v48, v15, v55, v54);
LABEL_129:
      v56 = *(a2 + 16);
      if (v48 >= v51)
      {
        v17 = v17 + 1;
        v52 = 0.0;
        if (v17 < v56)
        {
          v57 = *(a2 + 24) + 16 * v17;
          if (*v57 == v50)
          {
            v52 = *(v57 + 8);
          }
        }
      }

      v13 = 0.0;
      v14 = v52;
      if (v17 >= v56)
      {
        goto LABEL_136;
      }
    }
  }

  v52 = v14;
LABEL_136:
  if (v16 < *(v5 + 4))
  {
    LODWORD(v58) = v16;
    do
    {
      v59 = v15;
      v60 = *(v5 + 3) + 16 * v58;
      v62 = *v60;
      v61 = *(v60 + 4);
      v63 = *(v60 + 8);
      v64 = v15 >= *v60;
      if (v15 >= *v60)
      {
        v15 = *(v60 + 4);
      }

      else
      {
        v15 = *v60;
      }

      if (v59 >= v61)
      {
        v64 = 0;
      }

      v65 = 0.0;
      if (v64)
      {
        v65 = ((v63 * (v61 - v15)) + ((v15 - v62) * *(v60 + 12))) / (v61 - v62);
      }

      if (a4 == 3)
      {
        if (!v64)
        {
          goto LABEL_152;
        }

        v66 = v13 - v52;
      }

      else
      {
        if (a4 || !v64)
        {
          goto LABEL_152;
        }

        v66 = v13 + v52;
        v65 = v65 + 0.0;
      }

      result = IntLigne::AddRun(v71, v59, v15, v66, v65);
LABEL_152:
      v67 = *(v5 + 4);
      if (v59 >= v62)
      {
        v58 = v58 + 1;
        v63 = 0.0;
        if (v58 < v67)
        {
          v68 = *(v5 + 3) + 16 * v58;
          if (*v68 == v61)
          {
            v63 = *(v68 + 8);
          }
        }
      }

      v52 = 0.0;
      v13 = v63;
    }

    while (v58 < v67);
  }

  return result;
}

void **IntLigne::Copy(void **this, IntLigne *a2)
{
  v2 = this;
  v3 = *(a2 + 4);
  *this = 0;
  if (v3 <= 0)
  {
    *(this + 4) = 0;
    this[4] = -1;
  }

  else
  {
    *(this + 4) = v3;
    if (v3 <= *(this + 5))
    {
      v5 = this[3];
    }

    else
    {
      *(this + 5) = v3;
      v5 = malloc_type_realloc(this[3], 16 * v3, 0x1000040451B5BE8uLL);
      v2[3] = v5;
      LODWORD(v3) = *(v2 + 4);
    }

    v6 = *(a2 + 3);

    return memcpy(v5, v6, 16 * v3);
  }

  return this;
}

uint64_t IntLigne::Copy(uint64_t this, FloatLigne *a2)
{
  v2 = *(a2 + 4);
  *this = 0;
  *(this + 16) = 0;
  *(this + 32) = -1;
  if (v2 < 1)
  {
    return this;
  }

  v4 = this;
  v5 = 0;
  v6 = 0;
  v7 = **(a2 + 3) - 1;
  v8 = 0.0;
  v9 = 8;
  do
  {
    v10 = (*(a2 + 3) + v9);
    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = v10[1];
    v15 = v10[2];
    v16 = floorf(v11);
    v17 = vcvtms_s32_f32(v11);
    v18 = (v11 - v16);
    v19 = v16 + 1.0;
    if (v18 < 0.00001)
    {
      v20 = v17;
    }

    else
    {
      v20 = v17 + 1;
    }

    if (v18 < 0.00001)
    {
      v19 = v16;
    }

    v21 = *v10;
    if (v11 != v20)
    {
      v21 = v10[1];
      if (v12 != v20)
      {
        v21 = v13 + ((v19 - v11) * v15);
      }
    }

    v22 = floorf(v12);
    v23 = vcvtms_s32_f32(v12);
    v24 = *v10;
    if (v11 != v23)
    {
      v24 = v10[1];
      if (v12 != v23)
      {
        v24 = v13 + ((v22 - v11) * v15);
      }
    }

    v25 = (v12 - v22);
    if (v18 >= 0.00001)
    {
      if (v25 < 0.00001 || v23 > v17)
      {
        if (v6)
        {
          if (v7 >= v17)
          {
            v29 = v8 + (v13 + v21) * 0.5 * (v16 + 1.0 - v11);
            goto LABEL_26;
          }

          IntLigne::AddRun(v4, v7, v7 + 1, v8, v8);
          v26 = (*(a2 + 3) + v9);
          v27 = (v21 + *v26) * 0.5;
          v28 = v16 + 1.0 - *(v26 - 2);
        }

        else
        {
          v28 = (v13 + v21) * 0.5;
          v27 = v16 + 1.0 - v11;
        }

        v29 = v27 * v28;
LABEL_26:
        v8 = v29;
        this = IntLigne::AddRun(v4, v17, v17 + 1, v8, v8);
        v6 = 0;
        goto LABEL_27;
      }

      if ((v6 & 1) == 0)
      {
        v30 = (v13 + v14) * 0.5 * (v12 - v11);
        goto LABEL_41;
      }

      if (v7 < v17)
      {
        this = IntLigne::AddRun(v4, v7, v7 + 1, v8, v8);
        v30 = (*(*(a2 + 3) + v9 + 4) + *(*(a2 + 3) + v9)) * 0.5 * (*(*(a2 + 3) + v9 - 4) - *(*(a2 + 3) + v9 - 8));
LABEL_41:
        v8 = v30;
        v6 = 1;
        v7 = v17;
        goto LABEL_27;
      }

      v8 = v8 + (v13 + v14) * 0.5 * (v12 - v11);
      v6 = 1;
    }

LABEL_27:
    if (v20 < v23)
    {
      if ((v6 & (v7 < v20)) == 1)
      {
        IntLigne::AddRun(v4, v7, v7 + 1, v8, v8);
      }

      this = IntLigne::AddRun(v4, v20, v23, v21, v24);
      v6 = 0;
    }

    if (v25 >= 0.00001)
    {
      if (v23 <= v17)
      {
        if (v18 >= 0.00001)
        {
          goto LABEL_38;
        }

        if (v6)
        {
          this = IntLigne::AddRun(v4, v7, v7 + 1, v8, v8);
        }

        v24 = v21;
      }

      v8 = (v24 + *(*(a2 + 3) + v9 + 4)) * 0.5 * (*(*(a2 + 3) + v9 - 4) - v22);
      v6 = 1;
      v7 = v23;
    }

LABEL_38:
    ++v5;
    v9 += 20;
  }

  while (v5 < *(a2 + 4));
  if (v6)
  {

    return IntLigne::AddRun(v4, v7, v7 + 1, v8, v8);
  }

  return this;
}

void Path::Path(Path *this)
{
  this->var2 = 0;
  *&this->var0 = 0;
  this->var3 = 0;
  *&this->var4 = -1;
  *&this->var6 = 0;
  *&this->var10 = 0;
  *&this->var8 = 0;
  HIDWORD(this->var11) = 0;
}

{
  this->var2 = 0;
  *&this->var0 = 0;
  this->var3 = 0;
  *&this->var4 = -1;
  *&this->var6 = 0;
  *&this->var10 = 0;
  *&this->var8 = 0;
  HIDWORD(this->var11) = 0;
}

void Path::~Path(Path *this)
{
  var3 = this->var3;
  if (var3)
  {
    free(var3);
    this->var3 = 0;
  }

  var11 = this->var11;
  if (var11)
  {
    free(var11);
  }

  this->var1 = 0;
  this->var2 = 0;
  this->var3 = 0;
  *&this->var10 = 0;
  *&this->var8 = 0;
  HIDWORD(this->var11) = 0;
}

uint64_t Path::Affiche(Path *this)
{
  result = printf("path descr %i elems\n", this->var2);
  if (this->var2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      printf("  ");
      result = printf("[ %i %f %f ] ", *(this->var3 + v3 + 4), *(this->var3 + v3 + 8), *(this->var3 + v3 + 12));
      v5 = *(this->var3 + v3);
      if ((v5 & 0x10) != 0)
      {
        result = printf(" w ");
        v5 = *(this->var3 + v3);
      }

      v6 = v5 & 0xF;
      if (v6 <= 3)
      {
        if (v6 > 1)
        {
          if (v6 == 2)
          {
            result = printf("C %f %f %f %f %f %f\n");
          }

          else
          {
            result = printf("B %f %f %i\n");
          }
        }

        else if (v6)
        {
          result = printf("L %f %f\n");
        }

        else
        {
          result = printf("M %f %f %i\n");
        }

        goto LABEL_22;
      }

      if (v6 <= 5)
      {
        break;
      }

      if (v6 == 6)
      {
        result = printf("I %f %f\n");
        goto LABEL_22;
      }

      if (v6 == 7)
      {
        v7 = "F";
LABEL_17:
        result = puts(v7);
      }

LABEL_22:
      ++v4;
      v3 += 44;
      if (v4 >= this->var2)
      {
        return result;
      }
    }

    if (v6 == 4)
    {
      result = printf("A %f %f %f %f %i %i\n");
      goto LABEL_22;
    }

    v7 = "Z";
    goto LABEL_17;
  }

  return result;
}

double Path::Reset(Path *this)
{
  this->var2 = 0;
  result = NAN;
  *&this->var4 = -1;
  this->var0 = 0;
  return result;
}

void *Path::Copy(Path *this, Path *a2)
{
  Path::ResetPoints(this, 0);
  var2 = a2->var2;
  if (var2 > this->var1)
  {
    this->var1 = var2;
    this->var3 = malloc_type_realloc(this->var3, 44 * var2, 0x1000040D4159EFEuLL);
  }

  Path::SetWeighted(this, a2->var6);
  v5 = a2->var2;
  this->var2 = v5;
  var3 = this->var3;
  v7 = a2->var3;

  return memcpy(var3, v7, 44 * v5);
}

Path *Path::ResetPoints(Path *this, int a2)
{
  this->var8 = 0;
  v2 = 12 * a2;
  if (this->var6)
  {
    v2 = 16 * a2;
    v3 = 24 * a2;
  }

  else
  {
    v3 = 20 * a2;
  }

  if (this->var7)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  this->var10 = v4;
  if (v4 > this->var9)
  {
    v5 = this;
    this->var9 = v4;
    this = malloc_type_realloc(this->var11, v4, 0x100004077774924uLL);
    v5->var11 = this;
  }

  return this;
}

Path *Path::SetWeighted(Path *this, int a2)
{
  if (!this->var7)
  {
    if (!a2)
    {
      if (!this->var6)
      {
        return this;
      }

      goto LABEL_9;
    }

LABEL_6:
    if (this->var6)
    {
      return this;
    }

    v2 = 1;
    goto LABEL_10;
  }

  if (a2)
  {
    goto LABEL_6;
  }

  if (!this->var6)
  {
    return this;
  }

LABEL_9:
  v2 = 0;
LABEL_10:
  this->var6 = v2;
  return Path::ResetPoints(this, this->var8);
}

Path *Path::Alloue(Path *this, int a2)
{
  var2 = this->var2;
  if (var2 + a2 > this->var1)
  {
    v3 = this;
    v4 = a2 + 2 * var2;
    this->var1 = v4;
    this = malloc_type_realloc(this->var3, 44 * v4, 0x1000040D4159EFEuLL);
    v3->var3 = this;
  }

  return this;
}

Path *Path::CloseSubpath(Path *this, int a2)
{
  var2 = this->var2;
  v3 = 44 * var2;
  while (1)
  {
    v4 = __OFSUB__(var2--, 1);
    if (var2 < 0 != v4)
    {
      break;
    }

    var3 = this->var3;
    v6 = var3 + v3;
    ++a2;
    v3 -= 44;
    if ((*(v6 - 44) & 0xF) == 0)
    {
      *(var3 + v3 + 24) = a2;
      break;
    }
  }

  this->var0 &= ~2u;
  this->var5 = -1;
  return this;
}

double Path::ForcePoint(Path *this)
{
  var0 = this->var0;
  if (this->var0)
  {
    if ((var0 & 4) != 0)
    {
      var0 &= 0xFFFFFFFA;
      this->var0 = var0;
      var4 = this->var4;
      if ((var4 & 0x80000000) == 0)
      {
        this->var2 = var4;
        this->var4 = -1;
      }
    }

    else
    {
      this->var4 = -1;
      var0 &= 0xFFFFFFFA;
      this->var0 = var0;
    }
  }

  if ((var0 & 2) != 0)
  {
    Path::Alloue(this, 1);
    var2 = this->var2;
    v5 = (this->var3 + 44 * var2);
    this->var2 = var2 + 1;
    result = 0.0078125;
    *v5 = 0xFFFFFFFF00000007;
    v5[1] = 0x3F80000000000000;
  }

  return result;
}