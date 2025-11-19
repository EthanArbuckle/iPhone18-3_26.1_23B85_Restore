void PA::operator*(uint64_t a1, double *a2, __int128 *a3)
{
  v17 = *a3;
  v18 = xmmword_25E5E03C0;
  v6 = PA::operator*(a2, &v17);
  v8 = v7;
  v17 = a3[1];
  v18 = xmmword_25E5E03C0;
  v9 = PA::operator*(a2, &v17);
  v11 = v10;
  v17 = a3[2];
  v18 = xmmword_25E5E03C0;
  v12 = PA::operator*(a2, &v17);
  v14 = v13;
  v17 = a3[3];
  v18 = xmmword_25E5E03C0;
  v15 = PA::operator*(a2, &v17);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  *(a1 + 24) = v11;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v16;
}

{
  v24 = *a3;
  v25 = *(a3 + 2);
  v26 = 0x3FF0000000000000;
  v23 = PA::operator*(a2, &v24);
  v7 = v6;
  v9 = v8;
  v24 = *(a3 + 24);
  v25 = *(a3 + 5);
  v26 = 0x3FF0000000000000;
  v10 = PA::operator*(a2, &v24);
  v12 = v11;
  v14 = v13;
  v24 = a3[3];
  v25 = *(a3 + 8);
  v26 = 0x3FF0000000000000;
  v15 = PA::operator*(a2, &v24);
  v17 = v16;
  v19 = v18;
  v24 = *(a3 + 72);
  v25 = *(a3 + 11);
  v26 = 0x3FF0000000000000;
  v20 = PA::operator*(a2, &v24);
  *a1 = v23;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19;
  *(a1 + 72) = v20;
  *(a1 + 80) = v21;
  *(a1 + 88) = v22;
}

double PA::Quad2d::boundingRect(float64x2_t *this)
{
  v1 = vbslq_s8(vcgtq_f64(this[1], *this), *this, this[1]);
  v2 = vbslq_s8(vcgtq_f64(this[2], v1), v1, this[2]);
  *&result = vbslq_s8(vcgtq_f64(this[3], v2), v2, this[3]).u64[0];
  return result;
}

uint64_t PFOppositeRectPoint(int a1)
{
  if ((a1 - 1) >= 9)
  {
    return 0;
  }

  else
  {
    return (10 - a1);
  }
}

uint64_t PFRectAreaToRectPoint(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_25E5E0500[a1 - 1];
  }
}

uint64_t PFRectPointToRectArea(int a1)
{
  if ((a1 - 1) > 8)
  {
    return 0;
  }

  else
  {
    return dword_25E5E0524[a1 - 1];
  }
}

double PFRectPoint(int a1, double result, double a3, double a4)
{
  v4 = result + a4;
  if (a4 < 0.0)
  {
    a4 = -a4;
    result = v4;
  }

  if (a1 > 4)
  {
    if (a1 > 7)
    {
      if (a1 == 8)
      {
        return result + a4 * 0.5;
      }

      else
      {
        v5 = result + a4;
        if (a1 == 9)
        {
          return v5;
        }
      }
    }

    else if (a1 == 5)
    {
      return result + a4 * 0.5;
    }

    else if (a1 == 6)
    {
      return result + a4;
    }
  }

  else if (a1 > 2)
  {
    if (a1 == 3)
    {
      return result + a4;
    }
  }

  else if (a1 == 2)
  {
    return result + a4 * 0.5;
  }

  return result;
}

double PFRectNormalize(double result, double a2, double a3)
{
  if (a3 < 0.0)
  {
    return result + a3;
  }

  return result;
}

long double PFRectIntegralModRect(long double a1, long double a2, long double a3, long double a4, long double a5, long double a6)
{
  v11 = a1 - fmod(a1, a5);
  fmod(a2, a6);
  fmod(a3, a5);
  fmod(a4, a6);
  return v11;
}

double PFRectIntegralContainedRect(double a1, double a2, double a3, double a4)
{
  v5 = COERCE_DOUBLE(NSIntegralRect(*&a1));
  v6 = ceil(a1);
  if (v5 >= v6)
  {
    return v5;
  }

  return v6;
}

double PFRectFromPoints(double a1, double a2, double a3)
{
  if (a1 >= a3)
  {
    return a3;
  }

  else
  {
    return a1;
  }
}

CGFloat PFRectScaleToFit(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v17.origin.x = a5;
  v17.origin.y = a6;
  v17.size.width = a7;
  v17.size.height = a8;
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  if (!NSContainsRect(v17, v18))
  {
    return PFRectScaleToFill2(0, a1, a2, a3, a4, a5, a6, a7, a8);
  }

  return a1;
}

CGFloat PFRectScaleToFill2(double *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v19.origin.x = a6;
  v19.origin.y = a7;
  v19.size.width = a8;
  v19.size.height = a9;
  if (NSIsEmptyRect(v19))
  {
    return *MEMORY[0x277CCA868];
  }

  v20.origin.x = a2;
  v20.origin.y = a3;
  v20.size.width = a4;
  v20.size.height = a5;
  if (NSIsEmptyRect(v20))
  {
    return a6;
  }

  v17 = a8 / a4;
  if (a8 / a4 >= a9 / a5)
  {
    v17 = a9 / a5;
  }

  if (a1)
  {
    *a1 = v17;
  }

  return a2;
}

double PFRectCenteredScaleToContain(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v10 = a5;
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  if (NSIsEmptyRect(v19))
  {
    return *MEMORY[0x277CCA868];
  }

  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  if (!NSIsEmptyRect(v20))
  {
    v15 = a7 / a3;
    if (a7 / a3 <= a8 / a4)
    {
      v15 = a8 / a4;
    }

    v16 = -a7;
    if (a7 >= 0.0)
    {
      v16 = a7;
    }

    v17 = v10 + a7;
    if (a7 >= 0.0)
    {
      v17 = v10;
    }

    return v17 + v16 * 0.5 - a3 * v15 * 0.5;
  }

  return v10;
}

double PFRectCenteredScaleToFit(double a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v14 = a5 + a7;
  v15 = -a7;
  if (a7 >= 0.0)
  {
    v15 = a7;
    v14 = a5;
  }

  v16 = a6 + a8;
  v17 = -a8;
  if (a8 >= 0.0)
  {
    v17 = a8;
    v16 = a6;
  }

  v18 = v14 + v15 * 0.5 - a3 * 0.5;
  v19 = v16 + v17 * 0.5 - a4 * 0.5;
  v21.origin.x = a5;
  v21.origin.y = a6;
  v21.size.width = a7;
  v21.size.height = a8;
  v22.origin.x = v18;
  v22.origin.y = v19;
  v22.size.width = a3;
  v22.size.height = a4;
  if (!NSContainsRect(v21, v22))
  {
    return PFRectCenteredScaleToFill2(0, v18, v19, a3, a4, a5, a6, a7, a8);
  }

  return v18;
}

double PFRectCenteredScaleToFill2(double *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v9 = -a4;
  if (a4 < 0.0)
  {
    a2 = a2 + a4;
  }

  else
  {
    v9 = a4;
  }

  v10 = a3 + a5;
  v11 = -a5;
  if (a5 >= 0.0)
  {
    v11 = a5;
    v10 = a3;
  }

  v12 = a2 + v9 * 0.5;
  v13 = v10 + v11 * 0.5;
  v14 = a4 * 0.5;
  v15 = a5 * 0.5;
  v16 = a7 + a9;
  if (a9 < 0.0)
  {
    a9 = -a9;
    a7 = v16;
  }

  if (a8 < 0.0)
  {
    a6 = a6 + a8;
  }

  v17 = (v12 - a6) / v14;
  if (a8 < 0.0)
  {
    a8 = -a8;
  }

  v18 = (a6 + a8 - v12) / v14;
  v19 = (a7 + a9 - v13) / v15;
  v20 = (v13 - a7) / v15;
  if (v17 <= v18)
  {
    v18 = v17;
  }

  if (v18 > v19)
  {
    v18 = v19;
  }

  if (v18 > v20)
  {
    v18 = v20;
  }

  if (a1)
  {
    *a1 = v18;
  }

  return v12 - a4 * v18 * 0.5;
}

double PFRectCenteredScaleToFill(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 / a3;
  if (a7 / a3 < a8 / a4)
  {
    v8 = a8 / a4;
  }

  v9 = a3 * v8;
  v10 = a5 + a7;
  v11 = -a7;
  if (a7 >= 0.0)
  {
    v11 = a7;
    v10 = a5;
  }

  return v10 + v11 * 0.5 - v9 * 0.5;
}

double PFRectCenteredScaleToFillByCropping(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = a7 / a3;
  if (a7 / a3 >= a8 / a4)
  {
    v8 = a8 / a4;
  }

  v9 = a3 * v8;
  v10 = a5 + a7;
  v11 = -a7;
  if (a7 >= 0.0)
  {
    v11 = a7;
    v10 = a5;
  }

  return v10 + v11 * 0.5 - v9 * 0.5;
}

double PFRectUniformCenteredScale(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a3 * a5;
  v6 = a1 + a3;
  if (a3 < 0.0)
  {
    a3 = -a3;
    a1 = v6;
  }

  return a1 + a3 * 0.5 - v5 * 0.5;
}

double PFRectCenteredScale(double a1, double a2, double a3, double a4, double a5)
{
  v5 = a3 * a5;
  v6 = a1 + a3;
  if (a3 < 0.0)
  {
    a3 = -a3;
    a1 = v6;
  }

  return a1 + a3 * 0.5 - v5 * 0.5;
}

double PFRectAlignWithRect(int a1, int a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = PFRectPoint(a2, a7, a8, a9);

  return PFRectAlignToPoint(a1, a3, a4, a5, a6, v14);
}

double PFRectAlignToPoint(int a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        return a6 - a4 * 0.5;
      }

      else
      {
        return a6 - a4;
      }
    }

    else if (a1 == 7)
    {
      return a6;
    }

    else if (a1 == 8)
    {
      return a6 + a4 * -0.5;
    }

    else
    {
      v6 = a6 - a4;
      if (a1 == 9)
      {
        return v6;
      }
    }

    return result;
  }

  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return a6 - a4;
    }

    return a6;
  }

  if (a1 == 1)
  {
    return a6;
  }

  if (a1 == 2)
  {
    return a6 + a4 * -0.5;
  }

  return result;
}

double PFRectMapPoint(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a5 != 0.0 && a6 != 0.0)
  {
    return a9 + (result - a3) / a5 * a11;
  }

  return result;
}

double PFRectMapPoint2(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  if (a5 != 0.0 && a6 != 0.0)
  {
    v18 = (result - a3) / a5;
    if (a5 > a6 != a11 > a12)
    {
      return a10 + (a2 - a4) / a6 * a11;
    }

    else
    {
      return a9 + v18 * a11;
    }
  }

  return result;
}

double PFRectMapRect(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11)
{
  if (a3 < 0.0)
  {
    result = result + a3;
  }

  if (a7 != 0.0 && a8 != 0.0)
  {
    return a9 + (result - a5) / a7 * a11;
  }

  return result;
}

double PFRectMapRect2(int a1, double result, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  if (a4 < 0.0)
  {
    result = result + a4;
  }

  if (a5 < 0.0)
  {
    a3 = a3 + a5;
  }

  if (a1)
  {
    if (a8 != 0.0 && a9 != 0.0)
    {
      return a10 + (result - a6) / a8 * a12;
    }
  }

  else if (a8 != 0.0 && a9 != 0.0)
  {
    if (a8 > a9 != a12 > a13)
    {
      return a11 + (a3 - a7) / a9 * a12;
    }

    else
    {
      return a10 + (result - a6) / a8 * a12;
    }
  }

  return result;
}

double PFRectContainRect(double result, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a3 <= a7 && a4 <= a8)
  {
    if (result < a5)
    {
      result = a5;
    }

    v9 = a5 + a7;
    if (a3 + result > v9)
    {
      return v9 - a3;
    }
  }

  return result;
}

double PFRectGrowToContainRect(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 < a5)
  {
    return a1;
  }

  return a5;
}

double PFRectGrowAtHit(int a1, double result, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = result;
  if (a1 <= 4)
  {
    v15 = a6 - result;
    v16 = a7 - a3;
    v17 = v8 + a4 - a6;
    v9 = a4 > v17;
    if (a1 == 4)
    {
      v18 = v8 + a4 - a6;
    }

    else
    {
      v9 = 0;
      v18 = a4;
    }

    if (a1 == 4)
    {
      v19 = a6;
    }

    else
    {
      v19 = v8;
    }

    if (a1 == 3)
    {
      v9 = 0;
      v20 = v16;
    }

    else
    {
      v20 = a5;
    }

    if (a1 == 3)
    {
      v21 = v8;
    }

    else
    {
      v15 = v18;
      v21 = v19;
    }

    v22 = a5 > v16;
    if (a1 == 2)
    {
      v23 = v16;
    }

    else
    {
      v22 = 0;
      v23 = a5;
    }

    if (a1 == 1)
    {
      v22 = 0;
    }

    else
    {
      v16 = v23;
      v17 = a4;
      a6 = v8;
    }

    if (a1 > 2)
    {
      v13 = v20;
    }

    else
    {
      v9 = v22;
      v13 = v16;
    }

    if (a1 <= 2)
    {
      v14 = v17;
    }

    else
    {
      v14 = v15;
    }

    if (a1 <= 2)
    {
      result = a6;
    }

    else
    {
      result = v21;
    }
  }

  else if (a1 <= 6)
  {
    v24 = a4 + a6;
    v25 = v8 - a6 * 0.5;
    v9 = fmin(a6, a7) < 0.0;
    v26 = a6 - v8;
    v27 = a4 > v26;
    if (a1 != 6)
    {
      v27 = 0;
      v26 = a4;
    }

    if (a1 == 5)
    {
      v13 = a5 + a7;
    }

    else
    {
      v9 = v27;
      v13 = a5;
    }

    if (a1 == 5)
    {
      v14 = v24;
    }

    else
    {
      v14 = v26;
    }

    if (a1 == 5)
    {
      result = v25;
    }

    else
    {
      result = v8;
    }
  }

  else
  {
    v9 = a5 > a3 + a5 - a7;
    v10 = a6 - result;
    if (a1 == 9)
    {
      v11 = a3 + a5 - a7;
    }

    else
    {
      v11 = a5;
    }

    if (a1 != 9)
    {
      v10 = a4;
    }

    if (a1 == 8)
    {
      v11 = a3 + a5 - a7;
      v12 = a4;
    }

    else
    {
      v9 = 0;
      v12 = v10;
    }

    if (a1 == 7)
    {
      v9 = 0;
      v13 = a3 + a5 - a7;
    }

    else
    {
      v13 = v11;
    }

    if (a1 == 7)
    {
      v14 = result + a4 - a6;
    }

    else
    {
      v14 = v12;
    }

    if (a1 == 7)
    {
      result = a6;
    }
  }

  if (a8 <= 0.0)
  {
    return result;
  }

  v28 = fabs(v14);
  if (v13 < 0.0)
  {
    v28 = -v28;
  }

  v29 = floor(v28 / a8);
  v30 = fabs(v13);
  if (v14 < 0.0)
  {
    v30 = -v30;
  }

  v31 = floor(v30 * a8);
  if (fabs(v14 * v29) <= fabs(v13 * v31))
  {
    v32 = v31;
  }

  else
  {
    v32 = v14;
  }

  if (a1 > 5)
  {
    if (a1 <= 7)
    {
      if (a1 != 6)
      {
        return v8 + a4 - v32;
      }

      return result;
    }

    if (a1 != 8)
    {
      return result;
    }

LABEL_84:
    if (v9)
    {
      v32 = v31;
    }

    return result + (a4 - v32) * 0.5;
  }

  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (v9)
      {
        v32 = v31;
      }

      v33 = v8 + a4;
      if (a4 >= 0.0)
      {
        v33 = v8;
      }

      else
      {
        a4 = -a4;
      }

      return v33 + a4 * 0.5 - v32 * 0.5;
    }

    return result;
  }

  if (a1 == 1)
  {
    return v8 + a4 - v32;
  }

  if (a1 == 2)
  {
    goto LABEL_84;
  }

  return result;
}

void PFRectGrowSelection()
{
  __asm
  {
    FMOV            V5.2D, #1.0
    FMOV            V7.2D, #-1.0
  }
}

double PFRectContainPoint(double result, double a2, double a3, double a4, double a5)
{
  if (result < a3)
  {
    result = a3;
  }

  v5 = a3 + a5;
  if (result > v5)
  {
    return v5;
  }

  return result;
}

double PFRectClampRect(double result, double a2, double a3, double a4, double a5)
{
  if (result < a5)
  {
    return a5;
  }

  return result;
}

double PFRectInterpolate(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v14 = 1.0;
  if (a9 <= 1.0)
  {
    v14 = a9;
  }

  if (a9 >= 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  return a1 - (a1 - a5) * v15;
}

double PFRectEaseInterpolate(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v27 = (sin(a9 * 3.14159265 + -1.57079633) + 1.0) * 0.5;

  return PFRectInterpolate(a1, a2, a3, a4, a5, a6, a7, a8, v27);
}

double PFRectEaseInterpolateBend(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v22 = sin(a9 * 3.14159265) * a10;
  v23 = floor(a1 + a3 * 0.5) == floor(a5 + a7 * 0.5);
  if (v23)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = v22;
  }

  dY = v24;
  if (v23)
  {
    v25 = v22;
  }

  else
  {
    v25 = 0.0;
  }

  v26 = sin(a9 * 3.14159265 + -1.57079633);
  v27 = PFRectInterpolate(a1, a2, a3, a4, a5, a6, a7, a8, (v26 + 1.0) * 0.5);

  *&result = NSOffsetRect(*&v27, v25, dY);
  return result;
}

uint64_t PFRectClosestPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7)
{
  v13 = a3 * 0.5;
  v14 = a4 * 0.5;
  v15 = 1;
  while (1)
  {
    v20.origin.x = PFRectPoint(v15, a5, a6, a7) - v13;
    v20.origin.y = v16 - v14;
    v19.x = a1;
    v19.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    if (NSPointInRect(v19, v20))
    {
      break;
    }

    v15 = (v15 + 1);
    if (v15 == 10)
    {
      return 0;
    }
  }

  return v15;
}

uint64_t PFRectClosestSide(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v6 = a6 * a3;
  v7 = a1 - a4;
  if (a1 - a4 < 0.0)
  {
    v7 = -(a1 - a4);
  }

  if (v7 < v6)
  {
    return 1;
  }

  v9 = a1 - (a4 + a6);
  if (v9 < 0.0)
  {
    v9 = -v9;
  }

  if (v9 >= v6)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t PFRectClosestArea(int a1, CGFloat a2, CGFloat a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = 1;
  while (1)
  {
    PFRectBoundsForAreaType(a4, a5, a6, a7, a8, v16, a1);
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26.x = a2;
    v26.y = a3;
    v27.origin.x = v18;
    v27.origin.y = v20;
    v27.size.width = v22;
    v27.size.height = v24;
    if (NSPointInRect(v26, v27))
    {
      break;
    }

    v16 = (v16 + 1);
    if (v16 == 10)
    {
      return 0;
    }
  }

  return v16;
}

void PFRectBoundsForAreaType(double a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, int a7)
{
  v13 = a1;
  if ((a7 & 1) == 0)
  {
    v13 = a1 - floor(a1 / 3.0);
  }

  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  NSInsetRect(v14, v13, v13);
  PFRectBoundsForAreas(a7, a1, a2, a3, a4, a5);
}

double PFRectBoundsForAreas(int a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = a3;
  if (!a1)
  {
    v8 = -(a2 - (a2 - floor(a2 / 3.0)));
    v10.origin.x = a3;
    v10.origin.y = a4;
    v10.size.width = a5;
    v10.size.height = a6;
    *&v7 = NSInsetRect(v10, v8, v8);
  }

  return v7;
}

uint64_t PFRectIntersectLine(double *a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  v13 = a8 - a6;
  v14 = a9 - a7;
  if (a8 - a6 == 0.0)
  {
    v15 = 1.79769313e308;
    v16 = 1.79769313e308;
  }

  else
  {
    v15 = (a2 - a6) / v13;
    v16 = (a2 + a4 - a6) / v13;
  }

  v17 = (a3 + a5 - a7) / v14;
  v18 = (a3 - a7) / v14;
  if (v14 == 0.0)
  {
    v17 = 1.79769313e308;
    v18 = 1.79769313e308;
  }

  v19 = -(a4 * v13);
  v20 = v15 > 0.0 && v19 < 0.0;
  v21 = fmin(v15, 1.0);
  if (!v20)
  {
    v15 = 0.0;
  }

  if (v19 >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1.0;
  }

  v23 = a4 * v13;
  if (v16 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v16;
  }

  if (v16 <= v15 || v23 >= 0.0)
  {
    v16 = v15;
  }

  if (v23 >= 0.0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v22;
  }

  v27 = v14 * a5;
  if (v17 >= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v17;
  }

  if (v17 > v16 && v27 < 0.0)
  {
    v16 = v17;
  }

  if (v27 >= 0.0)
  {
    v26 = v28;
  }

  v30 = -(a5 * v14);
  if (v18 >= v26)
  {
    v31 = v26;
  }

  else
  {
    v31 = v18;
  }

  if (v18 > v16 && v30 < 0.0)
  {
    v16 = v18;
  }

  if (v30 >= 0.0)
  {
    v33 = v31;
  }

  else
  {
    v33 = v26;
  }

  if (v16 >= v33)
  {
    return 0;
  }

  v34 = a6 + v13 * v16;
  v35 = a7 + v14 * v16;
  v38.x = a6;
  v38.y = a7;
  v40.x = v34;
  v40.y = v35;
  if (NSEqualPoints(v38, v40))
  {
    v34 = a6 + v13 * v33;
    v35 = a7 + v14 * v33;
    v39.x = a8;
    v39.y = a9;
    v41.x = v34;
    v41.y = v35;
    if (NSEqualPoints(v39, v41))
    {
      return 0;
    }
  }

  if (a1)
  {
    *a1 = v34;
    a1[1] = v35;
  }

  return 1;
}

BOOL PFRectEdgeInRange(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (a3 <= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  return v6 <= a6 && v6 >= a5;
}

BOOL PFRectEdgeIntersectsRect(uint64_t a1, double a2, double a3, double a4, double a5)
{
  if ((*a1 & 0xFFFFFFFD) != 1)
  {
    v10 = *(a1 + 16);
    v11 = a3 + a5;
    if (v10 >= a3 && v10 <= v11)
    {
      v14 = *(a1 + 8);
      if (v14 >= a2 || *(a1 + 24) >= a2)
      {
        v15 = a2 + a4;
        if (v14 <= v15 || *(a1 + 24) <= v15)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  v5 = *(a1 + 8);
  v6 = a2 + a4;
  if (v5 < a2 || v5 > v6)
  {
    return 0;
  }

  v8 = *(a1 + 16);
  if (v8 < a3 && *(a1 + 32) < a3)
  {
    return 0;
  }

  v9 = a3 + a5;
  return v8 <= v9 || *(a1 + 32) <= v9;
}

uint64_t PFRectMakeBoundingRect(uint64_t result)
{
  v1 = (result + 8);
  v2 = 1.79769313e308;
  v3 = -1.79769313e308;
  v4 = 4;
  v5 = -1.79769313e308;
  v6 = 1.79769313e308;
  do
  {
    v7 = *(v1 - 1);
    v8 = *v1;
    if (v7 < v6)
    {
      v6 = *(v1 - 1);
    }

    if (v7 > v5)
    {
      v5 = *(v1 - 1);
    }

    if (v8 < v2)
    {
      v2 = *v1;
    }

    if (v8 > v3)
    {
      v3 = *v1;
    }

    v1 += 2;
    --v4;
  }

  while (v4);
  return result;
}

id PFRectRotateByDegrees(double a1, double a2, double a3, double a4, double a5)
{
  v10 = [MEMORY[0x277CCA878] transform];
  v11 = [MEMORY[0x277CCA878] transform];
  v12 = [MEMORY[0x277CCA878] transform];
  v13 = [MEMORY[0x277CCA878] transform];
  v14 = a1 + a3;
  v15 = -a3;
  if (a3 >= 0.0)
  {
    v15 = a3;
    v14 = a1;
  }

  v16 = a2 + a4;
  v17 = -a4;
  if (a4 >= 0.0)
  {
    v17 = a4;
    v16 = a2;
  }

  v18 = v14 + v15 * 0.5;
  v19 = v16 + v17 * 0.5;
  [v10 translateXBy:-v18 yBy:-v19];
  [v13 appendTransform:v10];
  [v12 rotateByDegrees:a5];
  [v13 appendTransform:v12];
  [v11 translateXBy:v18 yBy:v19];
  [v13 appendTransform:v11];

  return v13;
}

id PFRectScaleAroundCenter(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = [MEMORY[0x277CCA878] transform];
  v13 = [MEMORY[0x277CCA878] transform];
  v14 = [MEMORY[0x277CCA878] transform];
  v15 = [MEMORY[0x277CCA878] transform];
  v16 = a1 + a3;
  v17 = -a3;
  if (a3 >= 0.0)
  {
    v17 = a3;
    v16 = a1;
  }

  v18 = a2 + a4;
  v19 = -a4;
  if (a4 >= 0.0)
  {
    v19 = a4;
    v18 = a2;
  }

  v20 = v16 + v17 * 0.5;
  v21 = v18 + v19 * 0.5;
  [v12 translateXBy:-v20 yBy:-v21];
  [v15 appendTransform:v12];
  [v14 scaleXBy:a5 yBy:a6];
  [v15 appendTransform:v14];
  [v13 translateXBy:v20 yBy:v21];
  [v15 appendTransform:v13];

  return v15;
}

float64x2_t PFRectGetTransform@<Q0>(uint64_t a1@<X8>, float64x2_t a2@<Q0>, float64_t a3@<D1>, float64x2_t a4@<Q2>, float64_t a5@<D3>, float64x2_t a6@<Q4>, float64_t a7@<D5>, float64x2_t a8@<Q6>, float64_t a9@<D7>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  a4.f64[1] = a5;
  a2.f64[1] = a3;
  v9 = vcltzq_f64(a4);
  result = vbslq_s8(v9, vaddq_f64(a2, a4), a2);
  a8.f64[1] = a9;
  v11 = vcltzq_f64(a8);
  a6.f64[1] = a7;
  v12 = vbslq_s8(v11, vaddq_f64(a6, a8), a6);
  v13 = vdivq_f64(vsubq_f64(vaddq_f64(v12, vbslq_s8(v11, vnegq_f64(a8), a8)), v12), vsubq_f64(vaddq_f64(result, vbslq_s8(v9, vnegq_f64(a4), a4)), result));
  *a1 = v13.f64[0];
  *(a1 + 24) = v13.f64[1];
  *(a1 + 32) = vmlsq_f64(v12, result, v13);
  return result;
}

id PFRectGetNSAffineTransform(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [MEMORY[0x277CCA878] transform];
  v17 = [MEMORY[0x277CCA878] transform];
  v18 = [MEMORY[0x277CCA878] transform];
  v19 = -a3;
  if (a3 >= 0.0)
  {
    v20 = a1;
  }

  else
  {
    v20 = a1 + a3;
  }

  v21 = -a4;
  if (a3 >= 0.0)
  {
    v19 = a3;
  }

  if (a4 >= 0.0)
  {
    v22 = a2;
  }

  else
  {
    v22 = a2 + a4;
  }

  v23 = -a7;
  if (a4 >= 0.0)
  {
    v21 = a4;
  }

  if (a7 >= 0.0)
  {
    v24 = a5;
  }

  else
  {
    v24 = a5 + a7;
  }

  if (a7 >= 0.0)
  {
    v23 = a7;
  }

  if (a8 >= 0.0)
  {
    v25 = a6;
  }

  else
  {
    v25 = a6 + a8;
  }

  v26 = v20 + v19;
  v27 = v22 + v21;
  if (a8 >= 0.0)
  {
    v28 = a8;
  }

  else
  {
    v28 = -a8;
  }

  v29 = v24 - (v24 + v23 - v24) / (v26 - v20) * v20;
  v30 = v25 - (v25 + v28 - v25) / (v27 - v22) * v22;
  [v17 scaleXBy:? yBy:?];
  [v18 appendTransform:v17];
  [v16 translateXBy:v29 yBy:v30];
  [v18 appendTransform:v16];

  return v18;
}

uint64_t *PFAspectRatioToWholeLengths(uint64_t *result, uint64_t *a2, double a3)
{
  if (a3 <= 0.0)
  {
    if (a3 >= 0.0)
    {
      v5 = 0;
      v6 = 0;
      if (!result)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    v7 = 1.0 / a3;
    if (v7 < 0.0)
    {
      v7 = -v7;
    }

    v8 = v7 * 100.0;
  }

  else
  {
    if (a3 < 1.0)
    {
      v3 = 1.0 / a3;
    }

    else
    {
      v3 = a3;
    }

    v4 = -(v3 + -1.0);
    if (v3 + -1.0 >= 0.0)
    {
      v4 = v3 + -1.0;
    }

    if (v4 < 0.01)
    {
      v5 = 1;
      v6 = 1;
      if (!result)
      {
        goto LABEL_22;
      }

LABEL_21:
      *result = v6;
      goto LABEL_22;
    }

    v9 = v3 + -1.3333;
    if (v3 + -1.3333 < 0.0)
    {
      v9 = -(v3 + -1.3333);
    }

    if (v9 < 0.01)
    {
      v10 = a3 < 1.0;
      v5 = 3;
      v11 = 4;
      goto LABEL_45;
    }

    v12 = v3 + -1.25;
    if (v3 + -1.25 < 0.0)
    {
      v12 = -(v3 + -1.25);
    }

    if (v12 < 0.01)
    {
      v10 = a3 < 1.0;
      v5 = 4;
      v11 = 5;
      goto LABEL_45;
    }

    v13 = v3 + -1.4;
    if (v3 + -1.4 < 0.0)
    {
      v13 = -(v3 + -1.4);
    }

    if (v13 < 0.01)
    {
      v10 = a3 < 1.0;
      v5 = 5;
      v11 = 7;
      goto LABEL_45;
    }

    v14 = v3 + -1.5;
    if (v3 + -1.5 < 0.0)
    {
      v14 = -(v3 + -1.5);
    }

    if (v14 < 0.01)
    {
      v10 = a3 < 1.0;
      v5 = 2;
      v11 = 3;
      goto LABEL_45;
    }

    v15 = v3 + -1.7777;
    if (v3 + -1.7777 < 0.0)
    {
      v15 = -(v3 + -1.7777);
    }

    if (v15 < 0.01)
    {
      v10 = a3 < 1.0;
      v5 = 9;
      v11 = 16;
      goto LABEL_45;
    }

    v16 = v3 + -1.375;
    if (v16 < 0.0)
    {
      v16 = -v16;
    }

    if (v16 < 0.01)
    {
      v10 = a3 < 1.0;
      v5 = 8;
      v11 = 11;
LABEL_45:
      if (v10)
      {
        v6 = v5;
      }

      else
      {
        v6 = v11;
      }

      if (v10)
      {
        v5 = v11;
      }

      if (result)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }

    v8 = 1.0 / a3 * 100.0;
  }

  v5 = v8;
  v6 = 100;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_22:
  if (a2)
  {
    *a2 = v5;
  }

  return result;
}

double PFConstrainPointToRect(double a1, double a2, double a3, double a4, double a5)
{
  if (a1 >= a3)
  {
    v5 = a3 + a5;
    a3 = a1;
    if (a1 > v5)
    {
      return v5;
    }
  }

  return a3;
}

void sub_25E5BFACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v9 = objc_begin_catch(exception_object);
    [MEMORY[0x277CCACA8] stringWithFormat:@"error json-ifying data %@"];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x25E5BFA70);
  }

  _Unwind_Resume(exception_object);
}

float64_t PA::Quad2d::areaCenter(float64x2_t *this)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = this + 2;
  v3 = this[2];
  v4 = this + 1;
  __asm { FMOV            V2.2D, #0.5 }

  v14 = this[1];
  v27 = *this;
  v28 = vaddq_f64(v14, vmulq_f64(vsubq_f64(v3, v14), _Q2));
  v15 = v28;
  v17 = v3;
  v29 = 0;
  v19 = _Q2;
  v12 = *this;
  v10 = vaddq_f64(*this, vmulq_f64(vsubq_f64(v3, *this), _Q2));
  v24 = this[1];
  v25 = v10;
  v26 = 0;
  if (PA::LineSegment2d::findIntersectPoint(&v27, &v24, &v31) != 2)
  {
    _PFAssertFailHandler();
    goto LABEL_8;
  }

  v27 = this[3];
  v28 = v15;
  v29 = 0;
  v16 = this[3];
  v24 = *v4;
  v25 = vaddq_f64(v17, vmulq_f64(vsubq_f64(v16, v17), v19));
  v18 = v25;
  v26 = 0;
  if (PA::LineSegment2d::findIntersectPoint(&v27, &v24, &v32) != 2)
  {
LABEL_8:
    _PFAssertFailHandler();
    goto LABEL_9;
  }

  v27 = *v4;
  v28 = vaddq_f64(v12, vmulq_f64(vsubq_f64(v16, v12), v19));
  v13 = v28;
  v29 = 0;
  v24 = *this;
  v25 = vaddq_f64(v14, vmulq_f64(vsubq_f64(v16, v14), v19));
  v26 = 0;
  if (PA::LineSegment2d::findIntersectPoint(&v27, &v24, &v33) != 2)
  {
LABEL_9:
    _PFAssertFailHandler();
    goto LABEL_10;
  }

  v27 = *v2;
  v28 = v13;
  v29 = 0;
  v24 = *this;
  v25 = v18;
  v26 = 0;
  if (PA::LineSegment2d::findIntersectPoint(&v27, &v24, &v34) != 2)
  {
LABEL_10:
    _PFAssertFailHandler();
LABEL_11:
    _PFAssertFailHandler();
  }

  v22[0] = v31;
  v22[1] = v32;
  v23 = 0;
  v20[0] = v33;
  v20[1] = v34;
  v21 = 0;
  if (PA::LineSegment2d::findIntersectPoint(v22, v20, &v30) != 2)
  {
    goto LABEL_11;
  }

  return v30.f64[0];
}

__int128 *PA::Matrix4d::rotateAxis(__int128 *a1, uint64_t a2, double a3)
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  v32 = a1[4];
  v33 = v4;
  v5 = a1[7];
  v34 = a1[6];
  v35 = v5;
  v6 = a1[1];
  v28 = *a1;
  v29 = v6;
  v7 = a1[3];
  v30 = a1[2];
  v31 = v7;
  *&v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = sqrt(*&v7 * *&v7 + *a2 * *a2 + v8 * v8);
  v10 = *a2 / v9;
  v11 = *&v7 / v9;
  v12 = v8 / v9;
  v13 = __sincos_stret(a3);
  v14 = v10 * (1.0 - v13.__cosval);
  v15 = v11 * (1.0 - v13.__cosval);
  v24[0] = v13.__cosval + v14 * v10;
  v24[1] = v12 * v13.__sinval + v14 * v11;
  v24[2] = -(v11 * v13.__sinval - v14 * v12);
  v24[3] = 0.0;
  v24[4] = -(v12 * v13.__sinval - v14 * v11);
  v24[5] = v13.__cosval + v15 * v11;
  v24[6] = v10 * v13.__sinval + v15 * v12;
  v24[7] = 0.0;
  v24[8] = v11 * v13.__sinval + v14 * v12;
  v24[9] = -(v10 * v13.__sinval - v15 * v12);
  v24[10] = v13.__cosval + v12 * (1.0 - v13.__cosval) * v12;
  v25 = 0u;
  v26 = 0u;
  v27 = 0x3FF0000000000000;
  PA::Matrix4d::operator*=(&v28, v24);
  v17 = v28;
  v16 = v29;
  v19 = v34;
  v18 = v35;
  v20 = v33;
  v21 = v30;
  v36 = v31;
  a1[4] = v32;
  a1[5] = v20;
  a1[6] = v19;
  a1[7] = v18;
  *a1 = v17;
  a1[1] = v16;
  v22 = v36;
  a1[2] = v21;
  a1[3] = v22;
  return a1;
}

double PA::Matrix4d::operator*=(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v9 = a1[6];
  v8 = a1[7];
  v11 = a1[8];
  v10 = a1[9];
  v13 = a1[10];
  v12 = a1[11];
  v15 = a1[12];
  v14 = a1[13];
  *a1 = v7 * a2[1] + *a1 * *a2 + v11 * a2[2] + v15 * a2[3];
  a1[4] = v7 * a2[5] + v3 * a2[4] + v11 * a2[6] + v15 * a2[7];
  v17 = a1[14];
  v16 = a1[15];
  a1[8] = v7 * a2[9] + v3 * a2[8] + v11 * a2[10] + v15 * a2[11];
  a1[12] = v7 * a2[13] + v3 * a2[12] + v11 * a2[14] + v15 * a2[15];
  a1[1] = v6 * a2[1] + v2 * *a2 + v10 * a2[2] + v14 * a2[3];
  a1[5] = v6 * a2[5] + v2 * a2[4] + v10 * a2[6] + v14 * a2[7];
  a1[9] = v6 * a2[9] + v2 * a2[8] + v10 * a2[10] + v14 * a2[11];
  a1[13] = v6 * a2[13] + v2 * a2[12] + v10 * a2[14] + v14 * a2[15];
  a1[2] = v9 * a2[1] + v5 * *a2 + v13 * a2[2] + v17 * a2[3];
  a1[6] = v9 * a2[5] + v5 * a2[4] + v13 * a2[6] + v17 * a2[7];
  a1[10] = v9 * a2[9] + v5 * a2[8] + v13 * a2[10] + v17 * a2[11];
  a1[14] = v9 * a2[13] + v5 * a2[12] + v13 * a2[14] + v17 * a2[15];
  a1[3] = v8 * a2[1] + v4 * *a2 + v12 * a2[2] + v16 * a2[3];
  a1[7] = v8 * a2[5] + v4 * a2[4] + v12 * a2[6] + v16 * a2[7];
  a1[11] = v8 * a2[9] + v4 * a2[8] + v12 * a2[10] + v16 * a2[11];
  result = v8 * a2[13] + v4 * a2[12] + v12 * a2[14] + v16 * a2[15];
  a1[15] = result;
  return result;
}

uint64_t PA::LineSegment2d::findIntersectPoint(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) - *a1;
  v5 = *(a1 + 24) - v3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 8);
  v9 = v6 - *a2;
  v10 = v7 - v8;
  v11 = *a2 - *a1;
  v12 = v8 - v3;
  v13 = v11 * v10 - v12 * v9;
  v14 = v4 * v10 - v5 * v9;
  if (v14 == 0.0)
  {
    if (v13 == 0.0)
    {
      if (*(a1 + 32) | *(a2 + 32))
      {
        return 4;
      }

      v15 = v4 == 0.0;
      v16 = v12 / v5;
      v17 = (v7 - v3) / v5;
      if (v4 != 0.0)
      {
        v17 = (v6 - *a1) / v4;
      }

      v18 = v11 / v4;
      if (v15)
      {
        v18 = v16;
      }

      v19 = 3;
      if (v18 <= 1.0 || v17 <= 1.0)
      {
        if (v17 < 0.0 && v18 < 0.0)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }

      return v19;
    }

    return 1;
  }

  v22 = v13 / v14;
  if (*(a1 + 32) != 1 && (v22 < 0.0 || v22 > 1.0))
  {
    return 1;
  }

  v24 = (v4 * v12 - v11 * v5) / (v9 * v5 - v10 * v4);
  v25 = v24 >= 0.0;
  if (v24 > 1.0)
  {
    v25 = 0;
  }

  if (*(a2 + 32) == 1)
  {
    v25 = 1;
  }

  if (v25)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if (a3 && v25)
  {
    *a3 = vaddq_f64(*a1, vmulq_n_f64(vsubq_f64(*(a1 + 16), *a1), v22));
    return 2;
  }

  return v19;
}

void IPAScaledTimeFromNaturalTime(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, CMTime *a4@<X8>, unsigned int a5@<S0>)
{
  *&a4->value = *a1;
  a4->epoch = *(a1 + 2);
  if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 5) || (*(a3 + 3) & 0x8000000000000000) != 0 || (v15 = *(a3 + 24), *&v16 = *(a3 + 5), time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&v15, &time2)))
  {
    v15 = *a2;
    *&v16 = *(a2 + 2);
    Seconds = CMTimeGetSeconds(&v15);
    v11 = a3[1];
    v15 = *a3;
    v16 = v11;
    v17 = a3[2];
    v12 = [MEMORY[0x277D3B4D8] timeRangeMapperForSourceDuration:&v15 slowMotionRate:0 slowMotionTimeRange:Seconds forExport:{COERCE_DOUBLE(__PAIR64__(DWORD1(v17), a5))}];
    if (v12)
    {
      v15 = *a1;
      *&v16 = *(a1 + 2);
      v13 = CMTimeGetSeconds(&v15);
      *&v13 = v13;
      [v12 scaledTimeForOriginalTime:v13];
      CMTimeMakeWithSeconds(a4, v14, 90000);
    }
  }
}

void IPANaturalTimeFromScaledTime(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, CMTime *a4@<X8>, unsigned int a5@<S0>)
{
  *&a4->value = *a1;
  a4->epoch = *(a1 + 2);
  if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 5) || (*(a3 + 3) & 0x8000000000000000) != 0 || (v15 = *(a3 + 24), *&v16 = *(a3 + 5), time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&v15, &time2)))
  {
    v15 = *a2;
    *&v16 = *(a2 + 2);
    Seconds = CMTimeGetSeconds(&v15);
    v11 = a3[1];
    v15 = *a3;
    v16 = v11;
    v17 = a3[2];
    v12 = [MEMORY[0x277D3B4D8] timeRangeMapperForSourceDuration:&v15 slowMotionRate:0 slowMotionTimeRange:Seconds forExport:{COERCE_DOUBLE(__PAIR64__(DWORD1(v17), a5))}];
    if (v12)
    {
      v15 = *a1;
      *&v16 = *(a1 + 2);
      v13 = CMTimeGetSeconds(&v15);
      *&v13 = v13;
      [v12 originalTimeForScaledTime:v13];
      CMTimeMakeWithSeconds(a4, v14, 90000);
    }
  }
}

__n128 IPAClipTime@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  memset(&v10, 0, sizeof(v10));
  v6 = a2[1];
  *&range.start.value = *a2;
  *&range.start.epoch = v6;
  *&range.duration.timescale = a2[2];
  CMTimeRangeGetEnd(&v10, &range);
  *&range.start.value = *a1;
  range.start.epoch = *(a1 + 16);
  v8 = *a2;
  if (CMTimeCompare(&range.start, &v8) < 0)
  {
    result = *a2;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 2);
  }

  else
  {
    *&range.start.value = *a1;
    range.start.epoch = *(a1 + 16);
    v8 = v10;
    if (CMTimeCompare(&range.start, &v8) >= 1)
    {
      result.n128_u64[0] = v10.value;
      *a3 = v10;
      if (*(a3 + 8) != 1)
      {
        --*a3;
      }
    }
  }

  return result;
}

CMTimeRange *IPAClipTimeRange@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&time1.start.value = *a1;
  time1.start.epoch = *(a1 + 16);
  time2 = *a2;
  if (CMTimeCompare(&time1.start, &time2) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a2;
  }

  time2 = *v6;
  memset(&v14, 0, sizeof(v14));
  v7 = *(a2 + 16);
  *&time1.start.value = *a2;
  *&time1.start.epoch = v7;
  *&time1.duration.timescale = *(a2 + 32);
  CMTimeRangeGetEnd(&v14, &time1);
  v8 = *(a1 + 16);
  *&time1.start.value = *a1;
  *&time1.start.epoch = v8;
  *&time1.duration.timescale = *(a1 + 32);
  CMTimeRangeGetEnd(&v12, &time1);
  time1.start = v14;
  if (CMTimeCompare(&v12, &time1.start) < 1)
  {
    v10 = *(a1 + 16);
    *&time1.start.value = *a1;
    *&time1.start.epoch = v10;
    *&time1.duration.timescale = *(a1 + 32);
    CMTimeRangeGetEnd(&v12, &time1);
    value = v12.value;
    v15 = *&v12.timescale;
  }

  else
  {
    v15 = *&v14.timescale;
    value = v14.value - 1;
  }

  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  time1.start = time2;
  v12.value = value;
  *&v12.timescale = v15;
  if (CMTimeCompare(&time1.start, &v12) < 0)
  {
    time1.start = time2;
    v12.value = value;
    *&v12.timescale = v15;
    return CMTimeRangeFromTimeToTime(a3, &time1.start, &v12);
  }

  else
  {
    time1.start = time2;
    v12 = **&MEMORY[0x277CC08F0];
    return CMTimeRangeMake(a3, &time1.start, &v12);
  }
}

CMTime *IPAMapNormalizedTime@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 12);
  if ((v6 & 1) == 0 || (v7 = *(a2 + 36), (v7 & 1) == 0) || *(a2 + 40) || (*(a2 + 24) & 0x8000000000000000) != 0)
  {
    v14 = *(a2 + 16);
    *&range.start.value = *a2;
    *&range.start.epoch = v14;
    *&range.duration.timescale = *(a2 + 32);
    CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &range);
    _PFAssertFailHandler();
LABEL_15:
    duration.start.value = *v3;
    duration.start.timescale = *(v3 + 8);
    duration.start.flags = v9;
    duration.start.epoch = v10;
    CMTimeCopyDescription(*MEMORY[0x277CBECE8], &duration.start);
    _PFAssertFailHandler();
    goto LABEL_16;
  }

  if (((v7 | v6) & 0x10) != 0)
  {
    v8 = *(a2 + 16);
    *&range.start.value = *a2;
    *&range.start.epoch = v8;
    *&range.duration.timescale = *(a2 + 32);
    CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &range);
    a1 = _PFAssertFailHandler();
  }

  v3 = a1;
  memset(&range, 0, sizeof(range));
  CMTimeMake(&duration.start, 1, 1);
  *&start.start.value = *MEMORY[0x277CC08F0];
  start.start.epoch = *(MEMORY[0x277CC08F0] + 16);
  CMTimeRangeMake(&range, &start.start, &duration.start);
  v19 = 0uLL;
  v20 = 0;
  v9 = *(v3 + 12);
  v10 = *(v3 + 16);
  if ((v9 & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((*(v3 + 12) & 0x1D) != 1)
  {
LABEL_16:
    duration.start.value = *v3;
    duration.start.timescale = *(v3 + 8);
    duration.start.flags = v9;
    duration.start.epoch = v10;
    CMTimeCopyDescription(*MEMORY[0x277CBECE8], &duration.start);
    v15 = _PFAssertFailHandler();
    return IPAMapNormalizedTimeRange(v15);
  }

  duration.start.value = *v3;
  duration.start.timescale = *(v3 + 8);
  duration.start.flags = v9;
  duration.start.epoch = v10;
  Seconds = CMTimeGetSeconds(&duration.start);
  if (Seconds < 0.0 || Seconds > 1.0)
  {
    *&start.start.value = *v3;
    start.start.epoch = *(v3 + 16);
    duration = range;
    IPAClipTime(&start, &duration, &v19);
  }

  else
  {
    v19 = *v3;
    v20 = *(v3 + 16);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v17.epoch = v20;
  duration = range;
  v12 = *(a2 + 16);
  *&start.start.value = *a2;
  *&start.start.epoch = v12;
  *&start.duration.timescale = *(a2 + 32);
  *&v17.value = v19;
  return CMTimeMapTimeFromRangeToRange(a3, &v17, &duration, &start);
}

$3CC8671D27C23BF42ADDB32F2B5E48AE *IPAMapNormalizedTimeRange@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 12);
  if ((v4 & 1) == 0 || (v5 = *(a1 + 36), (v5 & 1) == 0) || *(a1 + 40) || (*(a1 + 24) & 0x8000000000000000) != 0)
  {
    v13 = *(a1 + 16);
    *&range.start.value = *a1;
    *&range.start.epoch = v13;
    *&range.duration.timescale = *(a1 + 32);
    CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &range);
    v14 = _PFAssertFailHandler();
    return [(IPAVideoPlaybackSettings *)v16 naturalDuration];
  }

  else
  {
    if (((v5 | v4) & 0x10) != 0)
    {
      v6 = *(a1 + 16);
      *&range.start.value = *a1;
      *&range.start.epoch = v6;
      *&range.duration.timescale = *(a1 + 32);
      CMTimeRangeCopyDescription(*MEMORY[0x277CBECE8], &range);
      a1 = _PFAssertFailHandler();
    }

    v7 = a2;
    v8 = *(a1 + 16);
    v18 = *a1;
    memset(&v21, 0, sizeof(v21));
    v9 = *(a1 + 32);
    *&range.start.value = *a1;
    *&range.start.epoch = v8;
    *&range.duration.timescale = v9;
    CMTimeRangeGetEnd(&v21, &range);
    v19 = 0uLL;
    v20 = 0;
    v10 = v7[1];
    *&range.start.value = *v7;
    *&range.start.epoch = v10;
    *&range.duration.timescale = v7[2];
    IPAMapNormalizedTime(&v18, &range, &v19);
    memset(&v18, 0, sizeof(v18));
    end = v21;
    v11 = v7[1];
    *&range.start.value = *v7;
    *&range.start.epoch = v11;
    *&range.duration.timescale = v7[2];
    IPAMapNormalizedTime(&end, &range, &v18);
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *&range.start.value = v19;
    range.start.epoch = v20;
    end = v18;
    return CMTimeRangeFromTimeToTime(a3, &range.start, &end);
  }
}

id thresholdForSizePolicy(void *a1)
{
  v1 = a1;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __thresholdForSizePolicy_block_invoke;
  v5[3] = &unk_279A25F10;
  v6 = v1;
  v2 = v1;
  v3 = MEMORY[0x25F8B9090](v5);

  return v3;
}

BOOL __thresholdForSizePolicy_block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = a2 * 1.05;
  v4 = a3 * 1.05;
  [*(a1 + 32) transformSize:{a2 * 1.05, a3 * 1.05}];
  return v4 != v6 || v3 != v5;
}

__CFString *NSStringFromImageStyle(int a1)
{
  v1 = @"RKImageStyleFullSizePreview";
  v2 = @"RKImageStyleFaceTile";
  v3 = @"RKImageStyleMicro";
  if (a1 != 4096)
  {
    v3 = 0;
  }

  if (a1 != 2048)
  {
    v2 = v3;
  }

  if (a1 != 256)
  {
    v1 = v2;
  }

  v4 = @"RKImageStyleMaster";
  v5 = @"RKImageStyleLargePreview";
  if (a1 != 128)
  {
    v5 = 0;
  }

  if (a1 != 32)
  {
    v4 = v5;
  }

  if (a1 <= 255)
  {
    v1 = v4;
  }

  v6 = @"RKImageStyleThumbnail";
  v7 = @"RKImageStyleMasterThumbnail";
  if (a1 != 8)
  {
    v7 = 0;
  }

  if (a1 != 4)
  {
    v6 = v7;
  }

  if (a1 == 2)
  {
    v6 = @"RKImageStyleMini";
  }

  v8 = @"RKImageStyleTiny";
  if (a1 != 1)
  {
    v8 = 0;
  }

  if (!a1)
  {
    v8 = @"RKImageStyleNotSpecified";
  }

  if (a1 <= 1)
  {
    v6 = v8;
  }

  if (a1 <= 31)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

__CFString *NSStringFromImageStyleShort(int a1)
{
  v1 = @"fullszpv";
  v2 = @"facetile";
  v3 = @"micro";
  if (a1 != 4096)
  {
    v3 = 0;
  }

  if (a1 != 2048)
  {
    v2 = v3;
  }

  if (a1 != 256)
  {
    v1 = v2;
  }

  v4 = @"master";
  v5 = @"largepv";
  if (a1 != 128)
  {
    v5 = 0;
  }

  if (a1 != 32)
  {
    v4 = v5;
  }

  if (a1 <= 255)
  {
    v1 = v4;
  }

  v6 = @"thumb";
  v7 = @"mstrthum";
  if (a1 != 8)
  {
    v7 = 0;
  }

  if (a1 != 4)
  {
    v6 = v7;
  }

  if (a1 == 2)
  {
    v6 = @"mini";
  }

  v8 = @"tiny";
  if (a1 != 1)
  {
    v8 = 0;
  }

  if (!a1)
  {
    v8 = @"notspec";
  }

  if (a1 <= 1)
  {
    v6 = v8;
  }

  if (a1 <= 31)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

id PA::Matrix4d::description(PA::Matrix4d *this)
{
  v2 = [MEMORY[0x277CCAB68] string];
  [v2 appendFormat:@"%12.4f %12.4f %12.4f %12.4f\n", *this, *(this + 4), *(this + 8), *(this + 12)];
  [v2 appendFormat:@"%12.4f %12.4f %12.4f %12.4f\n", *(this + 1), *(this + 5), *(this + 9), *(this + 13)];
  [v2 appendFormat:@"%12.4f %12.4f %12.4f %12.4f\n", *(this + 2), *(this + 6), *(this + 10), *(this + 14)];
  [v2 appendFormat:@"%12.4f %12.4f %12.4f %12.4f\n", *(this + 3), *(this + 7), *(this + 11), *(this + 15)];

  return v2;
}

BOOL PA::Matrix4d::invert(PA::Matrix4d *this)
{
  v1 = 0;
  memset(&v50[8], 0, 32);
  *v50 = 0x3FF0000000000000;
  *&v50[40] = 0x3FF0000000000000;
  v51 = 0u;
  v52 = 0u;
  memset(&v53[8], 0, 32);
  *v53 = 0x3FF0000000000000;
  *&v53[40] = 0x3FF0000000000000;
  v2 = *(this + 5);
  v46 = *(this + 4);
  v47 = v2;
  v3 = *(this + 7);
  v48 = *(this + 6);
  v49 = v3;
  v4 = *(this + 1);
  v42 = *this;
  v43 = v4;
  v5 = *(this + 3);
  v6 = &v42 + 1;
  v44 = *(this + 2);
  v45 = v5;
  while (1)
  {
    v7 = *(&v42 + 5 * v1);
    if (v1 == 3)
    {
      v8 = 15;
      v9 = 11;
      v10 = 7;
    }

    else
    {
      v11 = v6;
      v12 = v1 + 1;
      v13 = v1;
      do
      {
        v14 = *v11++;
        v15 = v14;
        if (fabs(v14) > fabs(v7))
        {
          v13 = v12;
          v7 = v15;
        }

        ++v12;
      }

      while (v12 != 4);
      v10 = v1 + 4;
      v9 = v1 + 8;
      v8 = v1 + 12;
      if (v13 != v1)
      {
        v16 = *&v50[8 * v1];
        *&v50[8 * v1] = *&v50[8 * v13];
        *&v50[8 * v13] = v16;
        v17 = *(&v42 + v1);
        *(&v42 + v1) = *(&v42 + v13);
        *(&v42 + v13) = v17;
        v18 = 8 * v13;
        v19 = v18 + 32;
        v20 = *&v50[8 * v10];
        *&v50[8 * v10] = *&v50[v18 + 32];
        *&v50[v19] = v20;
        v21 = *(&v42 + v10);
        *(&v42 + v10) = *(&v42 + v18 + 32);
        *(&v42 + v19) = v21;
        v22 = v18 + 64;
        v23 = *&v50[8 * v9];
        *&v50[8 * v9] = *&v50[v18 + 64];
        *&v50[v22] = v23;
        v24 = *(&v42 + v9);
        *(&v42 + v9) = *(&v42 + v18 + 64);
        *(&v42 + v22) = v24;
        v18 += 96;
        v25 = *&v50[8 * v8];
        *&v50[8 * v8] = *&v50[v18];
        *&v50[v18] = v25;
        v26 = *(&v42 + v8);
        *(&v42 + v8) = *(&v42 + v18);
        *(&v42 + v18) = v26;
      }
    }

    if (v7 == 0.0)
    {
      return v7 != 0.0;
    }

    v27 = 1.0 / v7 * *(&v42 + v1);
    *(&v42 + v1) = v27;
    v28 = 1.0 / v7 * *&v50[8 * v1];
    *&v50[8 * v1] = v28;
    *(&v42 + v10) = 1.0 / v7 * *(&v42 + v10);
    *&v50[8 * v10] = 1.0 / v7 * *&v50[8 * v10];
    *(&v42 + v9) = 1.0 / v7 * *(&v42 + v9);
    *&v50[8 * v9] = 1.0 / v7 * *&v50[8 * v9];
    *(&v42 + v8) = 1.0 / v7 * *(&v42 + v8);
    *&v50[8 * v8] = 1.0 / v7 * *&v50[8 * v8];
    v29 = (&v42 + 2 * v1);
    if (!v1)
    {
      goto LABEL_14;
    }

    v30 = *(&v42 + 4 * v1);
    *&v42 = *&v42 - v27 * v30;
    *v50 = *v50 - v28 * v30;
    v31 = *&v50[8 * v10];
    *&v44 = *&v44 - *(&v42 + v10) * v30;
    *&v50[32] = *&v50[32] - v31 * v30;
    *&v46 = *&v46 - *(&v42 + v9) * v30;
    *&v52 = *&v52 - *&v50[8 * v9] * v30;
    *&v48 = *&v48 - *(&v42 + v8) * v30;
    *&v53[16] = *&v53[16] - *&v50[8 * v8] * v30;
    if (v1 != 1)
    {
      v27 = *(&v42 + v1);
      v28 = *&v50[8 * v1];
LABEL_14:
      v32 = v29[1];
      *(&v42 + 1) = *(&v42 + 1) - v27 * v32;
      *&v50[8] = *&v50[8] - v28 * v32;
      v33 = *&v50[8 * v10];
      *(&v44 + 1) = *(&v44 + 1) - *(&v42 + v10) * v32;
      *&v50[40] = *&v50[40] - v33 * v32;
      *(&v46 + 1) = *(&v46 + 1) - *(&v42 + v9) * v32;
      *(&v52 + 1) = *(&v52 + 1) - *&v50[8 * v9] * v32;
      *(&v48 + 1) = *(&v48 + 1) - *(&v42 + v8) * v32;
      *&v53[24] = *&v53[24] - *&v50[8 * v8] * v32;
      if (v1 == 2)
      {
        goto LABEL_16;
      }
    }

    v34 = v29[2];
    *&v43 = *&v43 - *(&v42 + v1) * v34;
    *&v50[16] = *&v50[16] - *&v50[8 * v1] * v34;
    v35 = *&v50[8 * v10];
    *&v45 = *&v45 - *(&v42 + v10) * v34;
    *&v51 = *&v51 - v35 * v34;
    *&v47 = *&v47 - *(&v42 + v9) * v34;
    *v53 = *v53 - *&v50[8 * v9] * v34;
    *&v49 = *&v49 - *(&v42 + v8) * v34;
    *&v53[32] = *&v53[32] - *&v50[8 * v8] * v34;
    if (v1 == 3)
    {
      v37 = *v53;
      *(this + 4) = v52;
      *(this + 5) = v37;
      v38 = *&v53[32];
      *(this + 6) = *&v53[16];
      *(this + 7) = v38;
      v39 = *&v50[16];
      *this = *v50;
      *(this + 1) = v39;
      v40 = v51;
      *(this + 2) = *&v50[32];
      *(this + 3) = v40;
      return v7 != 0.0;
    }

LABEL_16:
    v36 = v29[3];
    *(&v43 + 1) = *(&v43 + 1) - *(&v42 + v1) * v36;
    *&v50[24] = *&v50[24] - *&v50[8 * v1] * v36;
    *(&v45 + 1) = *(&v45 + 1) - *(&v42 + v10) * v36;
    *(&v51 + 1) = *(&v51 + 1) - *&v50[8 * v10] * v36;
    *(&v47 + 1) = *(&v47 + 1) - *(&v42 + v9) * v36;
    *&v53[8] = *&v53[8] - *&v50[8 * v9] * v36;
    *(&v49 + 1) = *(&v49 + 1) - *(&v42 + v8) * v36;
    *&v53[40] = *&v53[40] - *&v50[8 * v8] * v36;
    v6 += 5;
    ++v1;
  }
}

id IPAAdjustmentGetLog()
{
  if (IPAMakeLogs_predicate != -1)
  {
    dispatch_once(&IPAMakeLogs_predicate, &__block_literal_global_521);
  }

  v1 = adjustmentLog;

  return v1;
}

uint64_t __IPAMakeLogs_block_invoke()
{
  v0 = os_log_create("com.apple.photos.imaging", "adjustments");
  v1 = adjustmentLog;
  adjustmentLog = v0;

  v2 = os_log_create("com.apple.photos.imaging", "video");
  v3 = videoLog;
  videoLog = v2;

  colorTransformLog = os_log_create("com.apple.photos.imaging", "colortransform");

  return MEMORY[0x2821F96F8]();
}

id IPAVideoGetLog()
{
  if (IPAMakeLogs_predicate != -1)
  {
    dispatch_once(&IPAMakeLogs_predicate, &__block_literal_global_521);
  }

  v1 = videoLog;

  return v1;
}

id IPAColorTransformGetLog()
{
  if (IPAMakeLogs_predicate != -1)
  {
    dispatch_once(&IPAMakeLogs_predicate, &__block_literal_global_521);
  }

  v1 = colorTransformLog;

  return v1;
}

id IPAAdjustmentError(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v10 = a2;
  if ([v10 length])
  {
    v16 = &a9;
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v10 arguments:&a9];
    v12 = v11;
    if (v11)
    {
      v17 = @"reason";
      v18[0] = v11;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = 0;
LABEL_6:
  v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPAAdjustmentErrorDomain" code:a1 userInfo:{v13, v16}];

  return v14;
}

void IPAAdjustmentCurrentVersionForIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (IPAAdjustmentCurrentVersionForIdentifier_s_guard != -1)
  {
    dispatch_once(&IPAAdjustmentCurrentVersionForIdentifier_s_guard, &__block_literal_global_831);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_9:
    _PFAssertFailHandler();
    __IPAAdjustmentCurrentVersionForIdentifier_block_invoke();
    return;
  }

  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_3:
  v3 = [IPAAdjustmentCurrentVersionForIdentifier_s_currentVersionMapping objectForKeyedSubscript:v2];
  if (!v3)
  {
    v3 = [IPAAdjustmentVersion versionForMajor:1 minor:0];
  }

  v4 = v3;
}

void __IPAAdjustmentCurrentVersionForIdentifier_block_invoke()
{
  v14[11] = *MEMORY[0x277D85DE8];
  v13[0] = @"Effect";
  v12 = [IPAAdjustmentVersion versionFromArchivalRepresentation:@"1"];
  v14[0] = v12;
  v13[1] = @"Crop";
  v0 = [IPAAdjustmentVersion versionFromArchivalRepresentation:@"1"];
  v14[1] = v0;
  v13[2] = @"SmartTone";
  v1 = [IPAAdjustmentVersion versionFromArchivalRepresentation:@"1"];
  v14[2] = v1;
  v13[3] = @"SmartBlackAndWhite";
  v2 = [IPAAdjustmentVersion versionFromArchivalRepresentation:@"1"];
  v14[3] = v2;
  v13[4] = @"WhiteBalance";
  v3 = [IPAAdjustmentVersion versionFromArchivalRepresentation:@"1"];
  v14[4] = v3;
  v13[5] = @"RedEyeBB";
  v4 = [IPAAdjustmentVersion versionFromArchivalRepresentation:@"1"];
  v14[5] = v4;
  v13[6] = @"AutoEnhance";
  v5 = [IPAAdjustmentVersion versionFromArchivalRepresentation:@"1"];
  v14[6] = v5;
  v13[7] = @"PosterFrame";
  v6 = [IPAAdjustmentVersion versionForMajor:1 minor:0];
  v14[7] = v6;
  v13[8] = @"Trim";
  v7 = [IPAAdjustmentVersion versionForMajor:1 minor:0];
  v14[8] = v7;
  v13[9] = @"SloMo";
  v8 = [IPAAdjustmentVersion versionForMajor:1 minor:0];
  v14[9] = v8;
  v13[10] = @"PortraitVideo";
  v9 = [IPAAdjustmentVersion versionForMajor:1 minor:0];
  v14[10] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:11];
  v11 = IPAAdjustmentCurrentVersionForIdentifier_s_currentVersionMapping;
  IPAAdjustmentCurrentVersionForIdentifier_s_currentVersionMapping = v10;
}

uint64_t IPAAdjustmentsComeFromSupportedApp(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (IPAAdjustmentsComeFromSupportedApp_s_guard != -1)
  {
    dispatch_once(&IPAAdjustmentsComeFromSupportedApp_s_guard, &__block_literal_global_509);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = 1;
    goto LABEL_9;
  }

  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_3:
  v3 = [v2 lowercaseString];
  if (v3)
  {
    v4 = [IPAAdjustmentsComeFromSupportedApp_s_supportedOriginators containsObject:v3];
  }

  else
  {
    v4 = 0;
  }

LABEL_9:
  return v4;
}

void __IPAAdjustmentsComeFromSupportedApp_block_invoke()
{
  v7[5] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [@"com.apple.photos" lowercaseString];
  v7[2] = v1;
  v2 = [@"com.apple.mobileslideshow" lowercaseString];
  v7[3] = v2;
  v3 = [@"com.apple.camera" lowercaseString];
  v7[4] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];
  v5 = [v0 setWithArray:v4];
  v6 = IPAAdjustmentsComeFromSupportedApp_s_supportedOriginators;
  IPAAdjustmentsComeFromSupportedApp_s_supportedOriginators = v5;
}

uint64_t IPAAdjustmentsComeFromOSXPhotos(void *a1)
{
  v1 = a1;
  if (IPAAdjustmentsComeFromOSXPhotos_s_guard != -1)
  {
    dispatch_once(&IPAAdjustmentsComeFromOSXPhotos_s_guard, &__block_literal_global_519);
  }

  v2 = [v1 lowercaseString];
  if (v2)
  {
    v3 = [IPAAdjustmentsComeFromOSXPhotos_s_supportedOriginators containsObject:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __IPAAdjustmentsComeFromOSXPhotos_block_invoke()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [@"com.apple.photos" lowercaseString];
  v5[2] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:3];
  v3 = [v0 setWithArray:v2];
  v4 = IPAAdjustmentsComeFromOSXPhotos_s_supportedOriginators;
  IPAAdjustmentsComeFromOSXPhotos_s_supportedOriginators = v3;
}

void std::__throw_out_of_range[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception);
  __cxa_throw(exception, off_279A25E18, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void sub_25E5C8B6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PA::Rect>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__throw_length_error[abi:ne200100]()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception);
  __cxa_throw(exception, off_279A25E10, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::vector<PA::Rect>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<PA::Rect>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PA::Rect>>(v10);
    }

    v11 = (32 * v7);
    v12 = a2[1];
    *v11 = *a2;
    v11[1] = v12;
    v6 = 32 * v7 + 32;
    v13 = *(a1 + 8) - *a1;
    v14 = v11 - v13;
    memcpy(v11 - v13, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
  }

  *(a1 + 8) = v6;
}

void std::vector<PA::Rect>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PA::Rect>>(a2);
  }

  std::vector<PA::Rect>::__throw_length_error[abi:ne200100]();
}

void sub_25E5C9378(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  MEMORY[0x25F8B8D30](v3, 0x20C40960023A9);

  _Unwind_Resume(a1);
}

void sub_25E5C9478(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  MEMORY[0x25F8B8D30](v2, 0x20C40960023A9);

  _Unwind_Resume(a1);
}

void sub_25E5CCF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E5CD58C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25E5CD7E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL PA::Region::Includes(PA::Region *this, const PA::Region *a2)
{
  if (!*(a2 + 3))
  {
    return 0;
  }

  std::unordered_set<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::unordered_set(v5, a2);
  PA::Region::Break(*(this + 2), v5);
  PA::Region::MergeVertically(v5);
  v3 = v6 == 0;
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v5);
  return v3;
}

void sub_25E5CD9B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_set<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect const&>(a1, i + 2);
  }

  return a1;
}

uint64_t PA::Region::Break(uint64_t result, uint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v3 = result;
    v4 = (a2 + 16);
    do
    {
      v21 = 0u;
      v22 = 0u;
      v5 = v4;
      v23 = 1065353216;
      while (1)
      {
        v5 = *v5;
        if (!v5)
        {
          break;
        }

        if (PA::Rect::Intersects((v5 + 2), (v3 + 16)))
        {
          v6 = *(v5 + 2);
          v7 = *(v5 + 3);
          v8 = *(v5 + 4);
          v9 = *(v5 + 5);
          v10 = *(v3 + 24);
          if (v7 >= v10)
          {
            v13 = *(v5 + 2);
            v12 = *(v3 + 24);
            v10 = *(v5 + 3);
            v11 = *(v5 + 5);
          }

          else
          {
            *&v24 = v5[2];
            *(&v24 + 1) = v7;
            v25[0] = v8;
            v25[1] = v10 - v7;
            std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v21, &v24);
            v11 = v7 + v9 - v10;
            v9 = *(v5 + 5);
            v12 = *(v3 + 24);
            v13 = *(v5 + 2);
            v7 = *(v5 + 3);
          }

          v15 = v7 + v9;
          v16 = v12 + *(v3 + 40);
          if (v15 > v16)
          {
            v17 = *(v5 + 4);
            *&v24 = v13;
            *(&v24 + 1) = v16;
            v25[0] = v17;
            v25[1] = v15 - v16;
            std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v21, &v24);
            v11 = v16 - v10;
            v13 = *(v5 + 2);
          }

          v18 = *(v3 + 16);
          if (v13 < v18)
          {
            *&v24 = v6;
            *(&v24 + 1) = v10;
            v25[0] = v18 - v6;
            v25[1] = v11;
            std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v21, &v24);
            v13 = *(v5 + 2);
            v18 = *(v3 + 16);
          }

          v19 = v13 + *(v5 + 4);
          v20 = v18 + *(v3 + 32);
          if (v19 > v20)
          {
            *&v24 = v18 + *(v3 + 32);
            *(&v24 + 1) = v10;
            v25[0] = v6 + v8 - v20;
            v25[1] = v11;
            std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v21, &v24);
          }
        }

        else
        {
          v14 = *(v5 + 2);
          v24 = *(v5 + 1);
          *v25 = v14;
          std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v21, &v24);
        }
      }

      if (&v21 != a2)
      {
        *(a2 + 32) = v23;
        std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(a2, v22);
      }

      result = std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v21);
      v3 = *v3;
    }

    while (v3);
  }

  return result;
}

uint64_t PA::Region::MergeVertically(PA::Region *this)
{
  v34 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  *__p = 0u;
  v32 = 1065353216;
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__rehash<true>(&v30, *(this + 3));
  v2 = *(this + 2);
  if (v2)
  {
    v3 = vdupq_n_s64(0xFFFuLL);
    v4 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v24 = v4;
    v25 = v3;
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      v7 = __p[0];
      if (__p[0])
      {
        v8 = v2[1].f64[1];
        v9 = v2[2].f64[1];
        do
        {
          while (1)
          {
            v10.f64[0] = v6.f64[0];
            v10.f64[1] = v7[2];
            v11.f64[0] = v5.f64[0];
            v12 = v7[3];
            v13.i64[0] = vdupq_laneq_s64(vaddq_f64(v6, v5), 1).u64[0];
            *&v13.i64[1] = v12;
            v14 = vandq_s8(vaddq_s64(v13, v3), v4);
            if (vmovn_s64(vceqq_f64(vdupq_laneq_s64(v14, 1), v14)).u8[0] & 1) != 0 || (v15.i64[0] = vdupq_laneq_s64(v6, 1).u64[0], *&v15.i64[1] = v12 + v7[5], v16 = vandq_s8(vaddq_s64(v15, vdupq_n_s64(0xFFFuLL)), v4), (vmovn_s64(vceqq_f64(vdupq_laneq_s64(v16, 1), v16)).u8[0]))
            {
              v17 = vandq_s8(vaddq_s64(v10, vdupq_n_s64(0xFFFuLL)), v4);
              if (vmovn_s64(vceqq_f64(vdupq_laneq_s64(v17, 1), v17)).u8[0])
              {
                v11.f64[1] = v7[4];
                v18 = vandq_s8(vaddq_s64(vaddq_f64(v10, v11), vdupq_n_s64(0xFFFuLL)), v4);
                if (vmovn_s64(vceqq_f64(vdupq_laneq_s64(v18, 1), v18)).u8[0])
                {
                  break;
                }
              }
            }

            v7 = *v7;
            if (!v7)
            {
              goto LABEL_17;
            }
          }

          if (v12 >= v8)
          {
            v19 = v8;
          }

          else
          {
            v19 = v7[3];
          }

          v6.f64[1] = v19;
          v27 = v19;
          v28 = v6;
          v20 = v19 + v8 + v9 - v19;
          v21 = v12 + v7[5];
          if (v20 < v21)
          {
            v20 = v21;
          }

          v26 = v20 - v19;
          v5.f64[1] = v20 - v19;
          v29 = v5;
          v22 = std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::erase(&v30, v7);
          v3 = v25;
          v9 = v26;
          v6 = v28;
          v5 = v29;
          v4 = v24;
          v7 = v22;
          v8 = v27;
        }

        while (v22);
      }

LABEL_17:
      v33[0] = v6;
      v33[1] = v5;
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v30, v33);
      v2 = *&v2->f64[0];
      v4 = v24;
      v3 = v25;
    }

    while (v2);
  }

  if (&v30 != this)
  {
    *(this + 8) = v32;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(this, __p[0]);
  }

  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v30);
}

void sub_25E5CDE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

void std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(void *a1, uint64_t *a2)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_7;
  }

  for (i = 0; i != v4; ++i)
  {
    *(*a1 + 8 * i) = 0;
  }

  v6 = a1[2];
  a1[2] = 0;
  a1[3] = 0;
  if (v6)
  {
    while (a2)
    {
      v7 = *(a2 + 1);
      v8 = *(a2 + 2);
      v6[48] = *(a2 + 48);
      *(v6 + 1) = v7;
      *(v6 + 2) = v8;
      v9 = *v6;
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__node_insert_multi(a1, v6);
      a2 = *a2;
      v6 = v9;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    do
    {
      v10 = *v6;
      operator delete(v6);
      v6 = v10;
    }

    while (v10);
  }

  else
  {
LABEL_7:
    if (a2)
    {
      operator new();
    }
  }
}

void sub_25E5CE1F8(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::erase(void *a1, uint64_t *__p)
{
  v2 = a1[1];
  v4 = *__p;
  v3 = __p[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != __p);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *__p;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *__p;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *__p;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *__p;
  }

LABEL_27:
  *v7 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
  return v4;
}

BOOL std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(void *a1, void *a2)
{
  v2 = (*a2 + 4095) & 0xFFFFFFFF00000000 ^ ((a2[1] + 4095) >> 32 << 24) ^ ((a2[2] + 4095) >> 32 << 8);
  v3 = v2 ^ ((a2[3] + 4095) >> 32);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v2 ^ ((a2[3] + 4095) >> 32);
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = v3 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  result = PA::RectEqualTo::operator()(v10 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__node_insert_multi(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = vandq_s8(vshlq_u64(vaddq_s64(*(a2 + 24), vdupq_n_s64(0xFFFuLL)), xmmword_25E5E03D0), xmmword_25E5E03E0);
  v32 = v5.i64[0] ^ (*(a2 + 16) + 4095) & 0xFFFFFFFF00000000 ^ v5.i64[1] ^ ((*(a2 + 40) + 4095) >> 32);
  *(a2 + 8) = v32;
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v16 = *a1;
        *a1 = 0;
        if (v16)
        {
          operator delete(v16);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v17 = vcnt_s8(v6);
  v17.i16[0] = vaddlv_u8(v17);
  v18 = v17.u32[0];
  if (v17.u32[0] > 1uLL)
  {
    v19 = v32;
    if (v6 <= v32)
    {
      v19 = v32 % v6;
    }
  }

  else
  {
    v19 = (v6 - 1) & v32;
  }

  v20 = a2;
  v31 = *a1;
  v21 = *(*a1 + 8 * v19);
  if (v21)
  {
    v22 = 0;
    do
    {
      v23 = v21;
      v21 = *v21;
      if (!v21)
      {
        break;
      }

      v24 = v21[1];
      if (v18 > 1)
      {
        v25 = v21[1];
        if (v24 >= v6)
        {
          v25 = v24 % v6;
        }
      }

      else
      {
        v25 = v24 & (v6 - 1);
      }

      if (v25 != v19)
      {
        break;
      }

      v26 = v24 == v32 && PA::RectEqualTo::operator()(v21 + 2, v4);
      v27 = v26 != (v22 & 1);
      v28 = v22 & v27;
      v22 |= v27;
    }

    while (v28 != 1);
  }

  else
  {
    v23 = 0;
  }

  v29 = v20[1];
  if (v18 > 1)
  {
    if (v29 >= v6)
    {
      v29 %= v6;
    }
  }

  else
  {
    v29 &= v6 - 1;
  }

  if (!v23)
  {
    *v20 = *(a1 + 16);
    *(a1 + 16) = v20;
    v31[v29] = a1 + 16;
    if (!*v20)
    {
      goto LABEL_66;
    }

    v30 = *(*v20 + 8);
    if (v18 > 1)
    {
      if (v30 >= v6)
      {
        v30 %= v6;
      }
    }

    else
    {
      v30 &= v6 - 1;
    }

LABEL_65:
    *(*a1 + 8 * v30) = v20;
    goto LABEL_66;
  }

  *v20 = *v23;
  *v23 = v20;
  if (*v20)
  {
    v30 = *(*v20 + 8);
    if (v18 > 1)
    {
      if (v30 >= v6)
      {
        v30 %= v6;
      }
    }

    else
    {
      v30 &= v6 - 1;
    }

    if (v30 != v29)
    {
      goto LABEL_65;
    }
  }

LABEL_66:
  ++*(a1 + 24);
}

BOOL PA::Rect::Intersects(CGRect *this, const Rect *a2)
{
  *&v3.origin.x = *a2;
  *&v3.origin.y = a2[1];
  *&v3.size.width = a2[2];
  *&v3.size.height = a2[3];
  return CGRectIntersectsRect(*this, v3);
}

BOOL std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect const&>(void *a1, void *a2)
{
  v2 = (*a2 + 4095) & 0xFFFFFFFF00000000 ^ ((a2[1] + 4095) >> 32 << 24) ^ ((a2[2] + 4095) >> 32 << 8);
  v3 = v2 ^ ((a2[3] + 4095) >> 32);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v4);
  v6.i16[0] = vaddlv_u8(v6);
  v7 = v6.u32[0];
  if (v6.u32[0] > 1uLL)
  {
    v8 = v2 ^ ((a2[3] + 4095) >> 32);
    if (v3 >= *&v4)
    {
      v8 = v3 % *&v4;
    }
  }

  else
  {
    v8 = v3 & (*&v4 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v3)
    {
      break;
    }

    if (v7 > 1)
    {
      if (v11 >= *&v4)
      {
        v11 %= *&v4;
      }
    }

    else
    {
      v11 &= *&v4 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  result = PA::RectEqualTo::operator()(v10 + 2, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_25E5CEE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

PA::Region *PA::Region::Region(PA::Region *this, const PA::Rect *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 1065353216;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(a2 + 1) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (v4 = *(a2 + 2), (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) || (v5 = *(a2 + 3), (*&v5 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"PA::Region::Region(const Rect &)"];
    [v8 handleFailureInFunction:v9 file:@"IPARegion.mm" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"rect.IsFinite()"}];

    v4 = *(a2 + 2);
    v5 = *(a2 + 3);
  }

  if (v4 > 0.0 && v5 > 0.0)
  {
    v6 = *(a2 + 1);
    v10[0] = *a2;
    v10[1] = v6;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(this, v10);
  }

  return this;
}

uint64_t PA::Region::Intersects(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = (a2 + 16);
    do
    {
      v4 = v3;
      while (1)
      {
        v4 = *v4;
        if (!v4)
        {
          break;
        }

        if (PA::Rect::Intersects((v4 + 2), (v2 + 16)))
        {
          return 1;
        }
      }

      v2 = *v2;
    }

    while (v2);
    return 0;
  }

  return result;
}

void sub_25E5CF0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

double PA::Region::GetBounds(PA::Region *this)
{
  v1 = *MEMORY[0x277CBF3A0];
  v2 = *(MEMORY[0x277CBF3A0] + 8);
  v3 = *(MEMORY[0x277CBF3A0] + 16);
  v4 = *(MEMORY[0x277CBF3A0] + 24);
  if (!this)
  {
    return *MEMORY[0x277CBF3A0];
  }

  v5 = this;
  do
  {
    v6 = *(v5 + 2);
    v7 = *(v5 + 3);
    v8 = *(v5 + 4);
    v9 = *(v5 + 5);
    if (v3 > 0.0 && v4 > 0.0)
    {
      if (v8 > 0.0 && v9 > 0.0)
      {
        *&v1 = CGRectUnion(*&v1, *&v6);
      }

      v6 = v1;
      v7 = v2;
      v8 = v3;
      v9 = v4;
    }

    v5 = *v5;
    v1 = v6;
    v2 = v7;
    v3 = v8;
    v4 = v9;
  }

  while (v5);
  return v6;
}

void sub_25E5CF790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t PA::Region::RoundUp(PA::Region *this)
{
  std::unordered_set<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::unordered_set(v8, this);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::clear(this);
  for (i = v9; i; i = *&i->f64[0])
  {
    v3 = i[2];
    v7[0] = i[1];
    v4 = vrndmq_f64(v7[0]);
    v5 = vsubq_f64(vrndpq_f64(vaddq_f64(v4, vsubq_f64(vaddq_f64(v7[0], v3), v4))), v4);
    v7[0] = v4;
    v7[1] = v5;
    PA::Region::Add(this, v7);
  }

  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v8);
}

void sub_25E5CF830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void *std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t PA::Region::Add(PA::Region *this, const PA::Rect *a2)
{
  PA::Region::Region(v4, a2);
  PA::Region::Add(this, v4);
  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v4);
}

void sub_25E5CF998(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t PA::Region::Add(PA::Region *this, const PA::Region *a2)
{
  std::unordered_set<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::unordered_set(v4, a2);
  PA::Region::Break(*(this + 2), v4);
  PA::Region::Merge(this, v4);
  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v4);
}

void sub_25E5CF9FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t PA::Region::Merge(PA::Region *this, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  if (a2[3])
  {
    v30 = vdupq_n_s64(0xFFFFFFFFFFFFF000);
    v31 = vdupq_n_s64(0xFFFuLL);
    do
    {
      v4 = a2[2];
      v32 = *(v4 + 16);
      v5 = *(v4 + 32);
      v33 = *(v4 + 24);
      v6 = *(v4 + 40);
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::erase(a2, v4);
      v7 = v32 + v5;
      v8 = (this + 16);
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          v34 = v32;
          v35 = v33;
          v36 = v5;
          v37 = v6;
          std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(this, &v34);
          goto LABEL_31;
        }

        v10 = v8[2];
        v9 = v8[3];
        *v11.i64 = v32 + v5;
        *&v11.i64[1] = v10;
        v12 = vandq_s8(vaddq_s64(v11, v31), v30);
        if ((vmovn_s64(vceqq_f64(vdupq_laneq_s64(v12, 1), v12)).u8[0] & 1) == 0)
        {
          *v13.i64 = v32;
          *&v13.i64[1] = v10 + v8[4];
          v14 = vandq_s8(vaddq_s64(v13, vdupq_n_s64(0xFFFuLL)), v30);
          if ((vmovn_s64(vceqq_f64(vdupq_laneq_s64(v14, 1), v14)).u8[0] & 1) == 0)
          {
            continue;
          }
        }

        v15 = v9 + v8[5];
        *v16.i64 = v33;
        *&v16.i64[1] = v15;
        v17 = vandq_s8(vaddq_s64(v16, vdupq_n_s64(0xFFFuLL)), v30);
        if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v17, 1), v17)).u8[0])
        {
          *v18.i64 = v33 + v6;
          v18.i64[1] = v8[3];
          v19 = vandq_s8(vaddq_s64(v18, vdupq_n_s64(0xFFFuLL)), v30);
          if (vmovn_s64(vcgtq_f64(v19, vdupq_laneq_s64(v19, 1))).u8[0])
          {
            break;
          }
        }
      }

      if (v10 >= v32)
      {
        v20 = v32;
      }

      else
      {
        v20 = v8[2];
      }

      v21 = v10 + v8[4];
      if (v7 < v21)
      {
        v7 = v21;
      }

      v22 = v7 - v20;
      if (v33 >= v9)
      {
        v9 = v33;
      }

      v29 = v33 + v6;
      if (v15 >= v33 + v6)
      {
        v23 = v33 + v6;
      }

      else
      {
        v23 = v15;
      }

      v34 = v20;
      v35 = v9;
      v36 = v22;
      v37 = v23 - v9;
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(a2, &v34);
      v24 = v8[3];
      if (v33 >= v24)
      {
        if (v33 <= v24)
        {
          goto LABEL_25;
        }

        v25 = v8[4];
        v34 = v8[2];
        v35 = v24;
        v36 = v25;
        v37 = v33 - v24;
      }

      else
      {
        v34 = v32;
        v35 = v33;
        v36 = v5;
        v37 = v24 - v33;
      }

      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(a2, &v34);
LABEL_25:
      v26 = v8[3] + v8[5];
      if (v29 >= v26)
      {
        if (v29 <= v26)
        {
          goto LABEL_30;
        }

        v34 = v32;
        v35 = v26;
        v36 = v5;
        v37 = v29 - v26;
      }

      else
      {
        v27 = v8[4];
        v34 = v8[2];
        v35 = v33 + v6;
        v36 = v27;
        v37 = v26 - v29;
      }

      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(a2, &v34);
LABEL_30:
      std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::erase(this, v8);
LABEL_31:
      ;
    }

    while (a2[3]);
  }

  return PA::Region::MergeVertically(this);
}

uint64_t PA::Region::ShrinkInRect(PA::Region *this, float64_t a2, float64_t a3, const PA::Rect *a4)
{
  PA::Region::Region(v10, a4);
  PA::Region::Break(*(this + 2), v10);
  PA::Region::MergeVertically(v10);
  PA::Region::Grow(v10, a2, a3);
  PA::Region::Region(v9, a4);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__move_assign(this, v9);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v9);
  PA::Region::Break(v11, this);
  PA::Region::MergeVertically(this);
  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v10);
}

void sub_25E5CFDD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t PA::Region::Grow(PA::Region *this, float64_t a2, float64_t a3)
{
  std::unordered_set<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::unordered_set(v14, this);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::clear(this);
  v4 = v15;
  if (v15)
  {
    v5.f64[0] = a2;
    v5.f64[1] = a3;
    v12 = v5;
    do
    {
      v6 = v4[2];
      v13[0] = v4[1];
      v7 = vsubq_f64(v13[0], v12);
      v8 = vsubq_f64(vaddq_f64(vaddq_f64(v7, vsubq_f64(vaddq_f64(v13[0], v6), v7)), v12), v7);
      v13[0] = v7;
      v13[1] = v8;
      PA::Region::Add(this, v13);
      v4 = *&v4->f64[0];
    }

    while (v4);
  }

  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v14);
}

uint64_t PA::Region::Clip(PA::Region *this, const PA::Rect *a2)
{
  PA::Region::Region(v4, a2);
  PA::Region::Clip(this, v4);
  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v4);
}

void sub_25E5D0028(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t PA::Region::Clip(PA::Region *this, const PA::Region *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 1065353216;
  for (i = *(this + 2); i; i = *i)
  {
    for (j = *(a2 + 2); j; j = *j)
    {
      v12 = CGRectIntersection(*(i + 2), *(j + 2));
      if (v12.size.width > 0.0 && v12.size.height > 0.0)
      {
        v10 = v12;
        std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__emplace_unique_key_args<PA::RegionRect,PA::RegionRect>(&v7, &v10);
      }
    }
  }

  if (&v7 != this)
  {
    *(this + 8) = v9;
    std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<PA::RegionRect,void *> *>>(this, v8);
  }

  PA::Region::MergeVertically(this);
  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(&v7);
}

void sub_25E5D0370(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_25E5D0464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t PA::Region::Diff(PA::Region *this, const PA::Region *a2)
{
  std::unordered_set<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::unordered_set(v5, a2);
  PA::Region::Break(*(this + 2), v5);
  PA::Region::Break(*(a2 + 2), this);
  PA::Region::Merge(this, v5);
  return std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(v5);
}

void sub_25E5D05EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_25E5D0650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_25E5D08B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__hash_table<PA::RegionRect,PA::RectHash,PA::RectEqualTo,std::allocator<PA::RegionRect>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void sub_25E5D0F00(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x25F8B8D30](v4, 0x10A0C408EF24B1CLL);

  _Unwind_Resume(a1);
}

double PFSizeFitAspectInSize(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  v3 = a2 / a3;
  if (a2 / a3 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  if (v3 >= a1 && v3 > a1)
  {
    return floor(a3 * a1);
  }

  return a2;
}

double PFSizeFitAspectInSizeRounded(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  v3 = a2 / a3;
  if (a2 / a3 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  if (v3 >= a1 && v3 > a1)
  {
    return round(a3 * a1);
  }

  return a2;
}

double PFSizeFitAspectInSizeNoRounding(double a1, double a2, double a3)
{
  if (a1 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  v3 = a2 / a3;
  if (a2 / a3 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  if (v3 >= a1 && v3 > a1)
  {
    return a3 * a1;
  }

  return a2;
}

double PFSizeGetScaleToFit(double a1, double a2, double a3, double a4)
{
  if (NSEqualSizes(*&a1, *MEMORY[0x277CCA870]))
  {
    v10 = _PFAssertFailHandler();
    return PFSizeFitSizeInSquare(v10, v11, v12);
  }

  else
  {
    result = a3 / a1;
    v9 = 0.0;
    if (a1 == 0.0)
    {
      result = 0.0;
    }

    if (a2 != 0.0)
    {
      v9 = a4 / a2;
    }

    if (result >= v9)
    {
      return v9;
    }
  }

  return result;
}

double PFSizeFitSizeInSquare(unint64_t a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    return a1;
  }

  result = a1;
  if (a2 <= a3)
  {
    return ceil(a2 / a3 * result);
  }

  return result;
}

double PFSizeFitSizeInSize(double a1, double a2, double a3, double a4)
{
  v4 = a1 / a2;
  if (v4 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  v5 = a3 / a4;
  if (a3 / a4 <= 0.0)
  {
    return *MEMORY[0x277CCA870];
  }

  if (v5 >= v4 && v5 > v4)
  {
    return floor(a4 * v4);
  }

  return a3;
}

double PFSizeConformToAspect(double a1, double a2, double a3)
{
  v4 = a1;
  v5 = a2 / a1;
  if (v5 != a3)
  {
    v7 = atan(v5);
    v8 = atan(1.0 / a3);
    v9 = sqrt(a2 * a2 + v4 * v4) * cos(v8 - v7);
    return __sincos_stret(v8).__cosval * v9;
  }

  return v4;
}

uint64_t PFSizeRotate(uint64_t result)
{
  if (result >= 0)
  {
    v1 = result;
  }

  else
  {
    v1 = -result;
  }

  if (__ROR8__(0x4FA4FA4FA4FA4FA5 * v1, 1) >= 0x2D82D82D82D82D9uLL)
  {
    v2 = _PFAssertFailHandler();
    return PFSizeEnforceMinDimension(v2);
  }

  return result;
}

double PFSizeEnforceMinDimensions(int a1, double result, double a3, double a4, double a5)
{
  if (a1 && result > 0.0 && a3 > 0.0)
  {
    if (result < a4 || a3 < a5)
    {
      v5 = a4 / result;
      v6 = a5 / a3;
      if (v5 < v6)
      {
        v5 = v6;
      }

      return result * v5;
    }
  }

  else if (result < a4)
  {
    return a4;
  }

  return result;
}

double PFSizeEnforceMaxDimensions(int a1, double result, double a3, double a4, double a5)
{
  if (a1 && result > 0.0 && a3 > 0.0)
  {
    if (result > a4 || a3 > a5)
    {
      v5 = a4 / result;
      v6 = a5 / a3;
      if (v5 >= v6)
      {
        v5 = v6;
      }

      return result * v5;
    }
  }

  else if (result >= a4)
  {
    return a4;
  }

  return result;
}

double PAConvertImageRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, double a11, double a12)
{
  v20 = a11 / a7;
  v21 = a12 / a8;
  v24 = CGRectOffset(*&a1, -a5, -a6);
  v24.origin.x = v20 * v24.origin.x;
  v24.origin.y = v21 * v24.origin.y;
  v24.size.width = v20 * v24.size.width;
  v24.size.height = v21 * v24.size.height;
  v25 = CGRectStandardize(v24);

  *&result = CGRectOffset(v25, a9, a10);
  return result;
}

id PAConvertImageRegion(void *a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v17 = [a1 mutableCopy];
  [v17 translateBy:{-a2, -a3}];
  [v17 scaleBy:{a8 / a4, a9 / a5}];
  [v17 translateBy:{a6, a7}];

  return v17;
}

double PARectVertex(char a1, double result, double a3, double a4)
{
  v4 = result + a4;
  if (a1)
  {
    return v4;
  }

  return result;
}

uint64_t PAOrientationTransformRectVertex(uint64_t a1, unsigned int a2)
{
  v2 = __rbit32(a2) >> 30;
  v3 = a2 ^ 2;
  v4 = __rbit32(a2 ^ 2) >> 30;
  if (a1 != 8)
  {
    v4 = a2;
  }

  if (a1 != 7)
  {
    v2 = v4;
  }

  v5 = __rbit32(~a2) >> 30;
  v6 = __rbit32(a2 ^ 1) >> 30;
  if (a1 != 6)
  {
    v6 = a2;
  }

  if (a1 != 5)
  {
    v5 = v6;
  }

  if (a1 <= 6)
  {
    v2 = v5;
  }

  if (a1 != 4)
  {
    v3 = a2;
  }

  if (a1 == 3)
  {
    v3 = a2 ^ 3;
  }

  if (a1 == 2)
  {
    v3 = a2 ^ 1;
  }

  if (a1 <= 4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

double PARelativePointInRect(double a1, double a2, double a3, double a4, double a5)
{
  result = 0.0;
  if (a5 != 0.0)
  {
    return (a1 - a3) / a5;
  }

  return result;
}

double PAAnchorPointFromRectToRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  result = 0.5;
  if (vabdd_f64(a7, a3) > 0.00000011920929)
  {
    return -(a5 - a1) / (a7 - a3);
  }

  return result;
}

double PARectResizeByMovingRelativePoint(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  v16 = a1 + a9 * a3;
  if (a5 != a9)
  {
    a3 = (a1 + a5 * a3 + a7 - v16) / (a5 - a9);
  }

  return v16 - a9 * a3;
}

double PARectEnforceMinimumSizeAndAspectRatio(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9)
{
  if (a1 | a2 && a7 * a2 < a8 * a1)
  {
    v9 = a1 / a2;
    v10 = INFINITY;
    if (!a1)
    {
      v10 = NAN;
    }

    if (!a2)
    {
      v9 = v10;
    }

    a7 = a8 * v9;
  }

  return fmin(a3, a3 + a9 * (a5 - a7));
}

double PAAspectRatioValue(unint64_t a1, unint64_t a2)
{
  result = a1 / a2;
  v3 = INFINITY;
  if (!a1)
  {
    v3 = NAN;
  }

  if (!a2)
  {
    return v3;
  }

  return result;
}

double PARectAspectConstrain(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14)
{
  if (a1 | a2)
  {
    return a3 + a9 * a5 - a9 * (((a4 + a8 * a6 - (a4 + a10 * a6)) * ((a8 - a10) * a2) + (a3 + a7 * a5 - (a3 + a9 * a5)) * ((a7 - a9) * a1)) / ((a8 - a10) * a2 * ((a8 - a10) * a2) + (a7 - a9) * a1 * ((a7 - a9) * a1)) * a1);
  }

  _PFAssertFailHandler();
  return PARectResizeToFitInRect(v21, v22, v23, v24, v25, v26, v27, v28, a11, a12, a13, a14);
}

BOOL PAAspectRatioIsEqual(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 | a4)
  {
    v4 = a4 * a1 == a3 * a2;
  }

  else
  {
    v4 = (a1 | a2 | a3 | a4) == 0;
  }

  if (a1 | a2)
  {
    return v4;
  }

  else
  {
    return (a1 | a2 | a3 | a4) == 0;
  }
}

uint64_t PAAspectRatioWithOrientation(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 - 5) >= 4)
  {
    return a1;
  }

  return a2;
}

unint64_t PAAspectRatioConformWidth(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a3 / a4;
  v5 = a2;
  if (result / a2 > v4)
  {
    return vcvtmd_u64_f64(v4 * v5);
  }

  if (v5 / result > v4)
  {
    return vcvtpd_u64_f64(v5 / v4);
  }

  return result;
}

double PAAspectRatioConformHeight(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  result = a3 / a4;
  v5 = a1;
  if (a1 / a2 > result)
  {
    return v5 / result;
  }

  if (a2 / v5 > result)
  {
    return result * v5;
  }

  return result;
}

uint64_t PAAspectRatioCompare(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a1 / a2;
  v5 = INFINITY;
  if (!a1)
  {
    v5 = NAN;
  }

  if (!a2)
  {
    v4 = v5;
  }

  v6 = a3 / a4;
  v7 = INFINITY;
  if (!a3)
  {
    v7 = NAN;
  }

  if (!a4)
  {
    v6 = v7;
  }

  if (v4 < v6)
  {
    return -1;
  }

  else
  {
    return v4 > v6;
  }
}

double PAExtractRotationFromStraightenAffineTransform(__n128 *a1)
{
  v6 = 0;
  v4 = 0u;
  v5 = 0u;
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  PADecomposeAffineTransform(v3, &v4);
  result = *&v5 * 180.0 / 3.14159265;
  if (result < 0.0)
  {
    return result + 360.0;
  }

  return result;
}

__n128 PADecomposeAffineTransform@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1->n128_f64[0];
  v5 = a1->n128_f64[0];
  v6 = a1[1].n128_f64[0];
  v7 = v6;
  v8 = hypotf(v5, v7);
  v9 = a1->n128_f64[1];
  v10 = v9;
  v11 = a1[1].n128_f64[1];
  v12 = v11;
  v13 = hypotf(v10, v12);
  v14 = v4 * v11 - v9 * v6;
  v15 = v14 < 0.0;
  if (v14 <= 0.0)
  {
    v16 = 0.0;
    if (v15)
    {
      if (v4 >= 0.0)
      {
        v19 = -v9 - v6;
        v20 = v4 - v11;
        v16 = atan2f(v19, v20);
        v13 = -v13;
      }

      else
      {
        v17 = v6 + v9;
        v18 = v11 - v4;
        v16 = atan2f(v17, v18);
        v8 = -v8;
      }
    }
  }

  else
  {
    v16 = atan2(v9 - v6, v4 + v11);
  }

  *a2 = v8;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  result = a1[2];
  *(a2 + 24) = result;
  return result;
}

double PAConvertCropRectWithStraightenAffineTransform(_OWORD *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = a1[1];
  *&v21.a = *a1;
  *&v21.c = v11;
  *&v21.tx = a1[2];
  *&v11 = a7;
  v13 = -_PAOffsetFromDGCropToCICropWithTransform(&v21, *(&v11 - 8));
  v15 = -v14;
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;

  *&result = CGRectOffset(*&v16, v13, v15);
  return result;
}

double _PAOffsetFromDGCropToCICropWithTransform(CGAffineTransform *a1, CGSize a2)
{
  height = a2.height;
  width = a2.width;
  v4 = *&a1->c;
  *&v7.a = *&a1->a;
  *&v7.c = v4;
  *&v7.tx = *&a1->tx;
  v5 = 0;
  *&v4 = 0;
  v8 = CGRectApplyAffineTransform(*(&height - 3), &v7);
  *&result = CGRectIntegral(v8);
  return result;
}

CGFloat PAStraightenAffineTransformWithRadians@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>)
{
  v8 = MEMORY[0x277CBF2C0];
  v9 = *MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *a1 = *MEMORY[0x277CBF2C0];
  *(a1 + 16) = v10;
  v11 = *(v8 + 32);
  *(a1 + 32) = v11;
  *&v26.a = v9;
  *&v26.c = v10;
  *&v26.tx = v11;
  *&v9 = 0;
  *&v10 = 0;
  *&v11 = a3;
  v12 = a4;
  MidX = CGRectGetMidX(*&v9);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = a3;
  v27.size.height = a4;
  MidY = CGRectGetMidY(v27);
  CGAffineTransformTranslate(a1, &v26, MidX, MidY);
  v15 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v15;
  *&v25.tx = *(a1 + 32);
  CGAffineTransformRotate(&v26, &v25, a2);
  v16 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v16;
  *(a1 + 32) = *&v26.tx;
  v17 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v17;
  *&v25.tx = *(a1 + 32);
  v18 = 0;
  *&v17 = 0;
  v19 = a3;
  v20 = a4;
  v21 = -CGRectGetMidX(*(&v17 - 8));
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = a3;
  v28.size.height = a4;
  v22 = CGRectGetMidY(v28);
  CGAffineTransformTranslate(&v26, &v25, v21, -v22);
  v23 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v23;
  result = v26.tx;
  *(a1 + 32) = *&v26.tx;
  return result;
}

double PAConvertCICropRectToDGCropRect(double a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  memset(&v21, 0, sizeof(v21));
  PAStraightenAffineTransformWithRadians(&v21, a5 * 3.14159265 / 180.0, a6, a7);
  v23.width = a6;
  v23.height = a7;
  v13 = -_PAOffsetFromDGCropToCICropWithTransform(&v21, v23);
  v15 = -v14;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;

  *&result = CGRectOffset(*&v16, v13, v15);
  return result;
}

double PAConvertDGCropRectToCICropRect(double a1, double a2, double a3, double a4, double a5, CGFloat a6, CGFloat a7)
{
  memset(&v21, 0, sizeof(v21));
  PAStraightenAffineTransformWithRadians(&v21, a5 * 3.14159265 / 180.0, a6, a7);
  v23.width = a6;
  v23.height = a7;
  v13 = _PAOffsetFromDGCropToCICropWithTransform(&v21, v23);
  v15 = v14;
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;

  *&result = CGRectOffset(*&v16, v13, v15);
  return result;
}

double _rectWithAspectRatio(unint64_t a1, unint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = vcvtmd_u64_f64(sqrt(a6 * (a5 * a7) * a2 / a1) + 0.5);
  v8 = v7 | 1;
  v9 = (v7 & 1) + v7;
  if (vcvtmd_u64_f64(a6))
  {
    v9 = v8;
  }

  v10 = vcvtmd_u64_f64(a5);
  v11 = vcvtmd_u64_f64(floor(a1 * v9 / a2) + 0.5);
  v12 = v11 | 1;
  v13 = (v11 & 1) + v11;
  if (v10)
  {
    v13 = v12;
  }

  return a3 - (v13 - v10) * 0.5;
}

double PACropRectWithCropSizeAndPreferredCenterPoint(double a1, double a2, double a3, double a4, double a5)
{
  result = 0.0;
  if (a3 > 0.0)
  {
    v7 = a1;
    v8 = fmin(v7, a3);
    return fmax(fmin(v8 * -0.5 + v7 * a5, (a1 - v8)), 0.0);
  }

  return result;
}

__n128 PARecomposeAffineTransform@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __sincos_stret(*(a1 + 16));
  v4.f64[0] = v5.__cosval;
  v6 = *a1;
  v7.f64[0] = -*a1;
  v7.f64[1] = v5.__cosval;
  v4.f64[1] = v5.__sinval;
  v6.f64[0] = v5.__sinval;
  *a2 = vmulq_f64(*a1, v4);
  *(a2 + 16) = vmulq_f64(v7, v6);
  result = *(a1 + 24);
  *(a2 + 32) = result;
  return result;
}

double PAAffineTransformDelta@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2[2].f64[0] - a1[2].f64[0];
  v4 = vsubq_f64(a2[1], a1[1]);
  v6[0] = vdivq_f64(*a2, *a1);
  v6[1] = v4;
  v7 = v3;
  *&result = PAAffineTransformStandardize(v6, a3).n128_u64[0];
  return result;
}

__n128 PAAffineTransformStandardize@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*a1 >= 0.0)
  {
    if (v5 >= 0.0)
    {
      v6 = *(a1 + 16);
      goto LABEL_14;
    }
  }

  else if (v5 < 0.0)
  {
    *a1 = vnegq_f64(v4);
    v6 = *(a1 + 16);
    if (v6 > 0.0)
    {
LABEL_12:
      v7 = -3.14159265;
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v6 = *(a1 + 16);
  if (v6 >= -1.57079633)
  {
    if (v6 <= 1.57079633)
    {
      goto LABEL_14;
    }

    *a1 = vnegq_f64(v4);
    goto LABEL_12;
  }

  *a1 = vnegq_f64(v4);
LABEL_8:
  v7 = 3.14159265;
LABEL_13:
  v6 = v6 + v7;
  *(a1 + 16) = v6;
LABEL_14:
  v8 = -3.14159265;
  if (v6 <= -3.14159265)
  {
    v9 = 3.14159265;
    goto LABEL_18;
  }

  v8 = 3.14159265;
  if (v6 > 3.14159265)
  {
    v9 = -3.14159265;
LABEL_18:
    *(a1 + 16) = fmod(v6 + v8, 6.28318531) + v9;
  }

  result = *a1;
  v11 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v11;
  *(a2 + 32) = *(a1 + 32);
  return result;
}

uint64_t PAAffineTransformOrientation(double *a1)
{
  v1 = *a1;
  v2 = 4;
  if (a1[1] < 0.0)
  {
    v3 = v1 < 0.0;
  }

  else
  {
    v2 = 1;
    v3 = 0;
  }

  v4 = llround(a1[2] * 180.0 / 3.14159265) / 90;
  v5 = v4 & 3;
  v6 = 2;
  if (v3)
  {
    v6 = 3;
  }

  v7 = -v4;
  v3 = v7 < 0;
  v8 = v7 & 3;
  if (v3)
  {
    v9 = v5;
  }

  else
  {
    v9 = -v8;
  }

  if (v1 >= 0.0)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  return IPAOrientationConcat(qword_25E5E0760[v9 + 3], v10);
}

uint64_t IPAOrientationFromClockwiseRotation(uint64_t a1)
{
  if (a1 / -90 >= 0)
  {
    v1 = -((a1 / -90) & 3);
  }

  else
  {
    v1 = (a1 / 90) & 3;
  }

  return qword_25E5E0760[v1 + 3];
}

uint64_t IPAOrientationFromClockwiseRotationAndFlip(uint64_t a1, int a2, int a3)
{
  if (a1 / -90 >= 0)
  {
    v3 = -((a1 / -90) & 3);
  }

  else
  {
    v3 = (a1 / 90) & 3;
  }

  v4 = qword_25E5E0760[v3 + 3];
  v5 = 2;
  if ((a2 & a3) != 0)
  {
    v5 = 3;
  }

  v6 = 4;
  if (!a3)
  {
    v6 = 1;
  }

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  return IPAOrientationConcat(v4, v7);
}

uint64_t IPAOrientationConcat(uint64_t a1, uint64_t a2)
{
  if ((a1 - 9) <= 0xFFFFFFFFFFFFFFF7)
  {
    _PFAssertFailHandler();
  }

  else if ((a2 - 9) > 0xFFFFFFFFFFFFFFF7)
  {
    return IPAOrientationConcat_m[8 * a1 - 9 + a2];
  }

  v3 = _PFAssertFailHandler();
  return IPAOrientationToClockwiseRotation(v3);
}

uint64_t IPAOrientationToClockwiseRotation(uint64_t a1)
{
  if ((a1 - 3) > 5)
  {
    return 0;
  }

  else
  {
    return dword_25E5E0798[a1 - 3];
  }
}

uint64_t IPAOrientationInverse(uint64_t a1)
{
  v1 = 6;
  if (a1 != 8)
  {
    v1 = a1;
  }

  if (a1 == 6)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

double IPAOrientationTransformImageSize(uint64_t a1, double a2, double a3)
{
  if ((a1 - 5) >= 4)
  {
    return a2;
  }

  return a3;
}

uint64_t IPAOrientationTransformIntegralImageSize(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if ((a1 - 5) >= 4)
  {
    return a2;
  }

  else
  {
    return a3;
  }
}

double IPAOrientationTransformVector(uint64_t a1, double result, double a3)
{
  if (a1 == 8)
  {
    v3 = -a3;
  }

  else
  {
    v3 = result;
  }

  if (a1 == 7)
  {
    v3 = a3;
  }

  v4 = -result;
  if (a1 == 6)
  {
    v5 = a3;
  }

  else
  {
    v5 = result;
  }

  if (a1 == 5)
  {
    v5 = -a3;
  }

  if (a1 <= 6)
  {
    v3 = v5;
  }

  if (a1 == 3)
  {
    result = -result;
  }

  if (a1 == 2)
  {
    result = v4;
  }

  if (a1 > 4)
  {
    return v3;
  }

  return result;
}

double IPAOrientationTransformImagePoint(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v5 = a3 - a5;
  if (a1 == 8)
  {
    v6 = v5;
  }

  else
  {
    v6 = a4;
  }

  if (a1 == 7)
  {
    v6 = a5;
  }

  result = a2 - a4;
  if (a1 == 6)
  {
    v8 = a5;
  }

  else
  {
    v8 = a4;
  }

  if (a1 == 5)
  {
    v8 = v5;
  }

  if (a1 <= 6)
  {
    v6 = v8;
  }

  if (a1 == 3)
  {
    a4 = result;
  }

  if (a1 != 2)
  {
    result = a4;
  }

  if (a1 > 4)
  {
    return v6;
  }

  return result;
}

double IPAOrientationTransformImageRect(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a1 <= 4)
  {
    if (a1 == 2)
    {
      return a2 - (a4 + a6);
    }

    else if (a1 == 3)
    {
      return a2 - (a4 + a6);
    }
  }

  else if (a1 > 6)
  {
    if (a1 == 7)
    {
      return a5;
    }

    else if (a1 == 8)
    {
      return a3 - (a5 + a7);
    }
  }

  else if (a1 == 5)
  {
    return a3 - (a5 + a7);
  }

  else
  {
    return a5;
  }

  return a4;
}

uint64_t IPAOrientationMakeTransformWithSize@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (result <= 4)
  {
    switch(result)
    {
      case 2:
        *a2 = 0xBFF0000000000000;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0x3FF0000000000000;
        *(a2 + 32) = a3;
        goto LABEL_14;
      case 3:
        *a2 = 0xBFF0000000000000;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = 0xBFF0000000000000;
        *(a2 + 32) = a3;
        *(a2 + 40) = a4;
        return result;
      case 4:
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *a2 = 0x3FF0000000000000;
        *(a2 + 24) = xmmword_25E5E0400;
        *(a2 + 40) = a4;
        return result;
    }

    goto LABEL_15;
  }

  if (result > 6)
  {
    if (result == 7)
    {
      *a2 = xmmword_25E5E03C0;
      *(a2 + 16) = 0x3FF0000000000000;
      *(a2 + 24) = 0;
      goto LABEL_18;
    }

    if (result == 8)
    {
      *a2 = xmmword_25E5E03C0;
      *(a2 + 16) = xmmword_25E5E0400;
      *(a2 + 32) = a4;
LABEL_14:
      *(a2 + 40) = 0;
      return result;
    }

LABEL_15:
    *a2 = 0x3FF0000000000000;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0x3FF0000000000000;
LABEL_18:
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    return result;
  }

  *a2 = xmmword_25E5E03F0;
  if (result == 5)
  {
    *(a2 + 16) = xmmword_25E5E0400;
    *(a2 + 32) = a4;
  }

  else
  {
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0x3FF0000000000000;
  }

  *(a2 + 40) = a3;
  return result;
}

__CFString *IPAOrientationName(uint64_t a1)
{
  if ((a1 - 1) >= 8)
  {
    v1 = 0;
  }

  else
  {
    v1 = a1;
  }

  return IPAOrientationName_names[v1];
}

void sub_25E5D46A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v34 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1737(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25E5D4AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a25, 8);

  _Unwind_Resume(a1);
}

void PA::Matrix4d::MultiplyWithProject(double *a1, __n128 a2, double a3)
{
  v10 = a2;
  v11 = a3;
  v12 = 0x3FF0000000000000;
  PA::operator*(a1, v10.n128_f64);
  if (v3 == 0.0)
  {
    v4 = _PFAssertFailHandler();
    [(IPAPerspectiveTransform *)v4 initWithInputGeometry:v5 intrinsicGeometry:v6 projectionTransform:v7 viewingTransform:v8, v9];
  }
}

uint64_t PA::Quad2d::simpleContains(PA::Quad2d *this, const Vector2d *a2)
{
  v4 = PA::Quad2d::simpleContains(this, a2, a2->X, a2->Y);
  v6 = PA::Quad2d::simpleContains(this, v5, a2[1].X, a2[1].Y);
  v8 = PA::Quad2d::simpleContains(this, v7, a2[2].X, a2[2].Y);
  return (v4 && v6) & v8 & PA::Quad2d::simpleContains(this, v9, a2[3].X, a2[3].Y);
}

BOOL PA::Quad2d::simpleContains(PA::Quad2d *this, const Vector2d *a2, double a3, double a4)
{
  v4 = 0;
  v5 = 0;
  v13 = *MEMORY[0x277D85DE8];
  v6 = *(this + 1);
  v12[0] = *this;
  v12[1] = v6;
  v7 = *(this + 2);
  v12[2] = *(this + 3);
  v12[3] = v7;
  v12[4] = v12[0];
  v8 = *(v12 + 1);
  do
  {
    v9 = v8;
    v10 = &v12[v4];
    v8 = *(&v12[v4 + 1] + 1);
    if (v9 <= a4)
    {
      if (v8 > a4 && (v10[2] - *&v12[v4]) * (a4 - v9) - (v8 - v9) * (a3 - *&v12[v4]) >= 0.0)
      {
        ++v5;
      }
    }

    else if (v8 <= a4)
    {
      v5 -= (v10[2] - *&v12[v4]) * (a4 - v9) - (v8 - v9) * (a3 - *&v12[v4]) <= 0.0;
    }

    ++v4;
  }

  while (v4 != 4);
  return v5 != 0;
}

double PFPointInterpolate(double a1, double a2, double a3, double a4, double a5)
{
  v5 = 1.0;
  if (a5 <= 1.0)
  {
    v5 = a5;
  }

  if (a5 >= 0.0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  return a1 - (a1 - a3) * v6;
}

__CFString *NSStringFromEditSource(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279A26540[a1 - 1];
  }
}

id PANSAffineTransformWithCGAffineTransform(_OWORD *a1)
{
  v2 = [MEMORY[0x277CCA878] transform];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  [v2 setTransformStruct:v5];

  return v2;
}

float64x2_t CGAffineTransformSubstract@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, float64x2_t *a3@<X8>)
{
  v3 = vsubq_f64(a1[1], a2[1]);
  *a3 = vsubq_f64(*a1, *a2);
  a3[1] = v3;
  result = vsubq_f64(a1[2], a2[2]);
  a3[2] = result;
  return result;
}

double CGAffineTransformRoot(double *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *a1 * v3 - v2 * v4;
  if (v5 != 0.0)
  {
    return (v4 * a1[5] - v3 * a1[4]) / v5;
  }

  if (v1 == 0.0 && v4 == 0.0)
  {
    if (v2 == 0.0)
    {
      return 0.0;
    }

    else if (a1[4] == 0.0)
    {
      return -a1[5] / v2;
    }

    else
    {
      return 0.0;
    }
  }

  else if (v2 == 0.0 && v3 == 0.0)
  {
    result = 0.0;
    if (a1[5] == 0.0)
    {
      result = -a1[4] / v1;
      if (v1 == 0.0)
      {
        return 0.0;
      }
    }
  }

  else
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = v2 * v7;
    v10 = v3 * v7;
    result = -v7 / v1;
    if (v4 * v8 != v10)
    {
      result = 0.0;
    }

    if (v9 != v1 * v8)
    {
      return 0.0;
    }
  }

  return result;
}

double CGAffineTransformFixedPoint(float64x2_t *a1)
{
  v1 = vsubq_f64(a1[1], *(MEMORY[0x277CBF2C0] + 16));
  v3[0] = vsubq_f64(*a1, *MEMORY[0x277CBF2C0]);
  v3[1] = v1;
  v3[2] = vsubq_f64(a1[2], *(MEMORY[0x277CBF2C0] + 32));
  return CGAffineTransformRoot(v3);
}

CGAffineTransform *CGAffineTransformMove@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  memset(&v16, 0, sizeof(v16));
  CGAffineTransformMakeTranslation(&v16, a3, a4);
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeTranslation(&v15, -a5, -a6);
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  t1 = v16;
  v10 = a1[1];
  *&v12.a = *a1;
  *&v12.c = v10;
  *&v12.tx = a1[2];
  CGAffineTransformConcat(&v14, &t1, &v12);
  t1 = v15;
  return CGAffineTransformConcat(a2, &v14, &t1);
}

id NSStringFromAffineTranform(_OWORD *a1)
{
  v1 = a1[1];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = a1[2];
  v2 = PANSAffineTransformWithCGAffineTransform(v5);
  v3 = [v2 description];

  return v3;
}

CGFloat CGAffineTransformForMappingFromRectToRect@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, CGFloat a6@<D4>, CGFloat a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v16 = MEMORY[0x277CBF2C0];
  v17 = *MEMORY[0x277CBF2C0];
  v18 = *(MEMORY[0x277CBF2C0] + 16);
  *a1 = *MEMORY[0x277CBF2C0];
  *(a1 + 16) = v18;
  v19 = *(v16 + 32);
  *(a1 + 32) = v19;
  *&v26.a = v17;
  *&v26.c = v18;
  *&v26.tx = v19;
  CGAffineTransformTranslate(a1, &v26, a6, a7);
  v20 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v20;
  *&v25.tx = *(a1 + 32);
  CGAffineTransformScale(&v26, &v25, a8 / a4, a9 / a5);
  v21 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v21;
  *(a1 + 32) = *&v26.tx;
  v22 = *(a1 + 16);
  *&v25.a = *a1;
  *&v25.c = v22;
  *&v25.tx = *(a1 + 32);
  CGAffineTransformTranslate(&v26, &v25, -a2, -a3);
  v23 = *&v26.c;
  *a1 = *&v26.a;
  *(a1 + 16) = v23;
  result = v26.tx;
  *(a1 + 32) = *&v26.tx;
  return result;
}

__n128 CGAffineTransformRelative@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_25E5DA4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2205(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x282111610](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSInsetRect(NSRect aRect, CGFloat dX, CGFloat dY)
{
  MEMORY[0x28211F7A0](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, dX, dY);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

NSRect NSIntegralRect(NSRect aRect)
{
  MEMORY[0x28211F7A8](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRect NSIntersectionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x28211F7C0](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSOffsetRect(NSRect aRect, CGFloat dX, CGFloat dY)
{
  MEMORY[0x28211F820](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, dX, dY);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}