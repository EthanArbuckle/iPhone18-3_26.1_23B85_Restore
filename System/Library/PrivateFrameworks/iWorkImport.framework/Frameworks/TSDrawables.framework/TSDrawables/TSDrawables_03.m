void sub_276716EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_276716F10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_276716F28(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (!v4 || (objc_msgSend_containsElementsOtherThanMoveAndClose(v4, a2, a3) & 1) == 0)
  {
    v5 = objc_msgSend_p_strokedPathByUsingCG(*(a1 + 32), a2, a3);
    v7 = v5;
    if (v5)
    {
      obj = v5;
      v8 = objc_msgSend_containsElementsOtherThanMoveAndClose(v5, v5, v6);
      v7 = obj;
      if (v8)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
        v7 = obj;
      }
    }
  }
}

id sub_276716FDC(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_lineCapStyle(a1, a2, a3);
  objc_msgSend_lineJoinStyle(a1, v4, v5);
  v6 = a1;
  objc_msgSend_CGPath(v6, v7, v8);
  objc_msgSend_lineWidth(a1, v9, v10);
  objc_msgSend_miterLimit(a1, v11, v12);
  CopyByStrokingPathSafe = CGPathCreateCopyByStrokingPathSafe();
  v15 = objc_msgSend_bezierPathWithCGPath_(MEMORY[0x277D81160], v14, CopyByStrokingPathSafe);
  CGPathRelease(CopyByStrokingPathSafe);

  return v15;
}

id sub_2767170C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D81160];
  v4 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], a2, a1, a3, 0);
  v6 = objc_msgSend_uniteBezierPaths_(v3, v5, v4);

  return v6;
}

id sub_27671714C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D81160];
  v4 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], a2, a1, a3, 0);
  v6 = objc_msgSend_unitePolygonalBezierPaths_(v3, v5, v4);

  return v6;
}

id sub_2767171D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D81160];
  v4 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], a2, a1, a3, 0);
  v6 = objc_msgSend_subtractBezierPaths_(v3, v5, v4);

  return v6;
}

id sub_27671725C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D81160];
  v4 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], a2, a1, a3, 0);
  v6 = objc_msgSend_subtractPolygonalBezierPaths_(v3, v5, v4);

  return v6;
}

id sub_2767172E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = MEMORY[0x277D81160];
  v4 = objc_msgSend_arrayWithObjects_(MEMORY[0x277CBEA60], a2, a1, a3, 0);
  v6 = objc_msgSend_intersectBezierPaths_(v3, v5, v4);

  return v6;
}

void sub_27671736C(void *a1, int a2, CGContextRef c)
{
  CGContextSaveGState(c);
  objc_msgSend_flatness(a1, v5, v6);
  CGContextSetFlatness(c, v7);
  CGContextBeginPath(c);
  objc_msgSend_addPathToContext_(a1, v8, c);
  objc_msgSend_lineWidth(a1, v9, v10);
  CGContextSetLineWidth(c, v11);
  CGContextReplacePathWithStrokedPath(c);
  CGContextClip(c);
  CGContextBeginPath(c);
  objc_msgSend_lineWidth(a1, v12, v13);
  v15 = v14;
  objc_msgSend_bounds(a1, v16, v17);
  v20 = CGRectInset(v19, -(v15 + 10.0), -(v15 + 10.0));
  CGContextClearRect(c, v20);

  CGContextRestoreGState(c);
}

id sub_276717430(void *a1, const char *a2, unint64_t a3, double a4)
{
  v61 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_copy(a1, a2, a3);
  objc_msgSend_removeAllPoints(v7, v8, v9);
  v52 = *(MEMORY[0x277CBF348] + 8);
  v53 = *MEMORY[0x277CBF348];
  v13 = objc_msgSend_elementCount(a1, v10, v11);
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = a4;
    v54 = v15;
    do
    {
      v16 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v12, v14, &v55);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          v45 = v59;
          v44 = v60;
          TSURandom();
          v47 = v46;
          TSURandom();
          objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v7, v49, v50, v45 + (v47 + -0.5) * v54, v44 + (v48 + -0.5) * v54, v55, v56, v57, v58);
        }

        else if (v16 == 3)
        {
          v55 = v53;
          v56 = v52;
          v18 = 1;
LABEL_10:
          v19 = 0;
          v20 = 1;
          do
          {
            objc_msgSend_currentPoint(v7, v12, v17);
            v22 = v21;
            v24 = v23;
            TSUSubtractPoints();
            v26 = v25;
            v28 = v27;
            v29 = 1.0;
            v30 = a3 - v19;
            if (v30)
            {
              TSURandom();
              *&v31 = v31 + 0.5;
              v29 = fminf((1.0 / v30) * *&v31, 1.0);
            }

            TSURandom();
            v33 = v32;
            TSURandom();
            objc_msgSend_lineToPoint_(v7, v35, v36, v22 + v26 * v29 + (v33 + -0.5) * v54, v24 + v28 * v29 + (v34 + -0.5) * v54);
            v19 = v20++;
          }

          while (v19 <= a3);
          if (v18)
          {
            objc_msgSend_closePath(v7, v12, v17);
          }
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          v18 = 0;
          goto LABEL_10;
        }
      }

      else
      {
        v38 = v55;
        v37 = v56;
        TSURandom();
        v40 = v39;
        TSURandom();
        v52 = v37 + (v41 + -0.5) * v54;
        v53 = v38 + (v40 + -0.5) * v54;
        objc_msgSend_moveToPoint_(v7, v42, v43, v53);
      }

      ++v14;
    }

    while (v14 != v13);
  }

  return v7;
}

uint64_t sub_2767176E8(void *a1, const char *a2, uint64_t a3)
{
  v11[6] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_elementCount(a1, a2, a3);
  if (v4 < 1)
  {
    return TSUNearlyEqualPoints() ^ 1;
  }

  v6 = v4;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v5, v7, v11);
    if (v9 > 1)
    {
      if (v9 != 2 && v9 == 3)
      {
        return 0;
      }
    }

    else if (!v9)
    {
      ++v8;
    }

    ++v7;
  }

  while (v6 != v7);
  if (v8 <= 1)
  {
    return TSUNearlyEqualPoints() ^ 1;
  }

  return 0;
}

BOOL sub_276717818(void *a1, const char *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_elementCount(a1, a2, a3);
  if (v4 < 1)
  {
    return 1;
  }

  else
  {
    v6 = v4;
    v7 = 0;
    v8 = 0;
    v9 = MEMORY[0x277CBF348];
    while (1)
    {
      v14[0] = *v9;
      v14[1] = v14[0];
      v14[2] = v14[0];
      v10 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v5, v8, v14);
      if (v10 <= 2)
      {
        break;
      }

LABEL_7:
      v7 = ++v8 >= v6;
      if (v8 == v6)
      {
        return v7;
      }
    }

    v11 = qword_276826EB0[v10];
    v12 = v14 + 8;
    while ((TSUPointIsFinite() & 1) != 0)
    {
      v12 += 16;
      if (!--v11)
      {
        goto LABEL_7;
      }
    }
  }

  return v7;
}

uint64_t sub_27671791C(void *a1, const char *a2, uint64_t a3)
{
  v12[6] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_elementCount(a1, a2, a3) == 2 && !objc_msgSend_elementAtIndex_(a1, v4, 0))
  {
    v6 = 1;
    v8 = objc_msgSend_elementAtIndex_(a1, v5, 1);
    if (v8 == 1)
    {
      return v6;
    }

    if (v8 == 2)
    {
      objc_msgSend_elementAtIndex_associatedPoints_(a1, v9, 0, &v11);
      objc_msgSend_elementAtIndex_associatedPoints_(a1, v10, 1, v12);
      if (sub_276717A28())
      {
        return sub_276717A28();
      }
    }
  }

  return 0;
}

uint64_t sub_276717A28()
{
  result = TSUNearlyCollinearPoints();
  if (result)
  {
    if (TSUNearlyEqualPoints() & 1) != 0 || (TSUNearlyEqualPoints())
    {
      return 1;
    }

    else
    {
      TSURectWithPoints();

      return TSUPointInRectInclusive();
    }
  }

  return result;
}

uint64_t sub_276717B18(void *a1, const char *a2, uint64_t a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v7 = a3;
  v31[6] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_elementCount(a1, a2, a3) < 2 || (objc_msgSend_bounds(a1, v13, v14), (TSUIntersectsRect() & 1) == 0))
  {
    v21 = 0;
LABEL_17:
    v28 = 0;
    goto LABEL_18;
  }

  if (!v7)
  {
LABEL_7:
    v21 = objc_msgSend_bezierPathByFlatteningPath(a1, v15, v16);
    v25 = objc_msgSend_elementCount(v21, v22, v23);
    if (v25 >= 1)
    {
      v26 = 0;
      while (1)
      {
        v27 = objc_msgSend_elementAtIndex_associatedPoints_(v21, v24, v26, v31);
        if (v27 == 3)
        {
          if (TSULineIntersectsRect())
          {
            goto LABEL_20;
          }
        }

        else if (v27 == 1 && (TSULineIntersectsRect() & 1) != 0)
        {
          goto LABEL_20;
        }

        if (v25 == ++v26)
        {
          goto LABEL_17;
        }
      }
    }

    goto LABEL_17;
  }

  *v30 = a4;
  *&v30[1] = a5;
  v32.origin.x = a4;
  v32.origin.y = a5;
  v32.size.width = a6;
  v32.size.height = a7;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = a4;
  v33.origin.y = a5;
  v33.size.width = a6;
  v33.size.height = a7;
  *&v30[2] = MaxX;
  v30[3] = CGRectGetMinY(v33);
  v34.origin.x = a4;
  v34.origin.y = a5;
  v34.size.width = a6;
  v34.size.height = a7;
  v18 = CGRectGetMaxX(v34);
  v35.origin.x = a4;
  v35.origin.y = a5;
  v35.size.width = a6;
  v35.size.height = a7;
  *&v30[4] = v18;
  v30[5] = CGRectGetMaxY(v35);
  v36.origin.x = a4;
  v36.origin.y = a5;
  v36.size.width = a6;
  v36.size.height = a7;
  MinX = CGRectGetMinX(v36);
  v37.origin.x = a4;
  v37.origin.y = a5;
  v37.size.width = a6;
  v37.size.height = a7;
  v20 = 0;
  *&v30[6] = MinX;
  v30[7] = CGRectGetMaxY(v37);
  while ((objc_msgSend_containsPoint_(a1, v15, v16, *&v30[v20], *&v30[v20 + 1]) & 1) == 0)
  {
    v20 += 2;
    if (v20 == 8)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
LABEL_20:
  v28 = 1;
LABEL_18:

  return v28;
}

void sub_276717DF8(void *a1, const char *a2, CGContext *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_elementCount(a1, a2, a3);
  if (v5 >= 1)
  {
    v7 = v5;
    for (i = 0; i != v7; ++i)
    {
      v9 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v6, i, &v10);
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          CGContextAddCurveToPoint(a3, v10, v11, v12, v13, v14, v15);
        }

        else if (v9 == 3)
        {
          CGContextClosePath(a3);
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
          CGContextAddLineToPoint(a3, v10, v11);
        }
      }

      else
      {
        CGContextMoveToPoint(a3, v10, v11);
      }
    }
  }
}

double sub_276717EEC(int a1, int a2, CGContextRef c, double a4, double a5, char a6)
{
  v8 = CGContextConvertPointToDeviceSpace(c, *&a4);
  TSURoundedPoint();
  if (a6)
  {
    x = v8.x;
    if (v9 <= x)
    {
      v13 = 0.5;
    }

    else
    {
      v13 = -0.5;
    }

    v9 = v9 + v13;
    y = v8.y;
    if (v10 <= y)
    {
      v14 = 0.5;
    }

    else
    {
      v14 = -0.5;
    }

    v10 = v10 + v14;
  }

  *&result = *&CGContextConvertPointToUserSpace(c, *&v9);
  return result;
}

id sub_276717F74(void *a1, const char *a2, CGContext *a3, float a4, float a5)
{
  v87 = *MEMORY[0x277D85DE8];
  v9 = objc_msgSend_elementCount(a1, a2, a3);
  TSURound();
  if (!v9)
  {
    goto LABEL_6;
  }

  v78 = v12;
  if (vabds_f32(v12, a5) > 0.1)
  {
    goto LABEL_6;
  }

  if (a3)
  {
    memset(&v84, 0, sizeof(v84));
    CGContextGetUserSpaceToDeviceSpaceTransform(&v84, a3);
    v86 = v84;
    if (TSUIsTransformAxisAligned())
    {
      v77 = fabs(v84.a) < fabs(v84.b);
      goto LABEL_11;
    }

LABEL_6:
    v13 = a1;
    goto LABEL_7;
  }

  v77 = 0;
LABEL_11:
  v13 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v10, v11);
  if (v9 >= 1)
  {
    v16 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v17 = 0;
    v18 = (1.0 / a4);
    do
    {
      v19 = objc_msgSend_elementAtIndex_associatedPoints_(a1, v15, v16, &v84.c);
      if (v19 > 1)
      {
        if (v19 == 2)
        {
          if (TSUNearlyEqualPoints() && TSUNearlyEqualPoints() && (TSUNearlyEqualPoints() & 1) != 0)
          {
            goto LABEL_53;
          }

          objc_msgSend_currentPoint(v13, v15, v36);
          TSUSubtractPoints();
          TSUAddPoints();
          v84.c = v37;
          v84.d = v38;
          objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v13, v39, v40, v85, v37, v38, v84.tx, v84.ty);
          v17 = 0;
          v82 = 0;
          p_c = &v85;
          goto LABEL_52;
        }

        if (v19 == 3)
        {
          objc_msgSend_elementAtIndex_associatedPoints_(a1, v15, v81, &v84.c);
          v21 = 1;
LABEL_20:
          a = v84.a;
          b = v84.b;
          c = v84.c;
          d = v84.d;
          TSUSubtractPoints();
          v29 = fabs(v28);
          v31 = fabs(v30);
          v32 = v31 > v29 + v18 * -0.01 && v29 < v18;
          v33 = v29 > v31 + v18 * -0.01 && v31 < v18;
          if (v33 || v32)
          {
            if (v33 && v32)
            {
              if ((v21 & (HIDWORD(v80) | v80)) == 1)
              {
                objc_msgSend_elementAtIndex_associatedPoints_(v13, v26, v79, &v84.c);
              }

              else
              {
                v44 = objc_msgSend_elementCount(v13, v26, v27);
                if (objc_msgSend_elementAtIndex_associatedPoints_(v13, v45, v44 - 1, &v84.c) == 2)
                {
                  *&v84.c = v85;
                }
              }

              v83 = *&v84.c;
              y = v84.d;
              x = v84.c;
            }

            else
            {
              if (a3)
              {
                v89.x = a;
                v89.y = b;
                CGContextConvertPointToDeviceSpace(a3, v89);
                CGContextConvertPointToDeviceSpace(a3, *&v84.c);
              }

              else
              {
                TSUMultiplyPointScalar();
                TSUMultiplyPointScalar();
              }

              if (v77)
              {
                v61 = v32;
              }

              else
              {
                v61 = v33;
              }

              if (v78)
              {
                if (v77)
                {
                  v62 = v33;
                }

                else
                {
                  v62 = v32;
                }

                if (v62)
                {
                  HIDWORD(v80) |= v17;
                  LOBYTE(v82) = 1;
                }

                if (v61)
                {
                  LODWORD(v80) = v17 | v80;
                  BYTE4(v82) = 1;
                }
              }

              TSUAliasRoundedPoint();
              v64 = v63;
              v66 = v65;
              TSUAliasRoundedPoint();
              v83.x = v67;
              v83.y = v68;
              if (v82)
              {
                v64 = v64 + -0.5;
                v83.x = v67 + -0.5;
              }

              if ((v82 & 0x100000000) != 0)
              {
                v66 = v66 + -0.5;
                v83.y = v68 + -0.5;
              }

              if (a3)
              {
                v90.x = v64;
                v90.y = v66;
                v69 = CGContextConvertPointToUserSpace(a3, v90);
                x = v69.x;
                y = v69.y;
                v72 = CGContextConvertPointToUserSpace(a3, v83);
                v71 = v72.y;
                v70 = v72.x;
              }

              else
              {
                TSUMultiplyPointScalar();
                x = v73;
                y = v74;
                TSUMultiplyPointScalar();
              }

              v83.x = v70;
              v83.y = v71;
              if (v33)
              {
                if ((v17 & 1) == 0)
                {
                  objc_msgSend_currentPoint(v13, v42, v43);
                  x = v75;
                }

                v43 = v16 + 1;
                if (v16 + 1 < v9 && objc_msgSend_elementAtIndex_(a1, v42, v43))
                {
                  v83.x = v84.c;
                }
              }

              else if (v32)
              {
                if ((v17 & 1) == 0)
                {
                  objc_msgSend_currentPoint(v13, v42, v43);
                  y = v76;
                }

                v43 = v16 + 1;
                if (v16 + 1 < v9 && objc_msgSend_elementAtIndex_(a1, v42, v43))
                {
                  v83.y = v84.d;
                }
              }
            }

            v48 = objc_msgSend_elementCount(v13, v42, v43);
            if (objc_msgSend_elementAtIndex_associatedPoints_(v13, v49, v48 - 1, &v86) == 2)
            {
              TSUSubtractPoints();
              TSUAddPoints();
              v86.c = v52;
              v86.d = v53;
              v86.tx = x;
              p_ty = &v86.ty;
            }

            else
            {
              v86.a = x;
              p_ty = &v86.b;
            }

            *p_ty = y;
            v55 = objc_msgSend_elementCount(v13, v50, v51);
            objc_msgSend_setAssociatedPoints_atIndex_(v13, v56, &v86, v55 - 1);
            if (v21)
            {
              objc_msgSend_setAssociatedPoints_atIndex_(v13, v57, &v83, v79);
              objc_msgSend_closePath(v13, v59, v60);
            }

            else
            {
              objc_msgSend_lineToPoint_(v13, v57, v58, v83);
            }
          }

          else if (v21)
          {
            objc_msgSend_closePath(v13, v26, v27);
          }

          else
          {
            objc_msgSend_lineToPoint_(v13, v26, v27, c, d);
          }

          v17 = 0;
LABEL_51:
          p_c = &v84.c;
LABEL_52:
          *&v84.a = *p_c;
        }
      }

      else
      {
        if (!v19)
        {
          objc_msgSend_moveToPoint_(v13, v15, v20, v84.c, v84.d);
          v81 = v16;
          v82 = 0;
          v79 = objc_msgSend_elementCount(v13, v34, v35) - 1;
          v80 = 0;
          v17 = 1;
          goto LABEL_51;
        }

        if (v19 == 1)
        {
          v21 = 0;
          goto LABEL_20;
        }
      }

LABEL_53:
      ++v16;
    }

    while (v9 != v16);
  }

LABEL_7:

  return v13;
}

double sub_27671869C(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ((objc_msgSend_isFlat(v1, v2, v3) & 1) == 0)
  {
    v6 = objc_msgSend_bezierPathByFlatteningPath(v1, v4, v5);

    v1 = v6;
  }

  v7 = objc_msgSend_elementCount(v1, v4, v5);
  v9 = 0.0;
  if (v7 >= 3)
  {
    v10 = v7 - 1;
    objc_msgSend_elementAtIndex_associatedPoints_(v1, v8, v7 - 1, &v17);
    v12 = 0;
    v14 = v17;
    v13 = v18;
    do
    {
      objc_msgSend_elementAtIndex_associatedPoints_(v1, v11, v12, &v17);
      v15 = -(v18 * v14);
      v14 = v17;
      v9 = v9 + v15 + v17 * v13;
      ++v12;
      v13 = v18;
    }

    while (v10 != v12);
    v9 = v9 * 0.5;
  }

  return fabs(v9);
}

id sub_2767187C4(void *a1, const char *a2, double *a3, uint64_t a4)
{
  v7 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  v10 = v7;
  v11 = *a3;
  v12 = a3[1];
  if (a4)
  {
    v13 = a3 + 1;
    v14 = a4;
    do
    {
      v15 = *(v13 - 1);
      if (v15 >= v11)
      {
        if (v15 == v11 && *v13 > v12)
        {
          v11 = *(v13 - 1);
          v12 = *v13;
        }
      }

      else
      {
        v12 = *v13;
        v11 = *(v13 - 1);
      }

      v13 += 2;
      --v14;
    }

    while (v14);
  }

  objc_msgSend_moveToPoint_(v7, v8, v9, v11, v12);
  v18 = MEMORY[0x277CBF348];
  v19 = *MEMORY[0x277CBF348];
  v20 = *(MEMORY[0x277CBF348] + 8);
  v21 = v11;
  for (i = v12; ; i = v20)
  {
    if (!a4)
    {
      v32 = *a3;
      v33 = a3[1];
      objc_msgSend_lineToPoint_(v10, v16, v17, *a3, v33);
      goto LABEL_27;
    }

    v23 = 0;
    v24 = a3 + 1;
    v25 = a4;
    do
    {
      v26 = v23;
      v27 = v19;
      v28 = v20;
      v29 = *(v24 - 1);
      v23 |= v21 < v29;
      if (v21 < v29)
      {
        v19 = *(v24 - 1);
        v20 = *v24;
        if (v26)
        {
          objc_msgSend_p_findPointWithGreatestSlopeFromStartPoint_toPointA_orPointB_(a1, v16, v17, v21, i, v27, v28);
          v19 = v30;
          v20 = v31;
          v23 = 1;
        }
      }

      v24 += 2;
      --v25;
    }

    while (v25);
    if ((v23 & 1) == 0)
    {
      break;
    }

    objc_msgSend_lineToPoint_(v10, v16, v17, v19, v20, v27, v28);
    v21 = v19;
  }

  v32 = *a3;
  v36 = a3 + 1;
  v33 = a3[1];
  v37 = a4;
  do
  {
    v38 = *(v36 - 1);
    if (v38 <= v32)
    {
      if (v38 == v32 && *v36 < v33)
      {
        v32 = *(v36 - 1);
        v33 = *v36;
      }
    }

    else
    {
      v33 = *v36;
      v32 = *(v36 - 1);
    }

    v36 += 2;
    --v37;
  }

  while (v37);
  objc_msgSend_lineToPoint_(v10, v16, v17, v32, v33);
LABEL_27:
  v39 = *v18;
  v40 = v18[1];
  v41 = a3 + 1;
  while (a4)
  {
    v42 = 0;
    v43 = v41;
    v44 = a4;
    do
    {
      v45 = v42;
      v46 = v39;
      v47 = v40;
      v48 = *(v43 - 1);
      v42 |= v32 > v48;
      if (v32 > v48)
      {
        v39 = *(v43 - 1);
        v40 = *v43;
        if (v45)
        {
          objc_msgSend_p_findPointWithGreatestSlopeFromStartPoint_toPointA_orPointB_(a1, v34, v35, v32, v33, v46, v47);
          v39 = v49;
          v40 = v50;
          v42 = 1;
        }
      }

      v43 += 2;
      --v44;
    }

    while (v44);
    if ((v42 & 1) == 0)
    {
      break;
    }

    objc_msgSend_lineToPoint_(v10, v34, v35, v39, v40, v46, v47);
    v32 = v39;
    v33 = v40;
  }

  objc_msgSend_lineToPoint_(v10, v34, v35, v11, v12);
  objc_msgSend_closePath(v10, v51, v52);

  return v10;
}

double sub_276718A68(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, const char *a8)
{
  v11 = a3;
  v13 = a3 - a1;
  v14 = a5 - a1;
  if (a3 - a1 == 0.0 || v14 == 0.0)
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a8, "+[TSUBezierPath(Additions) p_findPointWithGreatestSlopeFromStartPoint:toPointA:orPointB:]");
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v19, v16, v18, 2195, 0, "If delta X is 0, we would divide by zero.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21);
  }

  v22 = (a4 - a2) / v13;
  if (v13 == 0.0)
  {
    v22 = 1.79769313e308;
  }

  v23 = (a6 - a2) / v14;
  if (v14 == 0.0)
  {
    v23 = 1.79769313e308;
  }

  if (v22 <= v23)
  {
    if (v23 <= v22)
    {
      if (fabs(v14) > fabs(v13))
      {
        return a5;
      }
    }

    else
    {
      return a5;
    }
  }

  return v11;
}

__n128 sub_276718BC0@<Q0>(uint64_t a1@<X8>)
{
  result = *MEMORY[0x277CBF348];
  *(a1 + 8) = *MEMORY[0x277CBF348];
  *a1 = 0x3FF921FB54442D18;
  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  return result;
}

id sub_276718BF0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = a3;
  v10 = a6;
  v11 = v9;
  v14 = v11;
  v15 = *(a5 + 8);
  v16 = *(a4 + 24);
  v17 = *(a5 + 24);
  v18 = *(a4 + 32);
  v43 = *(a5 + 32);
  v44 = *(a5 + 16);
  if ((v16 & 0x8000000000000000) == 0 || (v19 = v11, (v17 & 0x8000000000000000) == 0))
  {
    objc_msgSend_width(v10, v12, v13);
    v42 = v18;
    v19 = objc_alloc_init(MEMORY[0x277D81160]);

    objc_msgSend_lineEndInsetAdjustment(v10, v20, v21);
    v23 = v22;
    TSUDeltaFromAngle();
    v41 = v23;
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v25 = v24;
    v27 = v26;
    TSUDeltaFromAngle();
    TSUMultiplyPointScalar();
    TSUAddPoints();
    v31 = v30;
    v33 = v32;
    if ((v16 < 0 || v16 >= v17) && (v16 != v17 || v18 >= v43))
    {
      if (v17 < 0)
      {
        objc_msgSend_moveToPoint_(v19, v28, v29, v15, v44);
        v39 = v41;
      }

      else
      {
        objc_msgSend_moveToPoint_(v19, v28, v29, v25, v27);
        v39 = v41;
        if (v15 != v25 || v44 != v27)
        {
          objc_msgSend_lineToPoint_(v19, v37, v38, v15, v44);
        }
      }

      objc_msgSend_appendBezierPath_fromSegment_t_toSegment_t_withoutMove_(v19, v37, v14, v17, v16, 1, v43, v42, *&v41);
      if (v16 < 0 || v39 <= 0.0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      objc_msgSend_moveToPoint_(v19, v28, v29, v25, v27, *&v41);
    }

    objc_msgSend_lineToPoint_(v19, v34, v35, v31, v33);
LABEL_9:
  }

  return v19;
}

void sub_276718E44(void *a1@<X2>, uint64_t a2@<X3>, void *a3@<X4>, void *a4@<X5>, void *a5@<X6>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>, double a10@<D3>)
{
  v75 = a1;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  *a6 = 0u;
  *(a6 + 16) = 0u;
  *(a6 + 32) = 0;
  objc_msgSend_makeDefaultPositioning(MEMORY[0x277D81160], v22, v23);
  if (a2)
  {
    v25 = a7;
  }

  else
  {
    v25 = a9;
  }

  if (a2)
  {
    v26 = a8;
  }

  else
  {
    v26 = a10;
  }

  if (a2)
  {
    v27 = v19;
    if (!v19)
    {
LABEL_9:
      v28 = 0;
LABEL_13:
      *a6 = 0x3FF921FB54442D18;
      *(a6 + 8) = v25;
      *(a6 + 16) = v26;
      *(a6 + 24) = -1;
      *(a6 + 32) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v27 = v20;
    if (!v20)
    {
      goto LABEL_9;
    }
  }

  v29 = objc_msgSend_strokeLineEnd_(v21, v24, v27);
  v28 = v29;
  if (!v29 || (objc_msgSend_isNone(v29, v30, v31) & 1) != 0)
  {
    goto LABEL_13;
  }

  v34 = objc_msgSend_path(v28, v32, v33);
  v35 = v34;
  v38 = objc_msgSend_CGPath(v35, v36, v37);
  BoundingBox = CGPathGetBoundingBox(v38);
  MaxY = CGRectGetMaxY(BoundingBox);
  objc_msgSend_endPoint(v28, v40, v41);
  v43 = v42;

  if (objc_msgSend_isFilled(v28, v44, v45))
  {
    v48 = MaxY - v43;
  }

  else
  {
    v48 = MaxY - v43 + 0.75;
  }

  objc_msgSend_width(v21, v46, v47);
  objc_msgSend_scaleForStrokeWidth_(v28, v49, v50);
  v54 = objc_msgSend_bezierPathWithOvalInRect_(MEMORY[0x277D81160], v52, v53, v25 - v48 * v51, v26 - v48 * v51, v48 * v51 + v48 * v51, v48 * v51 + v48 * v51);
  v55 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objc_msgSend_addIntersectionsWithPath_to_allIntersections_reversed_(v75, v56, v54, v55, 0, a2);
  if (objc_msgSend_count(v55, v57, v58))
  {
    objc_msgSend_sortUsingSelector_(v55, v59, sel_compareSegmentAndT_);
    if (a2)
    {
      objc_msgSend_lastObject(v55, v60, v61);
    }

    else
    {
      objc_msgSend_objectAtIndex_(v55, v60, 0);
    }
    v62 = ;
    objc_msgSend_point(v62, v63, v64);
  }

  else
  {
    v62 = 0;
  }

  TSUSubtractPoints();
  TSUAngleFromDelta();
  *a6 = v65 + -1.57079633;
  TSUSubtractPoints();
  if (v67 != *MEMORY[0x277CBF348] || v66 != *(MEMORY[0x277CBF348] + 8))
  {
    TSUNormalizePoint();
    TSUMultiplyPointScalar();
  }

  TSUAddPoints();
  *(a6 + 8) = v70;
  *(a6 + 16) = v71;
  if (v62)
  {
    *(a6 + 24) = objc_msgSend_segment(v62, v68, v69);
    objc_msgSend_t(v62, v72, v73);
  }

  else
  {
    *(a6 + 24) = 0;
    v74 = 0;
  }

  *(a6 + 32) = v74;

LABEL_14:
}

id sub_2767191DC(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_bounds(a1, a2, a3);
  v5 = v4;
  v7 = v6;
  isLineSegment = objc_msgSend_isLineSegment(a1, v8, v9);
  if (isLineSegment)
  {
    v13 = sub_2767B590C(isLineSegment, v11, v12);
    v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v14, @"Line", &stru_28857D120, @"TSDrawables");
  }

  else
  {
    isRectangular = objc_msgSend_isRectangular(a1, v11, v12);
    if (isRectangular)
    {
      v21 = sub_2767B590C(isRectangular, v19, v20);
      v13 = v21;
      if (v7 == v5 || vabdd_f64(v7, v5) < 0.00999999978)
      {
        v15 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Square", &stru_28857D120, @"TSDrawables");
      }

      else
      {
        v15 = objc_msgSend_localizedStringForKey_value_table_(v21, v22, @"Rectangle", &stru_28857D120, @"TSDrawables");
      }
    }

    else
    {
      isCircular = objc_msgSend_isCircular(a1, v19, v20);
      if (isCircular)
      {
        v26 = sub_2767B590C(isCircular, v24, v25);
        v13 = v26;
        if (v7 == v5 || vabdd_f64(v7, v5) < 0.00999999978)
        {
          v15 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Circle", &stru_28857D120, @"TSDrawables");
        }

        else
        {
          v15 = objc_msgSend_localizedStringForKey_value_table_(v26, v27, @"Oval", &stru_28857D120, @"TSDrawables");
        }
      }

      else
      {
        isTriangular = objc_msgSend_isTriangular(a1, v24, v25);
        if (isTriangular)
        {
          v13 = sub_2767B590C(isTriangular, v29, v30);
          v15 = objc_msgSend_localizedStringForKey_value_table_(v13, v31, @"Triangle", &stru_28857D120, @"TSDrawables");
        }

        else
        {
          isDiamond = objc_msgSend_isDiamond(a1, v29, v30);
          v33 = isDiamond;
          v36 = sub_2767B590C(isDiamond, v34, v35);
          v13 = v36;
          if (v33)
          {
            objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"Diamond", &stru_28857D120, @"TSDrawables");
          }

          else
          {
            objc_msgSend_localizedStringForKey_value_table_(v36, v37, @"Shape", &stru_28857D120, @"TSDrawables");
          }
          v15 = ;
        }
      }
    }
  }

  v16 = v15;

  return v16;
}

id sub_276719440(void *a1, const char *a2, uint64_t a3, double a4, double a5)
{
  isOpen = objc_msgSend_isOpen(a1, a2, a3);
  if ((isOpen & 1) != 0 || (isOpen = objc_msgSend_elementCount(a1, v9, v10), isOpen == 1))
  {
    v11 = sub_2767B590C(isOpen, v9, v10);
    v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v12, @"Line", &stru_28857D120, @"TSDrawables");
LABEL_4:
    v14 = v13;

    goto LABEL_5;
  }

  if (objc_msgSend_isRectangular(a1, v9, v10))
  {
    v18 = objc_msgSend_p_equalWidthAndHeightForSize_(a1, v16, v17, a4, a5);
    v19 = v18;
    v22 = sub_2767B590C(v18, v20, v21);
    v11 = v22;
    if (v19)
    {
      objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Square", &stru_28857D120, @"TSDrawables");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v22, v23, @"Rectangle", &stru_28857D120, @"TSDrawables");
    }

    v13 = LABEL_11:;
    goto LABEL_4;
  }

  if (objc_msgSend_isCircular(a1, v16, v17))
  {
    v26 = objc_msgSend_p_equalWidthAndHeightForSize_(a1, v24, v25, a4, a5);
    v27 = v26;
    v30 = sub_2767B590C(v26, v28, v29);
    v11 = v30;
    if (v27)
    {
      objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"Circle", &stru_28857D120, @"TSDrawables");
    }

    else
    {
      objc_msgSend_localizedStringForKey_value_table_(v30, v31, @"Oval", &stru_28857D120, @"TSDrawables");
    }

    goto LABEL_11;
  }

  isTriangular = objc_msgSend_isTriangular(a1, v24, v25);
  if (isTriangular)
  {
    v11 = sub_2767B590C(isTriangular, v33, v34);
    v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v35, @"Triangle", &stru_28857D120, @"TSDrawables");
    goto LABEL_4;
  }

  isDiamond = objc_msgSend_isDiamond(a1, v33, v34);
  if (isDiamond)
  {
    v11 = sub_2767B590C(isDiamond, v37, v38);
    v13 = objc_msgSend_localizedStringForKey_value_table_(v11, v39, @"Diamond", &stru_28857D120, @"TSDrawables");
    goto LABEL_4;
  }

  v14 = 0;
LABEL_5:

  return v14;
}

uint64_t sub_276719698(void *a1, const char *a2, uint64_t a3, CGFloat a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a4 != 1.0)
  {
    CGAffineTransformMakeScale(&v18, 1.0 / a4, 1.0 / a4);
    objc_msgSend_transformUsingAffineTransform_(a1, v6, &v18);
  }

  result = objc_msgSend_elementCount(a1, a2, a3);
  if (result >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = MEMORY[0x277CBF348];
    do
    {
      *&v18.a = *v11;
      *&v18.c = *&v18.a;
      *&v18.tx = *&v18.a;
      objc_msgSend_elementAtIndex_associatedPoints_(a1, v8, v10, &v18);
      for (i = 0; i != 48; i += 16)
      {
        v13 = (&v18.a + i);
        TSURoundedPoint();
        *v13 = v15;
        v13[1] = v16;
      }

      result = objc_msgSend_setAssociatedPoints_atIndex_(a1, v14, &v18, v10++);
    }

    while (v10 != v9);
  }

  if (a4 != 1.0)
  {
    CGAffineTransformMakeScale(&v18, a4, a4);
    return objc_msgSend_transformUsingAffineTransform_(a1, v17, &v18);
  }

  return result;
}

id sub_2767197DC(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_p_uniteBezierPaths_usingGPC_(a1, a2, a3, 0);

  return v3;
}

id sub_27671980C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_p_uniteBezierPaths_usingGPC_(a1, a2, a3, 1);

  return v3;
}

id sub_27671983C(void *a1, uint64_t a2, void *a3, int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v27, v31, 16);
  if (v14)
  {
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        if ((objc_msgSend_isEmpty(v17, v12, v13, v27) & 1) == 0)
        {
          objc_msgSend_addObject_(v9, v12, v17);
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v27, v31, 16);
    }

    while (v14);
  }

  if (objc_msgSend_count(v10, v18, v19))
  {
    if (objc_msgSend_count(v10, v20, v21) == 1)
    {
      v24 = objc_msgSend_firstObject(v10, v22, v23);
    }

    else
    {
      if (a4)
      {
        objc_msgSend_p_usingGPCBooleanBezierPaths_operation_(a1, v22, v9, 3);
      }

      else
      {
        objc_msgSend_p_usingLivarotBooleanBezierPaths_operation_(a1, v22, v9, 0);
      }
      v24 = ;
    }
  }

  else
  {
    v24 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v20, v21);
  }

  v25 = v24;

  return v25;
}

id sub_276719A34(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_p_intersectBezierPaths_usingGPC_(a1, a2, a3, 0);

  return v3;
}

id sub_276719A64(void *a1, uint64_t a2, void *a3, int a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = a3;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v16, v20, 16);
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v6);
        }

        if (objc_msgSend_isEmpty(*(*(&v16 + 1) + 8 * i), v8, v9, v16))
        {
          v14 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v8, v9);

          goto LABEL_14;
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v16, v20, 16);
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (a4)
  {
    objc_msgSend_p_usingGPCBooleanBezierPaths_operation_(a1, v13, v6, 1);
  }

  else
  {
    objc_msgSend_p_usingLivarotBooleanBezierPaths_operation_(a1, v13, v6, 1);
  }
  v14 = ;
LABEL_14:

  return v14;
}

id sub_276719BF8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_p_subtractBezierPaths_usingGPC_(a1, a2, a3, 0);

  return v3;
}

id sub_276719C28(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_p_subtractBezierPaths_usingGPC_(a1, a2, a3, 1);

  return v3;
}

id sub_276719C58(void *a1, uint64_t a2, void *a3, int a4)
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8);
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = v6;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v22, v26, 16);
  if (v14)
  {
    v15 = *v23;
    v16 = 1;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        if (objc_msgSend_isEmpty(v18, v12, v13, v22))
        {
          if (v16)
          {
            v20 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v12, v13);

            goto LABEL_16;
          }
        }

        else
        {
          objc_msgSend_addObject_(v9, v12, v18);
        }

        v16 = 0;
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v22, v26, 16);
      v16 = 0;
    }

    while (v14);
  }

  if (a4)
  {
    objc_msgSend_p_usingGPCBooleanBezierPaths_operation_(a1, v19, v9, 0);
  }

  else
  {
    objc_msgSend_p_usingLivarotBooleanBezierPaths_operation_(a1, v19, v9, 2);
  }
  v20 = ;
LABEL_16:

  return v20;
}

id sub_276719E40(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = a3;
  v5 = objc_msgSend_count(v31, v3, v4);
  v8 = v5;
  if (!v5)
  {
    v9 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v6, v7);
LABEL_6:
    v10 = v9;
    goto LABEL_10;
  }

  if (!(v5 >> 31))
  {
    if (v5 != 1)
    {
      if (malloc_type_malloc(8 * v5, 0x2004093837F09uLL))
      {
        if (malloc_type_malloc(8 * v8, 0x2004093837F09uLL))
        {
          operator new();
        }

        TSUSetCrashReporterInfo();
        v25 = MEMORY[0x277D81150];
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "+[TSUBezierPath(Livarot) excludeBezierPaths:]", "+[TSUBezierPath(Livarot) excludeBezierPaths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm", 2579);
        v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v27, v29, 2579, 1, "Can't allocate enough memory to do exclude operation");

        TSUCrashBreakpoint();
      }

      else
      {
        TSUSetCrashReporterInfo();
        v19 = MEMORY[0x277D81150];
        v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "+[TSUBezierPath(Livarot) excludeBezierPaths:]", "+[TSUBezierPath(Livarot) excludeBezierPaths:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm", 2577);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v21, v23, 2577, 1, "Can't allocate enough memory to do exclude operation");

        TSUCrashBreakpoint();
      }

      abort();
    }

    v9 = objc_msgSend_lastObject(v31, v6, v7);
    goto LABEL_6;
  }

  v12 = MEMORY[0x277D81150];
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "+[TSUBezierPath(Livarot) excludeBezierPaths:]");
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v16, v13, v15, 2564, 0, "Out-of-bounds type assignment failed");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18);
  v10 = 0;
LABEL_10:

  return v10;
}

id sub_27671A5E8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v4, v5);
  v11 = objc_msgSend_objectEnumerator(v3, v7, v8);
  v12 = 0;
  while (1)
  {
    v13 = objc_msgSend_nextObject(v11, v9, v10);

    if (!v13)
    {
      break;
    }

    v12 = v13;
    objc_msgSend_appendBezierPath_(v6, v14, v13);
  }

  return v6;
}

void sub_27671A6B8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_msgSend_p_bezierToPath_(MEMORY[0x277D81160], v4, v3);
  operator new();
}

id sub_27671A9B4(uint64_t a1, uint64_t a2, void *a3)
{
  v21[6] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_elementCount(v3, v4, v5);
  v9 = v6 - 1;
  if (v6 < 1)
  {
LABEL_22:
    v10 = v3;
    goto LABEL_23;
  }

  v10 = 0;
  v11 = 0;
  v12 = -v6;
  v13 = 1;
  v14 = 1;
  do
  {
    if (!(v12 + v13) || !objc_msgSend_elementAtIndex_(v3, v7, v13))
    {
      if (v14)
      {
        if (!v10)
        {
          v10 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v7, v8);
        }

        objc_msgSend_appendBezierPath_fromSegment_toSegment_(v10, v7, v3, v11, v13);
      }

      if (v13 >= v9)
      {
        v14 = 0;
        goto LABEL_20;
      }

      objc_msgSend_elementAtIndex_associatedPoints_(v3, v7, v13, v20);
      if (objc_msgSend_containsPoint_(v10, v15, v16, v20[0], v20[1]))
      {
        v17 = objc_msgSend_elementAtIndex_associatedPoints_(v3, v7, v13 + 1, v21);
        if (v17 == 2)
        {
          v18 = objc_msgSend_containsPoint_(v10, v7, v8, v21[4], v21[5]);
        }

        else
        {
          if (v17 != 1)
          {
            v14 = 0;
            goto LABEL_19;
          }

          v18 = objc_msgSend_containsPoint_(v10, v7, v8, v21[0], v21[1]);
        }

        v14 = v18 ^ 1;
      }

      else
      {
        v14 = 1;
      }

LABEL_19:
      v11 = v13;
    }

LABEL_20:
    ++v13;
  }

  while (v12 + v13 != 1);
  if (!v10)
  {
    goto LABEL_22;
  }

LABEL_23:

  return v10;
}

id sub_27671AB78(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v8 = objc_msgSend_p_bezierToPath_(a1, v7, v6);
  v9 = a2;
  sub_2767A3378(v8, v9);
  v11 = objc_msgSend_p_pathToBezier_(a1, v10, v8);
  if (v8)
  {
    Path::~Path(v8);
    MEMORY[0x277C9C1D0]();
  }

  return v11;
}

void sub_27671AC2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *MEMORY[0x277D85DE8];
  v3 = a3;
  operator new();
}

id sub_27671AED0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  v8 = *(a3 + 8);
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = *MEMORY[0x277CBF348];
    v11 = *(MEMORY[0x277CBF348] + 8);
    v12 = 44 * v8;
    v13 = vdupq_n_s64(0xBFD5555555555555);
    while (1)
    {
      v14 = *(a3 + 16);
      v15 = *(v14 + v9);
      if (v15 <= 1)
      {
        if (v15)
        {
          v16 = v11;
          *v13.i64 = v10;
          if (v15 == 1)
          {
            v17 = v14 + v9;
            *v13.i64 = *(v17 + 16);
            v50 = v13;
            v16 = *(v17 + 20);
            objc_msgSend_lineToPoint_(v6, v4, v5);
            v13 = v50;
          }
        }

        else
        {
          v40 = v14 + v9;
          *v13.i64 = *(v40 + 16);
          v53 = v13;
          v16 = *(v40 + 20);
          objc_msgSend_moveToPoint_(v6, v4, v5);
          v13 = v53;
        }

        goto LABEL_36;
      }

      if (v15 != 2)
      {
        break;
      }

      v51 = vcvtq_f64_f32(*(v14 + v9 + 16));
      v16 = v51.f64[1];
      objc_msgSend_curveToPoint_controlPoint1_controlPoint2_(v6, v4, v5);
      v13 = v51;
LABEL_36:
      v9 += 44;
      v10 = *v13.i64;
      v11 = v16;
      if (v12 == v9)
      {
        goto LABEL_37;
      }
    }

    if (v15 != 4)
    {
      if (v15 == 5)
      {
        objc_msgSend_closePath(v6, v4, v5);
      }

      v16 = v11;
      *v13.i64 = v10;
      goto LABEL_36;
    }

    v18 = v14 + v9;
    *v7.i64 = *(v18 + 16);
    v16 = *(v18 + 20);
    v49 = *(v18 + 24);
    v46 = *(v18 + 28);
    v19 = *(v18 + 36);
    v20 = *(v18 + 37);
    v52 = v7;
    __sincos_stret(*(v18 + 32));
    TSUDotPoints();
    v22 = v21;
    TSUCrossPoints();
    v23 = v22 / v49;
    v25 = v24 / v46;
    TSUDotPoints();
    v27 = 0.0;
    if (v26 < 4.0)
    {
      v28 = sqrt(1.0 / v26 + -0.25);
      v27 = v28;
    }

    v29 = -(v25 * v27 - v23 * -0.5);
    v30 = 3.14159265;
    v31 = 3.14159265;
    if (v29 > -1.0)
    {
      v31 = 0.0;
      if (v29 < 1.0)
      {
        v32 = acos(v29);
        v30 = 3.14159265;
        v31 = v32;
        if (-(-(v23 * v27) - v25 * -0.5) < 0.0)
        {
          v31 = 6.28318531 - v32;
        }
      }
    }

    v47 = v31;
    v33 = v23 * 0.5 - v25 * v27;
    if (v33 > -1.0)
    {
      v30 = 0.0;
      if (v33 < 1.0)
      {
        v34 = acos(v33);
        v30 = v34;
        if (v25 * 0.5 - v27 * -v23 < 0.0)
        {
          v30 = 6.28318531 - v34;
        }
      }
    }

    v35 = v30;
    TSUDotPoints();
    v48 = v36;
    TSUCrossPoints();
    if (v20)
    {
      v39 = v47;
      if (!v19)
      {
LABEL_25:
        objc_msgSend_appendBezierPathWithArcWithCenter_radius_startAngle_endAngle_clockwise_(v6, v37, v20, v48 + (v10 + *v52.i64) * 0.5, v38 + (v11 + v16) * 0.5, v49, v39 * 180.0 / 3.14159265, v35 * 180.0 / 3.14159265);
LABEL_34:
        v13 = v52;
        goto LABEL_36;
      }
    }

    else
    {
      v39 = v47;
      if (v19)
      {
        goto LABEL_25;
      }
    }

    v41 = -v38;
    v42 = v39 + 3.14159265;
    v43 = v35 + 3.14159265;
    if (v42 >= 6.28318531)
    {
      v44 = v42 + -6.28318531;
    }

    else
    {
      v44 = v42;
    }

    if (v43 >= 6.28318531)
    {
      v43 = v43 + -6.28318531;
    }

    objc_msgSend_appendBezierPathWithArcWithCenter_radius_startAngle_endAngle_clockwise_(v6, v37, v20, (v10 + *v52.i64) * 0.5 - v48, v41 + (v11 + v16) * 0.5, v49, v43 * 180.0 / 3.14159265, v44 * 180.0 / 3.14159265);
    goto LABEL_34;
  }

LABEL_37:

  return v6;
}

uint64_t sub_27671B354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 36);
  if (v3 >= 1)
  {
    v4 = *(a3 + 48) + 8;
    v5 = 1;
    do
    {
      if ((v5 & 1) == 0)
      {
        result = TSUGrowRectToPoint();
      }

      v5 = 0;
      v4 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

id sub_27671B3C4(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_count(v4, v5, v6);
  v10 = v7;
  if (!v7)
  {
    v11 = objc_msgSend_bezierPath(MEMORY[0x277D81160], v8, v9);
LABEL_6:
    v12 = v11;
    goto LABEL_11;
  }

  if (!(v7 >> 31))
  {
    if (v7 != 1)
    {
      v14 = malloc_type_malloc(8 * v7, 0x2004093837F09uLL);
      if (v14)
      {
        v15 = 0;
        do
        {
          v16 = objc_msgSend_objectAtIndex_(v4, v13, v15);
          v14[v15] = objc_msgSend_p_bezierToPath_(a1, v17, v16);

          ++v15;
        }

        while (v10 != v15);
        operator new();
      }

      TSUSetCrashReporterInfo();
      v26 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "+[TSUBezierPath(LivarotPrivate) p_usingLivarotBooleanBezierPaths:operation:]", "+[TSUBezierPath(LivarotPrivate) p_usingLivarotBooleanBezierPaths:operation:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm", 3018);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v28, v30, 3018, 1, "Can't allocate enough memory to do BOOLean operation");

      TSUCrashBreakpoint();
      abort();
    }

    v11 = objc_msgSend_lastObject(v4, v8, v9);
    goto LABEL_6;
  }

  v19 = MEMORY[0x277D81150];
  v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSUBezierPath(LivarotPrivate) p_usingLivarotBooleanBezierPaths:operation:]");
  v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 3005, 0, "Out-of-bounds type assignment failed");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  v12 = 0;
LABEL_11:

  return v12;
}

id sub_27671BAAC(void *a1, double a2, uint64_t a3, void *a4)
{
  v6 = a4;
  objc_msgSend_lineWidth(v6, v7, v8);
  if (v10 != 0.0)
  {
    v11 = objc_msgSend_p_bezierToPath_(a1, v9, v6);
    if (a2 > 0.0)
    {
      v14 = a2;
      sub_2767A3378(v11, v14);
    }

    objc_msgSend_lineJoinStyle(v6, v12, v13);
    objc_msgSend_lineCapStyle(v6, v15, v16);
    operator new();
  }

  return 0;
}

uint64_t sub_27671BED8(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a3;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v12, v16, 16);
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if ((objc_msgSend_isFlat(*(*(&v12 + 1) + 8 * v9), v5, v6, v12) & 1) == 0)
        {
          v10 = 0;
          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v12, v16, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

id sub_27671C000(void *a1, uint64_t a2, void *a3, unsigned int a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ((objc_msgSend_p_allPathsAreFlat_(a1, v7, v6) & 1) == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "+[TSUBezierPath(LivarotPrivate) p_usingGPCBooleanBezierPaths:operation:]");
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 3186, 0, "Should only use GPC for flat paths!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v6;
  v18 = 0;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16);
  if (v19)
  {
    v20 = *v30;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v30 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = sub_27671C24C(*(*(&v29 + 1) + 8 * i));
        v24 = v22;
        if (v18)
        {
          sub_2767735B0(a4, v18, v22, v18);
          sub_2767732AC(v24);
          free(v24);
        }

        else
        {
          v18 = v22;
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v23, &v29, v33, 16);
    }

    while (v19);
  }

  v27 = sub_27671C604(v18, v25, v26);
  sub_2767732AC(v18);
  free(v18);

  return v27;
}

int *sub_27671C24C(void *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v37 = a1;
  if (objc_msgSend_isFlat(v37, v1, v2))
  {
    v5 = v37;
  }

  else
  {
    v5 = objc_msgSend_bezierPathByFlatteningPath(v37, v3, v4);
  }

  v8 = v5;
  v9 = objc_msgSend_elementCount(v5, v6, v7);
  v11 = v9;
  if (v9 >= 1)
  {
    if (!(v9 >> 31))
    {
      goto LABEL_6;
    }

LABEL_31:
    v30 = MEMORY[0x277D81150];
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "gpc_polygon *polygonFromBezier(TSUBezierPath *__strong)");
    v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v30, v34, v31, v33, 3228, 0, "Out-of-bounds type assignment failed");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36);
    v12 = 0;
    goto LABEL_29;
  }

  if ((v9 - 1) <= 0xFFFFFFFF7FFFFFFELL)
  {
    goto LABEL_31;
  }

LABEL_6:
  v12 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040B05087B7uLL);
  if (!v12 || !v11)
  {
    goto LABEL_29;
  }

  v38 = v11;
  v39 = malloc_type_calloc(0x10uLL, v11, 0x1000040451B5BE8uLL);
  if (v11 < 1)
  {
    goto LABEL_28;
  }

  v14 = 0;
  v15 = 0;
  v16 = v11 & 0x7FFFFFFF;
  v17 = INFINITY;
  v18 = INFINITY;
  do
  {
    v19 = objc_msgSend_elementAtIndex_associatedPoints_(v8, v13, v14, v40);
    if (v19 > 1)
    {
      if (v19 != 3)
      {
        if (v19 == 2)
        {
          v21 = MEMORY[0x277D81150];
          v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "gpc_polygon *polygonFromBezier(TSUBezierPath *__strong)");
          v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 3248, 0, "Element %d is curved, but the path should be flat!", v14);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
          v28 = v15;
          goto LABEL_25;
        }

        goto LABEL_22;
      }

      v38 = v15;
      sub_276773338(v12, &v38, 0);
      v28 = -1;
      v18 = INFINITY;
      v17 = INFINITY;
    }

    else
    {
      if (!v19)
      {
        if (v15 >= 2)
        {
          v38 = v15;
          sub_276773338(v12, &v38, 0);
          v15 = 0;
        }

        *(v39 + v15) = *v40;
        v18 = v40[1];
        v17 = v40[0];
        goto LABEL_22;
      }

      if (v19 != 1)
      {
        goto LABEL_22;
      }

      v20 = *v40;
      if (vabdd_f64(v40[0], v17) > 0.699999988 || vabdd_f64(v40[1], v18) > 0.699999988)
      {
        *(v39 + v15) = *v40;
        v18 = *(&v20 + 1);
        v17 = *&v20;
LABEL_22:
        v28 = v15;
        goto LABEL_25;
      }

      v28 = v15 - 1;
    }

LABEL_25:
    ++v14;
    v15 = v28 + 1;
  }

  while (v16 != v14);
  if (v28 >= 1)
  {
    v38 = v28 + 1;
    sub_276773338(v12, &v38, 0);
  }

LABEL_28:
  free(v39);
LABEL_29:

  return v12;
}

id sub_27671C604(int *a1, const char *a2, uint64_t a3)
{
  v5 = objc_msgSend_bezierPath(MEMORY[0x277D81160], a2, a3);
  if (a1 && *a1 >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *(a1 + 2);
      sub_27671C6D0(v8 + v6, v4);
      if (v10 > 0.00999999978 && v9 > 0.00999999978)
      {
        sub_27671C8C4((v8 + v6), v5);
      }

      ++v7;
      v6 += 16;
    }

    while (v7 < *a1);
  }

  return v5;
}

double sub_27671C6D0(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    v21 = MEMORY[0x277D81150];
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGRect boundsForVertexList(gpc_vertex_list *)");
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v21, v25, v22, v24, 3327, 0, "Bad list ptr");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27);
    return *MEMORY[0x277CBF3A0];
  }

  v3 = *a1;
  if (*a1 <= 0)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "CGRect boundsForVertexList(gpc_vertex_list *)");
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/drawables/TSUBezierPath-TSDAdditions.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v8, v5, v7, 3331, 0, "Bad vertex count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v9, v10);
    v3 = *a1;
    if (*a1 <= 0)
    {
      return *MEMORY[0x277CBF3A0];
    }
  }

  v11 = *(a1 + 8);
  v12 = *v11;
  v13 = v11[1];
  if (v3 >= 2)
  {
    v14 = v3;
    v15 = v11 + 3;
    v16 = v14 - 1;
    v17 = v12;
    v18 = v13;
    do
    {
      v19 = *(v15 - 1);
      v20 = *v15;
      if (v19 <= v12)
      {
        v12 = v19;
      }

      if (v19 > v17)
      {
        v17 = v19;
      }

      if (v20 <= v13)
      {
        v13 = v20;
      }

      if (v20 > v18)
      {
        v18 = v20;
      }

      v15 += 2;
      --v16;
    }

    while (v16);
  }

  return v12;
}

void sub_27671C8C4(double **a1, void *a2)
{
  v9 = a2;
  objc_msgSend_moveToPoint_(v9, v3, v4, *a1[1], a1[1][1]);
  if (*a1 >= 2)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      objc_msgSend_lineToPoint_(v9, v5, v6, a1[1][v7 + 2], a1[1][v7 + 3]);
      ++v8;
      v7 += 2;
    }

    while (v8 < *a1);
  }

  objc_msgSend_closePath(v9, v5, v6);
}

void sub_27671CCB4(uint64_t a1, const char *a2)
{
  if (atomic_load((*(a1 + 32) + 16)))
  {
    v4 = 0;
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v7 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = *(a1 + 64);
    v12 = 0;
    v5 = objc_msgSend_copyCGImageAtTime_error_(v7, a2, &v10, &v12);
    v4 = v12;
    v6 = v5 == 0;
  }

  if (atomic_load((*(a1 + 32) + 16)))
  {
    v9 = 2;
  }

  else
  {
    v9 = v6;
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v5, v9, v4);
  CGImageRelease(v5);
}

void sub_276720108(uint64_t a1, void *a2)
{
  v7 = objc_msgSend_layoutForInfo_(a2, a2, *(a1 + 32));
  objc_msgSend_invalidateConnections(v7, v3, v4);
  if (*(a1 + 40))
  {
    **(a1 + 40) = objc_msgSend_layoutInfoGeometry(v7, v5, v6);
  }

  if (*(a1 + 48))
  {
    **(a1 + 48) = objc_msgSend_pathSource(v7, v5, v6);
  }
}

void sub_276720548(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = objc_msgSend_layoutForInfo_(a2, a2, *(a1 + 32));
  (*(v2 + 16))(v2, v3);
}

uint64_t sub_276721450(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_info(a2, a2, a3);
  LODWORD(v3) = objc_msgSend_isNonGroupedChild_(v3, v5, v4);

  return v3 ^ 1;
}

uint64_t sub_276721558(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_info(a2, a2, a3);
  isNonGroupedChild = objc_msgSend_isNonGroupedChild_(v3, v5, v4);

  return isNonGroupedChild;
}

uint64_t sub_276721654(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6060 = v4;
  TSD::_AngleGradientArchive_default_instance_ = &unk_288576168;
  dword_2812F6070 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_AngleGradientArchive_default_instance_);
}

uint64_t sub_2767216D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::Attribution::Attribution(&TSD::_Attribution_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_Attribution_default_instance_);
}

uint64_t sub_276721748(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::BezierPathSourceArchive::BezierPathSourceArchive(&TSD::_BezierPathSourceArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_BezierPathSourceArchive_default_instance_);
}

uint64_t sub_2767217B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F5EF0 = v4;
  TSD::_CalloutPathSourceArchive_default_instance_ = &unk_288575D48;
  if (atomic_load_explicit(scc_info_CalloutPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5F00 = 0;
  unk_2812F5F08 = 0;
  byte_2812F5F18 = 0;
  qword_2812F5F10 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_CalloutPathSourceArchive_default_instance_);
}

uint64_t sub_276721870(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::CanvasSelectionArchive::CanvasSelectionArchive(&TSD::_CanvasSelectionArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_CanvasSelectionArchive_default_instance_);
}

uint64_t sub_2767218E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::CommentStorageArchive::CommentStorageArchive(&TSD::_CommentStorageArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_CommentStorageArchive_default_instance_);
}

uint64_t sub_276721950(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F67F0 = v4;
  TSD::_ConnectionLineArchive_default_instance_ = &unk_288577608;
  if (atomic_load_explicit(scc_info_ConnectionLineArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6820 = 0;
  unk_2812F6810 = 0u;
  unk_2812F6800 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ConnectionLineArchive_default_instance_);
}

uint64_t sub_276721A0C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5F28 = v4;
  TSD::_ConnectionLinePathSourceArchive_default_instance_ = &unk_288575DF8;
  if (atomic_load_explicit(scc_info_ConnectionLinePathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5F38 = 0;
  unk_2812F5F40 = 0;
  dword_2812F5F48 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ConnectionLinePathSourceArchive_default_instance_);
}

uint64_t sub_276721AC0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6370 = v4;
  TSD::_ContactShadowArchive_default_instance_ = &unk_288576B08;
  qword_2812F6380 = 0x3E4CCCCD00000000;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ContactShadowArchive_default_instance_);
}

uint64_t sub_276721B4C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::ContainerArchive::ContainerArchive(&TSD::_ContainerArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ContainerArchive_default_instance_);
}

uint64_t sub_276721BBC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6390 = v4;
  TSD::_CurvedShadowArchive_default_instance_ = &unk_288576BB8;
  dword_2812F63A0 = 1058642330;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_CurvedShadowArchive_default_instance_);
}

uint64_t sub_276721C48(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::DrawableArchive::DrawableArchive(&TSD::_DrawableArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_DrawableArchive_default_instance_);
}

uint64_t sub_276721CB8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6A50 = 0;
  unk_2812F6A58 = 0;
  TSD::_DrawableContentDescription_default_instance_ = &unk_288577A28;
  unk_2812F6A5F = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_DrawableContentDescription_default_instance_);
}

uint64_t sub_276721D34(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::DrawableSelectionArchive::DrawableSelectionArchive(&TSD::_DrawableSelectionArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_DrawableSelectionArchive_default_instance_);
}

uint64_t sub_276721DA4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::_DropShadowArchive_default_instance_ = &unk_288576A58;
  *algn_2812F6358 = 0;
  dword_2812F6360 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_DropShadowArchive_default_instance_);
}

uint64_t sub_276721E1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F5E08 = 0;
  unk_2812F5E10 = 0;
  TSD::_EdgeInsetsArchive_default_instance_ = &unk_2885759D8;
  qword_2812F5E18 = 0;
  unk_2812F5E20 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_EdgeInsetsArchive_default_instance_);
}

uint64_t sub_276721E98(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::EditableBezierPathSourceArchive::EditableBezierPathSourceArchive(&TSD::_EditableBezierPathSourceArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_EditableBezierPathSourceArchive_default_instance_);
}

uint64_t sub_276721F08(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::EditableBezierPathSourceArchive_Node::EditableBezierPathSourceArchive_Node(&TSD::_EditableBezierPathSourceArchive_Node_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_EditableBezierPathSourceArchive_Node_default_instance_);
}

uint64_t sub_276721F78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::EditableBezierPathSourceArchive_Subpath::EditableBezierPathSourceArchive_Subpath(&TSD::_EditableBezierPathSourceArchive_Subpath_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_EditableBezierPathSourceArchive_Subpath_default_instance_);
}

uint64_t sub_276721FE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6A20 = 0;
  unk_2812F6A28 = 0;
  TSD::_ExteriorTextWrapArchive_default_instance_ = &unk_288577978;
  qword_2812F6A30 = 0;
  unk_2812F6A38 = 0;
  unk_2812F6A3D = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ExteriorTextWrapArchive_default_instance_);
}

uint64_t sub_276722068(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::FillArchive::FillArchive(&TSD::_FillArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_FillArchive_default_instance_);
}

uint64_t sub_2767220D8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::FrameArchive::FrameArchive(&TSD::_FrameArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_FrameArchive_default_instance_);
}

uint64_t sub_276722148(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6748 = 0;
  unk_2812F6750 = 0;
  TSD::_FreehandDrawingAnimationArchive_default_instance_ = &unk_2885773F8;
  qword_2812F6758 = 0;
  byte_2812F6760 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_FreehandDrawingAnimationArchive_default_instance_);
}

uint64_t sub_2767221C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6770 = v4;
  TSD::_FreehandDrawingArchive_default_instance_ = &unk_2885774A8;
  if (atomic_load_explicit(scc_info_FreehandDrawingArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F6790 = 0u;
  unk_2812F6780 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_FreehandDrawingArchive_default_instance_);
}

uint64_t sub_276722280(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6A70 = v4;
  TSD::_FreehandDrawingContentDescription_default_instance_ = &unk_288577AD8;
  if (atomic_load_explicit(scc_info_FreehandDrawingContentDescription_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812F6A88 = 0;
  qword_2812F6A80 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_FreehandDrawingContentDescription_default_instance_);
}

uint64_t sub_276722334(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6A98 = v4;
  TSD::_FreehandDrawingToolkitUIState_default_instance_ = &unk_288577B88;
  if (atomic_load_explicit(scc_info_FreehandDrawingToolkitUIState_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F6AE5 = 0u;
  unk_2812F6AD8 = 0u;
  unk_2812F6AC8 = 0u;
  unk_2812F6AB8 = 0u;
  unk_2812F6AA8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_FreehandDrawingToolkitUIState_default_instance_);
}

uint64_t sub_2767223F8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F5E30 = v4;
  TSD::_GeometryArchive_default_instance_ = &unk_288575A88;
  if (atomic_load_explicit(scc_info_GeometryArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5E40 = 0;
  unk_2812F5E48 = 0;
  qword_2812F5E50 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_GeometryArchive_default_instance_);
}

uint64_t sub_2767224AC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::GradientArchive::GradientArchive(&TSD::_GradientArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_GradientArchive_default_instance_);
}

uint64_t sub_27672251C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F60B0 = v4;
  TSD::_GradientArchive_GradientStop_default_instance_ = &unk_2885762C8;
  if (atomic_load_explicit(scc_info_GradientArchive_GradientStop_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F60C0 = 0;
  unk_2812F60C8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_GradientArchive_GradientStop_default_instance_);
}

uint64_t sub_2767225CC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::GroupArchive::GroupArchive(&TSD::_GroupArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_GroupArchive_default_instance_);
}

uint64_t sub_27672263C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6C30 = v4;
  TSD::_GroupSelectionArchive_default_instance_ = &unk_288578058;
  if (atomic_load_explicit(scc_info_GroupSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  byte_2812F6C48 = 0;
  qword_2812F6C40 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_GroupSelectionArchive_default_instance_);
}

uint64_t sub_2767226F0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6B18 = 0;
  unk_2812F6B20 = 0;
  TSD::_GuideArchive_default_instance_ = &unk_288577CE8;
  qword_2812F6B28 = 0;
  unk_2812F6B30 = 0;
  word_2812F6B38 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_GuideArchive_default_instance_);
}

uint64_t sub_276722770(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::GuideStorageArchive::GuideStorageArchive(&TSD::_GuideStorageArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_GuideStorageArchive_default_instance_);
}

uint64_t sub_2767227E0(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::_ImageAdjustmentsArchive_default_instance_ = &unk_288576D18;
  unk_2812F63D0 = 0;
  xmmword_2812F63D8 = 0u;
  unk_2812F63E8 = 0u;
  xmmword_2812F63F8 = 0u;
  *(&xmmword_2812F63F8 + 14) = 0;
  dword_2812F6410 = 1065353216;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ImageAdjustmentsArchive_default_instance_);
}

uint64_t sub_27672286C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::ImageArchive::ImageArchive(&TSD::_ImageArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ImageArchive_default_instance_);
}

uint64_t sub_2767228DC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6928 = v4;
  TSD::_ImageDataAttributes_default_instance_ = &unk_288577818;
  if (atomic_load_explicit(scc_info_ImageDataAttributes_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  word_2812F6940 = 0;
  qword_2812F6938 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageDataAttributes_default_instance_);
}

uint64_t sub_276722990(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6128 = v4;
  TSD::_ImageFillArchive_default_instance_ = &unk_288576428;
  if (atomic_load_explicit(scc_info_ImageFillArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F6165 = 0u;
  unk_2812F6158 = 0u;
  unk_2812F6148 = 0u;
  unk_2812F6138 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ImageFillArchive_default_instance_);
}

uint64_t sub_276722A50(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::_InfoHyperlinkSelectionArchive_default_instance_ = &unk_2885781B8;
  unk_2812F6C70 = 0;
  dword_2812F6C78 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_InfoHyperlinkSelectionArchive_default_instance_);
}

uint64_t sub_276722AC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::LineEndArchive::LineEndArchive(&TSD::_LineEndArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_LineEndArchive_default_instance_);
}

uint64_t sub_276722B38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6900 = v4;
  TSD::_MaskArchive_default_instance_ = &unk_288577768;
  if (atomic_load_explicit(scc_info_MaskArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6910 = 0;
  unk_2812F6918 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MaskArchive_default_instance_);
}

uint64_t sub_276722BE8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F64D8 = v4;
  TSD::_MediaStyleArchive_default_instance_ = &unk_288576FD8;
  if (atomic_load_explicit(scc_info_MediaStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F64E8 = 0;
  unk_2812F64F0 = 0;
  dword_2812F64F8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MediaStyleArchive_default_instance_);
}

uint64_t sub_276722C9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F64A0 = v4;
  TSD::_MediaStylePropertiesArchive_default_instance_ = &unk_288576F28;
  if (atomic_load_explicit(scc_info_MediaStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F64B0 = 0;
  unk_2812F64B8 = 0;
  dword_2812F64C8 = 0;
  qword_2812F64C0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_MediaStylePropertiesArchive_default_instance_);
}

uint64_t sub_276722D54(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::MovieArchive::MovieArchive(&TSD::_MovieArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_MovieArchive_default_instance_);
}

uint64_t sub_276722DC4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::MovieFingerprint::MovieFingerprint(&TSD::_MovieFingerprint_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_MovieFingerprint_default_instance_);
}

uint64_t sub_276722E34(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::MovieFingerprintTrack::MovieFingerprintTrack(&TSD::_MovieFingerprintTrack_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_MovieFingerprintTrack_default_instance_);
}

uint64_t sub_276722EA4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::_PathSelectionArchive_default_instance_ = &unk_288578108;
  *algn_2812F6C58 = 0;
  dword_2812F6C60 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_PathSelectionArchive_default_instance_);
}

uint64_t sub_276722F1C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::PathSourceArchive::PathSourceArchive(&TSD::_PathSourceArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_PathSourceArchive_default_instance_);
}

uint64_t sub_276722F8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F62B0 = v4;
  TSD::_PatternedStrokeArchive_default_instance_ = &unk_288576848;
  if (atomic_load_explicit(scc_info_PatternedStrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F62C0 = MEMORY[0x277D80A90];
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_PatternedStrokeArchive_default_instance_);
}

uint64_t sub_276723044(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6D08 = v4;
  TSD::_PencilAnnotationArchive_default_instance_ = &unk_2885783C8;
  if (atomic_load_explicit(scc_info_PencilAnnotationArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6D18 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_PencilAnnotationArchive_default_instance_);
}

uint64_t sub_2767230F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6D28 = v4;
  TSD::_PencilAnnotationSelectionArchive_default_instance_ = &unk_288578478;
  if (atomic_load_explicit(scc_info_PencilAnnotationSelectionArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6D38 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_PencilAnnotationSelectionArchive_default_instance_);
}

uint64_t sub_2767231A4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::PencilAnnotationStorageArchive::PencilAnnotationStorageArchive(&TSD::_PencilAnnotationStorageArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_PencilAnnotationStorageArchive_default_instance_);
}

uint64_t sub_276723214(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F5E60 = v4;
  TSD::_PointPathSourceArchive_default_instance_ = &unk_288575B38;
  if (atomic_load_explicit(scc_info_PointPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5E70 = 0;
  unk_2812F5E78 = 0;
  dword_2812F5E80 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_PointPathSourceArchive_default_instance_);
}

uint64_t sub_2767232C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F63B0 = v4;
  TSD::_ReflectionArchive_default_instance_ = &unk_288576C68;
  dword_2812F63C0 = 1056964608;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ReflectionArchive_default_instance_);
}

uint64_t sub_276723350(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6CD8 = v4;
  TSD::_ReplaceAnnotationAuthorCommandArchive_default_instance_ = &unk_288578318;
  if (atomic_load_explicit(scc_info_ReplaceAnnotationAuthorCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6CE8 = 0;
  unk_2812F6CF0 = 0;
  qword_2812F6CF8 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ReplaceAnnotationAuthorCommandArchive_default_instance_);
}

uint64_t sub_276723404(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F5E90 = v4;
  TSD::_ScalarPathSourceArchive_default_instance_ = &unk_288575BE8;
  if (atomic_load_explicit(scc_info_ScalarPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F5EA0 = 0;
  unk_2812F5EA8 = 0;
  byte_2812F5EB0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ScalarPathSourceArchive_default_instance_);
}

uint64_t sub_2767234B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::ShadowArchive::ShadowArchive(&TSD::_ShadowArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ShadowArchive_default_instance_);
}

uint64_t sub_276723528(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F67A8 = v4;
  TSD::_ShapeArchive_default_instance_ = &unk_288577558;
  if (atomic_load_explicit(scc_info_ShapeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  unk_2812F67D4 = 0u;
  unk_2812F67C8 = 0u;
  unk_2812F67B8 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ShapeArchive_default_instance_);
}

uint64_t sub_2767235E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6470 = v4;
  TSD::_ShapeStyleArchive_default_instance_ = &unk_288576E78;
  if (atomic_load_explicit(scc_info_ShapeStyleArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6480 = 0;
  unk_2812F6488 = 0;
  dword_2812F6490 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ShapeStyleArchive_default_instance_);
}

uint64_t sub_276723698(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6420 = v4;
  TSD::_ShapeStylePropertiesArchive_default_instance_ = &unk_288576DC8;
  if (atomic_load_explicit(scc_info_ShapeStylePropertiesArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F6460 = 0;
  unk_2812F6450 = 0u;
  unk_2812F6440 = 0u;
  unk_2812F6430 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ShapeStylePropertiesArchive_default_instance_);
}

uint64_t sub_276723758(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::SmartStrokeArchive::SmartStrokeArchive(&TSD::_SmartStrokeArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SmartStrokeArchive_default_instance_);
}

uint64_t sub_2767237C8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6E30 = v4;
  TSD::_SpecColorFillSetColorArchive_default_instance_ = &unk_2885785D8;
  if (atomic_load_explicit(scc_info_SpecColorFillSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6E40 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_SpecColorFillSetColorArchive_default_instance_);
}

uint64_t sub_276723878(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6E50 = 0;
  unk_2812F6E58 = 0;
  TSD::_SpecFrameSetAssetScaleArchive_default_instance_ = &unk_288578688;
  qword_2812F6E60 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SpecFrameSetAssetScaleArchive_default_instance_);
}

uint64_t sub_2767238F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6E70 = 0;
  unk_2812F6E78 = 0;
  TSD::_SpecGradientFillSetAngleArchive_default_instance_ = &unk_288578738;
  qword_2812F6E80 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SpecGradientFillSetAngleArchive_default_instance_);
}

uint64_t sub_276723970(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6E90 = v4;
  TSD::_SpecImageFillSetTechniqueArchive_default_instance_ = &unk_2885787E8;
  dword_2812F6EA0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_SpecImageFillSetTechniqueArchive_default_instance_);
}

uint64_t sub_2767239F4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6EB0 = 0;
  unk_2812F6EB8 = 0;
  TSD::_SpecReflectionSetOpacityArchive_default_instance_ = &unk_288578898;
  qword_2812F6EC0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SpecReflectionSetOpacityArchive_default_instance_);
}

uint64_t sub_276723A70(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6ED0 = 0;
  unk_2812F6ED8 = 0;
  TSD::_SpecShadowSetAngleArchive_default_instance_ = &unk_288578948;
  qword_2812F6EE0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SpecShadowSetAngleArchive_default_instance_);
}

uint64_t sub_276723AEC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6EF0 = v4;
  TSD::_SpecShadowSetColorArchive_default_instance_ = &unk_2885789F8;
  if (atomic_load_explicit(scc_info_SpecShadowSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6F00 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_SpecShadowSetColorArchive_default_instance_);
}

uint64_t sub_276723B9C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6F10 = 0;
  unk_2812F6F18 = 0;
  TSD::_SpecShadowSetOffsetArchive_default_instance_ = &unk_288578AA8;
  qword_2812F6F20 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SpecShadowSetOffsetArchive_default_instance_);
}

uint64_t sub_276723C18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6F30 = 0;
  unk_2812F6F38 = 0;
  TSD::_SpecShadowSetOpacityArchive_default_instance_ = &unk_288578B58;
  qword_2812F6F40 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SpecShadowSetOpacityArchive_default_instance_);
}

uint64_t sub_276723C94(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6F50 = v4;
  TSD::_SpecShadowSetRadiusArchive_default_instance_ = &unk_288578C08;
  dword_2812F6F60 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_SpecShadowSetRadiusArchive_default_instance_);
}

uint64_t sub_276723D18(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6F70 = v4;
  TSD::_SpecStrokeSetColorArchive_default_instance_ = &unk_288578CB8;
  if (atomic_load_explicit(scc_info_SpecStrokeSetColorArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6F80 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_SpecStrokeSetColorArchive_default_instance_);
}

uint64_t sub_276723DC8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  *algn_2812F6F90 = v4;
  TSD::_SpecStrokeSetPatternArchive_default_instance_ = &unk_288578D68;
  if (atomic_load_explicit(scc_info_SpecStrokeSetPatternArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6FC0 = 0;
  *&algn_2812F6F90[32] = 0u;
  *&algn_2812F6F90[16] = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_SpecStrokeSetPatternArchive_default_instance_);
}

uint64_t sub_276723E84(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6FD0 = 0;
  unk_2812F6FD8 = 0;
  TSD::_SpecStrokeSetWidthArchive_default_instance_ = &unk_288578E18;
  qword_2812F6FE0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_SpecStrokeSetWidthArchive_default_instance_);
}

uint64_t sub_276723F00(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::_StandinCaptionArchive_default_instance_ = &unk_288577C38;
  unk_2812F6B00 = 0;
  dword_2812F6B08 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_StandinCaptionArchive_default_instance_);
}

uint64_t sub_276723F78(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6200 = v4;
  TSD::_StrokeArchive_default_instance_ = &unk_288576638;
  if (atomic_load_explicit(scc_info_StrokeArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6240 = 0;
  unk_2812F6230 = 0u;
  unk_2812F6220 = 0u;
  unk_2812F6210 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_StrokeArchive_default_instance_);
}

uint64_t sub_276724038(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::_StrokePatternArchive_default_instance_ = &unk_288576588;
  *algn_2812F61C8 = 0;
  xmmword_2812F61D0 = 0u;
  unk_2812F61E0 = 0u;
  dword_2812F61F0 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_StrokePatternArchive_default_instance_);
}

uint64_t sub_2767240B8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  TSD::ThemePresetsArchive::ThemePresetsArchive(&TSD::_ThemePresetsArchive_default_instance_, 0);
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_ThemePresetsArchive_default_instance_);
}

uint64_t sub_276724128(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F65F8 = v4;
  TSD::_ThemeReplaceFillPresetCommandArchive_default_instance_ = &unk_288577138;
  if (atomic_load_explicit(scc_info_ThemeReplaceFillPresetCommandArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812F6628 = 0;
  unk_2812F6618 = 0u;
  unk_2812F6608 = 0u;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_ThemeReplaceFillPresetCommandArchive_default_instance_);
}

uint64_t sub_2767241E4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  *&v4 = 0;
  unk_2812F6080 = v4;
  TSD::_TransformGradientArchive_default_instance_ = &unk_288576218;
  if (atomic_load_explicit(scc_info_TransformGradientArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812F6090 = 0;
  unk_2812F6098 = 0;
  qword_2812F60A0 = 0;
  v5 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v5, &TSD::_TransformGradientArchive_default_instance_);
}

uint64_t sub_276724298(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSDArchives.pb.cc", a4);
  qword_2812F6B48 = 0;
  unk_2812F6B50 = 0;
  TSD::_UserDefinedGuideArchive_default_instance_ = &unk_288577D98;
  qword_2812F6B58 = 0;
  v4 = MEMORY[0x277D80A80];

  return MEMORY[0x2821EACD8](v4, &TSD::_UserDefinedGuideArchive_default_instance_);
}

BOOL TSD::PointPathSourceArchive_PointPathSourceType_IsValid(TSD *this)
{
  v1 = this;
  result = 1;
  if (v1 > 0xA || ((1 << v1) & 0x403) == 0)
  {
    return v1 == 100 || v1 == 200;
  }

  return result;
}

void *TSD::EdgeInsetsArchive::EdgeInsetsArchive(void *result, uint64_t a2)
{
  *result = &unk_2885759D8;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

{
  *result = &unk_2885759D8;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

TSD::EdgeInsetsArchive *TSD::EdgeInsetsArchive::EdgeInsetsArchive(TSD::EdgeInsetsArchive *this, const TSD::EdgeInsetsArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_2885759D8;
  *(this + 4) = *(a2 + 4);
  *(this + 5) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(v4, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 24) = *(a2 + 24);
  return this;
}

void TSD::EdgeInsetsArchive::~EdgeInsetsArchive(TSD::EdgeInsetsArchive *this)
{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);
}

{
  sub_2766FFE58(this + 1);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::EdgeInsetsArchive::default_instance(TSD::EdgeInsetsArchive *this)
{
  if (atomic_load_explicit(scc_info_EdgeInsetsArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_EdgeInsetsArchive_default_instance_;
}

uint64_t *TSD::EdgeInsetsArchive::Clear(TSD::EdgeInsetsArchive *this)
{
  if ((*(this + 16) & 0xF) != 0)
  {
    *(this + 3) = 0;
    *(this + 4) = 0;
  }

  v2 = *(this + 8);
  result = (this + 8);
  *(result + 2) = 0;
  if (v2)
  {
    return sub_27670B144(result);
  }

  return result;
}

google::protobuf::internal *TSD::EdgeInsetsArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v20 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v20) & 1) == 0)
  {
    while (1)
    {
      v7 = (v20 + 1);
      v8 = *v20;
      if ((*v20 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v20, (v9 - 128));
      v20 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_37;
      }

      v7 = TagFallback;
      v8 = v19;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v16 = *v7;
            v12 = (v7 + 4);
            v5 |= 4u;
            *(a1 + 32) = v16;
            goto LABEL_23;
          }
        }

        else if (v10 == 4 && v8 == 37)
        {
          v14 = *v7;
          v12 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 36) = v14;
          goto LABEL_23;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 13)
        {
          v15 = *v7;
          v12 = (v7 + 4);
          v5 |= 1u;
          *(a1 + 24) = v15;
          goto LABEL_23;
        }
      }

      else if (v10 == 2 && v8 == 21)
      {
        v13 = *v7;
        v12 = (v7 + 4);
        v5 |= 2u;
        *(a1 + 28) = v13;
LABEL_23:
        v20 = v12;
        goto LABEL_24;
      }

      if (v8)
      {
        v17 = (v8 & 7) == 4;
      }

      else
      {
        v17 = 1;
      }

      if (v17)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v20 = google::protobuf::internal::UnknownFieldParse();
      if (!v20)
      {
LABEL_37:
        v20 = 0;
        goto LABEL_2;
      }

LABEL_24:
      if (sub_27670AF08(a3, &v20))
      {
        goto LABEL_2;
      }
    }

    v7 = (v20 + 2);
LABEL_6:
    v20 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v20;
}

unsigned __int8 *TSD::EdgeInsetsArchive::_InternalSerialize(TSD::EdgeInsetsArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 6);
    *a2 = 13;
    *(a2 + 1) = v7;
    a2 += 5;
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v8 = *(this + 7);
  *a2 = 21;
  *(a2 + 1) = v8;
  a2 += 5;
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_15;
  }

LABEL_12:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v9 = *(this + 8);
  *a2 = 29;
  *(a2 + 1) = v9;
  a2 += 5;
  if ((v6 & 8) != 0)
  {
LABEL_15:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 9);
    *a2 = 37;
    *(a2 + 1) = v10;
    a2 += 5;
  }

LABEL_18:
  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v11 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::EdgeInsetsArchive::RequiredFieldsByteSizeFallback(TSD::EdgeInsetsArchive *this)
{
  v1 = *(this + 4);
  v2 = 5;
  if ((v1 & 1) == 0)
  {
    v2 = 0;
  }

  if ((v1 & 2) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 4) != 0)
  {
    v2 += 5;
  }

  if ((v1 & 8) != 0)
  {
    return v2 + 5;
  }

  else
  {
    return v2;
  }
}

uint64_t TSD::EdgeInsetsArchive::ByteSizeLong(TSD::EdgeInsetsArchive *this)
{
  v1 = *(this + 4);
  if ((~v1 & 0xF) != 0)
  {
    v3 = 5;
    if ((v1 & 1) == 0)
    {
      v3 = 0;
    }

    if ((v1 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 = v3 + 5;
    }

    else
    {
      v2 = v3;
    }
  }

  else
  {
    v2 = 20;
  }

  if (*(this + 8))
  {
    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  *(this + 5) = v2;
  return v2;
}

uint64_t TSD::EdgeInsetsArchive::MergeFrom(TSD::EdgeInsetsArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::EdgeInsetsArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::EdgeInsetsArchive::MergeFrom(uint64_t this, const TSD::EdgeInsetsArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      v3[6] = *(a2 + 6);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    v3[7] = *(a2 + 7);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        v3[4] |= v5;
        return this;
      }

LABEL_8:
      v3[9] = *(a2 + 9);
      goto LABEL_9;
    }

LABEL_13:
    v3[8] = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

TSD::EdgeInsetsArchive *TSD::EdgeInsetsArchive::CopyFrom(TSD::EdgeInsetsArchive *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EdgeInsetsArchive::Clear(this);

    return TSD::EdgeInsetsArchive::MergeFrom(v4, a2);
  }

  return this;
}

TSD::EdgeInsetsArchive *TSD::EdgeInsetsArchive::CopyFrom(TSD::EdgeInsetsArchive *this, const TSD::EdgeInsetsArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EdgeInsetsArchive::Clear(this);

    return TSD::EdgeInsetsArchive::MergeFrom(v4, a2);
  }

  return this;
}

__n128 TSD::EdgeInsetsArchive::InternalSwap(TSD::EdgeInsetsArchive *this, TSD::EdgeInsetsArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  return result;
}

TSP::Point *TSD::GeometryArchive::clear_position(TSD::GeometryArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Size *TSD::GeometryArchive::clear_size(TSD::GeometryArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::GeometryArchive *TSD::GeometryArchive::GeometryArchive(TSD::GeometryArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575A88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GeometryArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288575A88;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_GeometryArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::GeometryArchive *TSD::GeometryArchive::GeometryArchive(TSD::GeometryArchive *this, const TSD::GeometryArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575A88;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 5) = *(a2 + 5);
  return this;
}

void TSD::GeometryArchive::~GeometryArchive(TSD::GeometryArchive *this)
{
  if (this != &TSD::_GeometryArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Size::~Size(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::GeometryArchive::~GeometryArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::GeometryArchive::default_instance(TSD::GeometryArchive *this)
{
  if (atomic_load_explicit(scc_info_GeometryArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_GeometryArchive_default_instance_;
}

uint64_t *TSD::GeometryArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Point::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Size::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0xC) != 0)
  {
    *(v1 + 40) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::GeometryArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_49;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_34;
          }

          *(a1 + 16) |= 1u;
          v16 = *(a1 + 24);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C9BB00](v17);
            LODWORD(v16) = v18;
            *(a1 + 24) = v18;
            v7 = v27;
          }

          v15 = sub_27680AABC(a3, v16, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_34;
          }

          *(a1 + 16) |= 2u;
          v12 = *(a1 + 32);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x277C9BAD0](v13);
            LODWORD(v12) = v14;
            *(a1 + 32) = v14;
            v7 = v27;
          }

          v15 = sub_27680AB8C(a3, v12, v7);
        }

        goto LABEL_41;
      }

      if (v10 != 3)
      {
        if (v10 == 4 && v8 == 37)
        {
          v5 |= 8u;
          *(a1 + 44) = *v7;
          v27 = (v7 + 4);
          goto LABEL_42;
        }

LABEL_34:
        if (v8)
        {
          v22 = (v8 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v15 = google::protobuf::internal::UnknownFieldParse();
LABEL_41:
        v27 = v15;
        if (!v15)
        {
          goto LABEL_49;
        }

        goto LABEL_42;
      }

      if (v8 != 24)
      {
        goto LABEL_34;
      }

      v5 |= 4u;
      v19 = (v7 + 1);
      LODWORD(v20) = *v7;
      if ((*v7 & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      v21 = *v19;
      v20 = (v20 + (v21 << 7) - 128);
      if ((v21 & 0x80000000) == 0)
      {
        v19 = (v7 + 2);
LABEL_33:
        v27 = v19;
        *(a1 + 40) = v20;
        goto LABEL_42;
      }

      v25 = google::protobuf::internal::VarintParseSlow32(v7, v20);
      v27 = v25;
      *(a1 + 40) = v26;
      if (!v25)
      {
LABEL_49:
        v27 = 0;
        goto LABEL_2;
      }

LABEL_42:
      if (sub_27670AF08(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TSD::GeometryArchive::_InternalSerialize(TSD::GeometryArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v10 = *(this + 3);
    *a2 = 10;
    v11 = *(v10 + 5);
    if (v11 > 0x7F)
    {
      a2[1] = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = a2 + 3;
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          ++v12;
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        a2[2] = v13;
        v12 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v11;
      v12 = a2 + 2;
    }

    a2 = TSP::Point::_InternalSerialize(v10, v12, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v16 = *(this + 4);
  *a2 = 18;
  v17 = *(v16 + 5);
  if (v17 > 0x7F)
  {
    a2[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v18 = a2 + 3;
      do
      {
        *(v18 - 1) = v19 | 0x80;
        v20 = v19 >> 7;
        ++v18;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
      *(v18 - 1) = v20;
    }

    else
    {
      a2[2] = v19;
      v18 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v17;
    v18 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v16, v18, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v22 = *(this + 10);
  *a2 = 24;
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v23 = v22 >> 7;
    if (v22 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++a2;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(a2 - 1) = v24;
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      a2[2] = v23;
      a2 += 3;
      if ((v6 & 8) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    a2[1] = v22;
    a2 += 2;
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }
  }

LABEL_5:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 11);
  *a2 = 37;
  *(a2 + 1) = v7;
  a2 += 5;
LABEL_8:
  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v8 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::GeometryArchive::ByteSizeLong(TSD::GeometryArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Point::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Size::ByteSizeLong(*(this + 4));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v3 += ((9 * (__clz(*(this + 10) | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  if ((v2 & 8) != 0)
  {
    v4 = v3 + 5;
  }

  else
  {
    v4 = v3;
  }

LABEL_13:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::GeometryArchive::MergeFrom(TSD::GeometryArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::GeometryArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::GeometryArchive::MergeFrom(uint64_t this, const TSD::GeometryArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BB00](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809F0];
      }

      this = TSP::Point::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C9BAD0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 44) = *(a2 + 11);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSD::GeometryArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GeometryArchive::Clear(this);

    return TSD::GeometryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::GeometryArchive::CopyFrom(uint64_t *this, const TSD::GeometryArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::GeometryArchive::Clear(this);

    return TSD::GeometryArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::GeometryArchive::IsInitialized(TSD::GeometryArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Point::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::GeometryArchive::InternalSwap(TSD::GeometryArchive *this, TSD::GeometryArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  return result;
}

TSP::Point *TSD::PointPathSourceArchive::clear_point(TSD::PointPathSourceArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Size *TSD::PointPathSourceArchive::clear_naturalsize(TSD::PointPathSourceArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::PointPathSourceArchive *TSD::PointPathSourceArchive::PointPathSourceArchive(TSD::PointPathSourceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575B38;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PointPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288575B38;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_PointPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSD::PointPathSourceArchive *TSD::PointPathSourceArchive::PointPathSourceArchive(TSD::PointPathSourceArchive *this, const TSD::PointPathSourceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575B38;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  *(this + 10) = *(a2 + 10);
  return this;
}

void TSD::PointPathSourceArchive::~PointPathSourceArchive(TSD::PointPathSourceArchive *this)
{
  if (this != &TSD::_PointPathSourceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Size::~Size(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::PointPathSourceArchive::~PointPathSourceArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::PointPathSourceArchive::default_instance(TSD::PointPathSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_PointPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_PointPathSourceArchive_default_instance_;
}

uint64_t *TSD::PointPathSourceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Point::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Size::Clear(*(v1 + 32));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 32) = 0;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::PointPathSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  if ((sub_27670AF08(a3, &v29) & 1) == 0)
  {
    while (1)
    {
      v6 = (v29 + 1);
      v7 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v8 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v25;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 == 3)
      {
        if (v7 == 26)
        {
          *(a1 + 16) |= 2u;
          v16 = *(a1 + 32);
          if (!v16)
          {
            v17 = *(a1 + 8);
            if (v17)
            {
              v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x277C9BAD0](v17);
            LODWORD(v16) = v18;
            *(a1 + 32) = v18;
            v6 = v29;
          }

          v12 = sub_27680AB8C(a3, v16, v6);
          goto LABEL_32;
        }
      }

      else if (v9 == 2)
      {
        if (v7 == 18)
        {
          *(a1 + 16) |= 1u;
          v13 = *(a1 + 24);
          if (!v13)
          {
            v14 = *(a1 + 8);
            if (v14)
            {
              v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
            }

            v15 = MEMORY[0x277C9BB00](v14);
            LODWORD(v13) = v15;
            *(a1 + 24) = v15;
            v6 = v29;
          }

          v12 = sub_27680AABC(a3, v13, v6);
          goto LABEL_32;
        }
      }

      else if (v9 == 1 && v7 == 8)
      {
        v19 = (v6 + 1);
        v20 = *v6;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

        v21 = *v19;
        v22 = (v21 << 7) + v20;
        LODWORD(v20) = v22 - 128;
        if (v21 < 0)
        {
          v29 = google::protobuf::internal::VarintParseSlow64(v6, (v22 - 128));
          if (!v29)
          {
            return 0;
          }

          LODWORD(v20) = v28;
        }

        else
        {
          v19 = (v6 + 2);
LABEL_37:
          v29 = v19;
        }

        v23 = v20 > 0xA || ((1 << v20) & 0x403) == 0;
        if (!v23 || v20 == 200 || v20 == 100)
        {
          *(a1 + 16) |= 4u;
          *(a1 + 40) = v20;
        }

        else
        {
          v26 = *(a1 + 8);
          if (v26)
          {
            v27 = ((v26 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v27 = sub_27670AF80((a1 + 8));
          }

          google::protobuf::UnknownFieldSet::AddVarint(v27);
        }

        goto LABEL_46;
      }

      if (v7)
      {
        v11 = (v7 & 7) == 4;
      }

      else
      {
        v11 = 1;
      }

      if (v11)
      {
        *(a3 + 80) = v7 - 1;
        return v29;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v12 = google::protobuf::internal::UnknownFieldParse();
LABEL_32:
      v29 = v12;
      if (!v12)
      {
        return 0;
      }

LABEL_46:
      if (sub_27670AF08(a3, &v29))
      {
        return v29;
      }
    }

    v6 = (v29 + 2);
LABEL_6:
    v29 = v6;
    goto LABEL_7;
  }

  return v29;
}

unsigned __int8 *TSD::PointPathSourceArchive::_InternalSerialize(TSD::PointPathSourceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 10);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
        if (v6)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if (v6)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if (v6)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v6 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 3);
  *a2 = 18;
  v12 = *(v11 + 5);
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      v13 = a2 + 3;
      do
      {
        *(v13 - 1) = v14 | 0x80;
        v15 = v14 >> 7;
        ++v13;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
      *(v13 - 1) = v15;
    }

    else
    {
      a2[2] = v14;
      v13 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v12;
    v13 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v11, v13, a3);
  if ((v6 & 2) != 0)
  {
LABEL_26:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v17 = *(this + 4);
    *a2 = 26;
    v18 = *(v17 + 5);
    if (v18 > 0x7F)
    {
      a2[1] = v18 | 0x80;
      v20 = v18 >> 7;
      if (v18 >> 14)
      {
        v19 = a2 + 3;
        do
        {
          *(v19 - 1) = v20 | 0x80;
          v21 = v20 >> 7;
          ++v19;
          v22 = v20 >> 14;
          v20 >>= 7;
        }

        while (v22);
        *(v19 - 1) = v21;
      }

      else
      {
        a2[2] = v20;
        v19 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v18;
      v19 = a2 + 2;
    }

    a2 = TSP::Size::_InternalSerialize(v17, v19, a3);
  }

LABEL_36:
  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v23 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::PointPathSourceArchive::ByteSizeLong(TSD::PointPathSourceArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = TSP::Point::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::Size::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(this + 10);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
  }

LABEL_13:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSD::PointPathSourceArchive::MergeFrom(TSD::PointPathSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::PointPathSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::PointPathSourceArchive::MergeFrom(uint64_t this, const TSD::PointPathSourceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BB00](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809F0];
      }

      this = TSP::Point::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return this;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 10);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C9BAD0](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return this;
}

uint64_t *TSD::PointPathSourceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PointPathSourceArchive::Clear(this);

    return TSD::PointPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::PointPathSourceArchive::CopyFrom(uint64_t *this, const TSD::PointPathSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::PointPathSourceArchive::Clear(this);

    return TSD::PointPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::PointPathSourceArchive::IsInitialized(TSD::PointPathSourceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Point::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::PointPathSourceArchive::InternalSwap(TSD::PointPathSourceArchive *this, TSD::PointPathSourceArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSP::Size *TSD::ScalarPathSourceArchive::clear_naturalsize(TSD::ScalarPathSourceArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSD::ScalarPathSourceArchive *TSD::ScalarPathSourceArchive::ScalarPathSourceArchive(TSD::ScalarPathSourceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575BE8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ScalarPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

{
  *this = &unk_288575BE8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ScalarPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  return this;
}

TSD::ScalarPathSourceArchive *TSD::ScalarPathSourceArchive::ScalarPathSourceArchive(TSD::ScalarPathSourceArchive *this, const TSD::ScalarPathSourceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575BE8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  v7 = *(a2 + 4);
  *(this + 40) = *(a2 + 40);
  *(this + 4) = v7;
  return this;
}

void TSD::ScalarPathSourceArchive::~ScalarPathSourceArchive(TSD::ScalarPathSourceArchive *this)
{
  if (this != &TSD::_ScalarPathSourceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Size::~Size(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ScalarPathSourceArchive::~ScalarPathSourceArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ScalarPathSourceArchive::default_instance(TSD::ScalarPathSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_ScalarPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ScalarPathSourceArchive_default_instance_;
}

uint64_t *TSD::ScalarPathSourceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSP::Size::Clear(this[3]);
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ScalarPathSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v27 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v27) & 1) == 0)
  {
    while (1)
    {
      v7 = (v27 + 1);
      v8 = *v27;
      if ((*v27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v27, (v9 - 128));
      v27 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v24;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 8)
          {
            v16 = (v7 + 1);
            v15 = *v7;
            if ((v15 & 0x8000000000000000) == 0)
            {
              goto LABEL_26;
            }

            v17 = *v16;
            v15 = (v17 << 7) + v15 - 128;
            if (v17 < 0)
            {
              v27 = google::protobuf::internal::VarintParseSlow64(v7, v15);
              if (!v27)
              {
LABEL_53:
                v27 = 0;
                goto LABEL_2;
              }
            }

            else
            {
              v16 = (v7 + 2);
LABEL_26:
              v27 = v16;
            }

            if (v15 > 2)
            {
              sub_27680D30C();
            }

            else
            {
              *(a1 + 16) |= 2u;
              *(a1 + 32) = v15;
            }

            goto LABEL_43;
          }
        }

        else if (v10 == 2 && v8 == 21)
        {
          v5 |= 4u;
          *(a1 + 36) = *v7;
          v27 = (v7 + 4);
          goto LABEL_43;
        }

        goto LABEL_35;
      }

      if (v10 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 1u;
          v18 = *(a1 + 24);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v20 = MEMORY[0x277C9BAD0](v19);
            LODWORD(v18) = v20;
            *(a1 + 24) = v20;
            v7 = v27;
          }

          v21 = sub_27680AB8C(a3, v18, v7);
          goto LABEL_42;
        }

LABEL_35:
        if (v8)
        {
          v22 = (v8 & 7) == 4;
        }

        else
        {
          v22 = 1;
        }

        if (v22)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v21 = google::protobuf::internal::UnknownFieldParse();
LABEL_42:
        v27 = v21;
        if (!v21)
        {
          goto LABEL_53;
        }

        goto LABEL_43;
      }

      if (v10 != 4 || v8 != 32)
      {
        goto LABEL_35;
      }

      v5 |= 8u;
      v13 = (v7 + 1);
      v12 = *v7;
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      v14 = *v13;
      v12 = (v14 << 7) + v12 - 128;
      if ((v14 & 0x80000000) == 0)
      {
        v13 = (v7 + 2);
LABEL_21:
        v27 = v13;
        *(a1 + 40) = v12 != 0;
        goto LABEL_43;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v7, v12);
      v27 = v25;
      *(a1 + 40) = v26 != 0;
      if (!v25)
      {
        goto LABEL_53;
      }

LABEL_43:
      if (sub_27670AF08(a3, &v27))
      {
        goto LABEL_2;
      }
    }

    v7 = (v27 + 2);
LABEL_6:
    v27 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v27;
}

unsigned __int8 *TSD::ScalarPathSourceArchive::_InternalSerialize(TSD::ScalarPathSourceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 8);
    *a2 = 8;
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v8 = v7 >> 7;
      if (v7 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v8 | 0x80;
          v9 = v8 >> 7;
          ++a2;
          v10 = v8 >> 14;
          v8 >>= 7;
        }

        while (v10);
        *(a2 - 1) = v9;
        if ((v6 & 4) != 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        a2[2] = v8;
        a2 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      a2[1] = v7;
      a2 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_3:
    if ((v6 & 1) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  if ((v6 & 4) == 0)
  {
    goto LABEL_3;
  }

LABEL_17:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v11 = *(this + 9);
  *a2 = 21;
  *(a2 + 1) = v11;
  a2 += 5;
  if ((v6 & 1) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

LABEL_20:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(this + 3);
  *a2 = 26;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSP::Size::_InternalSerialize(v12, v14, a3);
  if ((v6 & 8) != 0)
  {
LABEL_30:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 40);
    *a2 = 32;
    a2[1] = v18;
    a2 += 2;
  }

LABEL_33:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ScalarPathSourceArchive::ByteSizeLong(TSD::ScalarPathSourceArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 0xF) == 0)
  {
    v4 = 0;
    goto LABEL_14;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v6 = *(this + 8);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
    goto LABEL_11;
  }

  v5 = TSP::Size::ByteSizeLong(*(this + 3));
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 += 5;
  }

  v4 = v3 + ((v2 >> 2) & 2);
LABEL_14:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::ScalarPathSourceArchive::MergeFrom(TSD::ScalarPathSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ScalarPathSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ScalarPathSourceArchive::MergeFrom(uint64_t this, const TSD::ScalarPathSourceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BAD0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809D8];
      }

      this = TSP::Size::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 40) = *(a2 + 40);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSD::ScalarPathSourceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ScalarPathSourceArchive::Clear(this);

    return TSD::ScalarPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ScalarPathSourceArchive::CopyFrom(uint64_t *this, const TSD::ScalarPathSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ScalarPathSourceArchive::Clear(this);

    return TSD::ScalarPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ScalarPathSourceArchive::IsInitialized(TSD::ScalarPathSourceArchive *this)
{
  if ((*(this + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSP::Size::IsInitialized(*(this + 3));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::ScalarPathSourceArchive::InternalSwap(TSD::ScalarPathSourceArchive *this, TSD::ScalarPathSourceArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = *(a2 + 40);
  *(a2 + 40) = v5;
  return result;
}

TSP::Size *TSD::BezierPathSourceArchive::clear_naturalsize(TSD::BezierPathSourceArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Path *TSD::BezierPathSourceArchive::clear_path(TSD::BezierPathSourceArchive *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Path::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::BezierPathSourceArchive *TSD::BezierPathSourceArchive::BezierPathSourceArchive(TSD::BezierPathSourceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575C98;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_BezierPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v3 = MEMORY[0x277D80A90];
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v3;
  return this;
}

TSD::BezierPathSourceArchive *TSD::BezierPathSourceArchive::BezierPathSourceArchive(TSD::BezierPathSourceArchive *this, const TSD::BezierPathSourceArchive *a2)
{
  *(this + 1) = 0;
  *this = &unk_288575C98;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    sub_27670B0F8(this + 1, (v5 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v4 = *(a2 + 4);
  }

  *(this + 3) = MEMORY[0x277D80A90];
  if (v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v4 = *(a2 + 4);
  }

  if ((v4 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v4 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  return this;
}

void TSD::BezierPathSourceArchive::~BezierPathSourceArchive(TSD::BezierPathSourceArchive *this)
{
  v2 = *(this + 3);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x277C9C1D0](v2, 0x1012C40EC159624);
  }

  if (this != &TSD::_BezierPathSourceArchive_default_instance_)
  {
    v3 = *(this + 4);
    if (v3)
    {
      TSP::Size::~Size(v3);
      MEMORY[0x277C9C1D0]();
    }

    if (*(this + 5))
    {
      v4 = MEMORY[0x277C9B630]();
      MEMORY[0x277C9C1D0](v4, 0x10A1C40290C9B23);
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::BezierPathSourceArchive::~BezierPathSourceArchive(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::BezierPathSourceArchive::default_instance(TSD::BezierPathSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_BezierPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_BezierPathSourceArchive_default_instance_;
}

uint64_t *TSD::BezierPathSourceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    goto LABEL_6;
  }

  if ((v2 & 1) == 0)
  {
    if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v5 = this[3] & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v2 & 2) != 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *v5 = 0;
  *(v5 + 23) = 0;
  if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_14:
  this = TSP::Size::Clear(this[4]);
  if ((v2 & 4) != 0)
  {
LABEL_5:
    this = TSP::Path::Clear(*(v1 + 40));
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::BezierPathSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v21 = a2;
  while ((sub_27670AF08(a3, &v21) & 1) == 0)
  {
    v5 = (v21 + 1);
    v6 = *v21;
    if ((*v21 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = v6 + (*v5 << 7);
    v6 = v7 - 128;
    if ((*v5 & 0x80000000) == 0)
    {
      v5 = (v21 + 2);
LABEL_6:
      v21 = v5;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v21, (v7 - 128));
    v21 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v5 = TagFallback;
    v6 = v19;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 4u;
      v15 = *(a1 + 40);
      if (!v15)
      {
        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = MEMORY[0x277C9BAC0](v16);
        LODWORD(v15) = v17;
        *(a1 + 40) = v17;
        v5 = v21;
      }

      v11 = sub_27680AC5C(a3, v15, v5);
    }

    else if (v8 == 2)
    {
      if (v6 != 18)
      {
        goto LABEL_13;
      }

      *(a1 + 16) |= 2u;
      v12 = *(a1 + 32);
      if (!v12)
      {
        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = MEMORY[0x277C9BAD0](v13);
        LODWORD(v12) = v14;
        *(a1 + 32) = v14;
        v5 = v21;
      }

      v11 = sub_27680AB8C(a3, v12, v5);
    }

    else
    {
      if (v8 != 1 || v6 != 10)
      {
LABEL_13:
        if (v6)
        {
          v10 = (v6 & 7) == 4;
        }

        else
        {
          v10 = 1;
        }

        if (v10)
        {
          *(a3 + 80) = v6 - 1;
          return v21;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v11 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_33;
      }

      *(a1 + 16) |= 1u;
      google::protobuf::internal::ArenaStringPtr::Mutable();
      v11 = google::protobuf::internal::InlineGreedyStringParser();
    }

LABEL_33:
    v21 = v11;
    if (!v11)
    {
      return 0;
    }
  }

  return v21;
}

unsigned __int8 *TSD::BezierPathSourceArchive::_InternalSerialize(TSD::BezierPathSourceArchive *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = sub_276727B88(a3, 1, (*(this + 3) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v7 = *(this + 4);
  *v4 = 18;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    v4[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = v4 + 3;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      v4[2] = v10;
      v9 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v8;
    v9 = v4 + 2;
  }

  v4 = TSP::Size::_InternalSerialize(v7, v9, a3);
  if ((v6 & 4) != 0)
  {
LABEL_16:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 5);
    *v4 = 26;
    v14 = *(v13 + 10);
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      if (v14 >> 14)
      {
        v15 = v4 + 3;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v17 = v16 >> 7;
          ++v15;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
        *(v15 - 1) = v17;
      }

      else
      {
        v4[2] = v16;
        v15 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v14;
      v15 = v4 + 2;
    }

    v4 = TSP::Path::_InternalSerialize(v13, v15, a3);
  }

LABEL_26:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), v4, a3, v4);
}

uint64_t sub_276727B88(uint64_t *a1, int a2, const void **a3, _BYTE *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = a4 + 2;
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = a4 + 2;
        }

LABEL_18:
        *v7 = v4;
        v14 = v7 + 1;
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return v14 + v4;
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = a4 + 1;
      goto LABEL_18;
    }
  }

  return MEMORY[0x2821EAB50]();
}

uint64_t TSD::BezierPathSourceArchive::ByteSizeLong(TSD::BezierPathSourceArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_12;
  }

  if (v2)
  {
    v4 = *(this + 3) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_9:
    v7 = TSP::Size::ByteSizeLong(*(this + 4));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v8 = TSP::Path::ByteSizeLong(*(this + 5));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSD::BezierPathSourceArchive::MergeFrom(TSD::BezierPathSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::BezierPathSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::BezierPathSourceArchive::MergeFrom(uint64_t this, const TSD::BezierPathSourceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 7) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      this = google::protobuf::internal::ArenaStringPtr::Set();
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return this;
        }

        goto LABEL_17;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v6 = *(v3 + 32);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x277C9BAD0](v7);
      *(v3 + 32) = v6;
    }

    if (*(a2 + 4))
    {
      v8 = *(a2 + 4);
    }

    else
    {
      v8 = MEMORY[0x277D809D8];
    }

    this = TSP::Size::MergeFrom(v6, v8);
    if ((v5 & 4) != 0)
    {
LABEL_17:
      *(v3 + 16) |= 4u;
      v9 = *(v3 + 40);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = MEMORY[0x277C9BAC0](v10);
        *(v3 + 40) = v9;
      }

      if (*(a2 + 5))
      {
        v11 = *(a2 + 5);
      }

      else
      {
        v11 = MEMORY[0x277D809C8];
      }

      return TSP::Path::MergeFrom(v9, v11);
    }
  }

  return this;
}

uint64_t *TSD::BezierPathSourceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::BezierPathSourceArchive::Clear(this);

    return TSD::BezierPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::BezierPathSourceArchive::CopyFrom(uint64_t *this, const TSD::BezierPathSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::BezierPathSourceArchive::Clear(this);

    return TSD::BezierPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::BezierPathSourceArchive::IsInitialized(TSD::BezierPathSourceArchive *this)
{
  v2 = *(this + 4);
  if ((v2 & 2) != 0)
  {
    result = TSP::Size::IsInitialized(*(this + 4));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSP::Path::IsInitialized(*(this + 5));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::BezierPathSourceArchive::InternalSwap(__n128 *this, __n128 *a2)
{
  sub_276700610(&this->n128_i64[1], &a2->n128_i64[1]);
  v4 = this[1].n128_u32[0];
  this[1].n128_u32[0] = a2[1].n128_u32[0];
  a2[1].n128_u32[0] = v4;
  v5 = this[1].n128_u64[1];
  this[1].n128_u64[1] = a2[1].n128_u64[1];
  a2[1].n128_u64[1] = v5;
  v6 = this[2].n128_u64[0];
  v7 = this[2].n128_u64[1];
  result = a2[2];
  this[2] = result;
  a2[2].n128_u64[0] = v6;
  a2[2].n128_u64[1] = v7;
  return result;
}

TSP::Size *TSD::CalloutPathSourceArchive::clear_natural_size(TSD::CalloutPathSourceArchive *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Size::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Point *TSD::CalloutPathSourceArchive::clear_tail_position(TSD::CalloutPathSourceArchive *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSD::CalloutPathSourceArchive *TSD::CalloutPathSourceArchive::CalloutPathSourceArchive(TSD::CalloutPathSourceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575D48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CalloutPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  return this;
}

{
  *this = &unk_288575D48;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_CalloutPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  return this;
}

TSD::CalloutPathSourceArchive *TSD::CalloutPathSourceArchive::CalloutPathSourceArchive(TSD::CalloutPathSourceArchive *this, const TSD::CalloutPathSourceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575D48;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  v7 = *(a2 + 5);
  *(this + 48) = *(a2 + 48);
  *(this + 5) = v7;
  return this;
}

void TSD::CalloutPathSourceArchive::~CalloutPathSourceArchive(TSD::CalloutPathSourceArchive *this)
{
  if (this != &TSD::_CalloutPathSourceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Size::~Size(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Point::~Point(v3);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::CalloutPathSourceArchive::~CalloutPathSourceArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::CalloutPathSourceArchive::default_instance(TSD::CalloutPathSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_CalloutPathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_CalloutPathSourceArchive_default_instance_;
}

uint64_t *TSD::CalloutPathSourceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      this = TSP::Size::Clear(this[3]);
    }

    if ((v2 & 2) != 0)
    {
      this = TSP::Point::Clear(*(v1 + 32));
    }
  }

  if ((v2 & 0x1C) != 0)
  {
    *(v1 + 48) = 0;
    *(v1 + 40) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::CalloutPathSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v30 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v30) & 1) == 0)
  {
    while (1)
    {
      v7 = (v30 + 1);
      v8 = *v30;
      if ((*v30 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v30, (v9 - 128));
      v30 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_53;
      }

      v7 = TagFallback;
      v8 = v27;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 1u;
          v22 = *(a1 + 24);
          if (!v22)
          {
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = MEMORY[0x277C9BAD0](v23);
            LODWORD(v22) = v24;
            *(a1 + 24) = v24;
            v7 = v30;
          }

          v18 = sub_27680AB8C(a3, v22, v7);
        }

        else
        {
          if (v10 != 2 || v8 != 18)
          {
            goto LABEL_38;
          }

          *(a1 + 16) |= 2u;
          v15 = *(a1 + 32);
          if (!v15)
          {
            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = MEMORY[0x277C9BB00](v16);
            LODWORD(v15) = v17;
            *(a1 + 32) = v17;
            v7 = v30;
          }

          v18 = sub_27680AABC(a3, v15, v7);
        }

        goto LABEL_45;
      }

      if (v10 == 3)
      {
        if (v8 == 29)
        {
          v20 = *v7;
          v19 = (v7 + 4);
          v5 |= 4u;
          *(a1 + 40) = v20;
LABEL_31:
          v30 = v19;
          goto LABEL_46;
        }

LABEL_38:
        if (v8)
        {
          v25 = (v8 & 7) == 4;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_27670AF80((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
LABEL_45:
        v30 = v18;
        if (!v18)
        {
          goto LABEL_53;
        }

        goto LABEL_46;
      }

      if (v10 == 4)
      {
        if (v8 == 37)
        {
          v21 = *v7;
          v19 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 44) = v21;
          goto LABEL_31;
        }

        goto LABEL_38;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_38;
      }

      v5 |= 0x10u;
      v12 = (v7 + 1);
      v11 = *v7;
      if ((v11 & 0x8000000000000000) == 0)
      {
        goto LABEL_15;
      }

      v13 = *v12;
      v11 = (v13 << 7) + v11 - 128;
      if ((v13 & 0x80000000) == 0)
      {
        v12 = (v7 + 2);
LABEL_15:
        v30 = v12;
        *(a1 + 48) = v11 != 0;
        goto LABEL_46;
      }

      v28 = google::protobuf::internal::VarintParseSlow64(v7, v11);
      v30 = v28;
      *(a1 + 48) = v29 != 0;
      if (!v28)
      {
LABEL_53:
        v30 = 0;
        goto LABEL_2;
      }

LABEL_46:
      if (sub_27670AF08(a3, &v30))
      {
        goto LABEL_2;
      }
    }

    v7 = (v30 + 2);
LABEL_6:
    v30 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v30;
}

unsigned __int8 *TSD::CalloutPathSourceArchive::_InternalSerialize(TSD::CalloutPathSourceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::Size::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
  *a2 = 18;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_30;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 10);
  *a2 = 29;
  *(a2 + 1) = v19;
  a2 += 5;
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_33;
  }

LABEL_30:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v20 = *(this + 11);
  *a2 = 37;
  *(a2 + 1) = v20;
  a2 += 5;
  if ((v6 & 0x10) != 0)
  {
LABEL_33:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v21 = *(this + 48);
    *a2 = 40;
    a2[1] = v21;
    a2 += 2;
  }

LABEL_36:
  v22 = *(this + 1);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v22 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::CalloutPathSourceArchive::ByteSizeLong(TSP::Size **this)
{
  v2 = *(this + 4);
  if ((v2 & 0x1F) == 0)
  {
    v4 = 0;
    goto LABEL_13;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v5 = TSP::Size::ByteSizeLong(this[3]);
  v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v6 = TSP::Point::ByteSizeLong(this[4]);
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = v3 + 5;
  if ((v2 & 4) == 0)
  {
    v7 = v3;
  }

  if ((v2 & 8) != 0)
  {
    v7 += 5;
  }

  v4 = v7 + ((v2 >> 3) & 2);
LABEL_13:
  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v4;
    return v4;
  }
}

uint64_t TSD::CalloutPathSourceArchive::MergeFrom(TSD::CalloutPathSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::CalloutPathSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::CalloutPathSourceArchive::MergeFrom(uint64_t this, const TSD::CalloutPathSourceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0x1F) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x277C9BAD0](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = MEMORY[0x277D809D8];
      }

      this = TSP::Size::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_28;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = MEMORY[0x277C9BB00](v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 4))
    {
      v11 = *(a2 + 4);
    }

    else
    {
      v11 = MEMORY[0x277D809F0];
    }

    this = TSP::Point::MergeFrom(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }

LABEL_28:
    *(v3 + 40) = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_9:
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_10;
    }

LABEL_29:
    *(v3 + 44) = *(a2 + 11);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return this;
}

uint64_t *TSD::CalloutPathSourceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CalloutPathSourceArchive::Clear(this);

    return TSD::CalloutPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::CalloutPathSourceArchive::CopyFrom(uint64_t *this, const TSD::CalloutPathSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::CalloutPathSourceArchive::Clear(this);

    return TSD::CalloutPathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::CalloutPathSourceArchive::IsInitialized(TSD::CalloutPathSourceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    result = TSP::Size::IsInitialized(*(this + 3));
    if (!result)
    {
      return result;
    }

    v2 = *(this + 4);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Point::IsInitialized(*(this + 4));
  if (result)
  {
    return 1;
  }

  return result;
}

__n128 TSD::CalloutPathSourceArchive::InternalSwap(TSD::CalloutPathSourceArchive *this, TSD::CalloutPathSourceArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LOBYTE(v8) = *(this + 48);
  *(this + 48) = *(a2 + 48);
  *(a2 + 48) = v8;
  return result;
}

TSD::ConnectionLinePathSourceArchive *TSD::ConnectionLinePathSourceArchive::ConnectionLinePathSourceArchive(TSD::ConnectionLinePathSourceArchive *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575DF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLinePathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

{
  *this = &unk_288575DF8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_ConnectionLinePathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 10) = 0;
  return this;
}

TSD::ConnectionLinePathSourceArchive *TSD::ConnectionLinePathSourceArchive::ConnectionLinePathSourceArchive(TSD::ConnectionLinePathSourceArchive *this, const TSD::ConnectionLinePathSourceArchive *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575DF8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  v7 = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = v7;
  return this;
}

void TSD::ConnectionLinePathSourceArchive::~ConnectionLinePathSourceArchive(TSD::ConnectionLinePathSourceArchive *this)
{
  if (this != &TSD::_ConnectionLinePathSourceArchive_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSD::BezierPathSourceArchive::~BezierPathSourceArchive(v2);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::ConnectionLinePathSourceArchive::~ConnectionLinePathSourceArchive(this);

  JUMPOUT(0x277C9C1D0);
}

uint64_t *TSD::ConnectionLinePathSourceArchive::default_instance(TSD::ConnectionLinePathSourceArchive *this)
{
  if (atomic_load_explicit(scc_info_ConnectionLinePathSourceArchive_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_ConnectionLinePathSourceArchive_default_instance_;
}

uint64_t *TSD::ConnectionLinePathSourceArchive::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if (v2)
  {
    this = TSD::BezierPathSourceArchive::Clear(this[3]);
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 40) = 0;
    *(v1 + 32) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::ConnectionLinePathSourceArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_27670AF08(a3, &v24) & 1) == 0)
  {
    while (1)
    {
      v7 = (v24 + 1);
      v8 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v9 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_49;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v20 = *v7;
            v15 = (v7 + 4);
            v5 |= 4u;
            *(a1 + 36) = v20;
            goto LABEL_32;
          }
        }

        else if (v10 == 4 && v8 == 37)
        {
          v16 = *v7;
          v15 = (v7 + 4);
          v5 |= 8u;
          *(a1 + 40) = v16;
LABEL_32:
          v24 = v15;
          goto LABEL_41;
        }
      }

      else if (v10 == 1)
      {
        if (v8 == 10)
        {
          *(a1 + 16) |= 1u;
          v17 = *(a1 + 24);
          if (!v17)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<TSD::BezierPathSourceArchive>(v18);
            *(a1 + 24) = v17;
            v7 = v24;
          }

          v19 = sub_27680AD2C(a3, v17, v7);
          goto LABEL_40;
        }
      }

      else if (v10 == 2 && v8 == 16)
      {
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if (v14 < 0)
        {
          v24 = google::protobuf::internal::VarintParseSlow64(v7, v12);
          if (!v24)
          {
LABEL_49:
            v24 = 0;
            goto LABEL_2;
          }
        }

        else
        {
          v13 = (v7 + 2);
LABEL_17:
          v24 = v13;
        }

        if (v12 > 1)
        {
          sub_27680D340();
        }

        else
        {
          *(a1 + 16) |= 2u;
          *(a1 + 32) = v12;
        }

        goto LABEL_41;
      }

      if (v8)
      {
        v21 = (v8 & 7) == 4;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        *(a3 + 80) = v8 - 1;
        goto LABEL_2;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_27670AF80((a1 + 8));
      }

      v19 = google::protobuf::internal::UnknownFieldParse();
LABEL_40:
      v24 = v19;
      if (!v19)
      {
        goto LABEL_49;
      }

LABEL_41:
      if (sub_27670AF08(a3, &v24))
      {
        goto LABEL_2;
      }
    }

    v7 = (v24 + 2);
LABEL_6:
    v24 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

unsigned __int8 *TSD::ConnectionLinePathSourceArchive::_InternalSerialize(TSD::ConnectionLinePathSourceArchive *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v13 = *(this + 8);
    *a2 = 16;
    if (v13 > 0x7F)
    {
      a2[1] = v13 | 0x80;
      v14 = v13 >> 7;
      if (v13 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v14 | 0x80;
          v15 = v14 >> 7;
          ++a2;
          v16 = v14 >> 14;
          v14 >>= 7;
        }

        while (v16);
        *(a2 - 1) = v15;
        if ((v6 & 4) != 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        a2[2] = v14;
        a2 += 3;
        if ((v6 & 4) != 0)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      a2[1] = v13;
      a2 += 2;
      if ((v6 & 4) != 0)
      {
        goto LABEL_27;
      }
    }

LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v7 = *(this + 3);
  *a2 = 10;
  v8 = *(v7 + 5);
  if (v8 > 0x7F)
  {
    a2[1] = v8 | 0x80;
    v10 = v8 >> 7;
    if (v8 >> 14)
    {
      v9 = a2 + 3;
      do
      {
        *(v9 - 1) = v10 | 0x80;
        v11 = v10 >> 7;
        ++v9;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
      *(v9 - 1) = v11;
    }

    else
    {
      a2[2] = v10;
      v9 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v8;
    v9 = a2 + 2;
  }

  a2 = TSD::BezierPathSourceArchive::_InternalSerialize(v7, v9, a3);
  if ((v6 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    goto LABEL_4;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v17 = *(this + 9);
  *a2 = 29;
  *(a2 + 1) = v17;
  a2 += 5;
  if ((v6 & 8) != 0)
  {
LABEL_30:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v18 = *(this + 10);
    *a2 = 37;
    *(a2 + 1) = v18;
    a2 += 5;
  }

LABEL_33:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v19 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::ConnectionLinePathSourceArchive::ByteSizeLong(TSD::ConnectionLinePathSourceArchive *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSD::BezierPathSourceArchive::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

  else
  {
    v3 = 0;
  }

  if ((v2 & 0xE) != 0)
  {
    if ((v2 & 2) != 0)
    {
      v5 = *(this + 8);
      if (v5 < 0)
      {
        v6 = 11;
      }

      else
      {
        v6 = ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v3 += v6;
    }

    v7 = v3 + 5;
    if ((v2 & 4) == 0)
    {
      v7 = v3;
    }

    if ((v2 & 8) != 0)
    {
      v3 = v7 + 5;
    }

    else
    {
      v3 = v7;
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v3;
    return v3;
  }
}

uint64_t TSD::ConnectionLinePathSourceArchive::MergeFrom(TSD::ConnectionLinePathSourceArchive *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::ConnectionLinePathSourceArchive::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::ConnectionLinePathSourceArchive::MergeFrom(uint64_t this, const TSD::ConnectionLinePathSourceArchive *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = google::protobuf::Arena::CreateMaybeMessage<TSD::BezierPathSourceArchive>(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 3))
      {
        v8 = *(a2 + 3);
      }

      else
      {
        v8 = &TSD::_BezierPathSourceArchive_default_instance_;
      }

      this = TSD::BezierPathSourceArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 40) = *(a2 + 10);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 36) = *(a2 + 9);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSD::ConnectionLinePathSourceArchive::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ConnectionLinePathSourceArchive::Clear(this);

    return TSD::ConnectionLinePathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::ConnectionLinePathSourceArchive::CopyFrom(uint64_t *this, const TSD::ConnectionLinePathSourceArchive *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::ConnectionLinePathSourceArchive::Clear(this);

    return TSD::ConnectionLinePathSourceArchive::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::ConnectionLinePathSourceArchive::IsInitialized(TSD::BezierPathSourceArchive **this)
{
  if (this[2])
  {
    return TSD::BezierPathSourceArchive::IsInitialized(this[3]);
  }

  else
  {
    return 0;
  }
}

__n128 TSD::ConnectionLinePathSourceArchive::InternalSwap(TSD::ConnectionLinePathSourceArchive *this, TSD::ConnectionLinePathSourceArchive *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  LODWORD(v5) = *(this + 10);
  *(this + 10) = *(a2 + 10);
  *(a2 + 10) = v5;
  return result;
}

TSP::Point *TSD::EditableBezierPathSourceArchive_Node::clear_incontrolpoint(TSD::EditableBezierPathSourceArchive_Node *this)
{
  result = *(this + 3);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~1u;
  return result;
}

TSP::Point *TSD::EditableBezierPathSourceArchive_Node::clear_nodepoint(TSD::EditableBezierPathSourceArchive_Node *this)
{
  result = *(this + 4);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~2u;
  return result;
}

TSP::Point *TSD::EditableBezierPathSourceArchive_Node::clear_outcontrolpoint(TSD::EditableBezierPathSourceArchive_Node *this)
{
  result = *(this + 5);
  if (result)
  {
    result = TSP::Point::Clear(result);
  }

  *(this + 4) &= ~4u;
  return result;
}

TSD::EditableBezierPathSourceArchive_Node *TSD::EditableBezierPathSourceArchive_Node::EditableBezierPathSourceArchive_Node(TSD::EditableBezierPathSourceArchive_Node *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575EA8;
  *(this + 1) = a2;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_EditableBezierPathSourceArchive_Node_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 1;
  return this;
}

TSD::EditableBezierPathSourceArchive_Node *TSD::EditableBezierPathSourceArchive_Node::EditableBezierPathSourceArchive_Node(TSD::EditableBezierPathSourceArchive_Node *this, const TSD::EditableBezierPathSourceArchive_Node *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575EA8;
  v5 = *(a2 + 4);
  *(this + 2) = v5;
  v6 = *(a2 + 1);
  if (v6)
  {
    sub_27670B0F8(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 4);
  }

  if (v5)
  {
    operator new();
  }

  *(this + 3) = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  *(this + 4) = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  *(this + 5) = 0;
  *(this + 12) = *(a2 + 12);
  return this;
}

void TSD::EditableBezierPathSourceArchive_Node::~EditableBezierPathSourceArchive_Node(TSD::EditableBezierPathSourceArchive_Node *this)
{
  if (this != &TSD::_EditableBezierPathSourceArchive_Node_default_instance_)
  {
    v2 = *(this + 3);
    if (v2)
    {
      TSP::Point::~Point(v2);
      MEMORY[0x277C9C1D0]();
    }

    v3 = *(this + 4);
    if (v3)
    {
      TSP::Point::~Point(v3);
      MEMORY[0x277C9C1D0]();
    }

    v4 = *(this + 5);
    if (v4)
    {
      TSP::Point::~Point(v4);
      MEMORY[0x277C9C1D0]();
    }
  }

  sub_2766FFE58(this + 1);
}

{
  TSD::EditableBezierPathSourceArchive_Node::~EditableBezierPathSourceArchive_Node(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::EditableBezierPathSourceArchive_Node::default_instance(TSD::EditableBezierPathSourceArchive_Node *this)
{
  if (atomic_load_explicit(scc_info_EditableBezierPathSourceArchive_Node_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_EditableBezierPathSourceArchive_Node_default_instance_;
}

uint64_t *TSD::EditableBezierPathSourceArchive_Node::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 4);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      this = TSP::Point::Clear(this[3]);
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
LABEL_6:
          *(v1 + 48) = 1;
          goto LABEL_7;
        }

LABEL_5:
        this = TSP::Point::Clear(*(v1 + 40));
        goto LABEL_6;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    this = TSP::Point::Clear(*(v1 + 32));
    if ((v2 & 4) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_7:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  if (v4)
  {

    return sub_27670B144(v3);
  }

  return this;
}

google::protobuf::internal *TSD::EditableBezierPathSourceArchive_Node::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  while ((sub_27670AF08(a3, &v25) & 1) == 0)
  {
    v5 = (v25 + 1);
    v6 = *v25;
    if (*v25 < 0)
    {
      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if (*v5 < 0)
      {
        TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v7 - 128));
        v25 = TagFallback;
        if (!TagFallback)
        {
          return 0;
        }

        v5 = TagFallback;
        v6 = v23;
        goto LABEL_7;
      }

      v5 = (v25 + 2);
    }

    v25 = v5;
LABEL_7:
    v8 = v6 >> 3;
    if (v6 >> 3 > 2)
    {
      if (v8 == 3)
      {
        if (v6 != 26)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 4u;
        v10 = *(a1 + 40);
        if (!v10)
        {
          v18 = *(a1 + 8);
          if (v18)
          {
            v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
          }

          v19 = MEMORY[0x277C9BB00](v18);
          LODWORD(v10) = v19;
          *(a1 + 40) = v19;
          goto LABEL_37;
        }

        goto LABEL_38;
      }

      if (v8 != 4 || v6 != 32)
      {
        goto LABEL_39;
      }

      v14 = (v5 + 1);
      v13 = *v5;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }

      v15 = *v14;
      v13 = (v15 << 7) + v13 - 128;
      if ((v15 & 0x80000000) == 0)
      {
        v14 = (v5 + 2);
LABEL_24:
        v25 = v14;
        goto LABEL_25;
      }

      v25 = google::protobuf::internal::VarintParseSlow64(v5, v13);
      if (!v25)
      {
        return 0;
      }

LABEL_25:
      if ((v13 - 1) > 2)
      {
        sub_27680D374();
      }

      else
      {
        *(a1 + 16) |= 8u;
        *(a1 + 48) = v13;
      }
    }

    else
    {
      if (v8 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_39;
        }

        *(a1 + 16) |= 1u;
        v10 = *(a1 + 24);
        if (!v10)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v17 = MEMORY[0x277C9BB00](v16);
          LODWORD(v10) = v17;
          *(a1 + 24) = v17;
          goto LABEL_37;
        }
      }

      else
      {
        if (v8 != 2 || v6 != 18)
        {
LABEL_39:
          if (v6)
          {
            v21 = (v6 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            *(a3 + 80) = v6 - 1;
            return v25;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_27670AF80((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_46;
        }

        *(a1 + 16) |= 2u;
        v10 = *(a1 + 32);
        if (!v10)
        {
          v11 = *(a1 + 8);
          if (v11)
          {
            v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
          }

          v12 = MEMORY[0x277C9BB00](v11);
          LODWORD(v10) = v12;
          *(a1 + 32) = v12;
LABEL_37:
          v5 = v25;
        }
      }

LABEL_38:
      v20 = sub_27680AABC(a3, v10, v5);
LABEL_46:
      v25 = v20;
      if (!v20)
      {
        return 0;
      }
    }
  }

  return v25;
}

unsigned __int8 *TSD::EditableBezierPathSourceArchive_Node::_InternalSerialize(TSD::EditableBezierPathSourceArchive_Node *this, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 4);
  if (v6)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 3);
    *a2 = 10;
    v8 = *(v7 + 5);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v9 = a2 + 3;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v11 = v10 >> 7;
          ++v9;
          v12 = v10 >> 14;
          v10 >>= 7;
        }

        while (v12);
        *(v9 - 1) = v11;
      }

      else
      {
        a2[2] = v10;
        v9 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v8;
      v9 = a2 + 2;
    }

    a2 = TSP::Point::_InternalSerialize(v7, v9, a3);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(this + 4);
  *a2 = 18;
  v14 = *(v13 + 5);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v13, v15, a3);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(this + 5);
  *a2 = 26;
  v20 = *(v19 + 5);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      a2[2] = v22;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = TSP::Point::_InternalSerialize(v19, v21, a3);
  if ((v6 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v25 = *(this + 12);
    *a2 = 32;
    if (v25 > 0x7F)
    {
      a2[1] = v25 | 0x80;
      v26 = v25 >> 7;
      if (v25 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v26 | 0x80;
          v27 = v26 >> 7;
          ++a2;
          v28 = v26 >> 14;
          v26 >>= 7;
        }

        while (v28);
        *(a2 - 1) = v27;
      }

      else
      {
        a2[2] = v26;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v25;
      a2 += 2;
    }
  }

LABEL_45:
  v29 = *(this + 1);
  if ((v29 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(((v29 & 0xFFFFFFFFFFFFFFFELL) + 8), a2, a3, a4);
}

uint64_t TSD::EditableBezierPathSourceArchive_Node::RequiredFieldsByteSizeFallback(TSD::EditableBezierPathSourceArchive_Node *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v4 = TSP::Point::ByteSizeLong(*(this + 3));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = TSP::Point::ByteSizeLong(*(this + 4));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(this + 4);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = TSP::Point::ByteSizeLong(*(this + 5));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(this + 4) & 8) == 0)
    {
      return v3;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return v3;
  }

  v7 = *(this + 12);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v8;
  return v3;
}

uint64_t TSD::EditableBezierPathSourceArchive_Node::ByteSizeLong(TSP::Point **this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    v11 = TSD::EditableBezierPathSourceArchive_Node::RequiredFieldsByteSizeFallback(this);
  }

  else
  {
    v2 = TSP::Point::ByteSizeLong(this[3]);
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = TSP::Point::ByteSizeLong(this[4]);
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = TSP::Point::ByteSizeLong(this[5]);
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    v8 = *(this + 12);
    v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 10;
    }

    v11 = v2 + v4 + v6 + v3 + v5 + v7 + v10 + 4;
  }

  if (this[1])
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize();
  }

  else
  {
    *(this + 5) = v11;
    return v11;
  }
}

uint64_t TSD::EditableBezierPathSourceArchive_Node::MergeFrom(TSD::EditableBezierPathSourceArchive_Node *this, const Message *lpsrc)
{
  if (v4)
  {

    return TSD::EditableBezierPathSourceArchive_Node::MergeFrom(this, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, this);
  }
}

uint64_t TSD::EditableBezierPathSourceArchive_Node::MergeFrom(uint64_t this, const TSD::EditableBezierPathSourceArchive_Node *a2)
{
  v3 = this;
  v4 = *(a2 + 1);
  if (v4)
  {
    this = sub_27670B0F8((this + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 4);
  if ((v5 & 0xF) != 0)
  {
    v6 = MEMORY[0x277D809F0];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x277C9BB00](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 3))
      {
        v9 = *(a2 + 3);
      }

      else
      {
        v9 = v6;
      }

      this = TSP::Point::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x277C9BB00](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 4))
    {
      v12 = *(a2 + 4);
    }

    else
    {
      v12 = v6;
    }

    this = TSP::Point::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return this;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 12);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x277C9BB00](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 5))
    {
      v15 = *(a2 + 5);
    }

    else
    {
      v15 = v6;
    }

    this = TSP::Point::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return this;
}

uint64_t *TSD::EditableBezierPathSourceArchive_Node::CopyFrom(uint64_t *this, const Message *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EditableBezierPathSourceArchive_Node::Clear(this);

    return TSD::EditableBezierPathSourceArchive_Node::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t *TSD::EditableBezierPathSourceArchive_Node::CopyFrom(uint64_t *this, const TSD::EditableBezierPathSourceArchive_Node *a2)
{
  if (a2 != this)
  {
    v4 = this;
    TSD::EditableBezierPathSourceArchive_Node::Clear(this);

    return TSD::EditableBezierPathSourceArchive_Node::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t TSD::EditableBezierPathSourceArchive_Node::IsInitialized(TSD::EditableBezierPathSourceArchive_Node *this)
{
  if ((~*(this + 4) & 0xF) != 0)
  {
    return 0;
  }

  result = TSP::Point::IsInitialized(*(this + 3));
  if (result)
  {
    v3 = *(this + 4);
    if ((v3 & 2) != 0)
    {
      result = TSP::Point::IsInitialized(*(this + 4));
      if (!result)
      {
        return result;
      }

      v3 = *(this + 4);
    }

    if ((v3 & 4) == 0)
    {
      return 1;
    }

    result = TSP::Point::IsInitialized(*(this + 5));
    if (result)
    {
      return 1;
    }
  }

  return result;
}

__n128 TSD::EditableBezierPathSourceArchive_Node::InternalSwap(TSD::EditableBezierPathSourceArchive_Node *this, TSD::EditableBezierPathSourceArchive_Node *a2)
{
  sub_276700610(this + 1, a2 + 1);
  v4 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  v5 = *(this + 3);
  v6 = *(this + 4);
  result = *(a2 + 24);
  *(this + 24) = result;
  *(a2 + 3) = v5;
  *(a2 + 4) = v6;
  v8 = *(this + 5);
  *(this + 5) = *(a2 + 5);
  *(a2 + 5) = v8;
  LODWORD(v8) = *(this + 12);
  *(this + 12) = *(a2 + 12);
  *(a2 + 12) = v8;
  return result;
}

TSD::EditableBezierPathSourceArchive_Subpath *TSD::EditableBezierPathSourceArchive_Subpath::EditableBezierPathSourceArchive_Subpath(TSD::EditableBezierPathSourceArchive_Subpath *this, google::protobuf::Arena *a2)
{
  *this = &unk_288575F58;
  *(this + 1) = a2;
  *(this + 3) = a2;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if (atomic_load_explicit(scc_info_EditableBezierPathSourceArchive_Subpath_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(this + 48) = 0;
  return this;
}

TSD::EditableBezierPathSourceArchive_Subpath *TSD::EditableBezierPathSourceArchive_Subpath::EditableBezierPathSourceArchive_Subpath(TSD::EditableBezierPathSourceArchive_Subpath *this, const TSD::EditableBezierPathSourceArchive_Subpath *a2)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_288575F58;
  *(this + 4) = *(a2 + 4);
  *(this + 11) = 0;
  *(this + 28) = 0;
  *(this + 36) = 0;
  *(this + 20) = 0;
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 5);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 24));
    sub_27676C440(this + 24, v7, (v6 + 8), v5, **(this + 5) - *(this + 8));
    v8 = *(this + 8) + v5;
    *(this + 8) = v8;
    v9 = *(this + 5);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 1);
  if (v10)
  {
    sub_27670B0F8(v4, (v10 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(this + 48) = *(a2 + 48);
  return this;
}

void TSD::EditableBezierPathSourceArchive_Subpath::~EditableBezierPathSourceArchive_Subpath(TSD::EditableBezierPathSourceArchive_Subpath *this)
{
  sub_2766FFE58(this + 1);
  sub_27676C3BC(this + 3);
}

{
  TSD::EditableBezierPathSourceArchive_Subpath::~EditableBezierPathSourceArchive_Subpath(this);

  JUMPOUT(0x277C9C1D0);
}

void *TSD::EditableBezierPathSourceArchive_Subpath::default_instance(TSD::EditableBezierPathSourceArchive_Subpath *this)
{
  if (atomic_load_explicit(scc_info_EditableBezierPathSourceArchive_Subpath_TSDArchives_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &TSD::_EditableBezierPathSourceArchive_Subpath_default_instance_;
}

uint64_t *TSD::EditableBezierPathSourceArchive_Subpath::Clear(uint64_t *this)
{
  v1 = this;
  v2 = *(this + 8);
  if (v2 >= 1)
  {
    v3 = (this[5] + 8);
    do
    {
      v4 = *v3++;
      this = TSD::EditableBezierPathSourceArchive_Node::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 32) = 0;
  }

  v6 = *(v1 + 8);
  v5 = v1 + 8;
  *(v5 + 40) = 0;
  *(v5 + 8) = 0;
  if (v6)
  {

    return sub_27670B144(v5);
  }

  return this;
}