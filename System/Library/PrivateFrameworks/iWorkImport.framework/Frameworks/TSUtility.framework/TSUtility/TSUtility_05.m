__CFString *TSUColumnLabel(unsigned int a1)
{
  if (a1 == 0x7FFF)
  {
    v1 = &stru_28862C2A0;
  }

  else
  {
    if (a1 > 0x19)
    {
      if (a1 > 0x2BD)
      {
        if (a1 >> 3 >= 0x895)
        {
          v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *TSUColumnLabel(TSUColumnIndex)"];
          v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUColumnRowTypes.mm"];
          [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:304 isFatal:0 description:"We can't handle four-digit column names!"];

          +[TSUAssertionHandler logBacktraceThrottled];
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c%c", (((47799 * a1) >> 25) + 64), ((2521 * (a1 % 0x2A4u)) >> 16) | 0x40, (a1 % 0x2A4u - 26 * ((2521 * (a1 % 0x2A4u)) >> 16) + 65)];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"%c%c", ((20165 * a1) >> 19) | 0x40, (a1 % 0x1Au + 65), v7];
      }
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%c", (a1 + 65), v6, v7];
    }
    v1 = ;
  }

  return v1;
}

__CFString *TSURowLabel(int a1)
{
  if (a1 == 0x7FFFFFFF)
  {
    v2 = &stru_28862C2A0;
  }

  else
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", (a1 + 1)];
  }

  return v2;
}

__CFString *NSStringFromTSUCellCoord(uint64_t a1)
{
  v2 = a1 & 0xFFFF00000000;
  if (a1 != 0x7FFFFFFF && v2 != 0x7FFF00000000)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = TSUColumnLabel(WORD2(a1));
    v5 = TSURowLabel(a1);
    v6 = v5;
    if ((a1 & 0x1000000000000) != 0)
    {
      v7 = @"$";
    }

    else
    {
      v7 = &stru_28862C2A0;
    }

    if ((a1 & 0x100000000000000) != 0)
    {
      v8 = @"$";
    }

    else
    {
      v8 = &stru_28862C2A0;
    }

    v9 = [v3 stringWithFormat:@"%@%@%@%@", v8, v4, v7, v5];

    goto LABEL_23;
  }

  if ((a1 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
  {
LABEL_11:
    v9 = @"#REF!";
    goto LABEL_24;
  }

  if (a1 == 0x7FFFFFFF)
  {
    v10 = MEMORY[0x277CCACA8];
    if ((a1 & 0x100000000000000) != 0)
    {
      v11 = @"$";
    }

    else
    {
      v11 = &stru_28862C2A0;
    }

    v4 = TSUColumnLabel(WORD2(a1));
    v12 = [v10 stringWithFormat:@"%@%@", v11, v4];
  }

  else
  {
    if (v2 != 0x7FFF00000000)
    {
      goto LABEL_11;
    }

    v13 = MEMORY[0x277CCACA8];
    if ((a1 & 0x1000000000000) != 0)
    {
      v14 = @"$";
    }

    else
    {
      v14 = &stru_28862C2A0;
    }

    v4 = TSURowLabel(a1);
    v12 = [v13 stringWithFormat:@"%@%@", v14, v4];
  }

  v9 = v12;
LABEL_23:

LABEL_24:

  return v9;
}

id sub_2770B5068(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v4 setName:a3];
  [v4 setMaxConcurrentOperationCount:1];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = TSUCreateRecursiveQueue(a3, v5);
  [v4 setUnderlyingQueue:v6];

  return v4;
}

double sub_2770B5508(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7)
{
  v23.origin.x = a2;
  v23.origin.y = a3;
  v23.size.width = a4;
  v23.size.height = a5;
  Width = CGRectGetWidth(v23);
  v24.origin.x = a2;
  v24.origin.y = a3;
  v24.size.width = a4;
  v24.size.height = a5;
  Height = CGRectGetHeight(v24);
  v16 = Width * 0.5;
  v17 = Height * 0.5;
  if (Width * 0.5 < Width - a6)
  {
    v16 = Width - a6;
  }

  v18 = Height - a7;
  if (v17 >= v18)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = TSUClamp(a1, 0.0, v16);

  return TSUClamp(v20, 0.0, v19);
}

double sub_2770B55CC(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      MinX = CGRectGetMinX(*&a2);
      goto LABEL_9;
    }

    MaxX = CGRectGetMinX(*&a2);
  }

  else
  {
    if (!a1)
    {
      MinX = CGRectGetMaxX(*&a2);
LABEL_9:
      v11 = MinX;
      v14.origin.x = a2;
      v14.origin.y = a3;
      v14.size.width = a4;
      v14.size.height = a5;
      CGRectGetMinY(v14);
      return v11;
    }

    MaxX = CGRectGetMaxX(*&a2);
  }

  v11 = MaxX;
  v13.origin.x = a2;
  v13.origin.y = a3;
  v13.size.width = a4;
  v13.size.height = a5;
  CGRectGetMaxY(v13);
  return v11;
}

uint64_t sub_2770B5670(void *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8, float64_t a9, float64_t a10)
{
  v88 = a1;
  v90.origin.x = a4;
  v90.origin.y = a5;
  v90.size.width = a6;
  v90.size.height = a7;
  Width = CGRectGetWidth(v90);
  v91.origin.x = a4;
  v91.origin.y = a5;
  v91.size.width = a6;
  v91.size.height = a7;
  Height = CGRectGetHeight(v91);
  v18.f64[0] = a9;
  v18.f64[1] = a10;
  v19.f64[0] = Width;
  v19.f64[1] = Height;
  v20 = a8 * 1.528665;
  __asm { FMOV            V1.2D, #0.5 }

  v26 = vmulq_f64(v19, _Q1);
  v27 = vmlaq_f64(v19, vdupq_n_s64(0xBFF875696E58A32FLL), v18);
  v28 = vbslq_s8(vcgtq_f64(v27, v26), v27, v26);
  v29 = vdupq_lane_s64(COERCE__INT64(a8 * 1.528665), 0);
  v30 = vbslq_s8(vcgtq_f64(v29, v28), v28, v29);
  v77 = a8;
  v31 = a8 * 1.528665 - a8;
  v86 = 0.0;
  v83 = 0.0;
  if (v31 != 0.0)
  {
    v83 = 1.0 - (v20 - *v30.i64) / v31;
    v86 = 1.0 - (v20 - *&v30.i64[1]) / v31;
  }

  v78 = *v30.i64;
  v32 = sub_2770B55CC(a2, a4, a5, a6, a7);
  v34 = v33;
  v35 = sub_2770B5A58(a2, v32, v33, v78);
  v37 = a2 & 0xFFFFFFFFFFFFFFFDLL;
  v38 = v34;
  v79 = v36;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v34 = v36;
  }

  v81 = v32;
  v39 = v35;
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v32 = v35;
  }

  if (a3)
  {
    [v88 lineToPoint:{v32, v34}];
    v40 = v81;
    v41 = v38;
LABEL_17:
    v75 = v41;
    v51 = v88;
    v52 = v83;
    if (v83 >= v86)
    {
      v52 = v86;
    }

    v53 = 1.0 - v52;
    v54 = TSUMix(0.95, 1.0, 1.0 - v52);
    v55 = TSUMix(0.93124985, 1.0, v53);
    v56 = dbl_2771361E0[a2];
    v57 = sub_2770B5A58(a2, v40, v41, v54 * v77);
    v59 = v58;
    v60 = v56 * 0.0174532925;
    v61 = (v56 + 50.0) * 0.0174532925;
    v62 = v55 * v77;
    v63 = __sincos_stret(v60);
    v64 = v57 + v55 * v77 * v63.__cosval;
    v74 = v59 + v62 * v63.__sinval;
    v65 = __sincos_stret(v61);
    v66 = v59 + v62 * v65.__sinval;
    if (v37)
    {
      v67 = v83;
    }

    else
    {
      v67 = v86;
    }

    v76 = v67;
    if (v37)
    {
      v68 = v86;
    }

    else
    {
      v68 = v83;
    }

    v69 = v39;
    if (!v37)
    {
      v69 = v81;
    }

    v87 = v69;
    v70 = v79;
    if (v37)
    {
      v70 = v75;
    }

    v84 = v70;
    sub_2770B5A90(v51, a2, 1, v64, v74, v77, v68);
    v71 = __sincos_stret((v61 - v60) * 0.5);
    v72 = v62 * ((1.0 - v71.__cosval) * 4.0 / (v71.__sinval * 3.0));
    [v51 curveToPoint:v57 + v62 * v65.__cosval controlPoint1:v66 controlPoint2:{v64 - v72 * v63.__sinval, v74 + v72 * v63.__cosval, v57 + v62 * v65.__cosval + v72 * v65.__sinval, v66 - v72 * v65.__cosval}];
    sub_2770B5A90(v51, a2, 0, v87, v84, v77, v76);

    v50 = v88;
    goto LABEL_30;
  }

  [v88 currentPoint];
  if (!TSUPointsAlmostEqual(v42, v43, v32, v34) || ((v44 = a4, v45 = a5, v46 = a6, v47 = a7, !v37) ? (v48 = CGRectGetWidth(*&v44)) : (v48 = CGRectGetHeight(*&v44)), v48 == 0.0 || fabs(v48) < 0.00999999978))
  {
    [v88 lineToPoint:{v32, v34}];
  }

  v40 = v81;
  v49 = TSUPointsAlmostEqual(v81, v38, v39, v79);
  v50 = v88;
  v41 = v38;
  if (!v49)
  {
    goto LABEL_17;
  }

LABEL_30:

  return MEMORY[0x2821F96F8](v49, v50);
}

double sub_2770B5A58(uint64_t a1, double a2, double a3, double a4)
{
  v4 = a2 + a4;
  result = a2 - a4;
  if (a1 > 1)
  {
    return v4;
  }

  return result;
}

void sub_2770B5A90(void *a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v50 = a1;
  [v50 currentPoint];
  v45 = v11;
  v13 = v12;
  v14 = ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0) ^ a3;
  if (v14)
  {
    v15 = 0.5;
  }

  else
  {
    v15 = 0.0;
  }

  if (v14)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 0.5;
  }

  v17 = 0.8;
  if (v14)
  {
    v18 = 0.8;
  }

  else
  {
    v18 = 0.0;
  }

  if (v14)
  {
    v17 = 0.0;
  }

  v41 = v18;
  v43 = v17;
  v46 = a4;
  v47 = a5;
  if (a3)
  {
    v19 = v13;
  }

  else
  {
    v19 = a5;
  }

  if (a3)
  {
    v20 = v11;
  }

  else
  {
    v20 = a4;
  }

  if (a3)
  {
    v21 = dbl_277136200[a2];
  }

  else
  {
    a5 = v13;
    a4 = v11;
    v21 = dbl_277136200[a2] + 50.0 + 20.0;
  }

  v22 = TSUMix(v20, a4, v15);
  v23 = TSUMix(v19, a5, v16);
  v24 = TSUMix(v20, a4, v41);
  v25 = v24;
  if (a3)
  {
    v24 = v22;
  }

  v40 = v24;
  v26 = TSUMix(v19, a5, v43);
  if (a3)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  if (a3)
  {
    v28 = v25;
  }

  else
  {
    v28 = v22;
  }

  v42 = v28;
  v44 = v27;
  if (a3)
  {
    v29 = v23;
  }

  else
  {
    v29 = v26;
  }

  v30 = (v21 + 20.0) * 0.0174532925;
  v31 = __sincos_stret((v30 - v21 * 0.0174532925) * 0.5);
  v32 = (1.0 - v31.__cosval) * 4.0 / (v31.__sinval * 3.0) * a6;
  v33 = __sincos_stret(v21 * 0.0174532925);
  v34 = __sincos_stret(v30);
  v35 = TSUMixPoints(v45 - v32 * v33.__sinval, v13 + v32 * v33.__cosval, v40, v29, a7);
  v37 = v36;
  v38 = TSUMixPoints(v46 + v32 * v34.__sinval, v47 - v32 * v34.__cosval, v42, v44, a7);
  [v50 curveToPoint:v46 controlPoint1:v47 controlPoint2:{v35, v37, v38, v39}];
}

void sub_2770B5CB4(void *a1, uint64_t a2, char a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, double a8)
{
  v43 = a1;
  v15 = sub_2770B55CC(a2, a4, a5, a6, a7);
  v17 = v16;
  v42 = a8;
  v18 = sub_2770B5A58(a2, v15, v16, a8);
  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v20 = v15;
  }

  else
  {
    v20 = v18;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  if ((a2 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v15 = v18;
  }

  else
  {
    v17 = v19;
  }

  if (a3)
  {
    [v43 lineToPoint:{v20, v21}];
LABEL_20:
    v29 = v43;
    [v29 currentPoint];
    v30 = v17;
    v32 = v31;
    v34 = v33;
    v35 = dbl_277136200[a2];
    v36 = v35 * 0.0174532925;
    v37 = (v35 + 90.0) * 0.0174532925;
    v38 = __sincos_stret((v37 - v35 * 0.0174532925) * 0.5);
    v39 = (1.0 - v38.__cosval) * 4.0 / (v38.__sinval * 3.0) * v42;
    v40 = __sincos_stret(v36);
    v41 = __sincos_stret(v37);
    [v29 curveToPoint:v15 controlPoint1:v30 controlPoint2:{v32 - v39 * v40.__sinval, v34 + v39 * v40.__cosval, v15 + v39 * v41.__sinval, v30 - v39 * v41.__cosval}];

    goto LABEL_21;
  }

  [v43 currentPoint];
  if (!TSUPointsAlmostEqual(v22, v23, v20, v21) || ((v24 = a4, v25 = a5, v26 = a6, v27 = a7, (a2 & 0xFFFFFFFFFFFFFFFDLL) == 0) ? (Width = CGRectGetWidth(*&v24)) : (Width = CGRectGetHeight(*&v24)), Width == 0.0 || fabs(Width) < 0.00999999978))
  {
    [v43 lineToPoint:{v20, v21, *&v42}];
  }

  if (!TSUPointsAlmostEqual(v20, v21, v15, v17))
  {
    goto LABEL_20;
  }

LABEL_21:
}

void sub_2770B5F44(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 32 * a2;
    }
  }

  else
  {
    sub_2770B67F0(a1, a2 - v2);
  }
}

void sub_2770B6300(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 5;
    v9 = v8 + 1;
    if ((v8 + 1) >> 59)
    {
      sub_2770289D0();
    }

    v10 = v5 - *a1;
    if (v10 >> 4 > v9)
    {
      v9 = v10 >> 4;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFE0)
    {
      v11 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_2770B6904(a1, v11);
    }

    v12 = (32 * v8);
    v13 = a2[1];
    *v12 = *a2;
    v12[1] = v13;
    v7 = 32 * v8 + 32;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = a2[1];
    *v4 = *a2;
    v4[1] = v6;
    v7 = (v4 + 2);
  }

  *(a1 + 8) = v7;
}

char *sub_2770B6500(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v11 = *a1;
    v12 = (&v6[-*a1] >> 5) + 1;
    if (v12 >> 59)
    {
      sub_2770289D0();
    }

    v13 = __src - v11;
    v14 = v7 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    v33 = a1;
    if (v15)
    {
      sub_2770B6904(a1, v15);
    }

    v30 = 0;
    v31 = 32 * v16;
    v32 = (32 * v16);
    sub_2770B6B80(&v30, a3);
    v18 = v31;
    memcpy(v32, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v31;
    *&v32 = v32 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v32;
    *&v32 = v23;
    *(&v32 + 1) = v24;
    v30 = v23;
    v31 = v23;
    if (v23)
    {
      operator delete(v23);
    }

    return v18;
  }

  else if (__src == v6)
  {
    v17 = *(a3 + 1);
    *v6 = *a3;
    *(v6 + 1) = v17;
    a1[1] = v6 + 32;
  }

  else
  {
    v8 = __src + 32;
    if (v6 < 0x20)
    {
      v9 = a1[1];
    }

    else
    {
      v9 = v6 + 32;
      v10 = *(v6 - 1);
      *v6 = *(v6 - 2);
      *(v6 + 1) = v10;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 32, __src, v6 - v8);
      v9 = a1[1];
    }

    v25 = v9 <= a3 || v4 > a3;
    v26 = 32;
    if (v25)
    {
      v26 = 0;
    }

    v27 = &a3[v26];
    v28 = *(v27 + 1);
    *v4 = *v27;
    *(v4 + 1) = v28;
  }

  return v4;
}

void sub_2770B66A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2770B67F0(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      sub_2770289D0();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_2770B6904(a1, v9);
    }

    v10 = (32 * (v6 >> 5));
    bzero(v10, 32 * a2);
    v11 = &v10[32 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void sub_2770B6904(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_277028AC0();
}

char *sub_2770B694C(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      sub_2770289D0();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      sub_2770B6904(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = v7[1];
      v7 += 2;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, *(a1 + 8) - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    *(a1 + 8) = v42;
    *(a1 + 16) = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 5;
  if (v18 >= a5)
  {
    v31 = &__dst[32 * a5];
    v32 = (v10 - 32 * a5);
    v33 = *(a1 + 8);
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[1];
      v32 += 2;
      *v33 = v34;
      v33[1] = v35;
      v33 += 2;
    }

    *(a1 + 8) = v33;
    if (v10 != v31)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v31);
    }

    v30 = 32 * a5;
    v28 = v5;
    v29 = v7;
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
    v22 = &v5[32 * a5];
    v23 = v10 + v20;
    if (&v21[-32 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -32 * a5];
      do
      {
        v26 = (v24 - v7);
        v27 = *(v25 - v7 + 16);
        *v26 = *(v25 - v7);
        v26[1] = v27;
        v25 += 32;
        v24 += 32;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[32 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v28 = v5;
      v29 = v7;
      v30 = v10 - v5;
LABEL_29:
      memmove(v28, v29, v30);
    }
  }

  return v5;
}

__n128 sub_2770B6B80(void *a1, uint64_t a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 4;
      }

      sub_2770B6904(a1[4], v11);
    }

    v7 = ((v6 >> 5) + 1) / -2;
    v8 = ((v6 >> 5) + 1) / 2;
    v9 = &v5[-32 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-32 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[32 * v7];
    a1[2] = &v9[v10];
  }

  result = *a2;
  v13 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 1) = v13;
  a1[2] += 32;
  return result;
}

void *sub_2770B6C88(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 5)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 59))
    {
      v9 = v7 >> 4;
      if (v7 >> 4 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFE0)
      {
        v10 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_2770B6DB4(v6, v10);
    }

    sub_2770289D0();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 5)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void sub_2770B6DB4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_2770B6904(a1, a2);
  }

  sub_2770289D0();
}

id sub_2770B6DF0(void *a1)
{
  v1 = [a1 path];
  v2 = [v1 tsu_pathUTI];

  return v2;
}

uint64_t sub_2770B6E3C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 pathExtension];
  v6 = [v5 tsu_pathExtensionConformsToUTI:v4];

  return v6;
}

uint64_t sub_2770B6E94(void *a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 pathExtension];
  v6 = v5;
  if (v5)
  {
    [v5 tsu_allFilenameExtensionIdentifiersForTag];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v7 = v28 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      v20 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if (([v12 tsu_isDynamic] & 1) == 0)
          {
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            v13 = v4;
            v14 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v22;
              while (2)
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v22 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  if ([v12 tsu_conformsToUTI:*(*(&v21 + 1) + 8 * j)])
                  {

                    v18 = 1;
                    goto LABEL_23;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }

            v10 = v20;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
        v18 = 0;
      }

      while (v9);
    }

    else
    {
      v18 = 0;
    }

LABEL_23:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t sub_2770B70BC(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([a1 tsu_conformsToUTI:{*(*(&v11 + 1) + 8 * v8), v11}])
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

id sub_2770B71E8(void *a1)
{
  v2 = [a1 pathExtension];
  if (!v2)
  {
    goto LABEL_13;
  }

  if ([a1 isAbsolutePath])
  {
    v9 = 1;
    v3 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v3 fileExistsAtPath:a1 isDirectory:&v9] && v9 != 1)
    {
      v4 = MEMORY[0x277CE1D48];
    }

    else
    {
      v4 = MEMORY[0x277CE1D50];
    }

    v6 = [*v4 identifier];

    v5 = *MEMORY[0x277CE1CC0];
    v7 = [v2 tsu_preferredIdentifierForTagClass:*MEMORY[0x277CE1CC0] conformingToUTI:v6];
    if ([v7 tsu_isDynamic])
    {
    }

    else
    {

      if (v7)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = *MEMORY[0x277CE1CC0];
  }

  v7 = [v2 tsu_preferredIdentifierForTagClass:v5 conformingToUTI:0];
  if ([v7 tsu_isDynamic])
  {

LABEL_13:
    v7 = 0;
  }

LABEL_14:

  return v7;
}

id sub_2770B7324(void *a1)
{
  v1 = [a1 tsu_pathUTI];
  v2 = [v1 tsu_UTIFilenameExtension];

  return v2;
}

uint64_t sub_2770B7370(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [a1 pathExtension];
  v6 = [v5 tsu_pathExtensionConformsToUTI:v4];

  return v6;
}

uint64_t sub_2770B73C8(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [a1 tsu_allFilenameExtensionIdentifiersForTag];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v14 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 tsu_isDynamic] & 1) == 0 && (objc_msgSend(v9, "tsu_conformsToUTI:", v4))
        {
          v6 = 1;
          goto LABEL_12;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

__CFString *sub_2770B751C(CFStringRef inTag, int a2, CFStringRef inTagClass, CFStringRef inConformingToUTI)
{
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(inTagClass, inTag, inConformingToUTI);

  return PreferredIdentifierForTag;
}

__CFString *sub_2770B7550(const __CFString *a1, int a2, CFStringRef inTagClass)
{
  v3 = UTTypeCopyPreferredTagWithClass(a1, inTagClass);

  return v3;
}

CFArrayRef sub_2770B757C(CFStringRef inTag)
{
  AllIdentifiersForTag = UTTypeCreateAllIdentifiersForTag(*MEMORY[0x277CE1CC0], inTag, 0);

  return AllIdentifiersForTag;
}

id sub_2770B75B8(void *a1)
{
  if ([a1 tsu_isHomogeneousForClass:objc_opt_class()])
  {
    v2 = [a1 tsu_arrayByTransformingWithBlock:&unk_28862A4E8];
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSArray(TSUUTIUtilities) tsu_UTTypes]"];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUUTIUtilities.m"];
    [TSUAssertionHandler handleFailureInFunction:v3 file:v4 lineNumber:161 isFatal:0 description:"Expecting an array of strings."];

    +[TSUAssertionHandler logBacktraceThrottled];
    v2 = MEMORY[0x277CBEBF8];
  }

  return v2;
}

uint64_t sub_2770B76A4(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 count])
  {
    [a1 tsu_UTTypes];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v13 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v10 + 1) + 8 * i) tsu_conformsToAnyUTType:{v4, v10}])
          {
            v6 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2770B77D0(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if ([a1 conformsToType:{*(*(&v11 + 1) + 8 * v8), v11}])
        {
          v9 = 1;
          goto LABEL_11;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

void sub_2770B8664(uint64_t a1, void *a2)
{
  v17[129] = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) appendData:*(a1 + 40)];
  v4 = *(a1 + 32);
  v5 = [v3 headerData];
  [v4 appendData:v5];

  v6 = [v3 payload];
  v7 = [v6 length];

  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = [v3 payload];
LABEL_10:
    v14 = v9;
    [v8 appendData:v9];

    goto LABEL_11;
  }

  v10 = [v3 payloadStream];
  v11 = [v10 hasBytesAvailable];

  if (!v11)
  {
    v8 = *(a1 + 32);
    v9 = [@"\r\n" dataUsingEncoding:4];
    goto LABEL_10;
  }

  v12 = [v3 payloadStream];
  [v12 open];
  if ([v12 hasBytesAvailable])
  {
    do
    {
      v13 = [v12 read:v17 maxLength:1024];
      if (v13 >= 1)
      {
        [*(a1 + 32) appendBytes:v17 length:v13];
      }
    }

    while (([v12 hasBytesAvailable] & 1) != 0);
  }

  [v12 close];

LABEL_11:
  v15 = *(a1 + 32);
  v16 = [@"\r\n" dataUsingEncoding:4];
  [v15 appendData:v16];
}

void sub_2770B8958(uint64_t a1, void *a2)
{
  v17 = a2;
  v3 = [MEMORY[0x277CBEB28] data];
  [v3 appendData:*(a1 + 32)];
  v4 = [v17 headerData];
  [v3 appendData:v4];

  v5 = [v17 payload];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v17 payload];
LABEL_3:
    v8 = v7;
    [v3 appendData:v7];
    goto LABEL_6;
  }

  v9 = [v17 payloadStream];

  if (!v9)
  {
    v7 = [@"\r\n" dataUsingEncoding:4];
    goto LABEL_3;
  }

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CBEAE0] inputStreamWithData:v3];
  [v10 addInputStream:v11];

  v12 = [MEMORY[0x277CBEB28] data];

  v13 = *(a1 + 40);
  v8 = [v17 payloadStream];
  [v13 addInputStream:v8];
  v3 = v12;
LABEL_6:

  v14 = [@"\r\n" dataUsingEncoding:4];
  [v3 appendData:v14];

  v15 = *(a1 + 40);
  v16 = [MEMORY[0x277CBEAE0] inputStreamWithData:v3];
  [v15 addInputStream:v16];
}

uint64_t sub_2770B9210(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a2 tsu_arrayByFlattening];

    return [v3 componentsJoinedByString:&stru_28862C2A0];
  }

  else
  {

    return [a2 tsu_escapeXML];
  }
}

uint64_t sub_2770B9BA4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 3)
  {
    v5 = 0;
    v6 = (a1 + 2 * a2 + 4);
    do
    {
      *(v6 - 2) = aAbcdefghijklmn_0[*(a3 + v5) >> 2];
      *(v6 - 1) = aAbcdefghijklmn_0[(*(a3 + v5 + 1) >> 4) & 0xFFFFFFFFFFFFFFCFLL | (16 * (*(a3 + v5) & 3))];
      *v6 = aAbcdefghijklmn_0[(*(a3 + v5 + 2) >> 6) & 0xFFFFFFFFFFFFFFC3 | (4 * (*(a3 + v5 + 1) & 0xF))];
      a2 += 4;
      v6[1] = aAbcdefghijklmn_0[*(a3 + v5 + 2) & 0x3F];
      v4 = v5 + 3;
      v7 = v5 + 6;
      v6 += 4;
      v5 += 3;
    }

    while (v7 <= a4);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < a4)
  {
    v8 = *(a3 + v4);
    v9 = (a1 + 2 * a2);
    *v9 = aAbcdefghijklmn_0[v8 >> 2];
    v10 = v4 + 1;
    if (v10 >= a4)
    {
      v12 = 16 * (v8 & 3);
      v13 = 61;
    }

    else
    {
      v11 = *(a3 + v10);
      v12 = (16 * (v8 & 3)) | (v11 >> 4);
      v13 = aAbcdefghijklmn_0[4 * (v11 & 0xF)];
    }

    v9[1] = aAbcdefghijklmn_0[v12];
    v9[2] = v13;
    v9[3] = 61;
    a2 += 4;
  }

  return a2;
}

id sub_2770B9CA0(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [a1 length];
  v3 = (v2 + 2) / 3;
  v4 = 8 * v3;
  if (v2 >= 0xBFFFFFFFFFFFFFFELL)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSData(Base64Additions) tsu_encodeToBase64String]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v5, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSData_Base64Additions.mm"], 95, 0, "Overflow when calculating buffer size!");
    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_5;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
LABEL_5:
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSData(Base64Additions) tsu_encodeToBase64String]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v6, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSData_Base64Additions.mm"], 96, 0, "Overflow when calculating buffer size!");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v7 = malloc_type_malloc(v4, 0x1000040BDFB0063uLL);
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSData(Base64Additions) tsu_encodeToBase64String]"];
    +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v8, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSData_Base64Additions.mm"], 100, 0, "invalid nil value for '%{public}s'", "result");
    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v9 = [a1 bytes];
  if (v2)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 384;
    v15 = v2;
    do
    {
      if (v2 >= v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v2;
      }

      v12 += 384;
      if (v12 <= v2)
      {
        memcpy(__dst, v10, sizeof(__dst));
        v10 += 384;
      }

      else
      {
        memcpy(__dst, v10, v15);
      }

      v13 = sub_2770B9BA4(v7, v13, __dst, v16 + v11);
      v14 += 384;
      v11 -= 384;
      v15 -= 384;
    }

    while (v12 < v2);
  }

  else
  {
    v13 = 0;
  }

  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCharactersNoCopy:v7 length:v13 freeWhenDone:1];

  return v17;
}

id sub_2770B9F24(void *a1)
{
  v1 = [objc_msgSend(a1 base64EncodedStringWithOptions:{0), "mutableCopy"}];
  [v1 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v1, "length")}];
  [v1 replaceOccurrencesOfString:@"=" withString:&stru_28862C2A0 options:0 range:{0, objc_msgSend(v1, "length")}];
  return v1;
}

uint64_t sub_2770B9FD8(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 stringByReplacingOccurrencesOfString:@"[ \r\n\t]+" withString:&stru_28862C2A0 options:1024 range:{0, objc_msgSend(a3, "length")}];

  return MEMORY[0x2821F9670](a1, sel_tsu_decodeFromBase64String_);
}

uint64_t sub_2770BA040(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CBEA90];
  [a3 UTF8String];
  [a3 length];

  return MEMORY[0x2821F9670](v4, sel_tsu_decodeFromBase64CString_srcLength_);
}

id sub_2770BA0A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = *MEMORY[0x277D85DE8];
  if ((a4 & 3) != 0)
  {
    goto LABEL_2;
  }

  v29 = objc_autoreleasePoolPush();
  v30 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:a3 length:a4 freeWhenDone:0];
  v31 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedData:v30 options:1];
  objc_autoreleasePoolPop(v29);
  if (v31)
  {
    if ([v31 length])
    {

      return v31;
    }
  }

  if (a4)
  {
LABEL_2:
    v6 = 3 * ((a4 - 1) >> 2);
    v7 = (a4 - 1) & 0xFFFFFFFFFFFFFFFCLL;
    v8 = v6;
    if ((v7 | 2) <= a4)
    {
      v8 = v6 + 1;
      v9 = (a4 - 1) | 3;
      if (v9 <= a4 && *(a3 + (v7 | 2)) != 61)
      {
        v8 = v6 + 2;
        if (v7 + 4 <= a4)
        {
          v10 = v6 + 3;
          if (*(a3 + v9) != 61)
          {
            v8 = v10;
          }
        }
      }
    }

    v11 = malloc_type_calloc(v8, 1uLL, 0x3C1FCE3CuLL);
    if (!v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSData(Base64Additions) tsu_decodeFromBase64CString:srcLength:]"];
      +[TSUAssertionHandler handleFailureInFunction:file:lineNumber:isFatal:description:](TSUAssertionHandler, "handleFailureInFunction:file:lineNumber:isFatal:description:", v12, [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSData_Base64Additions.mm"], 197, 0, "invalid nil value for '%{public}s'", "result");
      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (a4 < 5)
    {
      v14 = 0;
      v13 = 0;
      v16 = v11;
    }

    else
    {
      v13 = 0;
      v14 = 0;
      v15 = a3 + 1;
      v16 = v11;
      do
      {
        v17 = byte_277136220[*(a3 + v14)];
        if (v17 == 255)
        {
          sub_277114184(*(a3 + v14), v14);
        }

        v18 = byte_277136220[*(v15 + v14)];
        if (v18 == 255)
        {
          sub_277114184(*(v15 + v14), v14 + 1);
        }

        v19 = byte_277136220[*(v15 + v14 + 1)];
        if (v19 == 255)
        {
          sub_277114184(*(v15 + v14 + 1), v14 + 2);
        }

        v20 = byte_277136220[*(v15 + v14 + 2)];
        if (v20 == 255)
        {
          sub_277114184(*(v15 + v14 + 2), v14 + 3);
        }

        v21 = &__src[v13];
        *v21 = (byte_277136220[*(v15 + v14)] >> 4) | (4 * v17);
        v21[1] = (v19 >> 2) | (16 * v18);
        v13 += 3;
        v21[2] = v20 | (v19 << 6);
        if (v13 == 384)
        {
          memcpy(v16, __src, 0x180uLL);
          v13 = 0;
          v16 += 384;
        }

        v14 += 4;
      }

      while (v14 + 4 < a4);
    }

    v36 = v14;
    if (v14 >= a4)
    {
      v23 = 0x277CBE000uLL;
    }

    else
    {
      v22 = byte_277136220[*(a3 + v14)];
      v23 = 0x277CBE000;
      if (v22 == 255)
      {
        sub_277114184(*(a3 + v14), v14);
      }

      v24 = v14 + 1;
      v36 = v14 + 1;
      if (v14 + 1 < a4)
      {
        v25 = byte_277136220[*(a3 + v24)];
        if (v25 == 255)
        {
          sub_277114184(*(a3 + v24), v24);
        }

        v26 = v14 + 2;
        v36 = v14 + 2;
        __src[v13] = (v25 >> 4) | (4 * v22);
        if (v14 + 2 >= a4 || (v27 = *(a3 + v26), v27 == 61))
        {
          ++v13;
        }

        else
        {
          v33 = byte_277136220[v27];
          if (v33 == 255)
          {
            sub_277114184(v27, v26);
          }

          v36 = v14 + 3;
          __src[v13 + 1] = (v33 >> 2) | (16 * v25);
          if (v14 + 3 >= a4 || (v34 = *(a3 + v14 + 3), v34 == 61))
          {
            v13 += 2;
          }

          else
          {
            v35 = sub_2770BA534(v34, &v36);
            __src[v13 + 2] = v35 | (v33 << 6);
            if (v35 == 255)
            {
              free(v11);
              return 0;
            }

            v13 += 3;
          }
        }
      }
    }

    if (v13)
    {
      memcpy(v16, __src, v13);
    }

    return [*(v23 + 2704) dataWithBytesNoCopy:v11 length:v8 freeWhenDone:1];
  }

  else
  {
    v32 = MEMORY[0x277CBEA90];

    return [v32 data];
  }
}

uint64_t sub_2770BA534(uint64_t a1, void *a2)
{
  v2 = byte_277136220[a1];
  if (v2 == 255)
  {
    sub_2771141FC(a1, a2);
  }

  ++*a2;
  return v2;
}

uint64_t sub_2770BA56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v5 handleFailureInFunction:v4 file:a4 lineNumber:43 isFatal:1 description:?];
}

uint64_t sub_2770BA58C()
{
  v3 = *(v1 + 3240);

  return [v3 stringWithUTF8String:v0];
}

uint64_t sub_2770BA5A8()
{
  v2 = MEMORY[0x277CCACA8];

  return [v2 stringWithUTF8String:v0];
}

void sub_2770BA890(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12))
  {
    dispatch_suspend(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
  v3 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770BA968;
  v5[3] = &unk_27A702378;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

void sub_2770BA968(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12) - 1)
  {
    dispatch_resume(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
}

void sub_2770BAA80(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  ++*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12))
  {
    dispatch_suspend(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
  v3 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2770BAB58;
  v5[3] = &unk_27A702378;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_barrier_sync(v3, v5);
}

void sub_2770BAB58(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  os_unfair_lock_lock((*(a1 + 32) + 32));
  --*(*(a1 + 32) + 8);
  v2 = *(a1 + 32);
  if (*(v2 + 8) == *(v2 + 12) - 1)
  {
    dispatch_resume(*(v2 + 16));
    v2 = *(a1 + 32);
  }

  os_unfair_lock_unlock((v2 + 32));
}

id sub_2770BACC4()
{
  qword_280A63D40 = [SFUMainBundle() localizedStringForKey:@" value:" table:{&stru_28862C2A0, @"TSUtility"}];
  result = [SFUMainBundle() localizedStringForKey:@"-" value:&stru_28862C2A0 table:@"TSUtility"];
  qword_280A63D48 = result;
  return result;
}

uint64_t sub_2770BAD38(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendString:qword_280A63D40];
  }

  result = [*(a1 + 32) appendString:{objc_msgSend(MEMORY[0x277CCABB8], "localizedStringFromNumber:numberStyle:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", a2), 1)}];
  if (a3 >= 2)
  {
    [*(a1 + 32) appendString:qword_280A63D48];
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x277CCABB8] localizedStringFromNumber:objc_msgSend(MEMORY[0x277CCABB0] numberStyle:{"numberWithUnsignedInteger:", a3 + a2 - 1), 1}];

    return [v7 appendString:v8];
  }

  return result;
}

id sub_2770BAE98()
{
  result = [SFUMainBundle() localizedStringForKey:@" value:" table:{&stru_28862C2A0, @"TSUtility"}];
  qword_280A63D58 = result;
  return result;
}

uint64_t sub_2770BAF8C(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5 = a1[7] - 1;
    v6 = a1[4];
    if (v5 > a3 || (v7 = a1[6]) == 0)
    {
      v7 = a1[5];
    }

    [v6 appendString:v7];
  }

  v8 = a1[4];

  return [v8 appendString:a2];
}

NSObject *TSUCreateRecursiveQueue(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  v6 = dispatch_queue_create([a1 UTF8String], v5);

  dispatch_queue_set_specific(v6, qword_280A62A10, v6, 0);
  return v6;
}

void *TSUAssertIsRecursiveQueue()
{
  result = dispatch_get_specific(qword_280A62A10);
  if (!result)
  {
    sub_277114334(0, v1, v2, v3, v4, v5, v6, v7);
  }

  return result;
}

void sub_2770BB110(id *a1)
{
  v1 = *a1;
  if ((*a1 - 270) < 3 || v1 == 274)
  {
    v2 = a1 + 1;
  }

  else
  {
    if (v1 != 261)
    {
      return;
    }

    v2 = a1 + 2;
  }

  v3 = *v2;
}

id *sub_2770BB180(id *result)
{
  v1 = *result;
  if ((*result - 270) < 3 || v1 == 274)
  {
    v2 = result + 1;
    v3 = result[2];
  }

  else
  {
    if (v1 != 261)
    {
      return result;
    }

    v2 = result + 2;
  }

  v4 = *v2;

  return v4;
}

uint64_t sub_2770BB1F0(void **a1, void **a2)
{
  v2 = *a1;
  if (v2 == *a2)
  {
    return 1;
  }

  if (*a2)
  {
    return [v2 isEqual:?];
  }

  return 0;
}

uint64_t sub_2770BB218(id *a1)
{
  v1 = *a1;
  if ((v1 & 0xFFFFFFFC) == 0x100)
  {
    v2 = vdupq_n_s64(*(a1 + 2));
    v3 = vorrq_s8(vandq_s8(vshlq_u64(v2, xmmword_277136320), xmmword_277136350), vandq_s8(vshlq_u64(v2, xmmword_277136330), xmmword_277136340));
    v4 = vorr_s8(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
    v5 = *(a1 + 2) ^ v1;
    return v5 ^ *&v4;
  }

  if (v1 > 268)
  {
    if ((v1 - 270) < 3)
    {
      goto LABEL_12;
    }

    if (v1 == 269)
    {
      return (((*(a1 + 4) >> 7) | (*(a1 + 4) << 9)) & 0x1FFFELL | *(a1 + 10) & 1) ^ 0x10D;
    }

    if (v1 == 274)
    {
LABEL_12:
      v1 ^= [a1[1] hash];
    }
  }

  else
  {
    switch(v1)
    {
      case 0x105:
        v6 = __rbit32(*(a1 + 2)) >> 30;
        return [a1[2] hash] ^ 0x105 ^ v6;
      case 0x106:
        v5 = *(a1 + 8);
        v4 = 262;
        return v5 ^ *&v4;
      case 0x10C:
        return ((4 * (BYTE1(*(a1 + 2)) | HIWORD(*(a1 + 2)))) | HIBYTE(*(a1 + 2))) ^ 0x10Cu;
    }
  }

  return v1;
}

unint64_t TSUViewCellRect::operator|=(unint64_t *a1, unint64_t *a2)
{
  result = sub_27706582C(a1, a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TSUViewCellRect::operator&=(unint64_t *a1, unint64_t *a2)
{
  result = sub_277063414(a1, a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TSUViewCellRect::intersectsAll(uint64_t a1, const TSUCellRect **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_2770BB480;
  v11 = &unk_27A7028C8;
  v12 = a1;
  v4 = v9;
  if (v2 == v3)
  {
    v6 = 1;
  }

  else
  {
    do
    {
      v5 = v10(v4, v2);
      v6 = v5;
      v2 = (v2 + 16);
      if (v2 == v3)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5;
      }
    }

    while ((v7 & 1) != 0);
  }

  return v6;
}

uint64_t TSUViewCellRect::intersectsAny(uint64_t a1, const TSUCellRect **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_2770BB55C;
  v11 = &unk_27A7028C8;
  v12 = a1;
  v4 = v9;
  if (v2 == v3)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = v10(v4, v2);
      v6 = v5;
      v2 = (v2 + 16);
      if (v2 == v3)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5;
      }
    }

    while ((v7 & 1) == 0);
  }

  return v6;
}

void TSUViewCellRectVectorToCellRectVector(__int128 **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      sub_277079700(a2, &v5);
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2770BB5C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void TSUViewCellRectVectorFromModelCellRectVector(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v7 = (*(v21 + 2))(v21, *v5, v5[1]);
      v9 = v8;
      v11 = *(a3 + 8);
      v10 = *(a3 + 16);
      if (v11 >= v10)
      {
        v13 = (v11 - *a3) >> 4;
        v14 = v13 + 1;
        if ((v13 + 1) >> 60)
        {
          sub_2770289D0();
        }

        v15 = v10 - *a3;
        if (v15 >> 3 > v14)
        {
          v14 = v15 >> 3;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v16 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          sub_277065DA4(a3, v16);
        }

        v17 = (16 * v13);
        *v17 = v7;
        v17[1] = v9;
        v12 = 16 * v13 + 16;
        v18 = *(a3 + 8) - *a3;
        v19 = (16 * v13 - v18);
        memcpy(v19, *a3, v18);
        v20 = *a3;
        *a3 = v19;
        *(a3 + 8) = v12;
        *(a3 + 16) = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v11 = v7;
        v11[1] = v8;
        v12 = (v11 + 2);
      }

      *(a3 + 8) = v12;
      v5 += 2;
    }

    while (v5 != v6);
  }
}

void sub_2770BB734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

uint64_t TSUModelCellRect::largestWithoutRectsAndContainsCoord(TSUCellRect *a1, __int128 **a2)
{
  __p = 0;
  v9 = 0;
  v10 = 0;
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v7 = *v3;
    sub_277079700(&__p, &v7);
    ++v3;
  }

  v5 = TSUCellRect::largestWithoutRectsAndContainsCoord(a1, &__p);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return v5;
}

void sub_2770BB7F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t TSUModelCellRect::operator|=(unint64_t *a1, unint64_t *a2)
{
  result = sub_27706582C(a1, a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TSUModelCellRect::operator&=(unint64_t *a1, unint64_t *a2)
{
  result = sub_277063414(a1, a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t TSUModelCellRect::intersectsAll(uint64_t a1, const TSUCellRect **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_2770BB934;
  v11 = &unk_27A7028E8;
  v12 = a1;
  v4 = v9;
  if (v2 == v3)
  {
    v6 = 1;
  }

  else
  {
    do
    {
      v5 = v10(v4, v2);
      v6 = v5;
      v2 = (v2 + 16);
      if (v2 == v3)
      {
        v7 = 0;
      }

      else
      {
        v7 = v5;
      }
    }

    while ((v7 & 1) != 0);
  }

  return v6;
}

uint64_t TSUModelCellRect::intersectsAny(uint64_t a1, const TSUCellRect **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = sub_2770BBA10;
  v11 = &unk_27A7028E8;
  v12 = a1;
  v4 = v9;
  if (v2 == v3)
  {
    v6 = 0;
  }

  else
  {
    do
    {
      v5 = v10(v4, v2);
      v6 = v5;
      v2 = (v2 + 16);
      if (v2 == v3)
      {
        v7 = 1;
      }

      else
      {
        v7 = v5;
      }
    }

    while ((v7 & 1) == 0);
  }

  return v6;
}

void TSUBaseCellRectVectorFromCellRectVector(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
    v5 = 0;
    do
    {
      v6 = *(a2 + 16);
      if (v5 >= v6)
      {
        v7 = (v5 - *a2) >> 4;
        if ((v7 + 1) >> 60)
        {
          sub_2770289D0();
        }

        v8 = v6 - *a2;
        v9 = v8 >> 3;
        if (v8 >> 3 <= (v7 + 1))
        {
          v9 = v7 + 1;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF0)
        {
          v10 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (v10)
        {
          sub_277065DA4(a2, v10);
        }

        *(16 * v7) = *v2;
        v5 = (16 * v7 + 16);
        v11 = *(a2 + 8) - *a2;
        v12 = (16 * v7 - v11);
        memcpy(v12, *a2, v11);
        v13 = *a2;
        *a2 = v12;
        *(a2 + 8) = v5;
        *(a2 + 16) = 0;
        if (v13)
        {
          operator delete(v13);
        }
      }

      else
      {
        *v5++ = *v2;
      }

      *(a2 + 8) = v5;
      ++v2;
    }

    while (v2 != v3);
  }
}

void sub_2770BBB2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2770BBB5C(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(a3);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([a1 containsObject:v9])
        {
          [a1 removeObject:v9];
        }

        else
        {
          [a1 addObject:v9];
        }

        ++v8;
      }

      while (v6 != v8);
      result = [a3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void *sub_2770BBC74(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

void *sub_2770BBC80(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

uint64_t sub_2770BBC8C(void *a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = [a1 allObjects];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if ([v10 isEqual:a3])
        {
          [a1 removeObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

void *sub_2770BBD98(void *result, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = result;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    result = [result countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (result)
    {
      v5 = result;
      v6 = 0;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * v8);
          if ((*(a3 + 16))(a3, v9))
          {
            if (!v6)
            {
              v6 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v4, "count")}];
            }

            [v6 addObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v5 != v8);
        result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        v5 = result;
      }

      while (result);
      if (v6)
      {
        return [v4 minusSet:v6];
      }
    }
  }

  return result;
}

unint64_t sub_2770BBEE8(unint64_t result, unint64_t a2, _DWORD *a3)
{
  if ((~a2 & 0x7800000000000000) != 0)
  {
    if ((~a2 & 0x6000000000000000) != 0)
    {
      v3 = a2 & 0x1FFFFFFFFFFFFLL;
      if ((a2 & 0x1FFFFFFFFFFFFLL) > 0x1ED09BEAD87C0 || ((a2 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 ? (v4 = result > 0x378D8E63FFFFFFFFLL) : (v4 = 0), v4 || !(v3 | result)))
      {
        result = 0;
        *a3 = 0;
      }

      else
      {
        v5 = HIDWORD(result);
        if (!(result >> 53))
        {
          v5 = result;
        }

        v6 = -1023;
        if (result >> 53)
        {
          v6 = -991;
        }

        if (v3)
        {
          v5 = a2 & 0x1FFFFFFFFFFFFLL;
          v6 = -959;
        }

        v7 = &unk_280A5C3F0 + 32 * v6 + 32 * (COERCE_UNSIGNED_INT64(v5) >> 52);
        v8 = *v7;
        if (!*v7)
        {
          v8 = *(v7 + 6);
          v9 = *(v7 + 1);
          if (v3 > v9 || v3 == v9 && *(v7 + 2) <= result)
          {
            ++v8;
          }
        }

        *a3 = ((a2 >> 49) & 0x3FFF) - 6176 + v8;
      }
    }

    else
    {
      result = 0;
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_2770BC100()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770BC3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2770BC428(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v10 = a3;
  v7 = a4;
  v8 = *(*(a1 + 48) + 8);
  if (v7 && *(v8 + 24))
  {
    *(v8 + 24) = 0;
    [*(a1 + 32) handleFailureWithHandler:*(a1 + 40) error:v7];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (!*(v8 + 24))
  {
    goto LABEL_10;
  }

  v9 = *(*(a1 + 56) + 8);
  if (!*(v9 + 24))
  {
    if (*(*(*(a1 + 64) + 8) + 24) == 1)
    {
      [*(a1 + 32) prepareBuffer];
      *(*(*(a1 + 64) + 8) + 24) = 0;
      v9 = *(*(a1 + 56) + 8);
    }

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) processData:v10 inflateResult:v9 + 24 CRC:*(*(a1 + 72) + 8) + 24 isDone:a2 handler:*(a1 + 40)];
  }

LABEL_10:
}

void sub_2770BC70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770BC724(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a2;
  if (HIDWORD(a5))
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_277114500();
    }

    goto LABEL_32;
  }

  v9 = *(a1 + 32);
  if (!*(v9 + 64))
  {
    v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSUZipInflateReadChannel processData:inflateResult:CRC:isDone:handler:]_block_invoke"];
    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUZipInflateReadChannel.m"];
    [TSUAssertionHandler handleFailureInFunction:v31 file:v32 lineNumber:132 isFatal:0 description:"Buffer should have been initialized."];

    +[TSUAssertionHandler logBacktraceThrottled];
    goto LABEL_32;
  }

  *(v9 + 40) = a5;
  *(*(a1 + 32) + 32) = a4;
  v10 = *(a1 + 32);
  v11 = 1;
  if (*(v10 + 40))
  {
    v12 = *MEMORY[0x277D85CB0];
    while (1)
    {
      if (**(a1 + 56))
      {
LABEL_34:
        v11 = 1;
        goto LABEL_33;
      }

      v13 = inflate((v10 + 32), 0);
      **(a1 + 56) = v13;
      if ((v13 + 5) > 6 || ((1 << (v13 + 5)) & 0x61) == 0)
      {
        if (TSUDefaultCat_init_token != -1)
        {
          sub_2771144EC();
        }

LABEL_32:
        v11 = 0;
        *(*(*(a1 + 48) + 8) + 24) = 0;
        goto LABEL_33;
      }

      v15 = v13;
      v10 = *(a1 + 32);
      v16 = *(v10 + 64);
      if (v13 == 1)
      {
        goto LABEL_15;
      }

      if (!v16)
      {
        break;
      }

LABEL_28:
      if (!*(v10 + 40))
      {
        goto LABEL_34;
      }
    }

    v16 = 0;
LABEL_15:
    v17 = *(v10 + 144);
    v18 = v17 - v16;
    if (*(v10 + 28) == 1)
    {
      v19 = *(a1 + 64);
      if (v19)
      {
        v20 = *v19;
        v21 = *(v10 + 152);
        if (HIDWORD(v18))
        {
          sub_277114450();
          v22 = -1;
        }

        else
        {
          v22 = v18;
        }

        **(a1 + 64) = crc32(v20, v21, v22);
        v10 = *(a1 + 32);
        v17 = *(v10 + 144);
      }
    }

    v23 = dispatch_data_create(*(v10 + 152), v17, 0, v12);
    v24 = v23;
    if (*(*(a1 + 32) + 144) == v18)
    {
      subrange = v23;
    }

    else
    {
      subrange = dispatch_data_create_subrange(v23, 0, v18);
    }

    v26 = subrange;
    (*(*(a1 + 40) + 16))();
    *(*(a1 + 32) + 144) = 0;
    *(*(a1 + 32) + 152) = 0;
    v27 = *(a1 + 32);
    v28 = *(v27 + 16);
    v29 = v28 >= v18;
    v30 = v28 - v18;
    if (!v29)
    {
      v30 = 0;
    }

    *(v27 + 16) = v30;
    if (v15 != 1)
    {
      [*(a1 + 32) prepareBuffer];
    }

    v10 = *(a1 + 32);
    goto LABEL_28;
  }

LABEL_33:

  return v11;
}

uint64_t sub_2770BC9D8()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770BCA1C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770BCA60()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770BCAA4()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770BCCA0()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770BCD84()
{
  v0 = objc_opt_new();
  v1 = qword_280A63D68;
  qword_280A63D68 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770BD234()
{
  v0 = objc_alloc_init(TSUApplicationExecutionContext);
  v1 = qword_280A63D78;
  qword_280A63D78 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

double TSUParsedNumber::TSUParsedNumber(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = 10;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = 10;
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void TSUParsedNumber::~TSUParsedNumber(TSUParsedNumber *this)
{
  v2 = *(this + 2);
  *(this + 2) = 0;

  v3 = *(this + 3);
  *(this + 3) = 0;

  v4 = *(this + 4);
  *(this + 4) = 0;

  v5 = *(this + 5);
  *(this + 5) = 0;
}

uint64_t TSUParsedNumber::numberOfDecimalPlaces(TSUParsedNumber *this)
{
  if (*(this + 2) == -999)
  {
    return 0;
  }

  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v3 = [v2 rangeOfString:@"."];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v6 = v3;
  v4 = [*(this + 2) length] + ~v3;
  if ((*this & 0x20) != 0)
  {
    v7 = [*(this + 2) rangeOfString:@"E"];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v7 > v6)
    {
      return v7 + v4 - [*(this + 2) length];
    }
  }

  return v4;
}

void *TSUParsedNumber::hasTrailingZeroDecimalPlaces(TSUParsedNumber *this)
{
  if (*(this + 2) == -999)
  {
    return 0;
  }

  v14 = v3;
  v15 = v2;
  v16 = v1;
  result = *(this + 2);
  if (result)
  {
    v9 = [result rangeOfString:@"."];
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      v10 = v9;
      v11 = [*(this + 2) length] - 1;
      if ((*this & 0x20) != 0)
      {
        v12 = [*(this + 2) rangeOfString:@"E"];
        if (v12 > v10 && v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v12 - 1;
        }
      }

      return ([*(this + 2) characterAtIndex:{v11, v4, v14, v15, v16, v5, v6}] == 48);
    }
  }

  return result;
}

double TSUParsedNumber::doubleValue(TSUParsedNumber *this)
{
  v1 = *this;
  if ((*this & 0x11000) != 0)
  {
    return NAN;
  }

  if ((v1 & 0x800) != 0 || *(this + 12) != 10)
  {
    if ([*(this + 2) length])
    {
      TSUDecimal::operator=(&v17, this);
      TSUDecimal::operator=(v16);
      if (TSUDecimal::operator<=(v17.var0.var0, v16))
      {
        return TSUDecimal::doubleValue(&v17);
      }
    }

    return NAN;
  }

  if ((v1 & 0x40) == 0)
  {
    if ([*(this + 2) length])
    {
      v5 = *(this + 2);
      v2 = strtod([v5 UTF8String], 0);

      if ((*(this + 1) & 6) != 0)
      {
        return v2 / 100.0;
      }

      return v2;
    }

    return NAN;
  }

  v6 = *(this + 4);
  if (![v6 length])
  {

    return NAN;
  }

  v7 = [*(this + 5) length];

  if (!v7)
  {
    return NAN;
  }

  if ([*(this + 2) length])
  {
    v8 = *(this + 2);
    v9 = strtod([v8 UTF8String], 0);
  }

  else
  {
    v9 = 0.0;
  }

  v10 = *(this + 4);
  v11 = strtod([v10 UTF8String], 0);

  v12 = *(this + 5);
  v13 = strtod([v12 UTF8String], 0);

  if (v13 == 0.0)
  {
    return NAN;
  }

  v14 = v11 / v13;
  if ((*this & 0x1CLL) != 0)
  {
    v14 = -(v11 / v13);
  }

  v15 = v9 + v14;
  if ((*this & 0x600) != 0)
  {
    return v15 / 100.0;
  }

  else
  {
    return v15;
  }
}

void TSUParsedNumber::setDoubleValue(TSUParsedNumber *this, double a2)
{
  *this = 0;
  *(this + 2) = 0;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%15G", *&a2];
  v4 = *(this + 2);
  *(this + 2) = v3;

  v5 = *(this + 3);
  *(this + 3) = 0;

  v6 = *(this + 4);
  *(this + 4) = 0;

  v7 = *(this + 5);
  *(this + 5) = 0;
}

id TSUParsedNumber::description(TSUParsedNumber *this)
{
  if (*(this + 12) == 10)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"ParsedNumber: %@", *(this + 2), v3];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"ParsedNumber (base %d): %@", *(this + 12), *(this + 2)];
  }
  v1 = ;

  return v1;
}

void TSUUnivNumberParser::TSUUnivNumberParser(TSUUnivNumberParser *this, TSULocale *a2)
{
  v3 = a2;
  v4 = v3;
  *this = v3;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  if (!v3)
  {
    v5 = +[TSULocale usEnglishLocale];
    v6 = *this;
    *this = v5;

    v3 = *this;
  }

  v7 = [(TSULocale *)v3 groupingSeparator];
  v8 = *(this + 1);
  *(this + 1) = v7;

  v9 = [*this decimalSeparator];
  v10 = *(this + 2);
  *(this + 2) = v9;

  v11 = [*this formattingSymbols];
  v12 = [v11 currencyGroupingSeparator];
  v13 = *(this + 3);
  *(this + 3) = v12;

  v14 = [*this formattingSymbols];
  v15 = [v14 currencyDecimalSeparator];
  v16 = *(this + 4);
  *(this + 4) = v15;

  *(this + 5) = [*this numberOrDateLexer];
}

void sub_2770BDE18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void TSUUnivNumberParser::setDecimalPointOverride(TSUUnivNumberParser *this, NSString *a2)
{
  v5 = a2;
  v3 = [(NSString *)v5 copy];
  v4 = *(this + 6);
  *(this + 6) = v3;
}

void TSUUnivNumberParser::setGroupingSeparatorOverride(TSUUnivNumberParser *this, NSString *a2)
{
  v5 = a2;
  v3 = [(NSString *)v5 copy];
  v4 = *(this + 7);
  *(this + 7) = v3;
}

void TSUUnivNumberParser::setCurrencyDecimalPointOverride(TSUUnivNumberParser *this, NSString *a2)
{
  v5 = a2;
  v3 = [(NSString *)v5 copy];
  v4 = *(this + 8);
  *(this + 8) = v3;
}

void TSUUnivNumberParser::setCurrencyGroupingSeparatorOverride(TSUUnivNumberParser *this, NSString *a2)
{
  v5 = a2;
  v3 = [(NSString *)v5 copy];
  v4 = *(this + 9);
  *(this + 9) = v3;
}

id TSUUnivNumberParser::decimalPoint(TSUUnivNumberParser *this, int a2)
{
  v2 = 16;
  if (a2)
  {
    v2 = 32;
  }

  return *(this + v2);
}

id TSUUnivNumberParser::groupingSeparator(TSUUnivNumberParser *this, int a2)
{
  v2 = 8;
  if (a2)
  {
    v2 = 24;
  }

  return *(this + v2);
}

void TSUUnivNumberParser::parseAsBaseNumber(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = -999;
  *(a2 + 12) = 10;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  v3 = *(a1 + 32) - *(a1 + 24);
  if (v3)
  {
    v20 = 0;
    v5 = 0;
    v6 = *(a1 + 16);
    v7 = v3 >> 5;
    v8 = 1;
    do
    {
      v9 = sub_27707485C(a1, v8 - 1);
      v10 = *v9;
      if (*v9)
      {
        v15 = v20;
        if (!v20)
        {
          v15 = objc_opt_new();
          if ((v10 & 0x40000000) != 0)
          {
            *a2 |= 0x4000uLL;
          }
        }

        v20 = v15;
        v13 = TSUNumberOrDateLexer::appendUSDigitsFromToken(v15, v9, a1) ^ 1;
      }

      else
      {
        v11 = v20;
        if ((v10 & 4) != 0)
        {
          if (v5 & 1 | (v20 != 0))
          {
            goto LABEL_35;
          }

          v20 = 0;
          v13 = v8 >= v7 || v6 != 16;
          v5 = v13 ^ 1;
        }

        else
        {
          if ((v10 & 0x20) != 0)
          {
            v17 = *a2;
            if ((*a2 & 0x1F) != 0)
            {
              goto LABEL_35;
            }

            if ((v5 & (v20 == 0)) != 0)
            {
              goto LABEL_34;
            }

            v13 = 0;
            if (v20)
            {
              v14 = v17 | 8;
            }

            else
            {
              v20 = 0;
              v14 = v17 | 4;
            }
          }

          else
          {
            if ((v10 & 0x40) == 0)
            {
              goto LABEL_35;
            }

            v12 = *a2;
            if ((*a2 & 0x1F) != 0)
            {
              goto LABEL_35;
            }

            if ((v5 & (v20 == 0)) != 0)
            {
              goto LABEL_34;
            }

            v13 = 0;
            if (v20)
            {
              v14 = v12 | 2;
            }

            else
            {
              v20 = 0;
              v14 = v12 | 1;
            }
          }

          *a2 = v14;
        }
      }

      if (v8 >= v7)
      {
        break;
      }

      ++v8;
    }

    while (!v13);
    if (!((v20 == 0) | v13 & 1))
    {
      if ((*a2 & 0xC) != 0)
      {
        v18 = [@"-" stringByAppendingString:v20];
      }

      else
      {
        v18 = v20;
      }

      v19 = a2[2];
      a2[2] = v18;

      *(a2 + 2) = 5;
      *a2 |= 0x800uLL;
      *(a2 + 12) = v6;
      goto LABEL_36;
    }

    v11 = v20;
  }

  else
  {
LABEL_34:
    v11 = 0;
  }

LABEL_35:
  v20 = v11;
  *(a2 + 2) = -999;
LABEL_36:
}

void TSUUnivNumberParser::parseAsFractionalNumber(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  *(a3 + 2) = -999;
  *(a3 + 12) = 10;
  *(a3 + 1) = 0u;
  *(a3 + 2) = 0u;
  v4 = *(a2 + 8);
  v5 = 46;
  if ((v4 & 0x100) == 0)
  {
    v5 = 44;
  }

  v6 = 40;
  if ((v4 & 0x100) != 0)
  {
    v6 = 42;
  }

  v7 = *(a2 + 32) - *(a2 + 24);
  if (v7)
  {
    v9 = 0;
    v65 = 0;
    v10 = 0;
    v62 = 0;
    v59 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *(a1 + 40);
    v55 = *(&v13->_decimalSeparator + v5);
    v56 = *(&v13->_decimalSeparator + v6);
    v61 = v13;
    alternateGroupSep = v13->_alternateGroupSep;
    alternateDecSep = v13->_alternateDecSep;
    v63 = v7 >> 5;
    LODWORD(v64) = 0;
    if ((v4 & 0x100) != 0)
    {
      v14 = 24;
    }

    else
    {
      v14 = 8;
    }

    v15 = 32;
    if ((*(a2 + 8) & 0x100) == 0)
    {
      v15 = 16;
    }

    v57 = v15;
    v58 = v14;
    v16 = 1;
    while (1)
    {
      v17 = sub_27707485C(a2, v16 - 1);
      v18 = *v17;
      if (*v17)
      {
        if (((v64 | v11) & 1) != 0 || (*a3 & 0x50A) != 0)
        {
LABEL_105:
          v23 = 1;
          goto LABEL_107;
        }

        v21 = v9;
        v9 = v21;
        if (v10)
        {
          v22 = v10;
        }

        else
        {
          if (v65)
          {
            v27 = v65;
          }

          else
          {
            if (!v21)
            {
              v22 = objc_opt_new();
              v65 = 0;
              v9 = v22;
              goto LABEL_36;
            }

            if ((v12 & 1) == 0)
            {
              v65 = 0;
              v22 = v21;
              goto LABEL_36;
            }

            v27 = objc_opt_new();
          }

          v22 = v27;

          v65 = v22;
        }

LABEL_36:
        v28 = TSUNumberOrDateLexer::appendUSDigitsFromToken(v22, v17, a2) ^ 1;

        v11 = 0;
        LODWORD(v64) = 0;
        goto LABEL_64;
      }

      if ((v18 & 0x8000) != 0)
      {
        if (v62)
        {
          goto LABEL_105;
        }

        v23 = 1;
        if (v11 || v65 != 0 || v10)
        {
          goto LABEL_107;
        }

        v24 = sub_277074878(a2, v17);
        v25 = [v24 characterAtIndex:0];

        *v66 = 0;
        v11 = TSUNumberOrDateLexer::fractionValueForVulgarChar(v61, v25, &v66[1], v66);
        if (v11)
        {
          v26 = [MEMORY[0x277CCAB68] stringWithFormat:@"%u", v66[1]];
          v10 = [MEMORY[0x277CCAB68] stringWithFormat:@"%u", v66[0]];
          v65 = v26;
        }

        else
        {
          v10 = 0;
          v65 = 0;
        }

        v62 = 0;
        v28 = !v11;
      }

      else if ((v18 & 0x100000000) != 0)
      {
        if (![v9 length])
        {
          v28 = 0;
LABEL_63:
          v18 = v12;
          goto LABEL_64;
        }

        v29 = v17[1];
        v23 = 1;
        if (v29 > 0x7FFFFFFF || v17[2] != v29)
        {
          goto LABEL_107;
        }

        v30 = sub_2770748F8(a2, v17);
        v28 = 0;
        if (v30 <= 8198)
        {
          if (v30 == 32)
          {
            goto LABEL_63;
          }

          v18 = v12;
          if (v30 != 160)
          {
            goto LABEL_107;
          }
        }

        else
        {
          if (v30 == 8199 || v30 == 8239)
          {
            goto LABEL_63;
          }

          v18 = v12;
          if (v30 != 12288)
          {
            goto LABEL_107;
          }
        }
      }

      else if ((v18 & 0x800) != 0)
      {
        if ((*a3 & 0x180) != 0)
        {
          goto LABEL_105;
        }

        v31 = 256;
        if (!v9)
        {
          v31 = 128;
        }

        *a3 |= v31;
        v32 = sub_277074878(a2, v17);
        v33 = a3[3];
        a3[3] = v32;

        v28 = 0;
      }

      else
      {
        if ((v18 & 0x20) != 0)
        {
          if ((*a3 & 0x1F) != 0)
          {
            goto LABEL_105;
          }

          v28 = 0;
          v34 = 8;
          if (!v9)
          {
            v34 = 4;
          }

          v35 = *a3 | v34;
          goto LABEL_59;
        }

        if ((v18 & 0x40) != 0)
        {
          v36 = *a3;
          if ((*a3 & 0x1F) != 0)
          {
            goto LABEL_105;
          }

          v28 = 0;
          v37 = 1;
          if (v9)
          {
            v37 = 2;
          }

LABEL_72:
          *a3 = v36 | v37;
          goto LABEL_64;
        }

        if ((v18 & 0x200) != 0)
        {
          v23 = 1;
          if ((*a3 & 0x1F) != 0 || v9)
          {
            goto LABEL_107;
          }

          v28 = 0;
          v35 = *a3 | 0x10;
LABEL_59:
          *a3 = v35;
          v59 = 1;
          goto LABEL_64;
        }

        if ((v18 & 0x400) != 0)
        {
          if (v64 & 1 | (v9 == 0))
          {
            goto LABEL_105;
          }

          v64 = (*a3 & 0x10uLL) >> 4;
          v28 = (*a3 & 0x10) == 0;
        }

        else
        {
          if ((v18 & 0x80) == 0)
          {
            if ((v18 & 0x18) == 0)
            {
              if ((v18 & 0x1000) == 0)
              {
                goto LABEL_105;
              }

              v36 = *a3;
              if ((*a3 & 0x600) != 0)
              {
                goto LABEL_105;
              }

              v28 = 0;
              v37 = 1024;
              if (!v9)
              {
                v37 = 512;
              }

              goto LABEL_72;
            }

            v19 = sub_2770748F8(a2, v17);
            if (v19)
            {
              v20 = 0;
            }

            else
            {
              v20 = sub_277074878(a2, v17);
            }

            v50 = *(a1 + v57);
            v51 = *(a1 + v58);
            if (!v19)
            {
              goto LABEL_93;
            }

            v52 = 1;
            v40 = v19;
            if (v19 == v55 || v19 == alternateGroupSep)
            {
LABEL_94:
              if (v40 != v56 && v40 != alternateDecSep && !TSUNumberOrDateLexer::isUnambigiousDecimalPoint(v40))
              {
                goto LABEL_97;
              }
            }

            else
            {
              if (TSUNumberOrDateLexer::isUnambigiousGroupingSeparator(v19))
              {
                v52 = 1;
                v40 = v19;
                goto LABEL_94;
              }

LABEL_93:
              v52 = [v20 isEqualToString:v51];
              v40 = v19;
              if (v19)
              {
                goto LABEL_94;
              }

LABEL_97:
              [v20 isEqualToString:v50];
            }

            v41 = v20;
            v28 = 1;
            if (v52 && v9 && (v12 & 1) != 0 && v16 < v63)
            {
              v28 = (*sub_27707485C(a2, v16) & 1) == 0;
            }

            goto LABEL_64;
          }

          if ((v62 | v11))
          {
            goto LABEL_105;
          }

          if (!v65)
          {
            v65 = v9;
            v38 = objc_opt_new();

            v9 = v38;
          }

          v39 = objc_opt_new();

          v11 = 0;
          v28 = 0;
          v62 = 1;
          v10 = v39;
        }
      }

LABEL_64:
      if (v16 >= v63)
      {
        v23 = v28;
        goto LABEL_107;
      }

      ++v16;
      v12 = v18;
      v23 = v28;
      if (v28)
      {
        goto LABEL_107;
      }
    }
  }

  v59 = 0;
  v23 = 0;
  v10 = 0;
  v65 = 0;
  v9 = 0;
LABEL_107:
  if ([v65 length] && objc_msgSend(v10, "length"))
  {
    v42 = [v10 isEqualToString:@"0"] | v23;
  }

  else
  {
    v42 = 1;
  }

  v43 = a3[3];
  if (v43)
  {
    v44 = [*a1 currencyCodeForCurrencySymbol:a3[3]];
    if (!v44)
    {
      a3[3] = 0;

      goto LABEL_120;
    }
  }

  if ((v42 & 1) == 0)
  {
    *(a3 + 2) = 4;
    if (![v9 length])
    {
      v45 = [MEMORY[0x277CCAB68] stringWithString:@"0"];

      v9 = v45;
    }

    if (v59)
    {
      v46 = [@"-" stringByAppendingString:v9];
    }

    else
    {
      v46 = v9;
    }

    v47 = a3[2];
    a3[2] = v46;

    v48 = *a3;
    if ((*a3 & 0x180) != 0 && a3[3])
    {
      v49 = 1;
    }

    else
    {
      if ((v48 & 0x600) == 0)
      {
LABEL_128:
        *a3 = v48 | 0x40;
        objc_storeStrong(a3 + 4, v65);
        objc_storeStrong(a3 + 5, v10);
        *(a3 + 12) = 10;
        goto LABEL_129;
      }

      v49 = 2;
    }

    *(a3 + 2) = v49;
    goto LABEL_128;
  }

LABEL_120:
  *(a3 + 2) = -999;
LABEL_129:
}

void TSUUnivNumberParser::parseAsNumber(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  if ((v6 & 4) != 0 || *(a2 + 16) != 10)
  {

    TSUUnivNumberParser::parseAsBaseNumber(a2, a4);
    return;
  }

  if ((v6 & 0x840) != 0 && (*(a2 + 8) & 8) == 0)
  {

    TSUUnivNumberParser::parseAsFractionalNumber(a1, a2, a4);
    return;
  }

  *a4 = 0;
  *(a4 + 8) = -999;
  *(a4 + 12) = 10;
  *(a4 + 16) = 0u;
  v9 = (a4 + 16);
  *(a4 + 32) = 0u;
  v10 = *(a1 + 40);
  v11 = 46;
  if ((v6 & 0x100) == 0)
  {
    v11 = 44;
  }

  v12 = 42;
  if ((v6 & 0x100) == 0)
  {
    v12 = 40;
  }

  v13 = *(v10 + v12);
  v14 = *(v10 + v11);
  v83 = *(v10 + 52);
  v84 = *(v10 + 50);
  if ((v6 & 0x10) != 0)
  {
    v15 = [*a1 groupingSize];
    if ((*(a2 + 8) & 0x10) != 0)
    {
      v17 = [*a1 formattingSymbols];
      v16 = [v17 secondaryGroupingSize];

      goto LABEL_22;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = 0;
LABEL_22:
  if (v15 <= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v15;
  }

  if ((a3 & 2) != 0)
  {
    v19 = 0;
  }

  else
  {
    v19 = v15;
  }

  if ((a3 & 2) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v16;
  }

  v21 = *(a2 + 32) - *(a2 + 24);
  if (!v21)
  {
    v91 = 0;
    LOBYTE(v23) = 0;
    v63 = 0;
    v64 = 0;
    LOBYTE(v32) = 1;
    goto LABEL_164;
  }

  v75 = v20;
  v76 = v18;
  v77 = 0;
  v78 = v19;
  v79 = v14;
  v80 = v13;
  LODWORD(v90) = 0;
  v91 = 0;
  v22 = 0;
  v88 = 0;
  v23 = 0;
  v87 = 0;
  v24 = 0;
  v85 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v89 = v21 >> 5;
  if ((v6 & 0x100) != 0)
  {
    v28 = 24;
  }

  else
  {
    v28 = 8;
  }

  v29 = 32;
  if ((v6 & 0x100) == 0)
  {
    v29 = 16;
  }

  v81 = v29;
  v82 = v28;
  do
  {
    v30 = sub_27707485C(a2, v22);
    v31 = *v30;
    if (*v30)
    {
      if (v26)
      {
        v26 = 1;
        goto LABEL_161;
      }

      if (((v27 & ~v23 | v90 | v25) & 1) != 0 || (*a4 & 0x50A) != 0)
      {
        v26 = 0;
LABEL_161:
        v9 = (a4 + 16);
        v63 = v87;
        v64 = v85;
        LOBYTE(v32) = 1;
        if ((v88 & 0x100000000) == 0)
        {
          goto LABEL_164;
        }

LABEL_162:
        LOBYTE(v32) = ([v91 length] == 0) | v23 & (v26 ^ 1) | v32;
        goto LABEL_164;
      }

      v34 = v91;
      if (!v91)
      {
        v34 = objc_opt_new();
      }

      v91 = v34;
      v25 = 0;
      LODWORD(v90) = 0;
      v32 = TSUNumberOrDateLexer::appendUSDigitsFromToken(v34, v30, a2) ^ 1;
      if ((v23 & 1) == 0)
      {
        v27 |= v88;
      }

      HIDWORD(v88) = 1;
      v26 = v23;
      goto LABEL_74;
    }

    if ((v31 & 0x800) != 0)
    {
      if ((*a4 & 0x180) != 0)
      {
        goto LABEL_161;
      }

      v35 = 256;
      if (!v91)
      {
        v35 = 128;
      }

      *a4 |= v35;
      v36 = sub_277074878(a2, v30);
      v37 = *(a4 + 24);
      *(a4 + 24) = v36;

      goto LABEL_64;
    }

    if ((v31 & 0x20) != 0)
    {
      if ((*a4 & 0x1FLL) != 0)
      {
        goto LABEL_161;
      }

      v32 = 0;
      v38 = 8;
      if (!v91)
      {
        v38 = 4;
      }

      v39 = *a4 | v38;
LABEL_69:
      *a4 = v39;
      v87 = 1;
      goto LABEL_74;
    }

    if ((v31 & 0x40) != 0)
    {
      v40 = *a4;
      if ((*a4 & 0x1FLL) != 0)
      {
        goto LABEL_161;
      }

      v32 = 0;
      v41 = 1;
      if (v91)
      {
        v41 = 2;
      }

LABEL_73:
      *a4 = v40 | v41;
      goto LABEL_74;
    }

    if ((v31 & 0x200) != 0)
    {
      if ((*a4 & 0x1FLL) != 0 || v91)
      {
        goto LABEL_161;
      }

      v32 = 0;
      v91 = 0;
      v39 = *a4 | 0x10;
      goto LABEL_69;
    }

    if ((v31 & 0x400) != 0)
    {
      if (v90 & 1 | (v91 == 0))
      {
        goto LABEL_161;
      }

      v90 = (*a4 & 0x10uLL) >> 4;
      v32 = (*a4 & 0x10) == 0;
      goto LABEL_74;
    }

    if ((v31 & 0x100000008) != 0x100000000)
    {
      if ((v31 & 0x18) == 0)
      {
        if ((v31 & 0x1000) != 0)
        {
          v40 = *a4;
          if ((*a4 & 0x600) != 0)
          {
            goto LABEL_161;
          }

          v32 = 0;
          v41 = 1024;
          if (!v91)
          {
            v41 = 512;
          }

          goto LABEL_73;
        }

        if ((*v30 & 0x100) == 0) | v23 & 1 || ((HIDWORD(v88) ^ 1))
        {
          goto LABEL_161;
        }

        if (v22 + 1 >= v89)
        {
          LOBYTE(v23) = 0;
          goto LABEL_161;
        }

        *a4 |= 0x20uLL;
        v42 = *sub_27707485C(a2, v22 + 1);
        if ((v42 & 0x60) != 0)
        {
          if ((v42 & 0x20) != 0)
          {
            v43 = @"E-";
          }

          else
          {
            v43 = @"E+";
          }

          [v91 appendString:v43];
          v25 = 0;
          v32 = 0;
          v23 = 1;
          ++v22;
        }

        else
        {
          [v91 appendString:@"E+"];
          v25 = 0;
          v32 = 0;
          v23 = 1;
        }

        goto LABEL_74;
      }

      v74 = sub_2770748F8(a2, v30);
      if (v74)
      {
        v73 = 0;
      }

      else
      {
        v73 = sub_277074878(a2, v30);
      }

      v44 = *(a1 + v82);
      v72 = *(a1 + v81);
      if (v74)
      {
        v71 = *(a1 + v82);
        v45 = 1;
        v46 = v74;
        if (v74 == v79 || v74 == v83)
        {
          goto LABEL_102;
        }

        isUnambigiousGroupingSeparator = TSUNumberOrDateLexer::isUnambigiousGroupingSeparator(v74);
        v44 = v71;
        if (isUnambigiousGroupingSeparator)
        {
          v46 = v74;
LABEL_102:
          v48 = 1;
          if (v46 == v80 || v46 == v84)
          {
LABEL_107:
            if (!v45)
            {
              if (v88 & 1 | ((v48 & 1) == 0) | (v23 | v25) & 1)
              {
                v32 = 1;
              }

              else
              {
                v50 = v91;
                if (!v91)
                {
                  v50 = objc_opt_new();
                }

                v91 = v50;
                [v50 appendString:@"."];
                v32 = 0;
                LODWORD(v88) = 1;
              }

              goto LABEL_123;
            }

            v32 = 1;
            if ((v24 & 1) == 0 || ((v88 | v23) & 1) != 0 || !v91)
            {
LABEL_123:

              goto LABEL_74;
            }

            if (v22 + 1 >= v89 || (v49 = sub_27707485C(a2, v22 + 1), (*v49 & 1) == 0))
            {
              LODWORD(v88) = 0;
              goto LABEL_123;
            }

            if (!v78)
            {
              LODWORD(v88) = 0;
              v32 = 0;
              goto LABEL_123;
            }

            v56 = [v91 length] - v77;
            v32 = v56 > v76;
            v57 = *(v49 + 8);
            if (v57 > 0x7FFFFFFF)
            {
              v60 = 0;
            }

            else
            {
              v58 = *(v49 + 16);
              v59 = v58 - v57;
              if (v58 < 0x80000000)
              {
                v60 = (v59 + 1);
              }

              else
              {
                v60 = 0;
              }

              if (v60 == v78)
              {
                goto LABEL_155;
              }
            }

            v32 = v60 != v75 || v56 > v76;
LABEL_155:
            v77 = [v91 length];
            LODWORD(v88) = 0;
            v85 = 1;
            goto LABEL_123;
          }

          if (TSUNumberOrDateLexer::isUnambigiousDecimalPoint(v46))
          {
            v48 = 1;
            goto LABEL_107;
          }

LABEL_106:
          v48 = [v73 isEqualToString:v72];
          goto LABEL_107;
        }
      }

      v45 = [v73 isEqualToString:v44];
      v46 = v74;
      if (!v74)
      {
        goto LABEL_106;
      }

      goto LABEL_102;
    }

    if (((HIDWORD(v88) | v88) & 1) == 0)
    {
      v88 = 0;
      goto LABEL_64;
    }

    v32 = 0;
    if ((v24 & 1) != 0 && (v31 & 0x10) != 0)
    {
      if (v22 + 1 < v89)
      {
        v33 = sub_27707485C(a2, v22 + 1);
        if (*v33)
        {
          if (v78)
          {
            v51 = [v91 length] - v77;
            v32 = v51 > v76;
            v52 = *(v33 + 8);
            if (v52 > 0x7FFFFFFF)
            {
              v55 = 0;
            }

            else
            {
              v53 = *(v33 + 16);
              v54 = v53 - v52;
              if (v53 < 0x80000000)
              {
                v55 = (v54 + 1);
              }

              else
              {
                v55 = 0;
              }

              if (v55 == v78)
              {
                goto LABEL_146;
              }
            }

            v32 = v55 != v75 || v51 > v76;
LABEL_146:
            v77 = [v91 length];
            v85 = 1;
            goto LABEL_74;
          }

LABEL_64:
          v32 = 0;
          goto LABEL_74;
        }
      }

      v32 = 0;
    }

    v25 = 1;
LABEL_74:
    if (++v22 >= v89)
    {
      break;
    }

    v24 = v31;
  }

  while (!v32);
  if ((v88 & 0x100000000) != 0)
  {
    v9 = (a4 + 16);
    v63 = v87;
    v64 = v85;
    goto LABEL_162;
  }

  LOBYTE(v32) = 1;
  v9 = (a4 + 16);
  v63 = v87;
  v64 = v85;
LABEL_164:
  if (!*(a4 + 24))
  {
LABEL_167:
    if (v32)
    {
      goto LABEL_172;
    }

    if (*(a4 + 24))
    {
      v66 = 1;
      if (v63)
      {
LABEL_170:
        v67 = [@"-" stringByAppendingString:v91];
        goto LABEL_181;
      }
    }

    else
    {
      if (v23)
      {
        v69 = 3;
      }

      else
      {
        v69 = 0;
      }

      if ((*(a4 + 1) & 6) != 0)
      {
        v66 = 2;
      }

      else
      {
        v66 = v69;
      }

      if (v63)
      {
        goto LABEL_170;
      }
    }

    v67 = v91;
LABEL_181:
    v70 = *v9;
    *v9 = v67;

    if (v64)
    {
      *a4 |= 0x8000uLL;
    }

    goto LABEL_183;
  }

  v65 = [*a1 currencyCodeForCurrencySymbol:*(a4 + 24)];
  if (v65)
  {

    goto LABEL_167;
  }

  v68 = *(a4 + 24);
  *(a4 + 24) = 0;

LABEL_172:
  v66 = -999;
LABEL_183:
  *(a4 + 8) = v66;
}

BOOL TSUUnivNumberParser::getNumberValueTypeAndCurrencyFromString(void *a1, void *a2, double *a3, int *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  if (v9)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v19, v10);
    v18 = -999;
    v13 = 0;
    v14 = -999;
    v15 = 10;
    v16 = 0u;
    v17 = 0u;
    v11 = TSUUnivNumberParser::numberValueTypeAndCurrency(v19, v9, &v13, &v18, a5);
    if (v11)
    {
      if (a3)
      {
        *a3 = TSUParsedNumber::doubleValue(&v13);
      }

      if (a4)
      {
        *a4 = v18;
      }
    }

    TSUParsedNumber::~TSUParsedNumber(&v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

BOOL TSUUnivNumberParser::numberValueTypeAndCurrency(TSUNumberOrDateLexer **a1, NSString *a2, uint64_t a3, _DWORD *a4, void *a5)
{
  TSUUnivNumberParser::parseAsNumber(a1, a2, 0, v13);
  *a3 = *v13;
  *(a3 + 5) = *&v13[5];
  objc_storeStrong((a3 + 16), obj);
  objc_storeStrong((a3 + 24), v15);
  objc_storeStrong((a3 + 32), v16);
  objc_storeStrong((a3 + 40), v17);
  TSUParsedNumber::~TSUParsedNumber(v13);
  v9 = *(a3 + 8);
  if (v9 != -999)
  {
    *a4 = v9;
    if (a5)
    {
      if (v9 == 1)
      {
        v10 = *a1;
        v11 = *(a3 + 24);
        *a5 = [(TSUNumberOrDateLexer *)v10 currencyCodeForCurrencySymbol:v11];

        if (!*a5)
        {
          *a4 = 0;
        }
      }
    }
  }

  return v9 != -999;
}

BOOL TSUUnivNumberParser::getNumberValueAndTypeFromString(void *a1, void *a2, double *a3, int *a4)
{
  v7 = a1;
  v8 = a2;
  if (v7)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v17, v8);
    v16 = -999;
    v11 = 0;
    v12 = -999;
    v13 = 10;
    v14 = 0u;
    v15 = 0u;
    v9 = TSUUnivNumberParser::numberValueAndType(v17, v7, &v11, &v16);
    if (v9)
    {
      if (a3)
      {
        *a3 = TSUParsedNumber::doubleValue(&v11);
      }

      if (a4)
      {
        *a4 = v16;
      }
    }

    TSUParsedNumber::~TSUParsedNumber(&v11);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL TSUUnivNumberParser::numberValueAndType(TSUNumberOrDateLexer **a1, NSString *a2, uint64_t a3, _DWORD *a4)
{
  TSUUnivNumberParser::parseAsNumber(a1, a2, 0, v8);
  *a3 = *v8;
  *(a3 + 5) = *&v8[5];
  objc_storeStrong((a3 + 16), obj);
  objc_storeStrong((a3 + 24), v10);
  objc_storeStrong((a3 + 32), v11);
  objc_storeStrong((a3 + 40), v12);
  TSUParsedNumber::~TSUParsedNumber(v8);
  v6 = *(a3 + 8);
  if (v6 != -999)
  {
    *a4 = v6;
  }

  return v6 != -999;
}

BOOL TSUUnivNumberParser::getNumberValueFromString(TSUUnivNumberParser *this, NSString *a2, TSULocale *a3, double *a4)
{
  v6 = this;
  v7 = a2;
  if (v6)
  {
    TSUUnivNumberParser::TSUUnivNumberParser(v15, v7);
    v10 = 0;
    v11 = -999;
    v12 = 10;
    v13 = 0u;
    v14 = 0u;
    v8 = TSUUnivNumberParser::numberValue(v15, v6, &v10);
    if (a3 != 0 && v8)
    {
      *&a3->super.super.isa = TSUParsedNumber::doubleValue(&v10);
    }

    TSUParsedNumber::~TSUParsedNumber(&v10);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL TSUUnivNumberParser::numberValue(TSUNumberOrDateLexer **this, NSString *a2, TSUParsedNumber *a3)
{
  TSUUnivNumberParser::parseAsNumber(this, a2, 0, v5);
  *a3 = *v5;
  *(a3 + 5) = *&v5[5];
  objc_storeStrong(a3 + 2, obj);
  objc_storeStrong(a3 + 3, v7);
  objc_storeStrong(a3 + 4, v8);
  objc_storeStrong(a3 + 5, v9);
  TSUParsedNumber::~TSUParsedNumber(v5);
  return *(a3 + 2) != -999;
}

void TSUUnivNumberParser::parseAsNumber(TSUNumberOrDateLexer **this@<X0>, NSString *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = a2;
  if (!v7)
  {
    goto LABEL_5;
  }

  TSUNumberOrDateLexer::lexNumberOrDateString(this[5], v7, 0, a3 | 4, v8);
  if ((v8[10] & 0x20) != 0)
  {
    sub_277074858(v8);
LABEL_5:
    *a4 = 0;
    *(a4 + 8) = -999;
    *(a4 + 12) = 10;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    goto LABEL_6;
  }

  TSUUnivNumberParser::parseAsNumber(this, v8, a3, a4);
  sub_277074858(v8);
LABEL_6:
}

void sub_2770BFB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_277074858(&a9);

  _Unwind_Resume(a1);
}

void TSUUnivNumberParser::parseAsNumber(TSUNumberOrDateLexer **this@<X0>, NSString *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v9 = a2;
  if (!v9)
  {
    goto LABEL_5;
  }

  TSUNumberOrDateLexer::lexNumberOrDateString(this[5], v9, a3, a4 | 4, v10);
  if ((v10[10] & 0x20) != 0)
  {
    sub_277074858(v10);
LABEL_5:
    *a5 = 0;
    *(a5 + 8) = -999;
    *(a5 + 12) = 10;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    goto LABEL_6;
  }

  TSUUnivNumberParser::parseAsNumber(this, v10, a4, a5);
  sub_277074858(v10);
LABEL_6:
}

void sub_2770BFC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_277074858(&a9);

  _Unwind_Resume(a1);
}

void sub_2770C0140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  TSUParsedNumber::~TSUParsedNumber(va);
  sub_2770BF674(va1);

  _Unwind_Resume(a1);
}

void sub_2770C0324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  TSUParsedNumber::~TSUParsedNumber(va);
  sub_2770BF674(va1);

  _Unwind_Resume(a1);
}

void sub_2770C04FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  TSUParsedNumber::~TSUParsedNumber(va);
  sub_2770BF674(va1);

  _Unwind_Resume(a1);
}

id sub_2770C0548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = [MEMORY[0x277CBEAE0] inputStreamWithURL:?];
  v8 = v7;
  if (v7)
  {
    [v7 open];
    v9 = [MEMORY[0x277CCAC58] propertyListWithStream:v8 options:a4 format:0 error:a5];
    [v8 close];
  }

  else if (a5)
  {
    [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
    *a5 = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_2770C0608(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 objectForKey:@"_LOCALIZABLE_"];
    if (v6)
    {
      [v5 removeObjectForKey:@"_LOCALIZABLE_"];
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_2770C0874;
    v18[3] = &unk_27A702958;
    v18[4] = a1;
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSPropertyListSerialization(TSUtility) tsu_processLocalizedPropertyList:]"];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSPropertyListSerialization_TSUtility.m"];
        [TSUAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:47 isFatal:0 description:"Expected a dictionary as a child of %{public}@", @"_LOCALIZABLE_"];

        +[TSUAssertionHandler logBacktraceThrottled];
      }

      [v5 addEntriesFromDictionary:v6];
    }

LABEL_17:
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v4;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [a1 tsu_processLocalizedPropertyList:*(*(&v14 + 1) + 8 * v13++)];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v11);
    }

    goto LABEL_17;
  }

LABEL_18:
}

id sub_2770C087C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = a3;
  if ((a4 - 1) >= 2)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSPropertyListSerialization(TSUtility) tsu_localizedPropertyListWithContentsOfURL:options:error:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSPropertyListSerialization_TSUtility.m"];
    [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:65 isFatal:0 description:"Need mutable containers to process a localizable property list"];

    +[TSUAssertionHandler logBacktraceThrottled];
  }

  v11 = [a1 tsu_propertyListWithContentsOfURL:v8 options:a4 error:a5];
  [a1 tsu_processLocalizedPropertyList:v11];

  return v11;
}

os_log_t TSULogCreateCategory(char *category)
{
  v1 = os_log_create("com.apple.iwork", category);

  return v1;
}

void TSULogBacktrace()
{
  if (TSUErrorCat_init_token != -1)
  {
    sub_277114550();
  }
}

uint64_t sub_2770C09E0()
{
  v0 = os_log_create("com.apple.iwork", "TSUErrorCat");
  v1 = TSUErrorCat_log_t;
  TSUErrorCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770C0BF8(void *a1)
{
  result = [*(a1[4] + 8) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

uint64_t sub_2770C0CDC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

uint64_t sub_2770C0E04(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2770C0E1C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_2770C0F5C(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB98] setWithSet:*(*(a1 + 32) + 8)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

uint64_t sub_2770C11EC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) description];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

id sub_2770C1280()
{
  if (qword_280A63D88 != -1)
  {
    sub_277114564();
  }

  v1 = qword_280A63D90;

  return v1;
}

void sub_2770C12C4()
{
  [MEMORY[0x277CBEBD0] tsu_registerDefaults];
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v5 = [v0 arrayForKey:@"TSULogCatYES"];

  if (v5)
  {
    v1 = [[TSULogCatThreadSafeMutableSet alloc] initWithArray:v5];
    v2 = qword_280A63D90;
    qword_280A63D90 = v1;
  }

  if (!qword_280A63D90)
  {
    v3 = objc_alloc_init(TSULogCatThreadSafeMutableSet);
    v4 = qword_280A63D90;
    qword_280A63D90 = v3;
  }
}

uint64_t TSULogCat_IsCategoryEnabled(void *a1)
{
  v1 = a1;
  v2 = sub_2770C1280();
  v3 = [v2 containsObject:v1];

  return v3;
}

void *sub_2770C13C8(void *a1, void **a2, dispatch_once_t *a3)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2770C147C;
  v10[3] = &unk_27A7025D0;
  v10[4] = a1;
  v10[5] = a2;
  v5 = *a3;
  v6 = a1;
  if (v5 != -1)
  {
    dispatch_once(a3, v10);
  }

  v7 = *a2;
  v8 = v7;

  return v7;
}

void *sub_2770C148C(void *a1)
{
  *a1 = &unk_28862A698;
  for (i = 1; i != 257; ++i)
  {
    v3 = a1[i];
    a1[i] = 0;
  }

  v4 = 256;
  do
  {
  }

  while (v4 * 8);
  return a1;
}

void sub_2770C1500(void *a1)
{
  sub_2770C148C(a1);

  JUMPOUT(0x277CA5D00);
}

uint64_t sub_2770C1538(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  for (i = (a1 + 8); !*i; ++i)
  {
    if (--v2 == -256)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return a2 - v2;
}

uint64_t sub_2770C1568(uint64_t a1, uint64_t a2)
{
  v2 = 255;
  while (!*(a1 + 8 + 8 * v2))
  {
    if (--v2 == -1)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v2 + a2;
}

id sub_2770C1598(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAB58] indexSet];
  v5 = 0;
  v6 = a1 + 8;
  do
  {
    if (*(v6 + v5))
    {
      [v4 addIndex:a2];
    }

    ++a2;
    v5 += 8;
  }

  while (v5 != 2048);
  v7 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v4];

  return v7;
}

void sub_2770C1648(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = 0;
  v7 = a1 + 8;
  v9 = a2;
  do
  {
    if (*a4 == 1)
    {
      break;
    }

    v8 = *(v7 + v6);
    if (v8)
    {
      v9[2](v9, v8, a3, a4);
    }

    ++a3;
    v6 += 8;
  }

  while (v6 != 2048);
}

void *sub_2770C1784(void *a1)
{
  *a1 = &unk_28862A6E0;
  for (i = 1; i != 257; ++i)
  {
    v3 = a1[i];
    if (v3)
    {
      (*(*v3 + 8))(v3);
      a1[i] = 0;
    }
  }

  return a1;
}

void sub_2770C1808(void *a1)
{
  sub_2770C1784(a1);

  JUMPOUT(0x277CA5D00);
}

uint64_t sub_2770C18EC(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = a1 + 8;
  for (i = a2 << 8; ; i += 256)
  {
    v5 = *(v3 + v2);
    if (v5)
    {
      result = (*(*v5 + 16))(v5, i);
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    v2 += 8;
    if (v2 == 2048)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t sub_2770C196C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 << 8) + 65280;
  v4 = 2048;
  while (1)
  {
    v5 = *(a1 + v4);
    if (v5)
    {
      result = (*(*v5 + 24))(v5, v3);
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }

    v3 -= 256;
    v4 -= 8;
    if (!v4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

id sub_2770C19EC(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCAB58] indexSet];
  v5 = 0;
  v6 = a1 + 8;
  v7 = a2 << 8;
  do
  {
    v8 = *(v6 + v5);
    if (v8)
    {
      v9 = (*(*v8 + 32))(v8, v7);
      [v4 addIndexes:v9];
    }

    v7 += 256;
    v5 += 8;
  }

  while (v5 != 2048);
  v10 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexSet:v4];

  return v10;
}

void sub_2770C1AE8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  v7 = 0;
  v8 = a1 + 8;
  v9 = a3 << 8;
  do
  {
    if (*a4 == 1)
    {
      break;
    }

    v10 = *(v8 + v7);
    if (v10)
    {
      (*(*v10 + 40))(v10, v11, v9, a4);
    }

    v9 += 256;
    v7 += 8;
  }

  while (v7 != 2048);
}

void sub_2770C1D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2770C1D90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770C1DA8(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n   [%lu] = %@", *(*(*(a1 + 32) + 8) + 40), a3, v8];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_2770C2368(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1 + 8 * a3;
  v7 = *(v4 + 8);
  v5 = (v4 + 8);
  v6 = v7;
  if (a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2 != 0;
  }

  objc_storeStrong(v5, a2);

  return v9;
}

void *sub_2770C26BC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_2770C2734(result, a2);
  }

  return result;
}

void sub_2770C2718(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2770C2734(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_2770C2770(a1, a2);
  }

  sub_2770289D0();
}

void sub_2770C2770(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_277028AC0();
}

void sub_2770C2AD0(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2 == 2)
  {
    v11 = objc_begin_catch(exc_buf);
    v12 = [v11 sfu_localErrno];
    v13 = MEMORY[0x277CCA9B8];
    v14 = [v11 userInfo];
    v15 = [v13 errorWithDomain:*MEMORY[0x277CCA5B8] code:v12 userInfo:v14];
    v16 = *(v10 + 160);
    *(v10 + 160) = v15;

    objc_end_catch();
  }

  else
  {
    objc_begin_catch(exc_buf);
  }

  JUMPOUT(0x2770C2A64);
}

void sub_2770C2E74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770C2E8C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 size];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_2770C3100(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) close];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(a1 + 40);
    if (v5[32])
    {
      [v5 collapseCommonRootDirectory];
      v5 = *(a1 + 40);
    }

    v4 = v5;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770C31F8;
  block[3] = &unk_27A702A10;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v12 = v3;
  v13 = v7;
  v11 = v4;
  v8 = v3;
  v9 = v4;
  dispatch_async(v6, block);
}

void sub_2770C3210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 56);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2770C331C;
    v11[3] = &unk_27A702A60;
    v11[4] = v8;
    v12 = v7;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v13 = v9;
    v14 = v10;
    [v8 readEndOfCentralDirectoryData:a2 eocdOffset:v6 channel:v12 completion:v11];
  }
}

void sub_2770C331C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v10 = v3;
  if ((*(*(a1 + 32) + 32) & 4) != 0 && (v5 = [v3 code], v4 = v10, v5 == 259) && (objc_msgSend(v10, "domain"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", *MEMORY[0x277CCA050]), v6, v4 = v10, v7))
  {
    v8 = [v10 userInfo];
    v9 = [v8 objectForKeyedSubscript:@"TSUZipArchiveErrorDescription"];

    if (v9)
    {
      if (TSUDefaultCat_init_token != -1)
      {
        sub_277114578();
      }

      [*(a1 + 32) readLocalFileHeaderEntriesFromChannel:*(a1 + 40) offset:0 previousEntry:0 seekAttempts:0 seekForward:0 completion:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (!v4)
    {
      *(*(a1 + 32) + 24) = *(a1 + 56);
    }

    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_2770C3460()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770C34A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t sub_2770C3904(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](*(a1 + 32), sel_readZip64EndOfCentralDirectoryLocatorData_channel_completion_);
  }
}

uint64_t sub_2770C3BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 48) + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](*(a1 + 32), sel_readZip64EndOfCentralDirectoryData_channel_completion_);
  }
}

uint64_t sub_2770C3EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](*(a1 + 32), sel_readCentralDirectoryData_entryCount_completion_);
  }
}

void sub_2770C4C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v6 = *(a1 + 64);
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_2770C4D90;
    v14[3] = &unk_27A702B00;
    v9 = *(a1 + 48);
    v18 = *(a1 + 76);
    v17 = *(a1 + 72);
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v15 = v13;
    v16 = v12;
    [v8 readLocalFileHeaderData:a2 atOffset:v6 channel:v7 completion:v14];
  }
}

void sub_2770C4D90(uint64_t a1, void *a2, void *a3, char a4)
{
  v32 = a2;
  v7 = a3;
  v8 = v32;
  if (v7)
  {
    v9 = *(*(a1 + 56) + 16);
LABEL_3:
    v9();
    goto LABEL_11;
  }

  if (v32)
  {
    [*(a1 + 32) addEntry:v32];
    v10 = *(a1 + 40);
    if (v10 && (*(a1 + 68) & 1) == 0 && *(a1 + 64))
    {
      [v10 setCompressedSize:{objc_msgSend(*(a1 + 40), "compressedSize") - *(a1 + 64)}];
    }

    v11 = [v32 offset];
    v12 = [v32 fileHeaderLength] + v11;
    v13 = [v32 compressedSize];
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = v12 + v13;
    v17 = *(a1 + 32);
    v18 = v32;
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  if (a4)
  {
LABEL_39:
    v9 = *(*(a1 + 56) + 16);
    goto LABEL_3;
  }

  v21 = *(a1 + 64);
  if (*(a1 + 68))
  {
    if (v21)
    {
LABEL_25:
      v24 = 1;
      v23 = 100;
      goto LABEL_26;
    }

LABEL_22:
    if (TSUDefaultCat_init_token != -1)
    {
      sub_2771145A0();
    }

    LODWORD(v21) = 0;
    goto LABEL_25;
  }

  v22 = [*(a1 + 40) compressedSize];
  if (v22 >= 0x64)
  {
    v23 = 100;
  }

  else
  {
    v23 = v22;
  }

  if (v23 == v21)
  {
    goto LABEL_22;
  }

  if (!v21)
  {
    v28 = v22;
    if (TSUDefaultCat_init_token == -1)
    {
      if (v22)
      {
LABEL_33:
        v25 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      sub_27711458C();
      if (v28)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (TSUDefaultCat_init_token != -1)
    {
      sub_2771145B4();
    }

    goto LABEL_39;
  }

  v24 = 0;
LABEL_26:
  if (v23 <= v21)
  {
    goto LABEL_37;
  }

  v25 = (v21 + 1);
  if (!v24)
  {
LABEL_34:
    v29 = [*(a1 + 40) offset];
    v30 = [*(a1 + 40) fileHeaderLength];
    v31 = [*(a1 + 40) compressedSize];
    v20 = 0;
    v16 = v29 - v25 + v30 + v31;
    goto LABEL_35;
  }

  v26 = [*(a1 + 40) offset];
  v27 = [*(a1 + 40) fileHeaderLength];
  v16 = v26 + v25 + v27 + [*(a1 + 40) compressedSize];
  v20 = 1;
LABEL_35:
  v17 = *(a1 + 32);
  v18 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v19 = v25;
LABEL_10:
  [v17 readLocalFileHeaderEntriesFromChannel:v14 offset:v16 previousEntry:v18 seekAttempts:v19 seekForward:v20 completion:v15];
LABEL_11:
}

uint64_t sub_2770C4FDC()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770C5020()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770C5064()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770C549C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (v7 = *(a1 + 32), v8 = *(a1 + 40), v15 = 0, v9 = [v7 readLocalFileHeaderFilenameAndExtraFieldsData:v5 forEntry:v8 error:&v15], v6 = v15, !v9))
  {
    v14 = *(*(a1 + 48) + 16);
  }

  else
  {
    v10 = [*(a1 + 40) offset];
    v11 = [*(a1 + 40) fileHeaderLength] + v10;
    v12 = [*(a1 + 40) compressedSize];
    v13 = *(a1 + 32);
    if (v11 + v12 > *(v13 + 24))
    {
      *(v13 + 24) = v11 + v12;
    }

    v14 = *(*(a1 + 48) + 16);
  }

  v14();
}

uint64_t sub_2770C581C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

TSUZipInflateReadChannel *sub_2770C5A04(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [TSUZipInflateReadChannel alloc];
  [*(a1 + 32) size];
  v5 = -[TSUZipInflateReadChannel initWithReadChannel:uncompressedSize:CRC:validateCRC:](v4, "initWithReadChannel:uncompressedSize:CRC:validateCRC:", v3, [*(a1 + 32) size], objc_msgSend(*(a1 + 32), "CRC"), *(a1 + 40));

  return v5;
}

void sub_2770C6074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770C609C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770C60B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = [a2 pathComponents];
  if ([v21 count] < 2 || (objc_msgSend(v21, "objectAtIndexedSubscript:", 0), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"__MACOSX"), v6, v8 = v21, (v7 & 1) == 0))
  {
    v9 = *(*(*(a1 + 32) + 8) + 40);
    if (v9)
    {
      v10 = 0;
      if (![v9 count])
      {
        goto LABEL_10;
      }

      do
      {
        if (v10 >= [v21 count])
        {
          break;
        }

        v11 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:v10];
        v12 = [v21 objectAtIndexedSubscript:v10];
        v13 = [v11 compare:v12 options:*(a1 + 40)];

        if (v13)
        {
          break;
        }

        ++v10;
      }

      while (v10 < [*(*(*(a1 + 32) + 8) + 40) count]);
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v14 = *(*(a1 + 32) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

        *a4 = 1;
      }

      else
      {
LABEL_10:
        v16 = v10 >= [*(*(*(a1 + 32) + 8) + 40) count];
        v8 = v21;
        if (v16)
        {
          goto LABEL_14;
        }

        v17 = *(*(*(a1 + 32) + 8) + 40);
        [v17 removeObjectsInRange:{v10, objc_msgSend(v17, "count") - v10}];
      }
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v21];
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      [*(*(*(a1 + 32) + 8) + 40) removeLastObject];
    }

    v8 = v21;
  }

LABEL_14:
}

void sub_2770C6290(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([v7 length] <= (*(a1 + 48) + 1))
  {
    [*(*(a1 + 40) + 16) removeObject:v5];
  }

  else if (([v7 hasPrefix:@"__MACOSX"] & 1) == 0)
  {
    v6 = [v7 substringFromIndex:*(a1 + 48) + 1];
    [v5 setCollapsedName:v6];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void sub_2770C6994(uint64_t a1)
{
  v2 = [*(a1 + 32) streamReadChannelForEntry:*(a1 + 40)];
  if (v2)
  {
    dispatch_suspend(*(a1 + 48));
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2770C6AE0;
    v8[3] = &unk_27A702BC8;
    v8[4] = v2;
    v7 = *(a1 + 48);
    v3 = v7;
    v9 = v7;
    [v2 readWithHandler:v8];
  }

  else
  {
    if (TSUDefaultCat_init_token != -1)
    {
      sub_2771145DC();
    }

    v4 = [MEMORY[0x277CCA9B8] tsu_fileReadCorruptedFileErrorWithUserInfo:0];
    v5 = *(*(a1 + 56) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }
}

uint64_t sub_2770C6A9C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770C6AE0(uint64_t a1, int a2, void *a3, void *a4)
{
  v11 = a3;
  v7 = a4;
  if (!v7 || (v8 = *(*(a1 + 48) + 8), v10 = *(v8 + 40), v9 = (v8 + 40), v10))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  objc_storeStrong(v9, a4);
  if (a2)
  {
LABEL_4:
    [*(a1 + 32) close];
    dispatch_resume(*(a1 + 40));
  }

LABEL_5:
}

void sub_2770C6B78(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[4];
    if (v3)
    {
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_2770C6C48;
      v7[3] = &unk_27A702C18;
      v4 = v2;
      v5 = a1[6];
      v8 = v4;
      v9 = v5;
      dispatch_async(v3, v7);
    }

    else
    {
      v6 = v2[2];

      v6();
    }
  }
}

void sub_2770C6DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770C6DB8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_2770C6F18(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_2770C609C;
  v8 = sub_2770C60AC;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2770C7018;
  v3[3] = &unk_27A702C90;
  v3[4] = &v4;
  [a1 tsu_enumerateErrorUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2770C7000(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770C7018(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"TSUZipArchiveErrorDescription"];

  v10 = TSUCheckedDynamicCast(v8, v9);
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

id sub_2770C70C4(void *a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_2770C609C;
  v8 = sub_2770C60AC;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2770C71C4;
  v3[3] = &unk_27A702C90;
  v3[4] = &v4;
  [a1 tsu_enumerateErrorUsingBlock:v3];
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2770C71AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2770C71C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, BOOL *a5)
{
  v7 = a4;
  v8 = objc_opt_class();
  v9 = [v7 objectForKeyedSubscript:@"TSUZipArchiveErrorEntryName"];

  v10 = TSUCheckedDynamicCast(v8, v9);
  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  *a5 = *(*(*(a1 + 32) + 8) + 40) != 0;
}

uint64_t sub_2770C7278(unint64_t a1, uint64_t a2)
{
  v2 = a2 & 0x1FFFFFFFFFFFFLL;
  v3 = (~a2 & 0x6000000000000000) == 0;
  if (a1 > 0x378D8E63FFFFFFFFLL && v2 == 0x1ED09BEAD87C0)
  {
    v3 = 1;
  }

  if (!(v2 | a1))
  {
    v3 = 1;
  }

  v5 = v2 > 0x1ED09BEAD87C0 || v3;
  if ((~a2 & 0x7800000000000000) != 0)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void sub_2770C753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770C7564(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770C757C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_2770C848C(void *a1, int a2, void *a3, id a4)
{
  v7 = a4;
  v8 = a3;
  v9 = [a4 UTF8String];
  v10 = [a1 tsu_UUIDWithNamespaceUUID:v8 bytes:v9 size:strlen(v9)];

  return v10;
}

id sub_2770C8510(void *a1, uint64_t a2, void *a3, void *a4)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v9[1] = 0;
  v6 = a3;
  [a4 getUUIDBytes:v9];
  v7 = [a1 tsu_UUIDWithNamespaceUUID:v6 bytes:v9 size:16];

  return v7;
}

id sub_2770C85BC(void *a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a4 bytes:&v6 size:8];

  return v4;
}

id sub_2770C85FC(void *a1, double a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a4 bytes:&v6 size:8];

  return v4;
}

id sub_2770C863C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a3 bytes:&v6 size:8];

  return v4;
}

id sub_2770C867C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4;
  v4 = [a1 tsu_UUIDWithNamespaceUUID:a3 bytes:&v6 size:8];

  return v4;
}

id sub_2770C86BC(uint64_t a1, uint64_t a2, void *a3, const void *a4, CC_LONG a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a3;
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  data = 0uLL;
  if (!v7)
  {
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[NSUUID(NSUUID_TSUAdditions) tsu_UUIDWithNamespaceUUID:bytes:size:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/NSUUID_TSUAdditions.m"];
    [TSUAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:47 isFatal:0 description:"invalid nil value for '%{public}s'", "namespaceUUID"];

    +[TSUAssertionHandler logBacktraceThrottled];
    v7 = objc_alloc_init(MEMORY[0x277CCAD78]);
  }

  [v7 getUUIDBytes:&data];
  CC_SHA1_Update(&c, &data, 0x10u);
  CC_SHA1_Update(&c, a4, a5);
  CC_SHA1_Final(md, &c);
  data = *md;
  BYTE6(data) = md[6] & 0xF | 0x50;
  BYTE8(data) = md[8] & 0x3F | 0x80;
  v10 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:&data];

  return v10;
}

uint64_t sub_2770C8868(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v4 = a3;
  [a1 getUUIDBytes:&v14];
  [v4 getUUIDBytes:&v12];

  v5 = bswap64(v14);
  v6 = bswap64(v12);
  if (v5 == v6 && (v5 = bswap64(v15), v6 = bswap64(v13), v5 == v6))
  {
    v7 = 0;
  }

  else if (v5 < v6)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7 == 0;
  v9 = v7 < 0;
  v10 = -1;
  if (!v9)
  {
    v10 = 1;
  }

  if (v8)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

__CFString *sub_2770C91A8()
{
  v33 = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CCACC8] isMainThread];
  v1 = v0;
  v2 = @"MT";
  if (v0)
  {
    v3 = @"MT";
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  if ((v1 & 1) == 0 && ([MEMORY[0x277CCABD8] currentQueue], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "name"), v2 = objc_claimAutoreleasedReturnValue(), v5, !v2) || !-[__CFString length](v2, "length"))
  {
    label = dispatch_queue_get_label(0);
    if (label)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithCString:label encoding:1];

      v2 = v7;
    }

    if (!v2)
    {
      goto LABEL_13;
    }
  }

  if (![(__CFString *)v2 length])
  {
LABEL_13:
    v31 = 0u;
    memset(v32, 0, 28);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = pthread_self();
    pthread_getname_np(v8, &v15, 0x12CuLL);
    if (v15)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithCString:&v15 encoding:1];

      v2 = v9;
    }

    if (!v2)
    {
      goto LABEL_23;
    }
  }

  if (![(__CFString *)v2 length:v15])
  {
LABEL_23:
    v10 = [MEMORY[0x277CCACC8] currentThread];
    v11 = [v10 name];

    v2 = v11;
    if (!v11)
    {
      goto LABEL_17;
    }
  }

  if (![(__CFString *)v2 length])
  {
LABEL_17:
    v12 = [MEMORY[0x277CCACC8] currentThread];
    v13 = [v12 description];

    v2 = v13;
  }

  return v2;
}

uint64_t sub_2770C9398(void *a1)
{
  v1 = [a1 qualityOfService];
  if (v1 == 33)
  {
    v2 = 33;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 25)
  {
    v3 = 25;
  }

  else
  {
    v3 = v2;
  }

  if (v1 == 17)
  {
    v4 = 17;
  }

  else
  {
    v4 = v3;
  }

  if (v1 == 9)
  {
    v5 = 9;
  }

  else
  {
    v5 = 0;
  }

  if (v1 == -1)
  {
    v6 = 21;
  }

  else
  {
    v6 = v5;
  }

  if (v1 <= 16)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

__CFString *sub_2770C93F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = @"NSQualityOfServiceUtility";
  v4 = @"NSQualityOfServiceUserInitiated";
  v5 = @"NSQualityOfServiceUserInteractive";
  if (a3 != 33)
  {
    v5 = 0;
  }

  if (a3 != 25)
  {
    v4 = v5;
  }

  if (a3 != 17)
  {
    v3 = v4;
  }

  v6 = @"NSQualityOfServiceDefault";
  v7 = @"NSQualityOfServiceBackground";
  if (a3 != 9)
  {
    v7 = 0;
  }

  if (a3 != -1)
  {
    v6 = v7;
  }

  if (a3 <= 16)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

__CFString *sub_2770C9450(uint64_t a1, uint64_t a2, int a3)
{
  v3 = @"QOS_CLASS_DEFAULT";
  v4 = @"QOS_CLASS_USER_INITIATED";
  v5 = @"QOS_CLASS_USER_INTERACTIVE";
  if (a3 != 33)
  {
    v5 = 0;
  }

  if (a3 != 25)
  {
    v4 = v5;
  }

  if (a3 != 21)
  {
    v3 = v4;
  }

  v6 = @"QOS_CLASS_UTILITY";
  if (a3 != 17)
  {
    v6 = 0;
  }

  if (a3 == 9)
  {
    v6 = @"QOS_CLASS_BACKGROUND";
  }

  if (!a3)
  {
    v6 = @"QOS_CLASS_UNSPECIFIED";
  }

  if (a3 <= 20)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

void sub_2770C94BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a5;
  v16 = a6;
  v17 = a6;
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) tsu_initRedactedWithFormat:v12 arguments:a6];
  if (qword_280A63D98 && [qword_280A63D98 count] && objc_msgSend(qword_280A63D98, "count"))
  {
    v14 = 0;
    do
    {
      v15 = [qword_280A63D98 objectAtIndexedSubscript:{v14, v16, v17}];
      (v15)[2](v15, a1, v11, a3, a4, v13);

      ++v14;
    }

    while (v14 < [qword_280A63D98 count]);
  }
}

uint64_t sub_2770C95C0(uint64_t result)
{
  if (result >= 0)
  {
    return result;
  }

  else
  {
    return -result;
  }
}

uint64_t sub_2770C95D8(uint64_t a1)
{
  if (a1 >= 0)
  {
    return a1;
  }

  else
  {
    return -a1;
  }
}

uint64_t sub_2770C9D64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770C9D7C(uint64_t a1, int a2, void *a3, void *a4)
{
  v9 = a3;
  v8 = a4;
  if (a2)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else if (TSUDefaultCat_init_token != -1)
  {
    sub_277114680();
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_2770C9E20()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CA028(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[8];
  v7 = a1[9];
  v8 = a1[12];
  v9 = a1[13];
  v18 = 0;
  v10 = [v8 setPassphrase:v2 forGenericItem:v3 service:v4 description:v5 label:v6 account:v7 options:v9 error:&v18];
  v11 = v18;
  if ((v10 & 1) == 0 && TSUDefaultCat_init_token != -1)
  {
    sub_277114694();
  }

  v12 = a1[11];
  if (v12)
  {
    v13 = a1[10];
    if (v13)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2770CA190;
      block[3] = &unk_27A702D08;
      v16 = v12;
      v17 = v10;
      v15 = v11;
      dispatch_async(v13, block);
    }

    else
    {
      (v12)[2](v12, v10, v11);
    }
  }
}

uint64_t sub_2770CA14C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CA730(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:0];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void sub_2770CA7B4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v9 = 0;
  }

  if ([v8 code] == -50)
  {
    v10 = [v8 domain];
    v11 = [v10 isEqualToString:*MEMORY[0x277CCA590]];

    if (v11)
    {
      [*(a1 + 64) removeGenericItem:*(a1 + 32) error:0];
      v12 = [*(a1 + 64) errorForStatus:4294941996];

      v8 = v12;
    }
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = *(a1 + 40);
    if (v14)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2770CA970;
      block[3] = &unk_27A702D58;
      v19 = v13;
      v20 = a2;
      v16 = *(a1 + 48);
      v17 = v9;
      v18 = v8;
      dispatch_async(v14, block);
    }

    else
    {
      (v13)[2](v13, a2, *(a1 + 48), v9, v8);
    }
  }
}

void sub_2770CA98C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [*(a1 + 48) errorForStatus:4294967246];
  (*(v1 + 16))(v1, 0, v2, 0, v3);
}

uint64_t sub_2770CA9FC(uint64_t a1, int a2, void *a3)
{
  a3;
  v5 = *(a1 + 48);
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(v5 + 16);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    v6 = *(v5 + 16);
  }

  v6();
LABEL_7:

  return MEMORY[0x2821F97D0]();
}

void sub_2770CAAAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) errorForStatus:*(a1 + 48)];
  (*(v1 + 16))(v1, 0, 0, 0, v2);
}

void sub_2770CB0E8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) errorForStatus:4294967246];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_2770CB328(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) errorForStatus:4294967246];
  (*(v1 + 16))(v1, 0, 0, v2);
}

uint64_t sub_2770CB7EC()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CBA90()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CBB28()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CBBBC()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CBC74()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("TSUURLTracker.filePresenterQueue", v2);
  v1 = qword_280A63DA0;
  qword_280A63DA0 = v0;
}

uint64_t sub_2770CC188()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CC2B4()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CC3F8()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CC61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770CC640(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770CC658(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 p_sandboxedURLWithOptions:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_2770CCA18()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCA5C()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCAA0()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCAE4()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCB28()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCB6C()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCBB0()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCBF4()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCC38()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CCC7C()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CCED4(uint64_t a1)
{
  v2 = atomic_exchange((*(a1 + 32) + 56), 1u);
  if (TSUURLTrackerCat_init_token == -1)
  {
    if (v2)
    {
      return;
    }
  }

  else
  {
    sub_277114914();
    if (v2)
    {
      return;
    }
  }

  if (*(a1 + 48))
  {
    v3 = 2;
  }

  else
  {
    v4 = [*(a1 + 32) bookmarkDataIfAvailable];
    v3 = 2 * (v4 != 0);
  }

  v5 = [*(a1 + 32) p_sandboxedURLWithOptions:v3 error:0];
  if (v5)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    atomic_store(0, (*(a1 + 32) + 56));
  }
}

uint64_t sub_2770CCFA4()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CD0C4(uint64_t a1)
{
  v2 = atomic_exchange((*(a1 + 32) + 56), 0);
  if (TSUURLTrackerCat_init_token == -1)
  {
    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    sub_277114928();
    if ((v2 & 1) == 0)
    {
      return;
    }
  }

  v3 = [*(a1 + 32) p_bookmarkDataWithOptions:0 error:0];
  *(*(*(a1 + 40) + 8) + 24) = 1;
}

uint64_t sub_2770CD13C()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CD4DC()
{
  v0 = TSULogCreateCategory("TSUDocumentSaveCat");
  v1 = TSUDocumentSaveCat_log_t;
  TSUDocumentSaveCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CD744(void *a1)
{
  v2 = a1[4];
  v3 = a1[7];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 p_bookmarkDataWithOptions:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[5] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t sub_2770CDB14()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDB58()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDB9C()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDBE0()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDC24()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDC68()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDCAC()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDCF0()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CDE38()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CDE7C(uint64_t a1)
{
  v3 = [*(a1 + 32) p_sandboxedURLIfAvailableLoadingLastKnownURLFromBookmark:0];
  v2 = [v3 normalize];
  if (v2 != v3)
  {
    if (TSUURLTrackerCat_init_token != -1)
    {
      sub_277114AA4();
    }

    [*(a1 + 32) p_presentedItemDidMoveToSandboxedURL:v2];
  }

  [*(a1 + 32) p_notifyURLTrackerPresentedItemContentsDidChange];
}

uint64_t sub_2770CDF18()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE064()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE2E0()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE324()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE368()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE3AC()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE3F0()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE434()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770CE554(uint64_t a1)
{
  v1 = atomic_load((*(a1 + 32) + 56));
  if (v1 & 1) == 0 || (v2 = atomic_load((*(a1 + 32) + 33)), (v2))
  {
    v3 = *(a1 + 32);
    v5 = 0;
    v4 = [v3 p_bookmarkDataWithOptions:2 error:&v5];

    if (!v4 && TSUURLTrackerCat_init_token != -1)
    {
      sub_277114BA8();
    }
  }
}

uint64_t sub_2770CE5D8()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770CE77C()
{
  v0 = TSULogCreateCategory("TSUURLTrackerCat");
  v1 = TSUURLTrackerCat_log_t;
  TSUURLTrackerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

unint64_t sub_2770CF7C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, _DWORD *a6)
{
  v8 = a3;
  v9 = a1;
  v231 = a5;
  v10 = a4 & 0x7800000000000000;
  if (((a4 >> 61) & 3) == 3)
  {
    if (v10 == 0x7800000000000000)
    {
      v11 = 0xFE00000000000000;
      if ((a4 & 0x3FFFFFFFFFFFLL) <= qword_280A5B9F8)
      {
        if ((a4 & 0x3FFFFFFFFFFFLL) != qword_280A5B9F8 || qword_280A5B9F0 > a3)
        {
          v11 = 0xFE003FFFFFFFFFFFLL;
          v12 = a3;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      LODWORD(v15) = 0;
      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v8 = 0;
      }

      else
      {
        v8 = v12;
      }

      if ((a4 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v11 = 0xF800000000000000;
      }

      v13 = v11 & a4;
      v16 = 1;
    }

    else
    {
      v8 = 0;
      v13 = 0;
      v15 = (a4 >> 47) & 0x3FFF;
      v16 = 1;
    }
  }

  else
  {
    v13 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFLL) > qword_280A5BA08 || ((a4 & 0x1FFFFFFFFFFFFLL) == qword_280A5BA08 ? (v14 = qword_280A5BA00 > a3) : (v14 = 1), !v14))
    {
      v8 = 0;
      v13 = 0;
    }

    v15 = (a4 >> 49) & 0x3FFF;
    v16 = (v13 | v8) == 0;
  }

  v232 = 0;
  v233 = 0;
  v19 = a2 & 0x7800000000000000;
  if (((a2 >> 61) & 3) == 3)
  {
    if (v19 == 0x7800000000000000)
    {
      v20 = 0xFE00000000000000;
      if ((a2 & 0x3FFFFFFFFFFFLL) <= qword_280A5B9F8)
      {
        if ((a2 & 0x3FFFFFFFFFFFLL) != qword_280A5B9F8 || qword_280A5B9F0 > a1)
        {
          v20 = 0xFE003FFFFFFFFFFFLL;
          v21 = a1;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v20 = 0xF800000000000000;
      }

      v22 = v20 & a2;
      if ((a2 & 0x7C00000000000000) == 0x7800000000000000)
      {
        v9 = 0;
      }

      else
      {
        v9 = v21;
      }

      if ((a2 & 0x7C00000000000000) == 0x7C00000000000000)
      {
        goto LABEL_59;
      }

      LODWORD(v24) = 0;
      goto LABEL_64;
    }

    v22 = 0;
    v9 = 0;
    v24 = (a2 >> 47) & 0x3FFF;
  }

  else
  {
    v22 = a2 & 0x1FFFFFFFFFFFFLL;
    if ((a2 & 0x1FFFFFFFFFFFFLL) > qword_280A5BA08 || ((a2 & 0x1FFFFFFFFFFFFLL) == qword_280A5BA08 ? (v23 = qword_280A5BA00 > a1) : (v23 = 1), !v23))
    {
      v9 = 0;
      v22 = 0;
    }

    v24 = (a2 >> 49) & 0x3FFF;
    if (v22 | v9)
    {
      goto LABEL_68;
    }
  }

  if ((~a2 & 0x7C00000000000000) == 0)
  {
LABEL_59:
    if ((~a2 & 0x7E00000000000000) == 0 || (a4 & 0x7E00000000000000) == 0x7E00000000000000)
    {
      *a6 |= 1u;
    }

    v232 = v9;
    v233 = v22 & 0xFDFFFFFFFFFFFFFFLL;
    return v232;
  }

  if (v19 == 0x7800000000000000)
  {
LABEL_64:
    if ((a4 & 0x7C00000000000000) != 0x7C00000000000000)
    {
      if ((a4 & 0x7C00000000000000) != 0x7800000000000000)
      {
        goto LABEL_143;
      }

      goto LABEL_87;
    }
  }

  if (v10 != 0x7800000000000000)
  {
    if (v13 & 0x1FFFFFFFFFFFFLL | v8)
    {
      v42 = v24 - v15;
      v43 = v42 + 6176;
      if (v42 < -6176)
      {
        v43 = 0;
      }

      if (v42 <= 6111)
      {
        v44 = v43;
      }

      else
      {
        v44 = 12287;
      }

      v41 = (a4 ^ a2) & 0x8000000000000000 | (v44 << 49);
      goto LABEL_144;
    }

LABEL_87:
    *a6 |= 1u;
    v41 = 0x7C00000000000000;
    goto LABEL_144;
  }

LABEL_68:
  v27 = a4 & 0x8000000000000000;
  v28 = a2 & 0x8000000000000000;
  if (!v16)
  {
    v229 = 0u;
    v230 = 0u;
    v227 = 0;
    v228 = 0;
    v29 = v24 - v15 + 6176;
    if (v13 > v22 || v13 == v22 && v8 > v9)
    {
      v30 = (COERCE_INT(v8 + (v13 * 1.8447e19)) - COERCE_INT(v9 + (v22 * 1.8447e19))) >> 23;
      v31 = (&unk_280A5BB30 + 16 * v30);
      v32 = *v31;
      v33 = HIDWORD(*v31);
      if (v22)
      {
        v34 = v32 * v22;
        v35 = v32;
        v36 = v33 * v9;
        v37 = v32 * v9;
        v38 = v35 * HIDWORD(v9) + v36 + HIDWORD(v37);
        v39 = v37 | (v38 << 32);
        v40 = v34 + v33 * HIDWORD(v9) + HIDWORD(v36);
      }

      else
      {
        v45 = v32 * HIDWORD(v9);
        v46 = v32 * v9;
        v38 = v33 * v9 + v45 + HIDWORD(v46);
        v39 = v46 | (v38 << 32);
        v40 = v31[1] * v9 + v33 * HIDWORD(v9) + HIDWORD(v45);
      }

      v47 = v40 + HIDWORD(v38);
      v225 = a2 & 0x8000000000000000;
      if (v13 > v47 || (v13 == v47 ? (v48 = v8 > v39) : (v48 = 0), v48))
      {
        v49 = 34;
      }

      else
      {
        v49 = 33;
      }

      v50 = (&unk_280A5B7E0 + 16 * v49);
      v51 = *v50;
      v52 = v50[1];
      v53 = HIDWORD(v39);
      v54 = v39;
      v55 = HIDWORD(v52);
      v56 = v52 * HIDWORD(v39);
      v57 = HIDWORD(v56) + HIDWORD(v52) * HIDWORD(v39);
      v58 = HIDWORD(v52) * v39 + v56 + ((v52 * v39) >> 32);
      v59 = HIDWORD(v58);
      v60 = (v52 * v39) | (v58 << 32);
      v61 = HIDWORD(v51);
      v62 = v51 * HIDWORD(v39);
      v63 = v51 * v39;
      v64 = HIDWORD(v51) * v54 + v62 + HIDWORD(v63);
      v65 = __PAIR128__(v57, v60) + __PAIR128__(v59, HIDWORD(v62) + HIDWORD(v51) * v53 + HIDWORD(v64));
      v66 = HIDWORD(v47);
      LODWORD(v59) = v47;
      v67 = v52 * HIDWORD(v47);
      v68 = v52 * v47;
      v69 = v55 * v47;
      v70 = HIDWORD(v67) + v55 * HIDWORD(v47);
      v71 = v69 + v67 + HIDWORD(v68);
      v72 = HIDWORD(v71);
      v73 = v68 | (v71 << 32);
      v74 = v51 * HIDWORD(v47);
      v75 = v51 * v47;
      v76 = HIDWORD(v51) * v59 + v74 + HIDWORD(v75);
      v77 = v75 | (v76 << 32);
      *&v229 = v63 | (v64 << 32);
      *(&v229 + 1) = v65 + v77;
      v83 = __CFADD__(__CFADD__(v65, v77), v73 + HIDWORD(v74) + v61 * v66 + HIDWORD(v76));
      v78 = __CFADD__(v65, v77) + v73 + HIDWORD(v74) + v61 * v66 + HIDWORD(v76);
      LODWORD(v79) = v83;
      v83 = __CFADD__(*(&v65 + 1), v78);
      v80 = *(&v65 + 1) + v78;
      if (v83)
      {
        v79 = 1;
      }

      else
      {
        v79 = v79;
      }

      *&v230 = v80;
      *(&v230 + 1) = ((__PAIR128__(v70, v73) + __PAIR128__(v72, HIDWORD(v74) + v61 * v66 + HIDWORD(v76))) >> 64) + v79;
      LODWORD(v81) = dword_280A5B5D0[v30] + v49;
      v227 = 0;
      v228 = 0;
    }

    else
    {
      v226 = 0uLL;
      sub_277070DE8(&v227, &v226, v9, v22, v8, v13);
      if (v226 == 0)
      {
        v188 = v227;
        v189 = v228;
        v190 = v27 ^ v28;
LABEL_207:
        v117 = v29;
LABEL_218:
        sub_27702C8E0(&v232, v190, v117, v188, v189, &v231, a6);
        return v232;
      }

      v225 = v28;
      v119 = (COERCE_INT(v227 + (v228 * 1.8447e19)) - 1065353216) >> 23;
      v120 = dword_280A5B5D0[v119];
      v121 = (&unk_280A5BB30 + 16 * v119);
      v122 = v121[1];
      if (v228 > v122 || ((v123 = *v121, v228 == v122) ? (v124 = v227 >= v123) : (v124 = 0), v124))
      {
        ++v120;
      }

      v81 = 34 - v120;
      v125 = (&unk_280A5B7E0 + 16 * v81);
      v127 = *v125;
      v126 = v125[1];
      v128 = v126 * DWORD1(v226);
      v129 = HIDWORD(v128) + HIDWORD(v126) * DWORD1(v226);
      v130 = HIDWORD(v126) * v226 + v128 + ((v126 * v226) >> 32);
      v131 = v127 * DWORD1(v226);
      v132 = HIDWORD(v127) * v226 + v131 + ((v127 * v226) >> 32);
      v133 = __PAIR128__(v129, (v126 * v226) | (v130 << 32)) + __PAIR128__(HIDWORD(v130), HIDWORD(v131) + HIDWORD(v127) * DWORD1(v226) + HIDWORD(v132));
      v134 = v126 * HIDWORD(v226);
      v135 = HIDWORD(v134) + HIDWORD(v126) * HIDWORD(v226);
      v136 = HIDWORD(v126) * DWORD2(v226) + v134 + ((v126 * DWORD2(v226)) >> 32);
      v137 = HIDWORD(v136);
      v138 = (v126 * DWORD2(v226)) | (v136 << 32);
      v139 = v127 * HIDWORD(v226);
      v140 = HIDWORD(v139) + HIDWORD(v127) * HIDWORD(v226);
      v141 = HIDWORD(v127) * DWORD2(v226) + v139 + ((v127 * DWORD2(v226)) >> 32);
      v142 = (v127 * DWORD2(v226)) | (v141 << 32);
      *&v229 = (v127 * v226) | (v132 << 32);
      *(&v229 + 1) = v133 + v142;
      v83 = __CFADD__(__CFADD__(v133, v142), v138 + v140 + HIDWORD(v141));
      v143 = __CFADD__(v133, v142) + v138 + v140 + HIDWORD(v141);
      LODWORD(v144) = v83;
      v83 = __CFADD__(*(&v133 + 1), v143);
      v145 = *(&v133 + 1) + v143;
      if (v83)
      {
        v144 = 1;
      }

      else
      {
        v144 = v144;
      }

      *&v230 = v145;
      *(&v230 + 1) = ((__PAIR128__(v135, v138) + __PAIR128__(v137, v140 + HIDWORD(v141))) >> 64) + v144;
      v146 = v127 * HIDWORD(v227);
      v147 = HIDWORD(v127) * v227 + v146 + ((v127 * v227) >> 32);
      v148 = v127 * v228 + v126 * v227 + HIDWORD(v127) * HIDWORD(v227) + HIDWORD(v146) + HIDWORD(v147);
      v227 = (v127 * v227) | (v147 << 32);
      v228 = v148;
    }

    v29 -= v81;
    sub_2770D05BC(&v227, &v229, v8, v13);
    v82 = v229;
    if (v229 != 0)
    {
      *a6 |= 0x20u;
      if (v29 < 0)
      {
        sub_2770D08E4(&v232, v27 ^ v225, v29, v227, v228, *(&v82 + 1) | v82, &v231, a6);
        return v232;
      }

      v83 = v225 == v27 || (a5 - 1) >= 2;
      if (v83)
      {
        v84 = a5;
      }

      else
      {
        v84 = 3 - a5;
      }

      if (v84 > 2)
      {
        if (v84 == 3)
        {
          goto LABEL_206;
        }

        if (v84 != 4)
        {
LABEL_201:
          v186 = __CFADD__(v227, 1);
          v187 = v227 + 1;
          goto LABEL_203;
        }

        v183 = v82 * 2 - __PAIR128__(v13, v8);
        v185 = v183 >= 0 || (*(&v183 + 1) | (2 * v82 - v8)) == 0;
        v186 = __CFADD__(v227, v185);
        v187 = v227 + v185;
      }

      else
      {
        if (v84)
        {
          if (v84 != 1)
          {
            goto LABEL_201;
          }

LABEL_206:
          v188 = v227;
          v189 = v228;
          v190 = v27 ^ v225;
          goto LABEL_207;
        }

        v200 = ((((v82 * 2 - __PAIR128__(v13, v8)) >> 64) & 0x8000000000000000) == 0) & ((v82 * 2 - __PAIR128__(v13, v8) != 0) | v227);
        v186 = __CFADD__(v227, v200);
        v187 = v227 + v200;
      }

LABEL_203:
      v227 = v187;
      if (v186)
      {
        ++v228;
      }

      goto LABEL_206;
    }

    if (v8 <= 0x400 && !(v22 | v13) && v9 <= 0x400)
    {
      v85 = &byte_27713593A[((v8 << 32) - 0x100000000) >> 31];
      v86 = &byte_27713593A[((v9 << 32) - 0x100000000) >> 31];
      v87 = v81 - *v85 + *v86;
      v88 = v81 - v85[1] + v86[1];
      if (v88 >= v87)
      {
        v88 = v87;
      }

      v89 = qword_280A5B300[2 * v88];
      v90 = qword_280A5B300[2 * v88 + 1];
      v91 = HIDWORD(v90);
      v92 = v90 * HIDWORD(v227);
      v93 = HIDWORD(v92);
      v94 = HIDWORD(v90) * v227 + v92 + ((v90 * v227) >> 32);
      v95 = (v90 * v227) | (v94 << 32);
      v96 = HIDWORD(v89);
      v97 = v228 * HIDWORD(v89);
      v98 = HIDWORD(v228) * v89 + v97 + ((v228 * v89) >> 32);
      v99 = (v228 * v89) | (v98 << 32);
      v100 = ((v89 * HIDWORD(v227)) >> 32) + HIDWORD(v89) * HIDWORD(v227) + ((HIDWORD(v89) * v227 + (v89 * HIDWORD(v227)) + ((v89 * v227) >> 32)) >> 32);
      v101 = HIDWORD(v228) * v90;
      v102 = v228 * v90;
      v103 = v228 * HIDWORD(v90);
      v104 = HIDWORD(v101) + HIDWORD(v228) * HIDWORD(v90);
      v105 = v103 + v101 + HIDWORD(v102);
      v106 = v102 | (v105 << 32);
      v107 = __CFADD__(v95, v99);
      v109 = v106 + v107 + __CFADD__(v100, v95 + v99) + v93 + v91 * HIDWORD(v227) + HIDWORD(v228) * v96 + HIDWORD(v97) + HIDWORD(v94) + HIDWORD(v98);
      v108 = (__PAIR128__(v104, v106) + __PAIR128__(HIDWORD(v105), v107 + __CFADD__(v100, v95 + v99) + v93 + v91 * HIDWORD(v227) + HIDWORD(v228) * v96 + HIDWORD(v97) + HIDWORD(v94) + HIDWORD(v98))) >> 64;
      v110 = dword_280A5B540[v88];
      v14 = v110 <= 63;
      v111 = v109 >> v110;
      v112 = -v110;
      v113 = v108 >> v110;
      v114 = v108 >> v110;
      v115 = (v108 << v112) | v111;
      if (v14)
      {
        v116 = v113;
      }

      else
      {
        v115 = v114;
        v116 = 0;
      }

      v227 = v115;
      v228 = v116;
      v117 = v88 + v29;
      v118 = v225;
      goto LABEL_217;
    }

    v149 = 2737007179 * HIDWORD(v227);
    v150 = HIDWORD(v149) + 755578 * HIDWORD(v227);
    v151 = 755578 * v227 + v149 + ((2737007179u * v227) >> 32);
    v152 = HIDWORD(v151);
    v153 = (-1557960117 * v227) | (v151 << 32);
    v154 = ((3953110345u * HIDWORD(v227)) >> 32) + 1150327791 * HIDWORD(v227) + ((1150327791 * v227 + (-341856951 * HIDWORD(v227)) + ((3953110345u * v227) >> 32)) >> 32);
    v83 = __CFADD__(v153, v154);
    v155 = v153 + v154;
    v156 = v152 + v83 + v150;
    v157 = 2737007179 * HIDWORD(v228);
    v158 = HIDWORD(v157) + 755578 * HIDWORD(v228);
    v159 = 755578 * v228 + v157 + ((2737007179u * v228) >> 32);
    v160 = HIDWORD(v159);
    v161 = (-1557960117 * v228) | (v159 << 32);
    v162 = 3953110345 * HIDWORD(v228);
    v163 = HIDWORD(v162) + 1150327791 * HIDWORD(v228);
    v164 = 1150327791 * v228 + v162 + ((3953110345u * v228) >> 32);
    v165 = (-341856951 * v228) | (v164 << 32);
    v166 = __PAIR128__(v158, v161) + __PAIR128__(v160, v163 + HIDWORD(v164));
    v83 = __CFADD__(__CFADD__(v165, v155), v161 + v163 + HIDWORD(v164));
    v167 = __CFADD__(v165, v155) + v161 + v163 + HIDWORD(v164);
    LODWORD(v168) = v83;
    v83 = __CFADD__(v156, v167);
    v169 = v156 + v167;
    if (v83)
    {
      v168 = 1;
    }

    else
    {
      v168 = v168;
    }

    *(&v171 + 1) = *(&v166 + 1) + v168;
    *&v171 = v169;
    v170 = v171 >> 44;
    v172 = v227 - 100000000000000000 * v170;
    if (v172)
    {
      v173 = v172 & 0x3FFFFFF;
      v174 = v172 >> 26;
      v118 = v225;
      v175 = 0;
      if (v174)
      {
        v176 = &unk_277134058;
        do
        {
          v177 = &v176[8 * (v174 & 0x7F)];
          v173 += *v177;
          v175 += *(v177 + 1);
          if (v173 > 0x5F5E0FF)
          {
            v173 -= 100000000;
            ++v175;
          }

          v176 += 1024;
          v14 = v174 > 0x7F;
          LODWORD(v174) = v174 >> 7;
        }

        while (v14);
        v178 = v175 - 100000000;
        if (v175 - 100000000 > 0x5F5E0FF)
        {
          v178 = v175 - 200000000;
        }

        if (v175 > 0x5F5E0FF)
        {
          v175 = v178;
        }
      }

      if (v173 | v175)
      {
        v179 = v173 == 0;
        if (!v173)
        {
          v173 = v175;
        }

        v180 = (109951163 * v173) >> 40;
        v181 = v173 - 10000 * v180;
        v182 = (8 * v179) | 4;
        if (v181)
        {
          v182 = 8 * v179;
          v180 = v181;
        }

        else
        {
          v180 = v180;
        }

        if ((v180 & 1) == 0)
        {
          v182 |= (byte_277135458[v180 >> 3] >> (v180 & 6)) & 3;
        }

        if (!v182)
        {
          goto LABEL_213;
        }
      }

      else
      {
        v182 = 16;
      }

      v201 = qword_280A5B300[2 * v182];
      v202 = qword_280A5B300[2 * v182 + 1];
      v203 = HIDWORD(v202);
      v204 = v202 * HIDWORD(v227);
      v205 = HIDWORD(v204);
      v206 = HIDWORD(v202) * v227 + v204 + ((v202 * v227) >> 32);
      v207 = (v202 * v227) | (v206 << 32);
      v208 = HIDWORD(v201);
      v209 = HIDWORD(v201) * v228;
      v210 = v201 * HIDWORD(v228) + v209 + ((v201 * v228) >> 32);
      v211 = (v201 * v228) | (v210 << 32);
      v212 = ((v201 * HIDWORD(v227)) >> 32) + HIDWORD(v201) * HIDWORD(v227) + ((HIDWORD(v201) * v227 + (v201 * HIDWORD(v227)) + ((v201 * v227) >> 32)) >> 32);
      v213 = v202 * HIDWORD(v228);
      v214 = v202 * v228;
      v215 = HIDWORD(v213) + v203 * HIDWORD(v228);
      v216 = v203 * v228 + v213 + HIDWORD(v214);
      v217 = HIDWORD(v216);
      v218 = v214 | (v216 << 32);
      v219 = v207 + v211;
      v220 = __CFADD__(v207, v211);
      v221 = v220 + __CFADD__(v212, v219) + v205 + v203 * HIDWORD(v227) + v208 * HIDWORD(v228) + HIDWORD(v209) + HIDWORD(v206) + HIDWORD(v210);
      v222 = dword_280A5B540[v182];
      v227 = ((2 * ((__PAIR128__(v215, v218) + __PAIR128__(v217, v221)) >> 64)) << ~v222) | ((v218 + v221) >> v222);
      v228 = ((__PAIR128__(v215, v218) + __PAIR128__(v217, v221)) >> 64) >> v222;
LABEL_213:
      v117 = v182 + v29;
LABEL_217:
      v188 = v227;
      v189 = v228;
      v190 = v27 ^ v118;
      goto LABEL_218;
    }

    v191 = v170 & 0x3FFFFFF;
    v192 = v170 >> 26;
    v118 = v225;
    if ((v170 >> 26))
    {
      v193 = 0;
      v194 = &unk_277134058;
      do
      {
        v195 = &v194[8 * (v192 & 0x7F)];
        v191 += *v195;
        v193 += *(v195 + 1);
        if (v191 > 0x5F5E0FF)
        {
          v191 -= 100000000;
          ++v193;
        }

        v194 += 1024;
        v14 = v192 > 0x7F;
        LODWORD(v192) = v192 >> 7;
      }

      while (v14);
      LODWORD(v192) = v193 - 100000000;
      if (v193 - 100000000 > 0x5F5E0FF)
      {
        LODWORD(v192) = v193 - 200000000;
      }

      if (v193 <= 0x5F5E0FF)
      {
        LODWORD(v192) = v193;
      }
    }

    if (v191 | v192)
    {
      v196 = v191 == 0;
      if (!v191)
      {
        v191 = v192;
      }

      v197 = (109951163 * v191) >> 40;
      v198 = v191 - 10000 * v197;
      v199 = (8 * v196) | 4;
      if (v198)
      {
        v199 = 8 * v196;
        v197 = v198;
      }

      else
      {
        v197 = v197;
      }

      if ((v197 & 1) == 0)
      {
        v199 |= (byte_277135458[v197 >> 3] >> (v197 & 6)) & 3;
      }

      if (!v199)
      {
        goto LABEL_216;
      }
    }

    else
    {
      v199 = 16;
    }

    v223 = qword_280A5BAA0[v199] * HIDWORD(v170);
    v170 = (HIDWORD(v223) + HIDWORD(qword_280A5BAA0[v199]) * HIDWORD(v170) + ((HIDWORD(qword_280A5BAA0[v199]) * v170 + v223 + ((qword_280A5BAA0[v199] * v170) >> 32)) >> 32)) >> dword_280A5BA58[v199];
LABEL_216:
    v227 = v170;
    v228 = 0;
    v117 = v29 + 17 + v199;
    goto LABEL_217;
  }

  if ((~a4 & 0x7C00000000000000) != 0)
  {
    if (v10 != 0x7800000000000000)
    {
      *a6 |= 4u;
LABEL_143:
      v41 = (a4 ^ a2) & 0x8000000000000000 | 0x7800000000000000;
      goto LABEL_144;
    }

    v41 = v27 ^ v28;
LABEL_144:
    v233 = v41;
    return v232;
  }

  if ((~a4 & 0x7E00000000000000) == 0)
  {
    *a6 |= 1u;
  }

  v232 = v8;
  v233 = v13 & 0xFDFFFFFFFFFFFFFFLL;
  return v232;
}

uint64_t *sub_2770D05BC(uint64_t *result, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a2;
  v7 = a2[1];
  v9 = *result;
  v8 = result[1];
  v10 = a3 + a4 * 1.84467441e19;
  v11 = (*a2 + v7 * 1.84467441e19 + v4 * 3.40282367e38 + v5 * 6.27710174e57) / v10;
  if (v5 > a4 >> 28 || v5 == a4 >> 28 && (*(&v30 + 1) = a4, *&v30 = a3, __PAIR128__(v4, v7) >= v30 * 0x1000000000))
  {
    v12 = v11 * 8.67361738e-19;
    v13 = v12 - 4;
    v14 = v12 - 4;
    v15 = v14 * HIDWORD(a4) + (HIDWORD(v13) * a4) + ((v13 * a4) >> 32);
    v16 = HIDWORD(v15);
    v17 = (v13 * a4) | (v15 << 32);
    v18 = HIDWORD(v13) * a3;
    v19 = v13 * a3;
    v20 = v14 * HIDWORD(a3) + v18 + HIDWORD(v19);
    v21 = HIDWORD(v18) + HIDWORD(v13) * HIDWORD(a3) + HIDWORD(v20);
    *(&v23 + 1) = (v16 + __CFADD__(v17, v21) + ((a4 * HIDWORD(v13)) >> 32));
    *&v23 = v17 + v21;
    v22 = v23 >> 4;
    *(&v23 + 1) = v23;
    *&v23 = v19 & 0xFFFFFFF0 | (v20 << 32);
    v24 = v23 >> 4;
    v28 = v6 >= v19 << 60;
    v6 -= v19 << 60;
    v25 = !v28;
    v26 = v7 - v25;
    v27 = v26 > v7;
    v7 = v26 - v24;
    v28 = !v27 && v26 >= v24;
    v29 = !v28;
    v4 = v4 - v22 - v29;
    v11 = (v6 + v7 * 1.84467441e19 + v4 * 3.40282367e38) / v10;
    v28 = __CFADD__(v9, v13 << 60);
    v9 += v13 << 60;
    v8 += v28 + (v13 >> 4);
  }

  if (v4 > a4 >> 13 || v4 == a4 >> 13 && (*(&v48 + 1) = a4, *&v48 = a3, __PAIR128__(v7, v6) > v48 * 0x8000000000000))
  {
    v31 = v11 * 1.77635684e-15;
    v32 = v31 - 1;
    v33 = v31 - 1;
    v34 = HIDWORD(v32) * a3;
    v35 = v32 * a3;
    v36 = HIDWORD(v34) + HIDWORD(v32) * HIDWORD(a3);
    v37 = v33 * HIDWORD(a3) + v34 + HIDWORD(v35);
    v38 = v36 + HIDWORD(v37);
    v39 = v33 * HIDWORD(a4) + (HIDWORD(v32) * a4) + ((v32 * a4) >> 32);
    v40 = (v32 * a4) | (v39 << 32);
    *(&v42 + 1) = (HIDWORD(v39) + __CFADD__(v38, v40) + ((a4 * HIDWORD(v32)) >> 32));
    *&v42 = v38 + v40;
    v41 = v42 >> 15;
    *(&v42 + 1) = v38 + v40;
    *&v42 = v35 & 0xFFFF8000 | (v37 << 32);
    v43 = v42 >> 15;
    v28 = v6 >= v35 << 49;
    v6 -= v35 << 49;
    v44 = !v28;
    v45 = v7 - v44;
    v27 = v45 > v7;
    v7 = v45 - v43;
    v47 = v27 || v45 < v43;
    v28 = __CFADD__(v9, v32 << 49);
    v9 += v32 << 49;
    v8 += v28 + (v32 >> 15);
    v11 = (v6 + v7 * 1.84467441e19 + (v4 - v41 - v47) * 3.40282367e38) / v10;
  }

  v49 = v11;
  v50 = v11 >> 32;
  v51 = v50 * a3;
  v52 = v11 * HIDWORD(a3) + v51 + ((v11 * a3) >> 32);
  v53 = (v11 * a3) | (v52 << 32);
  v28 = v6 >= v53;
  v54 = v6 - v53;
  v55 = !v28;
  v56 = v7 - (v11 * a4 + v50 * HIDWORD(a3) + HIDWORD(v51) + HIDWORD(v52)) - v55;
  if (v56 < 0)
  {
    v60 = v49 - 1;
    v56 = (__PAIR128__(v56, v54) + __PAIR128__(a4, a3)) >> 64;
    v54 += a3;
    v49 -= 2;
    v61 = __PAIR128__(v56, v54) + __PAIR128__(a4, a3);
    v62 = v56 >= 0;
    if (v56 < 0)
    {
      v56 = (__PAIR128__(v56, v54) + __PAIR128__(a4, a3)) >> 64;
    }

    else
    {
      v49 = v60;
    }

    if (!v62)
    {
      v54 = v61;
    }
  }

  else
  {
    v57 = v56 - a4;
    if (v56 > a4 || (v54 >= a3 ? (v58 = v56 == a4) : (v58 = 0), v58))
    {
      ++v49;
      v28 = v54 >= a3;
      v54 -= a3;
      v59 = !v28;
      v56 = v57 - v59;
    }
  }

  v28 = __CFADD__(v49, v9);
  v63 = v49 + v9;
  if (v28)
  {
    ++v8;
  }

  *result = v63;
  result[1] = v8;
  *a2 = v54;
  a2[1] = v56;
  return result;
}

unint64_t *sub_2770D08E4(unint64_t *result, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, _DWORD *a8)
{
  if (a3 > -35)
  {
    *(&v10 + 1) = a5;
    *&v10 = a4;
    v9 = v10 >> 63;
    *(&v10 + 1) = a5;
    *&v10 = a4;
    v11 = v9 + (v10 >> 61);
    if (10 * a4 >= (8 * a4))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 + 1;
    }

    v13 = 1 - a3;
    v14 = *a7;
    v15 = 3 - *a7;
    if ((*a7 - 1) >= 2 || a2 == 0)
    {
      v15 = *a7;
    }

    v17 = xmmword_280A5A7C0[36 * v15 + v13] + __PAIR128__(v12, (a6 != 0) | (10 * a4));
    v18 = (&unk_280A5B300 + 16 * v13);
    v19 = *v18;
    v20 = v18[1];
    v21 = v20 * DWORD1(v17);
    v22 = HIDWORD(v21);
    v23 = HIDWORD(v20) * v17 + v21 + ((v20 * v17) >> 32);
    v24 = (v20 * v17) | (v23 << 32);
    v25 = DWORD2(v17) * HIDWORD(*v18);
    v26 = HIDWORD(v17) * v19 + v25 + ((DWORD2(v17) * v19) >> 32);
    v27 = (DWORD2(v17) * *v18) | (v26 << 32);
    v28 = *v18 * DWORD1(v17);
    v29 = HIDWORD(v19) * v17 + v28 + ((v19 * v17) >> 32);
    v30 = HIDWORD(v28) + HIDWORD(*v18) * DWORD1(v17) + HIDWORD(v29);
    v31 = (*v18 * v17) | (v29 << 32);
    v32 = HIDWORD(v17) * v20;
    v33 = HIDWORD(v32) + HIDWORD(v17) * HIDWORD(v20);
    v34 = DWORD2(v17) * HIDWORD(v20) + v32 + ((DWORD2(v17) * v20) >> 32);
    v35 = HIDWORD(v34);
    v36 = (DWORD2(v17) * v20) | (v34 << 32);
    v37 = __CFADD__(v24, v27);
    v38 = v24 + v27 + v30;
    v39 = __PAIR128__(v33, v36) + __PAIR128__(v35, (__PAIR128__(v22 + HIDWORD(v20) * DWORD1(v17) + HIDWORD(v17) * HIDWORD(v19) + HIDWORD(v25) + HIDWORD(v23) + HIDWORD(v26), v24 + v27) + __PAIR128__(v37, v30)) >> 64);
    v40 = dword_280A5B540[v13];
    v41 = (*(&v39 + 1) << -v40) | (v39 >> v40);
    v42 = ((__PAIR128__(v33, v36) + __PAIR128__(v35, (__PAIR128__(v22 + HIDWORD(v20) * DWORD1(v17) + HIDWORD(v17) * HIDWORD(v19) + HIDWORD(v25) + HIDWORD(v23) + HIDWORD(v26), v24 + v27) + __PAIR128__(v37, v30)) >> 64)) >> 64) >> v40;
    if (v40 >= 64)
    {
      v41 = *(&v39 + 1) >> v40;
      v42 = 0;
    }

    if (!v14 && (v41 & 1) != 0)
    {
      v43 = (*(&v39 + 1) << -v40) | (v39 >> v40);
      if (v40 >= 65)
      {
        v44 = v39 << -v40 != 0;
      }

      else
      {
        v43 = v39 << -v40;
        v44 = 0;
      }

      if (!v43 && !v44 && (v38 < v20 || v38 == v20 && v31 < v19))
      {
        --v41;
      }
    }

    if ((*a8 & 0x20) != 0)
    {
      v48 = 16;
LABEL_54:
      *a8 |= v48;
LABEL_55:
      result[1] = v42 | a2;
      goto LABEL_56;
    }

    v45 = 0x80 - v40;
    if (v40 >= 65)
    {
      v46 = (*(&v39 + 1) << (0x80 - v40)) | (v39 >> v40);
    }

    else
    {
      v46 = v39 << -v40;
    }

    if (v40 >= 65)
    {
      v47 = v39 << (0x80 - v40);
    }

    else
    {
      v47 = 0;
    }

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        goto LABEL_52;
      }

      if (v15 != 4)
      {
        goto LABEL_62;
      }
    }

    else if (v15)
    {
      if (v15 != 1)
      {
LABEL_62:
        v51 = __CFADD__(__CFADD__(v31, v19), v38);
        v52 = __CFADD__(v31, v19) + v38;
        v53 = v51;
        v54 = __CFADD__(v52, v20);
        v55 = (v54 | v53) & 1;
        v56 = v46 >> -v40;
        v57 = (v47 >> v45) | (v46 << v40);
        v58 = v46 >> v45;
        if (v40 >= 65)
        {
          v59 = v58;
        }

        else
        {
          v59 = 0;
        }

        if (v40 < 65)
        {
          v57 = v56;
        }

        v60 = 1 << (v40 - 64);
        if (v40 < 64)
        {
          v60 = 0;
        }

        v61 = v57 + v55;
        if (__CFADD__(v57, v55))
        {
          v62 = v59 + 1;
        }

        else
        {
          v62 = v59;
        }

        if (v62 > v60)
        {
          goto LABEL_55;
        }

        v63 = v61 >> v40;
        v64 = v40 < 64 && v63 == 0;
        v65 = v64;
        if (v62 == v60 && !v65)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

LABEL_52:
      if (v46 | v47)
      {
LABEL_53:
        v48 = 48;
        goto LABEL_54;
      }

LABEL_57:
      v50 = v38 == v20;
      if (v38 < v20)
      {
        goto LABEL_55;
      }

      v48 = 48;
      if (v50 && v31 < v19)
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }

    if (v46 != 0x8000000000000000 || v47 != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_57;
  }

  *a8 |= 0x30u;
  *result = 0;
  result[1] = a2;
  v8 = *a7;
  if (a2)
  {
    if (v8 != 1)
    {
      return result;
    }

    goto LABEL_43;
  }

  if (v8 == 2)
  {
LABEL_43:
    v41 = 1;
LABEL_56:
    *result = v41;
  }

  return result;
}

void *sub_2770D0D7C()
{
  v1 = 0;
  off_280A63DB8 = sub_2770550A8(0, @"FileProvider", "FPSetAlternateContentsURLOnDocumentURL", &v1);
  result = sub_2770550A8(0, @"FileProvider", "FPDidUpdateAlternateContentsDocumentForDocumentAtURL", &v1);
  off_280A63DC0 = result;
  return result;
}

void sub_2770D10CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2770D11A4;
  v7[3] = &unk_27A702E98;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v5 = *(a1 + 56);
  v10 = v3;
  v11 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t sub_2770D11A4(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48));
  }

  return result;
}

uint64_t sub_2770D11C4()
{
  v0 = TSULogCreateCategory("TSUCollaborationManagerCat");
  v1 = TSUCollaborationManagerCat_log_t;
  TSUCollaborationManagerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D1208(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_2770D1280(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_2770D15A8(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2770D166C;
  block[3] = &unk_27A7024A0;
  v4 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5 = *(a1 + 48);
  v9 = v3;
  v10 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t sub_2770D166C(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40));
  }

  return result;
}

uint64_t sub_2770D168C()
{
  v0 = TSULogCreateCategory("TSUCollaborationManagerCat");
  v1 = TSUCollaborationManagerCat_log_t;
  TSUCollaborationManagerCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D16D0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_2770D1748(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:3328 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

void sub_2770D19D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770D19F8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_2770D1A10(void *a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 copy];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 1;
  }

  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_2770D1DF0()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D1E34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] == 17 && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", @"NSFileProviderInternalErrorDomain"), v5, v6))
    {
      if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
      {
        sub_277114C98();
      }
    }

    else if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
    {
      sub_277114C84();
    }
  }

  else if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114CAC();
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_2770D2068;
      v9[3] = &unk_27A702378;
      v11 = v7;
      v10 = v4;
      dispatch_async(v8, v9);
    }

    else
    {
      (v7)[2](v7, v4);
    }
  }
}

uint64_t sub_2770D1F9C()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D1FE0()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D2024()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D207C()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D20C0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_2770D24D4()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D2518(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 code] == 16 && (objc_msgSend(v4, "domain"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqual:", @"NSFileProviderInternalErrorDomain"), v5, v6))
    {
      if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
      {
        sub_277114D10();
      }
    }

    else if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
    {
      sub_277114CFC();
    }
  }

  else if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114D24();
  }

  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = sub_2770D274C;
      v9[3] = &unk_27A702378;
      v11 = v7;
      v10 = v4;
      dispatch_async(v8, v9);
    }

    else
    {
      (v7)[2](v7, v4);
    }
  }
}

uint64_t sub_2770D2680()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D26C4()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D2708()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D2760()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D27A4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

uint64_t sub_2770D2960()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D29A4()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D2CD0()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D2D14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114DC4();
  }

  v7 = [v5 URL];
  if (v7)
  {
    v8 = [[TSUSandboxedURL alloc] initWithURL:v7];
    if (!v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSUFileProviderUtilities fetchLatestVersionURLOfPausedSandboxedURL:completionQueue:completion:]_block_invoke_2"];
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/utility/TSUFileProviderUtilities.m"];
      [TSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:284 isFatal:0 description:"invalid nil value for '%{public}s'", "latestVersionSandboxedURL"];

      +[TSUAssertionHandler logBacktraceThrottled];
    }

    if (TSUCollaborationPauseResumeSyncCat_init_token == -1)
    {
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_277114DD8();
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_11;
  }

  if (v6)
  {
    v8 = 0;
LABEL_11:
    if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
    {
      sub_277114DEC();
    }

    goto LABEL_13;
  }

  if (TSUCollaborationPauseResumeSyncCat_init_token != -1)
  {
    sub_277114E00();
  }

  v8 = 0;
LABEL_13:
  v11 = *(a1 + 56);
  if (v11)
  {
    v12 = *(a1 + 48);
    if (v12)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2770D3058;
      block[3] = &unk_27A702A10;
      v16 = v11;
      v14 = v8;
      v15 = v6;
      dispatch_async(v12, block);
    }

    else
    {
      (v11)[2](v11, v8, v6);
    }
  }
}

uint64_t sub_2770D2F48()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D2F8C()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D2FD0()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D3014()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D3070()
{
  v0 = TSULogCreateCategory("TSUCollaborationPauseResumeSyncCat");
  v1 = TSUCollaborationPauseResumeSyncCat_log_t;
  TSUCollaborationPauseResumeSyncCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_2770D30B4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:256 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void sub_2770D3130()
{
  if (qword_280A63DC8 != -1)
  {
    sub_277114E14();
  }
}

uint64_t sub_2770D315C()
{
  v0 = sub_27702A338();
  v5 = [v0 URLForResource:@"Defaults" withExtension:@"plist"];

  if (v5)
  {
    v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v2 = v1;
    if (v1 && [v1 count])
    {
      v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v3 registerDefaults:v2];
    }
  }

  return MEMORY[0x2821F9730]();
}

uint64_t sub_2770D3210(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, int *a6)
{
  if ((~a2 & 0x7800000000000000) == 0 || (~a4 & 0x7800000000000000) == 0)
  {
    return sub_2770E0690(a3, a4, a1, a2, 0, 0x5FFE000000000000uLL, a5, a6);
  }

  if ((~a2 & 0x6000000000000000) != 0)
  {
    v9 = a2 & 0x1FFFFFFFFFFFFLL;
    if ((a2 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || a1 > 0x378D8E63FFFFFFFFLL && v9 == 0x1ED09BEAD87C0)
    {
      v8 = 0;
      v9 = 0;
    }

    else
    {
      v8 = a1;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  if ((~a4 & 0x6000000000000000) != 0)
  {
    v11 = a4 & 0x1FFFFFFFFFFFFLL;
    if ((a4 & 0x1FFFFFFFFFFFFuLL) > 0x1ED09BEAD87C0 || (a4 & 0x1FFFFFFFFFFFFLL) == 0x1ED09BEAD87C0 && a3 > 0x378D8E63FFFFFFFFLL)
    {
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v10 = a3;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  if (v9 | v8 && v11 | v10)
  {
    return sub_2770E0690(a3, a4, a1, a2, 0, 0x5FFE000000000000uLL, a5, a6);
  }

  else
  {
    return 0;
  }
}

id sub_2770D3380()
{
  if (qword_280A63DD8 != -1)
  {
    sub_277114E28();
  }

  v1 = qword_280A63DD0;

  return v1;
}

void sub_2770D33C4()
{
  v0 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.iwork.iWorkQuickLookGenerator"];
  v1 = qword_280A63DD0;
  qword_280A63DD0 = v0;

  if (!qword_280A63DD0)
  {
    v2 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(@"iWorkQuickLookBundleClass")];
    v3 = qword_280A63DD0;
    qword_280A63DD0 = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

void sub_2770D3824(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = *(v1 + 16);
    v3 = *(a1 + 40);

    v2(v3, 0);
  }

  else
  {
    v4 = [MEMORY[0x277CCA9B8] tsu_fileReadUnknownErrorWithUserInfo:?];
    (*(v1 + 16))(v1, 0, v4);
  }
}

void sub_2770D3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2770D3B14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2770D3B2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

uint64_t sub_2770D3FD8()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D401C()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t sub_2770D4420()
{
  v0 = TSULogCreateCategory("TSUDefaultCat");
  v1 = TSUDefaultCat_log_t;
  TSUDefaultCat_log_t = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}