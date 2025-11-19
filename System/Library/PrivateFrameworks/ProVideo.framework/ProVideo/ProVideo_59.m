char *OZCurve::delKeypoint(OZCurve *this, char *a2, int a3)
{
  v3 = a2;
  if (a2)
  {
    if (PVInstructionGraphContext::HGNodeCache((this + 40)) && *(this + 138) == 1 && (OZCurve::isAnimated(this) || a3) && (v6 = PVInstructionGraphContext::HGNodeCache((this + 40)), OZSpline::isValidHandle(v6, v3)))
    {
      v15 = 0.0;
      v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
      v8 = MEMORY[0x277CC08F0];
      v9 = (*(*v7 + 264))(v7, v3, 0, &v15, MEMORY[0x277CC08F0]);
      v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
      v3 = (*(*v10 + 32))(v10, v3, 1, v8);
      v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
      if (((*(v11 + 24) - *(v11 + 16)) & 0x7FFFFFFF8) != 0)
      {
        if (**(this + 20) == 1)
        {
          v12 = PVInstructionGraphContext::HGNodeCache((this + 40));
          OZSpline::reparametrize(v12);
        }
      }

      else
      {
        if (v9)
        {
          (*(*this + 216))(this, v15);
        }

        v14 = *(this + 8);
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        *(this + 8) = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t OZCurve::delKeypoints(OZCurve *this, const CMTime *a2, const CMTime *a3, int a4)
{
  if (!PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v8 = OZSpline::deleteVertices(v10, a2, a3);
  v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (((*(v11 + 24) - *(v11 + 16)) & 0x7FFFFFFF8) != 0)
  {
    if (**(this + 20) == 1)
    {
      v12 = PVInstructionGraphContext::HGNodeCache((this + 40));
      OZSpline::reparametrize(v12);
    }
  }

  else
  {
    v13 = *(this + 8);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    *(this + 8) = 0;
  }

  return v8;
}

uint64_t OZCurve::delAllKeypoints(OZCurve *this, const CMTime *a2, int a3)
{
  if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a3) && PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
    if (((*(v6 + 24) - *(v6 + 16)) & 0x7FFFFFFF8) != 0)
    {
      v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
      (*(*v7 + 240))(v7, a2, MEMORY[0x277CC08F0], 0);
      (*(*this + 216))(this);
    }

    v8 = *(this + 8);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    *(this + 8) = 0;
  }

  return 0;
}

uint64_t OZCurve::getKeypointFlags(OZCurve *this, char *a2, unsigned int *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v6, a2))
  {
    return 0;
  }

  v7 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::getVertexFlags(v7, a2, a3);
}

BOOL OZCurve::setKeypointFlags(OZCurve *this, char *a2, uint64_t a3, int a4)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || !*(this + 42) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::setVertexFlags(v9, a2, a3);
}

uint64_t OZCurve::getKeypointNormal(OZCurve *this, char *a2, double *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v6, a2))
  {
    return 0;
  }

  v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v8 = MEMORY[0x277CC08F0];
  v9 = *(*v7 + 168);

  return v9(v7, a2, a3, v8);
}

uint64_t OZCurve::setKeypointNormal(OZCurve *this, char *a2, double a3, int a4)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || !*(this + 42) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v10 = MEMORY[0x277CC08F0];
  v11 = *(*v9 + 160);
  v12.n128_f64[0] = a3;

  return v11(v9, a2, v10, v12);
}

uint64_t OZCurve::getKeypointNormal(OZCurve *this, const CMTime *a2, double *a3)
{
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v8 = MEMORY[0x277CC08F0];
    v9 = *(*v7 + 184);

    return v9(v7, a2, a3, v8);
  }

  return result;
}

uint64_t OZCurve::setKeypointNormal(OZCurve *this, const CMTime *a2, double a3, int a4)
{
  if (!*(this + 42) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4 || !PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v9 = MEMORY[0x277CC08F0];
  v10 = *(*v8 + 176);
  v11.n128_f64[0] = a3;

  return v10(v8, a2, v9, v11);
}

uint64_t OZCurve::enableKeypoint(OZCurve *this, char *a2, int a3, int a4)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v10 = *v9;
  if (a3)
  {
    v11 = *(v10 + 88);
    v12 = MEMORY[0x277CC08F0];
    v13 = a2;
  }

  else
  {
    v11 = *(v10 + 96);
    v12 = MEMORY[0x277CC08F0];
    v13 = a2;
  }

  return v11(v9, v13, v12);
}

uint64_t OZCurve::isEnabledKeypoint(OZCurve *this, char *a2, BOOL *a3)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v7, a2);
    if (result)
    {
      v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
      *a3 = (*(*v8 + 104))(v8, a2, MEMORY[0x277CC08F0]);
      return 1;
    }
  }

  return result;
}

BOOL OZCurve::selectKeypoint(OZCurve *this, char *a2, int a3, int a4)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || !*(this + 42) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (a3)
  {

    return OZSpline::setVertexFlag(v9, a2, 16);
  }

  else
  {

    return OZSpline::resetVertexFlag(v9, a2, 16);
  }
}

BOOL OZCurve::lockKeypoint(OZCurve *this, char *a2, int a3, int a4)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (a3)
  {

    return OZSpline::setVertexFlag(v9, a2, 2);
  }

  else
  {

    return OZSpline::resetVertexFlag(v9, a2, 2);
  }
}

uint64_t OZCurve::isLockedKeypoint(OZCurve *this, char *a2, BOOL *a3)
{
  v10 = 0;
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v7, a2);
    if (result)
    {
      v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = OZSpline::getVertexFlags(v8, a2, &v10);
      v9 = (v10 >> 1) & 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    *a3 = v9;
  }

  return result;
}

BOOL OZCurve::weightHandles(OZCurve *this, char *a2, int a3, int a4)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (a3)
  {

    return OZSpline::setVertexFlag(v9, a2, 8);
  }

  else
  {

    return OZSpline::resetVertexFlag(v9, a2, 8);
  }
}

uint64_t OZCurve::areHandlesWeighted(OZCurve *this, char *a2, BOOL *a3)
{
  v10 = 0;
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v7, a2);
    if (result)
    {
      v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = OZSpline::getVertexFlags(v8, a2, &v10);
      v9 = (v10 >> 3) & 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }

    *a3 = v9;
  }

  return result;
}

BOOL OZCurve::breakKeypointHandles(OZCurve *this, char *a2, int a3, int a4)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (a3)
  {

    return OZSpline::setVertexFlag(v9, a2, 1);
  }

  else
  {

    return OZSpline::resetVertexFlag(v9, a2, 1);
  }
}

uint64_t OZCurve::areHandlesBroken(OZCurve *this, char *a2, BOOL *a3)
{
  v10 = 0;
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v7, a2);
    if (result)
    {
      v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = OZSpline::getVertexFlags(v8, a2, &v10);
      v9 = v10 & 1;
    }

    else
    {
      v9 = 0;
    }

    *a3 = v9;
  }

  return result;
}

uint64_t OZCurve::flattenHandles(OZCurve *this, char *a2, int a3)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a3)
  {
    return 0;
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v6, a2))
  {
    return 0;
  }

  v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v8 = *(*v7 + 144);
  v9 = MEMORY[0x277CC08F0];

  return v8(v7, a2, v9);
}

uint64_t OZCurve::setKeypointInputNormalizedTangents(OZCurve *this, char *a2, double a3, double a4, int a5)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a5)
  {
    return 0;
  }

  v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v10, a2))
  {
    return 0;
  }

  v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v12 = *(*v11 + 112);
  v13 = MEMORY[0x277CC08F0];
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;

  return v12(v11, a2, v13, 0, v14, v15);
}

uint64_t OZCurve::setKeypointOutputNormalizedTangents(OZCurve *this, char *a2, double a3, double a4, int a5)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a5)
  {
    return 0;
  }

  v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v10, a2))
  {
    return 0;
  }

  v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v12 = *(*v11 + 120);
  v13 = MEMORY[0x277CC08F0];
  v14.n128_f64[0] = a3;
  v15.n128_f64[0] = a4;

  return v12(v11, a2, v13, 0, v14, v15);
}

uint64_t OZCurve::setKeypointInputHandles(OZCurve *this, char *a2, double a3, double a4, int a5)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a5)
  {
    return 0;
  }

  v10 = **(this + 20);
  v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v11, a2))
  {
    return 0;
  }

  v12 = 12.0;
  if (v10)
  {
    v12 = 1.0;
  }

  v13 = a4 / v12;
  v14 = a3 / v12;
  v15 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v16 = *(*v15 + 112);
  v17 = MEMORY[0x277CC08F0];
  v18.n128_f64[0] = v14;
  v19.n128_f64[0] = v13;

  return v16(v15, a2, v17, 0, v18, v19);
}

uint64_t OZCurve::setKeypointOutputHandles(OZCurve *this, char *a2, double a3, double a4, int a5)
{
  if (!a2 || !PVInstructionGraphContext::HGNodeCache((this + 40)) || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a5)
  {
    return 0;
  }

  v10 = **(this + 20);
  v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v11, a2))
  {
    return 0;
  }

  v12 = 12.0;
  if (v10)
  {
    v12 = 1.0;
  }

  v13 = a4 / v12;
  v14 = a3 / v12;
  v15 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v16 = *(*v15 + 120);
  v17 = MEMORY[0x277CC08F0];
  v18.n128_f64[0] = v14;
  v19.n128_f64[0] = v13;

  return v16(v15, a2, v17, 0, v18, v19);
}

uint64_t OZCurve::getKeypointInputNormalizedTangents(OZCurve *this, char *a2, double *a3, double *a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v10 = *(*v9 + 128);
  v11 = MEMORY[0x277CC08F0];

  return v10(v9, a2, a3, a4, v11, 0);
}

uint64_t OZCurve::getKeypointOutputNormalizedTangents(OZCurve *this, char *a2, double *a3, double *a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v10 = *(*v9 + 136);
  v11 = MEMORY[0x277CC08F0];

  return v10(v9, a2, a3, a4, v11, 0);
}

uint64_t OZCurve::getKeypointInputHandles(OZCurve *this, char *a2, double *a3, double *a4)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v9, a2);
    if (result)
    {
      v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = (*(*v10 + 128))(v10, a2, a3, a4, MEMORY[0x277CC08F0], 0);
    }

    v11 = 12.0;
    if (**(this + 20))
    {
      v11 = 1.0;
    }

    if (a3)
    {
      *a3 = v11 * *a3;
    }

    if (a4)
    {
      *a4 = v11 * *a4;
    }
  }

  return result;
}

uint64_t OZCurve::getKeypointOutputHandles(OZCurve *this, char *a2, double *a3, double *a4)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v9, a2);
    if (result)
    {
      v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = (*(*v10 + 136))(v10, a2, a3, a4, MEMORY[0x277CC08F0], 0);
    }

    v11 = 12.0;
    if (**(this + 20))
    {
      v11 = 1.0;
    }

    if (a3)
    {
      *a3 = v11 * *a3;
    }

    if (a4)
    {
      *a4 = v11 * *a4;
    }
  }

  return result;
}

BOOL OZCurve::getPointInputTangents(OZCurve *this, const CMTime *a2, double *a3, double *a4, int a5)
{
  v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (v10)
  {
    v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
    (*(*v11 + 224))(v11, a2, a3, a4, MEMORY[0x277CC08F0]);
    v12 = 1.0;
    if (a5)
    {
      v12 = 12.0;
    }

    if (a3)
    {
      *a3 = v12 * *a3;
    }

    if (a4)
    {
      *a4 = v12 * *a4;
    }
  }

  return v10 != 0;
}

BOOL OZCurve::getPointOutputTangents(OZCurve *this, const CMTime *a2, double *a3, double *a4, int a5)
{
  v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (v10)
  {
    v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
    (*(*v11 + 232))(v11, a2, a3, a4, MEMORY[0x277CC08F0]);
    v12 = 1.0;
    if (a5)
    {
      v12 = 12.0;
    }

    if (a3)
    {
      *a3 = v12 * *a3;
    }

    if (a4)
    {
      *a4 = v12 * *a4;
    }
  }

  return v10 != 0;
}

uint64_t OZCurve::deriveKeypoint(OZCurve *this, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v5 = PVInstructionGraphContext::HGNodeCache((this + 40));
    result = OZSpline::isValidHandle(v5, a2);
    if (result)
    {
      v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
      (*(*v6 + 216))(v6, a2, MEMORY[0x277CC08F0]);
      v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
      OZSpline::resetVertexFlag(v7, a2, 128);
      return 1;
    }
  }

  return result;
}

BOOL OZCurve::setKeypointInterpolation(OZCurve *this, char *a2, uint64_t a3, int a4)
{
  if (!a2 || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::setVertexInterpolation(v9, a2, a3);
}

uint64_t OZCurve::setCurveInterpolation(OZCurve *this, uint64_t a2)
{
  v2 = *(this + 138);
  if (v2 == 1)
  {
    OZCurve::isAnimated(this);
    if (*(*(this + 20) + 32) != a2)
    {
      LocalSplineState = OZCurve::createLocalSplineState(this);
      *(this + 20) = LocalSplineState;
      *(LocalSplineState + 32) = a2;
      if (PVInstructionGraphContext::HGNodeCache((this + 40)))
      {
        v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
        OZSpline::setInterpolation(v6, a2);
      }
    }
  }

  return v2;
}

uint64_t OZCurve::setKeypointSpeed(OZCurve *this, char *a2, int a3, int a4)
{
  if (!a2 || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::setVertexSpeed(v9, a2, a3);
}

uint64_t OZCurve::getKeypointSpeed(OZCurve *this, char *a2, unsigned int *a3)
{
  if (!a2)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v6, a2))
  {
    return 0;
  }

  v7 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::getVertexSpeed(v7, a2, a3);
}

uint64_t OZCurve::adjustKeypointSpeed(OZCurve *this, char *a2, double a3, int a4)
{
  if (!a2 || *(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::adjustVertexSpeed(v9, a2, a3);
}

uint64_t OZCurve::setCurveParametric(OZCurve *this, int a2)
{
  if (**(this + 20) != a2)
  {
    v2 = a2;
    LocalSplineState = OZCurve::createLocalSplineState(this);
    *(this + 20) = LocalSplineState;
    *LocalSplineState = v2;
  }

  return 1;
}

uint64_t OZCurve::getCurveInterpolation(OZCurve *this, unsigned int *a2)
{
  if (PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    v4 = PVInstructionGraphContext::HGNodeCache((this + 40));
    (*(*v4 + 16))(v4, a2, 0, 0);
    return 1;
  }

  if (a2)
  {
    *a2 = *(*(this + 20) + 32);
    return 1;
  }

  return 0;
}

BOOL OZCurve::closeCurve(OZCurve *this)
{
  v2 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (v2)
  {
    v3 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::setClosed(v3, 1, 0);
  }

  return v2 != 0;
}

BOOL OZCurve::isClosedCurve(OZCurve *this, BOOL *a2)
{
  v4 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (v4)
  {
    *a2 = *(PVInstructionGraphContext::HGNodeCache((this + 40)) + 144);
  }

  return v4 != 0;
}

BOOL OZCurve::getKeypointInterpolation(OZCurve *this, char *a2, unsigned int *a3, BOOL *a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));

  return OZSpline::getVertexInterpolation(v9, a2, a3, a4);
}

uint64_t OZCurve::generateKeypoints(OZCurve *this, unsigned int a2, unsigned int a3, int a4)
{
  if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a4) && PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v9 = MEMORY[0x277CC08F0];

    OZSpline::generateExtrapolatedVertices(v8, a2, a3, v9);
  }

  return 0;
}

uint64_t OZCurve::warpCurveLinear(OZCurve *this, Float64 a2, const CMTime *a3, int a4)
{
  if (*(this + 138) != 1)
  {
    return 0;
  }

  if (!OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::warpSplineLinear(v9, a2, a3, MEMORY[0x277CC08F0]);
    return 1;
  }

  return result;
}

uint64_t OZCurve::forceRetimeCurve(OZCurve *this, const CMTime *a2, const CMTime *a3)
{
  if (*(this + 138) != 1)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::forceWarpSplineLinear(v7, a2, a3);
    return 1;
  }

  return result;
}

uint64_t OZCurve::reverseKeypoints(OZCurve *this, void *a2, _OWORD *a3, int a4)
{
  if (*(this + 138) != 1)
  {
    return 0;
  }

  if (!OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::reverseVertices(v9, a2, a3);
    return 1;
  }

  return result;
}

BOOL OZCurve::purgeCurve(OZCurve *this)
{
  v2 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (v2)
  {
    v3 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::purge(v3);
  }

  return v2 != 0;
}

uint64_t OZCurve::setKeypointSmooth(OZCurve *this, char *a2, uint64_t a3, int a4)
{
  if (*(this + 138) != 1 || !OZCurve::isAnimated(this) && !a4)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v8, a2))
  {
    return 0;
  }

  v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v10 = MEMORY[0x277CC08F0];
  v11 = *(*v9 + 152);

  return v11(v9, a2, a3, v10);
}

uint64_t OZCurve::offsetKeypointInTime(OZCurve *this, char *a2, const CMTime *a3, int a4)
{
  if (!a2)
  {
    return 0;
  }

  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    if (*(this + 138) == 1 && (OZCurve::isAnimated(this) || a4))
    {
      v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
      result = OZSpline::isValidHandle(v9, a2);
      if (result)
      {
        v10 = PVInstructionGraphContext::HGNodeCache((this + 40));
        OZSpline::offsetVertexInTime(v10, a2, a3, MEMORY[0x277CC08F0]);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZCurve::setRoundingInUSpace(OZCurve *this, int a2)
{
  if (*(*(this + 20) + 1) != a2)
  {
    v11 = v2;
    v12 = v3;
    LocalSplineState = OZCurve::createLocalSplineState(this);
    *(this + 20) = LocalSplineState;
    *(LocalSplineState + 1) = a2;
    if (a2)
    {
      v7 = 30;
    }

    else
    {
      v7 = 3000000;
    }

    CMTimeMake(&v10, 1, v7);
    v8 = *&v10.value;
    *(LocalSplineState + 24) = v10.epoch;
    *(LocalSplineState + 8) = v8;
  }

  return 1;
}

uint64_t OZCurve::setKeypointBiasLinear(OZCurve *this, char *a2, double a3)
{
  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v6, a2))
  {
    return 0;
  }

  v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v8 = MEMORY[0x277CC08F0];
  v9 = *(*v7 + 272);
  v10.n128_f64[0] = a3;

  return v9(v7, a2, v8, v10);
}

uint64_t OZCurve::getKeypointBiasLinear(OZCurve *this, char *a2, double *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    return 0;
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (!OZSpline::isValidHandle(v6, a2))
  {
    return 0;
  }

  v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v8 = MEMORY[0x277CC08F0];
  v9 = *(*v7 + 280);

  return v9(v7, a2, a3, v8);
}

BOOL OZCurve::hasInterpolation(OZCurve *this, int a2, BOOL *a3)
{
  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  v7 = v6;
  if (a3 && v6)
  {
    v8 = PVInstructionGraphContext::HGNodeCache((this + 40));
    *a3 = OZSpline::hasInterpolation(v8, a2);
  }

  return v7 != 0;
}

uint64_t OZCurve::getPreviousValidKeypointHandle(OZCurve *this, void *a2, void **a3)
{
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v8 = MEMORY[0x277CC08F0];

    return OZSpline::getPreviousValidVertexWithLock(v7, a2, a3, v8);
  }

  return result;
}

uint64_t OZCurve::getNextValidKeypointHandle(OZCurve *this, void *a2, void **a3)
{
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v8 = MEMORY[0x277CC08F0];

    return OZSpline::getNextValidVertexWithLock(v7, a2, a3, v8);
  }

  return result;
}

uint64_t OZCurve::getPreviousValidKeypointHandle(OZCurve *this, const CMTime *a2, void **a3)
{
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v8 = MEMORY[0x277CC08F0];

    return OZSpline::getPreviousValidVertexWithLock(v7, a2, a3, v8, 0);
  }

  return result;
}

uint64_t OZCurve::getNextValidKeypointHandle(OZCurve *this, const CMTime *a2, void **a3)
{
  result = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (result)
  {
    v7 = PVInstructionGraphContext::HGNodeCache((this + 40));
    v8 = MEMORY[0x277CC08F0];

    return OZSpline::getNextValidVertexWithLock(v7, a2, a3, v8, 0);
  }

  return result;
}

BOOL OZCurve::reparametrizeCurve(OZCurve *this)
{
  v2 = PVInstructionGraphContext::HGNodeCache((this + 40));
  if (v2)
  {
    v3 = PVInstructionGraphContext::HGNodeCache((this + 40));
    OZSpline::reparametrize(v3);
  }

  return v2 != 0;
}

void OZCurve::loadVertices(OZCurve *this, int a2, int a3)
{
  if (a3)
  {
    if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
    {
      OZSplineNode::createSpline((this + 40));
    }

    v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
    if (a2)
    {
      OZSpline::reserveMemoryForKeypoints(v6, a3);
    }

    else
    {
      OZSpline::setDirty(v6, 1);
    }
  }

  *(this + 96) = a2;
  v7 = *(this + 8);
  if (v7)
  {

    OZSpline::setDirty(v7, 1);
  }
}

uint64_t OZCurve::generateCurveFromDynamicCurve(OZCurve *this, const CMTime *a2, OZDynamicCurve *a3)
{
  if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
  {
    if (*(*(this + 20) + 44) == 1)
    {
      *(this + 20) = OZCurve::createLocalSplineState(this);
    }

    OZSplineNode::createSpline((this + 40));
  }

  v6 = PVInstructionGraphContext::HGNodeCache((this + 40));
  OZSpline::generateSplineFromDynamicSpline(v6, a2, (a3 + 8));
  return 1;
}

CMTime *OZCurve::getFrameDuration@<X0>(OZCurve *this@<X0>, CMTime *a2@<X8>)
{
  v2 = *(this + 19);
  if (v2)
  {
    return OZChannelBase::getFrameDuration(v2, a2);
  }

  else
  {
    return CMTimeMake(a2, 1, 30);
  }
}

void OZCurve::beginPlayback(OZCurve *this, const CMTime *a2, int a3, int a4, const CMTime *a5)
{
  v5 = *(this + 13);
  if (!v5)
  {
    operator new();
  }

  OZRecordingNode::beginPlayback(v5, a2, a3, a4, a5);
}

uint64_t OZCurve::beginRecording(OZCurve *this, const CMTime *a2)
{
  result = OZRecordingNode::beginRecording(*(this + 13), a2);
  *(this + 1) = *(this + 13);
  *(this + 42) = 2;
  return result;
}

void OZCurve::endRecording(OZCurve *this, const CMTime *a2)
{
  OZRecordingNode::endRecording(*(this + 13), a2);
  *(this + 1) = this + 40;
  *(this + 42) = 1;
}

__n128 OZCurve::isPlaying(OZCurve *this, unsigned int *a2, unsigned int *a3, CMTime *a4)
{
  v4 = *(this + 13);
  if (*(v4 + 16) == 1)
  {
    if (a2)
    {
      *a2 = *(v4 + 8);
    }

    if (a3)
    {
      *a3 = *(v4 + 12);
    }

    if (a4)
    {
      result = *(v4 + 88);
      a4->epoch = *(v4 + 104);
      *&a4->value = result;
    }
  }

  return result;
}

uint64_t OZCurve::writeHeader(OZCurve *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZCurveScope);
  (*(*a2 + 16))(a2, 118);

  return PCSerializerWriteStream::popScope(a2);
}

void OZCurve::writeBody(OZCurve *this, PCSerializerWriteStream *a2)
{
  v39 = 0.0;
  v37 = *MEMORY[0x277CC08F0];
  v38 = *(MEMORY[0x277CC08F0] + 16);
  v35 = 0.0;
  v36 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  v31 = 0.0;
  v32 = 0.0;
  v30 = 0;
  v29 = 0;
  v27 = 0.0;
  v28 = 0;
  __p = 0;
  v25 = 0;
  v26 = 0;
  PCSerializerWriteStream::pushScope(a2, &OZCurveScope);
  v4 = (*(*this + 1216))(this);
  v5 = (*(*v4 + 512))(v4);
  (*(*this + 152))(this, &v28);
  (*(*a2 + 144))(a2, 4, v28);
  (*(*this + 192))(this, &v39);
  if (((*(*a2 + 232))(a2) & 1) == 0)
  {
    (*(*a2 + 184))(a2, 8, v39);
  }

  if (v28)
  {
    (*(*this + 208))(this, &v39);
    v6.n128_f64[0] = v39;
  }

  else
  {
    v6.n128_f64[0] = OZConstantNode::solveNode((this + 16), MEMORY[0x277CC08F0], 0.0, 0.0);
    v39 = v6.n128_f64[0];
  }

  (*(*a2 + 184))(a2, 1, v6);
  (*(*this + 112))(this, &v29);
  if (v29 == 1)
  {
    (*(*a2 + 152))(a2, 5, 1);
  }

  (*(*this + 176))(this, &v29);
  if ((v29 & 1) == 0)
  {
    (*(*a2 + 152))(a2, 6, 0);
  }

  if ((*(*this + 352))(this))
  {
    (*(*a2 + 152))(a2, 7, 1);
  }

  if (v5)
  {
    (*(*a2 + 16))(a2, 62);
    (*(*a2 + 56))(a2, v5);
    (*(*a2 + 24))(a2);
  }

  if (((*(*this + 1240))(this) & 1) == 0)
  {
    v7 = *(this + 15);
    if (v7 > -1.79769313e308)
    {
      (*(*a2 + 16))(a2, 64);
      (*(*a2 + 88))(a2, v7);
      (*(*a2 + 24))(a2);
    }

    v8 = *(this + 16);
    if (v8 < 1.79769313e308)
    {
      (*(*a2 + 16))(a2, 65);
      (*(*a2 + 88))(a2, v8);
      (*(*a2 + 24))(a2);
    }
  }

  v23 = 0;
  (*(*this + 336))(this, &v23, 1);
  v9 = v23;
  if (v23)
  {
    (*(*a2 + 16))(a2, 52);
    (*(*a2 + 56))(a2, v9);
    (*(*a2 + 24))(a2);
  }

  (*(*this + 336))(this, &v23, 0);
  v10 = v23;
  if (v23)
  {
    (*(*a2 + 16))(a2, 51);
    (*(*a2 + 56))(a2, v10);
    (*(*a2 + 24))(a2);
  }

  v22 = 0;
  (*(*this + 128))(this, &v22);
  if (v22 == 1)
  {
    (*(*a2 + 16))(a2, 61);
    (*(*a2 + 48))(a2, 1);
    (*(*a2 + 24))(a2);
  }

  if (v5)
  {
    std::vector<void *>::reserve(&__p, v5);
    (*(*v4 + 792))(v4, &__p);
  }

  if (v25 != __p)
  {
    v11 = 0;
    v12 = 1;
    do
    {
      (*(*a2 + 16))(a2, 53);
      (*(*v4 + 1072))(v4, *(__p + v11), &v28 + 4, 0);
      if (HIDWORD(v28) != 4)
      {
        (*(*a2 + 144))(a2, 10);
      }

      (*(*v4 + 864))(v4, *(__p + v11), &v29);
      if ((v29 & 1) == 0)
      {
        (*(*a2 + 152))(a2, 9, 0);
      }

      (*(*v4 + 840))(v4, *(__p + v11), &v30);
      (*(*a2 + 144))(a2, 11, v30);
      (*(*v4 + 1056))(v4, *(__p + v11), &v27);
      (*(*v4 + 752))(v4, *(__p + v11), &v37, &v36);
      (*(*v4 + 952))(v4, *(__p + v11), &v31);
      v21 = v38;
      v20 = v37;
      (*(*a2 + 16))(a2, 54);
      (*(*a2 + 112))(a2, &v20);
      (*(*a2 + 24))(a2);
      v13 = v36;
      (*(*a2 + 16))(a2, 55);
      (*(*a2 + 88))(a2, v13);
      (*(*a2 + 24))(a2);
      v14 = v27;
      if (fabs(v27 + -1.0) >= 0.0000001)
      {
        (*(*a2 + 16))(a2, 60);
        (*(*a2 + 88))(a2, v14);
        (*(*a2 + 24))(a2);
      }

      v15 = v31;
      if (fabs(v31) >= 0.0000001)
      {
        (*(*a2 + 16))(a2, 63);
        (*(*a2 + 88))(a2, v15);
        (*(*a2 + 24))(a2);
      }

      if ((*(*(this + 20) + 2) & 1) != 0 || HIDWORD(v28) == 18)
      {
        (*(*v4 + 1000))(v4, *(__p + v11), &v35, &v34);
        (*(*v4 + 1008))(v4, *(__p + v11), &v33, &v32);
        v16 = v35;
        if (fabs(v35) >= 0.0000001 || fabs(v34) >= 0.0000001)
        {
          (*(*a2 + 16))(a2, 56);
          (*(*a2 + 88))(a2, v16);
          (*(*a2 + 24))(a2);
          v17 = v34;
          (*(*a2 + 16))(a2, 57);
          (*(*a2 + 88))(a2, v17);
          (*(*a2 + 24))(a2);
        }

        v18 = v33;
        if (fabs(v33) >= 0.0000001 || fabs(v32) >= 0.0000001)
        {
          (*(*a2 + 16))(a2, 58);
          (*(*a2 + 88))(a2, v18);
          (*(*a2 + 24))(a2);
          v19 = v32;
          (*(*a2 + 16))(a2, 59);
          (*(*a2 + 88))(a2, v19);
          (*(*a2 + 24))(a2);
        }
      }

      (*(*a2 + 24))(a2);
      v11 = v12++;
    }

    while (v11 < (v25 - __p) >> 3);
  }

  (*(*v4 + 8))(v4);
  PCSerializerWriteStream::popScope(a2);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }
}

void sub_25FE826E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<void *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

uint64_t OZCurve::parseEnd(OZCurve *this, PCSerializerReadStream *a2)
{
  v3 = *(this + 18);
  if (v3)
  {
    (*(*this + 848))(this, *v3, *(v3 + 12), 1);
    v4 = *(this + 18);
    if (v4)
    {
      MEMORY[0x2666E9F00](v4, 0x1080C4003FABA15);
    }

    *(this + 18) = 0;
  }

  *(this + 96) = 0;
  v5 = *(this + 8);
  if (v5)
  {
    OZSpline::setDirty(v5, 1);
  }

  return 1;
}

uint64_t OZCurve::parseElement(OZCurve *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v27 = 0.0;
  v28 = 0;
  v26 = 0;
  v25 = 0.0;
  v6 = *(a3 + 2);
  switch(v6)
  {
    case '3':
      PCSerializerReadStream::getAsInt32(a2, a3, &v28 + 4);
      (*(*this + 328))(this, HIDWORD(v28), 0);
      return 1;
    case '4':
      PCSerializerReadStream::getAsInt32(a2, a3, &v28 + 4);
      (*(*this + 328))(this, HIDWORD(v28), 1);
      return 1;
    case '5':
      v16 = *(this + 18);
      if (v16)
      {
        (*(*this + 848))(this, *v16, *(v16 + 12), 1);
        v17 = *(this + 18);
        if (v17)
        {
          MEMORY[0x2666E9F00](v17, 0x1080C4003FABA15);
        }

        *(this + 18) = 0;
      }

      operator new();
    case '6':
      if (*(a2 + 26) < 5u)
      {
        PCSerializerReadStream::getAsDouble(a2, a3, &v25);
        v23 = *(a2 + 112);
        operator*(&v23, &v24, v25);
      }

      else
      {
        PCSerializerReadStream::getAsFigTime(a2, a3, &v24);
      }

      v20 = *(this + 18);
      epoch = v24.epoch;
      *(v20 + 20) = *&v24.value;
      *(v20 + 36) = epoch;
      return 1;
    case '7':
      PCSerializerReadStream::getAsDouble(a2, a3, *(this + 18) + 80);
      if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
      {
        if (*(*(this + 20) + 44) == 1)
        {
          *(this + 20) = OZCurve::createLocalSplineState(this);
        }

        OZSplineNode::createSpline((this + 40));
      }

      v11 = PVInstructionGraphContext::HGNodeCache((this + 40));
      OZSpline::appendVertexNoTangents(v11, (*(this + 18) + 20), *(*(this + 18) + 80), MEMORY[0x277CC08F0]);
    case '8':
      PCSerializerReadStream::getAsDouble(a2, a3, *(this + 18) + 48);
      if (*(a2 + 26) <= 4u)
      {
        *(*(this + 18) + 48) = *(a2 + 17) * *(*(this + 18) + 48);
      }

      return 1;
    case '9':
      PCSerializerReadStream::getAsDouble(a2, a3, *(this + 18) + 56);
      v18 = *(this + 18);
      if ((*(*(this + 20) + 2) & 1) != 0 || *(v18 + 8) == 18)
      {
        (*(*this + 984))(this, *v18, 1, *(v18 + 48), *(v18 + 56));
      }

      return 1;
    case ':':
      PCSerializerReadStream::getAsDouble(a2, a3, *(this + 18) + 64);
      if (*(a2 + 26) <= 4u)
      {
        *(*(this + 18) + 64) = *(a2 + 17) * *(*(this + 18) + 64);
      }

      return 1;
    case ';':
      PCSerializerReadStream::getAsDouble(a2, a3, *(this + 18) + 72);
      v19 = *(this + 18);
      if ((*(*(this + 20) + 2) & 1) != 0 || *(v19 + 8) == 18)
      {
        (*(*this + 992))(this, *v19, 1, *(v19 + 64), *(v19 + 72));
        v19 = *(this + 18);
      }

      if ((*(v19 + 16) & 1) == 0)
      {
        (*(*this + 856))(this, *v19, 0, 1);
      }

      return 1;
    case '<':
      PCSerializerReadStream::getAsDouble(a2, a3, *(this + 18) + 88);
      v14 = *(this + 18);
      v15.n128_u64[0] = v14[11];
      (*(*this + 1048))(this, *v14, v15);
      return 1;
    case '=':
      PCSerializerReadStream::getAsInt32(a2, a3, &v28 + 4);
      if (HIDWORD(v28))
      {
        (*(*this + 120))(this);
      }

      return 1;
    case '>':
      PCSerializerReadStream::getAsInt32(a2, a3, &v28 + 4);
      (*(*this + 688))(this, MEMORY[0x277CC08F0], 1);
      if (!PVInstructionGraphContext::HGNodeCache((this + 40)))
      {
        if (*(*(this + 20) + 44) == 1)
        {
          *(this + 20) = OZCurve::createLocalSplineState(this);
        }

        OZSplineNode::createSpline((this + 40));
      }

      v9 = PVInstructionGraphContext::HGNodeCache((this + 40));
      OZSpline::reserveMemoryForKeypoints(v9, SHIDWORD(v28));
      *(this + 96) = 1;
      v10 = *(this + 8);
      if (v10)
      {
        OZSpline::setDirty(v10, 1);
      }

      return 1;
    case '?':
      PCSerializerReadStream::getAsDouble(a2, a3, *(this + 18) + 96);
      v12 = *(this + 18);
      v13.n128_u64[0] = v12[12];
      (*(*this + 960))(this, *v12, 1, v13);
      return 1;
    case '@':
      v8 = this + 120;
      goto LABEL_37;
    case 'A':
      v8 = this + 128;
LABEL_37:
      PCSerializerReadStream::getAsDouble(a2, a3, v8);
      break;
    default:
      if (v6 == 118)
      {
        PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 4, &v28);
        v7 = *(*this + 160);
        if (v28)
        {
          v7(this);
          if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 1, &v27))
          {
            (*(*this + 216))(this, v27);
          }

          if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 8, &v27))
          {
            (*(*this + 200))(this, v27);
          }
        }

        else
        {
          v7(this);
          if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 1, &v27))
          {
            *(this + 3) = v27;
          }

          if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 8, &v27))
          {
            *(this + 4) = v27;
          }
        }

        if (PCSerializerReadStream::getAttributeAsBool(a2, a3, 5, &v26))
        {
          (*(*this + 104))(this, v26);
        }

        if (PCSerializerReadStream::getAttributeAsBool(a2, a3, 6, &v26))
        {
          (*(*this + 168))(this, v26);
        }

        if (PCSerializerReadStream::getAttributeAsBool(a2, a3, 7, &v26))
        {
          (*(*this + 344))(this, v26);
        }
      }

      break;
  }

  return 1;
}

double OZCurveNodeParam::OZCurveNodeParam(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v2 = MEMORY[0x277CC08F0];
  v3 = *MEMORY[0x277CC08F0];
  *(a1 + 24) = *MEMORY[0x277CC08F0];
  v4 = *(v2 + 16);
  *(a1 + 40) = v4;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 112) = v4;
  *(a1 + 96) = v3;
  *(a1 + 136) = v4;
  *(a1 + 120) = v3;
  v5 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v5;
  v6 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v6;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = 0;
  *(a1 + 80) = *(a2 + 80);
  v7 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v7;
  v8 = *(a2 + 136);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v8;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = 0;
  *(a1 + 152) = *(a2 + 152);
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

void OZCurveNodeParam::~OZCurveNodeParam(OZCurveNodeParam *this)
{
  if (*(this + 160) == 1)
  {
    v2 = *(this + 19);
    if (v2)
    {
      MEMORY[0x2666E9ED0](v2, 0x1000C8000313F17);
    }
  }

  if (*(this + 88) == 1)
  {
    v3 = *(this + 10);
    if (v3)
    {
      MEMORY[0x2666E9ED0](v3, 0x1000C8000313F17);
    }
  }
}

void PCException::PCException(PCException *this, const PCException *a2)
{
  *this = &unk_287207540;
  v4 = *(a2 + 1);
  *(this + 1) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  PCString::PCString(this + 2, a2 + 2);
  PCString::PCString(this + 3, a2 + 3);
  *(this + 8) = *(a2 + 8);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }
}

void sub_25FE833A4(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 24));
  PCString::~PCString((v1 + 16));
  PCCFRef<__CFArray const*>::~PCCFRef(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void *std::vector<OZCurveNode *>::__assign_with_size[abi:ne200100]<OZCurveNode **,OZCurveNode **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
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

void sub_25FE83640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZDynamicCurve::~OZDynamicCurve(OZDynamicCurve *this)
{
  *this = &unk_287248FC8;
  v2 = (this + 8);
  OZSpline::deleteAllVertices((this + 8));
  (*(*this + 56))(this);
  OZDynamicSpline::~OZDynamicSpline(v2);
}

{
  OZDynamicCurve::~OZDynamicCurve(this);

  JUMPOUT(0x2666E9F00);
}

BOOL OZDynamicCurve::operator==(uint64_t a1, uint64_t a2)
{
  result = OZSpline::operator==(a1 + 8, a2 + 8);
  if (result)
  {

    return OZSplineState::operator==((a1 + 184), (a2 + 184), v5, v6);
  }

  return result;
}

uint64_t OZDynamicCurve::getCurveExtrapolation(OZDynamicCurve *this, unsigned int *a2, int a3)
{
  if (a2)
  {
    *a2 = OZSpline::getExtrapolation((this + 8), a3);
  }

  return 1;
}

uint64_t OZDynamicCurve::getCurveSamples(OZDynamicCurve *this, const CMTime *a2, Float64 a3, Float64 a4, unsigned int *a5, double *a6, double *a7)
{
  if (((*(this + 4) - *(this + 3)) & 0x7FFFFFFF8) != 0)
  {
    return OZDynamicSpline::sampleSpline((this + 8), a3, a4, a5, a6, a7, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t OZDynamicCurve::getCurveSamples(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Float64 a6, Float64 a7)
{
  if (((*(a1 + 32) - *(a1 + 24)) & 0x7FFFFFFF8) != 0)
  {
    return OZDynamicSpline::sampleSpline(a1 + 8, a3, a4, a5, a2, a6, a7);
  }

  else
  {
    return 0;
  }
}

uint64_t OZDynamicCurve::closeCurve(OZDynamicCurve *this)
{
  if ((*(this + 152) & 1) == 0 && ((*(this + 4) - *(this + 3)) & 0x7FFFFFFF8) != 0)
  {
    OZSpline::setClosed((this + 8), 1, 0);
  }

  return 1;
}

uint64_t OZDynamicCurve::openCurve(OZDynamicCurve *this, void *a2)
{
  if (*(this + 152) == 1 && ((*(this + 4) - *(this + 3)) & 0x7FFFFFFF8) != 0)
  {
    OZSpline::setClosed((this + 8), 0, a2);
  }

  return 1;
}

uint64_t OZDynamicCurve::isClosedCurve(OZDynamicCurve *this, BOOL *a2)
{
  if (a2)
  {
    *a2 = *(this + 152);
  }

  return 1;
}

unint64_t OZDynamicCurve::getNumberOfValidKeypoints(os_unfair_lock_s *this, const CMTime *a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  OZSpline::getAllValidVerticesHandles(this + 2, &v5, a2);
  v2 = v5;
  v3 = v6;
  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  return (v3 - v2) >> 3;
}

void sub_25FE84CD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZDynamicCurve::getCurrentMaxValueV(OZDynamicCurve *this, const CMTime *a2, double *a3, double *a4)
{
  v7 = **&MEMORY[0x277CC08F0];
  *a3 = OZSpline::getMaxValueV((this + 8), a2, &v7);
  if (a4)
  {
    v6 = v7;
    *a4 = CMTimeGetSeconds(&v6);
  }

  return 1;
}

uint64_t OZDynamicCurve::getCurrentMinValueV(OZDynamicCurve *this, const CMTime *a2, double *a3, double *a4)
{
  v7 = **&MEMORY[0x277CC08F0];
  *a3 = OZSpline::getMinValueV((this + 8), a2, &v7);
  if (a4)
  {
    v6 = v7;
    *a4 = CMTimeGetSeconds(&v6);
  }

  return 1;
}

uint64_t OZDynamicCurve::getCurrentMaxValueU(OZDynamicCurve *this, const CMTime *a2, double *a3)
{
  v6 = **&MEMORY[0x277CC08F0];
  OZSpline::getMaxValueU((this + 8), a2, 1, &v6);
  if (a3)
  {
    v5 = v6;
    *a3 = CMTimeGetSeconds(&v5);
  }

  return 1;
}

uint64_t OZDynamicCurve::getCurrentMinValueU(OZDynamicCurve *this, const CMTime *a2, double *a3)
{
  v6 = **&MEMORY[0x277CC08F0];
  OZSpline::getMinValueU((this + 8), a2, 1, &v6);
  if (a3)
  {
    v5 = v6;
    *a3 = CMTimeGetSeconds(&v5);
  }

  return 1;
}

uint64_t OZDynamicCurve::getCurrentRangeU(OZDynamicCurve *this, const CMTime *a2, double *a3)
{
  if (a3)
  {
    OZSpline::getRangeU((this + 8), a2, &time);
    *a3 = CMTimeGetSeconds(&time);
  }

  return 1;
}

uint64_t OZDynamicCurve::setKeypoint(os_unfair_lock_s *this, char *a2, const CMTime *a3, Float64 a4, double a5)
{
  result = OZSpline::isValidHandle(&this[2], a2);
  if (result)
  {
    OZFigTimeForChannelSeconds(&v11, a4, 0x40000);
    return OZDynamicSpline::setVertex(this + 2, a2, &v11, a5, a3);
  }

  return result;
}

void OZDynamicCurve::setKeypoint(os_unfair_lock_s *this, const CMTime *a2, Float64 a3, void **a4)
{
  OZFigTimeForChannelSeconds(&v9, a3, 0x40000);
  OZFigTimeForChannelSeconds(&v8, a3, 0x40000);
  VertexValue = OZSpline::getVertexValue(&this[2], &v8, a2, 0);
  OZDynamicSpline::addVertex(this + 2, &v9, VertexValue, a2);
}

void OZDynamicCurve::setKeypoint(OZDynamicCurve *this, const CMTime *a2, Float64 a3, double a4, void **a5)
{
  v11 = **&MEMORY[0x277CC08F0];
  if (((*(this + 4) - *(this + 3)) & 0x7FFFFFFF8) != 0)
  {
    DepthBuffer = DepthBufferManager::getDepthBuffer((this + 8));
    OZSpline::getVertex((this + 8), DepthBuffer, &v11, 0, a2);
  }

  else
  {
    v11 = **&MEMORY[0x277CC08A0];
  }

  OZFigTimeForChannelSeconds(&v10, a3, 0x40000);
  time1 = v10;
  time2 = v11;
  if (CMTimeCompare(&time1, &time2) >= 1 && (*(this + 152) & 1) == 0)
  {
    OZFigTimeForChannelSeconds(&time1, a3, 0x40000);
    OZDynamicSpline::appendVertex(this + 2, &time1, a4, a2);
  }

  OZFigTimeForChannelSeconds(&time1, a3, 0x40000);
  OZDynamicSpline::addVertex(this + 2, &time1, a4, a2);
}

uint64_t OZDynamicCurve::setKeypointBiasLinear(OZDynamicCurve *this, char *a2, const CMTime *a3, double a4)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {

    return OZSpline::setVertexBiasLinear((this + 8), a2, a4, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::getKeypointBiasLinear(OZDynamicCurve *this, char *a2, const CMTime *a3, double *a4)
{
  if (!a4 || !OZSpline::isValidHandle((this + 8), a2))
  {
    return 0;
  }

  return OZSpline::getVertexBiasLinear((this + 8), a2, a4, a3);
}

uint64_t OZDynamicCurve::moveKeypoint(OZDynamicCurve *this, char *a2, const CMTime *a3, Float64 a4)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    OZFigTimeForChannelSeconds(&v9, a4, 0x40000);
    return OZSpline::moveVertex((this + 8), a2, &v9, a3, 0, 0, 0) != 0;
  }

  return result;
}

uint64_t OZDynamicCurve::cloneKeypoint(OZDynamicCurve *this, char *a2, const CMTime *a3, Float64 a4)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    OZFigTimeForChannelSeconds(&v9, a4, 0x40000);
    return OZSpline::moveVertex((this + 8), a2, &v9, a3, 1, 0, 0) != 0;
  }

  return result;
}

uint64_t OZDynamicCurve::getPoint(OZDynamicCurve *this, const CMTime *a2, Float64 a3, double *a4)
{
  if (a4)
  {
    OZFigTimeForChannelSeconds(&v8, a3, 0x40000);
    *a4 = OZSpline::getVertexValue((this + 8), &v8, a2, 0);
  }

  return 1;
}

uint64_t OZDynamicCurve::getFirstKeypoint(OZDynamicCurve *this, const CMTime *a2, double *a3, double *a4)
{
  v11 = 0;
  v10 = **&MEMORY[0x277CC08F0];
  OZSpline::getFirstValidVertex((this + 8), &v11, MEMORY[0x277CC08F0]);
  if (v11)
  {
    OZSpline::getVertex((this + 8), v11, &v10, a4, a2);
    if (a3)
    {
      v9 = v10;
      *a3 = CMTimeGetSeconds(&v9);
    }
  }

  return 1;
}

BOOL OZDynamicCurve::getLastKeypoint(OZDynamicCurve *this, const CMTime *a2, double *a3, double *a4)
{
  v12 = 0;
  v11 = **&MEMORY[0x277CC08F0];
  OZSpline::getLastValidVertex((this + 8), &v12, MEMORY[0x277CC08F0]);
  v8 = v12;
  if (v12)
  {
    OZSpline::getVertex((this + 8), v12, &v11, a4, a2);
    if (a3)
    {
      v10 = v11;
      *a3 = CMTimeGetSeconds(&v10);
    }
  }

  return v8 != 0;
}

BOOL OZDynamicCurve::getKeypoint(OZDynamicCurve *this, char *a2, const CMTime *a3, double *a4, double *a5)
{
  v13 = **&MEMORY[0x277CC08F0];
  if (!OZSpline::isValidHandle((this + 8), a2))
  {
    return 0;
  }

  Vertex = OZSpline::getVertex((this + 8), a2, &v13, a5, a3);
  if (a4)
  {
    v12 = v13;
    *a4 = CMTimeGetSeconds(&v12);
  }

  return Vertex;
}

uint64_t OZDynamicCurve::delKeypoint(char **this, char *a2, const CMTime *a3)
{
  if (!OZSpline::isValidHandle((this + 1), a2))
  {
    return 0;
  }

  v6 = OZDynamicSpline::deleteVertex(this + 1, a2, 1, a3);
  if (((this[4] - this[3]) & 0x7FFFFFFF8) == 0)
  {
    (*(*this + 7))(this);
  }

  OZSpline::reparametrize((this + 1));
  return v6;
}

BOOL OZDynamicCurve::delAllKeypoints(OZDynamicCurve *this)
{
  v2 = OZSpline::deleteAllVertices((this + 8));
  (*(*this + 56))(this);
  return v2;
}

uint64_t OZDynamicCurve::getKeypointFlags(OZDynamicCurve *this, char *a2, unsigned int *a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {

    return OZSpline::getVertexFlags((this + 8), a2, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::setKeypointFlags(OZDynamicCurve *this, char *a2, uint64_t a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {

    return OZSpline::setVertexFlags((this + 8), a2, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::enableKeypoint(OZDynamicCurve *this, char *a2, int a3, const CMTime *a4)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    v9 = (this + 8);
    if (a3)
    {

      return OZDynamicSpline::enableVertex(v9, a2, a4);
    }

    else
    {

      return OZDynamicSpline::disableVertex(v9, a2, a4);
    }
  }

  return result;
}

uint64_t OZDynamicCurve::isEnabledKeypoint(OZDynamicCurve *this, char *a2, const CMTime *a3, BOOL *a4)
{
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    *a4 = OZSpline::isEnabledVertex((this + 8), a2, a3);
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::selectKeypoint(OZDynamicCurve *this, char *a2, int a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    v7 = (this + 8);
    if (a3)
    {

      return OZSpline::setVertexFlag(v7, a2, 16);
    }

    else
    {

      return OZSpline::resetVertexFlag(v7, a2, 16);
    }
  }

  return result;
}

uint64_t OZDynamicCurve::isSelectedKeypoint(OZDynamicCurve *this, char *a2, BOOL *a3)
{
  v8 = 0;
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    OZSpline::getVertexFlags((this + 8), a2, &v8);
    *a3 = (v8 & 0x10) != 0;
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::lockKeypoint(OZDynamicCurve *this, char *a2, int a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    v7 = (this + 8);
    if (a3)
    {

      return OZSpline::setVertexFlag(v7, a2, 2);
    }

    else
    {

      return OZSpline::resetVertexFlag(v7, a2, 2);
    }
  }

  return result;
}

uint64_t OZDynamicCurve::isLockedKeypoint(OZDynamicCurve *this, char *a2, BOOL *a3)
{
  v8 = 0;
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    OZSpline::getVertexFlags((this + 8), a2, &v8);
    *a3 = (v8 & 2) != 0;
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::setOpenEdgeKeypoint(OZDynamicCurve *this, char *a2, int a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    v7 = (this + 8);
    if (a3)
    {

      return OZSpline::setVertexFlag(v7, a2, 512);
    }

    else
    {

      return OZSpline::resetVertexFlag(v7, a2, 512);
    }
  }

  return result;
}

uint64_t OZDynamicCurve::isOpenEdgeKeypoint(OZDynamicCurve *this, char *a2, BOOL *a3)
{
  v8 = 0;
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    OZSpline::getVertexFlags((this + 8), a2, &v8);
    *a3 = (v8 & 0x200) != 0;
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::enableBehaviorForKeypoint(OZDynamicCurve *this, char *a2, uint64_t a3)
{
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    OZDynamicSpline::enableBehaviorForVertex((this + 8), a2, a3);
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::isBehaviorEnabledForKeypoint(OZDynamicCurve *this, char *a2, BOOL *a3)
{
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    *a3 = OZDynamicSpline::enabledBehaviorForVertex((this + 8), a2);
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::weightHandles(OZDynamicCurve *this, char *a2, int a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    v7 = (this + 8);
    if (a3)
    {

      return OZSpline::setVertexFlag(v7, a2, 8);
    }

    else
    {

      return OZSpline::resetVertexFlag(v7, a2, 8);
    }
  }

  return result;
}

uint64_t OZDynamicCurve::areHandlesWeighted(OZDynamicCurve *this, char *a2, BOOL *a3)
{
  v8 = 0;
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    OZSpline::getVertexFlags((this + 8), a2, &v8);
    *a3 = (v8 & 8) != 0;
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::breakKeypointHandles(OZDynamicCurve *this, char *a2, int a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    v7 = (this + 8);
    if (a3)
    {

      return OZSpline::setVertexFlag(v7, a2, 1);
    }

    else
    {

      return OZSpline::resetVertexFlag(v7, a2, 1);
    }
  }

  return result;
}

uint64_t OZDynamicCurve::areHandlesBroken(OZDynamicCurve *this, char *a2, BOOL *a3)
{
  v8 = 0;
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    OZSpline::getVertexFlags((this + 8), a2, &v8);
    *a3 = v8 & 1;
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::flattenHandles(OZDynamicCurve *this, char *a2, const CMTime *a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {

    return OZSpline::flattenHandles((this + 8), a2, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::setKeypointInputHandles(os_unfair_lock_s *this, char *a2, const CMTime *a3, double a4)
{
  result = OZSpline::isValidHandle(&this[2], a2);
  if (result)
  {

    return OZDynamicSpline::setVertexInputHandles(this + 2, a2, 0.0, a4, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::setKeypointOutputHandles(os_unfair_lock_s *this, char *a2, const CMTime *a3, double a4)
{
  result = OZSpline::isValidHandle(&this[2], a2);
  if (result)
  {

    return OZDynamicSpline::setVertexOutputHandles(this + 2, a2, 0.0, a4, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::getKeypointInputHandles(os_unfair_lock_s *this, char *a2, const CMTime *a3, double *a4)
{
  result = OZSpline::isValidHandle(&this[2], a2);
  if (result)
  {

    return OZDynamicSpline::getVertexInputHandles(this + 2, a2, 0, a4, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::getKeypointOutputHandles(os_unfair_lock_s *this, char *a2, const CMTime *a3, double *a4)
{
  result = OZSpline::isValidHandle(&this[2], a2);
  if (result)
  {

    return OZDynamicSpline::getVertexOutputHandles(this + 2, a2, 0, a4, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::setKeypointInterpolation(OZDynamicCurve *this, char *a2, uint64_t a3)
{
  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {

    return OZSpline::setVertexInterpolation((this + 8), a2, a3);
  }

  return result;
}

uint64_t OZDynamicCurve::setCurveInterpolation(OZDynamicCurve *this, uint64_t a2)
{
  v2 = a2;
  OZSpline::setInterpolation((this + 8), a2);
  *(this + 54) = v2;
  return 1;
}

uint64_t OZDynamicCurve::getKeypointInterpolation(OZInterpolators **this, char *a2, unsigned int *a3, BOOL *a4)
{
  result = OZSpline::isValidHandle((this + 1), a2);
  if (result)
  {

    return OZSpline::getVertexInterpolation(this + 1, a2, a3, a4);
  }

  return result;
}

uint64_t OZDynamicCurve::getVertexChannel(OZDynamicCurve *this, char *a2, OZChannelVertexFolder **a3)
{
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (a3)
  {
    v7 = isValidHandle;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    *a3 = OZDynamicSpline::getVertexChannel((this + 8), a2);
  }

  return v7;
}

uint64_t OZDynamicCurve::setVertexChannel(OZDynamicCurve *this, char *a2, OZChannelVertexFolder *a3)
{
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (a3)
  {
    v7 = isValidHandle;
  }

  else
  {
    v7 = 0;
  }

  if (v7 == 1)
  {
    OZDynamicSpline::setVertexChannel((this + 8), a2, a3);
  }

  return v7;
}

uint64_t OZDynamicCurve::getPreviousKeypointHandle(OZDynamicCurve *this, const CMTime *a2, char *a3, void **a4)
{
  result = OZSpline::isValidHandle((this + 8), a3);
  if (result)
  {
    PreviousVertex = OZSpline::getPreviousVertex((this + 8), a3);
    if (a4)
    {
      *a4 = PreviousVertex;
    }

    return PreviousVertex != 0;
  }

  return result;
}

uint64_t OZDynamicCurve::getNextKeypointHandle(void ***this, const CMTime *a2, char *a3, void **a4)
{
  result = OZSpline::isValidHandle((this + 1), a3);
  if (result)
  {
    NextVertex = OZSpline::getNextVertex(this + 1, a3);
    if (a4)
    {
      *a4 = NextVertex;
    }

    return NextVertex != 0;
  }

  return result;
}

uint64_t OZDynamicCurve::getPreviousValidKeypointHandle(OZDynamicCurve *this, const CMTime *a2, char *a3, void **a4)
{
  result = OZSpline::isValidHandle((this + 8), a3);
  if (result)
  {
    v10 = 0;
    OZSpline::getPreviousValidVertex((this + 8), a3, &v10, a2);
    v9 = v10;
    if (a4)
    {
      *a4 = v10;
    }

    return v9 != 0;
  }

  return result;
}

uint64_t OZDynamicCurve::getNextValidKeypointHandle(void ***this, const CMTime *a2, char *a3, void **a4)
{
  result = OZSpline::isValidHandle((this + 1), a3);
  if (result)
  {
    v10 = 0;
    OZSpline::getNextValidVertex(this + 1, a3, &v10, a2);
    v9 = v10;
    if (a4)
    {
      *a4 = v10;
    }

    return v9 != 0;
  }

  return result;
}

BOOL OZDynamicCurve::getPreviousValidKeypointHandle(OZDynamicCurve *this, const CMTime *a2, Float64 a3, void **a4)
{
  OZFigTimeForChannelSeconds(&v8, a3, 0x40000);
  OZSpline::getPreviousValidVertex((this + 8), &v8, a4, a2, 0);
  return *a4 != 0;
}

BOOL OZDynamicCurve::getNextValidKeypointHandle(OZDynamicCurve *this, const CMTime *a2, Float64 a3, void **a4)
{
  OZFigTimeForChannelSeconds(&v8, a3, 0x40000);
  OZSpline::getNextValidVertex((this + 8), &v8, a4, a2, 0);
  return *a4 != 0;
}

uint64_t OZDynamicCurve::deriveKeypoint(OZDynamicCurve *this, char *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = OZSpline::isValidHandle((this + 8), a2);
  if (result)
  {
    OZSpline::deriveVertex((this + 8), a2, MEMORY[0x277CC08F0]);
    return 1;
  }

  return result;
}

uint64_t OZDynamicCurve::isKeypointFlattened(OZDynamicCurve *this, char *a2, BOOL *a3)
{
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    *a3 = OZDynamicSpline::isVertexFlattened((this + 8), a2);
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::setDefaultAtCurrentTime(os_unfair_lock_s *this, char *a2, const CMTime *a3)
{
  isValidHandle = OZSpline::isValidHandle(&this[2], a2);
  if (isValidHandle)
  {
    OZDynamicSpline::setDefaultValueAtCurrentTime(this + 2, a2, a3);
  }

  return isValidHandle;
}

uint64_t OZDynamicCurve::getVertexToInsert(OZDynamicCurve *this, const CMTime *a2, Float64 a3, double *a4, double *a5, double *a6, double *a7, double *a8)
{
  OZFigTimeForChannelSeconds(&v16, a3, 0x40000);
  OZDynamicSpline::getVertexToInsert((this + 8), a2, &v16, a4, a5, a6, a7, a8);
  return 1;
}

uint64_t OZDynamicCurve::setKeypointID(OZDynamicCurve *this, char *a2, unsigned int a3)
{
  isValidHandle = OZSpline::isValidHandle((this + 8), a2);
  if (isValidHandle)
  {
    OZDynamicSpline::setVertexID((this + 8), a2, a3);
  }

  return isValidHandle;
}

void OZSplineState::OZSplineState(OZSplineState *this)
{
  *this = 256;
  *(this + 2) = 1;
  *(this + 4) = 1;
  *(this + 10) = 0;
  *(this + 44) = 1;
  *(this + 4) = 0;
  CMTimeMake(&v2, 1, 30);
  *(this + 8) = v2;
  *(this + 3) = 1;
}

void OZSplineState::OZSplineState(OZSplineState *this, const OZSplineState *a2)
{
  v3 = BYTE1(*a2);
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 4) = *(a2 + 4);
  *(this + 44) = 0;
  if (v3)
  {
    v4 = 30;
  }

  else
  {
    v4 = 3000000;
  }

  CMTimeMake(&v5, 1, v4);
  *(this + 8) = v5;
}

double OZSplineState::operator=(uint64_t a1, uint64_t a2)
{
  v3 = BYTE1(*a2);
  *a1 = *a2;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 4) = *(a2 + 4);
  if (v3)
  {
    v4 = 30;
  }

  else
  {
    v4 = 3000000;
  }

  CMTimeMake(&v6, 1, v4);
  result = *&v6.value;
  *(a1 + 8) = v6;
  return result;
}

void OZChannelHelpButton::OZChannelHelpButton(OZChannelHelpButton *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5)
{
  Instance = OZChannelHelpButton_Factory::getInstance(this);
  OZChannelButton::OZChannelButton(this, Instance, a2, a3, a4, a5);
  *this = &unk_287249288;
  *(this + 2) = &unk_2872495E8;
}

void OZChannelHelpButton::OZChannelHelpButton(OZChannelHelpButton *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelButton::OZChannelButton(this, a2, a3, a4);
  *v4 = &unk_287249288;
  v4[2] = &unk_2872495E8;
}

void OZChannelHelpButton::OZChannelHelpButton(OZChannelHelpButton *this, const OZChannelBase *a2, OZChannelFolder *a3)
{
  OZChannelButton::OZChannelButton(this, a2, a3);
  *v3 = &unk_287249288;
  v3[2] = &unk_2872495E8;
}

void OZChannelHelpButton::~OZChannelHelpButton(OZChannelButton *this)
{
  OZChannelButton::~OZChannelButton(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZChannelHelpButton::~OZChannelHelpButton(OZChannelHelpButton *this)
{
  OZChannelButton::~OZChannelButton((this - 16));
}

{
  OZChannelButton::~OZChannelButton((this - 16));

  JUMPOUT(0x2666E9F00);
}

void OZAccelerateInterpolator::easeTime(CMTime *a1@<X2>, _BYTE **a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = (2.0 - (*(*a2 + 5))(a2, MEMORY[0x277CC08F0])) * 0.5;
  v15 = *(a2 + 2);
  v16 = *a1;
  PC_CMTimeSaferSubtract(&v16, &v15, &time);
  Seconds = CMTimeGetSeconds(&time);
  memset(&time, 0, sizeof(time));
  v16 = *(a3 + 16);
  v15 = *(a2 + 2);
  PC_CMTimeSaferSubtract(&v16, &v15, &time);
  v16 = time;
  v10 = CMTimeGetSeconds(&v16);
  v13 = 0.0;
  PCMath::easeInOut(&v13, Seconds / v10, v8, 0.0, 0.0, 1.0, 0, v11);
  operator*(&time, &v12, v13);
  v15 = *(a2 + 2);
  v16 = v12;
  PC_CMTimeSaferAdd(&v16, &v15, a4);
}

void OZAccelerateInterpolator::~OZAccelerateInterpolator(OZAccelerateInterpolator *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void sub_25FE87010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZChannelDecibel::OZChannelDecibel(OZChannelDecibel *this, const PCString *a2, OZChannelFolder *a3, unsigned int a4, int a5, OZChannelImpl *a6, OZChannelInfo *a7)
{
  OZChannelDecibel_FactoryBase = getOZChannelDecibel_FactoryBase();
  OZChannel::OZChannel(this, OZChannelDecibel_FactoryBase, a2, a3, a4, a5, a6, a7);
  this->var0 = &unk_287247EB0;
  this->var2 = &unk_287248210;
  OZChannelDecibelInfo = OZChannelDecibel::createOZChannelDecibelInfo(v15);
  if (a7)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelDecibel::_OZChannelDecibelInfo;
    this->var17 = OZChannelDecibel::_OZChannelDecibelInfo;
  }

  this->var16 = var17;
  OZChannelDecibel::createOZChannelDecibelImpl(OZChannelDecibelInfo);
  if (a6)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelDecibel::_OZChannelDecibelImpl;
    this->var15 = OZChannelDecibel::_OZChannelDecibelImpl;
  }

  this->var14 = var15;
}

void OZChannelImpl::OZChannelImpl(OZChannelImpl *this, OZCurve *a2, double a3, int a4, char a5)
{
  *this = &unk_2872496F0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  atomic_store(0, this + 3);
  *(this + 32) = a5;
  v7 = a4 == 1;
  OZCurve::setIsSpline(a2, v7, MEMORY[0x277CC08F0]);
  (*(**(this + 1) + 80))(*(this + 1), v7);
  (*(**(this + 1) + 200))(*(this + 1), a3);
  (*(**(this + 1) + 216))(*(this + 1), a3);
}

void OZChannelImpl::operator=(OZChannelImpl *this, uint64_t a2)
{
  v4 = *(this + 2);
  v5 = *(a2 + 16);
  if (!(v4 | v5))
  {
    goto LABEL_13;
  }

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    MEMORY[0x2666E9F00]();
LABEL_13:
    *(this + 2) = 0;
    goto LABEL_14;
  }

  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = v5 == 0;
  }

  if (!v7)
  {
    operator new();
  }

  v8 = *v5;
  *(v4 + 16) = *(v5 + 16);
  *v4 = v8;
  v9 = *(v5 + 24);
  *(v4 + 40) = *(v5 + 40);
  *(v4 + 24) = v9;
  *(v4 + 48) = *(v5 + 48);
LABEL_14:
  OZChannelImpl::copyCurveInterface(this, *(a2 + 8));
  *(this + 32) = 0;
}

void OZChannelImpl::OZChannelImpl(OZChannelImpl *this, const OZChannelImpl *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2872496F0;
  atomic_store(0, this + 3);
  *(this + 32) = 0;
  OZChannelImpl::operator=(this, a2);
}

void OZChannelImpl::~OZChannelImpl(OZChannelImpl *this)
{
  *this = &unk_2872496F0;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 1) = 0;
  }

  if (atomic_load(this + 3))
  {
    v4 = atomic_load(this + 3);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        *(v4 + 8) = v5;
        operator delete(v5);
      }

      MEMORY[0x2666E9F00](v4, 0x20C40960023A9);
    }

    atomic_store(0, this + 3);
  }

  v6 = *(this + 2);
  if (v6)
  {
    MEMORY[0x2666E9F00](v6, 0x1000C4021716A34);
    *(this + 2) = 0;
  }
}

{
  OZChannelImpl::~OZChannelImpl(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelImpl::copyCurveInterface(OZChannelImpl *this, OZCurve *a2)
{
  v3 = *(this + 1);
  if (v3 == a2)
  {
    return;
  }

  if (!v3)
  {
LABEL_11:
    *(this + 1) = (*(*a2 + 1224))(a2);
    return;
  }

  if (!(*(*v3 + 1232))(v3) || !(*(*a2 + 1232))(a2))
  {
    v6 = *(this + 1);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    *(this + 1) = 0;
    goto LABEL_11;
  }

  v5 = *(this + 1);

  OZCurve::operator=(v5, a2);
}

uint64_t OZChannelImpl::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if ((v4 != 0) == (v5 == 0))
  {
    return 0;
  }

  v17 = v2;
  v18 = v3;
  if (v4)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return OZCurve::operator==(*(a1 + 8), *(a2 + 8));
  }

  v10 = *v4;
  time1.epoch = *(v4 + 2);
  *&time1.value = v10;
  v11 = *v5;
  v15.epoch = *(v5 + 2);
  *&v15.value = v11;
  if (!CMTimeCompare(&time1, &v15) && (v12 = *(a2 + 16), time1 = *(*(a1 + 16) + 24), v15 = *(v12 + 24), !CMTimeCompare(&time1, &v15)) && (v13 = *(a1 + 16), v14 = *(a2 + 16), *(v13 + 48) == *(v14 + 48)) && *(v13 + 52) == *(v14 + 52))
  {
    return OZCurve::operator==(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

BOOL OZChannelImpl::shouldKeepLocalCopy(OZChannelImpl *this)
{
  if (*(this + 32))
  {
    return 0;
  }

  v6 = v1;
  v7 = v2;
  v5 = 0;
  (*(**(this + 1) + 1152))(*(this + 1), &v5);
  return v5 || *(*(this + 1) + 152);
}

uint64_t OZChannelImpl::beginRecording(OZChannelImpl *this, const CMTime *a2)
{
  if (!atomic_load(this + 3))
  {
    operator new();
  }

  v3 = atomic_load(this + 3);
  v3[1] = *v3;
  v4 = *(**(this + 1) + 1176);

  return v4();
}

OZChannelImpl *OZChannelImpl::didRecordValue(OZChannelImpl *this, OZChannelBase *a2, const CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = atomic_load(this + 3);
  if (v8[1] != *v8)
  {
    v11 = this;
    v12 = 0;
    v13 = 1;
    do
    {
      v14 = atomic_load(v11 + 3);
      v15 = *v14 + 24 * v12;
      v18 = *&a3->value;
      epoch = a3->epoch;
      if (*(v15 + 16) == 1)
      {
        OZChannelBase::ensureObjCWrapperExists(a2, a2, a3, a4, a5, a6, a7, a8);
      }

      this = (*v15)(a2, &v18, *(v15 + 8));
      v12 = v13;
      v16 = atomic_load(v11 + 3);
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v16[1] - *v16) >> 3) > v13++);
  }

  return this;
}

void OZChannelImpl::registerRecordingCallback(OZChannelImpl *this, void (*a2)(OZChannelBase *, const CMTime *, void *), void *a3, char a4)
{
  if (!atomic_load(this + 3))
  {
    operator new();
  }

  v6 = atomic_load(this + 3);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  if (v8 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v6) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v6) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RecordingCallbackData>>(v6, v13);
    }

    v14 = 24 * v10;
    *v14 = a2;
    *(v14 + 8) = a3;
    *(v14 + 16) = a4;
    v9 = 24 * v10 + 24;
    v15 = *(v6 + 8) - *v6;
    v16 = (24 * v10 - v15);
    memcpy(v16, *v6, v15);
    v17 = *v6;
    *v6 = v16;
    *(v6 + 8) = v9;
    *(v6 + 16) = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v8 = a2;
    *(v8 + 8) = a3;
    v9 = v8 + 24;
    *(v8 + 16) = a4;
  }

  *(v6 + 8) = v9;
}

OZChannelImpl *OZChannelImpl::unregisterRecordingCallback(OZChannelImpl *this, void (*a2)(OZChannelBase *, const CMTime *, void *), void *a3)
{
  v3 = (this + 24);
  if (!atomic_load(this + 3))
  {
    operator new();
  }

  v5 = atomic_load(v3);
  v6 = *v5;
  v7 = atomic_load(v3);
  if (v6 != *(v7 + 8))
  {
    v8 = 0;
    while (1)
    {
      if (*(v6 + v8) == a2)
      {
        v9 = v6 + v8;
        if (*(v6 + v8 + 8) == a3)
        {
          break;
        }
      }

      v10 = atomic_load(this + 3);
      v8 += 24;
      if (v6 + v8 == *(v10 + 8))
      {
        return this;
      }
    }

    v11 = (this + 24);
    v12 = atomic_load(this + 3);
    v13 = *(v12 + 8);
    v14 = v13 - v6 - v8;
    v15 = v14 - 24;
    if (v9 + 24 != v13)
    {
      this = memmove(v9, (v9 + 24), v14 - 31);
    }

    *(v12 + 8) = v9 + v15;
    atomic_load(v11);
  }

  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<RecordingCallbackData>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void sub_25FE87FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZBezierInterpolator::OZBezierInterpolator(OZBezierInterpolator *this)
{
  OZSplineInterpolator::OZSplineInterpolator(this);
  *v1 = &unk_287249720;
  v1[1] = 0x3FF0000000000000;
}

void OZBezierInterpolator::~OZBezierInterpolator(OZBezierInterpolator *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZBezierInterpolator::computeTangents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(*a3 + 64))(a3, a6, a7, a5);
  result = (*(*a4 + 56))(a4, a8, a9, a5);
  if ((**(a2 + 168) & 1) == 0)
  {
    (*(*a1 + 48))(a1, a2, a6, a7);
    v17 = *(*a1 + 48);

    return v17(a1, a2, a8, a9);
  }

  return result;
}

double OZBezierInterpolator::getControlPoints(OZBezierInterpolator *this, OZSpline *a2, void *a3, void *a4, const CMTime *a5, CMTime *a6, CMTime *a7, double *a8, double *a9)
{
  v17 = *(a3 + 1);
  a6->epoch = *(a3 + 4);
  *&a6->value = v17;
  v18 = *(a4 + 1);
  a7->epoch = *(a4 + 4);
  *&a7->value = v18;
  time1 = *a6;
  time2 = *a7;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v28);
    time1 = *a6;
    time2 = v28;
    PC_CMTimeSaferAdd(&time1, &time2, &time);
    *a7 = time;
  }

  *a9 = (*(*a3 + 24))(a3, a5);
  a9[3] = (*(*a4 + 24))(a4, a5);
  *a8 = 0.0;
  a8[3] = 1.0;
  (*(*this + 128))(this, a2, a3, a4, a5, a8 + 1, a9 + 1, a8 + 2, a9 + 2);
  time1 = *a7;
  time2 = *a6;
  PC_CMTimeSaferSubtract(&time1, &time2, &time);
  Seconds = CMTimeGetSeconds(&time);
  v22.i64[0] = 0x3EE4F8B580000000;
  if (Seconds >= 0.00000999999975)
  {
    *v22.i64 = Seconds;
  }

  v23 = a8[2];
  v24 = *(this + 1) * a8[1];
  a8[1] = v24;
  *v21.i64 = *(this + 1) * v23;
  a8[1] = v24 / *v22.i64;
  a8[2] = (Seconds + *v21.i64) / *v22.i64;
  a9[1] = *a9 + a9[1] * *(this + 1);
  v25 = *(this + 1);
  *v22.i64 = a9[2] * v25;
  result = a9[3] + *v22.i64;
  a9[2] = result;
  v27 = *(a2 + 21);
  if ((*v27 & 1) == 0 && v27[3] == 1)
  {
    *&result = *&OZBezierSanitizeControlPolygon(a8, a9, v19, result, v22, v25, v21);
  }

  return result;
}

void OZBezierInterpolator::interpolate(OZBezierInterpolator *this, OZSpline *a2, const CMTime *a3, void *a4, void *a5, const CMTime *a6, char a7, char a8)
{
  v32[4] = *MEMORY[0x277D85DE8];
  v27 = **&MEMORY[0x277CC08F0];
  v26 = v27;
  OZBezierInterpolator::getControlPoints(this, a2, a4, a5, a3, &v27, &v26, v32, v31);
  v28 = *a6;
  time1 = v26;
  time2 = v27;
  PC_CMTimeSaferSubtract(&time1, &time2, &time);
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds >= 0.00000999999975)
  {
    v14 = Seconds;
  }

  else
  {
    v14 = 0.00000999999975;
  }

  time1 = v28;
  time2 = v27;
  PC_CMTimeSaferSubtract(&time1, &time2, &time);
  v18.n128_f64[0] = CMTimeGetSeconds(&time);
  if (a8)
  {
    memset(&time, 0, sizeof(time));
    CMTimeMake(&v24, 1, 1000);
    time1 = *a6;
    time2 = v24;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    memset(&v24, 0, sizeof(v24));
    CMTimeMake(&v23, 1, 1000);
    time1 = *a6;
    time2 = v23;
    v21 = PC_CMTimeSaferAdd(&time1, &time2, &v24);
    v22 = MEMORY[0x277CC08F0];
    (*(*a2 + 240))(a2, &time, MEMORY[0x277CC08F0], 0, v21);
    (*(*a2 + 240))(a2, &v24, v22, 0);
    OZSpline::getMinValueU(a2, v22, 0, &v23);
    time1 = time;
    time2 = v23;
    if (CMTimeCompare(&time1, &time2) < 0 || (OZSpline::getMaxValueU(a2, MEMORY[0x277CC08F0], 0, &v23), time1 = v24, time2 = v23, CMTimeCompare(&time1, &time2) >= 1))
    {
      (*(*a2 + 240))(a2, a6, MEMORY[0x277CC08F0], 0);
    }
  }

  else
  {
    v18.n128_f64[0] = v18.n128_f64[0] / v14;
    if ((a7 & 1) == 0)
    {
      v18.n128_f64[0] = OZBezierFindParameter(v32, v18.n128_f64[0], v19, v20, v15, v16, v17);
    }

    (*(*this + 112))(this, v31, v18);
  }
}

uint64_t OZBezierInterpolator::eval(OZBezierInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, _BYTE **a5, double a6)
{
  v19 = *MEMORY[0x277D85DE8];
  time1 = *(a4 + 16);
  v16 = *(a5 + 2);
  v12 = CMTimeCompare(&time1, &v16);
  v13 = *a4;
  if (v12 < 1)
  {
    (*(v13 + 64))(a4, 0, &time1.timescale, a3);
    (*(*a5 + 7))(a5, 0, &time1.epoch, a3);
  }

  else
  {
    (*(v13 + 56))(a4, 0, &time1.timescale, a3);
    (*(*a5 + 8))(a5, 0, &time1.epoch, a3);
  }

  if (**(a2 + 21) != 1)
  {
    (*(*this + 48))(this, a2, 0, &time1.timescale);
    (*(*this + 48))(this, a2, 0, &time1.epoch);
  }

  time1.value = (*(*a4 + 24))(a4, a3);
  v18 = (*(*a5 + 3))(a5, a3);
  *&v14.f64[0] = time1.value;
  v14.f64[1] = v18;
  *&time1.timescale = vaddq_f64(v14, vmulq_n_f64(*&time1.timescale, *(this + 1)));
  return (*(*this + 112))(this, &time1, a6);
}

uint64_t OZBezierInterpolator::subDivide(OZBezierInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, char *a5, _BYTE **a6)
{
  v35 = *MEMORY[0x277D85DE8];
  v26 = *(a4 + 16);
  v25 = *(a5 + 16);
  time1 = *(a4 + 16);
  time2 = *(a5 + 16);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v29);
    time1 = v26;
    time2 = v29;
    v12.n128_f64[0] = PC_CMTimeSaferAdd(&time1, &time2, &v25);
  }

  time2.value = (*(*a4 + 24))(a4, a3, v12);
  v32 = (*(*a5 + 24))(a5, a3);
  time1.value = 0;
  v34 = 0x3FF0000000000000;
  (*(*a4 + 64))(a4, &time1.timescale, &time2.timescale, a3);
  (*(*a5 + 56))(a5, &time1.epoch, &time2.epoch, a3);
  if ((**(a2 + 21) & 1) == 0)
  {
    (*(*this + 48))(this, a2, &time1.timescale, &time2.timescale);
    (*(*this + 48))(this, a2, &time1.epoch, &time2.epoch);
  }

  v29 = v25;
  v27 = v26;
  PC_CMTimeSaferSubtract(&v29, &v27, &time);
  Seconds = CMTimeGetSeconds(&time);
  *&time1.timescale = *&time1.timescale / Seconds;
  *&time1.epoch = (Seconds + *&time1.epoch) / Seconds;
  *&v14.f64[0] = time2.value;
  v14.f64[1] = v32;
  *&time2.timescale = vaddq_f64(v14, vmulq_n_f64(*&time2.timescale, *(this + 1)));
  v29 = *(a6 + 2);
  v27 = v26;
  PC_CMTimeSaferSubtract(&v29, &v27, &time);
  v20.n128_f64[0] = CMTimeGetSeconds(&time) / Seconds;
  v15 = *&time2.value + v20.n128_f64[0] * (*&time2.timescale - *&time2.value);
  v16 = *&time2.timescale + v20.n128_f64[0] * (*&time2.epoch - *&time2.timescale);
  v17 = (1.0 - v20.n128_f64[0]) * v15 + v20.n128_f64[0] * v16;
  v18 = *&time2.epoch + v20.n128_f64[0] * (v32 - *&time2.epoch);
  v19 = (1.0 - v20.n128_f64[0]) * v16 + v20.n128_f64[0] * v18;
  v20.n128_f64[0] = (1.0 - v20.n128_f64[0]) * v17 + v20.n128_f64[0] * v19;
  v29.value = time2.value;
  *&v29.timescale = v15 - *&time2.value;
  *&v29.epoch = v17 - v20.n128_f64[0];
  v30 = v20.n128_u64[0];
  v27.value = v20.n128_u64[0];
  *&v27.timescale = v19 - v20.n128_f64[0];
  *&v27.epoch = v18 - v32;
  v28 = v32;
  if ((**(a2 + 21) & 1) == 0)
  {
    (*(*this + 40))(this, a2, 0, &v29.epoch);
    (*(*this + 40))(this, a2, 0, &v29.timescale);
    (*(*this + 40))(this, a2, 0, &v27.epoch);
    (*(*this + 40))(this, a2, 0, &v27.timescale);
    v20.n128_u64[0] = v30;
  }

  (*(*a6 + 4))(a6, a3, v20);
  (*(*a6 + 9))(a6, a3, 1.0, *&v29.epoch);
  (*(*a6 + 10))(a6, a3, 1.0, *&v27.timescale);
  v21 = (*(*a4 + 168))(a4);
  (*(*a4 + 160))(a4, 2);
  (*(*a4 + 80))(a4, a3, 1.0, *&v29.timescale);
  (*(*a4 + 176))(a4, v21);
  v22 = (*(*a5 + 168))(a5);
  (*(*a5 + 160))(a5, 2);
  (*(*a5 + 72))(a5, a3, 1.0, *&v27.epoch);
  return (*(*a5 + 176))(a5, v22);
}

void OZBezierInterpolator::getMinMaxValues(OZBezierInterpolator *this, OZSpline *a2, void *a3, void *a4, const CMTime *a5, const CMTime *a6, double *a7, double *a8)
{
  v47[4] = *MEMORY[0x277D85DE8];
  OZBezierInterpolator::getControlPoints(this, a2, a3, a4, MEMORY[0x277CC08F0], &v41, &v40, v47, &v44);
  time1 = v41;
  time2 = *a5;
  Parameter = 0.0;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = *a5;
    time2 = v41;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    Seconds = CMTimeGetSeconds(&time);
    time1 = v40;
    time2 = v41;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    v15 = CMTimeGetSeconds(&time);
    Parameter = OZBezierFindParameter(v47, Seconds / v15, v19, v20, v16, v17, v18);
  }

  time1 = v40;
  time2 = *a6;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    v28 = 1.0;
  }

  else
  {
    time1 = *a6;
    time2 = v41;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    v21 = CMTimeGetSeconds(&time);
    time1 = v40;
    time2 = v41;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    v22 = CMTimeGetSeconds(&time);
    v28 = OZBezierFindParameter(v47, v21 / v22, v26, v27, v23, v24, v25);
  }

  *a7 = (*(*this + 112))(this, &v44, Parameter);
  v30 = (*(*this + 112))(this, &v44, v28);
  *a8 = v30;
  v32.i64[0] = *a7;
  if (*a7 > v30)
  {
    *a7 = v30;
    *a8 = *v32.i64;
  }

  v33 = vmulq_f64(v46, xmmword_2608491A0);
  *v32.i64 = v44 * 6.0 + v45 * -12.0 + 6.0 * v46.f64[0];
  time1.value = 0;
  time2.value = 0;
  v31.i64[0] = 0;
  v34 = PCMath::quadratic(&time1, v44 * -3.0 + v45 * 9.0 - v33.f64[0] + v33.f64[1], v32, v44 * -3.0 + v45 * 3.0, &time2.value, v29, v31);
  if (v34 == 2)
  {
    if (*&time1.value >= Parameter && *&time1.value <= v28)
    {
      v36 = (*(*this + 112))(this, &v44, *&time1.value);
      v37 = a7;
      if (v36 < *a7 || (v37 = a8, v36 > *a8))
      {
        *v37 = v36;
      }
    }

    v35 = *&time2.value;
  }

  else
  {
    if (v34 != 1)
    {
      return;
    }

    v35 = *&time1.value;
  }

  if (v35 >= Parameter && v35 <= v28)
  {
    v38 = (*(*this + 112))(this, &v44);
    if (v38 >= *a7)
    {
      if (v38 > *a8)
      {
        *a8 = v38;
      }
    }

    else
    {
      *a7 = v38;
    }
  }
}

BOOL OZBezierInterpolator::uForCurveValue(OZBezierInterpolator *a1, OZSpline *a2, void *a3, void *a4, CMTime *a5, CMTime *a6, uint64_t a7, double a8)
{
  v45[4] = *MEMORY[0x277D85DE8];
  v40 = **&MEMORY[0x277CC08F0];
  v39 = v40;
  OZBezierInterpolator::getControlPoints(a1, a2, a3, a4, MEMORY[0x277CC08F0], &v40, &v39, v45, v44);
  Roots = OZBezierGetRoots(v44, a8, v43, v13, v14, v15, v16);
  if (!Roots)
  {
    return 0;
  }

  time1 = v39;
  time2 = v40;
  PC_CMTimeSaferSubtract(&time1, &time2, &time);
  Seconds = CMTimeGetSeconds(&time);
  v19 = Roots;
  v20 = v43;
  do
  {
    v21 = *v20;
    if ((*v20 > 0.0 || fabs(v21) < 0.0000001) && (v21 < 1.0 || fabs(v21 + -1.0) < 0.0000001))
    {
      memset(&time, 0, sizeof(time));
      v22 = (*(*a1 + 112))(a1, v45);
      OZFigTimeForChannelSeconds(&v37, Seconds * v22, 0x40000);
      time1 = v40;
      time2 = v37;
      PC_CMTimeSaferAdd(&time1, &time2, &time);
      time1 = time;
      time2 = *a5;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        time1 = time;
        time2 = *a6;
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          v24 = *(a7 + 8);
          v23 = *(a7 + 16);
          if (v24 >= v23)
          {
            v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a7) >> 3);
            v28 = v27 + 1;
            if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a7) >> 3);
            if (2 * v29 > v28)
            {
              v28 = 2 * v29;
            }

            if (v29 >= 0x555555555555555)
            {
              v30 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a7, v30);
            }

            v31 = 24 * v27;
            v32 = *&time.value;
            *(v31 + 16) = time.epoch;
            *v31 = v32;
            v26 = 24 * v27 + 24;
            v33 = *(a7 + 8) - *a7;
            v34 = 24 * v27 - v33;
            memcpy((v31 - v33), *a7, v33);
            v35 = *a7;
            *a7 = v34;
            *(a7 + 8) = v26;
            *(a7 + 16) = 0;
            if (v35)
            {
              operator delete(v35);
            }
          }

          else
          {
            v25 = *&time.value;
            *(v24 + 16) = time.epoch;
            *v24 = v25;
            v26 = v24 + 24;
          }

          *(a7 + 8) = v26;
        }
      }
    }

    ++v20;
    --v19;
  }

  while (v19);
  return *a7 != *(a7 + 8);
}

__n128 OZInterpolator::easeTime@<Q0>(__n128 *a1@<X2>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

double OZBezierEval(const double *a1, double a2)
{
  v2 = *(a1 + 1);
  v3 = 3.0 * v2.f64[0];
  v4 = 3.0 * v2.f64[0] - *a1;
  v5 = vmulq_f64(v2, xmmword_2608491D0);
  return *a1 + (v3 - *a1 * 3.0 + (*a1 * 3.0 - v5.f64[0] + v5.f64[1] + (a1[3] + v4 - v5.f64[1]) * a2) * a2) * a2;
}

float64x2_t OZBezierSanitizeControlPolygon(double *a1, double *a2, double *a3, double a4, int8x16_t a5, double a6, int8x16_t a7)
{
  a7.i64[0] = a1[1];
  v9 = *a1 * -3.0;
  v10 = *(a1 + 2);
  v11 = vmulq_f64(v10, xmmword_2608491A0);
  result.f64[0] = v9 + *a7.i64 * 9.0 - v11.f64[0] + v11.f64[1];
  if (result.f64[0] > 0.0)
  {
    *a5.i64 = *a1 * 6.0 + *a7.i64 * -12.0 + 6.0 * v10.f64[0];
    v13 = -*a5.i64 / (result.f64[0] + result.f64[0]);
    if (v13 >= 0.0 && v13 <= 1.0)
    {
      v32[3] = v7;
      v32[4] = v8;
      v17 = v9 + *a7.i64 * 3.0;
      v31 = 0;
      v32[0] = 0;
      a7.i64[0] = 0;
      if (PCMath::quadratic(v32, result.f64[0], a5, v17, &v31, a3, a7) == 2)
      {
        v18 = *a1;
        v19 = a1[1] - *a1;
        v20 = a1[3];
        v21 = v20 - a1[2];
        v22 = 0.5;
        if (vabdd_f64(v19, v21) >= 0.0000001)
        {
          v23 = (v19 - sqrt(v19 * v21)) / (v19 - v21);
          v24 = 1.0;
          if (v23 <= 1.0)
          {
            v24 = v23;
          }

          v25 = v23 < 0.0;
          v22 = 0.0;
          if (!v25)
          {
            v22 = v24;
          }
        }

        v26 = (1.0 - v22 * 3.0 + v22 * (v22 * 3.0)) / (v20 - v18);
        v27 = v18 + v22 * v22 / v26;
        v28 = v18 + (v22 * (v22 + v22) - v22) / v26;
        v29 = (v27 - v18) / v19;
        if (v21 > v19)
        {
          v29 = (v20 - v28) / v21;
        }

        a1[1] = v27;
        a1[2] = v28;
        v30.f64[0] = *a2;
        v30.f64[1] = a2[3];
        result = vaddq_f64(v30, vmulq_n_f64(vsubq_f64(*(a2 + 1), v30), v29));
        *(a2 + 1) = result;
      }
    }
  }

  return result;
}

uint64_t OZBezierGetRoots(const double *a1, double a2, double *a3, double *a4, double *a5, double a6, int8x16_t a7)
{
  *a7.i64 = *a1;
  v7 = *(a1 + 1);
  __asm { FMOV            V1.2D, #3.0 }

  v13 = vmulq_f64(v7, _Q1);
  v14 = a1[3] + *v13.i64 - *a1 - *&v13.i64[1];
  v15 = *a1 * 3.0;
  v16 = v15 + -6.0 * v7.f64[0] + *&v13.i64[1];
  if (fabs(v14) >= 0.0000001)
  {
    *a7.i64 = (*a7.i64 - a2) / v14;
    return PCMath::cubic(a3, v16 / v14, (*v13.i64 - v15) / v14, a7, a3 + 1, a3 + 2, a5);
  }

  else
  {
    *v13.i64 = *v13.i64 - v15;
    v7.f64[0] = 0.0;
    return PCMath::quadratic(a3, v16, v13, *a7.i64 - a2, a3 + 1, a4, v7);
  }
}

double OZBezierFindParameter(const double *a1, double a2, double a3, int8x16_t a4, uint64_t a5, double *a6, double *a7)
{
  v22 = *MEMORY[0x277D85DE8];
  Roots = OZBezierGetRoots(a1, a2, &v19, a6, a7, a3, a4);
  if (Roots == 3)
  {
    result = v19;
    v11 = 0.0;
    v12 = v19 + -1.0;
    if (v19 <= 1.0)
    {
      v12 = 0.0;
    }

    if (v19 < 0.0)
    {
      v12 = 0.0 - v19;
    }

    if (v20 >= 0.0)
    {
      if (v20 > 1.0)
      {
        v11 = v20 + -1.0;
      }
    }

    else
    {
      v11 = 0.0 - v20;
    }

    if (v12 >= v11)
    {
      v18 = 0.0;
      if (v21 >= 0.0)
      {
        if (v21 > 1.0)
        {
          v18 = v21 + -1.0;
        }
      }

      else
      {
        v18 = 0.0 - v21;
      }

      v14 = v21 < 0.0;
      v15 = v20 < 0.0;
      v16 = v11 < v18;
      if (v11 >= v18)
      {
        result = v21;
      }

      else
      {
        result = v20;
      }
    }

    else
    {
      v17 = 0.0;
      if (v21 >= 0.0)
      {
        if (v21 > 1.0)
        {
          v17 = v21 + -1.0;
        }
      }

      else
      {
        v17 = 0.0 - v21;
      }

      v14 = v21 < 0.0;
      v15 = v19 < 0.0;
      v16 = v12 < v17;
      if (v12 >= v17)
      {
        result = v21;
      }
    }
  }

  else
  {
    if (Roots != 2)
    {
      result = 0.0;
      if (Roots == 1)
      {
        v9 = 1.0;
        if (v19 <= 1.0)
        {
          v9 = v19;
        }

        result = 0.0;
        if (v19 >= 0.0)
        {
          return v9;
        }
      }

      return result;
    }

    result = v19;
    v10 = 0.0;
    if (v19 >= 0.0)
    {
      if (v19 > 1.0)
      {
        v10 = v19 + -1.0;
      }
    }

    else
    {
      v10 = 0.0 - v19;
    }

    v13 = 0.0;
    if (v20 >= 0.0)
    {
      if (v20 > 1.0)
      {
        v13 = v20 + -1.0;
      }
    }

    else
    {
      v13 = 0.0 - v20;
    }

    v14 = v20 < 0.0;
    v15 = v19 < 0.0;
    v16 = v10 < v13;
    if (v10 >= v13)
    {
      result = v20;
    }
  }

  if (v16)
  {
    v14 = v15;
  }

  if (result > 1.0)
  {
    result = 1.0;
  }

  if (v14)
  {
    return 0.0;
  }

  return result;
}

void OZBSplineInterpolator::OZBSplineInterpolator(OZBSplineInterpolator *this)
{
  OZInterpolator::OZInterpolator(this);
  *v1 = &unk_2872497D0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0;
  *(v1 + 112) = 4;
  *(v1 + 32) = 0;
  *(v1 + 116) = 0;
}

void OZBSplineInterpolator::OZBSplineInterpolator(OZBSplineInterpolator *this, const OZBSplineInterpolator *a2)
{
  OZInterpolator::OZInterpolator(this);
  *v4 = &unk_2872497D0;
  *(v4 + 8) = 0;
  v5 = (v4 + 8);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 40) = 0u;
  v6 = (v4 + 40);
  *(v4 + 88) = 0u;
  v7 = (v4 + 88);
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 104) = 0;
  *(v4 + 112) = *(a2 + 28);
  if (v4 != a2)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(this + 8, *(a2 + 8), *(a2 + 9), (*(a2 + 9) - *(a2 + 8)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v7, *(a2 + 11), *(a2 + 12), (*(a2 + 12) - *(a2 + 11)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v5, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 3);
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v6, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  }

  *(this + 8) = *(a2 + 8);
  *(this + 116) = *(a2 + 116);
}

void sub_25FE89F24(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 96) = v6;
    operator delete(v6);
  }

  OZBSplineInterpolator::OZBSplineInterpolator((v1 + 64), v3, v2, v1);
  OZChannelBase::setRangeName(v1, v7);
  _Unwind_Resume(a1);
}

void OZBSplineInterpolator::~OZBSplineInterpolator(OZChannelBase *this, const PCString *a2)
{
  this->var0 = &unk_2872497D0;
  var11 = this->var11;
  if (var11)
  {
    this->var12 = var11;
    operator delete(var11);
  }

  var8 = this->var8;
  if (var8)
  {
    this->var9 = var8;
    operator delete(var8);
  }

  var5 = this->var5;
  if (var5)
  {
    this->var6 = var5;
    operator delete(var5);
  }

  var1 = this->var1;
  if (var1)
  {
    this->var2 = var1;
    operator delete(var1);
  }

  OZChannelBase::setRangeName(this, a2);
}

{
  OZBSplineInterpolator::~OZBSplineInterpolator(this, a2);

  JUMPOUT(0x2666E9F00);
}

BOOL OZBSplineInterpolator::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 112) != *(a2 + 112))
  {
    return 0;
  }

  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  v4 = *(a2 + 64);
  if (v2 - v3 != *(a2 + 72) - v4)
  {
    return 0;
  }

  while (v3 != v2)
  {
    if (*v3 != *v4)
    {
      return 0;
    }

    ++v3;
    ++v4;
  }

  v6 = *(a1 + 88);
  v5 = *(a1 + 96);
  v7 = *(a2 + 88);
  if (v5 - v6 != *(a2 + 96) - v7)
  {
    return 0;
  }

  while (v6 != v5)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
  }

  if (*(a1 + 32) != *(a2 + 32))
  {
    return 0;
  }

  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  v10 = *(a2 + 40);
  if (v8 - v9 != *(a2 + 48) - v10)
  {
    return 0;
  }

  while (v9 != v8)
  {
    if (*v9 != *v10)
    {
      return 0;
    }

    ++v9;
    ++v10;
  }

  v12 = *(a1 + 8);
  v11 = *(a1 + 16);
  v13 = *(a2 + 8);
  if (v11 - v12 != *(a2 + 16) - v13)
  {
    return 0;
  }

  if (v12 == v11)
  {
    return 1;
  }

  v14 = v12 + 8;
  do
  {
    v15 = *v13++;
    result = *(v14 - 8) == v15;
    v17 = *(v14 - 8) != v15 || v14 == v11;
    v14 += 8;
  }

  while (!v17);
  return result;
}

double OZBSplineInterpolator::convertBSplineBiasToLinear(OZBSplineInterpolator *this, double a2)
{
  if (a2 >= 1.0)
  {
    v2 = 25.0 - a2;
    v3 = 24.0;
  }

  else
  {
    v2 = 1.9 - a2;
    v3 = 0.9;
  }

  return v2 / v3;
}

void OZBSplineInterpolator::generateOpenKnotVector(OZBSplineInterpolator *this, OZSpline *a2)
{
  v3 = (this + 64);
  v4 = *(this + 8);
  v5 = (*(this + 28) + v4);
  *(this + 9) = *(this + 8);
  v11 = 0.0;
  std::vector<double>::push_back[abi:ne200100](this + 8, &v11);
  if (v5 >= 2)
  {
    v6 = 0;
    v7 = (v4 + 2);
    v8 = 1;
    do
    {
      v9 = v8 + 1;
      if (v8 < *(this + 28) || v9 >= v7)
      {
        std::vector<double>::push_back[abi:ne200100](v3, *v3 + v6);
      }

      else
      {
        v11 = *(*v3 + v6) + 1.0;
        std::vector<double>::push_back[abi:ne200100](v3, &v11);
      }

      v6 += 8;
      v8 = v9;
    }

    while (v5 != v9);
  }
}

void OZBSplineInterpolator::generatePeriodicKnotVector(OZBSplineInterpolator *this, OZSpline *a2)
{
  v2 = (this + 64);
  v3 = *(this + 28) + *(this + 8);
  *(this + 9) = *(this + 8);
  v6 = 0.0;
  std::vector<double>::push_back[abi:ne200100](this + 8, &v6);
  if (v3 >= 2)
  {
    v4 = v3 - 1;
    v5 = 1.0;
    do
    {
      v6 = v5;
      std::vector<double>::push_back[abi:ne200100](v2, &v6);
      v5 = v5 + 1.0;
      --v4;
    }

    while (v4);
  }
}

uint64_t OZBSplineInterpolator::generateRationalBasisFunctions(uint64_t this, double a2)
{
  if (*(this + 112) + *(this + 32))
  {
    operator new[]();
  }

  return this;
}

CMTime *OZBSplineInterpolator::getAdjustedMaxU@<X0>(OZBSplineInterpolator *this@<X0>, OZSpline *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, CMTime *a5@<X8>)
{
  result = OZSpline::getNumberOfValidVerticesWithMultiplicity(a2, MEMORY[0x277CC08F0]);
  if (result)
  {
    if ((*(*this + 88))(this, a2))
    {
      (*(*this + 16))(this, a2, a3);
    }

    if (*(a2 + 144) == 1)
    {
      LODWORD(v11) = *(this + 8);
      v12 = v11;
    }

    else
    {
      v12 = (((*(this + 9) - *(this + 8)) >> 3) - 1);
    }

    return OZFigTimeForChannelSeconds(a5, v12, 0x40000);
  }

  else
  {
    *&a5->value = *&a4->value;
    a5->epoch = a4->epoch;
  }

  return result;
}

CMTime *OZBSplineInterpolator::getAdjustedMinU@<X0>(OZBSplineInterpolator *this@<X0>, OZSpline *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, CMTime *a5@<X8>)
{
  v10 = MEMORY[0x277CC08F0];
  result = OZSpline::getNumberOfValidVerticesWithMultiplicity(a2, MEMORY[0x277CC08F0]);
  if (!result)
  {
    *&a5->value = *&a4->value;
    epoch = a4->epoch;
LABEL_10:
    a5->epoch = epoch;
    return result;
  }

  result = (*(*this + 88))(this, a2);
  if (result)
  {
    result = (*(*this + 16))(this, a2, a3);
  }

  if (*(a2 + 144) != 1)
  {
    *&a5->value = *v10;
    epoch = *(v10 + 16);
    goto LABEL_10;
  }

  v12 = (*(this + 28) - 1);

  return OZFigTimeForChannelSeconds(a5, v12, 0x40000);
}

void OZBSplineInterpolator::init(OZBSplineInterpolator *this, OZSpline *a2, const CMTime *a3)
{
  v5 = *(a2 + 144);
  NumberOfValidVerticesWithMultiplicity = OZSpline::getNumberOfValidVerticesWithMultiplicity(a2, MEMORY[0x277CC08F0]);
  if (v5 == 1)
  {
    *(this + 8) = NumberOfValidVerticesWithMultiplicity + 3;
    *(this + 28) = 4;
    OZBSplineInterpolator::generatePeriodicKnotVector(this, v7);
  }

  else
  {
    *(this + 8) = NumberOfValidVerticesWithMultiplicity;
    if (NumberOfValidVerticesWithMultiplicity >= 4)
    {
      v8 = 4;
    }

    else
    {
      v8 = NumberOfValidVerticesWithMultiplicity;
    }

    *(this + 28) = v8;
    OZBSplineInterpolator::generateOpenKnotVector(this, v7);
  }

  OZSpline::setDirty(a2, 0);
}

void OZBSplineInterpolator::fillTempArrays(OZBSplineInterpolator *this, OZSpline *a2, const CMTime *a3)
{
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v7 = (this + 40);
  v6 = *(this + 5);
  v8 = (this + 8);
  *(this + 2) = *(this + 1);
  *(this + 6) = v6;
  if (*(a2 + 144) == 1)
  {
    v9 = MEMORY[0x277CC08F0];
    OZSpline::getFirstValidVertex(a2, &v21, MEMORY[0x277CC08F0]);
    OZSpline::getLastValidVertex(a2, &v20, v9);
    std::vector<double>::reserve(v8, *(this + 8));
    std::vector<double>::reserve(v7, *(this + 8));
    *(*(this + 5) + 8) = (*(*v21 + 40))(v21, a3);
    *(*(this + 1) + 8) = (*(*v21 + 24))(v21, a3);
    v19 = v21;
    v10 = 1;
    if (OZSpline::getNextValidVertex(a2, v21, &v19, v9))
    {
      do
      {
        (*v7)[++v10] = (*(*v19 + 40))(v19, a3);
        *(*v8 + 8 * v10) = (*(*v19 + 24))(v19, a3);
      }

      while ((OZSpline::getNextValidVertex(a2, v19, &v19, v9) & 1) != 0);
    }

    v11 = *v8;
    *(*v8 + 8 * (v10 + 1)) = *(*v8 + 8);
    v12 = *v7;
    (*v7)[v10 + 1] = (*v7)[1];
    v13 = v10 + 2;
    v11[v13] = v11[2];
    v12[v13] = v12[2];
    *v11 = v11[v10];
    *v12 = v12[v10];
  }

  else
  {
    std::vector<double>::reserve(this + 1, *(this + 8));
    std::vector<double>::reserve(v7, *(this + 8));
    v14 = MEMORY[0x277CC08F0];
    OZSpline::getFirstValidVertex(a2, &v21, MEMORY[0x277CC08F0]);
    **(this + 5) = (*(*v21 + 40))(v21, a3);
    **(this + 1) = (*(*v21 + 24))(v21, a3);
    v19 = v21;
    if (OZSpline::getNextValidVertex(a2, v21, &v19, v14))
    {
      v15 = 1;
      do
      {
        (*v7)[v15] = (*(*v19 + 40))(v19, a3);
        *(*v8 + 8 * v15++) = (*(*v19 + 24))(v19, a3);
      }

      while ((OZSpline::getNextValidVertex(a2, v19, &v19, v14) & 1) != 0);
    }
  }

  v16 = *(this + 8);
  if (v16)
  {
    v17 = *v7;
    do
    {
      if (*v17 <= 1.0)
      {
        v18 = *v17 * -24.0 + 25.0;
      }

      else
      {
        v18 = *v17 * -0.9 + 1.9;
      }

      *v17++ = v18;
      --v16;
    }

    while (v16);
  }

  OZSpline::setDirty(a2, 0);
}

void OZBSplineInterpolator::interpolate(OZBSplineInterpolator *this, OZSpline *a2, const CMTime *a3, void *a4, void *a5, const CMTime *a6, int a7)
{
  OZBSplineInterpolator::fillTempArrays(this, a2, a3);
  if (a7)
  {
    v14 = *a6;
    Seconds = CMTimeGetSeconds(&v14);
    if ((*(a2 + 144) & 1) == 0)
    {
      v14 = *a6;
      v13 = CMTimeGetSeconds(&v14);
      OZSpline::getMaxValueU(a2, MEMORY[0x277CC08F0], 0, &v14);
      Seconds = v13 / CMTimeGetSeconds(&v14) * *(*(this + 8) + 8 * (*(this + 28) + *(this + 8) - 1));
    }

    OZBSplineInterpolator::evalBSplineNURB(this, v11, Seconds);
  }
}

double OZBSplineInterpolator::evalBSplineNURB(OZBSplineInterpolator *this, OZSpline *a2, double a3)
{
  OZBSplineInterpolator::generateRationalBasisFunctions(this, a3);
  v4 = *(this + 8);
  if (!v4)
  {
    return 0.0;
  }

  v5 = *(this + 1);
  v6 = *(this + 11);
  result = 0.0;
  do
  {
    v8 = *v5++;
    v9 = v8;
    v10 = *v6++;
    result = result + v9 * v10;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t OZBSplineInterpolator::subDivide(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE **a4, _BYTE **a5, _BYTE **a6)
{
  v16 = *(a4 + 2);
  v9 = (*(*a4 + 3))(a4, a3);
  v15 = *(a5 + 2);
  v10 = (*(*a5 + 3))(a5, a3);
  v18 = *(a6 + 2);
  v17 = v16;
  PC_CMTimeSaferSubtract(&v18, &v17, &time);
  Seconds = CMTimeGetSeconds(&time);
  v18 = v15;
  v17 = v16;
  PC_CMTimeSaferSubtract(&v18, &v17, &time);
  v12 = CMTimeGetSeconds(&time);
  return (*(*a6 + 4))(a6, MEMORY[0x277CC08F0], v9 + Seconds * ((v10 - v9) / v12));
}

void OZBSplineInterpolator::OZBSplineInterpolator(void **a1, void **a2, void **a3, void *a4)
{
  v7 = *a1;
  if (v7)
  {
    a4[9] = v7;
    operator delete(v7);
  }

  v8 = *a2;
  if (*a2)
  {
    a4[6] = v8;
    operator delete(v8);
  }

  v9 = *a3;
  if (*a3)
  {
    a4[2] = v9;

    operator delete(v9);
  }
}

void OZCardinalInterpolator::OZCardinalInterpolator(OZCardinalInterpolator *this, double a2)
{
  OZHermiteInterpolator::OZHermiteInterpolator(this);
  *v3 = &unk_287249868;
  *(v3 + 16) = a2;
}

void OZCardinalInterpolator::~OZCardinalInterpolator(OZCardinalInterpolator *this)
{
  OZHermiteInterpolator::~OZHermiteInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void OZCardinalInterpolator::computeTangents(OZCardinalInterpolator *this, OZSpline *a2, char *a3, _BYTE **a4, const CMTime *a5, double *a6, double *a7, double *a8, double *a9)
{
  v33 = 0;
  v34 = 0;
  v32 = 0;
  v29 = 0.0;
  v30 = 0.0;
  v16 = (1.0 - *(this + 2)) * 0.5;
  if (OZSpline::getPreviousValidVertex(a2, a3, &v34, MEMORY[0x277CC08F0]))
  {
    v28 = *(v34 + 16);
    v36 = *(a4 + 2);
    v35 = v28;
    PC_CMTimeSaferSubtract(&v36, &v35, &time);
    Seconds = CMTimeGetSeconds(&time);
    v18 = (*(*a4 + 3))(a4, a5);
    v19 = v18 - (*(*v34 + 24))(v34, a5);
LABEL_5:
    v30 = v16 * v19;
    goto LABEL_7;
  }

  if (*(a2 + 144) == 1)
  {
    v28 = *(a3 + 16);
    OZSpline::getSmallDeltaU(a2, &v27);
    v36 = v28;
    v35 = v27;
    PC_CMTimeSaferSubtract(&v36, &v35, &time);
    v36 = *(a4 + 2);
    v35 = time;
    PC_CMTimeSaferSubtract(&v36, &v35, &v28);
    Seconds = CMTimeGetSeconds(&v28);
    OZSpline::getLastValidVertex(a2, &v32, MEMORY[0x277CC08F0]);
    (*(*a2 + 264))(a2, v32, 0, &v30, a5);
    v20 = (*(*a4 + 3))(a4, a5);
    v19 = v20 - v30;
    goto LABEL_5;
  }

  v27 = *(a3 + 16);
  operator*(2, &v27, &v28);
  v35 = *(a4 + 2);
  v36 = v28;
  PC_CMTimeSaferSubtract(&v36, &v35, &time);
  v36 = *(a4 + 2);
  v35 = time;
  PC_CMTimeSaferSubtract(&v36, &v35, &v28);
  Seconds = CMTimeGetSeconds(&v28);
  v30 = 0.0;
LABEL_7:
  if (OZSpline::getNextValidVertex(a2, a4, &v33, MEMORY[0x277CC08F0]))
  {
    v27 = *(v33 + 16);
    v36 = *(a3 + 16);
    v35 = v27;
    PC_CMTimeSaferSubtract(&v36, &v35, &v28);
    v21 = CMTimeGetSeconds(&v28);
    v22 = (*(*a3 + 24))(a3, a5);
    v23 = v22 - (*(*v33 + 24))(v33, a5);
    goto LABEL_11;
  }

  if (*(a2 + 144) == 1)
  {
    v27 = *(a4 + 2);
    OZSpline::getSmallDeltaU(a2, &v26);
    v36 = v27;
    v35 = v26;
    PC_CMTimeSaferAdd(&v36, &v35, &v28);
    time = v28;
    v36 = *(a3 + 16);
    v35 = v28;
    PC_CMTimeSaferSubtract(&v36, &v35, &v28);
    v21 = CMTimeGetSeconds(&v28);
    OZSpline::getFirstValidVertex(a2, &v32, MEMORY[0x277CC08F0]);
    (*(*a2 + 264))(a2, v32, 0, &v29, a5);
    v24 = (*(*a3 + 24))(a3, a5);
    v23 = v24 - v29;
LABEL_11:
    v25 = v16 * v23;
    if (!a6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v26 = *(a4 + 2);
  operator*(2, &v26, &v27);
  v35 = *(a3 + 16);
  v36 = v27;
  PC_CMTimeSaferSubtract(&v36, &v35, &v28);
  time = v28;
  v36 = *(a3 + 16);
  v35 = v28;
  PC_CMTimeSaferSubtract(&v36, &v35, &v28);
  v21 = CMTimeGetSeconds(&v28);
  v25 = 0.0;
  if (a6)
  {
LABEL_12:
    *a6 = v16 * Seconds;
  }

LABEL_13:
  if (a7)
  {
    *a7 = v30;
  }

  if (a8)
  {
    *a8 = v16 * v21;
  }

  if (a9)
  {
    *a9 = v25;
  }
}

void OZCatmullRomInterpolator::~OZCatmullRomInterpolator(OZCatmullRomInterpolator *this)
{
  OZCardinalInterpolator::~OZCardinalInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void OZConstantInterpolator::~OZConstantInterpolator(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

double OZConstantInterpolator::interpolate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  (*(*a4 + 24))(a4, a3);
  if (a8)
  {
    return 0.0;
  }

  return result;
}

uint64_t OZConstantInterpolator::subDivide(OZConstantInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, char *a5, void *a6)
{
  v14 = *(a4 + 16);
  v13 = *(a5 + 16);
  time1 = *(a4 + 16);
  time2 = *(a5 + 16);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v15);
    time1 = v14;
    time2 = v15;
    PC_CMTimeSaferAdd(&time1, &time2, &v13);
  }

  memset(&v12, 0, sizeof(v12));
  time1 = v13;
  time2 = v14;
  PC_CMTimeSaferSubtract(&time1, &time2, &v15);
  operator*(&v15, &v12, 0.5);
  time2 = v12;
  v15 = v14;
  PC_CMTimeSaferAdd(&time2, &v15, &time1);
  v12 = time1;
  (*(*this + 24))(this, a2, a3, a4, a5, &v12, 0, 0);
  return (*(*a2 + 192))(a2, &v12, a3, 1);
}

BOOL OZConstantInterpolator::uForCurveValue(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8)
{
  v11 = (*(*a4 + 24))(a4, MEMORY[0x277CC08F0]);
  if (v11 == a1)
  {
    v13 = *(a8 + 8);
    v12 = *(a8 + 16);
    if (v13 >= v12)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a8) >> 3);
      v17 = v16 + 1;
      if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a8) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a8, v19);
      }

      v20 = 24 * v16;
      v21 = *a6;
      *(v20 + 16) = *(a6 + 2);
      *v20 = v21;
      v15 = 24 * v16 + 24;
      v22 = *(a8 + 8) - *a8;
      v23 = v20 - v22;
      memcpy((v20 - v22), *a8, v22);
      v24 = *a8;
      *a8 = v23;
      *(a8 + 8) = v15;
      *(a8 + 16) = 0;
      if (v24)
      {
        operator delete(v24);
      }
    }

    else
    {
      v14 = *a6;
      *(v13 + 16) = *(a6 + 2);
      *v13 = v14;
      v15 = v13 + 24;
    }

    *(a8 + 8) = v15;
  }

  return v11 == a1;
}

void OZDecelerateInterpolator::easeTime(CMTime *a1@<X2>, _BYTE **a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = (2.0 - (*(*a2 + 5))(a2, MEMORY[0x277CC08F0])) * 0.5;
  v15 = *(a2 + 2);
  v16 = *a1;
  PC_CMTimeSaferSubtract(&v16, &v15, &time);
  Seconds = CMTimeGetSeconds(&time);
  memset(&time, 0, sizeof(time));
  v16 = *(a3 + 16);
  v15 = *(a2 + 2);
  PC_CMTimeSaferSubtract(&v16, &v15, &time);
  v16 = time;
  v10 = CMTimeGetSeconds(&v16);
  v13 = 0.0;
  PCMath::easeInOut(&v13, Seconds / v10, 0.0, v8, 0.0, 1.0, 0, v11);
  operator*(&time, &v12, v13);
  v15 = *(a2 + 2);
  v16 = v12;
  PC_CMTimeSaferAdd(&v16, &v15, a4);
}

void OZEaseInterpolator::easeTime(CMTime *a1@<X2>, _BYTE **a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = (2.0 - (*(*a2 + 5))(a2, MEMORY[0x277CC08F0])) * 0.25;
  v15 = *(a2 + 2);
  v16 = *a1;
  PC_CMTimeSaferSubtract(&v16, &v15, &time);
  Seconds = CMTimeGetSeconds(&time);
  memset(&time, 0, sizeof(time));
  v16 = *(a3 + 16);
  v15 = *(a2 + 2);
  PC_CMTimeSaferSubtract(&v16, &v15, &time);
  v16 = time;
  v10 = CMTimeGetSeconds(&v16);
  v13 = 0.0;
  PCMath::easeInOut(&v13, Seconds / v10, v8, v8, 0.0, 1.0, 0, v11);
  operator*(&time, &v12, v13);
  v15 = *(a2 + 2);
  v16 = v12;
  PC_CMTimeSaferAdd(&v16, &v15, a4);
}

long double OZEaseInInterpolator::interpolate(OZEaseInInterpolator *this, OZSpline *a2, const CMTime *a3, _BYTE **a4, _BYTE **a5, const CMTime *a6)
{
  v18 = *(a4 + 2);
  v17 = *(a5 + 2);
  v10 = (*(*a4 + 3))(a4, a3);
  v11 = (*(*a5 + 3))(a5, a3);
  time1 = v18;
  time2 = v17;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v16);
    time1 = v18;
    time2 = v16;
    PC_CMTimeSaferAdd(&time1, &time2, &v17);
  }

  time1 = *a6;
  time2 = v18;
  PC_CMTimeSaferSubtract(&time1, &time2, &v15);
  operator*(&v15, &v16, 3.14159265);
  time1 = v17;
  time2 = v18;
  PC_CMTimeSaferSubtract(&time1, &time2, v14);
  operator/(&v16.value, v14, &time1);
  Seconds = CMTimeGetSeconds(&time1);
  return v10 + (v11 - v10) * (1.0 - cos(Seconds * 0.5));
}

uint64_t OZEaseInInterpolator::subDivide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v10 = *(a6 + 32);
  (*(*a1 + 24))(a1, a2, a3, a4, a5, &v9, 0, 0);
  return (*(*a6 + 32))(a6, a3);
}

void OZEaseInInterpolator::getMinMaxValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, double *a7, double *a8)
{
  v20 = *(a3 + 16);
  epoch = *(a3 + 32);
  v19 = *(a4 + 16);
  time1 = *a5;
  time2 = *(a3 + 16);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v20 = *&a5->value;
    epoch = a5->epoch;
  }

  time1 = *a6;
  time2 = v19;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v19 = *a6;
  }

  v16 = MEMORY[0x277CC08F0];
  *a7 = (*(*a1 + 24))(a1, a2, MEMORY[0x277CC08F0], a3, a4, &v20, 0, 0);
  v17 = (*(*a1 + 24))(a1, a2, v16, a3, a4, &v19, 0, 0);
  *a8 = v17;
  v18 = *a7;
  if (*a7 > v17)
  {
    *a7 = v17;
    *a8 = v18;
  }
}

BOOL OZEaseInInterpolator::uForCurveValue(double a1, uint64_t a2, uint64_t a3, _BYTE **a4, _BYTE **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x277CC08F0];
  v15 = (*(*a3 + 240))(a3, a6, MEMORY[0x277CC08F0], 0);
  v16 = (*(*a3 + 240))(a3, a7, v14, 0);
  if (v15 >= v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v15 <= v16)
  {
    v16 = v15;
  }

  v18 = v16 <= a1 && v17 >= a1;
  if (v18)
  {
    v19 = MEMORY[0x277CC08F0];
    v20 = (*(*a4 + 3))(a4, MEMORY[0x277CC08F0]);
    v21 = (*(*a5 + 3))(a5, v19);
    v43 = *(a4 + 2);
    v45 = *(a5 + 2);
    v41 = 0uLL;
    v42 = 0;
    v44 = *(a4 + 2);
    PC_CMTimeSaferSubtract(&v45, &v44, &v37);
    operator*(&v37, &v38, 2.0);
    operator/(&v38.value, &v39, 3.14159265);
    v22 = acos((v20 - a1) / (v21 - v20) + 1.0);
    operator*(&v39, &v40, v22);
    v45 = v40;
    v44 = v43;
    PC_CMTimeSaferAdd(&v45, &v44, &v41);
    v24 = *(a8 + 8);
    v23 = *(a8 + 16);
    if (v24 >= v23)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a8) >> 3);
      v28 = v27 + 1;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a8) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x555555555555555)
      {
        v30 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a8, v30);
      }

      v31 = 24 * v27;
      v32 = v41;
      *(v31 + 16) = v42;
      *v31 = v32;
      v26 = 24 * v27 + 24;
      v33 = *(a8 + 8) - *a8;
      v34 = 24 * v27 - v33;
      memcpy((v31 - v33), *a8, v33);
      v35 = *a8;
      *a8 = v34;
      *(a8 + 8) = v26;
      *(a8 + 16) = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      v25 = v41;
      *(v24 + 16) = v42;
      *v24 = v25;
      v26 = v24 + 24;
    }

    *(a8 + 8) = v26;
  }

  return v18;
}

void OZEaseInInterpolator::~OZEaseInInterpolator(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

long double OZEaseOutInterpolator::interpolate(OZEaseOutInterpolator *this, OZSpline *a2, const CMTime *a3, _BYTE **a4, _BYTE **a5, const CMTime *a6)
{
  v18 = *(a4 + 2);
  v17 = *(a5 + 2);
  v10 = (*(*a4 + 3))(a4, a3);
  v11 = (*(*a5 + 3))(a5, a3);
  time1 = v18;
  time2 = v17;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v16);
    time1 = v18;
    time2 = v16;
    PC_CMTimeSaferAdd(&time1, &time2, &v17);
  }

  time1 = *a6;
  time2 = v18;
  PC_CMTimeSaferSubtract(&time1, &time2, &v15);
  operator*(&v15, &v16, 3.14159265);
  time1 = v17;
  time2 = v18;
  PC_CMTimeSaferSubtract(&time1, &time2, v14);
  operator/(&v16.value, v14, &time1);
  Seconds = CMTimeGetSeconds(&time1);
  return v10 + (v11 - v10) * sin(Seconds * 0.5);
}

uint64_t OZEaseOutInterpolator::subDivide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v10 = *(a6 + 32);
  (*(*a1 + 24))(a1, a2, a3, a4, a5, &v9, 0, 0);
  return (*(*a6 + 32))(a6, a3);
}

BOOL OZEaseOutInterpolator::uForCurveValue(double a1, uint64_t a2, uint64_t a3, _BYTE **a4, _BYTE **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x277CC08F0];
  v15 = (*(*a3 + 240))(a3, a6, MEMORY[0x277CC08F0], 0);
  v16 = (*(*a3 + 240))(a3, a7, v14, 0);
  if (v15 >= v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v15 <= v16)
  {
    v16 = v15;
  }

  v18 = v16 <= a1 && v17 >= a1;
  if (v18)
  {
    v19 = MEMORY[0x277CC08F0];
    v20 = (*(*a4 + 3))(a4, MEMORY[0x277CC08F0]);
    v21 = (*(*a5 + 3))(a5, v19);
    v43 = *(a4 + 2);
    v45 = *(a5 + 2);
    v41 = 0uLL;
    v42 = 0;
    v44 = *(a4 + 2);
    PC_CMTimeSaferSubtract(&v45, &v44, &v37);
    operator*(&v37, &v38, 2.0);
    operator/(&v38.value, &v39, 3.14159265);
    v22 = asin((a1 - v20) / (v21 - v20));
    operator*(&v39, &v40, v22);
    v45 = v40;
    v44 = v43;
    PC_CMTimeSaferAdd(&v45, &v44, &v41);
    v24 = *(a8 + 8);
    v23 = *(a8 + 16);
    if (v24 >= v23)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a8) >> 3);
      v28 = v27 + 1;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a8) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x555555555555555)
      {
        v30 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a8, v30);
      }

      v31 = 24 * v27;
      v32 = v41;
      *(v31 + 16) = v42;
      *v31 = v32;
      v26 = 24 * v27 + 24;
      v33 = *(a8 + 8) - *a8;
      v34 = 24 * v27 - v33;
      memcpy((v31 - v33), *a8, v33);
      v35 = *a8;
      *a8 = v34;
      *(a8 + 8) = v26;
      *(a8 + 16) = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      v25 = v41;
      *(v24 + 16) = v42;
      *v24 = v25;
      v26 = v24 + 24;
    }

    *(a8 + 8) = v26;
  }

  return v18;
}

double OZExponentialInterpolator::interpolate(OZExponentialInterpolator *this, OZSpline *a2, const CMTime *a3, _BYTE **a4, _BYTE **a5, const CMTime *a6)
{
  v22 = *(a4 + 2);
  v21 = *(a5 + 2);
  v10 = (*(*a4 + 3))(a4, a3);
  v11 = (*(*a5 + 3))(a5, a3);
  time1 = v22;
  time2 = v21;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v20);
    time1 = v22;
    time2 = v20;
    PC_CMTimeSaferAdd(&time1, &time2, &v21);
  }

  memset(&v20, 0, sizeof(v20));
  time1 = v21;
  time2 = v22;
  PC_CMTimeSaferSubtract(&time1, &time2, &v20);
  time1 = v20;
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2))
  {
    v12 = v11 - v10;
    v13 = -(v11 - v10);
    if (v11 >= v10)
    {
      v13 = v11 - v10;
    }

    v14 = log(v13);
    time1 = *a6;
    time2 = v22;
    PC_CMTimeSaferSubtract(&time1, &time2, &v19);
    operator/(&v19, &v20, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    v16 = v14 + 9.21034037;
    v17 = exp((v14 + 9.21034037) * Seconds + -9.21034037);
    return v10 + v12 * (v17 + -0.0001) / (exp(v16 + -9.21034037) + -0.0001);
  }

  return v10;
}

uint64_t OZExponentialInterpolator::subDivide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v10 = *(a6 + 32);
  (*(*a1 + 24))(a1, a2, a3, a4, a5, &v9, 0, 0);
  return (*(*a6 + 32))(a6, a3);
}

BOOL OZExponentialInterpolator::uForCurveValue(double a1, uint64_t a2, OZSpline *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x277CC08F0];
  v15 = (*(*a3 + 240))(a3, a6, MEMORY[0x277CC08F0], 0);
  v16.n128_f64[0] = (*(*a3 + 240))(a3, a7, v14, 0);
  result = 0;
  if (v15 >= v16.n128_f64[0])
  {
    v18 = v15;
  }

  else
  {
    v18 = v16.n128_f64[0];
  }

  if (v15 <= v16.n128_f64[0])
  {
    v16.n128_f64[0] = v15;
  }

  if (v18 >= a1 && v16.n128_f64[0] <= a1)
  {
    v20 = MEMORY[0x277CC08F0];
    v21 = (*(*a4 + 24))(a4, MEMORY[0x277CC08F0], v16);
    v22 = (*(*a5 + 24))(a5, v20);
    v45 = *(a4 + 16);
    v44 = *(a5 + 16);
    time1 = *(a4 + 16);
    time2 = *(a5 + 16);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      OZSpline::getSmallDeltaU(a3, &v43);
      time1 = v45;
      time2 = v43;
      PC_CMTimeSaferAdd(&time1, &time2, &v44);
    }

    memset(&v43, 0, sizeof(v43));
    time1 = v44;
    time2 = v45;
    PC_CMTimeSaferSubtract(&time1, &time2, &v43);
    time1 = v43;
    time2 = *v20;
    if (CMTimeCompare(&time1, &time2))
    {
      v23 = -(v22 - v21);
      if (v22 >= v21)
      {
        v23 = v22 - v21;
      }

      v24 = log(v23) + 9.21034037;
      v25 = exp(v24 + -9.21034037);
      v41 = 0uLL;
      v42 = 0;
      v26 = log((a1 - v21) * (v25 + -0.0001) / (v22 - v21));
      operator*(&v43, &v40, (v26 + 9.21034037) / v24);
      time1 = v40;
      time2 = v45;
      PC_CMTimeSaferAdd(&time1, &time2, &v41);
      v28 = *(a8 + 8);
      v27 = *(a8 + 16);
      if (v28 >= v27)
      {
        v31 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a8) >> 3);
        v32 = v31 + 1;
        if (v31 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v33 = 0xAAAAAAAAAAAAAAABLL * ((v27 - *a8) >> 3);
        if (2 * v33 > v32)
        {
          v32 = 2 * v33;
        }

        if (v33 >= 0x555555555555555)
        {
          v34 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v34 = v32;
        }

        if (v34)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a8, v34);
        }

        v35 = 24 * v31;
        v36 = v41;
        *(v35 + 16) = v42;
        *v35 = v36;
        v30 = 24 * v31 + 24;
        v37 = *(a8 + 8) - *a8;
        v38 = 24 * v31 - v37;
        memcpy((v35 - v37), *a8, v37);
        v39 = *a8;
        *a8 = v38;
        *(a8 + 8) = v30;
        *(a8 + 16) = 0;
        if (v39)
        {
          operator delete(v39);
        }
      }

      else
      {
        v29 = v41;
        *(v28 + 16) = v42;
        *v28 = v29;
        v30 = v28 + 24;
      }

      result = 0;
      *(a8 + 8) = v30;
    }

    else
    {
      return v21 != 0.0;
    }
  }

  return result;
}

void OZHermiteInterpolator::OZHermiteInterpolator(OZHermiteInterpolator *this)
{
  OZBezierInterpolator::OZBezierInterpolator(this);
  *v1 = &unk_287249D58;
  v1[1] = 0x3FD5555555555555;
}

void OZHermiteInterpolator::~OZHermiteInterpolator(OZHermiteInterpolator *this)
{
  OZAccelerateInterpolator::~OZAccelerateInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

__n128 OZInterpolator::getAdjustedMaxU@<Q0>(__n128 *a1@<X3>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

__n128 OZInterpolator::getAdjustedMinU@<Q0>(__n128 *a1@<X3>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  return result;
}

void OZInterpolators::OZInterpolators(OZInterpolators *this)
{
  atomic_store(0, this);
  atomic_store(0, this + 1);
  *(this + 2) = OZInterpolatorStrategies::getInstance(this);
}

void OZInterpolators::OZInterpolators(OZInterpolators *this, const OZInterpolators *a2)
{
  if (atomic_load(a2))
  {
    operator new();
  }

  atomic_store(0, this);
  if (atomic_load(a2 + 1))
  {
    operator new();
  }

  atomic_store(0, this + 1);
  *(this + 2) = OZInterpolatorStrategies::getInstance(this);
}

void OZInterpolators::~OZInterpolators(OZInterpolators *this)
{
  if (atomic_load(this))
  {
    v3 = atomic_load(this);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    atomic_store(0, this);
  }

  if (atomic_load(this + 1))
  {
    v5 = atomic_load(this + 1);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    atomic_store(0, this + 1);
  }
}

uint64_t OZInterpolators::getInterpolator(OZInterpolators *this, unsigned int a2)
{
  if (a2 == 10)
  {
    if (!atomic_load(this))
    {
      operator new();
    }

    return atomic_load(this);
  }

  else if (a2 == 12)
  {
    if (!atomic_load(this + 1))
    {
      operator new();
    }

    return atomic_load(this + 1);
  }

  else
  {
    v5 = *(this + 2);

    return OZInterpolatorStrategies::getInterpolator(v5, a2);
  }
}

BOOL OZInterpolators::operator==(unint64_t *a1, unint64_t *a2)
{
  v4 = atomic_load(a1);
  result = 0;
  if (v4 || (v19 = atomic_load(a2)) == 0)
  {
    v5 = atomic_load(a1);
    if (!v5 || (v6 = atomic_load(a2)) != 0)
    {
      v7 = atomic_load(a1 + 1);
      if (v7 || (v20 = atomic_load(a2 + 1)) == 0)
      {
        v8 = atomic_load(a1 + 1);
        if (!v8 || (v9 = atomic_load(a2 + 1)) != 0)
        {
          if ((v10 = atomic_load(a1)) == 0 && (v11 = atomic_load(a2)) == 0 || (v12 = atomic_load(a1), v13 = atomic_load(a2), OZBSplineInterpolator::operator==(v12, v13)))
          {
            if (!atomic_load(a1 + 1) && !atomic_load(a2 + 1))
            {
              return 1;
            }

            v16 = atomic_load(a1 + 1);
            v17 = atomic_load(a2 + 1);
            if (OZXSplineInterpolator::operator==(v16, v17))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_25FE8D690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZInterpolatorStrategies::OZInterpolatorStrategies(OZInterpolatorStrategies *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v1 = &unk_287249E98;
  operator new();
}

void sub_25FE8DC04(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x81C40B8603338);
  PCSingleton::~PCSingleton(v1);
  _Unwind_Resume(a1);
}

void OZInterpolatorStrategies::~OZInterpolatorStrategies(OZInterpolatorStrategies *this)
{
  *this = &unk_287249E98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 2) = 0;
  v4 = *(this + 3);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 3) = 0;
  v5 = *(this + 4);
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(this + 4) = 0;
  v6 = *(this + 5);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  *(this + 5) = 0;
  v7 = *(this + 6);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  *(this + 6) = 0;
  v8 = *(this + 7);
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  *(this + 7) = 0;
  v9 = *(this + 8);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  *(this + 8) = 0;
  v10 = *(this + 9);
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  *(this + 9) = 0;
  v11 = *(this + 10);
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  *(this + 10) = 0;
  v12 = *(this + 11);
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  *(this + 11) = 0;
  v13 = *(this + 12);
  if (v13)
  {
    (*(*v13 + 8))(v13);
  }

  *(this + 12) = 0;
  v14 = *(this + 13);
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  *(this + 13) = 0;
  v15 = *(this + 14);
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  *(this + 14) = 0;

  PCSingleton::~PCSingleton(this);
}

{
  OZInterpolatorStrategies::~OZInterpolatorStrategies(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZInterpolatorStrategies::getInterpolator(OZInterpolatorStrategies *this, unsigned int a2)
{
  if (a2 > 0x15)
  {
    v2 = 24;
  }

  else
  {
    v2 = *&asc_260849328[8 * a2];
  }

  return *(this + v2);
}

uint64_t OZInterpolatorStrategies::getInstance(OZInterpolatorStrategies *this)
{
  if (OZInterpolatorStrategies::getInstance(void)::once != -1)
  {
    OZInterpolatorStrategies::getInstance();
  }

  return OZInterpolatorStrategies::_instance;
}

void OZLinearInterpolator::~OZLinearInterpolator(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

void OZLinearInterpolator::interpolate(OZLinearInterpolator *this, OZSpline *a2, const CMTime *a3, char *a4, char *a5, const CMTime *a6)
{
  v16 = *(a4 + 16);
  v15 = *(a5 + 16);
  time1 = *(a4 + 16);
  time2 = *(a5 + 16);
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v14);
    time1 = v16;
    time2 = v14;
    v12.n128_f64[0] = PC_CMTimeSaferAdd(&time1, &time2, &v15);
  }

  memset(&v14, 0, sizeof(v14));
  (*(*this + 104))(&v14, this, a2, a6, a4, a5, v12);
  time1 = v16;
  time2 = v15;
  PC_CMTimeSaferSubtract(&time1, &time2, &v13);
  CMTimeGetSeconds(&v13);
  time1 = v14;
  time2 = v15;
  PC_CMTimeSaferSubtract(&time1, &time2, &v13);
  CMTimeGetSeconds(&v13);
  time1 = v14;
  time2 = v16;
  PC_CMTimeSaferSubtract(&time1, &time2, &v13);
  CMTimeGetSeconds(&v13);
  (*(*a4 + 24))(a4, a3);
  (*(*a5 + 24))(a5, a3);
}

uint64_t OZLinearInterpolator::subDivide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a6 + 16);
  v13 = *(a6 + 32);
  (*(*a1 + 104))(&v10);
  v12 = v10;
  v13 = v11;
  (*(*a2 + 240))(a2, &v12, a3, 0);
  return (*(*a6 + 32))(a6, a3);
}

void OZLinearInterpolator::getMinMaxValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CMTime *a5, CMTime *a6, double *a7, double *a8)
{
  *&v23.value = *(a3 + 16);
  v23.epoch = *(a3 + 32);
  *&v22.value = *(a4 + 16);
  v22.epoch = *(a4 + 32);
  v16 = MEMORY[0x277CC08F0];
  v17 = (*(*a3 + 24))(a3, MEMORY[0x277CC08F0]);
  v18 = (*(*a4 + 24))(a4, v16);
  time1 = *a5;
  time2 = v23;
  v19 = v17;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    time1 = *a5;
    time2 = v22;
    v19 = v18;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v19 = (*(*a1 + 24))(a1, a2, MEMORY[0x277CC08F0], a3, a4, a5, 0, 0);
    }
  }

  time1 = *a6;
  time2 = v23;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    time1 = *a6;
    time2 = v22;
    v17 = v18;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      v17 = (*(*a1 + 24))(a1, a2, MEMORY[0x277CC08F0], a3, a4, a6, 0, 0);
    }
  }

  if (v17 >= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  if (v17 >= v19)
  {
    v21 = v17;
  }

  else
  {
    v21 = v19;
  }

  *a7 = v20;
  *a8 = v21;
}

BOOL OZLinearInterpolator::uForCurveValue(double a1, uint64_t a2, uint64_t a3, _BYTE **a4, _BYTE **a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x277CC08F0];
  v15 = (*(*a3 + 240))(a3, a6, MEMORY[0x277CC08F0], 0);
  v16 = (*(*a3 + 240))(a3, a7, v14, 0);
  if (v15 >= v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  if (v15 <= v16)
  {
    v16 = v15;
  }

  v18 = v16 <= a1 && v17 >= a1;
  if (v18)
  {
    v41 = *(a4 + 2);
    v43 = *(a5 + 2);
    v19 = MEMORY[0x277CC08F0];
    v20 = (*(*a4 + 3))(a4, MEMORY[0x277CC08F0]);
    v21 = (*(*a5 + 3))(a5, v19);
    memset(&v40, 0, sizeof(v40));
    v42 = v41;
    PC_CMTimeSaferSubtract(&v43, &v42, &v40);
    v22 = 0.001;
    if (vabdd_f64(v21, v20) >= 0.0000001)
    {
      v22 = v21 - v20;
    }

    v38 = 0uLL;
    v39 = 0;
    operator*(&v40, &v37, (a1 - v20) / v22);
    v43 = v41;
    v42 = v37;
    PC_CMTimeSaferAdd(&v43, &v42, &v38);
    v24 = *(a8 + 8);
    v23 = *(a8 + 16);
    if (v24 >= v23)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a8) >> 3);
      v28 = v27 + 1;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a8) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x555555555555555)
      {
        v30 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a8, v30);
      }

      v31 = 24 * v27;
      v32 = v38;
      *(v31 + 16) = v39;
      *v31 = v32;
      v26 = 24 * v27 + 24;
      v33 = *(a8 + 8) - *a8;
      v34 = 24 * v27 - v33;
      memcpy((v31 - v33), *a8, v33);
      v35 = *a8;
      *a8 = v34;
      *(a8 + 8) = v26;
      *(a8 + 16) = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      v25 = v38;
      *(v24 + 16) = v39;
      *v24 = v25;
      v26 = v24 + 24;
    }

    *(a8 + 8) = v26;
  }

  return v18;
}

double OZLogarithmicInterpolator::interpolate(OZLogarithmicInterpolator *this, OZSpline *a2, const CMTime *a3, _BYTE **a4, _BYTE **a5, const CMTime *a6)
{
  v17 = *(a4 + 2);
  v16 = *(a5 + 2);
  v10 = (*(*a4 + 3))(a4, a3);
  v11 = (*(*a5 + 3))(a5, a3);
  time1 = v17;
  time2 = v16;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    OZSpline::getSmallDeltaU(a2, &v15);
    time1 = v17;
    time2 = v15;
    PC_CMTimeSaferAdd(&time1, &time2, &v16);
  }

  memset(&v15, 0, sizeof(v15));
  time1 = v16;
  time2 = v17;
  PC_CMTimeSaferSubtract(&time1, &time2, &v15);
  time1 = v15;
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2))
  {
    time1 = *a6;
    time2 = v17;
    PC_CMTimeSaferSubtract(&time1, &time2, &v14);
    operator/(&v14, &v15, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    return v10 + (v11 - v10) / 6.90775528 * log(Seconds * 999.0 + 1.0);
  }

  return v10;
}

uint64_t OZLogarithmicInterpolator::subDivide(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 + 16);
  v10 = *(a6 + 32);
  (*(*a1 + 24))(a1, a2, a3, a4, a5, &v9, 0, 0);
  return (*(*a6 + 32))(a6, a3);
}

uint64_t OZLogarithmicInterpolator::uForCurveValue(double a1, uint64_t a2, OZSpline *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x277CC08F0];
  v15 = (*(*a3 + 240))(a3, a6, MEMORY[0x277CC08F0], 0);
  v16.n128_f64[0] = (*(*a3 + 240))(a3, a7, v14, 0);
  if (v15 >= v16.n128_f64[0])
  {
    v17 = v15;
  }

  else
  {
    v17 = v16.n128_f64[0];
  }

  if (v15 <= v16.n128_f64[0])
  {
    v16.n128_f64[0] = v15;
  }

  if (v17 >= a1 && v16.n128_f64[0] <= a1)
  {
    v19 = MEMORY[0x277CC08F0];
    v20 = (*(*a4 + 24))(a4, MEMORY[0x277CC08F0], v16);
    v21 = (*(*a5 + 24))(a5, v19);
    v42 = *(a4 + 16);
    v41 = *(a5 + 16);
    time1 = *(a4 + 16);
    time2 = *(a5 + 16);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      OZSpline::getSmallDeltaU(a3, &v40);
      time1 = v42;
      time2 = v40;
      PC_CMTimeSaferAdd(&time1, &time2, &v41);
    }

    memset(&v40, 0, sizeof(v40));
    time1 = v41;
    time2 = v42;
    PC_CMTimeSaferSubtract(&time1, &time2, &v40);
    v38 = 0uLL;
    v39 = 0;
    v22 = exp((a1 - v20) / ((v21 - v20) / 6.90775528));
    operator*(&v40, &v37, (v22 + -1.0) / 999.0);
    time1 = v37;
    time2 = v42;
    PC_CMTimeSaferAdd(&time1, &time2, &v38);
    v24 = *(a8 + 8);
    v23 = *(a8 + 16);
    if (v24 >= v23)
    {
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *a8) >> 3);
      v28 = v27 + 1;
      if (v27 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *a8) >> 3);
      if (2 * v29 > v28)
      {
        v28 = 2 * v29;
      }

      if (v29 >= 0x555555555555555)
      {
        v30 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v30 = v28;
      }

      if (v30)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a8, v30);
      }

      v31 = 24 * v27;
      v32 = v38;
      *(v31 + 16) = v39;
      *v31 = v32;
      v26 = 24 * v27 + 24;
      v33 = *(a8 + 8) - *a8;
      v34 = 24 * v27 - v33;
      memcpy((v31 - v33), *a8, v33);
      v35 = *a8;
      *a8 = v34;
      *(a8 + 8) = v26;
      *(a8 + 16) = 0;
      if (v35)
      {
        operator delete(v35);
      }
    }

    else
    {
      v25 = v38;
      *(v24 + 16) = v39;
      *v24 = v25;
      v26 = v24 + 24;
    }

    *(a8 + 8) = v26;
  }

  return 0;
}

void OZSplineInterpolator::~OZSplineInterpolator(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

double OZSplineInterpolator::convertHandlesToTangents(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  result = 0.333333333;
  if (!**(a2 + 168))
  {
    result = 12.0;
  }

  if (a3)
  {
    *a3 = *a3 / result;
  }

  if (a4)
  {
    result = *a4 / result;
    *a4 = result;
  }

  return result;
}

double OZSplineInterpolator::convertTangentsToHandles(uint64_t a1, uint64_t a2, double *a3, double *a4)
{
  result = 0.333333333;
  if (!**(a2 + 168))
  {
    result = 12.0;
  }

  if (a3)
  {
    *a3 = result * *a3;
  }

  if (a4)
  {
    result = result * *a4;
    *a4 = result;
  }

  return result;
}

uint64_t OZSplineInterpolator::eval(OZSplineInterpolator *this, OZSpline *a2, const CMTime *a3, void *a4, void *a5, double a6)
{
  v17[2] = *MEMORY[0x277D85DE8];
  (*(*a4 + 64))(a4, 0, &v16, a3);
  (*(*a5 + 56))(a5, 0, v17, a3);
  if (**(a2 + 21) != 1)
  {
    (*(*this + 48))(this, a2, 0, &v16);
    (*(*this + 48))(this, a2, 0, v17);
  }

  v12 = (*(*a4 + 24))(a4, a3);
  v16 = v12 + v16;
  v13 = (*(*a5 + 24))(a5, a3);
  v17[0] = v13 + v17[0];
  return (*(*this + 112))(this, v15, a6);
}

void OZXSplineInterpolator::OZXSplineInterpolator(OZXSplineInterpolator *this)
{
  OZInterpolator::OZInterpolator(this);
  *v1 = &unk_28724A0C8;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 1;
}

void OZXSplineInterpolator::OZXSplineInterpolator(OZXSplineInterpolator *this, const OZXSplineInterpolator *a2)
{
  OZInterpolator::OZInterpolator(this);
  *v3 = &unk_28724A0C8;
  *(v3 + 8) = 0;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = *(a2 + 8);
  *(v3 + 36) = *(a2 + 36);
}

void OZXSplineInterpolator::~OZXSplineInterpolator(OZChannelBase *this, const PCString *a2)
{
  this->var0 = &unk_28724A0C8;
  var1 = this->var1;
  if (var1)
  {
    this->var2 = var1;
    operator delete(var1);
  }

  OZChannelBase::setRangeName(this, a2);
}

{
  OZXSplineInterpolator::~OZXSplineInterpolator(this, a2);

  JUMPOUT(0x2666E9F00);
}

__n128 OZXSplineInterpolator::getAdjustedMaxU@<Q0>(OZXSplineInterpolator *this@<X0>, OZSpline *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, CMTime *a5@<X8>)
{
  if (OZSpline::getNumberOfValidVertices(a2, a3))
  {
    if ((*(*this + 88))(this, a2))
    {
      (*(*this + 16))(this, a2, a3);
    }

    v10 = *(this + 8);
    if (*(a2 + 144) != 1)
    {
      --v10;
    }

    timescale = a4->timescale;

    OZFigTimeForChannelSeconds(a5, v10, timescale);
  }

  else
  {
    result = *&a4->value;
    *&a5->value = *&a4->value;
    a5->epoch = a4->epoch;
  }

  return result;
}

uint64_t OZXSplineInterpolator::getAdjustedMinU@<X0>(OZXSplineInterpolator *this@<X0>, OZSpline *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, uint64_t a5@<X8>)
{
  result = OZSpline::getNumberOfValidVertices(a2, a3);
  if (result)
  {
    result = (*(*this + 88))(this, a2);
    if (result)
    {
      result = (*(*this + 16))(this, a2, a3);
    }

    v11 = MEMORY[0x277CC08F0];
    *a5 = *MEMORY[0x277CC08F0];
    epoch = *(v11 + 16);
  }

  else
  {
    *a5 = *&a4->value;
    epoch = a4->epoch;
  }

  *(a5 + 16) = epoch;
  return result;
}

void OZXSplineInterpolator::init(OZXSplineInterpolator *this, OZSpline *a2, const CMTime *a3)
{
  v4 = *(a2 + 144);
  *(this + 8) = OZSpline::getNumberOfValidVertices(a2, a3) + (v4 ^ 1);

  OZSpline::setDirty(a2, 0);
}

void OZXSplineInterpolator::initTempArrays(OZXSplineInterpolator *this, OZSpline *a2, const CMTime *a3)
{
  v7 = 0;
  v8 = 0;
  v5 = this + 8;
  *(this + 2) = *(this + 1);
  std::vector<void *>::reserve(this + 1, *(this + 8));
  OZSpline::getFirstValidVertex(a2, &v8, a3);
  OZSpline::getLastValidVertex(a2, &v7, a3);
  std::vector<HGMTLFunctionType>::push_back[abi:ne200100](v5, &v8);
  v6 = v8;
  if (OZSpline::getNextValidVertex(a2, v8, &v6, a3))
  {
    do
    {
      std::vector<HGMTLFunctionType>::push_back[abi:ne200100](v5, &v6);
    }

    while ((OZSpline::getNextValidVertex(a2, v6, &v6, a3) & 1) != 0);
  }

  if ((*(a2 + 144) & 1) == 0)
  {
    std::vector<HGMTLFunctionType>::push_back[abi:ne200100](v5, &v7);
  }

  OZSpline::setDirty(a2, 0);
}

void OZXSplineInterpolator::interpolate(OZXSplineInterpolator *this, OZSpline *a2, const CMTime *a3, void *a4, void *a5, const CMTime *a6, int a7)
{
  if (a7)
  {
    if (*(this + 8))
    {
      OZXSplineInterpolator::initTempArrays(this, a2, a3);
    }

    v12 = *a6;
    Seconds = CMTimeGetSeconds(&v12);
    OZXSplineInterpolator::evalXSpline(this, a2, Seconds, a3);
  }
}

void OZXSplineInterpolator::evalXSpline(OZXSplineInterpolator *this, OZSpline *a2, double a3, const CMTime *a4)
{
  v7 = floor(a3) + -1.0;
  v8 = v7;
  if (*(a2 + 144))
  {
    if (v8 < -2)
    {
      return;
    }

    *&v91 = v7;
    v9 = *(this + 8);
    v10 = (v9 & (v8 >> 31)) + v8;
    v11 = *(*(this + 1) + 8 * ((v10 + 1) % v9));
    v12 = (*(*v11 + 40))(v11, a4, 0.0) <= 1.0;
    v13 = 1.0;
    if (v12)
    {
      v14 = *(*(this + 1) + 8 * ((v10 + 1) % *(this + 8)));
      v13 = (*(*v14 + 40))(v14, a4, 1.0);
    }

    v89 = v13;
    v15 = *(*(this + 1) + 8 * ((v10 + 2) % *(this + 8)));
    v16 = (*(*v15 + 40))(v15, a4);
    __asm { FMOV            V19.2D, #1.0 }

    _Q19.f64[1] = v89;
    if (v16 <= 1.0)
    {
      v21 = *(*(this + 1) + 8 * ((v10 + 2) % *(this + 8)));
      v22 = (*(*v21 + 40))(v21, a4);
      _Q19.f64[1] = v89;
      _Q19.f64[0] = v22;
    }

    v23 = a3;
  }

  else
  {
    *&v91 = v7;
    v95 = 0;
    v96 = 0;
    OZSpline::getFirstValidVertex(a2, &v96, a4);
    OZSpline::getLastValidVertex(a2, &v95, a4);
    if (v8 < 0)
    {
      v10 = -1;
    }

    else
    {
      v10 = v8;
    }

    _Q19.f64[0] = 0.0;
    v24 = 0.0;
    if ((v8 & 0x80000000) == 0)
    {
      v24 = 0.0;
      if (v10 < *(this + 8) - 1)
      {
        v25 = *(*(this + 1) + 8 * (v10 + 1));
        v24 = 1.0;
        if (v25 != v96 && v25 != v95)
        {
          v27 = (*(*v25 + 40))(v25, a4);
          _Q19.f64[0] = 0.0;
          v24 = 1.0;
          if (v27 <= 1.0)
          {
            v28 = *(*(this + 1) + 8 * (v10 + 1));
            v29 = (*(*v28 + 40))(v28, a4);
            _Q19.f64[0] = 0.0;
            v24 = v29;
          }
        }
      }
    }

    v30 = v10 + 2;
    v23 = a3;
    if (v10 + 2 < *(this + 8) - 1)
    {
      v31 = *(*(this + 1) + 8 * v30);
      _Q19.f64[0] = 1.0;
      if (v31 != v96 && v31 != v95)
      {
        v90 = v24;
        v33 = (*(*v31 + 40))(v31, a4);
        v24 = v90;
        v23 = a3;
        _Q19.f64[0] = 1.0;
        if (v33 <= 1.0)
        {
          v34 = *(*(this + 1) + 8 * v30);
          v35 = (*(*v34 + 40))(v34, a4);
          v24 = v90;
          v23 = a3;
          _Q19.f64[0] = v35;
        }
      }
    }

    _Q19.f64[1] = v24;
  }

  v36 = vaddq_f64(vdupq_lane_s64(v91, 0), xmmword_260849440);
  v37 = vmaxnmq_f64(_Q19, 0);
  v38 = vaddq_f64(v36, v37);
  v39 = v38.f64[1];
  v40 = vsubq_f64(v36, v37);
  v41.f64[0] = v38.f64[0];
  v41.f64[1] = v40.f64[1];
  v42 = *&v91 - v38.f64[1];
  v43 = v42 * v42 + v42 * v42;
  v44 = vsubq_f64(vextq_s8(v36, v36, 8uLL), v41);
  v47 = vmulq_f64(v44, v44);
  v45 = vaddq_f64(v47, v47);
  v46 = *&v91 + 3.0 - v40.f64[0];
  v47.n128_f64[0] = v46 * v46 + v46 * v46;
  if (*(this + 36) == 1)
  {
    __asm { FMOV            V18.2D, #-0.5 }

    v49 = vandq_s8(vmulq_f64(_Q19, _Q18), vcltzq_f64(_Q19));
    v50 = (v23 - v39) / v42;
    v51 = 0.0;
    if (v49.f64[1] <= 0.0)
    {
      v52 = 0.0;
    }

    else
    {
      v52 = v50 * (v49.f64[1] + v50 * (v49.f64[1] + v49.f64[1] - v50 * v50 * (v49.f64[1] + v49.f64[1] + v49.f64[1] * v50)));
    }

    v53 = v50 * (v49.f64[1] + v50 * (v49.f64[1] + v49.f64[1] + v50 * (vmuld_lane_f64(-12.0, v49, 1) + 10.0 - v43 + v50 * (v50 * (vmuld_lane_f64(-5.0, v49, 1) + 6.0 - v43) + vmuld_lane_f64(14.0, v49, 1) + v43 + v43 + -15.0))));
    if (v39 >= v23)
    {
      v54 = v53;
    }

    else
    {
      v54 = v52;
    }

    v55 = v49.f64[0] + v49.f64[0];
    __asm { FMOV            V7.2D, #-12.0 }

    v57 = vmulq_f64(v49, _Q7);
    __asm { FMOV            V7.2D, #14.0 }

    v59 = vmulq_f64(v49, _Q7);
    __asm { FMOV            V21.2D, #-5.0 }

    v61 = vdivq_f64(vsubq_f64(vdupq_lane_s64(*&v23, 0), v41), v44);
    __asm { FMOV            V4.2D, #10.0 }

    v63 = vaddq_f64(v57, _Q4);
    __asm
    {
      FMOV            V20.2D, #-15.0
      FMOV            V16.2D, #6.0
    }

    v66 = vaddq_f64(vmulq_f64(v49, _Q21), _Q16);
    v57.f64[0] = v49.f64[0] + v49.f64[0];
    v57.f64[1] = v49.f64[1] + v49.f64[1];
    v67 = vmulq_f64(v61, vaddq_f64(v49, vmulq_f64(v61, vaddq_f64(v57, vmulq_f64(v61, vaddq_f64(vsubq_f64(v63, v45), vmulq_f64(v61, vaddq_f64(vmulq_f64(v61, vsubq_f64(v66, v45)), vaddq_f64(vaddq_f64(v59, vaddq_f64(v45, v45)), _Q20)))))))));
    if (v40.f64[0] <= v23)
    {
      v51 = (v23 - v40.f64[0]) / v46 * (v49.f64[0] + (v23 - v40.f64[0]) / v46 * (v55 + (v23 - v40.f64[0]) / v46 * (v63.f64[0] - v47.n128_f64[0] + (v23 - v40.f64[0]) / v46 * ((v23 - v40.f64[0]) / v46 * (v66.f64[0] - v47.n128_f64[0]) + v59.f64[0] + v47.n128_f64[0] + v47.n128_f64[0] + -15.0))));
    }

    else if (v49.f64[0] > 0.0)
    {
      v51 = (v23 - v40.f64[0]) / v46 * (v49.f64[0] + (v23 - v40.f64[0]) / v46 * (v55 - (v23 - v40.f64[0]) / v46 * ((v23 - v40.f64[0]) / v46) * (v55 + v49.f64[0] * ((v23 - v40.f64[0]) / v46))));
    }
  }

  else
  {
    if (v38.f64[1] >= v23 || (v54 = 0.0, vabdd_f64(v23, v38.f64[1]) < 0.0000001))
    {
      v68 = (v23 - v38.f64[1]) / v42;
      v54 = v68 * (v68 * v68) * (v68 * (v68 * (6.0 - v43)) + 10.0 - v43 + v68 * (v43 + v43 + -15.0));
    }

    v69 = v23 - v38.f64[0];
    if (v38.f64[0] >= v23 || (v67.f64[0] = 0.0, fabs(v69) < 0.0000001))
    {
      v67.f64[0] = v69 / v44.f64[0] * (v69 / v44.f64[0] * (v69 / v44.f64[0])) * (v69 / v44.f64[0] * (v69 / v44.f64[0] * (6.0 - v45.f64[0])) + 10.0 - v45.f64[0] + v69 / v44.f64[0] * (v45.f64[0] + v45.f64[0] + -15.0));
    }

    v70 = v23 - v40.f64[1];
    if (v40.f64[1] <= v23 || (v71 = 0.0, fabs(v70) < 0.0000001))
    {
      v71 = v70 / v44.f64[1] * (v70 / v44.f64[1] * (v70 / v44.f64[1])) * (v70 / v44.f64[1] * (v70 / v44.f64[1] * (6.0 - v45.f64[1])) + 10.0 - v45.f64[1] + v70 / v44.f64[1] * (v45.f64[1] + v45.f64[1] + -15.0));
    }

    v72 = v23 - v40.f64[0];
    v67.f64[1] = v71;
    if (v40.f64[0] <= v23 || (v51 = 0.0, fabs(v72) < 0.0000001))
    {
      v51 = v72 / v46 * (v72 / v46 * (v72 / v46)) * (v72 / v46 * (v72 / v46 * (6.0 - v47.n128_f64[0])) + 10.0 - v47.n128_f64[0] + v72 / v46 * (v47.n128_f64[0] + v47.n128_f64[0] + -15.0));
    }
  }

  v73 = v67.f64[1];
  v74 = fabs(v54);
  v94 = v67.f64[0];
  if ((*(a2 + 144) & 1) == 0)
  {
    if (v10 < 0)
    {
      if (v74 < 0.0000001)
      {
        goto LABEL_70;
      }

      v76 = *(this + 1);
    }

    else
    {
      if (v74 < 0.0000001)
      {
        goto LABEL_70;
      }

      v76 = (*(this + 1) + 8 * v10);
    }

    (*(**v76 + 24))(*v76, a4);
    v67.f64[0] = v94;
LABEL_70:
    v80 = v10 + 1;
    v81 = *(this + 8);
    v82 = fabs(v67.f64[0]);
    if (v80 >= v81)
    {
      if (v82 < 0.0000001)
      {
        goto LABEL_76;
      }

      v83 = (*(this + 1) + 8 * v81 - 8);
    }

    else
    {
      if (v82 < 0.0000001)
      {
        goto LABEL_76;
      }

      v83 = (*(this + 1) + 8 * v80);
    }

    (*(**v83 + 24))(*v83, a4);
LABEL_76:
    v84 = *(this + 8);
    v85 = fabs(v73);
    if (v10 + 2 >= v84)
    {
      if (v85 < 0.0000001)
      {
        goto LABEL_82;
      }

      v86 = (*(this + 1) + 8 * v84 - 8);
    }

    else
    {
      if (v85 < 0.0000001)
      {
        goto LABEL_82;
      }

      v86 = (*(this + 1) + 8 * (v10 + 2));
    }

    (*(**v86 + 24))(*v86, a4);
LABEL_82:
    v87 = *(this + 8);
    v88 = fabs(v51);
    v47.n128_u64[0] = 0;
    if (v10 + 3 >= v87)
    {
      if (v88 < 0.0000001)
      {
        return;
      }

      v79 = (*(this + 1) + 8 * v87 - 8);
    }

    else
    {
      if (v88 < 0.0000001)
      {
        return;
      }

      v79 = (*(this + 1) + 8 * (v10 + 3));
    }

    goto LABEL_87;
  }

  if (v10 < 0)
  {
    if (v74 < 0.0000001)
    {
      goto LABEL_61;
    }

    v75 = (*(this + 1) + 8 * *(this + 8) - 8);
  }

  else
  {
    if (v74 < 0.0000001)
    {
      goto LABEL_61;
    }

    v75 = (*(this + 1) + 8 * (v10 % *(this + 8)));
  }

  (*(**v75 + 24))(*v75, a4);
  v67.f64[0] = v94;
LABEL_61:
  if (fabs(v67.f64[0]) >= 0.0000001)
  {
    v77 = *(*(this + 1) + 8 * ((v10 + 1) % *(this + 8)));
    (*(*v77 + 24))(v77, a4);
  }

  if (fabs(v73) >= 0.0000001)
  {
    v78 = *(*(this + 1) + 8 * ((v10 + 2) % *(this + 8)));
    (*(*v78 + 24))(v78, a4);
  }

  v47.n128_u64[0] = 0;
  if (fabs(v51) >= 0.0000001)
  {
    v79 = (*(this + 1) + 8 * ((v10 + 3) % *(this + 8)));
LABEL_87:
    (*(**v79 + 24))(*v79, a4, v47);
  }
}

uint64_t OZXSplineInterpolator::subDivide(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE **a4, _BYTE **a5, _BYTE **a6)
{
  v16 = *(a4 + 2);
  v9 = (*(*a4 + 3))(a4, a3);
  v15 = *(a5 + 2);
  v10 = (*(*a5 + 3))(a5, a3);
  v18 = *(a6 + 2);
  v17 = v16;
  PC_CMTimeSaferSubtract(&v18, &v17, &time);
  Seconds = CMTimeGetSeconds(&time);
  v18 = v15;
  v17 = v16;
  PC_CMTimeSaferSubtract(&v18, &v17, &time);
  v12 = CMTimeGetSeconds(&time);
  return (*(*a6 + 4))(a6, MEMORY[0x277CC08F0], v9 + Seconds * ((v10 - v9) / v12));
}

void sub_25FE904F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FE908E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void OZConstantNode::OZConstantNode(OZConstantNode *this, double a2)
{
  OZCurveNode::OZCurveNode(this);
  *v3 = &unk_28724A160;
  *(v3 + 8) = a2;
  *(v3 + 16) = a2;
}

void OZConstantNode::OZConstantNode(OZConstantNode *this, const OZConstantNode *a2)
{
  OZCurveNode::OZCurveNode(this);
  *v3 = &unk_28724A160;
  *(v3 + 8) = *(a2 + 8);
}

void OZConstantNode::~OZConstantNode(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZConstantNode::solveNode(uint64_t this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 36);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 8);
    v5 = (v2 + 1) & 0x1FFFFFFFELL;
    v6 = vdupq_n_s64(v2 - 1);
    v7 = (*(a2 + 19) + 8);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(vdupq_n_s64(v3), xmmword_260343E00)));
      if (v8.i8[0])
      {
        *(v7 - 1) = v4;
      }

      if (v8.i8[4])
      {
        *v7 = v4;
      }

      v3 += 2;
      v7 += 2;
    }

    while (v5 != v3);
  }

  return this;
}

BOOL OZConstantNode::getUForValue(uint64_t a1, uint64_t a2, __int128 *a3, double a4)
{
  v4 = vabdd_f64(*(a1 + 8), a4);
  if (v4 < 0.0000001)
  {
    v19 = *(a3 + 2);
    v7 = *(a2 + 8);
    v6 = *(a2 + 16);
    if (v7 >= v6)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3);
      v11 = v10 + 1;
      if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a2) >> 3);
      if (2 * v12 > v11)
      {
        v11 = 2 * v12;
      }

      if (v12 >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a2, v13);
      }

      v14 = 24 * v10;
      *v14 = *a3;
      *(v14 + 16) = v19;
      v9 = 24 * v10 + 24;
      v15 = *(a2 + 8) - *a2;
      v16 = 24 * v10 - v15;
      memcpy((v14 - v15), *a2, v15);
      v17 = *a2;
      *a2 = v16;
      *(a2 + 8) = v9;
      *(a2 + 16) = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      v8 = *a3;
      *(v7 + 16) = *(a3 + 2);
      *v7 = v8;
      v9 = v7 + 24;
    }

    *(a2 + 8) = v9;
  }

  return v4 < 0.0000001;
}

double *OZConstantNode::compare(OZConstantNode *this, const OZCurveNode *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    return (*(this + 1) == result[1] && *(this + 2) == result[2]);
  }

  return result;
}

__n128 OZConstantNode::operator=(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  *(a1 + 8) = result;
  return result;
}

__n128 OZConstantNode::getNeededRange(OZConstantNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

double OZConstantNode::reset(OZConstantNode *this)
{
  result = *(this + 2);
  *(this + 1) = result;
  return result;
}

void sub_25FE90E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

uint64_t OZRecordingNode::OZRecordingNode(uint64_t a1, uint64_t a2)
{
  OZCurveNode::OZCurveNode(a1);
  *(v4 + 128) = v4 + 120;
  *(v4 + 136) = 0;
  *(v4 + 112) = a2;
  *(v4 + 120) = v4 + 120;
  *(v4 + 144) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_28724A348;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  v5 = MEMORY[0x277CC08F0];
  v6 = *MEMORY[0x277CC08F0];
  *(v4 + 56) = *MEMORY[0x277CC08F0];
  v7 = *(v5 + 16);
  *(v4 + 32) = v6;
  *(v4 + 48) = v7;
  *(v4 + 72) = v7;
  *(v4 + 80) = 0;
  CMTimeMake(&v9, 1, 1);
  *(a1 + 88) = v9;
  return a1;
}

void sub_25FE9134C(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock(v3);
  std::__list_imp<unsigned int>::clear(v2);
  OZChannelBase::setRangeName(v1, v5);
  _Unwind_Resume(a1);
}

__n128 OZRecordingNode::OZRecordingNode(OZCurveNode *a1, uint64_t a2)
{
  OZCurveNode::OZCurveNode(a1);
  *v3 = &unk_28724A348;
  *(v3 + 128) = v3 + 120;
  *(v3 + 136) = 0;
  *(v3 + 144) = 0;
  *(v3 + 112) = *(a2 + 112);
  *(v3 + 120) = v3 + 120;
  *(v3 + 8) = *(a2 + 8);
  *(v3 + 16) = 0;
  *(v3 + 24) = *(a2 + 24);
  v4 = *(a2 + 56);
  *(v3 + 72) = *(a2 + 72);
  *(v3 + 56) = v4;
  v5 = *(a2 + 32);
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 32) = v5;
  *(v3 + 80) = *(a2 + 80);
  result = *(a2 + 88);
  *(v3 + 104) = *(a2 + 104);
  *(v3 + 88) = result;
  return result;
}

void OZRecordingNode::~OZRecordingNode(PCSpinLock *this)
{
  *&this->_lock._os_unfair_lock_opaque = &unk_28724A348;
  v2 = this + 30;
  PCSpinLock::~PCSpinLock(this + 36);
  std::__list_imp<unsigned int>::clear(v2);

  OZChannelBase::setRangeName(this, v3);
}

{
  OZRecordingNode::~OZRecordingNode(this);

  JUMPOUT(0x2666E9F00);
}

char *OZRecordingNode::compare(OZRecordingNode *this, const OZCurveNode *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (!result)
  {
    return result;
  }

  v4 = result;
  if (*(this + 2) != *(result + 2) || *(this + 3) != *(result + 3) || *(this + 17) != *(result + 17))
  {
    return 0;
  }

  v5 = *(this + 16);
  if (v5 == (this + 120))
  {
LABEL_11:
    time1 = *(this + 56);
    v8 = *(v4 + 56);
    if (!CMTimeCompare(&time1, &v8))
    {
      time1 = *(this + 32);
      v8 = *(v4 + 32);
      if (!CMTimeCompare(&time1, &v8) && vabdd_f64(*(this + 10), *(v4 + 10)) < 0.0000001 && vabdd_f64(*(this + 3), *(v4 + 3)) < 0.0000001)
      {
        time1 = *(this + 88);
        v8 = *(v4 + 88);
        return (CMTimeCompare(&time1, &v8) == 0);
      }
    }

    return 0;
  }

  v6 = result + 120;
  while (1)
  {
    v6 = *(v6 + 1);
    time1 = *(v5 + 16);
    v8 = *(v6 + 16);
    v7 = CMTimeCompare(&time1, &v8);
    result = 0;
    if (v7 || *(v5 + 40) != *(v6 + 5))
    {
      return result;
    }

    v5 = *(v5 + 8);
    if (v5 == (this + 120))
    {
      goto LABEL_11;
    }
  }
}

void OZRecordingNode::operator=(uint64_t a1, uint64_t a2)
{
  PCSpinLock::lock((a2 + 144));
  *(a1 + 8) = *(a2 + 8);
  if (a1 != a2)
  {
    std::list<std::pair<CMTime,double>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<CMTime,double>,void *>,std::__list_const_iterator<std::pair<CMTime,double>,void *>>((a1 + 120), *(a2 + 128), a2 + 120);
  }

  v4 = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 56) = v4;
  v5 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 32) = v5;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;

  PCSpinLock::unlock((a2 + 144));
}

__n128 OZRecordingNode::getNeededRange(OZRecordingNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

void OZRecordingNode::beginPlayback(OZRecordingNode *this, const CMTime *a2, int a3, int a4, const CMTime *a5)
{
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 16) = 1;
  v9 = *&a2->value;
  *(this + 9) = a2->epoch;
  *(this + 56) = v9;
  v10 = PVInstructionGraphContext::HGNodeCache(*(this + 14));
  v11 = (*(*v10 + 240))(v10, a2, MEMORY[0x277CC08F0], 0);
  *(this + 10) = v11;
  *(this + 3) = v11;
  v12 = *&a5->value;
  *(this + 13) = a5->epoch;
  *(this + 88) = v12;
  PCSpinLock::lock(this + 36);
  std::__list_imp<unsigned int>::clear(this + 15);
  PCSpinLock::unlock(this + 36);
  if (a3 == 3)
  {
    v13.n128_u64[0] = *(this + 10);
    v14 = *(*this + 64);

    v14(this, a2, 0, v13);
  }
}

void OZRecordingNode::endPlayback(OZRecordingNode *this, const CMTime *a2)
{
  *(this + 16) = 0;
  if ((*(this + 2) & 0xFFFFFFFE) == 2)
  {
    (*(*this + 64))(this, a2, 0, *(this + 3));
    PCSpinLock::lock(this + 36);
    OZRecordingNode::commitChanges(this);

    PCSpinLock::unlock(this + 36);
  }
}

void *OZRecordingNode::commitChanges(void *this)
{
  if (this[17])
  {
    v1 = this;
    v2 = this + 15;
    if (!*(this + 3))
    {
      v3 = *(this + 2);
      v4 = PVInstructionGraphContext::HGNodeCache(this[14]);
      if (v3)
      {
        v5 = MEMORY[0x277CC08F0];
        (*(*v4 + 192))(v4, v1[15] + 16, MEMORY[0x277CC08F0], 1, *(v1[15] + 40));
        v6 = v1[15];
        v8 = *v6;
        v7 = v6[1];
        *(v8 + 8) = v7;
        *v7 = v8;
        --v1[17];
        operator delete(v6);
        v9 = PVInstructionGraphContext::HGNodeCache(v1[14]);
        v10 = (*(*v9 + 192))(v9, v1[16] + 16, v5, 1, *(v1[16] + 40));
        v11 = PVInstructionGraphContext::HGNodeCache(v1[14]);
        OZSpline::setVertexInterpolation(v11, v10, 1);
        v12 = v1[16];
        v13 = v1[17];
        v15 = *v12;
        v14 = v12[1];
        *(v15 + 8) = v14;
        *v14 = v15;
        v1[17] = v13 - 1;
        operator delete(v12);
        v16 = PVInstructionGraphContext::HGNodeCache(v1[14]);
        OZSpline::deleteVertices(v16, (v1[16] + 16), (v1[15] + 16));
        v17 = v1[16];
        if (v17 != v2)
        {
          v18 = MEMORY[0x277CC08F0];
          do
          {
            v19 = PVInstructionGraphContext::HGNodeCache(v1[14]);
            (*(*v19 + 192))(v19, v17 + 16, v18, 1, *(v17 + 40));
            v17 = *(v17 + 8);
          }

          while (v17 != v2);
        }
      }

      else
      {
        OZSpline::deleteVertices(v4, (v1[16] + 16), (v1[15] + 16));
        v20 = v1[16];
        if (v20 != v2)
        {
          v21 = MEMORY[0x277CC08F0];
          do
          {
            v22 = PVInstructionGraphContext::HGNodeCache(v1[14]);
            (*(*v22 + 192))(v22, v20 + 16, v21, 1, *(v20 + 40));
            v20 = *(v20 + 8);
          }

          while (v20 != v2);
        }
      }
    }

    return std::__list_imp<unsigned int>::clear(v2);
  }

  return this;
}

uint64_t OZRecordingNode::beginRecording(OZRecordingNode *this, const CMTime *a2)
{
  result = (*(**(this + 14) + 16))(*(this + 14), 0.0, 0.0);
  v6 = *(this + 2);
  if ((v6 - 1) >= 2)
  {
    if (v6 != 3)
    {
      return result;
    }

    v5.n128_u64[0] = *(this + 10);
  }

  v7 = *(*this + 64);

  return v7(this, a2, 0, v5);
}

void OZRecordingNode::endRecording(OZRecordingNode *this, const CMTime *a2)
{
  if (*(this + 2) == 1)
  {
    (*(*this + 64))(this, a2, 0, *(this + 3));
  }

  PCSpinLock::lock(this + 36);
  if ((*(this + 2) & 0xFFFFFFFE) != 2)
  {
    OZRecordingNode::commitChanges(this);
  }

  PCSpinLock::unlock(this + 36);
}

void OZRecordingNode::updateCurrentTime(os_unfair_lock_s *this, const CMTime *a2)
{
  PCSpinLock::lock(this + 36);
  if (*&this[34]._os_unfair_lock_opaque && this[2]._os_unfair_lock_opaque)
  {
    v4 = **&this[30]._os_unfair_lock_opaque;
    time1 = *a2;
    time2 = *(v4 + 16);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v5 = *&this[30]._os_unfair_lock_opaque;
      v7 = *v5;
      v6 = v5[1];
      *(v7 + 8) = v6;
      *v6 = v7;
      --*&this[34]._os_unfair_lock_opaque;
      operator delete(v5);
      time1 = *a2;
      operator new();
    }

    time1 = *a2;
    time2 = *(v4 + 16);
    if (!CMTimeCompare(&time1, &time2))
    {
      *(v4 + 40) = *&this[6]._os_unfair_lock_opaque;
    }
  }

  PCSpinLock::unlock(this + 36);
}

double OZRecordingNode::getMaxValue(OZRecordingNode *this, char a2)
{
  v4 = PVInstructionGraphContext::HGNodeCache(*(this + 14));
  if (a2)
  {
    MaxValueVWithTangents = OZSpline::getMaxValueVWithTangents(v4, MEMORY[0x277CC08F0], 0);
  }

  else
  {
    MaxValueVWithTangents = OZSpline::getMaxValueV(v4, MEMORY[0x277CC08F0], 0);
  }

  v6 = MaxValueVWithTangents;
  PCSpinLock::lock(this + 36);
  for (i = *(this + 16); i != (this + 120); i = *(i + 8))
  {
    if (*(i + 40) > v6)
    {
      v6 = *(i + 40);
    }
  }

  PCSpinLock::unlock(this + 36);
  return v6;
}

double OZRecordingNode::getMinValue(OZRecordingNode *this, char a2)
{
  v4 = PVInstructionGraphContext::HGNodeCache(*(this + 14));
  if (a2)
  {
    MinValueVWithTangents = OZSpline::getMinValueVWithTangents(v4, MEMORY[0x277CC08F0], 0);
  }

  else
  {
    MinValueVWithTangents = OZSpline::getMinValueV(v4, MEMORY[0x277CC08F0], 0);
  }

  v6 = MinValueVWithTangents;
  PCSpinLock::lock(this + 36);
  for (i = *(this + 16); i != (this + 120); i = *(i + 8))
  {
    if (*(i + 40) < v6)
    {
      v6 = *(i + 40);
    }
  }

  PCSpinLock::unlock(this + 36);
  return v6;
}

double OZRecordingNode::solveNode(OZRecordingNode *this, const CMTime *a2, double a3, double a4)
{
  PCSpinLock::lock(this + 36);
  if (!*(this + 17))
  {
    goto LABEL_5;
  }

  v8 = this + 120;
  if (!*(this + 2))
  {
    v14 = *(this + 16);
    *time = *&a2->value;
    *&time[16] = a2->epoch;
    v35 = *(v14 + 16);
    *&v36 = *(v14 + 32);
    if (CMTimeCompare(time, &v35) < 0)
    {
      v44 = 0;
      v25 = PVInstructionGraphContext::HGNodeCache(*(this + 14));
      if (!OZSpline::getPreviousValidVertexWithLock(v25, (*(this + 16) + 16), &v44, MEMORY[0x277CC08F0], 0))
      {
        goto LABEL_5;
      }

      v26 = v44;
      if (!v44)
      {
        goto LABEL_5;
      }

      time1 = *(v44 + 16);
      *time = time1;
      v35 = *&a2->value;
      *&v36 = a2->epoch;
      if ((CMTimeCompare(time, &v35) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v27 = *(this + 16);
      time1 = *(v27 + 16);
      v28 = *(v27 + 40);
      v42 = *(v26 + 2);
      *time = *&a2->value;
      *&time[16] = a2->epoch;
      v35 = *&v42.value;
      *&v36 = v42.epoch;
      v29 = PC_CMTimeSaferSubtract(time, &v35, &v43);
      v30 = MEMORY[0x277CC08F0];
      v31 = (*(*v26 + 24))(v26, MEMORY[0x277CC08F0], v29);
      operator*(&v43, &time2, v28 - v31);
      v39 = v26[4];
      *v38 = *(v26 + 1);
      *time = time1;
      v35 = *v38;
      *&v36 = v39;
      PC_CMTimeSaferSubtract(time, &v35, &v40);
      operator/(&time2.value, &v40, time);
      Seconds = CMTimeGetSeconds(time);
      v22 = (*(*v26 + 24))(v26, v30);
    }

    else
    {
      v15 = *v8;
      *time = *&a2->value;
      *&time[16] = a2->epoch;
      v35 = *(v15 + 16);
      *&v36 = *(v15 + 32);
      if (CMTimeCompare(time, &v35) < 1)
      {
        v32 = *(this + 16);
        if (v32 != v8)
        {
          v33 = *(this + 16);
          do
          {
            v34 = v33;
            v33 = v32;
            *time = *(v32 + 16);
            *&time[16] = *(v32 + 32);
            v35 = *&a2->value;
            *&v36 = a2->epoch;
            if (CMTimeCompare(time, &v35))
            {
              *time = *(v33 + 16);
              *&time[16] = *(v33 + 32);
              v35 = *&a2->value;
              *&v36 = a2->epoch;
              if (CMTimeCompare(time, &v35) >= 1)
              {
                *time = *&a2->value;
                *&time[16] = a2->epoch;
                v35 = *(v34 + 16);
                *&v36 = *(v34 + 32);
                PC_CMTimeSaferSubtract(time, &v35, &time2);
                operator*(&time2, &time1, *(v33 + 40) - *(v34 + 40));
                *time = *(v33 + 16);
                *&time[16] = *(v33 + 32);
                v35 = *(v34 + 16);
                *&v36 = *(v34 + 32);
                PC_CMTimeSaferSubtract(time, &v35, &v43);
                operator/(&time1.value, &v43, time);
                a4 = CMTimeGetSeconds(time) + *(v34 + 40);
              }
            }

            else
            {
              a4 = *(v33 + 40);
            }

            v32 = *(v33 + 8);
          }

          while (v32 != v8);
        }

        goto LABEL_6;
      }

      v38[0] = 0;
      v16 = PVInstructionGraphContext::HGNodeCache(*(this + 14));
      if (!OZSpline::getNextValidVertexWithLock(v16, (*(this + 15) + 16), v38, MEMORY[0x277CC08F0], 0))
      {
        goto LABEL_5;
      }

      v17 = v38[0];
      if (!v38[0])
      {
        goto LABEL_5;
      }

      time1 = *(v38[0] + 16);
      *time = time1;
      v35 = *&a2->value;
      *&v36 = a2->epoch;
      if (CMTimeCompare(time, &v35) < 1)
      {
        goto LABEL_5;
      }

      v18 = *v8;
      time1 = *(*v8 + 16);
      Seconds = *(v18 + 40);
      *time = *&a2->value;
      *&time[16] = a2->epoch;
      v35 = *&time1.value;
      *&v36 = time1.epoch;
      v20 = PC_CMTimeSaferSubtract(time, &v35, &v43);
      v21 = (*(*v17 + 24))(v17, MEMORY[0x277CC08F0], v20);
      operator*(&v43, &time2, v21 - Seconds);
      v41 = v17[4];
      v40 = *(v17 + 1);
      *time = v40;
      *&time[16] = v41;
      v35 = *&time1.value;
      *&v36 = time1.epoch;
      PC_CMTimeSaferSubtract(time, &v35, &v42);
      operator/(&time2.value, &v42, time);
      v22 = CMTimeGetSeconds(time);
    }

    a4 = Seconds + v22;
    goto LABEL_6;
  }

  v10 = *(this + 15);
  v9 = *(this + 16);
  v11 = *(v9 + 32);
  *time = *(v9 + 16);
  *&time[16] = v11;
  v12 = *(v10 + 32);
  v35 = *(v10 + 16);
  v36 = v12;
  time1 = *a2;
  *&time2.value = *time;
  time2.epoch = v11;
  if (CMTimeCompare(&time1, &time2) < 0 || (time1 = *a2, *&time2.value = v35, time2.epoch = v36, CMTimeCompare(&time1, &time2) >= 1))
  {
LABEL_5:
    a4 = (*(**(this + 14) + 16))(*(this + 14), a2, a3, a4);
    goto LABEL_6;
  }

  v23 = *(this + 16);
  if (v23 != v8)
  {
    v24 = *(this + 16);
    while (1)
    {
      time1 = *(v24 + 16);
      time2 = *a2;
      if (!CMTimeCompare(&time1, &time2))
      {
        a4 = *(v24 + 40);
        goto LABEL_6;
      }

      time1 = *(v24 + 16);
      time2 = *a2;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        break;
      }

      v23 = v24;
      v24 = *(v24 + 8);
      if (v24 == v8)
      {
        goto LABEL_6;
      }
    }

    time1 = *a2;
    time2 = *(v23 + 16);
    PC_CMTimeSaferSubtract(&time1, &time2, &v42);
    operator*(&v42, &v43, *(v24 + 40) - *(v23 + 40));
    time1 = *(v24 + 16);
    time2 = *(v23 + 16);
    PC_CMTimeSaferSubtract(&time1, &time2, &v40);
    operator/(&v43.value, &v40, &time1);
    a4 = CMTimeGetSeconds(&time1) + *(v23 + 40);
  }

LABEL_6:
  PCSpinLock::unlock(this + 36);
  return a4;
}

__n128 OZRecordingNode::solveNode(OZRecordingNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v8 = *(a2 + 5);
  result = *(a2 + 6);
  *&v7.value = result;
  v7.epoch = *(a2 + 14);
  if (*(a2 + 36))
  {
    v6 = 0;
    do
    {
      *(v2 + 8 * v6) = (*(*this + 16))(this, &v7, 0.0, *(v2 + 8 * v6));
      v10 = v7;
      v9 = v8;
      PC_CMTimeSaferAdd(&v10, &v9, &v11);
      result = *&v11.value;
      v7 = v11;
      ++v6;
    }

    while (v6 < *(a2 + 36));
  }

  return result;
}

void OZRecordingNode::setValue(OZRecordingNode *this, const CMTime *a2, double a3)
{
  v18 = *(this + 88);
  PCSpinLock::lock(this + 36);
  v6 = (this + 120);
  v7 = *(this + 17);
  if (*(this + 2))
  {
    if (!v7)
    {
      time1 = *a2;
      time2 = v18;
      PC_CMTimeSaferSubtract(&time1, &time2, &v17);
      v13 = PVInstructionGraphContext::HGNodeCache(*(this + 14));
      time1 = *a2;
      time2 = v18;
      v14 = PC_CMTimeSaferSubtract(&time1, &time2, v16);
      (*(*v13 + 240))(v13, v16, MEMORY[0x277CC08F0], 0, v14);
      time1 = v17;
      operator new();
    }

    v8 = **v6;
    time1 = *a2;
    time2 = *(v8 + 16);
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      v9 = *(this + 15);
      v11 = *v9;
      v10 = v9[1];
      *(v11 + 8) = v10;
      *v10 = v11;
      --*(this + 17);
      operator delete(v9);
      time1 = *a2;
      operator new();
    }

    time1 = *a2;
    time2 = *(v8 + 16);
    if (!CMTimeCompare(&time1, &time2))
    {
      *(v8 + 40) = a3;
LABEL_9:
      *(this + 3) = a3;
    }
  }

  else
  {
    if (!v7 || (v12 = *v6, time1 = *a2, time2 = *(v12 + 2), CMTimeCompare(&time1, &time2) >= 1))
    {
      time1 = *a2;
      operator new();
    }

    v15 = *v6;
    time1 = *a2;
    time2 = *(v15 + 2);
    if (!CMTimeCompare(&time1, &time2))
    {
      (*v6)[5] = a3;
      goto LABEL_9;
    }
  }

  PCSpinLock::unlock(this + 36);
}

BOOL OZRecordingNode::getUForValue(uint64_t a1, CMTime *a2, CMTime *a3, CMTime *a4, int a5, double a6)
{
  v11 = PVInstructionGraphContext::HGNodeCache(*(a1 + 112));

  return OZSpline::getUForValue(v11, a2, a3, a4, a5, a6);
}

uint64_t *std::list<std::pair<CMTime,double>>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<CMTime,double>,void *>,std::__list_const_iterator<std::pair<CMTime,double>,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    v6 = *(a2 + 16);
    i[4] = *(a2 + 32);
    *(i + 1) = v6;
    i[5] = *(a2 + 40);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<std::pair<CMTime,double>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<CMTime,double>,void *>,std::__list_const_iterator<std::pair<CMTime,double>,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<std::pair<CMTime,double>>::erase(a1, i, a1);
  }
}

uint64_t std::list<std::pair<CMTime,double>>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<std::pair<CMTime,double>,void *>,std::__list_const_iterator<std::pair<CMTime,double>,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_25FE93030(void *a1)
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

uint64_t *std::list<std::pair<CMTime,double>>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void OZSplineNode::OZSplineNode(OZSplineNode *this, OZCurve *a2)
{
  OZConstantNode::OZConstantNode(this, 0.0);
  *v3 = &unk_28724A440;
  *(v3 + 24) = 0;
  *(v3 + 32) = a2;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
}

void OZSplineNode::~OZSplineNode(OZSplineNode *this)
{
  *this = &unk_28724A440;
  v2 = *(this + 3);
  if (v2)
  {
    OZSpline::deleteAllVertices(v2);
    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    *(this + 3) = 0;
  }

  OZEaseInInterpolator::~OZEaseInInterpolator(this);
}

{
  OZSplineNode::~OZSplineNode(this);

  JUMPOUT(0x2666E9F00);
}

double OZSplineNode::getMinValue(OZSplineNode *this, char a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return OZConstantNode::getMinValue(this);
  }

  if (a2)
  {
    return OZSpline::getMinValueVWithTangents(v3, MEMORY[0x277CC08F0], 0);
  }

  return OZSpline::getMinValueV(v3, MEMORY[0x277CC08F0], 0);
}

double OZSplineNode::getMaxValue(OZSplineNode *this, char a2)
{
  v3 = *(this + 3);
  if (!v3)
  {
    return OZConstantNode::getMaxValue(this);
  }

  if (a2)
  {
    return OZSpline::getMaxValueVWithTangents(v3, MEMORY[0x277CC08F0], 0);
  }

  return OZSpline::getMaxValueV(v3, MEMORY[0x277CC08F0], 0);
}

__n128 OZSplineNode::getCurrentRange@<Q0>(OZSplineNode *this@<X0>, CMTime *a2@<X8>)
{
  v2 = *(this + 3);
  if (v2)
  {
    OZSpline::getRangeU(v2, MEMORY[0x277CC08F0], a2);
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *&a2->value = *MEMORY[0x277CC08F0];
    a2->epoch = *(v4 + 16);
  }

  return result;
}

__n128 OZSplineNode::getMaxValueU@<Q0>(OZSplineNode *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3);
  if (v2)
  {
    result.n128_u64[0] = OZSpline::getMaxValueU(v2, MEMORY[0x277CC08F0], 1, a2).n128_u64[0];
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    *(a2 + 16) = *(v4 + 16);
  }

  return result;
}

__n128 OZSplineNode::getMinValueU@<Q0>(OZSplineNode *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 3);
  if (v2)
  {
    OZSpline::getMinValueU(v2, MEMORY[0x277CC08F0], 1, a2);
  }

  else
  {
    v4 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a2 = *MEMORY[0x277CC08F0];
    *(a2 + 16) = *(v4 + 16);
  }

  return result;
}

double OZSplineNode::reset(OZSplineNode *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 3) = 0;
  }

  result = *(this + 2);
  *(this + 1) = result;
  return result;
}

double OZSplineNode::solveNode(OZSplineNode *this, const CMTime *a2, double a3, double a4)
{
  v5 = *(this + 3);
  if (!v5 || ((v5[3] - v5[2]) & 0x7FFFFFFF8) == 0)
  {
    return OZConstantNode::solveNode(this, a2, a3, a4);
  }

  (*(*v5 + 240))(v5, a2, MEMORY[0x277CC08F0], 1, a3, a4);
  return result;
}

uint64_t OZSplineNode::solveNode(OZSplineNode *this, OZCurveNodeParam *a2)
{
  v3 = *(this + 3);
  if (!v3 || ((v3[3] - v3[2]) & 0x7FFFFFFF8) == 0)
  {
    return OZConstantNode::solveNode(this, a2);
  }

  v4 = *v3;
  if (*(a2 + 1) == 1)
  {
    return (*(v4 + 72))();
  }

  else
  {
    return (*(v4 + 40))();
  }
}

BOOL OZSplineNode::getUForValue(uint64_t a1, CMTime *a2, CMTime *a3, CMTime *a4, int a5, double a6)
{
  v6 = *(a1 + 24);
  if (v6 && ((*(v6 + 24) - *(v6 + 16)) & 0x7FFFFFFF8) != 0)
  {
    return OZSpline::getUForValue(*(a1 + 24), a2, a3, a4, a5, a6);
  }

  else
  {
    return OZConstantNode::getUForValue(a1, a2, &a3->value, a6);
  }
}

uint64_t OZSplineNode::setValue(OZSpline **this, const CMTime *a2, __n128 a3, int a4)
{
  if (!this[3])
  {
    OZSplineNode::allocOZSpline(this, 0);
  }

  v4 = this[3];
  if (!a4)
  {
    v7 = MEMORY[0x277CC08F0];

    OZSpline::addVertexNoTangents(v4, a2, a3.n128_f64[0], v7);
  }

  v5 = *(*v4 + 192);

  return v5(a3);
}

CMTime *OZSplineNode::getFrameDuration@<X0>(OZSplineNode *this@<X0>, CMTime *a2@<X8>)
{
  v2 = *(this + 4);
  if (v2)
  {
    return OZCurve::getFrameDuration(v2, a2);
  }

  else
  {
    return CMTimeMake(a2, 1, 30);
  }
}

BOOL OZSplineNode::compare(OZSplineNode *this, const OZCurveNode *lpsrc)
{
  if (!lpsrc)
  {
    OZConstantNode::compare(this, 0);
    return 0;
  }

  if ((OZConstantNode::compare(this, lpsrc) & 1) == 0 || !v4)
  {
    return 0;
  }

  v5 = *(this + 3);
  v6 = v4[3];
  result = (v5 | v6) == 0;
  if (v5 && v6)
  {
    return OZSpline::operator==(*(this + 3), v6);
  }

  return result;
}

uint64_t OZSplineNode::operator=(OZSplineNode *a1, uint64_t a2)
{
  v4 = OZConstantNode::operator=(a1, a2);
  result = *(a1 + 3);
  if (result)
  {
    result = (*(*result + 8))(result, v4);
    *(a1 + 3) = 0;
  }

  *(a1 + 5) = *(a2 + 40);
  v6 = *(a2 + 24);
  if (v6)
  {

    OZSplineNode::allocOZSpline(a1, v6);
  }

  return result;
}

__n128 OZSplineNode::getNeededRange(OZSplineNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

void OZDynamicSpline::~OZDynamicSpline(OZDynamicSpline *this)
{
  OZSpline::~OZSpline(this);

  JUMPOUT(0x2666E9F00);
}

char *std::vector<OZVertex *>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_25FE941DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZDynamicSpline::subdivideWithAnimation(OZInterpolators **this, const CMTime *a2, OZDynamicVertex *a3, OZDynamicVertex *a4, OZDynamicVertex *a5)
{
  v10 = (*(*a5 + 208))(a5);
  Interpolator = OZInterpolators::getInterpolator(this[19], v10);
  v12 = (*(*a5 + 208))(a5);
  (*(*a3 + 200))(a3, v12);
  memset(&v28, 0, sizeof(v28));
  (*(*(a5 + 42) + 328))(&v28, a5 + 336, a2);
  v13 = a4 + 48;
  if ((*(*(a4 + 6) + 552))(a4 + 48, 0))
  {
    v14 = MEMORY[0x277CC08A0];
    v26 = *MEMORY[0x277CC08A0];
    v27 = *(MEMORY[0x277CC08A0] + 16);
    memset(v25, 0, sizeof(v25));
    memset(v24, 0, sizeof(v24));
    while ((*(*v13 + 632))(a4 + 48, &v26, 0))
    {
      OZDynamicVertex::OZDynamicVertex(v23, a4);
      OZDynamicVertex::OZDynamicVertex(v22, a5);
      (*(*(a3 + 6) + 600))(a3 + 48, &v26);
      (*(*Interpolator + 32))(Interpolator, this, &v26, v23, v22, a3);
      (*(*a3 + 128))(a3, 1, &v26);
      std::vector<OZDynamicVertex>::push_back[abi:ne200100](v25, v23);
      std::vector<OZDynamicVertex>::push_back[abi:ne200100](v24, v22);
      OZDynamicVertex::~OZDynamicVertex(v22);
      OZDynamicVertex::~OZDynamicVertex(v23);
    }

    v15 = (*(*a4 + 168))(a4);
    (*(*a4 + 160))(a4, 2);
    v16 = (*(*a5 + 168))(a5);
    (*(*a5 + 160))(a5, 2);
    v17 = 0;
    v26 = *v14;
    v27 = *(v14 + 2);
    while ((*(*v13 + 632))(a4 + 48, &v26, 0))
    {
      OZDynamicVertex::OZDynamicVertex(v23, a4);
      OZDynamicVertex::OZDynamicVertex(v22, a5);
      v20 = 0.0;
      v21 = 0.0;
      (*(*(v25[0] + 944 * v17) + 64))(v25[0] + 944 * v17, &v21, &v20, &v26);
      (*(*a4 + 80))(a4, &v26, v21, v20);
      (*(*(v24[0] + 944 * v17) + 56))(v24[0] + 944 * v17, &v21, &v20, &v26);
      (*(*a5 + 72))(a5, &v26, v21, v20);
      ++v17;
      OZDynamicVertex::~OZDynamicVertex(v22);
      OZDynamicVertex::~OZDynamicVertex(v23);
    }

    (*(*a4 + 176))(a4, v15);
    (*(*a5 + 176))(a5, v16);
    v23[0].value = v24;
    std::vector<OZDynamicVertex>::__destroy_vector::operator()[abi:ne200100](v23);
    v23[0].value = v25;
    std::vector<OZDynamicVertex>::__destroy_vector::operator()[abi:ne200100](v23);
  }

  else
  {
    (*(*Interpolator + 32))(Interpolator, this, a2, a4, a5, a3);
    (*(*a3 + 128))(a3, 1, a2);
  }

  v23[0] = v28;
  v22[0] = *a2;
  v18 = PC_CMTimeSaferSubtract(v23, v22, &v26);
  return (*(*a3 + 248))(a3, &v26, v18);
}

void sub_25FE94828(_Unwind_Exception *a1)
{
  STACK[0x3C0] = v1 - 176;
  std::vector<OZDynamicVertex>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  STACK[0x3C0] = v1 - 152;
  std::vector<OZDynamicVertex>::__destroy_vector::operator()[abi:ne200100](&STACK[0x3C0]);
  _Unwind_Resume(a1);
}

uint64_t std::vector<OZDynamicVertex>::push_back[abi:ne200100](uint64_t a1, const OZDynamicVertex *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<OZDynamicVertex>::__emplace_back_slow_path<OZDynamicVertex const&>(a1, a2);
  }

  else
  {
    OZDynamicVertex::OZDynamicVertex(*(a1 + 8), a2);
    result = v3 + 944;
    *(a1 + 8) = v3 + 944;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL OZDynamicSpline::setVertex(os_unfair_lock_s *this, _BYTE **a2, const CMTime *a3, double a4, const CMTime *a5)
{
  PCSpinLock::lock(this + 2);
  if (a2)
  {
    v11 = *(a2 + 2);
    time1 = *a3;
    if (CMTimeCompare(&time1, &v11))
    {
      (*(*a2 + 2))(a2, a3);
      OZSpline::setDirty(this, 1);
    }

    (*(*a2 + 4))(a2, a5, a4);
  }

  PCSpinLock::unlock(this + 2);
  return a2 != 0;
}

uint64_t OZDynamicSpline::getVertexChannel(OZDynamicSpline *this, void *lpsrc)
{
  if (lpsrc)
  {
  }

  else
  {
    return 0;
  }
}

void OZDynamicSpline::setVertexChannel(OZDynamicSpline *this, void *lpsrc, OZChannelVertexFolder *a3)
{
  if (lpsrc)
  {
  }

  else
  {
    v4 = 0;
  }

  OZDynamicVertex::setChannel(v4, a3);
}

uint64_t OZDynamicSpline::sampleSpline(OZDynamicSpline *this, Float64 a2, Float64 a3, unsigned int *a4, double *a5, double *a6, const CMTime *a7)
{
  if (a5)
  {
    operator new[]();
  }

  OZFigTimeForChannelSeconds(&time, a2, 0x40000);
  OZFigTimeForChannelSeconds(&v13, a3, 0x40000);
  (*(*this + 40))(this, &time, &v13, a4, 0, a6, a7, 0);
  return 1;
}

uint64_t OZDynamicSpline::sampleSpline(OZInterpolators **this, const CMTime *a2, CMTime *a3, int32_t *a4, CMTime *a5, double *a6, const CMTime *a7, char a8)
{
  v37 = 0;
  (*(*this + 2))(this, &v37, 0, 0);
  Interpolator = OZInterpolators::getInterpolator(this[19], v37);
  if ((*(*Interpolator + 64))(Interpolator))
  {
    OZSpline::sampleSpline(this, a2, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  PCSpinLock::lock(this + 2);
  memset(&v36, 0, sizeof(v36));
  operator*(a3, *a4, &v36);
  memset(&v35, 0, sizeof(v35));
  v39 = *a2;
  v38 = v36;
  PC_CMTimeSaferAdd(&v39, &v38, &v35);
  v17 = OZInterpolators::getInterpolator(this[19], v37);
  (*(*v17 + 72))(&v39);
  v35 = v39;
  memset(&v34, 0, sizeof(v34));
  v18 = OZInterpolators::getInterpolator(this[19], v37);
  (*(*v18 + 80))(&v34);
  v33 = *a3;
  if (v37 == 10 || *(this + 144) == 1)
  {
    v39 = v35;
    v38 = v34;
    PC_CMTimeSaferSubtract(&v39, &v38, &v32);
    v19 = (*a4 - 1);
  }

  else
  {
    if (v37 != 12)
    {
      goto LABEL_7;
    }

    v39 = v35;
    v38 = v34;
    v29 = PC_CMTimeSaferSubtract(&v39, &v38, &v32);
    LODWORD(v29) = *a4;
    v19 = *&v29;
  }

  operator*(&v32, &v33, 1.0 / v19);
LABEL_7:
  if (*a4)
  {
    v20 = 0;
    do
    {
      if (a6)
      {
        v31 = 0;
        OZSpline::getFirstValidVertex(this, &v31, a7);
        v30 = 0;
        OZSpline::getLastValidVertex(this, &v30, a7);
        operator*(&v33, v20, &v39);
        v36 = v39;
        epoch = v39.epoch;
        v22 = *&v39.value;
        v24 = v30;
        v23 = v31;
        v39 = v34;
        *&v38.value = v22;
        v38.epoch = epoch;
        PC_CMTimeSaferAdd(&v39, &v38, &v32);
        OZSpline::interpolate(this, a7, v23, v24, &v32, a6++, 0);
      }

      if (a5)
      {
        operator*(&v33, v20, &v39);
        v36 = v39;
        v25 = v39.epoch;
        v26 = *&v39.value;
        v39 = v34;
        *&v38.value = v26;
        v38.epoch = v25;
        PC_CMTimeSaferAdd(&v39, &v38, &v32);
        v27 = *&v32.value;
        a5->epoch = v32.epoch;
        *&a5->value = v27;
        ++a5;
      }

      ++v20;
    }

    while (v20 < *a4);
  }

  PCSpinLock::unlock(this + 2);
  return 1;
}

uint64_t OZDynamicSpline::sampleSpline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, Float64 a6, Float64 a7)
{
  if (a3)
  {
    operator new();
  }

  OZFigTimeForChannelSeconds(&time, a6, 0x40000);
  OZFigTimeForChannelSeconds(&v13, a7, 0x40000);
  (*(*a1 + 48))(a1, &time, &v13, a2, 0, a4, a5, 0);
  return 1;
}

uint64_t OZDynamicSpline::sampleSpline(os_unfair_lock_s *a1, CMTime *a2, CMTime *a3, int32_t *a4, const void **a5, const void **a6, const CMTime *a7, char a8)
{
  v61 = 0;
  if (a5)
  {
    std::vector<CMTime>::reserve(a5, *a4);
  }

  if (a6)
  {
    std::vector<double>::reserve(a6, *a4);
  }

  (*(*&a1->_os_unfair_lock_opaque + 16))(a1, &v61, 0, 0);
  Interpolator = OZInterpolators::getInterpolator(*&a1[38]._os_unfair_lock_opaque, v61);
  if ((*(*Interpolator + 64))(Interpolator))
  {
    OZSpline::sampleSpline(a1, a2, a3, a4, a5, a6, a7, a8);
    return 1;
  }

  PCSpinLock::lock(a1 + 2);
  memset(&v60, 0, sizeof(v60));
  operator*(a3, *a4, &v60);
  memset(&v59, 0, sizeof(v59));
  v63 = *a2;
  v62 = v60;
  PC_CMTimeSaferAdd(&v63, &v62, &v59);
  v17 = OZInterpolators::getInterpolator(*&a1[38]._os_unfair_lock_opaque, v61);
  (*(*v17 + 72))(&v63);
  v59 = v63;
  memset(&v58, 0, sizeof(v58));
  v18 = OZInterpolators::getInterpolator(*&a1[38]._os_unfair_lock_opaque, v61);
  (*(*v18 + 80))(&v58);
  v57 = v58;
  if (v61 == 10 || LOBYTE(a1[36]._os_unfair_lock_opaque) == 1)
  {
    v63 = v59;
    v62 = v58;
    PC_CMTimeSaferSubtract(&v63, &v62, &v56);
    v19 = (*a4 - 1);
  }

  else
  {
    if (v61 != 12)
    {
      goto LABEL_11;
    }

    v63 = v59;
    v62 = v58;
    v52 = PC_CMTimeSaferSubtract(&v63, &v62, &v56);
    LODWORD(v52) = *a4;
    v19 = *&v52;
  }

  operator*(&v56, &v57, 1.0 / v19);
LABEL_11:
  if (*a4)
  {
    v20 = 0;
    do
    {
      if (a6)
      {
        v55 = 0;
        OZSpline::getFirstValidVertex(a1, &v55, a7);
        v54 = 0;
        OZSpline::getLastValidVertex(a1, &v54, a7);
        v53 = 0;
        operator*(&v57, v20, &v63);
        v60 = v63;
        epoch = v63.epoch;
        v22 = *&v63.value;
        v24 = v54;
        v23 = v55;
        v63 = v58;
        *&v62.value = v22;
        v62.epoch = epoch;
        PC_CMTimeSaferAdd(&v63, &v62, &v56);
        OZSpline::interpolate(a1, a7, v23, v24, &v56, &v53, 0);
        v26 = a6[1];
        v25 = a6[2];
        if (v26 >= v25)
        {
          v28 = *a6;
          v29 = v26 - *a6;
          v30 = v29 >> 3;
          v31 = (v29 >> 3) + 1;
          if (v31 >> 61)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v32 = v25 - v28;
          if (v32 >> 2 > v31)
          {
            v31 = v32 >> 2;
          }

          v33 = v32 >= 0x7FFFFFFFFFFFFFF8;
          v34 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v33)
          {
            v34 = v31;
          }

          if (v34)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a6, v34);
          }

          *(8 * v30) = v53;
          v27 = 8 * v30 + 8;
          memcpy(0, v28, v29);
          v35 = *a6;
          *a6 = 0;
          a6[1] = v27;
          a6[2] = 0;
          if (v35)
          {
            operator delete(v35);
          }
        }

        else
        {
          *v26 = v53;
          v27 = (v26 + 8);
        }

        a6[1] = v27;
      }

      if (a5)
      {
        operator*(&v57, v20, &v63);
        v60 = v63;
        v36 = v63.epoch;
        v37 = *&v63.value;
        v63 = v58;
        *&v62.value = v37;
        v62.epoch = v36;
        PC_CMTimeSaferAdd(&v63, &v62, &v56);
        v39 = a5[1];
        v38 = a5[2];
        if (v39 >= v38)
        {
          v42 = 0xAAAAAAAAAAAAAAABLL * ((v39 - *a5) >> 3);
          v43 = v42 + 1;
          if (v42 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v44 = 0xAAAAAAAAAAAAAAABLL * ((v38 - *a5) >> 3);
          if (2 * v44 > v43)
          {
            v43 = 2 * v44;
          }

          if (v44 >= 0x555555555555555)
          {
            v45 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a5, v45);
          }

          v46 = 24 * v42;
          v47 = *&v56.value;
          *(v46 + 16) = v56.epoch;
          *v46 = v47;
          v41 = 24 * v42 + 24;
          v48 = a5[1] - *a5;
          v49 = 24 * v42 - v48;
          memcpy((v46 - v48), *a5, v48);
          v50 = *a5;
          *a5 = v49;
          a5[1] = v41;
          a5[2] = 0;
          if (v50)
          {
            operator delete(v50);
          }
        }

        else
        {
          v40 = *&v56.value;
          *(v39 + 2) = v56.epoch;
          *v39 = v40;
          v41 = (v39 + 24);
        }

        a5[1] = v41;
      }

      ++v20;
    }

    while (v20 < *a4);
  }

  PCSpinLock::unlock(a1 + 2);
  return 1;
}

BOOL OZDynamicSpline::setVertexInputHandles(os_unfair_lock_s *this, void *a2, double a3, double a4, const CMTime *a5)
{
  PCSpinLock::lock(this + 2);
  if (a2)
  {
    (*(*a2 + 72))(a2, a5, a3, a4);
  }

  PCSpinLock::unlock(this + 2);
  return a2 != 0;
}

BOOL OZDynamicSpline::setVertexOutputHandles(os_unfair_lock_s *this, void *a2, double a3, double a4, const CMTime *a5)
{
  PCSpinLock::lock(this + 2);
  VertexIter = OZSpline::getVertexIter(this, a2);
  v11 = *&this[6]._os_unfair_lock_opaque;
  if (v11 != VertexIter)
  {
    (*(*a2 + 80))(a2, a5, a3, a4);
  }

  PCSpinLock::unlock(this + 2);
  return v11 != VertexIter;
}

BOOL OZDynamicSpline::getVertexInputHandles(os_unfair_lock_s *this, void *a2, double *a3, double *a4, const CMTime *a5)
{
  v11 = 0;
  v12 = 0;
  PCSpinLock::lock(this + 2);
  if (a2)
  {
    (*(*a2 + 56))(a2, &v12, &v11, a5);
    if (a3)
    {
      *a3 = v12;
    }

    if (a4)
    {
      *a4 = v11;
    }
  }

  PCSpinLock::unlock(this + 2);
  return a2 != 0;
}

BOOL OZDynamicSpline::getVertexOutputHandles(os_unfair_lock_s *this, void *a2, double *a3, double *a4, const CMTime *a5)
{
  v13 = 0;
  v14 = 0;
  PCSpinLock::lock(this + 2);
  VertexIter = OZSpline::getVertexIter(this, a2);
  v11 = *&this[6]._os_unfair_lock_opaque;
  if (v11 != VertexIter)
  {
    (*(*a2 + 64))(a2, &v14, &v13, a5);
    if (a3)
    {
      *a3 = v14;
    }

    if (a4)
    {
      *a4 = v13;
    }
  }

  PCSpinLock::unlock(this + 2);
  return v11 != VertexIter;
}

void OZDynamicSpline::reverseWindingOrder(OZDynamicSpline *this, const CMTime *a2)
{
  v3 = *(this + 2);
  v4 = *(this + 3);
  v5 = (v4 - 8);
  if (v3 + 8 != v4 && v5 > v3 + 8)
  {
    v7 = v3 + 16;
    do
    {
      v8 = *(v7 - 8);
      *(v7 - 8) = *v5;
      *v5-- = v8;
      v9 = v7 >= v5;
      v7 += 8;
    }

    while (!v9);
  }

  OZSpline::reparametrize(this);
  for (i = *(this + 2); i != *(this + 3); ++i)
  {
    v11 = *i;
    (*(*v11 + 120))(v11);
  }

  OZSpline::setDirty(this, 1);
}

BOOL OZDynamicSpline::getInterpolation(OZDynamicSpline *this, unsigned int *a2, BOOL *a3, BOOL *a4)
{
  if (a2)
  {
    v8 = *(*(this + 21) + 32);
    *a2 = v8;
    if (a3)
    {
      Interpolator = OZInterpolators::getInterpolator(*(this + 19), v8);
      *a3 = (*(*Interpolator + 56))(Interpolator);
    }

    if (a4)
    {
      v10 = OZInterpolators::getInterpolator(*(this + 19), *a2);
      *a4 = (*(*v10 + 64))(v10) ^ 1;
    }
  }

  return a2 != 0;
}

void OZDynamicSpline::deriveCurve(OZDynamicSpline *this, OZVertex *lpsrc, const CMTime *a3)
{
  OZDynamicVertex::OZDynamicVertex(v29, v6);
  v28 = 0;
  v27 = 0;
  lpsrca = 0;
  v25 = 0;
  v24 = 0.0;
  OZSpline::getPreviousValidVertex(this, lpsrc, &v28, a3);
  OZSpline::getNextValidVertex(this, lpsrc, &v27, a3);
  OZSpline::getFirstValidVertex(this, &v25, a3);
  OZSpline::getLastValidVertex(this, &lpsrca, a3);
  if (v28 && v27)
  {
    v7 = *(this + 19);
    v8 = (*(*lpsrc + 208))(lpsrc);
    Interpolator = OZInterpolators::getInterpolator(v7, v8);
    (*(*Interpolator + 32))(Interpolator, this, a3, v28, v27, v29);
    OZDynamicVertex::getInputTangents(v29, 0, &v24, a3);
    (*(*lpsrc + 72))(lpsrc, a3, 0.0, v24);
    OZDynamicVertex::getOutputTangents(v29, 0, &v24, a3);
    (*(*lpsrc + 80))(lpsrc, a3, 0.0, v24);
    goto LABEL_15;
  }

  if (v28 || !v27)
  {
    if (v28 && !v27 && *(this + 144) == 1 && v25)
    {
      OZDynamicVertex::OZDynamicVertex(v23, v15);
      v21 = *(lpsrc + 16);
      OZSpline::getStep(this, &v20);
      v31 = v21;
      v30 = v20;
      PC_CMTimeSaferAdd(&v31, &v30, &v22);
      v16 = OZVertex::setValueU(v23, &v22);
      v17 = *(this + 19);
      v18 = (*(*lpsrc + 208))(lpsrc, v16);
      v19 = OZInterpolators::getInterpolator(v17, v18);
      (*(*v19 + 32))(v19, this, a3, v28, v23, v29);
      OZDynamicVertex::getInputTangents(v29, 0, &v24, a3);
      (*(*lpsrc + 72))(lpsrc, a3, 0.0, v24);
      OZDynamicVertex::getOutputTangents(v29, 0, &v24, a3);
      (*(*lpsrc + 80))(lpsrc, a3, 0.0, v24);
      goto LABEL_14;
    }
  }

  else if (*(this + 144) == 1 && lpsrca)
  {
    OZDynamicVertex::OZDynamicVertex(v23, v10);
    v21 = *(lpsrc + 16);
    OZSpline::getStep(this, &v20);
    v31 = v21;
    v30 = v20;
    PC_CMTimeSaferSubtract(&v31, &v30, &v22);
    v11 = OZVertex::setValueU(v23, &v22);
    v12 = *(this + 19);
    v13 = (*(*lpsrc + 208))(lpsrc, v11);
    v14 = OZInterpolators::getInterpolator(v12, v13);
    (*(*v14 + 32))(v14, this, a3, v23, v27, v29);
    OZDynamicVertex::getInputTangents(v29, 0, &v24, a3);
    (*(*lpsrc + 72))(lpsrc, a3, 0.0, v24);
    OZDynamicVertex::getOutputTangents(v29, 0, &v24, a3);
    (*(*lpsrc + 80))(lpsrc, a3, 0.0, v24);
LABEL_14:
    OZDynamicVertex::~OZDynamicVertex(v23);
  }

LABEL_15:
  OZDynamicVertex::~OZDynamicVertex(v29);
}

uint64_t OZDynamicSpline::setVertexSmooth(OZDynamicSpline *this, void *a2, char a3, const CMTime *a4)
{
  if ((a3 & 1) == 0)
  {
    (*(*a2 + 72))(a2, a4, 0.0, 0.0);
    (*(*a2 + 80))(a2, a4, 0.0, 0.0);
  }

  return 1;
}

OZChannelBase *OZDynamicSpline::setVertexID(OZDynamicSpline *this, void *lpsrc, unsigned int a3)
{

  return OZChannelBase::setID(v4, a3);
}

void OZDynamicSpline::flattenSpline(OZDynamicSpline *this)
{
  v2 = *(this + 5);
  PCSpinLock::lock(this + 2);
  while (v2 != *(this + 6))
  {
    v3 = *v2++;
    (*(*v3 + 96))(v3);
  }

  PCSpinLock::unlock(this + 2);
}

uint64_t OZDynamicSpline::isSplineFlattened(OZDynamicSpline *this)
{
  v2 = *(this + 5);
  PCSpinLock::lock(this + 2);
  if (*(this + 6) == v2)
  {
    v3 = 1;
  }

  else
  {
    do
    {
      v3 = (*(**v2 + 144))();
      if ((v3 & 1) == 0)
      {
        break;
      }

      v2 += 8;
    }

    while (v2 != *(this + 6));
  }

  PCSpinLock::unlock(this + 2);
  return v3;
}

void OZDynamicSpline::setDefaultValueAtCurrentTime(OZDynamicSpline *this, const CMTime *a2)
{
  v4 = *(this + 5);
  PCSpinLock::lock(this + 2);
  while (v4 != *(this + 6))
  {
    v5 = *v4++;
    (*(*v5 + 192))(v5, a2);
  }

  PCSpinLock::unlock(this + 2);
}

void OZDynamicSpline::setDefaultValueAtCurrentTime(os_unfair_lock_s *this, void *a2, const CMTime *a3)
{
  PCSpinLock::lock(this + 2);
  (*(*a2 + 192))(a2, a3);

  PCSpinLock::unlock(this + 2);
}

BOOL OZDynamicSpline::updateVertexBias(OZDynamicSpline *this, void *a2)
{
  if (a2)
  {
    (*(*a2 + 224))(a2);
  }

  return a2 != 0;
}

uint64_t OZDynamicSpline::getVertexToInsert(OZDynamicSpline *this, const CMTime *a2, const CMTime *a3, double *a4, double *a5, double *a6, double *a7, double *a8)
{
  v14 = 0;
  (*(*this + 16))(this, &v14, 0, 0);
  v12 = 0;
  v13 = 0;
  result = OZSpline::getPreviousValidVertex(this, a3, &v13, a2, 0);
  if (result)
  {
    result = OZSpline::getNextValidVertex(this, a3, &v12, a2, 0);
    if ((result & 1) != 0 || *(this + 144) == 1 && (result = OZSpline::getFirstValidVertex(this, &v12, a2), result))
    {
      operator new();
    }
  }

  return result;
}

uint64_t OZDynamicSpline::getAllVerticesHandles(OZSpline *a1, uint64_t a2)
{
  OZSpline::preSplineAccess(a1, 1);
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  if (v4 != v5)
  {
    v6 = *(a2 + 8);
    do
    {
      v7 = *v4;
      v8 = *(a2 + 16);
      if (v6 >= v8)
      {
        v9 = (v6 - *a2) >> 3;
        if ((v9 + 1) >> 61)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v10 = v8 - *a2;
        v11 = v10 >> 2;
        if (v10 >> 2 <= (v9 + 1))
        {
          v11 = v9 + 1;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFF8)
        {
          v12 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a2, v12);
        }

        v13 = (8 * v9);
        *v13 = v7;
        v6 = (8 * v9 + 8);
        v14 = *(a2 + 8) - *a2;
        v15 = v13 - v14;
        memcpy(v13 - v14, *a2, v14);
        v16 = *a2;
        *a2 = v15;
        *(a2 + 8) = v6;
        *(a2 + 16) = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v6++ = v7;
      }

      *(a2 + 8) = v6;
      ++v4;
    }

    while (v4 != v5);
  }

  OZSpline::postSplineAccess(a1, 1);
  return 1;
}

uint64_t OZDynamicSpline::deleteVertex(char **this, void *a2, int a3, const CMTime *a4)
{
  OZSpline::preSplineAccess(this, 1);
  if (!a2)
  {
    goto LABEL_4;
  }

  v9 = v8;
  if (v8)
  {
    if ((*(*v8 + 184))(v8, 2))
    {
LABEL_4:
      v9 = 0;
      goto LABEL_15;
    }

    VertexIter = OZSpline::getVertexIter(this, a2);
    v11 = VertexIter;
    if (a3)
    {
      OZSpline::scaleTangentsBeforeDeletion(this, *VertexIter, a4);
      v17 = *a4;
      v12 = v9 + 48;
      if ((*(*(v9 + 48) + 624))(v9 + 48, &v17, 0))
      {
        do
        {
          OZSpline::scaleTangentsBeforeDeletion(this, *v11, &v17);
        }

        while (((*(*v12 + 624))(v9 + 48, &v17, 0) & 1) != 0);
      }

      v16 = *a4;
      if ((*(*v12 + 632))(v9 + 48, &v16, 0))
      {
        do
        {
          OZSpline::scaleTangentsBeforeDeletion(this, *v11, &v16);
        }

        while (((*(*v12 + 632))(v9 + 48, &v16, 0) & 1) != 0);
      }
    }

    v13 = this[3];
    v14 = v13 - (v11 + 1);
    if (v13 != (v11 + 1))
    {
      memmove(v11, v11 + 1, v13 - (v11 + 1));
    }

    this[3] = v11 + v14;
    (*(*v9 + 8))(v9);
    if (this[2] == this[3])
    {
      *(this + 144) = 0;
    }

    v9 = 1;
    OZSpline::setDirty(this, 1);
  }

LABEL_15:
  OZSpline::postSplineAccess(this, 1);
  return v9;
}

void std::vector<OZDynamicVertex>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 118;
      v7 = v4 - 118;
      do
      {
        (**v7)(v7);
        v6 -= 118;
        v8 = v7 == v2;
        v7 -= 118;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<OZDynamicVertex>::__emplace_back_slow_path<OZDynamicVertex const&>(uint64_t a1, const OZDynamicVertex *a2)
{
  v2 = 0xCBEEA4E1A08AD8F3 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x456C797DD49C34)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x97DD49C34115B1E6 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x97DD49C34115B1E6 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xCBEEA4E1A08AD8F3 * ((*(a1 + 16) - *a1) >> 4) >= 0x22B63CBEEA4E1ALL)
  {
    v6 = 0x456C797DD49C34;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OZDynamicVertex>>(a1, v6);
  }

  v13 = 0;
  v14 = 944 * v2;
  OZDynamicVertex::OZDynamicVertex((944 * v2), a2);
  v15 = 944 * v2 + 944;
  v7 = *(a1 + 8);
  v8 = 944 * v2 + *a1 - v7;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZDynamicVertex>,OZDynamicVertex*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<OZDynamicVertex>::~__split_buffer(&v13);
  return v12;
}

void sub_25FE972AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<OZDynamicVertex>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OZDynamicVertex>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x456C797DD49C35)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

OZDynamicVertex *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZDynamicVertex>,OZDynamicVertex*>(int a1, OZDynamicVertex *a2, OZDynamicVertex *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = OZDynamicVertex::OZDynamicVertex((a4 + v7), v8);
      v8 = (v8 + 944);
      v7 += 944;
    }

    while (v8 != a3);
    if (v6 != a3)
    {
      v10 = v6;
      do
      {
        result = (**v6)(v6);
        v6 = (v6 + 944);
        v10 = (v10 + 944);
      }

      while (v6 != a3);
    }
  }

  return result;
}

void sub_25FE973C4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZDynamicVertex>,OZDynamicVertex*>(v1 + v2, v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<OZDynamicVertex>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 944;
    (**(i - 944))();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OZDynamicVertex>,OZDynamicVertex*>(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 944;
  v4 = (a1 - 944);
  do
  {
    result = (**v4)(v4);
    v3 -= 944;
    v6 = v4 == a2;
    v4 -= 118;
  }

  while (!v6);
  return result;
}

void sub_25FE975C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void sub_25FE97A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v11, v10);
  _Unwind_Resume(a1);
}

void OZSpline::OZSpline(OZSpline *this, OZSplineState *a2)
{
  *(this + 2) = 0;
  *this = &unk_28724A6B0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 13) = 0;
  *(this + 21) = a2;
  *(this + 144) = 0;
  operator new();
}

void sub_25FE97B48(_Unwind_Exception *a1)
{
  v5 = v3;
  MEMORY[0x2666E9F00](v5, 0x20C40960023A9);
  v7 = v1[11];
  if (v7)
  {
    v1[12] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v1[3] = v8;
    operator delete(v8);
  }

  PCSpinLock::~PCSpinLock(v2);
  _Unwind_Resume(a1);
}

void OZSpline::OZSpline(OZSpline *this, const OZSpline *a2, OZSplineState *a3)
{
  *this = &unk_28724A6B0;
  *(this + 2) = 0;
  *(this + 1) = 0u;
  v5 = (this + 16);
  *(this + 2) = 0u;
  *(this + 6) = 0;
  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 20) = 0;
  *(this + 21) = a3;
  v6 = *(a2 + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (a2 + 8);
  }

  PCSpinLock::lock(v7);
  *(this + 144) = *(a2 + 144);
  if (*(a2 + 19))
  {
    operator new();
  }

  *(this + 19) = 0;
  *(this + 145) = 1;
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  if (v8 != v9)
  {
    v10 = *(a2 + 5);
    std::vector<OZVertex *>::reserve(v5, (v9 - v8) >> 3);
    for (; v10 != *(a2 + 6); v10 += 8)
    {
      v15 = (*(**v10 + 216))();
      std::vector<TXTabStop *>::push_back[abi:ne200100](v5, &v15);
    }
  }

  *(this + 120) = *(a2 + 120);
  *(this + 17) = *(a2 + 17);
  v11 = *(this + 3);
  *(this + 5) = *(this + 2);
  *(this + 6) = v11;
  *(this + 112) = *(a2 + 112);
  v12 = *(this + 12);
  *(this + 9) = *(this + 11);
  *(this + 10) = v12;
  *(this + 7) = 0;
  *(this + 8) = 0;
  OZSpline::refreshValidVerticesList(this);
  v13 = *(a2 + 20);
  if (!v13 || (v14 = *(v13 + 48)) == 0)
  {
    v14 = (a2 + 8);
  }

  PCSpinLock::unlock(v14);
}

void sub_25FE97D4C(_Unwind_Exception *a1)
{
  v5 = v1[11];
  if (v5)
  {
    v1[12] = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    v1[3] = v6;
    operator delete(v6);
  }

  PCSpinLock::~PCSpinLock(v2);
  _Unwind_Resume(a1);
}

void OZSpline::preSplineAccess(OZSpline *this, int a2)
{
  if (a2)
  {
    v2 = *(this + 20);
    if (!v2 || (v3 = *(v2 + 48)) == 0)
    {
      v3 = (this + 8);
    }

    PCSpinLock::lock(v3);
  }
}

void *std::vector<OZVertex *>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void OZSpline::refreshValidVerticesList(OZSpline *this)
{
  v2 = *(this + 20);
  if ((!v2 || (*(v2 + 56) & 1) == 0) && *(this + 112) == 1)
  {
    *(this + 12) = *(this + 11);
    std::vector<OZVertex *>::reserve(this + 11, (*(this + 3) - *(this + 2)) >> 3);
    v3 = *(this + 5);
    if (*(this + 6) > v3)
    {
      v4 = MEMORY[0x277CC08F0];
      do
      {
        if ((*(**v3 + 136))(*v3, v4))
        {
          std::vector<TXTabStop *>::push_back[abi:ne200100](this + 88, v3);
        }

        ++v3;
      }

      while (v3 < *(this + 6));
    }

    v5 = *(this + 11);
    v6 = *(this + 12);
    if (v5 == v6)
    {
      v7 = 0;
      *(this + 7) = 0;
    }

    else
    {
      *(this + 7) = *(v6 - 1);
      v7 = *v5;
    }

    *(this + 8) = v7;
    *(this + 9) = v5;
    *(this + 10) = v6;
  }
}

void OZSpline::postSplineAccess(OZSpline *this, int a2)
{
  if (a2)
  {
    v2 = *(this + 20);
    if (!v2 || (v3 = *(v2 + 48)) == 0)
    {
      v3 = (this + 8);
    }

    PCSpinLock::unlock(v3);
  }
}

void OZSpline::~OZSpline(OZSpline *this)
{
  *this = &unk_28724A6B0;
  v2 = *(this + 20);
  if (!v2 || (v3 = *(v2 + 48)) == 0)
  {
    v3 = (this + 8);
  }

  PCSpinLock::lock(v3);
  v5 = *(this + 2);
  for (i = *(this + 3); v5 != i; *(this + 3) = i)
  {
    v6 = *(i - 8);
    if (v6)
    {
      (*(*v6 + 8))(v6);
      i = *(this + 3);
    }

    *(i - 8) = 0;
    v5 = *(this + 2);
    i = *(this + 3) - 8;
  }

  v7 = *(this + 19);
  if (v7)
  {
    OZInterpolators::~OZInterpolators(v7);
    MEMORY[0x2666E9F00]();
  }

  *(this + 19) = 0;
  v8 = *(this + 20);
  if (!v8 || (v9 = *(v8 + 48)) == 0)
  {
    v9 = (this + 8);
  }

  PCSpinLock::unlock(v9);
  v10 = *(this + 11);
  if (v10)
  {
    *(this + 12) = v10;
    operator delete(v10);
  }

  v11 = *(this + 2);
  if (v11)
  {
    *(this + 3) = v11;
    operator delete(v11);
  }

  PCSpinLock::~PCSpinLock(this + 2);
}

{
  OZSpline::~OZSpline(this);

  JUMPOUT(0x2666E9F00);
}

void OZSpline::copy(OZSpline *this, OZSpline *a2, void *a3, void *a4)
{
  *(this + 144) = *(a2 + 144);
  *(this + 145) = 1;
  VertexIter = OZSpline::getVertexIter(a2, a3);
  v9 = OZSpline::getVertexIter(a2, a4);
  v11 = *(this + 2);
  for (i = *(this + 3); v11 != i; *(this + 3) = i)
  {
    v12 = *(i - 8);
    if (v12)
    {
      (*(*v12 + 8))(v12);
      i = *(this + 3);
    }

    *(i - 8) = 0;
    v11 = *(this + 2);
    i = *(this + 3) - 8;
  }

  v13 = *(a2 + 2);
  v14 = *(a2 + 3);
  if (v13 != v14 && a3 != 0 && a4 != 0)
  {
    std::vector<OZVertex *>::reserve(this + 2, (v14 - v13) >> 3);
    while (VertexIter != v9)
    {
      v17 = *VertexIter++;
      v19 = (*(*v17 + 216))(v17);
      std::vector<TXTabStop *>::push_back[abi:ne200100](this + 16, &v19);
    }

    v19 = (*(**v9 + 216))();
    std::vector<TXTabStop *>::push_back[abi:ne200100](this + 16, &v19);
  }

  v18 = *(this + 19);
  if (v18)
  {
    OZInterpolators::~OZInterpolators(v18);
    MEMORY[0x2666E9F00]();
  }

  *(this + 19) = 0;
  operator new();
}

void **OZSpline::getVertexIter(OZSpline *this, void *a2)
{
  v2 = *(this + 5);
  v3 = *(this + 15);
  v4 = *(this + 2);
  v5 = *(this + 3) - v4;
  if (v3 < (v5 >> 3) && *(v4 + 8 * v3) == a2)
  {
    v2 += v3;
  }

  else
  {
    v6 = v3 - 1;
    if (v3 >= 1 && *(v4 + 8 * v6) == a2)
    {
      v2 += v6;
      *(this + 15) = v6;
    }

    else
    {
      v7 = v3 + 1;
      if (v7 < v5 >> 3 && *(v4 + 8 * v7) == a2)
      {
        v2 += v7;
        *(this + 15) = v7;
      }

      else
      {
        v8 = *(this + 6);
        v9 = *(this + 5);
        if (v8 != v2)
        {
          while (*v9 != a2)
          {
            if (++v9 == v8)
            {
              v9 = *(this + 6);
              break;
            }
          }
        }

        *(this + 15) = v9 - v2;
        if (v8 != v9)
        {
          return v9;
        }
      }
    }
  }

  return v2;
}

void OZSpline::operator=(OZSpline *a1, os_unfair_lock_s *a2)
{
  v4 = *&a2[40]._os_unfair_lock_opaque;
  if (!v4 || (v5 = *(v4 + 48)) == 0)
  {
    v5 = a2 + 2;
  }

  PCSpinLock::lock(v5);
  v6 = *&a2[4]._os_unfair_lock_opaque;
  v7 = *&a2[6]._os_unfair_lock_opaque;
  if (v6 == v7)
  {
    v10 = a1;
    v11 = a2;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = *v6;
    v9 = *(v7 - 1);
    v10 = a1;
    v11 = a2;
  }

  OZSpline::copy(v10, v11, v8, v9);
}

BOOL OZSpline::operator==(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  v6 = *(v5 + 8) - v4;
  v8 = a2 + 16;
  v7 = *(a2 + 16);
  return v6 == *(v8 + 8) - v7 && !memcmp(v4, v7, v6) && *(a1 + 144) == *(a2 + 144) && OZInterpolators::operator==(*(a1 + 152), *(a2 + 152));
}

void OZSpline::setInterpolation(OZSpline *this, uint64_t a2)
{
  if (a2 != 100)
  {
    v5 = *(this + 20);
    if (!v5 || (v6 = *(v5 + 48)) == 0)
    {
      v6 = (this + 8);
    }

    PCSpinLock::lock(v6);
    for (i = *(this + 5); i != *(this + 6); ++i)
    {
      if (!(*(**i + 184))(*i, 2) || **(this + 21) == 1)
      {
        (*(**i + 200))(*i, a2);
      }
    }

    Interpolator = OZInterpolators::getInterpolator(*(this + 19), a2);
    (*(*Interpolator + 16))(Interpolator, this, MEMORY[0x277CC08F0]);
    v9 = *(this + 20);
    if (!v9 || (v10 = *(v9 + 48)) == 0)
    {
      v10 = (this + 8);
    }

    PCSpinLock::unlock(v10);
  }
}