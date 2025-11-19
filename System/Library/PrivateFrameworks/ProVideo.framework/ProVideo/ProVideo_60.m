uint64_t OZSpline::getInterpolation(OZSpline *this, unsigned int *a2, BOOL *a3, BOOL *a4)
{
  if (*(this + 2) == *(this + 3))
  {
    v13 = *(*(this + 21) + 32);
  }

  else
  {
    v8 = *(this + 5);
    v10 = *v8;
    v9 = v8 + 1;
    v11 = (*(*v10 + 208))(v10);
    *a2 = v11;
    if (v9 == *(this + 6))
    {
      v13 = v11;
      goto LABEL_10;
    }

    while (1)
    {
      v12 = (*(**v9 + 208))();
      if (v12 != *a2)
      {
        break;
      }

      v13 = v12;
      if (++v9 == *(this + 6))
      {
        goto LABEL_10;
      }
    }

    v13 = 100;
  }

  *a2 = v13;
LABEL_10:
  if (a3)
  {
    *a3 = OZSpline::interpolatorUsesTangents(this, v13, 0);
  }

  if (a4)
  {
    Interpolator = OZInterpolators::getInterpolator(*(this + 19), *a2);
    *a4 = (*(*Interpolator + 64))(Interpolator) ^ 1;
  }

  return 1;
}

uint64_t OZSpline::interpolatorUsesTangents(OZInterpolators **this, unsigned int a2, void *a3)
{
  Interpolator = OZInterpolators::getInterpolator(this[19], a2);
  v6 = this[20];
  if (v6)
  {
    v7 = *(v6 + 5);
    if (v7)
    {
      if ((*(*v7 + 112))(v7, this, a3))
      {
        Interpolator = v7;
      }
    }
  }

  v8 = *(*Interpolator + 56);

  return v8(Interpolator);
}

void OZSpline::setExtrapolation(OZSpline *this, int a2, int a3)
{
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  v8 = 36;
  if (a3)
  {
    v8 = 40;
  }

  v9 = *(this + 20);
  *(*(this + 21) + v8) = a2;
  if (!v9 || (v10 = *(v9 + 48)) == 0)
  {
    v10 = (this + 8);
  }

  PCSpinLock::unlock(v10);
}

uint64_t OZSpline::getExtrapolation(OZSpline *this, int a2)
{
  v2 = 40;
  if (!a2)
  {
    v2 = 36;
  }

  return *(*(this + 21) + v2);
}

void OZSpline::getRangeU(OZSpline *this@<X0>, const CMTime *a2@<X1>, CMTime *a3@<X8>)
{
  v6 = MEMORY[0x277CC08F0];
  *&a3->value = *MEMORY[0x277CC08F0];
  a3->epoch = v6->epoch;
  v14 = 0;
  v7 = *(this + 20);
  if (!v7 || (v8 = *(v7 + 48)) == 0)
  {
    v8 = (this + 8);
  }

  PCSpinLock::lock(v8);
  (*(*this + 16))(this, &v14, 0, 0);
  OZSpline::getMaxValueU(this, a2, 0, &v13);
  OZSpline::getMinValueU(this, a2, 0, &v12);
  time1 = v13;
  time2 = v12;
  PC_CMTimeSaferSubtract(&time1, &time2, a3);
  Interpolator = OZInterpolators::getInterpolator(*(this + 19), v14);
  if ((*(*Interpolator + 64))(Interpolator))
  {
    if (*(this + 144) == 1)
    {
      time1 = *a3;
      time2 = *v6;
      if (CMTimeCompare(&time1, &time2))
      {
        OZSpline::getStep(this, &v12);
        time1 = *a3;
        time2 = v12;
        PC_CMTimeSaferAdd(&time1, &time2, &v13);
        *a3 = v13;
      }
    }
  }

  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::unlock(v11);
}

__n128 OZSpline::getMaxValueU@<Q0>(OZSpline *this@<X0>, const CMTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = 0;
  if (a3)
  {
    v8 = *(this + 20);
    if (!v8 || (v9 = *(v8 + 48)) == 0)
    {
      v9 = (this + 8);
    }

    PCSpinLock::lock(v9);
    if ((OZSpline::getLastValidVertex(this, &v23, a2) & 1) == 0)
    {
      v10 = *(this + 20);
      if (!v10 || (v11 = *(v10 + 48)) == 0)
      {
        v11 = (this + 8);
      }

      PCSpinLock::unlock(v11);
      goto LABEL_16;
    }
  }

  else if (!OZSpline::getLastValidVertex(this, &v23, a2))
  {
LABEL_16:
    v20 = MEMORY[0x277CC08F0];
    result = *MEMORY[0x277CC08F0];
    *a4 = *MEMORY[0x277CC08F0];
    *(a4 + 16) = *(v20 + 16);
    return result;
  }

  v12 = v23;
  v13 = *(v23 + 4);
  *a4 = *(v23 + 1);
  *(a4 + 16) = v13;
  v14 = *(this + 19);
  v15 = (*(*v12 + 208))(v12);
  Interpolator = OZInterpolators::getInterpolator(v14, v15);
  (*(*Interpolator + 72))(&v21);
  result.n128_u64[0] = v21;
  *a4 = v21;
  *(a4 + 16) = v22;
  if (a3)
  {
    v18 = *(this + 20);
    if (!v18 || (v19 = *(v18 + 48)) == 0)
    {
      v19 = (this + 8);
    }

    PCSpinLock::unlock(v19);
  }

  return result;
}

void OZSpline::getMinValueU(OZSpline *this@<X0>, const CMTime *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v20 = 0;
  v8 = MEMORY[0x277CC08F0];
  *a4 = *MEMORY[0x277CC08F0];
  *(a4 + 16) = *(v8 + 16);
  if (a3)
  {
    v9 = *(this + 20);
    if (!v9 || (v10 = *(v9 + 48)) == 0)
    {
      v10 = (this + 8);
    }

    PCSpinLock::lock(v10);
  }

  if (OZSpline::getFirstValidVertex(this, &v20, a2))
  {
    v11 = v20;
    v12 = *(v20 + 4);
    *a4 = *(v20 + 1);
    *(a4 + 16) = v12;
    v13 = *(this + 19);
    v14 = (*(*v11 + 208))(v11);
    Interpolator = OZInterpolators::getInterpolator(v13, v14);
    (*(*Interpolator + 80))(&v18);
    *a4 = v18;
    *(a4 + 16) = v19;
  }

  if (a3)
  {
    v16 = *(this + 20);
    if (!v16 || (v17 = *(v16 + 48)) == 0)
    {
      v17 = (this + 8);
    }

    PCSpinLock::unlock(v17);
  }
}

CMTime *OZSpline::getStep@<X0>(OZSpline *this@<X0>, CMTime *a2@<X8>)
{
  v2 = *(this + 21);
  if (*v2 == 1)
  {
    v3 = 1;
    return CMTimeMake(a2, 1, v3);
  }

  v4 = *(this + 20);
  if (!v4 || v2[4] != 1)
  {
    v3 = 30;
    return CMTimeMake(a2, 1, v3);
  }

  return OZSplineNode::getFrameDuration(v4, a2);
}

BOOL OZSpline::getFirstValidVertex(OZSpline *this, void **a2, const CMTime *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (*(this + 112) != 1)
  {
    v8 = *(this + 5);
    if (*(this + 6) == v8)
    {
      return 0;
    }

    while (!(*(**v8 + 136))(*v8, a3))
    {
      if (++v8 == *(this + 6))
      {
        return 0;
      }
    }

    if (!a2)
    {
      return 1;
    }

    v6 = *v8;
    result = 1;
LABEL_12:
    *a2 = v6;
    return result;
  }

  v6 = *(this + 8);
  result = v6 != 0;
  if (a2)
  {
    goto LABEL_12;
  }

  return result;
}

uint64_t OZSpline::getLastValidVertex(OZSpline *this, void **a2, const CMTime *a3)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (*(this + 112) == 1)
  {
    v6 = *(this + 7);
    if (v6)
    {
      if (a2)
      {
        *a2 = v6;
      }

      return 1;
    }

    if (a2)
    {
      result = 0;
      *a2 = 0;
      return result;
    }

    return 0;
  }

  v8 = *(this + 3);
  if (*(this + 2) == v8)
  {
    return 0;
  }

  memset(&v12, 0, sizeof(v12));
  v11 = *(*(v8 - 8) + 16);
  if (**(this + 21))
  {
    v9 = 1;
  }

  else
  {
    v9 = 100;
  }

  CMTimeMake(&v10, 1, v9);
  v14 = v11;
  v13 = v10;
  PC_CMTimeSaferAdd(&v14, &v13, &v12);
  return OZSpline::getPreviousValidVertex(this, &v12, a2, a3, 0);
}

double OZSpline::getMaxValueV(OZSpline *this, const CMTime *a2, CMTime *a3)
{
  v16 = 0;
  if (!OZSpline::getFirstValidVertex(this, &v16, MEMORY[0x277CC08F0]))
  {
    return -1.79769313e308;
  }

  v6 = (*(*v16 + 24))(v16, a2);
  if (v6 <= -1.79769313e308)
  {
    v7 = v16;
    v6 = -1.79769313e308;
  }

  else
  {
    v7 = v16;
    if (a3)
    {
      v8 = *(v16 + 1);
      a3->epoch = *(v16 + 4);
      *&a3->value = v8;
    }
  }

  if (OZSpline::getNextValidVertex(this, v7, &v16, MEMORY[0x277CC08F0]))
  {
    v9 = MEMORY[0x277CC08F0];
    do
    {
      v10 = (*(*v16 + 24))(v16, a2);
      v11 = v10 <= v6;
      if (v10 > v6)
      {
        v6 = v10;
      }

      v12 = v16;
      if (!v11 && a3 != 0)
      {
        v14 = *(v16 + 1);
        a3->epoch = *(v16 + 4);
        *&a3->value = v14;
        v6 = v10;
      }
    }

    while ((OZSpline::getNextValidVertex(this, v12, &v16, v9) & 1) != 0);
  }

  return v6;
}

uint64_t OZSpline::getNextValidVertex(void ***this, void *a2, void **a3, const CMTime *a4)
{
  if (*(this + 112) == 1)
  {
    ValidVertexIter = OZSpline::getValidVertexIter(this, a2);
    v7 = this[10];
    v8 = ValidVertexIter + 1;
    if (v7 == ValidVertexIter || v8 == v7)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }

    else
    {
      if (a3)
      {
        *a3 = *v8;
      }

      return 1;
    }
  }

  else
  {
    VertexIter = OZSpline::getVertexIter(this, a2);
    return OZSpline::getNextValidVertex(this, &VertexIter, a3, a4);
  }

  return result;
}

double OZSpline::getMaxValueVWithTangents(OZSpline *this, const CMTime *a2, CMTime *a3)
{
  v25 = 0.0;
  v26 = 0.0;
  v24 = 0;
  if (!OZSpline::getFirstValidVertex(this, &v24, MEMORY[0x277CC08F0]))
  {
    return -1.79769313e308;
  }

  v6 = (*(*v24 + 24))(v24, a2);
  v7 = MEMORY[0x277CC08F0];
  (*(*v24 + 56))(v24, 0, &v26, MEMORY[0x277CC08F0]);
  (*(*v24 + 64))(v24, 0, &v25, v7);
  v8 = v26 * 3.0 * 4.0;
  v9 = v25 * 3.0 * 4.0;
  v25 = v9;
  v26 = v8;
  v10 = v6 + v8;
  v11 = -1.79769313e308;
  if (v6 + v8 > -1.79769313e308)
  {
    if (!a3)
    {
      v13 = v6 + v9;
      if (v13 <= v10)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = *(v24 + 4);
    *&a3->value = *(v24 + 1);
    a3->epoch = v12;
    v11 = v6 + v8;
  }

  v13 = v6 + v9;
  v10 = v11;
  if (v13 <= v11)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v14 = *(v24 + 4);
    *&a3->value = *(v24 + 1);
    a3->epoch = v14;
  }

LABEL_10:
  v10 = v13;
LABEL_11:
  if (OZSpline::getNextValidVertex(this, v24, &v24, MEMORY[0x277CC08F0]))
  {
    while (1)
    {
      v15 = (*(*v24 + 24))(v24, a2);
      (*(*v24 + 56))(v24, 0, &v26, v7);
      (*(*v24 + 64))(v24, 0, &v25, v7);
      v16 = v25 * 3.0 * 4.0;
      v25 = v16;
      v26 = v26 * 3.0 * 4.0;
      v17 = v15 + v26;
      if (v15 + v26 <= v10)
      {
        goto LABEL_15;
      }

      if (a3)
      {
        break;
      }

      v22 = v15 + v16;
      if (v22 > v17)
      {
        v10 = v22;
      }

      else
      {
        v10 = v15 + v26;
      }

LABEL_23:
      if ((OZSpline::getNextValidVertex(this, v24, &v24, v7) & 1) == 0)
      {
        return v10;
      }
    }

    v18 = *(v24 + 4);
    *&a3->value = *(v24 + 1);
    a3->epoch = v18;
    v10 = v17;
LABEL_15:
    v19 = v15 + v16;
    if (v19 <= v10)
    {
      v20 = 1;
    }

    else
    {
      v10 = v19;
      v20 = a3 == 0;
    }

    if (!v20)
    {
      v21 = *(v24 + 4);
      *&a3->value = *(v24 + 1);
      a3->epoch = v21;
      v10 = v19;
    }

    goto LABEL_23;
  }

  return v10;
}

double OZSpline::getMinValueV(OZSpline *this, const CMTime *a2, CMTime *a3)
{
  v16 = 0;
  if (!OZSpline::getFirstValidVertex(this, &v16, MEMORY[0x277CC08F0]))
  {
    return 1.79769313e308;
  }

  v6 = (*(*v16 + 24))(v16, a2);
  if (v6 >= 1.79769313e308)
  {
    v7 = v16;
    v6 = 1.79769313e308;
  }

  else
  {
    v7 = v16;
    if (a3)
    {
      v8 = *(v16 + 1);
      a3->epoch = *(v16 + 4);
      *&a3->value = v8;
    }
  }

  if (OZSpline::getNextValidVertex(this, v7, &v16, MEMORY[0x277CC08F0]))
  {
    v9 = MEMORY[0x277CC08F0];
    do
    {
      v10 = (*(*v16 + 24))(v16, a2);
      v11 = v10 < v6;
      if (v10 < v6)
      {
        v6 = v10;
      }

      v12 = v16;
      if (v11 && a3 != 0)
      {
        v14 = *(v16 + 1);
        a3->epoch = *(v16 + 4);
        *&a3->value = v14;
        v6 = v10;
      }
    }

    while ((OZSpline::getNextValidVertex(this, v12, &v16, v9) & 1) != 0);
  }

  return v6;
}

double OZSpline::getMinValueVWithTangents(OZSpline *this, const CMTime *a2, CMTime *a3)
{
  v25 = 0.0;
  v26 = 0.0;
  v24 = 0;
  if (!OZSpline::getFirstValidVertex(this, &v24, MEMORY[0x277CC08F0]))
  {
    return 1.79769313e308;
  }

  v6 = (*(*v24 + 24))(v24, a2);
  v7 = MEMORY[0x277CC08F0];
  (*(*v24 + 56))(v24, 0, &v26, MEMORY[0x277CC08F0]);
  (*(*v24 + 64))(v24, 0, &v25, v7);
  v8 = v26 * 3.0 * 4.0;
  v9 = v25 * 3.0 * 4.0;
  v25 = v9;
  v26 = v8;
  v10 = v6 + v8;
  v11 = 1.79769313e308;
  if (v6 + v8 < 1.79769313e308)
  {
    if (!a3)
    {
      v13 = v6 + v9;
      if (v13 >= v10)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    v12 = *(v24 + 4);
    *&a3->value = *(v24 + 1);
    a3->epoch = v12;
    v11 = v6 + v8;
  }

  v13 = v6 + v9;
  v10 = v11;
  if (v13 >= v11)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    v14 = *(v24 + 4);
    *&a3->value = *(v24 + 1);
    a3->epoch = v14;
  }

LABEL_10:
  v10 = v13;
LABEL_11:
  if (OZSpline::getNextValidVertex(this, v24, &v24, MEMORY[0x277CC08F0]))
  {
    while (1)
    {
      v15 = (*(*v24 + 24))(v24, a2);
      (*(*v24 + 56))(v24, 0, &v26, v7);
      (*(*v24 + 64))(v24, 0, &v25, v7);
      v16 = v25 * 3.0 * 4.0;
      v25 = v16;
      v26 = v26 * 3.0 * 4.0;
      v17 = v15 + v26;
      if (v15 + v26 >= v10)
      {
        goto LABEL_15;
      }

      if (a3)
      {
        break;
      }

      v22 = v15 + v16;
      if (v22 < v17)
      {
        v10 = v22;
      }

      else
      {
        v10 = v15 + v26;
      }

LABEL_23:
      if ((OZSpline::getNextValidVertex(this, v24, &v24, v7) & 1) == 0)
      {
        return v10;
      }
    }

    v18 = *(v24 + 4);
    *&a3->value = *(v24 + 1);
    a3->epoch = v18;
    v10 = v17;
LABEL_15:
    v19 = v15 + v16;
    if (v19 >= v10)
    {
      v20 = 1;
    }

    else
    {
      v10 = v19;
      v20 = a3 == 0;
    }

    if (!v20)
    {
      v21 = *(v24 + 4);
      *&a3->value = *(v24 + 1);
      a3->epoch = v21;
      v10 = v19;
    }

    goto LABEL_23;
  }

  return v10;
}

void OZSpline::offsetSpline(OZSpline *this, const CMTime *a2, double a3, double a4, double a5, int a6, int a7, const CMTime *a8)
{
  v16 = *(this + 20);
  if (!v16 || (v17 = *(v16 + 48)) == 0)
  {
    v17 = (this + 8);
  }

  PCSpinLock::lock(v17);
  v18 = a3 - (*(*this + 240))(this, a2, MEMORY[0x277CC08F0], 0);
  if (a6)
  {
    v41 = 0;
    v42 = 0;
    v19 = v18;
    if (OZSpline::getPreviousValidVertex(this, a2, &v42, MEMORY[0x277CC08F0], 0))
    {
      v20 = v18 + (*(*v42 + 24))(v42, a8);
      v19 = v20 <= a4 ? v18 : v18 + a4 - v20;
      if (v20 < a5)
      {
        v19 = v18 + a5 - v20;
      }
    }

    NextValidVertex = OZSpline::getNextValidVertex(this, a2, &v41, MEMORY[0x277CC08F0], 0);
    v22.n128_f64[0] = v18;
    if (NextValidVertex)
    {
      v22.n128_f64[0] = (*(*v41 + 24))(v41, a8, v18);
      v23 = v18 + v22.n128_f64[0];
      v22.n128_f64[0] = v18 + a4 - (v18 + v22.n128_f64[0]);
      if (v23 <= a4)
      {
        v22.n128_f64[0] = v18;
      }

      if (v23 < a5)
      {
        v22.n128_f64[0] = v18 + a5 - v23;
      }
    }

    if (a7)
    {
      if (fabs(v19) < fabs(v18))
      {
        v18 = v19;
      }

      if (fabs(v22.n128_f64[0]) < fabs(v18))
      {
        v18 = v22.n128_f64[0];
      }
    }

    if (v42)
    {
      v24.n128_f64[0] = v18 + (*(*v42 + 24))(v42, a8, v22);
      if (v24.n128_f64[0] > a4)
      {
        v24.n128_f64[0] = a4;
      }

      if (v24.n128_f64[0] < a5)
      {
        v24.n128_f64[0] = a5;
      }

      (*(*v42 + 32))(v42, a8, v24);
    }

    if (v41)
    {
      v25.n128_f64[0] = v18 + (*(*v41 + 24))(v41, a8, v22);
      if (v25.n128_f64[0] > a4)
      {
        v25.n128_f64[0] = a4;
      }

      if (v25.n128_f64[0] < a5)
      {
        v25.n128_f64[0] = a5;
      }

      (*(*v41 + 32))(v41, a8, v25);
    }
  }

  else
  {
    if (a7)
    {
      for (i = *(this + 5); i != *(this + 6); ++i)
      {
        v27 = (*(**i + 24))(*i, a8);
        v28 = v18 + v27;
        v29 = fabs(v18);
        v30 = vabdd_f64(a4, v27);
        if (v18 + v27 > a4 && v29 > v30)
        {
          v18 = a4 - v27;
        }

        v32 = v28 < a5;
        v33 = fabs(v18);
        v34 = vabdd_f64(v27, a5);
        if (v32 && v33 > v34)
        {
          v18 = a5 - v27;
        }
      }
    }

    else
    {
      i = *(this + 6);
    }

    v36 = *(this + 5);
    if (i != v36)
    {
      do
      {
        v37.n128_f64[0] = v18 + (*(**v36 + 24))(*v36, a8);
        if (v37.n128_f64[0] > a4)
        {
          v37.n128_f64[0] = a4;
        }

        if (v37.n128_f64[0] < a5)
        {
          v37.n128_f64[0] = a5;
        }

        v38 = *v36++;
        (*(*v38 + 32))(v38, a8, v37);
      }

      while (v36 != *(this + 6));
    }
  }

  v39 = *(this + 20);
  if (!v39 || (v40 = *(v39 + 48)) == 0)
  {
    v40 = (this + 8);
  }

  PCSpinLock::unlock(v40);
}

uint64_t OZSpline::getPreviousValidVertex(OZSpline *this, const CMTime *a2, void **a3, const CMTime *a4, int a5)
{
  if (a3)
  {
    *a3 = 0;
  }

  v10 = *(this + 3);
  if (*(this + 2) == v10)
  {
    return 0;
  }

  v11 = *(this + 5);
  if (*(this + 6) != v11)
  {
    v12 = *(this + 5);
    while (1)
    {
      if ((*(**v12 + 136))(*v12, a4))
      {
        v22 = *(*v12 + 32);
        *&time1.value = *(*v12 + 16);
        time1.epoch = v22;
        time2 = *a2;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v11 = v12;
        }

        else
        {
          if (v12 == *(this + 5))
          {
            result = 0;
LABEL_33:
            if (!a3)
            {
              return result;
            }

            v21 = 0;
            goto LABEL_30;
          }

          if (!a5)
          {
            goto LABEL_27;
          }

          v13 = v12 + 1;
          do
          {
            v14 = v13;
            v15 = *v13++;
            v16 = (*(*v15 + 136))(v15, a4);
            v17 = *(this + 6);
          }

          while ((v16 & 1) == 0 && v14 != v17);
          if (v14 == v17)
          {
LABEL_27:
            result = (*(**v11 + 136))(*v11, a4);
            if (result)
            {
              if (!a3)
              {
                return 1;
              }

              goto LABEL_29;
            }

            goto LABEL_33;
          }

          v18 = *(v13 - 1);
          v12 = v13 - 1;
          v23 = *(v18 + 32);
          *&time1.value = *(v18 + 16);
          time1.epoch = v23;
          time2 = *a2;
          v11 = v12;
          if (!CMTimeCompare(&time1, &time2))
          {
            v11 = v12;
            if (a3)
            {
              goto LABEL_29;
            }

            return 1;
          }
        }
      }

      if (++v12 == *(this + 6))
      {
        v10 = *(this + 3);
        break;
      }
    }
  }

  v19 = *(v10 - 8);
  v24 = *(v19 + 32);
  *&time1.value = *(v19 + 16);
  time1.epoch = v24;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) < 0 && (*(**(*(this + 3) - 8) + 136))(*(*(this + 3) - 8), a4))
  {
    if (!a3)
    {
      return 1;
    }

    v11 = (*(this + 3) - 8);
  }

  else
  {
    result = (*(**v11 + 136))(*v11, a4);
    if (!a3 || !result)
    {
      return result;
    }
  }

LABEL_29:
  v21 = *v11;
  result = 1;
LABEL_30:
  *a3 = v21;
  return result;
}

uint64_t OZSpline::getNextValidVertex(OZSpline *this, const CMTime *a2, void **a3, const CMTime *a4, int a5)
{
  v10 = *(this + 5);
  if (a3)
  {
    *a3 = 0;
  }

  if (*(this + 2) == *(this + 3) || *(this + 6) == v10)
  {
    return 0;
  }

  v11 = 0;
  v12 = MEMORY[0x277CC08F0];
  while (!(*(**v10 + 136))(*v10, a4))
  {
LABEL_13:
    if (++v10 == *(this + 6))
    {
      return 0;
    }
  }

  v15 = *(*v10 + 32);
  *&time1.value = *(*v10 + 16);
  time1.epoch = v15;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    v16 = *(*v10 + 32);
    *&time1.value = *(*v10 + 16);
    time1.epoch = v16;
    time2 = *v12;
    v13 = CMTimeCompare(&time1, &time2) ? 0 : a5;
    if ((v13 & v11) != 1)
    {
      v11 |= v13;
      goto LABEL_13;
    }
  }

  if (a3)
  {
    *a3 = *v10;
  }

  return 1;
}

uint64_t OZSpline::createSegment(OZSpline *this, const CMTime *a2, const CMTime *a3, const CMTime *a4, int a5)
{
  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::lock(v11);
  v33 = *a4;
  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  OZSpline::getVertexHandle(this, a2, &v32, 0);
  OZSpline::getVertexHandle(this, a3, &v31, 0);
  time1 = *a2;
  time2 = v33;
  PC_CMTimeSaferSubtract(&time1, &time2, &v28);
  OZSpline::getVertexHandle(this, &v28, &v30, 0);
  time1 = *a3;
  time2 = v33;
  PC_CMTimeSaferAdd(&time1, &time2, &v28);
  OZSpline::getVertexHandle(this, &v28, &v29, 0);
  if (v32 && v31 && v30 && v29 || (time1 = *a2, v15 = MEMORY[0x277CC08A0], time2 = **&MEMORY[0x277CC08A0], v16 = CMTimeCompare(&time1, &time2), v17 = MEMORY[0x277CC08B0], !v16) && (time1 = *a3, time2 = **&MEMORY[0x277CC08B0], !CMTimeCompare(&time1, &time2)))
  {
    v12 = *(this + 20);
    if (!v12 || (v13 = *(v12 + 48)) == 0)
    {
      v13 = (this + 8);
    }

    PCSpinLock::unlock(v13);
    return 0;
  }

  else
  {
    v18 = *(this + 20);
    if (!v18 || (v19 = *(v18 + 48)) == 0)
    {
      v19 = (this + 8);
    }

    PCSpinLock::unlock(v19);
    time1 = *a2;
    time2 = *v15;
    v20 = 0;
    if (CMTimeCompare(&time1, &time2) && !v30)
    {
      time1 = *a2;
      time2 = v33;
      PC_CMTimeSaferSubtract(&time1, &time2, &v28);
      time1 = *a2;
      time2 = v33;
      v21 = PC_CMTimeSaferSubtract(&time1, &time2, v27);
      v22 = MEMORY[0x277CC08F0];
      (*(*this + 240))(this, v27, MEMORY[0x277CC08F0], 0, v21);
      v20 = (*(*this + 192))(this, &v28, v22, 1);
      (*(*this + 240))(this, a2, v22, 0);
      (*(*this + 192))(this, a2, v22, 1);
    }

    time1 = *a3;
    time2 = *v17;
    v23 = 0;
    if (CMTimeCompare(&time1, &time2) && !v29)
    {
      v24 = MEMORY[0x277CC08F0];
      (*(*this + 240))(this, a3, MEMORY[0x277CC08F0], 0);
      v23 = (*(*this + 192))(this, a3, v24, 1);
      time1 = *a3;
      time2 = v33;
      PC_CMTimeSaferAdd(&time1, &time2, &v28);
      time1 = *a3;
      time2 = v33;
      v25 = PC_CMTimeSaferAdd(&time1, &time2, v27);
      (*(*this + 240))(this, v27, v24, 0, v25);
      (*(*this + 192))(this, &v28, v24, 1);
    }

    if (a5)
    {
      if (v20)
      {
        (*(*v20 + 200))(v20, 15);
        (*(*v20 + 48))(v20, MEMORY[0x277CC08F0], 1.0);
      }

      if (v23)
      {
        (*(*v23 + 200))(v23, 15);
        (*(*v23 + 48))(v23, MEMORY[0x277CC08F0], 1.0);
      }

      return 1;
    }

    if (v20)
    {
      (*(*v20 + 200))(v20, 1);
    }

    if (!v23)
    {
      return 1;
    }

    v14 = 1;
    (*(*v23 + 200))(v23, 1);
  }

  return v14;
}

BOOL OZSpline::getVertexHandle(OZSpline *this, const CMTime *a2, void **a3, int a4)
{
  if (a4)
  {
    v8 = *(this + 20);
    if (!v8 || (v9 = *(v8 + 48)) == 0)
    {
      v9 = (this + 8);
    }

    PCSpinLock::lock(v9);
  }

  v10 = *(this + 5);
  if (*(this + 6) == v10)
  {
    v14 = 0;
    if (!a4)
    {
      return v14;
    }
  }

  else
  {
    v11 = v10 + 8;
    while (1)
    {
      v12 = *(v11 - 8);
      v18 = *(v12 + 32);
      *&time1.value = *(v12 + 16);
      time1.epoch = v18;
      time2 = *a2;
      v13 = CMTimeCompare(&time1, &time2);
      if (!v13)
      {
        if (a3)
        {
          break;
        }
      }

      if (v11 != *(this + 6))
      {
        v11 += 8;
        if (v13)
        {
          continue;
        }
      }

      v14 = v13 == 0;
      if (a4)
      {
        goto LABEL_17;
      }

      return v14;
    }

    *a3 = *(v11 - 8);
    v14 = 1;
    if (!a4)
    {
      return v14;
    }
  }

LABEL_17:
  v15 = *(this + 20);
  if (!v15 || (v16 = *(v15 + 48)) == 0)
  {
    v16 = (this + 8);
  }

  PCSpinLock::unlock(v16);
  return v14;
}

uint64_t OZSpline::setVertexSpeed(OZSpline *this, void *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = 0;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      (*(*a2 + 200))(a2, 16);
      goto LABEL_12;
    }

    if (a3 == 3)
    {
      (*(*a2 + 200))(a2, 15);
      goto LABEL_12;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      (*(*a2 + 200))(a2, 17);
LABEL_12:
      (*(*a2 + 48))(a2, MEMORY[0x277CC08F0], 1.0);
      return 1;
    }
  }

  else
  {
    v4 = 1;
    (*(*a2 + 200))(a2, 1);
  }

  return v4;
}

void OZSpline::setClosed(OZSpline *this, char a2, void *a3)
{
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  if (a2 & 1) == 0 && a3 && (*(this + 144))
  {
    __p = 0;
    v18 = 0;
    v19 = 0;
    VertexIter = OZSpline::getVertexIter(this, a3);
    v9 = VertexIter;
    v10 = *(this + 2);
    v11 = *(this + 3);
    if (v11 != VertexIter)
    {
      v12 = VertexIter;
      do
      {
        std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, v12++);
      }

      while (v12 != v11);
    }

    while (v10 != v9)
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](&__p, v10++);
    }

    *(this + 3) = *(this + 2);
    for (i = __p; i != v18; ++i)
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](this + 16, i);
    }

    OZSpline::reparametrize(this);
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }

  *(this + 144) = a2;
  *(this + 145) = 1;
  v14 = *(this + 3);
  *(this + 5) = *(this + 2);
  *(this + 6) = v14;
  OZSpline::refreshValidVerticesList(this);
  v15 = *(this + 20);
  if (!v15 || (v16 = *(v15 + 48)) == 0)
  {
    v16 = (this + 8);
  }

  PCSpinLock::unlock(v16);
}

void sub_25FE9A9B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZSpline::reparametrize(uint64_t this)
{
  v1 = *(this + 40);
  if (*(this + 48) != v1)
  {
    v2 = this;
    v3 = 0;
    do
    {
      v4 = (*(**v1 + 168))();
      (*(**v1 + 160))(*v1, 2);
      v5 = *v1;
      OZFigTimeForChannelSeconds(&v7, v3, 0x40000);
      (*(*v5 + 16))(v5, &v7);
      v6 = *v1++;
      this = (*(*v6 + 176))(v6, v4);
      ++v3;
    }

    while (v1 != *(v2 + 48));
  }

  return this;
}

void OZSpline::setDirty(OZSpline *this, char a2)
{
  if (a2)
  {
    *(this + 145) = 1;
    v2 = *(this + 3);
    *(this + 5) = *(this + 2);
    *(this + 6) = v2;
    OZSpline::refreshValidVerticesList(this);
  }

  else
  {
    *(this + 145) = 0;
  }
}

BOOL OZSpline::getFirstValidVertexWithLock(OZSpline *this, void **a2, const CMTime *a3)
{
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  FirstValidVertex = OZSpline::getFirstValidVertex(this, a2, a3);
  v9 = *(this + 20);
  if (!v9 || (v10 = *(v9 + 48)) == 0)
  {
    v10 = (this + 8);
  }

  PCSpinLock::unlock(v10);
  return FirstValidVertex;
}

uint64_t OZSpline::getLastValidVertexWithLock(OZSpline *this, void **a2, const CMTime *a3)
{
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  LastValidVertex = OZSpline::getLastValidVertex(this, a2, a3);
  v9 = *(this + 20);
  if (!v9 || (v10 = *(v9 + 48)) == 0)
  {
    v10 = (this + 8);
  }

  PCSpinLock::unlock(v10);
  return LastValidVertex;
}

uint64_t OZSpline::getNextValidVertexWithLock(OZSpline *this, void *a2, void **a3, const CMTime *a4)
{
  v8 = *(this + 20);
  if (!v8 || (v9 = *(v8 + 48)) == 0)
  {
    v9 = (this + 8);
  }

  PCSpinLock::lock(v9);
  NextValidVertex = OZSpline::getNextValidVertex(this, a2, a3, a4);
  v11 = *(this + 20);
  if (!v11 || (v12 = *(v11 + 48)) == 0)
  {
    v12 = (this + 8);
  }

  PCSpinLock::unlock(v12);
  return NextValidVertex;
}

uint64_t OZSpline::getPreviousValidVertexWithLock(OZSpline *this, void *a2, void **a3, const CMTime *a4)
{
  v8 = *(this + 20);
  if (!v8 || (v9 = *(v8 + 48)) == 0)
  {
    v9 = (this + 8);
  }

  PCSpinLock::lock(v9);
  PreviousValidVertex = OZSpline::getPreviousValidVertex(this, a2, a3, a4);
  v11 = *(this + 20);
  if (!v11 || (v12 = *(v11 + 48)) == 0)
  {
    v12 = (this + 8);
  }

  PCSpinLock::unlock(v12);
  return PreviousValidVertex;
}

uint64_t OZSpline::getPreviousValidVertex(OZSpline *this, void *a2, void **a3, const CMTime *a4)
{
  if (*(this + 112) == 1)
  {
    ValidVertexIter = OZSpline::getValidVertexIter(this, a2);
    if (*(this + 9) == ValidVertexIter)
    {
      result = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }

    else
    {
      if (a3)
      {
        *a3 = *(ValidVertexIter - 1);
      }

      return 1;
    }
  }

  else
  {
    VertexIter = OZSpline::getVertexIter(this, a2);
    return OZSpline::getPreviousValidVertex(this, &VertexIter, a3, a4);
  }

  return result;
}

uint64_t OZSpline::getNextValidVertex(OZSpline *this, void ***a2, void *a3, uint64_t a4)
{
  v8 = *a2;
  if (a3)
  {
    *a3 = 0;
  }

  v9 = *(this + 6);
  if (*a2 == v9)
  {
    return 0;
  }

  if ((*(this + 112) & 1) == 0)
  {
    v12 = v8 + 1;
    if (v8 + 1 != v9)
    {
      while (1)
      {
        if ((*(**v12 + 136))(*v12, a4))
        {
          v19 = *(*v12 + 4);
          v16 = **a2;
          v17 = *(v16 + 1);
          v18 = *(v16 + 4);
          *&time1.value = *(*v12 + 1);
          time1.epoch = v19;
          *&time2.value = v17;
          time2.epoch = v18;
          if (CMTimeCompare(&time1, &time2))
          {
            break;
          }
        }

        if (++v12 == *(this + 6))
        {
          return 0;
        }
      }

      goto LABEL_17;
    }

    return 0;
  }

  ValidVertexIter = OZSpline::getValidVertexIter(this, **a2);
  v11 = *(this + 10);
  v12 = ValidVertexIter + 1;
  if (v11 == ValidVertexIter || v12 == v11)
  {
    result = 0;
    if (!a3)
    {
      return result;
    }

    v15 = 0;
    goto LABEL_19;
  }

LABEL_17:
  if (a3)
  {
    v15 = *v12;
    result = 1;
LABEL_19:
    *a3 = v15;
    return result;
  }

  return 1;
}

uint64_t OZSpline::getPreviousValidVertex(OZSpline *this, void ***a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    *a3 = 0;
  }

  v8 = *a2;
  v9 = *(this + 5);
  if (*a2 == v9)
  {
    return 0;
  }

  if (*(this + 112) == 1)
  {
    ValidVertexIter = OZSpline::getValidVertexIter(this, *v8);
    if (*(this + 9) != ValidVertexIter)
    {
      if (!a3)
      {
        return 1;
      }

      v11 = *(ValidVertexIter - 1);
LABEL_24:
      *a3 = v11;
      return 1;
    }

    if (a3)
    {
      result = 0;
      *a3 = 0;
      return result;
    }

    return 0;
  }

  *&v26.value = *MEMORY[0x277CC08A0];
  v26.epoch = *(MEMORY[0x277CC08A0] + 16);
  v12 = v8 - 1;
  if (v8 - 1 == v9)
  {
    v13 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v13 = 0;
    do
    {
      if (v13)
      {
        v22 = *(*v12 + 4);
        *&time1.value = *(*v12 + 1);
        time1.epoch = v22;
        time2 = v26;
        if (CMTimeCompare(&time1, &time2))
        {
          if (a3)
          {
            *a3 = v13;
          }

          return 1;
        }
      }

      if ((*(**v12 + 136))(*v12, a4))
      {
        v23 = *(*v12 + 4);
        v14 = **a2;
        v15 = *(v14 + 1);
        v20 = *(v14 + 4);
        *&time1.value = *(*v12 + 1);
        time1.epoch = v23;
        *&time2.value = v15;
        time2.epoch = v20;
        if (CMTimeCompare(&time1, &time2))
        {
          v13 = *v12;
          *&v26.value = *(*v12 + 1);
          v26.epoch = *(*v12 + 4);
        }
      }

      --v12;
    }

    while (v12 != *(this + 5));
    if (!a3)
    {
      goto LABEL_18;
    }
  }

  *a3 = v13;
LABEL_18:
  if (v13)
  {
    v24 = *(*v12 + 4);
    *&time1.value = *(*v12 + 1);
    time1.epoch = v24;
    time2 = v26;
    if (CMTimeCompare(&time1, &time2))
    {
      return 1;
    }
  }

  result = (*(**v12 + 136))(*v12, a4);
  if (result)
  {
    v25 = *(*v12 + 4);
    v17 = **a2;
    v18 = *(v17 + 1);
    v21 = *(v17 + 4);
    *&time1.value = *(*v12 + 1);
    time1.epoch = v25;
    *&time2.value = v18;
    time2.epoch = v21;
    v19 = CMTimeCompare(&time1, &time2);
    result = v19 != 0;
    if (a3)
    {
      if (v19)
      {
        v11 = *v12;
        goto LABEL_24;
      }
    }
  }

  return result;
}

uint64_t OZSpline::getNextValidVertexWithLock(OZSpline *this, const CMTime *a2, void **a3, const CMTime *a4, int a5)
{
  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::lock(v11);
  NextValidVertex = OZSpline::getNextValidVertex(this, a2, a3, a4, a5);
  v13 = *(this + 20);
  if (!v13 || (v14 = *(v13 + 48)) == 0)
  {
    v14 = (this + 8);
  }

  PCSpinLock::unlock(v14);
  return NextValidVertex;
}

uint64_t OZSpline::getPreviousValidVertexWithLock(OZSpline *this, const CMTime *a2, void **a3, const CMTime *a4, int a5)
{
  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::lock(v11);
  PreviousValidVertex = OZSpline::getPreviousValidVertex(this, a2, a3, a4, a5);
  v13 = *(this + 20);
  if (!v13 || (v14 = *(v13 + 48)) == 0)
  {
    v14 = (this + 8);
  }

  PCSpinLock::unlock(v14);
  return PreviousValidVertex;
}

void **OZSpline::getValidVertexIter(OZSpline *this, void *a2)
{
  v2 = *(this + 9);
  v3 = *(this + 16);
  v4 = *(this + 11);
  v5 = *(this + 12) - v4;
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
      *(this + 16) = v6;
    }

    else
    {
      v7 = v3 + 1;
      if (v7 < v5 >> 3 && *(v4 + 8 * v7) == a2)
      {
        v2 += v7;
        *(this + 16) = v7;
      }

      else
      {
        v8 = *(this + 10);
        v9 = *(this + 9);
        if (v8 != v2)
        {
          while (*v9 != a2)
          {
            if (++v9 == v8)
            {
              v9 = *(this + 10);
              break;
            }
          }
        }

        *(this + 16) = v9 - v2;
        if (v8 != v9)
        {
          return v9;
        }
      }
    }
  }

  return v2;
}

CMTime *OZSpline::getSmallDeltaU@<X0>(OZSpline *this@<X0>, CMTime *a2@<X8>)
{
  if (**(this + 21))
  {
    v2 = 1;
  }

  else
  {
    v2 = 100;
  }

  return CMTimeMake(a2, 1, v2);
}

uint64_t OZSpline::getFirstVertex(OZSpline *this)
{
  v1 = *(this + 2);
  if (v1 == *(this + 3))
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

uint64_t OZSpline::getPreviousVertex(OZSpline *this, void *a2)
{
  VertexIter = OZSpline::getVertexIter(this, a2);
  if (*(this + 5) == VertexIter)
  {
    return 0;
  }

  else
  {
    return *(VertexIter - 1);
  }
}

void *OZSpline::getNextVertex(void ***this, void *a2)
{
  VertexIter = OZSpline::getVertexIter(this, a2);
  v4 = this[6];
  if (v4 == VertexIter || VertexIter + 1 == v4)
  {
    return 0;
  }

  else
  {
    return VertexIter[1];
  }
}

uint64_t OZSpline::getNextVertex(OZSpline *this, const CMTime *a2)
{
  if (*(this + 2) == *(this + 3))
  {
    return 0;
  }

  v15 = v2;
  v16 = v3;
  v5 = *(this + 5);
  if (*(this + 6) == v5)
  {
    return 0;
  }

  v7 = 0;
  v8 = MEMORY[0x277CC08F0];
  while (1)
  {
    v11 = *(*v5 + 32);
    *&time1.value = *(*v5 + 16);
    time1.epoch = v11;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      break;
    }

    v12 = *(*v5 + 32);
    *&time1.value = *(*v5 + 16);
    time1.epoch = v12;
    time2 = *v8;
    v9 = CMTimeCompare(&time1, &time2) == 0;
    if (v9 & v7)
    {
      break;
    }

    v7 |= v9;
    v5 += 8;
    if (v5 == *(this + 6))
    {
      return 0;
    }
  }

  return *v5;
}

uint64_t OZSpline::findVertex(OZSpline *this, uint64_t a2, uint64_t a3, char *a4)
{
  if (!a4)
  {
    return 0;
  }

  v6 = a2;
  if (a3 - a2 <= 1)
  {
    v8 = *(this + 2);
    if (*(v8 + 8 * a2) != a4)
    {
      return *(v8 + 8 * a3) == a4;
    }

    return 1;
  }

  if (a3 < a2)
  {
    return 0;
  }

  v10 = *(this + 2);
  if (*(v10 + 8 * a2) == a4)
  {
    return 1;
  }

  if (*(v10 + 8 * a3) == a4)
  {
    return 1;
  }

  v11 = (vcvtd_n_f64_s64(a3 - a2, 1uLL) + a2);
  v12 = *(v10 + 8 * v11);
  if (v12 == a4)
  {
    return 1;
  }

  v37 = *(a4 + 16);
  v13 = *(v12 + 16);
  v35 = *(v12 + 32);
  time1 = *(a4 + 16);
  *&time2.value = v13;
  time2.epoch = v35;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v17 = this;
    v18 = v6;
    v19 = v11;
    return OZSpline::findVertex(v17, v18, v19, a4);
  }

  v14 = *(*(this + 2) + 8 * v11);
  v15 = *(v14 + 16);
  v36 = *(v14 + 32);
  time1 = v37;
  *&time2.value = v15;
  time2.epoch = v36;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v17 = this;
    v18 = v11;
    v19 = a3;
    return OZSpline::findVertex(v17, v18, v19, a4);
  }

  v20 = *(*(this + 2) + 8 * v6);
  v21 = *(v20 + 16);
  time1.epoch = *(v20 + 32);
  *&time1.value = v21;
  if (PCMath::equal(&v37, &time1, MEMORY[0x277CC08F0], v16) || (v23 = *(*(this + 2) + 8 * v11), v24 = *(v23 + 16), time1.epoch = *(v23 + 32), *&time1.value = v24, v6 = v11, PCMath::equal(&v37, &time1, MEMORY[0x277CC08F0], v22)) || (v25 = *(*(this + 2) + 8 * a3), v26 = *(v25 + 16), time1.epoch = *(v25 + 32), *&time1.value = v26, result = PCMath::equal(&v37, &time1, MEMORY[0x277CC08F0], v22), v6 = a3, result))
  {
    v27 = *(this + 2);
    v28 = v6 - 1;
    v29 = MEMORY[0x277CC08F0];
    while (v28 + 1 >= 1)
    {
      time1 = *(*(v27 + 8 * v28) + 16);
      v30 = PCMath::equal(&v37, &time1, v29, v22);
      v27 = *(this + 2);
      if (!v30)
      {
        break;
      }

      v31 = *(v27 + 8 * v28--);
      if (v31 == a4)
      {
        return 1;
      }
    }

    v32 = v6 + 1;
    v33 = MEMORY[0x277CC08F0];
    while (v32 < (*(this + 3) - v27) >> 3)
    {
      time1 = *(*(v27 + 8 * v32) + 16);
      result = PCMath::equal(&v37, &time1, v33, v22);
      if (!result)
      {
        return result;
      }

      v27 = *(this + 2);
      v34 = *(v27 + 8 * v32++);
      if (v34 == a4)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t OZSpline::isValidHandle(OZSpline *this, char *a2)
{
  v4 = *(this + 20);
  if (!v4 || (v5 = *(v4 + 48)) == 0)
  {
    v5 = (this + 8);
  }

  PCSpinLock::lock(v5);
  v6 = *(this + 3) - *(this + 2);
  if (v6)
  {
    Vertex = OZSpline::findVertex(this, 0, (v6 >> 3) - 1, a2);
  }

  else
  {
    Vertex = 0;
  }

  v8 = *(this + 20);
  if (!v8 || (v9 = *(v8 + 48)) == 0)
  {
    v9 = (this + 8);
  }

  PCSpinLock::unlock(v9);
  return Vertex;
}

uint64_t OZSpline::lockSpline(uint64_t this, int a2)
{
  v2 = *(this + 40);
  if (*(this + 48) != v2)
  {
    v4 = this;
    do
    {
      v5 = **v2;
      if (a2)
      {
        this = (*(v5 + 152))();
      }

      else
      {
        this = (*(v5 + 160))();
      }

      ++v2;
    }

    while (v2 != *(v4 + 48));
  }

  return this;
}

uint64_t OZSpline::getNumberOfValidVertices(OZSpline *this, const CMTime *a2)
{
  v6 = 0;
  OZSpline::getFirstValidVertex(this, &v6, a2);
  if (!v6)
  {
    return 0;
  }

  LODWORD(v3) = 0;
  v4 = MEMORY[0x277CC08F0];
  do
  {
    v3 = (v3 + 1);
  }

  while ((OZSpline::getNextValidVertex(this, v6, &v6, v4) & 1) != 0);
  return v3;
}

double OZSpline::getVertexValue(OZSpline *this, const CMTime *a2, const CMTime *a3, uint64_t a4)
{
  v55 = 0;
  v56 = 0;
  v54 = 0;
  v8 = *(this + 20);
  if (v8)
  {
    (*(*v8 + 96))(v8);
  }

  else
  {
    v9 = 0.0;
  }

  v53 = v9;
  if (a4)
  {
    v10 = *(this + 20);
    if (!v10 || (v11 = *(v10 + 48)) == 0)
    {
      v11 = (this + 8);
    }

    PCSpinLock::lock(v11);
  }

  Interpolator = OZInterpolators::getInterpolator(*(this + 19), *(*(this + 21) + 32));
  if ((*(*Interpolator + 64))(Interpolator))
  {
    OZSpline::getMinValueU(this, MEMORY[0x277CC08F0], 0, &v52);
    time1 = *a2;
    time2 = v52;
    if (CMTimeCompare(&time1, &time2) < 0 && (*(this + 144) & 1) == 0)
    {
      if (OZSpline::getFirstValidVertex(this, &v56, a3))
      {
        v26 = v56;
        v27 = this;
        v28 = a3;
        v29 = a2;
        v30 = 1;
        goto LABEL_56;
      }
    }

    else
    {
      memset(&v52, 0, sizeof(v52));
      OZSpline::getMaxValueU(this, MEMORY[0x277CC08F0], 0, &v52);
      time1 = *a2;
      time2 = v52;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        if (*(*(this + 21) + 4) != 1 || (time1 = *a2, time2 = v52, CMTimeCompare(&time1, &time2) < 0))
        {
          v13 = 0;
          goto LABEL_24;
        }
      }

      if (*(this + 144))
      {
        v13 = 1;
LABEL_24:
        v17 = *(this + 5);
        v18 = *(this + 17);
        if (v18 < (*(this + 3) - *(this + 2)) >> 3)
        {
          v19 = &v17[v18];
          v51 = v19;
          if (v18)
          {
            v50 = *(*v19 + 16);
            time1 = *a2;
            time2 = v50;
            v17 = v19;
            if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
            {
              goto LABEL_29;
            }

            v17 = *(this + 5);
          }
        }

        *(this + 17) = 0;
        v51 = v17;
        v19 = v17;
LABEL_29:
        if ((v13 & 1) == 0)
        {
          v31 = *(this + 6);
          while (v19 != v31)
          {
            memset(&v50, 0, sizeof(v50));
            v50 = *(*v19 + 16);
            time1 = v50;
            time2 = *a2;
            if (CMTimeCompare(&time1, &time2) || !(*(**v19 + 136))(*v19, a3))
            {
              time1 = v50;
              time2 = *a2;
              if (CMTimeCompare(&time1, &time2) >= 1)
              {
                if ((*(**v19 + 136))(*v19, a3))
                {
                  if (OZSpline::getPreviousValidVertex(this, &v51, &v56, a3))
                  {
                    v48 = *v19;
                    v55 = v48;
                    if (v48)
                    {
                      v47 = v56;
                      v43 = this;
                      v44 = a3;
                      v45 = a2;
                      goto LABEL_74;
                    }
                  }
                }
              }
            }

            else if (v19 == *(this + 5))
            {
              v35 = *(this + 19);
              v36 = (*(**v17 + 208))();
              v37 = OZInterpolators::getInterpolator(v35, v36);
              if ((*(*v37 + 64))(v37))
              {
                v46 = *v17;
LABEL_71:
                v53 = (*(*v46 + 24))(v46, a3);
LABEL_75:
                v49 = *(this + 17);
                *(this + 17) = v49;
                if ((v49 & 0x8000000000000000) == 0)
                {
                  goto LABEL_62;
                }

                goto LABEL_61;
              }

              if (v17 + 1 != *(this + 6))
              {
                v47 = *v17;
                v48 = v17[1];
                goto LABEL_73;
              }
            }

            else
            {
              v32 = *(this + 19);
              v33 = (*(**(v17 - 1) + 208))(*(v17 - 1));
              v34 = OZInterpolators::getInterpolator(v32, v33);
              if ((*(*v34 + 64))(v34))
              {
                v46 = *v19;
                goto LABEL_71;
              }

              if (v17 + 1 != *(this + 6))
              {
                v47 = *v19;
                v48 = v17[1];
LABEL_73:
                v45 = &v50;
                v43 = this;
                v44 = a3;
LABEL_74:
                OZSpline::interpolate(v43, v44, v47, v48, v45, &v53, 0);
                goto LABEL_75;
              }
            }

            v51 = ++v19;
            ++*(this + 17);
            v31 = *(this + 6);
            v17 = v19;
          }
        }

        if (!OZSpline::getLastValidVertex(this, &v54, a3))
        {
          goto LABEL_60;
        }

        v20 = *(this + 17);
        if (v20 <= 0)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20 - 1;
        }

        *(this + 17) = v21;
        if (*(this + 144))
        {
          v56 = v54;
          OZSpline::getFirstValidVertex(this, &v55, a3);
          v23 = v55;
          v22 = v56;
          v24 = this;
          v25 = a3;
        }

        else
        {
          v38 = *(this + 19);
          v39 = (*(*v54 + 208))(v54);
          v40 = OZInterpolators::getInterpolator(v38, v39);
          if ((*(*v40 + 64))(v40))
          {
            goto LABEL_60;
          }

          v22 = v54;
          v55 = v54;
          v56 = v54;
          v24 = this;
          v25 = a3;
          v23 = v54;
        }

        OZSpline::interpolate(v24, v25, v22, v23, a2, &v53, 0);
LABEL_60:
        if ((*(this + 17) & 0x8000000000000000) != 0)
        {
LABEL_61:
          *(this + 17) = 0;
        }

        goto LABEL_62;
      }

      if (OZSpline::getLastValidVertex(this, &v55, a3))
      {
        v26 = v55;
        v27 = this;
        v28 = a3;
        v29 = a2;
        v30 = 0;
LABEL_56:
        OZSpline::extrapolate(v27, v26, v28, v29, &v53, v30);
      }
    }

LABEL_62:
    if (a4)
    {
      v41 = *(this + 20);
      if (!v41 || (v42 = *(v41 + 48)) == 0)
      {
        v42 = (this + 8);
      }

      PCSpinLock::unlock(v42);
    }

    return v53;
  }

  time2.value = 0;
  LODWORD(v52.value) = 1;
  if (a4)
  {
    v14 = *(this + 20);
    if (!v14 || (v15 = *(v14 + 48)) == 0)
    {
      v15 = (this + 8);
    }

    PCSpinLock::unlock(v15);
  }

  CMTimeMake(&time1, 1, 1);
  (*(*this + 72))(this, a2, &time1, &v52, 0, &time2, a3, a4);
  return *&time2.value;
}

void OZSpline::extrapolate(OZSpline *this, char *a2, const CMTime *a3, const CMTime *a4, double *a5, int a6)
{
  memset(&v60, 0, sizeof(v60));
  v12 = MEMORY[0x277CC08F0];
  OZSpline::getMaxValueU(this, MEMORY[0x277CC08F0], 0, &v60);
  memset(&v59, 0, sizeof(v59));
  OZSpline::getMinValueU(this, v12, 0, &v59);
  memset(&v58, 0, sizeof(v58));
  time1 = v60;
  time2 = v59;
  PC_CMTimeSaferSubtract(&time1, &time2, &v58);
  time1 = v60;
  time2 = v59;
  if (!CMTimeCompare(&time1, &time2))
  {
    goto LABEL_49;
  }

  v13 = *(this + 21);
  if (a6)
  {
    v14 = *(v13 + 40);
    if (v14 > 1)
    {
      if (v14 == 2)
      {
        memset(&v63, 0, sizeof(v63));
        time1 = v59;
        time2 = *a4;
        PC_CMTimeSaferSubtract(&time1, &time2, &v62);
        operator/(&v62.value, &v58, &v63);
        time1 = v63;
        if (CMTimeGetSeconds(&time1))
        {
          CMTimeMake(&v57, 1, 1);
          time1 = v63;
          time2 = v57;
          PC_CMTimeFloorToSampleDuration(&time1, &time2, &v61);
          time1 = v63;
          time2 = v61;
          PC_CMTimeSaferSubtract(&time1, &time2, &v62);
          v63 = v62;
          operator*(&v63.value, &v58, &v61);
          time1 = v60;
          time2 = v61;
          PC_CMTimeSaferSubtract(&time1, &time2, &v62);
        }

        else
        {
          CMTimeMake(&v57, 1, 1);
          time1 = v63;
          time2 = v57;
          PC_CMTimeFloorToSampleDuration(&time1, &time2, &v61);
          time1 = v63;
          time2 = v61;
          PC_CMTimeSaferSubtract(&time1, &time2, &v62);
          v63 = v62;
          operator*(&v63.value, &v58, &v61);
          time1 = v61;
          time2 = v59;
          PC_CMTimeSaferAdd(&time1, &time2, &v62);
        }

        v63 = v62;
        time1 = v62;
        time2 = v59;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v52 = &v59;
        }

        else
        {
          time1 = v63;
          time2 = v60;
          v51 = CMTimeCompare(&time1, &time2);
          v52 = &v63;
          if (v51 > 0)
          {
            v52 = &v60;
          }
        }

        v44 = *&v52->value;
        v63.epoch = v52->epoch;
        *&v63.value = v44;
        goto LABEL_62;
      }

      if (v14 != 3)
      {
        if (v14 != 4)
        {
          return;
        }

        memset(&v63, 0, sizeof(v63));
        time1 = v59;
        time2 = *a4;
        PC_CMTimeSaferSubtract(&time1, &time2, &v62);
        operator/(&v62.value, &v58, &v63);
        time1 = v63;
        Seconds = CMTimeGetSeconds(&time1);
        CMTimeMake(&v61, Seconds, 1);
        time1 = v63;
        time2 = v61;
        PC_CMTimeSaferSubtract(&time1, &time2, &v62);
        v63 = v62;
        operator*(&v63.value, &v58, &v61);
        time1 = v60;
        time2 = v61;
        PC_CMTimeSaferSubtract(&time1, &time2, &v62);
        v63 = v62;
        v16 = MEMORY[0x277CC08F0];
        v17 = (*(*this + 240))(this, &v60, MEMORY[0x277CC08F0], 0);
        v18 = v17 - (*(*a2 + 24))(a2, v16);
        v19 = Seconds;
        v20 = (*(*this + 240))(this, &v60, v16, 0);
        v21 = v18 + (v20 - (*(*a2 + 24))(a2, a3)) * v19;
        v22 = (*(*this + 240))(this, &v63, a3, 0) - v21;
        goto LABEL_63;
      }

      memset(&v63, 0, sizeof(v63));
      time1 = v59;
      time2 = *a4;
      PC_CMTimeSaferSubtract(&time1, &time2, &v62);
      operator/(&v62.value, &v58, &v63);
      CMTimeMake(&v57, 1, 1);
      time1 = v63;
      time2 = v57;
      PC_CMTimeFloorToSampleDuration(&time1, &time2, &v61);
      time1 = v63;
      time2 = v61;
      PC_CMTimeSaferSubtract(&time1, &time2, &v62);
      v63 = v62;
      operator*(&v63.value, &v58, &v61);
      time1 = v60;
      time2 = v61;
      PC_CMTimeSaferSubtract(&time1, &time2, &v62);
      v44 = *&v62.value;
      *&v63.value = *&v62.value;
      epoch = v62.epoch;
LABEL_61:
      v63.epoch = epoch;
LABEL_62:
      v22 = (*(*this + 240))(this, &v63, a3, 0, v44);
      goto LABEL_63;
    }

    if (v14)
    {
      if (v14 != 1)
      {
        return;
      }

      memset(&v63, 0, sizeof(v63));
      v62 = *(a2 + 16);
      if (*v13)
      {
        v29 = 1;
      }

      else
      {
        v29 = 100;
      }

      CMTimeMake(&v61, 1, v29);
      time1 = v62;
      time2 = v61;
      v30 = PC_CMTimeSaferAdd(&time1, &time2, &v63);
      v31 = (*(*this + 240))(this, &v63, a3, 0, v30);
      v32 = v31 - (*(*a2 + 24))(a2, a3);
      v33 = v32 < 0.0;
      if (**(this + 21))
      {
        v34 = 1;
      }

      else
      {
        v34 = 100;
      }

      CMTimeMake(&time1, 1, v34);
      v35 = CMTimeGetSeconds(&time1);
      v36 = v32 / v35;
      v37 = &unk_2608494C0;
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  v23 = *(v13 + 36);
  if (v23 <= 1)
  {
    if (v23)
    {
      if (v23 != 1)
      {
        return;
      }

      if ((*(*a2 + 208))(a2))
      {
        memset(&v63, 0, sizeof(v63));
        v62 = *(a2 + 16);
        if (**(this + 21))
        {
          v38 = 1;
        }

        else
        {
          v38 = 100;
        }

        CMTimeMake(&v61, 1, v38);
        time1 = v62;
        time2 = v61;
        v39 = PC_CMTimeSaferSubtract(&time1, &time2, &v63);
        v40 = (*(*a2 + 24))(a2, a3, v39);
        v41 = v40 - (*(*this + 240))(this, &v63, a3, 0);
        v33 = v41 > 0.0;
        if (**(this + 21))
        {
          v42 = 1;
        }

        else
        {
          v42 = 100;
        }

        CMTimeMake(&time1, 1, v42);
        v35 = CMTimeGetSeconds(&time1);
        v36 = v41 / v35;
        v37 = &unk_2608494D0;
LABEL_32:
        if (v35 == 0.0)
        {
          v43 = v37[v33];
        }

        else
        {
          v43 = v36;
        }

        time2 = *(a2 + 16);
        time1 = *a4;
        PC_CMTimeSaferSubtract(&time1, &time2, &v62);
        operator*(&v62, &time1, v43);
        v27 = CMTimeGetSeconds(&time1);
        v28 = (*(*a2 + 24))(a2, a3);
        goto LABEL_36;
      }
    }

    else
    {
      memset(&v63, 0, sizeof(v63));
      OZSpline::getStep(this, &v63);
      if (*(*(this + 21) + 4) == 1)
      {
        time1 = v58;
        time2 = v63;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          memset(&v62, 0, sizeof(v62));
          time1 = *(a2 + 16);
          time2 = v63;
          v50.n128_f64[0] = PC_CMTimeSaferSubtract(&time1, &time2, &v62);
          v22 = (*(*this + 240))(this, &v62, a3, 0, v50);
          goto LABEL_63;
        }
      }
    }

LABEL_49:
    (*(*a2 + 24))(a2, a3);
    goto LABEL_63;
  }

  if (v23 == 2)
  {
    memset(&v62, 0, sizeof(v62));
    OZSpline::getStep(this, &v62);
    if (*(*(this + 21) + 4) == 1)
    {
      time1 = v58;
      time2 = v62;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        time1 = v58;
        time2 = v62;
        if (CMTimeCompare(&time1, &time2) <= 0)
        {
          *&v61.value = *&v12->value;
          v46 = v12->epoch;
        }

        else
        {
          time1 = v59;
          time2 = v58;
          PC_CMTimeSaferAdd(&time1, &time2, &v63);
          time1 = *a4;
          time2 = v63;
          PC_CMTimeSaferSubtract(&time1, &time2, &v61);
          memset(&v57, 0, sizeof(v57));
          time1 = v58;
          time2 = v62;
          PC_CMTimeSaferSubtract(&time1, &time2, &v57);
          operator*(&v57, &time2, 2.0);
          PCMath::mod(&v61, &time2, &time1);
          v61 = time1;
          time2 = v57;
          if (CMTimeCompare(&time1, &time2) < 0)
          {
            time1 = v61;
            time2 = v62;
            PC_CMTimeFloorToSampleDuration(&time1, &time2, &v53);
            operator*(&v53, 2, &v54);
            time1 = v57;
            time2 = v54;
            PC_CMTimeSaferSubtract(&time1, &time2, &v55);
            time1 = v55;
            time2 = v62;
            PC_CMTimeSaferSubtract(&time1, &time2, &v56);
            time2 = v61;
            v63 = v56;
            PC_CMTimeSaferAdd(&time2, &v63, &time1);
            *&v61.value = *&time1.value;
            v46 = time1.epoch;
          }

          else
          {
            time1 = v61;
            time2 = v57;
            PC_CMTimeSaferSubtract(&time1, &time2, &v56);
            time1 = v56;
            time2 = v62;
            PC_CMTimeSaferAdd(&time1, &time2, &v63);
            *&v61.value = *&v63.value;
            v46 = v63.epoch;
          }
        }

        v61.epoch = v46;
        *&time2.value = *&v61.value;
        time2.epoch = v46;
        v63 = v59;
        PC_CMTimeSaferAdd(&time2, &v63, &time1);
        v61 = time1;
        v22 = (*(*this + 240))(this, &v61, a3, 0, *&time1.value);
        goto LABEL_63;
      }
    }

    memset(&v63, 0, sizeof(v63));
    time1 = *a4;
    time2 = v59;
    PC_CMTimeSaferSubtract(&time1, &time2, &v61);
    operator/(&v61.value, &v58, &v63);
    time1 = v63;
    if (CMTimeGetSeconds(&time1))
    {
      CMTimeMake(&v56, 1, 1);
      time1 = v63;
      time2 = v56;
      PC_CMTimeFloorToSampleDuration(&time1, &time2, &v57);
      time1 = v63;
      time2 = v57;
      PC_CMTimeSaferSubtract(&time1, &time2, &v61);
      v63 = v61;
      operator*(&v63.value, &v58, &v57);
      time1 = v60;
      time2 = v57;
      PC_CMTimeSaferSubtract(&time1, &time2, &v61);
    }

    else
    {
      CMTimeMake(&v56, 1, 1);
      time1 = v63;
      time2 = v56;
      PC_CMTimeFloorToSampleDuration(&time1, &time2, &v57);
      time1 = v63;
      time2 = v57;
      PC_CMTimeSaferSubtract(&time1, &time2, &v61);
      v63 = v61;
      operator*(&v63.value, &v58, &v57);
      time1 = v57;
      time2 = v59;
      PC_CMTimeSaferAdd(&time1, &time2, &v61);
    }

    v63 = v61;
    PCMath::clamp(&v63, &v59, &v60, &time1);
    v44 = *&time1.value;
    *&v63.value = *&time1.value;
    epoch = time1.epoch;
    goto LABEL_61;
  }

  if (v23 == 3)
  {
    memset(&v57, 0, sizeof(v57));
    time1 = *a4;
    time2 = v59;
    PC_CMTimeSaferSubtract(&time1, &time2, &v55);
    memset(&v56, 0, sizeof(v56));
    operator/(&v55.value, &v58, &v56);
    CMTimeMake(&v61, 1, 1);
    time1 = v56;
    time2 = v61;
    PC_CMTimeFloorToSampleDuration(&time1, &time2, &v62);
    time1 = v56;
    time2 = v62;
    PC_CMTimeSaferSubtract(&time1, &time2, &v63);
    operator*(&v63.value, &v58, &time1);
    v56 = time1;
    v47 = time1.epoch;
    v48 = *&time1.value;
    time1 = v59;
    *&time2.value = v48;
    time2.epoch = v47;
    v49.n128_f64[0] = PC_CMTimeSaferAdd(&time1, &time2, &v57);
    v22 = (*(*this + 240))(this, &v57, a3, 0, v49);
    goto LABEL_63;
  }

  if (v23 != 4)
  {
    return;
  }

  memset(&v63, 0, sizeof(v63));
  time1 = *a4;
  time2 = v59;
  PC_CMTimeSaferSubtract(&time1, &time2, &v62);
  operator/(&v62.value, &v58, &v63);
  time1 = v63;
  v24 = CMTimeGetSeconds(&time1);
  CMTimeMake(&v61, v24, 1);
  time1 = v63;
  time2 = v61;
  PC_CMTimeSaferSubtract(&time1, &time2, &v62);
  v63 = v62;
  operator*(&v63.value, &v58, &v61);
  time1 = v61;
  time2 = v59;
  PC_CMTimeSaferAdd(&time1, &time2, &v62);
  v63 = v62;
  v25 = v24;
  v26 = (*(*a2 + 24))(a2, a3);
  v27 = (v26 - (*(*this + 240))(this, &v59, MEMORY[0x277CC08F0], 0)) * v25;
  (*(*this + 240))(this, &v63, a3, 0);
LABEL_36:
  v22 = v27 + v28;
LABEL_63:
  *a5 = v22;
}

void OZSpline::interpolate(OZSpline *this, const CMTime *a2, void *a3, void *a4, const CMTime *a5, double *a6, uint64_t a7)
{
  v14 = *(this + 20);
  if (!v14 || (Interpolator = *(v14 + 40)) == 0 || !(*(*Interpolator + 112))(Interpolator, this, a3))
  {
    v16 = (*(*a3 + 208))(a3);
    Interpolator = OZInterpolators::getInterpolator(*(this + 19), v16);
    if ((*(*Interpolator + 88))(Interpolator, this))
    {
      (*(*Interpolator + 16))(Interpolator, this, a2);
    }
  }

  *a6 = (*(*Interpolator + 24))(Interpolator, this, a2, a3, a4, a5, **(this + 21), a7);
}

double OZSpline::getDerivativeValue(OZSpline *this, const CMTime *a2, const CMTime *a3, int a4)
{
  v25 = 0.0;
  v26 = 0;
  if (a4)
  {
    v8 = *(this + 20);
    if (!v8 || (v9 = *(v8 + 48)) == 0)
    {
      v9 = (this + 8);
    }

    PCSpinLock::lock(v9);
    if (*(this + 2) == *(this + 3))
    {
      v10 = *(this + 20);
      if (!v10 || (v11 = *(v10 + 48)) == 0)
      {
        v11 = (this + 8);
      }

      PCSpinLock::unlock(v11);
      return 0.0;
    }
  }

  else if (*(this + 2) == *(this + 3))
  {
    return 0.0;
  }

  OZSpline::getMinValueU(this, MEMORY[0x277CC08F0], 0, &v24);
  time1 = *a2;
  time2 = v24;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    return 0.0;
  }

  memset(&v24, 0, sizeof(v24));
  OZSpline::getMaxValueU(this, MEMORY[0x277CC08F0], 0, &v24);
  time1 = *a2;
  time2 = v24;
  v12 = CMTimeCompare(&time1, &time2);
  result = 0.0;
  if (v12 <= 0)
  {
    v14 = *(this + 5);
    v23 = v14;
    v15 = *(this + 17);
    if (v15 < (*(this + 3) - *(this + 2)) >> 3)
    {
      v14 += v15;
      v23 = v14;
    }

    v16 = *(*v14 + 1);
    v21 = *(*v14 + 4);
    time1 = *a2;
    *&time2.value = v16;
    time2.epoch = v21;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *(this + 17) = 0;
      v14 = *(this + 5);
      v23 = v14;
    }

    if (v14 == *(this + 6))
    {
      v17 = *(this + 17);
    }

    else
    {
      while (1)
      {
        v22 = *(*v14 + 4);
        *&time1.value = *(*v14 + 1);
        time1.epoch = v22;
        time2 = *a2;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0 && (*(**v14 + 136))(*v14, a3) && OZSpline::getPreviousValidVertex(this, &v23, &v26, a3) && *v14)
        {
          break;
        }

        v23 = ++v14;
        v17 = *(this + 17) + 1;
        *(this + 17) = v17;
        if (v14 == *(this + 6))
        {
          goto LABEL_27;
        }
      }

      OZSpline::interpolate(this, a3, v26, *v14, a2, &v25, 1);
      v17 = *(this + 17) + 1;
    }

LABEL_27:
    if (v17 <= 0)
    {
      v18 = 0;
    }

    else
    {
      v18 = v17 - 1;
    }

    *(this + 17) = v18;
    if (a4)
    {
      v19 = *(this + 20);
      if (!v19 || (v20 = *(v19 + 48)) == 0)
      {
        v20 = (this + 8);
      }

      PCSpinLock::unlock(v20);
    }

    return v25;
  }

  return result;
}

void *OZSpline::reserveMemoryForKeypoints(void *this, int a2)
{
  if (a2)
  {
    return std::vector<OZVertex *>::reserve(this + 2, a2);
  }

  return this;
}

uint64_t OZSpline::sampleSpline(OZSpline *this, const CMTime *a2, CMTime *a3, int32_t *a4, CMTime *a5, double *a6, const CMTime *a7, char a8)
{
  v59 = 0;
  v16 = *(this + 20);
  if (!v16 || (v17 = *(v16 + 48)) == 0)
  {
    v17 = (this + 8);
  }

  PCSpinLock::lock(v17);
  (*(*this + 16))(this, &v59, 0, 0);
  if (**(this + 21) == 1)
  {
    Interpolator = OZInterpolators::getInterpolator(*(this + 19), v59);
    if (((*(*Interpolator + 64))(Interpolator) & 1) == 0)
    {
      memset(&v58, 0, sizeof(v58));
      operator*(a3, *a4, &v58);
      memset(&v57, 0, sizeof(v57));
      time1 = *a2;
      time2 = v58;
      PC_CMTimeSaferAdd(&time1, &time2, &v57);
      v24 = OZInterpolators::getInterpolator(*(this + 19), v59);
      (*(*v24 + 72))(&time1);
      v57 = time1;
      memset(&v56, 0, sizeof(v56));
      v25 = OZInterpolators::getInterpolator(*(this + 19), v59);
      (*(*v25 + 80))(&v56);
      memset(&time, 0, sizeof(time));
      time1 = v57;
      time2 = v56;
      PC_CMTimeSaferSubtract(&time1, &time2, &v54);
      operator*(&v54, &time, 1.0 / (*a4 - 1));
      if (*a4)
      {
        v26 = 0;
        do
        {
          operator*(&time, v26, &time1);
          v58 = time1;
          if (a6)
          {
            v28 = *(this + 2);
            v27 = *(this + 3);
            if (v28 == v27)
            {
              v29 = 0;
              v30 = 0;
            }

            else
            {
              v29 = *v28;
              v30 = *(v27 - 1);
            }

            time1 = v56;
            time2 = v58;
            PC_CMTimeSaferAdd(&time1, &time2, &v54);
            OZSpline::interpolate(this, a7, v29, v30, &v54, a6++, 0);
          }

          if (a5)
          {
            time1 = v56;
            time2 = v58;
            PC_CMTimeSaferAdd(&time1, &time2, &v54);
            v31 = *&v54.value;
            a5->epoch = v54.epoch;
            *&a5->value = v31;
            ++a5;
          }

          ++v26;
        }

        while (v26 < *a4);
      }

      goto LABEL_75;
    }
  }

  if ((a8 & 1) == 0)
  {
    if (*a4)
    {
      v21 = 0;
      do
      {
        memset(&v58, 0, sizeof(v58));
        operator*(a3, v21, &v58);
        if (a6)
        {
          time1 = *a2;
          time2 = v58;
          v22 = PC_CMTimeSaferAdd(&time1, &time2, &v57);
          *a6++ = (*(*this + 240))(this, &v57, a7, 0, v22);
        }

        if (a5)
        {
          time1 = *a2;
          time2 = v58;
          PC_CMTimeSaferAdd(&time1, &time2, &v57);
          v23 = *&v57.value;
          a5->epoch = v57.epoch;
          *&a5->value = v23;
          ++a5;
        }

        ++v21;
      }

      while (v21 < *a4);
    }

    goto LABEL_75;
  }

  if (OZSpline::getNumberOfValidVertices(this, a7) > 1)
  {
    v52 = 0;
    v53 = 0;
    v58 = *a2;
    v57 = v58;
    v51 = a4;
    operator*(a3, *a4, &time);
    time1 = *a2;
    time2 = time;
    PC_CMTimeSaferAdd(&time1, &time2, &v56);
    time1 = v57;
    time2 = v56;
    v32 = 0;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
LABEL_74:
      *v51 = v32;
      goto LABEL_75;
    }

    v33 = MEMORY[0x277CC08F0];
    while (1)
    {
      if (!OZSpline::getNextValidVertex(this, &v58, &v52, v33, 0) || (v34 = *(v52 + 1), v57.epoch = *(v52 + 4), *&v57.value = v34, *&time1.value = v34, time1.epoch = v57.epoch, time2 = v56, CMTimeCompare(&time1, &time2) >= 1) && (time1 = v57, time2 = v56, PC_CMTimeSaferSubtract(&time1, &time2, &time), time1 = time, time2 = *a3, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0))
      {
        v57 = v56;
      }

      if (!OZSpline::getVertexHandle(this, &v58, &v53, 0) && !OZSpline::getPreviousValidVertex(this, &v58, &v53, v33, 0))
      {
        break;
      }

      if (!v52)
      {
        v39 = *(*(this + 21) + 36);
LABEL_54:
        if (v39 < 2)
        {
          goto LABEL_55;
        }

        goto LABEL_66;
      }

      time1.value = 0;
      time2.value = 0;
      time.value = 0;
      v54.value = 0;
      (*(*this + 128))(this, v52, &time1, &time2, v33, 0);
      (*(*this + 136))(this, v53, &time, &v54, v33, 0);
      v35 = *&time1.value;
      v36 = *&time2.value;
      v37 = *&time.value;
      v38 = *&v54.value;
      if ((*(*v53 + 208))(v53) == 1 || (*(*v53 + 208))(v53) == 4 && fabs(v35) < 0.0000001 && fabs(v36) < 0.0000001 && fabs(v37) < 0.0000001 && fabs(v38) < 0.0000001)
      {
LABEL_55:
        if (a6)
        {
          if (!v32)
          {
            *a6++ = (*(*this + 240))(this, &v58, a7, 0);
          }

          *a6++ = (*(*this + 240))(this, &v57, a7, 0);
        }

        if (a5)
        {
          if (!v32)
          {
            v40 = *&v58.value;
            a5->epoch = v58.epoch;
            *&a5->value = v40;
            ++a5;
          }

          v41 = *&v57.value;
          a5->epoch = v57.epoch;
          *&a5->value = v41;
          ++a5;
        }

        if (v32)
        {
          v42 = 1;
        }

        else
        {
          v42 = 2;
        }

        goto LABEL_73;
      }

LABEL_66:
      time1 = v57;
      time2 = v58;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      Seconds = CMTimeGetSeconds(&time);
      time1 = *a3;
      v44 = (Seconds / CMTimeGetSeconds(&time1));
      v45 = v32 != 0;
      v42 = v44 - v45;
      if (v44 > v45)
      {
        do
        {
          memset(&time, 0, sizeof(time));
          operator*(a3, v45, &time);
          if (a6)
          {
            time1 = v58;
            time2 = time;
            v46 = PC_CMTimeSaferAdd(&time1, &time2, &v54);
            *a6++ = (*(*this + 240))(this, &v54, a7, 0, v46);
          }

          if (a5)
          {
            time1 = v58;
            time2 = time;
            PC_CMTimeSaferAdd(&time1, &time2, &v54);
            v47 = *&v54.value;
            a5->epoch = v54.epoch;
            *&a5->value = v47;
            ++a5;
          }

          ++v45;
        }

        while (v44 != v45);
      }

      v33 = MEMORY[0x277CC08F0];
LABEL_73:
      v32 += v42;
      v58 = v57;
      time1 = v57;
      time2 = v56;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }

    if (!v52)
    {
      goto LABEL_66;
    }

    v39 = *(*(this + 21) + 40);
    goto LABEL_54;
  }

  if (a6)
  {
    *a6 = (*(*this + 240))(this, a2, a7, 0);
    if (*a4 >= 2)
    {
      operator*(a3, *a4 - 1, &v57);
      time1 = *a2;
      time2 = v57;
      v19 = PC_CMTimeSaferAdd(&time1, &time2, &v58);
      a6[1] = (*(*this + 240))(this, &v58, a7, 0, v19);
    }
  }

  if (a5)
  {
    v20 = *&a2->value;
    a5->epoch = a2->epoch;
    *&a5->value = v20;
    if (*a4 < 2)
    {
      goto LABEL_75;
    }

    operator*(a3, *a4 - 1, &v57);
    time1 = *a2;
    time2 = v57;
    PC_CMTimeSaferAdd(&time1, &time2, &v58);
    a5[1] = v58;
  }

  if (*a4 >= 2)
  {
    *a4 = 2;
  }

LABEL_75:
  v48 = *(this + 20);
  if (!v48 || (v49 = *(v48 + 48)) == 0)
  {
    v49 = (this + 8);
  }

  PCSpinLock::unlock(v49);
  return 1;
}

uint64_t OZSpline::sampleSplineDerivatives(OZSpline *this, const CMTime *a2, CMTime *a3, unsigned int *a4, CMTime *a5, double *a6, const CMTime *a7)
{
  v25 = 0;
  v14 = *(this + 20);
  if (!v14 || (v15 = *(v14 + 48)) == 0)
  {
    v15 = (this + 8);
  }

  PCSpinLock::lock(v15);
  (*(*this + 16))(this, &v25, 0, 0);
  if (*a4)
  {
    v16 = 0;
    do
    {
      memset(&v24, 0, sizeof(v24));
      operator*(a3, v16, &v24);
      if (a6)
      {
        v27 = *a2;
        v26 = v24;
        v17 = PC_CMTimeSaferAdd(&v27, &v26, &v22);
        *a6++ = (*(*this + 248))(this, &v22, a7, 0, v17);
      }

      if (a5)
      {
        v27 = *a2;
        v26 = v24;
        PC_CMTimeSaferAdd(&v27, &v26, &v22);
        v18 = v22;
        a5->epoch = v23;
        *&a5->value = v18;
        ++a5;
      }

      ++v16;
    }

    while (v16 < *a4);
  }

  v19 = *(this + 20);
  if (!v19 || (v20 = *(v19 + 48)) == 0)
  {
    v20 = (this + 8);
  }

  PCSpinLock::unlock(v20);
  return 1;
}

uint64_t OZSpline::sampleSplineDerivatives(os_unfair_lock_s *a1, CMTime *a2, CMTime *a3, unsigned int *a4, uint64_t a5, const void **a6, uint64_t a7)
{
  v23 = 0;
  v14 = *&a1[40]._os_unfair_lock_opaque;
  if (!v14 || (v15 = *(v14 + 48)) == 0)
  {
    v15 = a1 + 2;
  }

  PCSpinLock::lock(v15);
  (*(*&a1->_os_unfair_lock_opaque + 16))(a1, &v23, 0, 0);
  if (*a4)
  {
    v16 = 0;
    do
    {
      memset(&v22, 0, sizeof(v22));
      operator*(a3, v16, &v22);
      if (a6)
      {
        v25 = *a2;
        v24 = v22;
        v17 = PC_CMTimeSaferAdd(&v25, &v24, &v21);
        v25.value = (*(*&a1->_os_unfair_lock_opaque + 248))(a1, &v21, a7, 0, v17);
        std::vector<double>::push_back[abi:ne200100](a6, &v25);
      }

      if (a5)
      {
        v25 = *a2;
        v24 = v22;
        PC_CMTimeSaferAdd(&v25, &v24, &v21);
        std::vector<CMTime>::push_back[abi:ne200100](a5, &v21);
      }

      ++v16;
    }

    while (v16 < *a4);
  }

  v18 = *&a1[40]._os_unfair_lock_opaque;
  if (!v18 || (v19 = *(v18 + 48)) == 0)
  {
    v19 = a1 + 2;
  }

  PCSpinLock::unlock(v19);
  return 1;
}

BOOL OZSpline::sampleSplineSegments(os_unfair_lock_s *a1, CMTime *a2, CMTime *a3, CMTime *a4, void *a5, uint64_t a6)
{
  v40 = 0;
  v12 = *&a1[40]._os_unfair_lock_opaque;
  if (!v12 || (v13 = *(v12 + 48)) == 0)
  {
    v13 = a1 + 2;
  }

  PCSpinLock::lock(v13);
  a5[1] = *a5;
  *(a6 + 8) = *a6;
  (*(*&a1->_os_unfair_lock_opaque + 16))(a1, &v40, 0, 0);
  time1 = *a3;
  time2 = *a2;
  v14 = CMTimeCompare(&time1, &time2);
  if ((v14 & 0x80000000) == 0)
  {
    time1 = *a2;
    time2 = *a3;
    if (!CMTimeCompare(&time1, &time2) || (time1 = *a4, time2 = **&MEMORY[0x277CC08F0], CMTimeCompare(&time1, &time2) <= 0))
    {
      std::vector<CMTime>::push_back[abi:ne200100](a5, &a2->value);
      time1.value = (*(*&a1->_os_unfair_lock_opaque + 240))(a1, a2, MEMORY[0x277CC08F0], 0);
      std::vector<double>::push_back[abi:ne200100](a6, &time1);
      return v14 >= 0;
    }

    if (**&a1[42]._os_unfair_lock_opaque == 1)
    {
      Interpolator = OZInterpolators::getInterpolator(*&a1[38]._os_unfair_lock_opaque, v40);
      if (((*(*Interpolator + 64))(Interpolator) & 1) == 0)
      {
        time1 = *a3;
        time2 = *a2;
        PC_CMTimeSaferSubtract(&time1, &time2, &v39);
        Seconds = CMTimeGetSeconds(&v39);
        time1 = *a4;
        LODWORD(time1.value) = (Seconds / CMTimeGetSeconds(&time1));
        (*(*&a1->_os_unfair_lock_opaque + 48))(a1, a2, a4, &time1, a5, a6, MEMORY[0x277CC08F0], 0);
LABEL_53:
        v31 = *&a1[40]._os_unfair_lock_opaque;
        if (!v31 || (v32 = *(v31 + 48)) == 0)
        {
          v32 = a1 + 2;
        }

        PCSpinLock::unlock(v32);
        return v14 >= 0;
      }
    }

    if (OZSpline::getNumberOfValidVertices(a1, MEMORY[0x277CC08F0]) <= 1)
    {
      time1.value = (*(*&a1->_os_unfair_lock_opaque + 240))(a1, a2, MEMORY[0x277CC08F0], 0);
      std::vector<double>::push_back[abi:ne200100](a6, &time1);
      time1 = *a2;
      time2 = *a3;
      if (CMTimeCompare(&time1, &time2))
      {
        time1.value = (*(*&a1->_os_unfair_lock_opaque + 240))(a1, a3, MEMORY[0x277CC08F0], 0);
        std::vector<double>::push_back[abi:ne200100](a6, &time1);
      }

      std::vector<CMTime>::push_back[abi:ne200100](a5, &a2->value);
      time1 = *a2;
      time2 = *a3;
      if (!CMTimeCompare(&time1, &time2))
      {
        goto LABEL_53;
      }

LABEL_51:
      std::vector<CMTime>::push_back[abi:ne200100](a5, &a3->value);
      goto LABEL_53;
    }

    v37 = 0;
    v38 = 0;
    v39 = *a2;
    v36 = v39;
    time1 = *a2;
    time2 = *a3;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
LABEL_48:
      v29 = a5[1];
      if (v29 == *a5 || PCMath::equal((v29 - 24), a3, MEMORY[0x277CC08F0], v16))
      {
        goto LABEL_53;
      }

      time1.value = (*(*&a1->_os_unfair_lock_opaque + 240))(a1, a3, MEMORY[0x277CC08F0], 0);
      std::vector<double>::push_back[abi:ne200100](a6, &time1);
      goto LABEL_51;
    }

    v17 = MEMORY[0x277CC08F0];
    while (1)
    {
      if (!OZSpline::getNextValidVertex(a1, &v39, &v37, v17, 0) || (v18 = *(v37 + 1), v36.epoch = *(v37 + 4), *&v36.value = v18, *&time1.value = v18, time1.epoch = v36.epoch, time2 = *a3, CMTimeCompare(&time1, &time2) >= 1))
      {
        v36 = *a3;
      }

      if (!OZSpline::getVertexHandle(a1, &v39, &v38, 0) && !OZSpline::getPreviousValidVertex(a1, &v39, &v38, v17, 0))
      {
        break;
      }

      if (!v37)
      {
        v20 = *(*&a1[42]._os_unfair_lock_opaque + 36);
LABEL_33:
        if (v20 < 2)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }

      if ((*(*v38 + 208))(v38) == 1 || (*(*v38 + 208))(v38) == 4 && (time1.value = 0, time2.value = 0, time.value = 0, *&v34 = 0, (*(*v37 + 56))(v37, &time1, &time, v17), (*(*v38 + 64))(v38, &time2, &v34, v17), fabs(*&time1.value) < 0.0000001) && fabs(*&time2.value) < 0.0000001 && fabs(*&time.value) < 0.0000001 && fabs(*&v34) < 0.0000001)
      {
LABEL_34:
        v21 = a5[1];
        if (v21 == *a5 || !PCMath::equal((v21 - 24), &v39, v17, v19))
        {
          time1.value = (*(*&a1->_os_unfair_lock_opaque + 240))(a1, &v39, v17, 0);
          std::vector<double>::push_back[abi:ne200100](a6, &time1);
          std::vector<CMTime>::push_back[abi:ne200100](a5, &v39.value);
        }

        time1.value = (*(*&a1->_os_unfair_lock_opaque + 240))(a1, &v36, v17, 0);
        std::vector<double>::push_back[abi:ne200100](a6, &time1);
        std::vector<CMTime>::push_back[abi:ne200100](a5, &v36.value);
        goto LABEL_47;
      }

LABEL_38:
      time1 = v36;
      time2 = v39;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      v22 = CMTimeGetSeconds(&time);
      time1 = *a4;
      v23 = (v22 / CMTimeGetSeconds(&time1));
      if ((v23 & 0x80000000) == 0)
      {
        v24 = 0;
        v25 = v23 + 1;
        do
        {
          memset(&time, 0, sizeof(time));
          operator*(a4, v24, &time);
          if (v24 || (v28 = a5[1], v28 == *a5) || !PCMath::equal((v28 - 24), &v39, v17, v26))
          {
            time1 = v39;
            time2 = time;
            v27 = PC_CMTimeSaferAdd(&time1, &time2, &v34);
            time1.value = (*(*&a1->_os_unfair_lock_opaque + 240))(a1, &v34, v17, 0, v27);
            std::vector<double>::push_back[abi:ne200100](a6, &time1);
            time1 = v39;
            time2 = time;
            PC_CMTimeSaferAdd(&time1, &time2, &v34);
            std::vector<CMTime>::push_back[abi:ne200100](a5, &v34);
          }

          ++v24;
        }

        while (v25 != v24);
      }

LABEL_47:
      v39 = v36;
      time1 = v36;
      time2 = *a3;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }
    }

    if (!v37)
    {
      goto LABEL_38;
    }

    v20 = *(*&a1[42]._os_unfair_lock_opaque + 40);
    goto LABEL_33;
  }

  return v14 >= 0;
}

uint64_t OZSpline::sampleSpline(uint64_t a1, CMTime *a2, CMTime *a3, int32_t *a4, uint64_t a5, uint64_t a6, const CMTime *a7, char a8)
{
  v58 = 0;
  v16 = *(a1 + 160);
  if (!v16 || (v17 = *(v16 + 48)) == 0)
  {
    v17 = (a1 + 8);
  }

  PCSpinLock::lock(v17);
  (*(*a1 + 16))(a1, &v58, 0, 0);
  if (**(a1 + 168) == 1)
  {
    Interpolator = OZInterpolators::getInterpolator(*(a1 + 152), v58);
    if (((*(*Interpolator + 64))(Interpolator) & 1) == 0)
    {
      memset(&v57, 0, sizeof(v57));
      operator*(a3, *a4, &v57);
      memset(&v56, 0, sizeof(v56));
      time1 = *a2;
      time2 = v57;
      PC_CMTimeSaferAdd(&time1, &time2, &v56);
      v22 = OZInterpolators::getInterpolator(*(a1 + 152), v58);
      (*(*v22 + 72))(&time1);
      v56 = time1;
      memset(&v55, 0, sizeof(v55));
      v23 = OZInterpolators::getInterpolator(*(a1 + 152), v58);
      (*(*v23 + 80))(&v55);
      memset(&time, 0, sizeof(time));
      time1 = v56;
      time2 = v55;
      PC_CMTimeSaferSubtract(&time1, &time2, &v53);
      operator*(&v53, &time, 1.0 / (*a4 - 1));
      if (*a4)
      {
        v24 = 0;
        do
        {
          operator*(&time, v24, &time1);
          v57 = time1;
          if (a6)
          {
            v26 = *(a1 + 16);
            v25 = *(a1 + 24);
            if (v26 == v25)
            {
              v27 = 0;
              v28 = 0;
            }

            else
            {
              v27 = *v26;
              v28 = *(v25 - 1);
            }

            v52 = 0;
            time1 = v55;
            time2 = v57;
            PC_CMTimeSaferAdd(&time1, &time2, &v53);
            OZSpline::interpolate(a1, a7, v27, v28, &v53, &v52, 0);
            v30 = *(a6 + 8);
            v29 = *(a6 + 16);
            if (v30 >= v29)
            {
              v32 = *a6;
              v33 = v30 - *a6;
              v34 = v33 >> 3;
              v35 = (v33 >> 3) + 1;
              if (v35 >> 61)
              {
                std::vector<double>::__throw_length_error[abi:ne200100]();
              }

              v36 = v29 - v32;
              if (v36 >> 2 > v35)
              {
                v35 = v36 >> 2;
              }

              v37 = v36 >= 0x7FFFFFFFFFFFFFF8;
              v38 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v37)
              {
                v38 = v35;
              }

              if (v38)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a6, v38);
              }

              *(8 * v34) = v52;
              v31 = 8 * v34 + 8;
              memcpy(0, v32, v33);
              v39 = *a6;
              *a6 = 0;
              *(a6 + 8) = v31;
              *(a6 + 16) = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v30 = v52;
              v31 = (v30 + 1);
            }

            *(a6 + 8) = v31;
          }

          if (a5)
          {
            time1 = v55;
            time2 = v57;
            PC_CMTimeSaferAdd(&time1, &time2, &v53);
            std::vector<CMTime>::push_back[abi:ne200100](a5, &v53.value);
          }

          ++v24;
        }

        while (v24 < *a4);
      }

      goto LABEL_75;
    }
  }

  if ((a8 & 1) == 0)
  {
    if (*a4)
    {
      v20 = 0;
      do
      {
        memset(&v57, 0, sizeof(v57));
        operator*(a3, v20, &v57);
        if (a6)
        {
          time1 = *a2;
          time2 = v57;
          v21 = PC_CMTimeSaferAdd(&time1, &time2, &v56);
          time1.value = (*(*a1 + 240))(a1, &v56, a7, 0, v21);
          std::vector<double>::push_back[abi:ne200100](a6, &time1);
        }

        if (a5)
        {
          time1 = *a2;
          time2 = v57;
          PC_CMTimeSaferAdd(&time1, &time2, &v56);
          std::vector<CMTime>::push_back[abi:ne200100](a5, &v56.value);
        }

        ++v20;
      }

      while (v20 < *a4);
    }

    goto LABEL_75;
  }

  if (OZSpline::getNumberOfValidVertices(a1, a7) > 1)
  {
    v51 = 0;
    v52 = 0;
    v57 = *a2;
    v56 = v57;
    operator*(a3, *a4 - 1, &time);
    time1 = *a2;
    time2 = time;
    PC_CMTimeSaferAdd(&time1, &time2, &v55);
    time1 = v56;
    time2 = v55;
    v40 = 0;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
LABEL_74:
      *a4 = v40;
      goto LABEL_75;
    }

    v41 = MEMORY[0x277CC08F0];
    while (1)
    {
      if (!OZSpline::getNextValidVertex(a1, &v57, &v51, v41, 0) || (v42 = *(v51 + 1), v56.epoch = *(v51 + 4), *&v56.value = v42, *&time1.value = v42, time1.epoch = v56.epoch, time2 = v55, CMTimeCompare(&time1, &time2) >= 1))
      {
        v56 = v55;
      }

      if (OZSpline::getVertexHandle(a1, &v57, &v52, 0) || OZSpline::getPreviousValidVertex(a1, &v57, &v52, v41, 0))
      {
        if (v51)
        {
          if ((*(*v52 + 208))(v52) == 1)
          {
            goto LABEL_60;
          }

          if (v51)
          {
            goto LABEL_65;
          }
        }

        v43 = *(*(a1 + 168) + 36);
      }

      else
      {
        if (!v51)
        {
          goto LABEL_65;
        }

        v43 = *(*(a1 + 168) + 40);
      }

      if (v43 >= 2)
      {
LABEL_65:
        time1 = v56;
        time2 = v57;
        PC_CMTimeSaferSubtract(&time1, &time2, &time);
        Seconds = CMTimeGetSeconds(&time);
        time1 = *a3;
        v44 = (Seconds / CMTimeGetSeconds(&time1));
        if (v44)
        {
          for (i = 0; i != v44; ++i)
          {
            memset(&time, 0, sizeof(time));
            operator*(a3, i, &time);
            if (a6)
            {
              time1 = v57;
              time2 = time;
              v47 = PC_CMTimeSaferAdd(&time1, &time2, &v53);
              time1.value = (*(*a1 + 240))(a1, &v53, a7, 0, v47);
              std::vector<double>::push_back[abi:ne200100](a6, &time1);
            }

            if (a5)
            {
              time1 = v57;
              time2 = time;
              PC_CMTimeSaferAdd(&time1, &time2, &v53);
              std::vector<CMTime>::push_back[abi:ne200100](a5, &v53.value);
            }
          }

          v41 = MEMORY[0x277CC08F0];
        }

        goto LABEL_73;
      }

LABEL_60:
      if (a6)
      {
        time1.value = (*(*a1 + 240))(a1, &v57, a7, 0);
        std::vector<double>::push_back[abi:ne200100](a6, &time1);
        time1.value = (*(*a1 + 240))(a1, &v56, a7, 0);
        std::vector<double>::push_back[abi:ne200100](a6, &time1);
      }

      if (a5)
      {
        std::vector<CMTime>::push_back[abi:ne200100](a5, &v57.value);
        std::vector<CMTime>::push_back[abi:ne200100](a5, &v56.value);
      }

      v44 = 2;
LABEL_73:
      v40 += v44;
      v57 = v56;
      time1 = v56;
      time2 = v55;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        goto LABEL_74;
      }
    }
  }

  if (a6)
  {
    time1.value = (*(*a1 + 240))(a1, a2, a7, 0);
    std::vector<double>::push_back[abi:ne200100](a6, &time1);
    if (*a4 >= 2)
    {
      operator*(a3, *a4 - 1, &v56);
      time1 = *a2;
      time2 = v56;
      v19 = PC_CMTimeSaferAdd(&time1, &time2, &v57);
      time1.value = (*(*a1 + 240))(a1, &v57, a7, 0, v19);
      std::vector<double>::push_back[abi:ne200100](a6, &time1);
    }
  }

  if (a5)
  {
    std::vector<CMTime>::push_back[abi:ne200100](a5, &a2->value);
    if (*a4 < 2)
    {
      goto LABEL_75;
    }

    operator*(a3, *a4 - 1, &v56);
    time1 = *a2;
    time2 = v56;
    PC_CMTimeSaferAdd(&time1, &time2, &v57);
    std::vector<CMTime>::push_back[abi:ne200100](a5, &v57.value);
  }

  if (*a4 >= 2)
  {
    *a4 = 2;
  }

LABEL_75:
  v48 = *(a1 + 160);
  if (!v48 || (v49 = *(v48 + 48)) == 0)
  {
    v49 = (a1 + 8);
  }

  PCSpinLock::unlock(v49);
  return 1;
}

uint64_t OZSpline::sampleSplineSegment(OZSpline *this, const CMTime *a2, CMTime *a3, unsigned int *a4, CMTime *a5, double *a6, const CMTime *a7, int a8)
{
  v35 = 0;
  if (a8)
  {
    v15 = *(this + 20);
    if (!v15 || (v16 = *(v15 + 48)) == 0)
    {
      v16 = (this + 8);
    }

    PCSpinLock::lock(v16);
  }

  (*(*this + 16))(this, &v35, 0, 0);
  if (**(this + 21) == 1 && (Interpolator = OZInterpolators::getInterpolator(*(this + 19), v35), ((*(*Interpolator + 64))(Interpolator) & 1) == 0))
  {
    v22 = *(this + 2);
    v21 = *(this + 3);
    if (v22 == v21)
    {
      v31 = 0;
      v23 = 0;
    }

    else
    {
      v31 = *v22;
      v23 = *(v21 - 1);
    }

    if (*a4)
    {
      v24 = 0;
      if (v31)
      {
        v25 = v23 == 0;
      }

      else
      {
        v25 = 1;
      }

      v26 = !v25;
      do
      {
        memset(&v34, 0, sizeof(v34));
        operator*(a3, v24, &v34);
        if (a6)
        {
          if (v26)
          {
            v37 = *a2;
            v36 = v34;
            PC_CMTimeSaferAdd(&v37, &v36, &v33);
            OZSpline::interpolate(this, a7, v31, v23, &v33, a6, 0);
          }

          ++a6;
        }

        if (a5)
        {
          v37 = *a2;
          v36 = v34;
          PC_CMTimeSaferAdd(&v37, &v36, &v33);
          v27 = *&v33.value;
          a5->epoch = v33.epoch;
          *&a5->value = v27;
          ++a5;
        }

        ++v24;
      }

      while (v24 < *a4);
    }
  }

  else if (*a4)
  {
    v18 = 0;
    do
    {
      memset(&v34, 0, sizeof(v34));
      operator*(a3, v18, &v34);
      if (a6)
      {
        v37 = *a2;
        v36 = v34;
        v19 = PC_CMTimeSaferAdd(&v37, &v36, &v33);
        *a6++ = (*(*this + 240))(this, &v33, a7, 0, v19);
      }

      if (a5)
      {
        v37 = *a2;
        v36 = v34;
        PC_CMTimeSaferAdd(&v37, &v36, &v33);
        v20 = *&v33.value;
        a5->epoch = v33.epoch;
        *&a5->value = v20;
        ++a5;
      }

      ++v18;
    }

    while (v18 < *a4);
  }

  if (a8)
  {
    v28 = *(this + 20);
    if (!v28 || (v29 = *(v28 + 48)) == 0)
    {
      v29 = (this + 8);
    }

    PCSpinLock::unlock(v29);
  }

  return 1;
}

uint64_t OZSpline::getVertex(OZSpline *this, const CMTime *a2, double *a3, const CMTime *a4)
{
  v4 = *(this + 5);
  if (*(this + 6) == v4)
  {
    return 0;
  }

  while (1)
  {
    v11 = *(*v4 + 32);
    *&time1.value = *(*v4 + 16);
    time1.epoch = v11;
    time2 = *a2;
    v9 = CMTimeCompare(&time1, &time2);
    if (a3)
    {
      if (!v9)
      {
        break;
      }
    }

    if (++v4 == *(this + 6))
    {
      return 0;
    }
  }

  *a3 = (*(**v4 + 24))(*v4, a4);
  return 1;
}

uint64_t OZSpline::getAllVerticesHandles(os_unfair_lock_s *a1, uint64_t a2)
{
  v4 = *&a1[40]._os_unfair_lock_opaque;
  if (!v4 || (v5 = *(v4 + 48)) == 0)
  {
    v5 = a1 + 2;
  }

  PCSpinLock::lock(v5);
  v6 = *&a1[4]._os_unfair_lock_opaque;
  *&v13.value = *MEMORY[0x277CC08F0];
  v13.epoch = *(MEMORY[0x277CC08F0] + 16);
  if (v6 != *&a1[12]._os_unfair_lock_opaque)
  {
    v7 = 0;
    while (1)
    {
      v8 = *v6;
      *&v12.value = *(*v6 + 16);
      v12.epoch = *(*v6 + 32);
      if (!v7)
      {
        goto LABEL_9;
      }

      time1 = v13;
      time2 = v12;
      if (CMTimeCompare(&time1, &time2))
      {
        break;
      }

LABEL_10:
      ++v6;
      v7 -= 8;
      if (v6 == *&a1[12]._os_unfair_lock_opaque)
      {
        goto LABEL_11;
      }
    }

    v8 = *v6;
LABEL_9:
    *&v13.value = *(v8 + 16);
    v13.epoch = *(v8 + 32);
    time1.value = v8;
    std::vector<void *>::push_back[abi:ne200100](a2, &time1);
    goto LABEL_10;
  }

LABEL_11:
  v9 = *&a1[40]._os_unfair_lock_opaque;
  if (!v9 || (v10 = *(v9 + 48)) == 0)
  {
    v10 = a1 + 2;
  }

  PCSpinLock::unlock(v10);
  return 1;
}

void std::vector<void *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t OZSpline::getAllValidVerticesHandles(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3)
{
  v6 = *&a1[40]._os_unfair_lock_opaque;
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = a1 + 2;
  }

  PCSpinLock::lock(v7);
  *&v14.value = *MEMORY[0x277CC08F0];
  v14.epoch = *(MEMORY[0x277CC08F0] + 16);
  v8 = *&a1[10]._os_unfair_lock_opaque;
  if (*&a1[12]._os_unfair_lock_opaque != v8)
  {
    while (1)
    {
      v9 = *v8;
      *&v13.value = *(*v8 + 16);
      v13.epoch = *(*v8 + 32);
      if (v8 == *&a1[10]._os_unfair_lock_opaque)
      {
        goto LABEL_8;
      }

      time1 = v14;
      time2 = v13;
      if (CMTimeCompare(&time1, &time2))
      {
        break;
      }

LABEL_10:
      if (++v8 == *&a1[12]._os_unfair_lock_opaque)
      {
        goto LABEL_11;
      }
    }

    v9 = *v8;
LABEL_8:
    *&v14.value = *&v13.value;
    v14.epoch = v13.epoch;
    if ((*(*v9 + 136))(v9, a3))
    {
      time1.value = *v8;
      std::vector<void *>::push_back[abi:ne200100](a2, &time1);
    }

    goto LABEL_10;
  }

LABEL_11:
  v10 = *&a1[40]._os_unfair_lock_opaque;
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = a1 + 2;
  }

  PCSpinLock::unlock(v11);
  return 1;
}

uint64_t OZSpline::getVerticesTimeAndValue(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *&a1[40]._os_unfair_lock_opaque;
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = a1 + 2;
  }

  PCSpinLock::lock(v11);
  v12 = *(a2 + 16);
  v54 = *a2;
  memset(&v53, 0, sizeof(v53));
  v13 = *(a2 + 32);
  *&range.start.value = *a2;
  *&range.start.epoch = v12;
  *&range.duration.timescale = v13;
  CMTimeRangeGetEnd(&v53, &range);
  if (a4)
  {
    v14 = *&a1[4]._os_unfair_lock_opaque;
    if (v14 == *&a1[6]._os_unfair_lock_opaque)
    {
      *&range.start.value = *MEMORY[0x277CC0898];
      v16 = *(MEMORY[0x277CC0898] + 16);
    }

    else
    {
      v15 = *v14;
      *&range.start.value = *(v15 + 16);
      v16 = *(v15 + 32);
    }

    range.start.epoch = v16;
    *a4 = *&range.start.value;
    *(a4 + 16) = v16;
  }

  if (a5)
  {
    v17 = *&a1[6]._os_unfair_lock_opaque;
    if (*&a1[4]._os_unfair_lock_opaque == v17)
    {
      *&range.start.value = *MEMORY[0x277CC0898];
      v19 = *(MEMORY[0x277CC0898] + 16);
    }

    else
    {
      v18 = *(v17 - 8);
      *&range.start.value = *(v18 + 16);
      v19 = *(v18 + 32);
    }

    range.start.epoch = v19;
    *a5 = *&range.start.value;
    *(a5 + 16) = v19;
  }

  v20 = *&a1[10]._os_unfair_lock_opaque;
  v21 = *&a1[12]._os_unfair_lock_opaque;
  if (v21 != v20)
  {
    v22 = v21 - v20;
    v21 = *&a1[10]._os_unfair_lock_opaque;
    do
    {
      while (1)
      {
        v23 = v22 >> 1;
        v24 = &v21[v22 >> 1];
        v25 = *v24;
        if (*v24)
        {
          break;
        }

        v22 >>= 1;
        if (!v23)
        {
          goto LABEL_25;
        }
      }

      v55 = *(v25 + 16);
      v56 = *(v25 + 32);
      *&range.start.value = v55;
      range.start.epoch = v56;
      time2 = v54;
      v26 = CMTimeCompare(&range.start, &time2);
      if (v26 < 0)
      {
        v22 += ~v23;
      }

      else
      {
        v22 >>= 1;
      }

      if (v26 < 0)
      {
        v21 = v24 + 1;
      }
    }

    while (v22);
LABEL_25:
    v20 = *&a1[10]._os_unfair_lock_opaque;
  }

  if (v21 != v20 && v21 != *&a1[12]._os_unfair_lock_opaque)
  {
    v27 = *v21;
    v55 = *(*v21 + 16);
    v56 = *(v27 + 32);
    *&range.start.value = v55;
    range.start.epoch = v56;
    time2 = v54;
    v28 = CMTimeCompare(&range.start, &time2);
    v29 = -8;
    if (v28 <= 0)
    {
      v29 = 0;
    }

    v21 = (v21 + v29);
  }

  if (v21 != *&a1[12]._os_unfair_lock_opaque)
  {
    v30 = v21 + 1;
    v31 = MEMORY[0x277CC08F0];
    do
    {
      v32 = *(v30 - 1);
      v50 = *(v32 + 16);
      v51 = *(v32 + 32);
      v33 = (*(*v32 + 24))(v32, v31);
      v34 = (*(**(v30 - 1) + 208))(*(v30 - 1));
      v35 = *(a3 + 8);
      v36 = *(a3 + 16);
      if (v35 >= v36)
      {
        v38 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - *a3) >> 3);
        v39 = v38 + 1;
        if (v38 + 1 > 0x666666666666666)
        {
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        v40 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - *a3) >> 3);
        if (2 * v40 > v39)
        {
          v39 = 2 * v40;
        }

        if (v40 >= 0x333333333333333)
        {
          v41 = 0x666666666666666;
        }

        else
        {
          v41 = v39;
        }

        if (v41)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,std::pair<double,unsigned int>>>>(a3, v41);
        }

        v42 = 40 * v38;
        *v42 = v50;
        *(v42 + 16) = v51;
        *(v42 + 24) = v33;
        *(v42 + 32) = v34;
        v37 = 40 * v38 + 40;
        v43 = *(a3 + 8) - *a3;
        v44 = v42 - v43;
        memcpy((v42 - v43), *a3, v43);
        v45 = *a3;
        *a3 = v44;
        *(a3 + 8) = v37;
        *(a3 + 16) = 0;
        if (v45)
        {
          operator delete(v45);
        }
      }

      else
      {
        *v35 = v50;
        *(v35 + 16) = v51;
        *(v35 + 24) = v33;
        *(v35 + 32) = v34;
        v37 = v35 + 40;
      }

      *(a3 + 8) = v37;
      *&range.start.value = v50;
      range.start.epoch = v51;
      time2 = v53;
      v46 = CMTimeCompare(&range.start, &time2);
      if (v30 == *&a1[12]._os_unfair_lock_opaque)
      {
        break;
      }

      ++v30;
    }

    while (v46 < 0);
  }

  v47 = *&a1[40]._os_unfair_lock_opaque;
  if (!v47 || (v48 = *(v47 + 48)) == 0)
  {
    v48 = a1 + 2;
  }

  PCSpinLock::unlock(v48);
  return 1;
}

BOOL OZSpline::getVertex(OZSpline *this, void *a2, CMTime *a3, double *a4, const CMTime *a5)
{
  if (a2)
  {
    if (a3)
    {
      v6 = *(a2 + 1);
      a3->epoch = *(a2 + 4);
      *&a3->value = v6;
    }

    if (a4)
    {
      *a4 = (*(*a2 + 24))(a2, a5);
    }
  }

  return a2 != 0;
}

BOOL OZSpline::setVertexValue(OZSpline *this, void *a2, double a3, const CMTime *a4)
{
  if (a2)
  {
    v8 = *(this + 20);
    if (!v8 || (v9 = *(v8 + 48)) == 0)
    {
      v9 = (this + 8);
    }

    PCSpinLock::lock(v9);
    (*(*a2 + 32))(a2, a4, a3);
    v10 = *(this + 20);
    if (!v10 || (v11 = *(v10 + 48)) == 0)
    {
      v11 = (this + 8);
    }

    PCSpinLock::unlock(v11);
  }

  return a2 != 0;
}

void OZSpline::setAllVerticesValues(OZSpline *this, double a2, const CMTime *a3)
{
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  for (i = *(this + 5); i != *(this + 6); ++i)
  {
    v9 = *i;
    (*(*v9 + 32))(v9, a3, a2);
  }

  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::unlock(v11);
}

BOOL OZSpline::setVertex(OZSpline *this, char *a2, const CMTime *a3, double a4, const CMTime *a5)
{
  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::lock(v11);
  v32 = a2;
  v12 = a2 != 0;
  if (a2)
  {
    time2 = *(a2 + 16);
    time1 = *a3;
    if (!CMTimeCompare(&time1, &time2))
    {
      (*(*a2 + 32))(a2, a5, a4);
      *(this + 145) = 1;
      v20 = *(this + 3);
      *(this + 5) = *(this + 2);
      *(this + 6) = v20;
      OZSpline::refreshValidVerticesList(this);
      v21 = *(this + 20);
      if (!v21 || (v22 = *(v21 + 48)) == 0)
      {
        v22 = (this + 8);
      }

      v12 = 1;
      goto LABEL_33;
    }

    VertexIter = OZSpline::getVertexIter(this, a2);
    v14 = VertexIter;
    v15 = *(this + 2);
    v16 = *(this + 3);
    v17 = v16 - (VertexIter + 1);
    if (v16 != VertexIter + 1)
    {
      memmove(VertexIter, VertexIter + 1, v16 - (VertexIter + 1));
      v15 = *(this + 2);
    }

    *(this + 3) = v14 + v17;
    *(this + 145) = 1;
    *(this + 5) = v15;
    *(this + 6) = v14 + v17;
    OZSpline::refreshValidVerticesList(this);
    (*(*a2 + 16))(a2, a3);
    (*(*a2 + 32))(a2, a5, a4);
    v18 = *(this + 5);
    if (*(this + 6) != v18)
    {
      v19 = *(this + 5);
      while (1)
      {
        v30 = *(*v19 + 32);
        *&v28.value = *(v32 + 1);
        v28.epoch = *(v32 + 4);
        *&time1.value = *(*v19 + 16);
        time1.epoch = v30;
        time2 = v28;
        if (!CMTimeCompare(&time1, &time2))
        {
          break;
        }

        v31 = *(*v19 + 32);
        *&v29.value = *(v32 + 1);
        v29.epoch = *(v32 + 4);
        *&time1.value = *(*v19 + 16);
        time1.epoch = v31;
        time2 = v29;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          std::vector<OZVertex *>::insert(this + 2, v18, &v32);
          *(this + 145) = 1;
          goto LABEL_26;
        }

        ++v19;
        v18 += 8;
        if (v19 == *(this + 6))
        {
          goto LABEL_13;
        }
      }

      if (((*(**v19 + 168))() & 2) == 0)
      {
        (*(**v19 + 32))(*v19, a5, a4);
      }

      if (v32)
      {
        (*(*v32 + 8))(v32);
      }

      v32 = 0;
      *(this + 145) = 1;
      v23 = *(this + 3);
      *(this + 5) = *(this + 2);
      *(this + 6) = v23;
      OZSpline::refreshValidVerticesList(this);
      v24 = *(this + 20);
      if (v24)
      {
        v22 = *(v24 + 48);
        if (v22)
        {
          v12 = 0;
          goto LABEL_33;
        }
      }

      v12 = 0;
      goto LABEL_32;
    }

LABEL_13:
    std::vector<TXTabStop *>::push_back[abi:ne200100](this + 16, &v32);
    *(this + 145) = 1;
LABEL_26:
    v25 = *(this + 3);
    *(this + 5) = *(this + 2);
    *(this + 6) = v25;
    OZSpline::refreshValidVerticesList(this);
    if (*(this + 3) - *(this + 2) == 8)
    {
      (*(*this + 304))(this, v32, MEMORY[0x277CC08F0], 0);
    }
  }

  v26 = *(this + 20);
  if (!v26 || (v22 = *(v26 + 48)) == 0)
  {
LABEL_32:
    v22 = (this + 8);
  }

LABEL_33:
  PCSpinLock::unlock(v22);
  return v12;
}

char *std::vector<OZVertex *>::insert(void *a1, char *__src, char *a3)
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
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<PVLoadedEffectItem *>::emplace_back<PVLoadedEffectItem *>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
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
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_25FEA0C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *OZSpline::moveVertex(OZSpline *this, char *a2, const CMTime *a3, const CMTime *a4, char a5, char a6, int a7)
{
  v50 = **&MEMORY[0x277CC08F0];
  v49 = *a3;
  if (!a2)
  {
    return 0;
  }

  v13 = *(this + 20);
  if (!v13 || (v14 = *(v13 + 48)) == 0)
  {
    v14 = (this + 8);
  }

  PCSpinLock::lock(v14);
  if (((*(*a2 + 168))(a2) & 2) != 0 || (time2 = *(a2 + 16), time1 = v49, !CMTimeCompare(&time1, &time2)) || ((*(*a2 + 136))(a2, a4) & 1) == 0)
  {
    v15 = *(this + 20);
    if (!v15 || (v16 = *(v15 + 48)) == 0)
    {
      v16 = (this + 8);
    }

    PCSpinLock::unlock(v16);
    return 0;
  }

  if (a5)
  {
    v51 = (*(*a2 + 216))(a2);
    (*(*v51 + 16))(v51, &v49);
  }

  else
  {
    v47 = 0;
    v48 = 0;
    v18 = MEMORY[0x277CC08F0];
    OZSpline::getPreviousValidVertex(this, a2, &v48, MEMORY[0x277CC08F0]);
    OZSpline::getNextValidVertex(this, a2, &v47, v18);
    v51 = a2;
    v50 = *(a2 + 16);
    (*(*a2 + 16))(a2, &v49);
    VertexIter = OZSpline::getVertexIter(this, a2);
    v20 = VertexIter;
    v21 = *(this + 3);
    v22 = v21 - (VertexIter + 1);
    if (v21 != VertexIter + 1)
    {
      memmove(VertexIter, VertexIter + 1, v21 - (VertexIter + 1));
    }

    v23 = *(this + 2);
    *(this + 3) = v20 + v22;
    *(this + 145) = 1;
    *(this + 5) = v23;
    *(this + 6) = v20 + v22;
    OZSpline::refreshValidVerticesList(this);
    if (!v48 || (v46 = *(v48 + 16), time1 = v49, time2 = v46, CMTimeCompare(&time1, &time2) >= 1))
    {
      if (!v47)
      {
        goto LABEL_30;
      }

      v24 = *(v47 + 1);
      v43 = *(v47 + 4);
      time1 = v49;
      *&time2.value = v24;
      time2.epoch = v43;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        goto LABEL_30;
      }
    }

    if (a7)
    {
      if (v48 && (v46 = *(v48 + 16), time1 = v49, time2 = v46, CMTimeCompare(&time1, &time2) <= 0))
      {
        v38 = *(v48 + 4);
        v39 = *(this + 21);
        v40 = *(v39 + 8);
        v42 = *(v39 + 24);
        *&time1.value = *(v48 + 1);
        time1.epoch = v38;
        *&time2.value = v40;
        time2.epoch = v42;
        PC_CMTimeSaferAdd(&time1, &time2, &v46);
      }

      else
      {
        if (!v47)
        {
          goto LABEL_30;
        }

        v46 = *(v47 + 16);
        time1 = v49;
        time2 = v46;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          goto LABEL_30;
        }

        v25 = *(v47 + 4);
        v26 = *(this + 21);
        v27 = *(v26 + 8);
        v41 = *(v26 + 24);
        *&time1.value = *(v47 + 1);
        time1.epoch = v25;
        *&time2.value = v27;
        time2.epoch = v41;
        PC_CMTimeSaferSubtract(&time1, &time2, &v46);
      }

      v49 = v46;
      (*(*a2 + 16))(a2, &v49);
    }

    else
    {
      (*(*a2 + 152))(a2, 256);
    }
  }

LABEL_30:
  v28 = *(this + 5);
  if (*(this + 6) == v28)
  {
LABEL_35:
    time1 = v49;
    time2 = v50;
    if (CMTimeCompare(&time1, &time2))
    {
      OZSpline::scaleTangentsAroundPoint(this, &v49, &v50, a4);
    }

    std::vector<TXTabStop *>::push_back[abi:ne200100](this + 16, &v51);
LABEL_45:
    *(this + 145) = 1;
    v33 = *(this + 3);
    *(this + 5) = *(this + 2);
    *(this + 6) = v33;
    OZSpline::refreshValidVerticesList(this);
    v34 = v51;
    time1 = v49;
    time2 = v50;
    PC_CMTimeSaferSubtract(&time1, &time2, &v46);
    OZSpline::scaleTangentsAfterInsertion(this, v34, &v46, a4);
  }

  else
  {
    v29 = *(this + 5);
    while (1)
    {
      v46 = *(*v29 + 16);
      v30 = *(v51 + 1);
      v44 = *(v51 + 4);
      time1 = v46;
      *&time2.value = v30;
      time2.epoch = v44;
      if (!CMTimeCompare(&time1, &time2))
      {
        break;
      }

      v46 = *(*v29 + 16);
      v31 = *(v51 + 1);
      v45 = *(v51 + 4);
      time1 = v46;
      *&time2.value = v31;
      time2.epoch = v45;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        time1 = v49;
        time2 = v50;
        if (CMTimeCompare(&time1, &time2))
        {
          OZSpline::scaleTangentsAroundPoint(this, &v49, &v50, a4);
        }

        std::vector<OZVertex *>::insert(this + 2, v28, &v51);
        goto LABEL_45;
      }

      ++v29;
      v28 += 8;
      if (v29 == *(this + 6))
      {
        goto LABEL_35;
      }
    }

    if (a6)
    {
      if (v51)
      {
        (*(*v51 + 8))(v51);
      }

      v51 = 0;
      *(this + 145) = 1;
      v32 = *(this + 3);
      *(this + 5) = *(this + 2);
      *(this + 6) = v32;
      OZSpline::refreshValidVerticesList(this);
      v51 = *v29;
    }

    else
    {
      (*(**v29 + 152))(*v29, 256);
      time1 = v49;
      time2 = v50;
      if (CMTimeCompare(&time1, &time2))
      {
        OZSpline::scaleTangentsAroundPoint(this, &v49, &v50, a4);
      }

      std::vector<OZVertex *>::insert(this + 2, v28, &v51);
      *(this + 145) = 1;
      v37 = *(this + 3);
      *(this + 5) = *(this + 2);
      *(this + 6) = v37;
      OZSpline::refreshValidVerticesList(this);
    }
  }

  v35 = *(this + 20);
  if (!v35 || (v36 = *(v35 + 48)) == 0)
  {
    v36 = (this + 8);
  }

  PCSpinLock::unlock(v36);
  return v51;
}

uint64_t OZSpline::scaleTangentsAroundPoint(uint64_t this, const CMTime *a2, const CMTime *a3, const CMTime *a4)
{
  v48 = 0.0;
  v49 = 0.0;
  v4 = MEMORY[0x277CC08F0];
  v47 = **&MEMORY[0x277CC08F0];
  v45 = 0;
  v46 = 0;
  if (*(*(this + 168) + 2) == 1)
  {
    v8 = this;
    if (OZSpline::getNextValidVertex(this, a3, &v45, a4, 0))
    {
      if (!OZSpline::getPreviousValidVertex(v8, v45, &v46, v4))
      {
        v44 = *(v45 + 16);
        time1 = *a3;
        time2 = v44;
        this = CMTimeCompare(&time1, &time2);
        if (!this)
        {
          return this;
        }

        (*(*v45 + 56))(v45, &v49, &v48, a4);
        v22 = 0.0;
        if (fabs(v49) < 0.0000001)
        {
          return (*(*v45 + 72))(v45, a4, v22 * v49, v22 * v48);
        }

        v34 = *(v45 + 1);
        v35 = *(v45 + 4);
        time1 = *a3;
        *&time2.value = v34;
        time2.epoch = v35;
        PC_CMTimeSaferSubtract(&time1, &time2, &v44);
        time1 = v44;
        time2 = *v4;
        v36 = CMTimeCompare(&time1, &time2);
        v37 = 0.0277777778 / v49;
        if (!v36)
        {
          v22 = fabs(v37);
          return (*(*v45 + 72))(v45, a4, v22 * v49, v22 * v48);
        }

        v38 = *(v45 + 1);
        v39 = *(v45 + 4);
        time1 = *a3;
        *&time2.value = v38;
        time2.epoch = v39;
        PC_CMTimeSaferSubtract(&time1, &time2, &v44);
        operator*(&v44, &time1, v37);
        Seconds = CMTimeGetSeconds(&time1);
        v41 = *(v45 + 1);
        v42 = *(v45 + 4);
        time1 = *a2;
        *&time2.value = v41;
        time2.epoch = v42;
        PC_CMTimeSaferSubtract(&time1, &time2, &v44);
        operator*(&v44, &time1, v37);
        v43 = CMTimeGetSeconds(&time1);
        v22 = 0.0;
        if (vabdd_f64(0.0, fabs(Seconds)) < 0.0000001)
        {
          return (*(*v45 + 72))(v45, a4, v22 * v49, v22 * v48);
        }

        v21 = v43 / Seconds;
LABEL_7:
        v22 = fabs(v21);
        return (*(*v45 + 72))(v45, a4, v22 * v49, v22 * v48);
      }

      v44 = *(v46 + 16);
      time1 = *a3;
      time2 = v44;
      this = CMTimeCompare(&time1, &time2);
      if (this)
      {
        v9 = *(v45 + 1);
        v10 = *(v45 + 4);
        time1 = *a3;
        *&time2.value = v9;
        time2.epoch = v10;
        this = CMTimeCompare(&time1, &time2);
        if (this)
        {
          (*(*v46 + 64))(v46, &v49, &v48, a4);
          v44 = *(v45 + 16);
          v11 = *(v46 + 1);
          v12 = *(v46 + 4);
          time1 = v44;
          *&time2.value = v11;
          time2.epoch = v12;
          PC_CMTimeSaferSubtract(&time1, &time2, &v47);
          v13 = *(v46 + 1);
          v14 = *(v46 + 4);
          time1 = *a3;
          *&time2.value = v13;
          time2.epoch = v14;
          PC_CMTimeSaferSubtract(&time1, &time2, &v44);
          operator/(&v47.value, &v44, &time1);
          v15 = fabs(CMTimeGetSeconds(&time1));
          (*(*v46 + 80))(v46, a4, v15 * v49, v15 * v48);
          (*(*v45 + 56))(v45, &v49, &v48, a4);
          v16 = *(v45 + 4);
          v17 = *(v46 + 1);
          v18 = *(v46 + 4);
          *&time1.value = *(v45 + 1);
          time1.epoch = v16;
          *&time2.value = v17;
          time2.epoch = v18;
          PC_CMTimeSaferSubtract(&time1, &time2, &v44);
          v47 = v44;
          v19 = *(v45 + 1);
          v20 = *(v45 + 4);
          time1 = *a3;
          *&time2.value = v19;
          time2.epoch = v20;
          PC_CMTimeSaferSubtract(&time1, &time2, &v44);
          operator/(&v47.value, &v44, &time1);
          v21 = CMTimeGetSeconds(&time1);
          goto LABEL_7;
        }
      }
    }

    else
    {
      this = OZSpline::getPreviousValidVertex(v8, a3, &v46, a4, 0);
      if (this)
      {
        v44 = *(v46 + 16);
        time1 = *a3;
        time2 = v44;
        this = CMTimeCompare(&time1, &time2);
        if (this)
        {
          (*(*v46 + 64))(v46, &v49, &v48, a4);
          v23 = 0.0;
          if (fabs(v49) >= 0.0000001)
          {
            v24 = *(v46 + 1);
            v25 = *(v46 + 4);
            time1 = *a3;
            *&time2.value = v24;
            time2.epoch = v25;
            PC_CMTimeSaferSubtract(&time1, &time2, &v44);
            time1 = v44;
            time2 = *v4;
            v26 = CMTimeCompare(&time1, &time2);
            v27 = 0.0277777778 / v49;
            if (v26)
            {
              v28 = *(v46 + 1);
              v29 = *(v46 + 4);
              time1 = *a3;
              *&time2.value = v28;
              time2.epoch = v29;
              PC_CMTimeSaferSubtract(&time1, &time2, &v44);
              operator*(&v44, &time1, v27);
              v30 = CMTimeGetSeconds(&time1);
              v31 = *(v46 + 1);
              v32 = *(v46 + 4);
              time1 = *a2;
              *&time2.value = v31;
              time2.epoch = v32;
              PC_CMTimeSaferSubtract(&time1, &time2, &v44);
              operator*(&v44, &time1, v27);
              v33 = CMTimeGetSeconds(&time1);
              v23 = 0.0;
              if (vabdd_f64(0.0, fabs(v30)) >= 0.0000001)
              {
                v23 = fabs(v33 / v30);
              }
            }

            else
            {
              v23 = fabs(v27);
            }
          }

          return (*(*v46 + 80))(v46, a4, v23 * v49, v23 * v48);
        }
      }
    }
  }

  return this;
}

void OZSpline::scaleTangentsAfterInsertion(OZSpline *this, char *a2, const CMTime *a3, const CMTime *a4)
{
  v42 = 0.0;
  v43 = 0.0;
  v41 = *(a2 + 16);
  memset(&v40, 0, sizeof(v40));
  time1 = *(a2 + 16);
  time2 = *a3;
  PC_CMTimeSaferSubtract(&time1, &time2, &v40);
  v38 = 0;
  v39 = 0;
  v8 = MEMORY[0x277CC08F0];
  OZSpline::getPreviousValidVertex(this, a2, &v39, MEMORY[0x277CC08F0]);
  OZSpline::getNextValidVertex(this, a2, &v38, v8);
  if (*(*(this + 21) + 2) != 1)
  {
    return;
  }

  time1 = *a3;
  time2 = *v8;
  if (!CMTimeCompare(&time1, &time2))
  {
    return;
  }

  v9 = v39;
  if (v39 && v38)
  {
    memset(&time, 0, sizeof(time));
    v36 = *(v38 + 16);
    v35 = *(v39 + 16);
    time1 = v36;
    time2 = v35;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    v35 = *(v39 + 16);
    time1 = v41;
    time2 = v35;
    PC_CMTimeSaferSubtract(&time1, &time2, &v36);
    time1 = v36;
    time2 = *v8;
    if (CMTimeCompare(&time1, &time2))
    {
      v35 = *(v39 + 16);
      time1 = v41;
      time2 = v35;
      PC_CMTimeSaferSubtract(&time1, &time2, &v36);
      operator/(&v36.value, &time, &time1);
      Seconds = CMTimeGetSeconds(&time1);
    }

    else
    {
      time1 = time;
      Seconds = 1.0 / CMTimeGetSeconds(&time1);
    }

    v11 = fabs(Seconds);
    v12 = v39;
    if (v39)
    {
      do
      {
        v36 = *(v12 + 2);
        v35 = *(v39 + 16);
        time1 = v36;
        time2 = v35;
        if (CMTimeCompare(&time1, &time2))
        {
          break;
        }

        (*(*v12 + 8))(v12, &v43, &v42, a4);
        (*(*v12 + 10))(v12, a4, v11 * v43, v11 * v42);
        v13 = OZSpline::getVertexIter(this, v12) + 1;
        do
        {
          v14 = *v13++;
        }

        while (((*(*v14 + 136))(v14, a4) & 1) == 0);
        v12 = *(v13 - 1);
      }

      while (v12);
    }

    v35 = *(v38 + 16);
    v15 = *(v39 + 1);
    v16 = *(v39 + 4);
    time1 = v35;
    *&time2.value = v15;
    time2.epoch = v16;
    PC_CMTimeSaferSubtract(&time1, &time2, &v36);
    time = v36;
    v35 = *(v38 + 16);
    time1 = v41;
    time2 = v35;
    PC_CMTimeSaferSubtract(&time1, &time2, &v36);
    time1 = v36;
    time2 = *v8;
    if (CMTimeCompare(&time1, &time2))
    {
      v35 = *(v38 + 16);
      time1 = v41;
      time2 = v35;
      PC_CMTimeSaferSubtract(&time1, &time2, &v36);
      operator/(&v36.value, &time, &time1);
      v17 = CMTimeGetSeconds(&time1);
    }

    else
    {
      time1 = time;
      v17 = 1.0 / CMTimeGetSeconds(&time1);
    }

    v18 = fabs(v17);
    v19 = v38;
    if (v38)
    {
LABEL_17:
      v36 = *(v19 + 2);
      v35 = *(v38 + 16);
      time1 = v36;
      time2 = v35;
      if (!CMTimeCompare(&time1, &time2))
      {
        (*(*v19 + 7))(v19, &v43, &v42, a4);
        (*(*v19 + 9))(v19, a4, v18 * v43, v18 * v42);
        v20 = OZSpline::getVertexIter(this, v19) + 1;
        while (v20 != *(this + 6))
        {
          v21 = *v20++;
          if ((*(*v21 + 136))(v21, a4))
          {
            v22 = v20 - 1;
            if (v20 - 1 != *(this + 6))
            {
              v19 = *v22;
              if (*v22)
              {
                goto LABEL_17;
              }
            }

            break;
          }
        }
      }
    }

    v9 = v39;
  }

  if (v9)
  {
    (*(*a2 + 56))(a2, &v43, &v42, a4);
    if (fabs(v43) >= 0.0000001)
    {
      v36 = *(v39 + 16);
      time1 = v40;
      time2 = v36;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      time1 = time;
      time2 = *v8;
      if (CMTimeCompare(&time1, &time2))
      {
        if ((*(*a2 + 184))(a2, 256))
        {
          v36 = *(v39 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          time1 = time;
          time2 = *v8;
          v23 = CMTimeCompare(&time1, &time2);
          v24 = 0.0277777778 / v43;
          if (!v23)
          {
            v28 = fabs(v24);
LABEL_36:
            (*(*a2 + 72))(a2, a4, v28 * v43, v28 * v42);
            goto LABEL_37;
          }

          v36 = *(v39 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          operator*(&time, &time1, v24);
        }

        else
        {
          v36 = *(v39 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          time1 = time;
          time2 = *v8;
          if (!CMTimeCompare(&time1, &time2))
          {
            v36 = *(v39 + 16);
            time1 = v40;
            time2 = v36;
            PC_CMTimeSaferSubtract(&time1, &time2, &time);
            v27 = 1.0 / CMTimeGetSeconds(&time);
            goto LABEL_35;
          }

          v36 = *(v39 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          v25 = *(v39 + 1);
          v26 = *(v39 + 4);
          time1 = v40;
          *&time2.value = v25;
          time2.epoch = v26;
          PC_CMTimeSaferSubtract(&time1, &time2, &v35);
          operator/(&time.value, &v35, &time1);
        }

        v27 = CMTimeGetSeconds(&time1);
LABEL_35:
        v28 = fabs(v27);
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  if (v38)
  {
    (*(*a2 + 64))(a2, &v43, &v42, a4);
    if (fabs(v43) >= 0.0000001)
    {
      v36 = *(v38 + 16);
      time1 = v40;
      time2 = v36;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      time1 = time;
      time2 = *v8;
      if (CMTimeCompare(&time1, &time2))
      {
        if ((*(*a2 + 184))(a2, 256))
        {
          v36 = *(v38 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          time1 = time;
          time2 = *v8;
          v29 = CMTimeCompare(&time1, &time2);
          v30 = 0.0277777778 / v43;
          if (!v29)
          {
            v34 = fabs(v30);
LABEL_49:
            (*(*a2 + 80))(a2, a4, v34 * v43, v34 * v42);
            return;
          }

          v36 = *(v38 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          operator*(&time, &time1, v30);
        }

        else
        {
          v36 = *(v38 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          time1 = time;
          time2 = *v8;
          if (!CMTimeCompare(&time1, &time2))
          {
            v36 = *(v38 + 16);
            time1 = v40;
            time2 = v36;
            PC_CMTimeSaferSubtract(&time1, &time2, &time);
            v33 = 1.0 / CMTimeGetSeconds(&time);
            goto LABEL_48;
          }

          v36 = *(v38 + 16);
          time1 = v41;
          time2 = v36;
          PC_CMTimeSaferSubtract(&time1, &time2, &time);
          v31 = *(v38 + 1);
          v32 = *(v38 + 4);
          time1 = v40;
          *&time2.value = v31;
          time2.epoch = v32;
          PC_CMTimeSaferSubtract(&time1, &time2, &v35);
          operator/(&time.value, &v35, &time1);
        }

        v33 = CMTimeGetSeconds(&time1);
LABEL_48:
        v34 = fabs(v33);
        goto LABEL_49;
      }
    }
  }
}

OZSpline *OZSpline::scaleTangentsBeforeDeletion(OZSpline *this, _BYTE **a2, const CMTime *a3)
{
  v29 = 0.0;
  v30 = 0.0;
  if (*(*(this + 21) + 2) != 1)
  {
    return this;
  }

  v5 = this;
  v27 = 0;
  v28 = 0;
  v26 = *(a2 + 2);
  v6 = MEMORY[0x277CC08F0];
  OZSpline::getPreviousValidVertex(this, a2, &v28, MEMORY[0x277CC08F0]);
  OZSpline::getNextValidVertex(v5, a2, &v27, v6);
  v7 = *(v5 + 168);
  v8 = *(v7 + 8);
  v32 = *(v7 + 24);
  v31 = v8;
  v9 = v28;
  if (v28 && v27)
  {
    v25 = *(v27 + 16);
    v10 = *(v28 + 1);
    v11 = *(v28 + 4);
    time = v25;
    *&v33.value = v10;
    v33.epoch = v11;
    PC_CMTimeSaferSubtract(&time, &v33, &v31);
    v12 = *(v28 + 1);
    v13 = *(v28 + 4);
    time = v26;
    *&v33.value = v12;
    v33.epoch = v13;
    PC_CMTimeSaferSubtract(&time, &v33, &v25);
    operator/(&v25.value, &v31, &time);
    v14 = 1.0 / CMTimeGetSeconds(&time);
    (*(*v28 + 64))(v28, &v30, &v29, a3);
    (*(*v28 + 80))(v28, a3, v14 * v30, v14 * v29);
    v15 = *(v27 + 4);
    *&time.value = *(v27 + 1);
    time.epoch = v15;
    v33 = v26;
    PC_CMTimeSaferSubtract(&time, &v33, &v25);
    operator/(&v25.value, &v31, &time);
    v16 = 1.0 / CMTimeGetSeconds(&time);
    (*(*v27 + 56))(v27, &v30, &v29, a3);
    (*(*v27 + 72))(v27, a3, v16 * v30, v16 * v29);
    v9 = v28;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

  (*(*v9 + 64))(v9, &v30, &v29, a3);
  this = v27;
  if (!v27)
  {
    if (vabdd_f64(0.0, v30) >= 0.0000001)
    {
      v17 = *(v28 + 1);
      v18 = *(v28 + 4);
      time = v26;
      v19 = 0.0277777778 / v30;
      *&v33.value = v17;
      v33.epoch = v18;
      PC_CMTimeSaferSubtract(&time, &v33, &v25);
      operator*(&v25, &time, v19);
      v20 = 1.0 / fabs(CMTimeGetSeconds(&time));
      (*(*v28 + 80))(v28, a3, v20 * v30, v20 * v29);
    }

LABEL_9:
    this = v27;
    if (!v27)
    {
      return this;
    }
  }

  this = (*(*this + 56))(this, &v30, &v29, a3);
  if (!v28 && vabdd_f64(0.0, v30) >= 0.0000001)
  {
    v21 = *(v27 + 1);
    v22 = *(v27 + 4);
    time = v26;
    v23 = 0.0277777778 / v30;
    *&v33.value = v21;
    v33.epoch = v22;
    PC_CMTimeSaferSubtract(&time, &v33, &v25);
    operator*(&v25, &time, v23);
    v24 = 1.0 / fabs(CMTimeGetSeconds(&time));
    return (*(*v27 + 72))(v27, a3, v24 * v30, v24 * v29);
  }

  return this;
}

uint64_t OZSpline::deleteVertex(OZSpline *this, void *a2, int a3, const CMTime *a4)
{
  v8 = *(this + 20);
  if (!v8 || (v9 = *(v8 + 48)) == 0)
  {
    v9 = (this + 8);
  }

  PCSpinLock::lock(v9);
  v10 = (*(*a2 + 184))(a2, 2);
  if ((v10 & 1) == 0)
  {
    VertexIter = OZSpline::getVertexIter(this, a2);
    v12 = VertexIter;
    if (a3)
    {
      OZSpline::scaleTangentsBeforeDeletion(this, *VertexIter, a4);
    }

    if (*v12)
    {
      (*(**v12 + 8))(*v12);
    }

    *v12 = 0;
    v13 = *(this + 3);
    v14 = v13 - (v12 + 1);
    if (v13 != (v12 + 1))
    {
      memmove(v12, v12 + 1, v13 - (v12 + 1));
    }

    v15 = *(this + 2);
    *(this + 3) = v12 + v14;
    if (v15 == (v12 + v14))
    {
      *(this + 144) = 0;
    }

    *(this + 145) = 1;
    *(this + 5) = v15;
    *(this + 6) = v12 + v14;
    OZSpline::refreshValidVerticesList(this);
  }

  v16 = *(this + 20);
  if (!v16 || (v17 = *(v16 + 48)) == 0)
  {
    v17 = (this + 8);
  }

  PCSpinLock::unlock(v17);
  return v10 ^ 1u;
}

uint64_t OZSpline::deleteVertices(OZSpline *this, const CMTime *a2, const CMTime *a3)
{
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  NextVertex = OZSpline::getNextVertex(this, a2);
  if (NextVertex)
  {
    v9 = NextVertex;
    v10 = 0;
    v11 = MEMORY[0x277CC08F0];
    do
    {
      v22 = *(v9 + 32);
      *&time1.value = *(v9 + 16);
      time1.epoch = v22;
      time2 = *a3;
      if (CMTimeCompare(&time1, &time2) > 0)
      {
        break;
      }

      VertexIter = OZSpline::getVertexIter(this, v9);
      v13 = OZSpline::getVertexIter(this, v9);
      v14 = *(this + 6);
      if (v14 == v13 || v13 + 1 == v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = v13[1];
      }

      if (((*(*v9 + 184))(v9, 2) & 1) == 0)
      {
        OZSpline::scaleTangentsBeforeDeletion(this, *VertexIter, v11);
        if (*VertexIter)
        {
          (*(**VertexIter + 8))(*VertexIter);
        }

        *VertexIter = 0;
        v16 = *(this + 3);
        v17 = v16 - (VertexIter + 1);
        if (v16 != VertexIter + 1)
        {
          memmove(VertexIter, VertexIter + 1, v16 - (VertexIter + 1));
        }

        v18 = *(this + 2);
        *(this + 3) = VertexIter + v17;
        if (v18 == (VertexIter + v17))
        {
          *(this + 144) = 0;
        }

        v10 = 1;
        *(this + 145) = 1;
        *(this + 5) = v18;
        *(this + 6) = VertexIter + v17;
        OZSpline::refreshValidVerticesList(this);
      }

      v9 = v15;
    }

    while (v15);
  }

  else
  {
    v10 = 0;
  }

  v19 = *(this + 20);
  if (!v19 || (v20 = *(v19 + 48)) == 0)
  {
    v20 = (this + 8);
  }

  PCSpinLock::unlock(v20);
  return v10 & 1;
}

BOOL OZSpline::deleteAllVertices(OZSpline *this)
{
  v2 = *(this + 20);
  if (!v2 || (v3 = *(v2 + 48)) == 0)
  {
    v3 = (this + 8);
  }

  PCSpinLock::lock(v3);
  v4 = *(this + 2);
  v5 = *(this + 3);
  v6 = v5;
  if (v4 == v5)
  {
    v8 = *(this + 2);
  }

  else
  {
    do
    {
      v7 = *(v6 - 8);
      if (v7)
      {
        (*(*v7 + 8))(v7);
        v6 = *(this + 3);
      }

      *(v6 - 8) = 0;
      v8 = *(this + 2);
      v6 = *(this + 3) - 8;
      *(this + 3) = v6;
    }

    while (v8 != v6);
  }

  *(this + 72) = 256;
  *(this + 5) = v8;
  *(this + 6) = v6;
  OZSpline::refreshValidVerticesList(this);
  v9 = *(this + 20);
  if (!v9 || (v10 = *(v9 + 48)) == 0)
  {
    v10 = (this + 8);
  }

  PCSpinLock::unlock(v10);
  return v4 != v5;
}

void OZSpline::addVertex(OZSpline *this, const CMTime *a2, double a3, const CMTime *a4)
{
  v5 = *(this + 20);
  if (!v5 || (v6 = *(v5 + 48)) == 0)
  {
    v6 = (this + 8);
  }

  PCSpinLock::lock(v6);
  operator new();
}

BOOL OZSpline::setVertexFlag(OZSpline *this, void *a2, uint64_t a3)
{
  if (a2)
  {
    (*(*a2 + 152))(a2, a3);
  }

  return a2 != 0;
}

void OZSpline::addVertexNoTangents(OZSpline *this, const CMTime *a2, double a3, const CMTime *a4)
{
  v8 = *(this + 20);
  if (!v8 || (v9 = *(v8 + 48)) == 0)
  {
    v9 = (this + 8);
  }

  PCSpinLock::lock(v9);
  OZSpline::getMaxValueU(this, a4, 0, &v13);
  time1 = *a2;
  time2 = v13;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v10 = *(this + 20);
    if (!v10 || (v11 = *(v10 + 48)) == 0)
    {
      v11 = (this + 8);
    }

    PCSpinLock::unlock(v11);
    OZSpline::appendVertexNoTangents(this, a2, a3, v12);
  }

  operator new();
}

void OZSpline::appendVertexNoTangents(OZSpline *this, const CMTime *a2, double a3, const CMTime *a4)
{
  v5 = *(this + 20);
  if (!v5 || (v6 = *(v5 + 48)) == 0)
  {
    v6 = (this + 8);
  }

  PCSpinLock::lock(v6);
  operator new();
}

void OZSpline::appendVertexesNoTangents(OZSpline *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v9 = *(this + 20);
  if (!v9 || (v10 = *(v9 + 48)) == 0)
  {
    v10 = (this + 8);
  }

  PCSpinLock::lock(v10);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (a2)
  {
    operator new();
  }

  *(this + 145) = 1;
  v11 = *(this + 1);
  v12 = *(this + 3);
  *(this + 40) = v11;
  *(this + 17) = (((v12 - v11) << 29) - 0x100000000) >> 32;
  OZSpline::refreshValidVerticesList(this);
  v13 = *(this + 20);
  if (!v13 || (v14 = *(v13 + 48)) == 0)
  {
    v14 = (this + 8);
  }

  PCSpinLock::unlock(v14);
}

void sub_25FEA4838(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double OZSpline::getPointInputTangents(OZSpline *this, const CMTime *a2, double *a3, double *a4, const CMTime *a5)
{
  v9 = 0.0;
  v10 = 0.0;
  OZSpline::derivePoint(this, a2, &v10, &v9, 0, 0, a5, 1);
  result = v9;
  v8 = sqrt(v10 * v10 + result * result);
  if (a3)
  {
    *a3 = v10 / v8;
  }

  if (a4)
  {
    result = result / v8;
    *a4 = result;
  }

  return result;
}

void OZSpline::derivePoint(OZSpline *this, const CMTime *a2, double *a3, double *a4, double *a5, double *a6, const CMTime *a7, char a8)
{
  v63 = **&MEMORY[0x277CC08F0];
  v62 = v63;
  v60 = 0.0;
  v61 = 0.0;
  if (*(*(this + 21) + 2) != 1)
  {
    return;
  }

  v58 = 0;
  v59 = 0;
  v16 = MEMORY[0x277CC08F0];
  OZSpline::getPreviousValidVertex(this, a2, &v59, MEMORY[0x277CC08F0], 0);
  OZSpline::getNextValidVertex(this, a2, &v58, v16, 0);
  v17 = (*(*this + 240))(this, a2, v16, 0);
  v18 = *(this + 21);
  v19 = *(v18 + 8);
  v64.epoch = *(v18 + 24);
  *&v64.value = v19;
  if (v59)
  {
    v63 = *(v59 + 16);
    (*(*v59 + 24))(v59, MEMORY[0x277CC08F0]);
    if (v58)
    {
      v21 = *(this + 21);
      v22 = *(v21 + 8);
      v55 = *(v21 + 24);
      v66 = *a2;
      *&v65.value = v22;
      v65.epoch = v55;
      v23 = PC_CMTimeSaferSubtract(&v66, &v65, &time);
      v24 = v17 - (*(*this + 240))(this, &time, MEMORY[0x277CC08F0], 0, v23);
    }

    else
    {
      v27 = v17 - v20;
      v66 = *a2;
      v65 = v63;
      PC_CMTimeSaferSubtract(&v66, &v65, &time);
      v24 = v27 / CMTimeGetSeconds(&time);
    }

    v66 = v64;
    v25 = -CMTimeGetSeconds(&v66);
    v26 = -v24;
  }

  else
  {
    v25 = 0.0;
    v26 = 0.0;
  }

  if (!v58)
  {
    v33 = 1.0;
    v32 = 0.0;
    v34 = v59;
    Seconds = 0.0;
LABEL_17:
    v42 = 1.0;
    goto LABEL_18;
  }

  v62 = *(v58 + 16);
  (*(*v58 + 24))(v58, MEMORY[0x277CC08F0]);
  if (v59)
  {
    v29 = *(this + 21);
    v30 = *(v29 + 8);
    v56 = *(v29 + 24);
    v66 = *a2;
    *&v65.value = v30;
    v65.epoch = v56;
    v31 = PC_CMTimeSaferAdd(&v66, &v65, &time);
    v32 = -(v17 - (*(*this + 240))(this, &time, MEMORY[0x277CC08F0], 0, v31));
  }

  else
  {
    v36 = v28 - v17;
    v66 = v62;
    v65 = *a2;
    PC_CMTimeSaferSubtract(&v66, &v65, &time);
    v32 = v36 / CMTimeGetSeconds(&time);
  }

  v66 = v64;
  Seconds = CMTimeGetSeconds(&v66);
  v34 = v59;
  v33 = 1.0;
  if (!v59 || !v58 || (a8 & 1) != 0)
  {
    goto LABEL_17;
  }

  time = *(v58 + 16);
  v37 = *(v59 + 1);
  v38 = *(v59 + 4);
  v66 = time;
  *&v65.value = v37;
  v65.epoch = v38;
  PC_CMTimeSaferSubtract(&v66, &v65, &v64);
  v39 = *(v59 + 1);
  v40 = *(v59 + 4);
  v66 = *a2;
  *&v65.value = v39;
  v65.epoch = v40;
  PC_CMTimeSaferSubtract(&v66, &v65, &time);
  operator/(&time.value, &v64, &v66);
  v33 = CMTimeGetSeconds(&v66);
  (*(*v59 + 64))(v59, &v61, &v60, a7);
  (*(*v59 + 80))(v59, a7, v33 * v61, v33 * v60);
  v41 = *(v58 + 4);
  *&v66.value = *(v58 + 1);
  v66.epoch = v41;
  v65 = *a2;
  PC_CMTimeSaferSubtract(&v66, &v65, &time);
  operator/(&time.value, &v64, &v66);
  v42 = CMTimeGetSeconds(&v66);
  (*(*v58 + 56))(v58, &v61, &v60, a7);
  (*(*v58 + 72))(v58, a7, v42 * v61, v42 * v60);
  v34 = v59;
LABEL_18:
  if (v34)
  {
    (*(*v34 + 64))(v34, &v61, &v60, a7);
    if (!v58 && (a8 & 1) == 0 && vabdd_f64(0.0, v61) >= 0.0000001)
    {
      v43 = *(v59 + 1);
      v44 = *(v59 + 4);
      v66 = *a2;
      v45 = 0.0277777778 / v61;
      *&v65.value = v43;
      v65.epoch = v44;
      PC_CMTimeSaferSubtract(&v66, &v65, &time);
      operator*(&time, &v66, v45);
      v46 = fabs(CMTimeGetSeconds(&v66));
      (*(*v59 + 80))(v59, a7, v46 * v61, v46 * v60);
    }

    v47 = *(v59 + 1);
    v48 = *(v59 + 4);
    v66 = *a2;
    *&v65.value = v47;
    v65.epoch = v48;
    PC_CMTimeSaferSubtract(&v66, &v65, &time);
    operator*(&time, &v66, 0.0277777778 / v25);
    v33 = fabs(CMTimeGetSeconds(&v66));
  }

  if (v58)
  {
    (*(*v58 + 56))(v58, &v61, &v60, a7);
    if (!v59 && (a8 & 1) == 0 && vabdd_f64(0.0, v61) >= 0.0000001)
    {
      v49 = *(v58 + 1);
      v50 = *(v58 + 4);
      v66 = *a2;
      v51 = 0.0277777778 / v61;
      *&v65.value = v49;
      v65.epoch = v50;
      PC_CMTimeSaferSubtract(&v66, &v65, &time);
      operator*(&time, &v66, v51);
      v52 = fabs(CMTimeGetSeconds(&v66));
      (*(*v58 + 72))(v58, a7, v52 * v61, v52 * v60);
    }

    v53 = *(v58 + 1);
    v54 = *(v58 + 4);
    v66 = *a2;
    *&v65.value = v53;
    v65.epoch = v54;
    PC_CMTimeSaferSubtract(&v66, &v65, &time);
    operator*(&time, &v66, 0.0277777778 / Seconds);
    v42 = fabs(CMTimeGetSeconds(&v66));
  }

  if (a3)
  {
    *a3 = v25 * v33;
  }

  if (a4)
  {
    *a4 = v26 * v33;
  }

  if (a5)
  {
    *a5 = Seconds * v42;
  }

  if (a6)
  {
    *a6 = v32 * v42;
  }
}

double OZSpline::getPointOutputTangents(OZSpline *this, const CMTime *a2, double *a3, double *a4, const CMTime *a5)
{
  v9 = 0.0;
  v10 = 0.0;
  OZSpline::derivePoint(this, a2, 0, 0, &v10, &v9, a5, 1);
  result = v9;
  v8 = sqrt(v10 * v10 + result * result);
  if (a3)
  {
    *a3 = v10 / v8;
  }

  if (a4)
  {
    result = result / v8;
    *a4 = result;
  }

  return result;
}

void OZSpline::deriveCurve(OZSpline *this, OZVertex *a2, const CMTime *a3, char a4)
{
  v38 = 0.0;
  v39 = 0.0;
  v36 = 0.0;
  v37 = 0.0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  OZSpline::getFirstValidVertex(this, &v35, a3);
  OZSpline::getLastValidVertex(this, &v34, a3);
  time = *(a2 + 16);
  v8 = MEMORY[0x277CC08F0];
  OZSpline::getPreviousValidVertex(this, &time, &v33, MEMORY[0x277CC08F0], 0);
  time = *(a2 + 16);
  OZSpline::getNextValidVertex(this, &time, &v32, v8, 0);
  if (!v35 || !v34 || *(*(this + 21) + 2) != 1)
  {
    return;
  }

  if (v35 == a2 && v32)
  {
    v29 = *(v32 + 1);
    v9 = *(v32 + 4);
    time2 = *(a2 + 16);
    *&time.value = v29;
    time.epoch = v9;
    PC_CMTimeSaferSubtract(&time, &time2, &v31);
    operator/(&v31.value, &time, 12.0);
    Seconds = CMTimeGetSeconds(&time);
    v11 = MEMORY[0x277CC08F0];
    v12 = (*(*v32 + 24))(v32, MEMORY[0x277CC08F0]);
    v13 = (v12 - (*(*a2 + 24))(a2, v11)) / 12.0;
    (*(*a2 + 80))(a2, v11, Seconds / 3.0, v13 / 3.0);
    (*(*a2 + 72))(a2, v11, Seconds / -3.0, v13 / -3.0);
    v14 = (*(*v32 + 24))(v32, a3);
    if (vabdd_f64(v14, (*(*a2 + 24))(a2, a3)) >= 0.0000001)
    {
      return;
    }

    time.value = 0;
    time2.value = 0;
    (*(*v32 + 56))(v32, &time, &time2, a3);
    (*(*v32 + 72))(v32, a3, *&time.value, 0.0);
    (*(*v32 + 64))(v32, &time, &time2, a3);
    if (fabs(*&time2.value) < 0.0000001)
    {
      return;
    }

    v15 = v32;
    if (!v32)
    {
      return;
    }

LABEL_15:
    (*(*v15 + 152))(v15, 1);
    return;
  }

  if (!v33 || v34 != a2)
  {
    time = *(a2 + 16);
    OZSpline::derivePoint(this, &time, &v39, &v38, &v37, &v36, a3, a4);
    v31 = *(v35 + 16);
    time2 = *(a2 + 16);
    time = v31;
    if ((CMTimeCompare(&time, &time2) & 0x80000000) == 0)
    {
      (*(*a2 + 80))(a2, a3, v37, v36);
      v22.n128_f64[0] = -v37;
      v23.n128_f64[0] = -v36;
LABEL_18:
      (*(*a2 + 72))(a2, a3, v22, v23);
      return;
    }

    v31 = *(v34 + 16);
    time2 = *(a2 + 16);
    time = v31;
    v24 = CMTimeCompare(&time, &time2);
    v25.n128_f64[0] = v39;
    if (v24 <= 0)
    {
      (*(*a2 + 72))(a2, a3, v39, v38);
      v27.n128_f64[0] = -v39;
      v28.n128_f64[0] = -v38;
    }

    else
    {
      v26 = *a2;
      if (fabs(v39) <= fabs(v37))
      {
        (*(v26 + 80))(a2, a3, v37, v36);
        v23.n128_f64[0] = v38;
        v22.n128_f64[0] = v39;
        goto LABEL_18;
      }

      (*(v26 + 72))(a2, a3, v25, v38);
      v28.n128_f64[0] = v36;
      v27.n128_f64[0] = v37;
    }

    (*(*a2 + 80))(a2, a3, v27, v28);
    return;
  }

  v30 = *(v33 + 1);
  v16 = *(v33 + 4);
  time2 = *(a2 + 16);
  *&time.value = v30;
  time.epoch = v16;
  PC_CMTimeSaferSubtract(&time, &time2, &v31);
  operator/(&v31.value, &time, 12.0);
  v17 = CMTimeGetSeconds(&time);
  v18 = MEMORY[0x277CC08F0];
  v19 = (*(*v33 + 24))(v33, MEMORY[0x277CC08F0]);
  v20 = (v19 - (*(*a2 + 24))(a2, v18)) / 12.0;
  (*(*a2 + 72))(a2, v18, v17 / 3.0, v20 / 3.0);
  (*(*a2 + 80))(a2, v18, v17 / -3.0, v20 / -3.0);
  v21 = (*(*v33 + 24))(v33, a3);
  if (vabdd_f64(v21, (*(*a2 + 24))(a2, a3)) < 0.0000001)
  {
    time.value = 0;
    time2.value = 0;
    (*(*v33 + 64))(v33, &time, &time2, a3);
    (*(*v33 + 80))(v33, a3, *&time.value, 0.0);
    (*(*v33 + 56))(v33, &time, &time2, a3);
    if (fabs(*&time2.value) >= 0.0000001)
    {
      v15 = v33;
      if (v33)
      {
        goto LABEL_15;
      }
    }
  }
}

double PCMath::mod@<D0>(PCMath *this@<X0>, const CMTime *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  operator/(this, a2, a3);
  CMTimeMake(&v7, 1, 1);
  v11 = *a3;
  v10 = v7;
  PC_CMTimeFloorToSampleDuration(&v11, &v10, &v8);
  v11 = *a3;
  v10 = v8;
  PC_CMTimeSaferSubtract(&v11, &v10, &v9);
  operator*(&v9, a2, &v11);
  result = *&v11.value;
  *a3 = v11;
  return result;
}

BOOL OZSpline::setVertexInterpolation(OZSpline *this, void *a2, uint64_t a3)
{
  if (a2)
  {
    (*(*a2 + 200))(a2, a3);
  }

  return a2 != 0;
}

BOOL OZSpline::getVertexInterpolation(OZInterpolators **this, void *a2, unsigned int *a3, BOOL *a4)
{
  if (a2)
  {
    v8 = (*(*a2 + 208))(a2);
    if (a4)
    {
      *a4 = OZSpline::interpolatorUsesTangents(this, v8, a2);
    }

    if (a3)
    {
      *a3 = v8;
    }
  }

  return a2 != 0;
}

uint64_t OZSpline::adjustVertexSpeed(void ***this, void *a2, double a3)
{
  if (a2)
  {
    v14 = 0;
    OZSpline::getNextValidVertex(this, a2, &v14, MEMORY[0x277CC08F0]);
    if (v14)
    {
      v5 = (*(*a2 + 208))(a2);
      if (v5 == 1)
      {
        v6 = MEMORY[0x277CC08F0];
        v7 = (*(*a2 + 24))(a2, MEMORY[0x277CC08F0]);
        if (vabdd_f64(v7, (*(*v14 + 24))(v14, v6)) < 0.0000001)
        {
          return 0;
        }

        v8 = 15;
        (*(*a2 + 200))(a2, 15);
        (*(*a2 + 48))(a2, MEMORY[0x277CC08F0], 2.0);
      }

      else
      {
        v8 = v5;
        if ((v5 - 15) > 2)
        {
          return 0;
        }
      }

      v9 = a3 / -3.0;
      (*(*a2 + 40))(a2, MEMORY[0x277CC08F0]);
      v11 = -v9;
      if (v8 != 17)
      {
        v11 = v9;
      }

      v12 = v11 + v10.n128_f64[0];
      v10.n128_u64[0] = 0;
      if (v12 >= 0.0)
      {
        v10.n128_f64[0] = v12;
        if (v12 > 2.0)
        {
          v10.n128_u64[0] = 2.0;
        }
      }

      (*(*a2 + 48))(a2, MEMORY[0x277CC08F0], v10);
    }
  }

  return 0;
}

uint64_t OZSpline::getVertexSpeed(OZSpline *this, void *a2, unsigned int *a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = (*(*a2 + 208))(a2);
  result = 0;
  if (v4 <= 15)
  {
    if (v4 != 1)
    {
      if (v4 != 15)
      {
        return result;
      }

      if (!a3)
      {
        return 1;
      }

      LODWORD(result) = 3;
      goto LABEL_16;
    }

    if (a3)
    {
      LODWORD(result) = 0;
LABEL_16:
      *a3 = result;
      return 1;
    }

    return 1;
  }

  if (v4 == 16)
  {
    if (a3)
    {
      LODWORD(result) = 2;
      goto LABEL_16;
    }

    return 1;
  }

  if (v4 == 17)
  {
    result = 1;
    if (a3)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t OZSpline::getVertexFlags(OZSpline *this, void *a2, unsigned int *a3)
{
  if (a2)
  {
    v3 = a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (!v3)
  {
    *a3 = (*(*a2 + 168))(a2);
  }

  return v4;
}

BOOL OZSpline::setVertexFlags(OZSpline *this, void *a2, uint64_t a3)
{
  if (a2)
  {
    (*(*a2 + 176))(a2, a3);
  }

  return a2 != 0;
}

BOOL OZSpline::resetVertexFlag(OZSpline *this, void *a2, uint64_t a3)
{
  if (a2)
  {
    (*(*a2 + 160))(a2, a3);
  }

  return a2 != 0;
}

BOOL OZSpline::enableVertex(OZSpline *this, void *a2, const CMTime *a3)
{
  if (a2)
  {
    (*(*a2 + 128))(a2, 1, a3);
    *(this + 145) = 1;
    v5 = *(this + 3);
    *(this + 5) = *(this + 2);
    *(this + 6) = v5;
    OZSpline::refreshValidVerticesList(this);
  }

  return a2 != 0;
}

BOOL OZSpline::disableVertex(OZSpline *this, void *a2, const CMTime *a3)
{
  if (a2)
  {
    (*(*a2 + 128))(a2, 0, a3);
    *(this + 145) = 1;
    v5 = *(this + 3);
    *(this + 5) = *(this + 2);
    *(this + 6) = v5;
    OZSpline::refreshValidVerticesList(this);
  }

  return a2 != 0;
}

uint64_t OZSpline::isEnabledVertex(OZSpline *this, void *a2, const CMTime *a3)
{
  if (a2)
  {
    return (*(*a2 + 136))(a2, a3);
  }

  else
  {
    return 0;
  }
}

BOOL OZSpline::flattenHandles(OZSpline *this, void *a2, const CMTime *a3)
{
  if (a2)
  {
    (*(*a2 + 88))(a2, a3);
    (*(*a2 + 152))(a2, 128);
  }

  return a2 != 0;
}

uint64_t OZSpline::setVertexInputHandles(OZInterpolators **this, void *a2, double a3, double a4, const CMTime *a5, int a6)
{
  v13 = a4;
  v14 = a3;
  v10 = (*(*a2 + 208))(a2);
  if (a6)
  {
    Interpolator = OZInterpolators::getInterpolator(this[19], v10);
    (*(*Interpolator + 40))(Interpolator, this, &v14, &v13);
  }

  (*(*a2 + 160))(a2, 256);
  (*(*a2 + 152))(a2, 128);
  (*(*a2 + 72))(a2, a5, v14, v13);
  return 1;
}

uint64_t OZSpline::setVertexOutputHandles(OZInterpolators **this, void *a2, double a3, double a4, const CMTime *a5, int a6)
{
  v8 = a4;
  v9 = a3;
  v15 = a4;
  v16 = a3;
  v12 = (*(*a2 + 208))(a2);
  if (a6)
  {
    Interpolator = OZInterpolators::getInterpolator(this[19], v12);
    (*(*Interpolator + 40))(Interpolator, this, &v16, &v15);
    v8 = v15;
    v9 = v16;
  }

  (*(*a2 + 80))(a2, a5, v9, v8);
  (*(*a2 + 160))(a2, 256);
  (*(*a2 + 152))(a2, 128);
  return 1;
}

uint64_t OZSpline::getVertexInputHandles(OZInterpolators **this, void *a2, double *a3, double *a4, const CMTime *a5, int a6)
{
  v15 = 0;
  v16 = 0;
  v12 = (*(*a2 + 208))(a2);
  (*(*a2 + 56))(a2, &v16, &v15, a5);
  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a6)
  {
    Interpolator = OZInterpolators::getInterpolator(this[19], v12);
    (*(*Interpolator + 48))(Interpolator, this, a3, a4);
  }

  return 1;
}

uint64_t OZSpline::getVertexOutputHandles(OZInterpolators **this, void *a2, double *a3, double *a4, const CMTime *a5, int a6)
{
  v15 = 0;
  v16 = 0;
  v12 = (*(*a2 + 208))(a2);
  (*(*a2 + 64))(a2, &v16, &v15, a5);
  if (a3)
  {
    *a3 = v16;
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a6)
  {
    Interpolator = OZInterpolators::getInterpolator(this[19], v12);
    (*(*Interpolator + 48))(Interpolator, this, a3, a4);
  }

  return 1;
}

uint64_t OZSpline::getVertexNormal(OZSpline *this, void *a2, double *a3, const CMTime *a4)
{
  if (a3)
  {
    *a3 = (*(*a2 + 112))(a2, a4);
  }

  return 1;
}

uint64_t OZSpline::setVertexNormal(OZSpline *this, const CMTime *a2, double a3, const CMTime *a4)
{
  v10 = 0;
  OZSpline::getVertexHandle(this, a2, &v10, 0);
  if (v10 && ((*(*v10 + 136))(v10, a4) & 1) != 0 || (PreviousValidVertex = OZSpline::getPreviousValidVertex(this, a2, &v10, MEMORY[0x277CC08F0], 0), result = 0, PreviousValidVertex))
  {
    (*(*v10 + 104))(v10, a4, a3);
    return 1;
  }

  return result;
}

uint64_t OZSpline::getVertexNormal(OZSpline *this, const CMTime *a2, double *a3, const CMTime *a4)
{
  v10 = 0;
  OZSpline::getVertexHandle(this, a2, &v10, 0);
  if (v10 && ((*(*v10 + 136))(v10, a4) & 1) != 0 || (PreviousValidVertex = OZSpline::getPreviousValidVertex(this, a2, &v10, MEMORY[0x277CC08F0], 0), result = 0, PreviousValidVertex))
  {
    if (a3)
    {
      *a3 = (*(*v10 + 112))(v10, a4);
    }

    return 1;
  }

  return result;
}

uint64_t OZSpline::setVertexBiasLinear(OZSpline *this, void *a2, double a3, const CMTime *a4)
{
  v11 = 0;
  v12 = 0;
  OZSpline::getFirstValidVertex(this, &v12, a4);
  OZSpline::getLastValidVertex(this, &v11, a4);
  if ((*(this + 144) & 1) == 0 && (!v12 || v11 == 0))
  {
    v9 = *(this + 20);
    if (!v9 || *(v9 + 56) != 1)
    {
      return 0;
    }
  }

  (*(*a2 + 48))(a2, a4, a3);
  return 1;
}

uint64_t OZSpline::getVertexBiasLinear(OZSpline *this, void *a2, double *a3, const CMTime *a4)
{
  if (a3)
  {
    *a3 = (*(*a2 + 40))(a2, a4);
  }

  return 1;
}

uint64_t OZSpline::setVertexBiasExp(OZSpline *this, void *a2, long double a3, const CMTime *a4)
{
  v7 = exp(a3);
  v10 = 0;
  v11 = 0;
  OZSpline::getFirstValidVertex(this, &v11, a4);
  OZSpline::getLastValidVertex(this, &v10, a4);
  if ((*(this + 144) & 1) == 0 && (!v11 || !v10))
  {
    v8 = *(this + 20);
    if (!v8 || *(v8 + 56) != 1)
    {
      return 0;
    }
  }

  (*(*a2 + 48))(a2, a4, v7);
  return 1;
}

uint64_t OZSpline::getVertexBiasExp(OZSpline *this, void *a2, long double *a3, const CMTime *a4)
{
  if (a3)
  {
    v5 = (*(*a2 + 40))(a2, a4);
    *a3 = log(v5);
  }

  return 1;
}

uint64_t OZSpline::warpSplineLinear(uint64_t this, Float64 a2, const CMTime *a3, const CMTime *a4)
{
  v16 = **&MEMORY[0x277CC08F0];
  v14 = 0;
  v15 = 0.0;
  v5 = *(this + 40);
  if (*(this + 48) != v5)
  {
    v8 = this;
    do
    {
      v9 = *v5;
      v16 = *(*v5 + 16);
      (*(*v9 + 56))(v9, &v15, &v14, a4);
      v15 = v15 * a2;
      (*(**v5 + 72))(*v5, a4);
      (*(**v5 + 64))(*v5, &v15, &v14, a4);
      v15 = v15 * a2;
      (*(**v5 + 80))(*v5, a4);
      v10 = *v5++;
      operator*(&v16, &v12, a2);
      v18 = v12;
      v17 = *a3;
      v11 = PC_CMTimeSaferAdd(&v18, &v17, v13);
      this = (*(*v10 + 16))(v10, v13, v11);
    }

    while (v5 != *(v8 + 48));
  }

  return this;
}

void OZSpline::forceWarpSplineLinear(OZSpline *this, const CMTime *a2, const CMTime *a3)
{
  v6 = *(this + 5);
  v18 = *MEMORY[0x277CC08F0];
  v19 = *(MEMORY[0x277CC08F0] + 16);
  v16 = 0;
  v17 = 0.0;
  time = *a2;
  Seconds = CMTimeGetSeconds(&time);
  if (*(this + 6) != v6)
  {
    v8 = Seconds;
    v9 = MEMORY[0x277CC08F0];
    do
    {
      v11 = *v6++;
      v10 = v11;
      v12 = (*(*v11 + 168))(v11);
      (*(*v10 + 176))(v10, v12 & 0xFFFFFFFD);
      v18 = *(v11 + 16);
      v19 = *(v11 + 32);
      (*(*v10 + 56))(v10, &v17, &v16, v9);
      v17 = v8 * v17;
      (*(*v10 + 72))(v10, v9);
      (*(*v10 + 64))(v10, &v17, &v16, v9);
      v17 = v8 * v17;
      (*(*v10 + 80))(v10, v9);
      operator*(&v18, a2, &v14);
      time = v14;
      v20 = *a3;
      v13 = PC_CMTimeSaferAdd(&time, &v20, v15);
      (*(*v10 + 16))(v10, v15, v13);
      (*(*v10 + 176))(v10, v12);
    }

    while (v6 != *(this + 6));
  }
}

void *OZSpline::reverseVertices(OZSpline *this, void *a2, _OWORD *a3)
{
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  v19[0] = v19;
  v19[1] = v19;
  v19[2] = 0;
  VertexIter = OZSpline::getVertexIter(this, a2);
  if (OZSpline::getVertexIter(this, a3) + 1 != VertexIter)
  {
    v17 = *(a2 + 1);
    v18 = *(a2 + 4);
    v15 = a3[1];
    v16 = *(a3 + 4);
    (*(*a2 + 208))(a2);
    __p = 0;
    v13 = 0;
    v14 = 0;
    operator new();
  }

  v9 = *(this + 20);
  if (!v9 || (v10 = *(v9 + 48)) == 0)
  {
    v10 = (this + 8);
  }

  PCSpinLock::unlock(v10);
  return std::__list_imp<unsigned int>::clear(v19);
}

BOOL OZSpline::getUForValue(uint64_t a1, CMTime *a2, CMTime *a3, CMTime *a4, int a5, double a6)
{
  v12 = *(a1 + 160);
  if (!v12 || (v13 = *(v12 + 48)) == 0)
  {
    v13 = (a1 + 8);
  }

  PCSpinLock::lock(v13);
  v36 = *a3;
  memset(&v35, 0, sizeof(v35));
  time1 = *a3;
  time2 = a3[1];
  PC_CMTimeSaferAdd(&time1, &time2, &v37);
  time1 = v37;
  time2 = *a4;
  PC_CMTimeSaferSubtract(&time1, &time2, &v35);
  memset(&v37, 0, sizeof(v37));
  v14 = MEMORY[0x277CC08F0];
  OZSpline::getMinValueU(a1, MEMORY[0x277CC08F0], 0, &v37);
  memset(&v34, 0, sizeof(v34));
  OZSpline::getMaxValueU(a1, v14, 0, &v34);
  time1 = v36;
  time2 = v37;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v36 = v37;
  }

  time1 = v36;
  time2 = v34;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v36 = v34;
  }

  time1 = v35;
  time2 = v34;
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    v35 = v34;
  }

  time1 = v35;
  time2 = v37;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v35 = v37;
  }

  v32 = 0;
  v33 = 0;
  if (!OZSpline::getVertexHandle(a1, &v36, &v33, 0))
  {
    OZSpline::getPreviousValidVertex(a1, &v36, &v33, MEMORY[0x277CC08F0], 0);
  }

  if (!OZSpline::getVertexHandle(a1, &v35, &v32, 0))
  {
    OZSpline::getNextValidVertex(a1, &v35, &v32, MEMORY[0x277CC08F0], 0);
  }

  v15 = v33;
  if (v33 != v32)
  {
    v16 = MEMORY[0x277CC08F0];
    do
    {
      v31 = 0;
      OZSpline::getNextValidVertex(a1, v15, &v31, v16);
      v30.epoch = 0;
      *&v30.value = 0uLL;
      v17 = *(v15 + 1);
      v30.epoch = v15[4];
      *&v30.value = v17;
      v29.epoch = 0;
      *&v29.value = 0uLL;
      v18 = *(v31 + 1);
      v29.epoch = *(v31 + 4);
      *&v29.value = v18;
      time1 = v36;
      *&time2.value = v18;
      time2.epoch = v29.epoch;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        time1 = v36;
        time2 = v30;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          v30 = v36;
        }
      }

      time1 = v35;
      time2 = v29;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        time1 = v35;
        time2 = v30;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          v29 = v35;
        }
      }

      v19 = (*(*v15 + 208))(v15);
      Interpolator = OZInterpolators::getInterpolator(*(a1 + 152), v19);
      (*(*Interpolator + 96))(Interpolator, a1, v15, v31, &v30, &v29, a2, a6);
      v15 = v31;
    }

    while (v31 != v32);
  }

  value = a2->value;
  if (a5 == 1)
  {
    memset(&time1, 0, sizeof(time1));
    for (i = -1431655765 * ((*&a2->timescale - value) >> 3) - 1; (i & 0x80000000) == 0; --i)
    {
      v23 = (a2->value + 24 * (i & 0x7FFFFFFF));
      std::vector<CMTime>::push_back[abi:ne200100](&time1, v23);
    }

    v24 = time1.value;
    if (&time1 != a2)
    {
      std::vector<CMTime>::__assign_with_size[abi:ne200100]<CMTime*,CMTime*>(a2, time1.value, *&time1.timescale, 0xAAAAAAAAAAAAAAABLL * ((*&time1.timescale - time1.value) >> 3));
      v24 = time1.value;
    }

    if (v24)
    {
      *&time1.timescale = v24;
      operator delete(v24);
    }

    value = a2->value;
  }

  v25 = *(a1 + 160);
  if (!v25 || (v26 = *(v25 + 48)) == 0)
  {
    v26 = (a1 + 8);
  }

  v27 = value != *&a2->timescale;
  PCSpinLock::unlock(v26);
  return v27;
}

void sub_25FEA9A98(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void OZSpline::purge(OZSpline *this)
{
  v16 = **&MEMORY[0x277CC08F0];
  v2 = *(this + 5);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v3 = *(this + 20);
  if (!v3 || (v4 = *(v3 + 48)) == 0)
  {
    v4 = (this + 8);
  }

  PCSpinLock::lock(v4);
  for (; v2 != *(this + 6); ++v2)
  {
    v5 = *(*v2 + 16);
    v12 = *(*v2 + 32);
    time1 = v16;
    *&time2.value = v5;
    time2.epoch = v12;
    if (CMTimeCompare(&time1, &time2) || v2 == *(this + 5))
    {
      v16 = *(*v2 + 16);
    }

    else
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](&v13, v2);
    }
  }

  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::unlock(v7);
  v8 = v13;
  if (v14 != v13)
  {
    v9 = 0;
    v10 = 1;
    v11 = MEMORY[0x277CC08F0];
    do
    {
      (*(*this + 32))(this, *&v8[8 * v9], 0, v11);
      v9 = v10;
      v8 = v13;
      ++v10;
    }

    while (v9 < (v14 - v13) >> 3);
  }

  if (v8)
  {
    v14 = v8;
    operator delete(v8);
  }
}

void sub_25FEA9C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZSpline::setVertexSmooth(OZSpline *this, void *a2, int a3, const CMTime *a4)
{
  v5 = a3;
  if (a3)
  {
    v8 = 4;
  }

  else
  {
    v8 = 1;
  }

  (*(*a2 + 200))(a2, v8);
  if (v5)
  {
    (*(*this + 304))(this, a2, MEMORY[0x277CC08F0], 0);
  }

  else
  {
    (*(*a2 + 72))(a2, a4, 0.0, 0.0);
    (*(*a2 + 80))(a2, a4, 0.0, 0.0);
  }

  return 1;
}

void OZSpline::scaleSpline(OZSpline *this, double a2, double a3, double a4, const CMTime *a5)
{
  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::lock(v11);
  v21 = 0.0;
  v22 = 0.0;
  if (*(this + 2) != *(this + 3))
  {
    for (i = *(this + 5); i != *(this + 6); ++i)
    {
      v13 = (*(**i + 24))(*i, a5);
      (*(**i + 56))(*i, &v22, &v22, a5);
      (*(**i + 64))(*i, &v21, &v21, a5);
      v14 = v13 * a2;
      v15 = (v13 + v22) * a2;
      v16 = (v13 + v21) * a2;
      if (v13 * a2 > a4)
      {
        v14 = a4;
      }

      if (v14 >= a3)
      {
        v17 = v14;
      }

      else
      {
        v17 = a3;
      }

      if (v15 > a4)
      {
        v15 = a4;
      }

      if (v15 < a3)
      {
        v15 = a3;
      }

      if (v16 > a4)
      {
        v16 = a4;
      }

      if (v16 < a3)
      {
        v16 = a3;
      }

      v21 = v16 - v17;
      v22 = v15 - v17;
      (*(**i + 72))(*i, a5, v15 - v17, v15 - v17);
      (*(**i + 80))(*i, a5, v21, v21);
      v18 = *i;
      (*(*v18 + 32))(v18, a5, v17);
    }
  }

  v19 = *(this + 20);
  if (!v19 || (v20 = *(v19 + 48)) == 0)
  {
    v20 = (this + 8);
  }

  PCSpinLock::unlock(v20);
}

uint64_t OZSpline::offsetVertexInTime(OZSpline *this, void *a2, const CMTime *a3, const CMTime *a4)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2, a3);
  }

  return result;
}

BOOL OZSpline::hasInterpolation(OZSpline *this, int a2)
{
  if (*(this + 2) == *(this + 3))
  {
    return *(*(this + 21) + 32) == a2;
  }

  v4 = (*(this + 5) + 8);
  do
  {
    v5 = *(this + 6);
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    v7 = *v4++;
  }

  while ((*(*v7 + 208))(v7) != a2);
  return v6;
}

void OZSpline::generateSplineFromDynamicSpline(OZSpline *this, const CMTime *a2, OZDynamicSpline *a3)
{
  v12 = 0;
  OZSpline::deleteAllVertices(this);
  v6 = *(this + 20);
  if (!v6 || (v7 = *(v6 + 48)) == 0)
  {
    v7 = (this + 8);
  }

  PCSpinLock::lock(v7);
  NumberOfValidVertices = OZSpline::getNumberOfValidVertices(a3, a2);
  std::vector<OZVertex *>::reserve(this + 2, NumberOfValidVertices);
  if (OZSpline::getFirstValidVertex(a3, &v12, a2))
  {
    operator new();
  }

  *(this + 145) = 1;
  v9 = *(this + 3);
  *(this + 5) = *(this + 2);
  *(this + 6) = v9;
  OZSpline::refreshValidVerticesList(this);
  *(this + 144) = *(a3 + 144);
  v10 = *(this + 20);
  if (!v10 || (v11 = *(v10 + 48)) == 0)
  {
    v11 = (this + 8);
  }

  PCSpinLock::unlock(v11);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,std::pair<double,unsigned int>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<OZVertex *>::__insert_with_size[abi:ne200100]<std::__list_iterator<OZStaticVertex *,void *>,std::__list_iterator<OZStaticVertex *,void *>>(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 3)
  {
    v16 = (v9 - __src) >> 3;
    if (v16 >= a5)
    {
      v19 = &__src[8 * a5];
      v20 = &v9[-a5];
      v21 = a1[1];
      while (v20 < v9)
      {
        v22 = *v20++;
        *v21++ = v22;
      }

      a1[1] = v21;
      if (v9 != v19)
      {
        memmove(&__src[8 * a5], __src, v9 - v19);
      }

      *__src = v7[2];
      if (a5 != 1)
      {
        v23 = __src + 8;
        v24 = a5 + 1;
        do
        {
          v7 = v7[1];
          *v23++ = v7[2];
          --v24;
        }

        while (v24 > 2);
      }
    }

    else
    {
      if (v16 < 0)
      {
        v33 = (v9 - __src) >> 3;
        v18 = a3;
        do
        {
          v18 = *v18;
        }

        while (!__CFADD__(v33++, 1));
      }

      else if (v9 == __src)
      {
        v18 = a3;
      }

      else
      {
        v17 = v16 + 1;
        v18 = a3;
        do
        {
          v18 = v18[1];
          --v17;
        }

        while (v17 > 1);
      }

      v35 = a1[1];
      if (v18 == a4)
      {
        v36 = a1[1];
      }

      else
      {
        v37 = v18;
        v36 = a1[1];
        do
        {
          *v36 = v37[2];
          v36 += 8;
          v37 = v37[1];
          ++v35;
        }

        while (v37 != a4);
      }

      a1[1] = v35;
      if (v16 >= 1)
      {
        v38 = &__src[8 * a5];
        v39 = &v35[-a5];
        v40 = v35;
        while (v39 < v9)
        {
          v41 = *v39++;
          *v40++ = v41;
        }

        a1[1] = v40;
        if (v36 != v38)
        {
          memmove(&__src[8 * a5], __src, v35 - v38);
        }

        if (v18 != v7)
        {
          v42 = __src;
          do
          {
            *v42++ = v7[2];
            v7 = v7[1];
          }

          while (v7 != v18);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + ((v9 - *a1) >> 3);
  if (v12 >> 61)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 2 > v12)
  {
    v12 = v14 >> 2;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF8)
  {
    v15 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v15);
  }

  v25 = 8 * (v13 >> 3);
  v26 = 8 * a5;
  v27 = v25;
  do
  {
    *v27++ = v7[2];
    v7 = v7[1];
    v26 -= 8;
  }

  while (v26);
  memcpy((v25 + 8 * a5), __src, a1[1] - __src);
  v28 = *a1;
  v29 = v25 + 8 * a5 + a1[1] - __src;
  a1[1] = __src;
  v30 = (__src - v28);
  v31 = (v25 - (__src - v28));
  memcpy(v31, v28, v30);
  v32 = *a1;
  *a1 = v31;
  a1[1] = v29;
  a1[2] = 0;
  if (v32)
  {
    operator delete(v32);
  }

  return v25;
}

void *std::vector<CMTime>::__assign_with_size[abi:ne200100]<CMTime*,CMTime*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<PCVector3<double>>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void OZDynamicVertex::OZDynamicVertex(OZDynamicVertex *this, const CMTime *a2, double a3, const CMTime *a4)
{
  OZVertex::OZVertex(this, a2);
  *v6 = &unk_28724A808;
  v7 = (v6 + 48);
  TXParagraphStyleFolder_Factory::createInstance(v6, v8);
  PCURL::PCURL(&v34, @"Dynamic Vertex");
  v9 = OZDynamicVertex::_id++;
  OZChannelVertexFolder::OZChannelVertexFolder(v7, &v34, 0, v9, 0x10000u);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v10, v11);
  PCURL::PCURL(&v34, @"Dynamic Vertex Enabled");
  Instance = OZDynamicVertex::OZDynamicVertex_enabledImpl::getInstance(v12);
  OZChannelBool::OZChannelBool((this + 184), 1, &v34, v7, 1u, 0x10000u, Instance, 0);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v14, v15);
  PCURL::PCURL(&v34, @"Dynamic Vertex Value");
  OZChannelDouble::OZChannelDouble((this + 336), a3, &v34, v7, 2u, 0x10000, 0, 0);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v16, v17);
  PCURL::PCURL(&v34, @"Dynamic Vertex Bias");
  v19 = OZDynamicVertex::OZDynamicVertex_biasImpl::getInstance(v18);
  OZChannelDouble::OZChannelDouble((this + 488), 1.0, &v34, v7, 3u, 0x10000, v19, 0);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v20, v21);
  PCURL::PCURL(&v34, @"Dynamic Vertex Input Tangent");
  v23 = OZDynamicVertex::OZDynamicVertex_tanInVImpl::getInstance(v22);
  OZChannelDouble::OZChannelDouble((this + 640), 0.0, &v34, v7, 4u, 0x10000, v23, 0);
  PCString::~PCString(&v34);
  TXParagraphStyleFolder_Factory::createInstance(v24, v25);
  PCURL::PCURL(&v34, @"Dynamic Vertex Output Tangent");
  v27 = OZDynamicVertex::OZDynamicVertex_tanOutVImpl::getInstance(v26);
  OZChannelDouble::OZChannelDouble((this + 792), 0.0, &v34, v7, 5u, 0x10000, v27, 0);
  PCString::~PCString(&v34);
  *(this + 2) |= 8u;
  *(this + 3) = 4;
  OZChannelBase::saveStateAsDefault((this + 184));
  OZChannel::setShouldCreateTangents((this + 336), 0);
  v28 = OZChannelBase::setFlag(this + 3, 0x100000000, 1);
  v29 = OZDynamicVertex::OZDynamicVertex_biasImpl::getInstance(v28);
  OZChannelImpl::setShouldCreateTangents(v29);
  v30 = OZChannelBase::saveStateAsDefault((this + 488));
  v31 = OZDynamicVertex::OZDynamicVertex_tanInVImpl::getInstance(v30);
  OZChannelImpl::setShouldCreateTangents(v31);
  v32 = OZChannelBase::saveStateAsDefault((this + 640));
  v33 = OZDynamicVertex::OZDynamicVertex_tanOutVImpl::getInstance(v32);
  OZChannelImpl::setShouldCreateTangents(v33);
  OZChannelBase::saveStateAsDefault((this + 792));
  OZChannelFolder::finishInitializing(v7);
}

void sub_25FEAA8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBool::~OZChannelBool((v10 + 184));
  OZChannelVertexFolder::~OZChannelVertexFolder(v11);
  OZChannelBase::setRangeName(v10, v13);
  _Unwind_Resume(a1);
}

void OZDynamicVertex::OZDynamicVertex(OZDynamicVertex *this, const OZDynamicVertex *a2)
{
  OZVertex::OZVertex(this, a2);
  *v4 = &unk_28724A808;
  v5 = (v4 + 6);
  OZChannelVertexFolder::OZChannelVertexFolder((v4 + 6), (a2 + 48), 0);
  OZChannelBool::OZChannelBool((this + 184), (a2 + 184), v5);
  OZChannel::OZChannel((this + 336), a2 + 3, v5);
  *(this + 42) = &unk_287245C60;
  *(this + 44) = &unk_287245FC0;
  OZChannel::OZChannel((this + 488), (a2 + 488), v5);
  *(this + 61) = &unk_287245C60;
  *(this + 63) = &unk_287245FC0;
  OZChannel::OZChannel((this + 640), (a2 + 640), v5);
  *(this + 80) = &unk_287245C60;
  *(this + 82) = &unk_287245FC0;
  OZChannel::OZChannel((this + 792), (a2 + 792), v5);
  *(this + 99) = &unk_287245C60;
  *(this + 101) = &unk_287245FC0;
  OZChannel::copy((this + 184), (a2 + 184), 1);
  OZChannel::copy((this + 336), a2 + 3, 1);
  OZChannel::copy((this + 488), (a2 + 488), 1);
  OZChannel::copy((this + 640), (a2 + 640), 1);
  OZChannel::copy((this + 792), (a2 + 792), 1);
}

void sub_25FEAABB0(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannelBool::~OZChannelBool((v1 + 184));
  OZChannelVertexFolder::~OZChannelVertexFolder(v2);
  OZChannelBase::setRangeName(v1, v7);
  _Unwind_Resume(a1);
}

void OZDynamicVertex::~OZDynamicVertex(OZDynamicVertex *this)
{
  *this = &unk_28724A808;
  v2 = (this + 48);
  OZChannel::~OZChannel((this + 792));
  OZChannel::~OZChannel((this + 640));
  OZChannel::~OZChannel((this + 488));
  OZChannel::~OZChannel((this + 336));
  OZChannelBool::~OZChannelBool((this + 184));
  OZChannelVertexFolder::~OZChannelVertexFolder(v2);

  OZChannelBase::setRangeName(this, v3);
}

{
  OZDynamicVertex::~OZDynamicVertex(this);

  JUMPOUT(0x2666E9F00);
}

BOOL OZDynamicVertex::isEqual(OZDynamicVertex *this, const OZVertex *lpsrc)
{
  if (lpsrc)
  {
  }

  else
  {
    v4 = 0;
  }

  return OZVertex::isEqual(this, lpsrc) && (*(*(this + 23) + 240))(this + 184, v4 + 184) && (*(*(this + 42) + 240))(this + 336, v4 + 336) && (*(*(this + 80) + 240))(this + 640, v4 + 640) && ((*(*(this + 99) + 240))(this + 792, v4 + 792) & 1) != 0;
}

uint64_t OZDynamicVertex::setValueV(uint64_t this, double a2, const CMTime *a3)
{
  if ((*(this + 8) & 2) == 0)
  {
    return OZChannel::setValueOffsetByBehaviors((this + 336), a3, a2);
  }

  return this;
}

uint64_t OZDynamicVertex::setBias(uint64_t this, double a2, const CMTime *a3)
{
  if ((*(this + 8) & 2) == 0)
  {
    if (*(this + 12) != 10 && a2 > 1.0)
    {
      a2 = 1.0;
    }

    return OZChannel::setValueOffsetByBehaviors((this + 488), a3, a2);
  }

  return this;
}

void OZDynamicVertex::getInputTangents(OZDynamicVertex *this, double *a2, double *a3, const CMTime *a4)
{
  if (a2)
  {
    *a2 = 0.0;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 640), a4, 0.0);
    *a3 = v5;
  }
}

void OZDynamicVertex::getOutputTangents(OZDynamicVertex *this, double *a2, double *a3, const CMTime *a4)
{
  if (a2)
  {
    *a2 = 0.0;
  }

  if (a3)
  {
    OZChannel::getValueAsDouble((this + 792), a4, 0.0);
    *a3 = v5;
  }
}

_BYTE *OZDynamicVertex::setInputTangents(_BYTE *this, double a2, double a3, const CMTime *a4)
{
  if ((this[8] & 2) == 0)
  {
    v6 = this;
    this = (*(*this + 136))(this, MEMORY[0x277CC08F0], a2);
    if (this)
    {

      return OZChannel::setValueOffsetByBehaviors((v6 + 640), a4, a3);
    }
  }

  return this;
}

_BYTE *OZDynamicVertex::setOutputTangents(_BYTE *this, double a2, double a3, const CMTime *a4)
{
  if ((this[8] & 2) == 0)
  {
    v6 = this;
    this = (*(*this + 136))(this, MEMORY[0x277CC08F0], a2);
    if (this)
    {

      return OZChannel::setValueOffsetByBehaviors((v6 + 792), a4, a3);
    }
  }

  return this;
}

_BYTE *OZDynamicVertex::flattenTangents(_BYTE *this, const CMTime *a2)
{
  if ((this[8] & 2) == 0)
  {
    v3 = this;
    this = (*(*this + 136))(this, MEMORY[0x277CC08F0]);
    if (this)
    {
      (*(*v3 + 160))(v3, 1);
      OZChannel::setValueOffsetByBehaviors((v3 + 640), a2, 0.0);

      return OZChannel::setValueOffsetByBehaviors((v3 + 792), a2, 0.0);
    }
  }

  return this;
}

_BYTE *OZDynamicVertex::resetTangents(_BYTE *this)
{
  if ((this[8] & 2) == 0)
  {
    v1 = this;
    this = (*(*this + 136))(this, MEMORY[0x277CC08F0]);
    if (this)
    {
      (*(*v1 + 160))(v1, 1);
      OZChannel::setDefaultValue((v1 + 640), 0.0);
      OZChannel::setKeyframesValue((v1 + 640), 0.0);
      OZChannel::setDefaultValue((v1 + 792), 0.0);

      return OZChannel::setKeyframesValue((v1 + 792), 0.0);
    }
  }

  return this;
}

void OZDynamicVertex::setChannel(OZDynamicVertex *this, OZChannelVertexFolder *a2)
{
  v4 = this + 48;
  OZChannelFolder::operator=(this + 48);
  *(this + 22) = *(a2 + 16);
  Descendant = OZChannelFolder::getDescendant(a2, *(this + 52));
  OZChannel::copy((this + 184), Descendant, 0);
  *(this + 29) = v4;
  v6 = OZChannelFolder::getDescendant(a2, *(this + 90));
  OZChannel::copy((this + 336), v6, 0);
  *(this + 48) = v4;
  v7 = OZChannelFolder::getDescendant(a2, *(this + 128));
  OZChannel::copy((this + 488), v7, 0);
  *(this + 67) = v4;
  v8 = OZChannelFolder::getDescendant(a2, *(this + 166));
  OZChannel::copy((this + 640), v8, 0);
  *(this + 86) = v4;
  v9 = OZChannelFolder::getDescendant(a2, *(this + 204));
  OZChannel::copy((this + 792), v9, 0);
  *(this + 105) = v4;
}

void OZDynamicVertex::swapTangents(OZDynamicVertex *this)
{
  OZChannel::OZChannel(&v7, (this + 640), 0);
  v7.var0 = &unk_287245C60;
  v7.var2 = &unk_287245FC0;
  OZChannelBase::operator=(this + 640, this + 792);
  v2 = OZChannelBase::operator=(this + 792, &v7);
  TXParagraphStyleFolder_Factory::createInstance(v2, v3);
  PCURL::PCURL(&v6, @"Dynamic Vertex Input Tangent");
  OZChannelBase::setName((this + 640), &v6, 0);
  PCString::~PCString(&v6);
  v4 = OZChannelBase::setID((this + 640), 4u);
  TXParagraphStyleFolder_Factory::createInstance(v4, v5);
  PCURL::PCURL(&v6, @"Dynamic Vertex Output Tangent");
  OZChannelBase::setName((this + 792), &v6, 0);
  PCString::~PCString(&v6);
  OZChannelBase::setID((this + 792), 5u);
  OZChannel::~OZChannel(&v7);
}

void sub_25FEAB3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, OZChannel *a10)
{
  PCString::~PCString(&a9);
  OZChannel::~OZChannel(&a10);
  _Unwind_Resume(a1);
}

BOOL OZDynamicVertex::isFlat(OZDynamicVertex *this)
{
  KeyframeMinValue = OZChannel::getKeyframeMinValue((this + 640), 0);
  KeyframeMaxValue = OZChannel::getKeyframeMaxValue((this + 640), 0);
  v4 = OZChannel::getKeyframeMinValue((this + 792), 0);
  v5 = OZChannel::getKeyframeMaxValue((this + 792), 0);
  result = 0;
  if (vabdd_f64(v5, v4) < 0.0000001)
  {
    v7 = fabs(v5) < 0.0000001;
    v8 = fabs(KeyframeMaxValue);
    if (vabdd_f64(KeyframeMaxValue, KeyframeMinValue) >= 0.0000001)
    {
      v7 = 0;
    }

    return v8 < 0.0000001 && v7;
  }

  return result;
}

uint64_t OZDynamicVertex::setDefaultAtCurrentTime(OZDynamicVertex *this, const CMTime *a2)
{
  OZChannel::setDefaultAtCurrentTime((this + 184), a2);
  OZChannel::setDefaultAtCurrentTime((this + 336), a2);
  OZChannel::setDefaultAtCurrentTime((this + 488), a2);
  OZChannel::setDefaultAtCurrentTime((this + 640), a2);

  return OZChannel::setDefaultAtCurrentTime((this + 792), a2);
}

void OZDynamicVertex::updateBias(OZDynamicVertex *this)
{
  v10 = 0.0;
  OZChannel::getKeyframes((this + 488), 0, &v8);
  v2 = v8;
  if (v9 == v8)
  {
    OZChannel::getValueAsDouble((this + 488), MEMORY[0x277CC08F0], 0.0);
    v10 = v6;
    v10 = OZBSplineInterpolator::convertBSplineBiasToLinear(v7, v6);
    OZChannel::setValueOffsetByBehaviors((this + 488), MEMORY[0x277CC08F0], v10);
    v2 = v8;
    if (!v8)
    {
      return;
    }

    goto LABEL_5;
  }

  v3 = 0;
  v4 = 1;
  do
  {
    Keyframe = OZChannel::getKeyframe((this + 488), v2[v3], 0, &v10);
    v10 = OZBSplineInterpolator::convertBSplineBiasToLinear(Keyframe, v10);
    OZChannel::setKeyframeValue((this + 488), v8[v3], v10);
    v3 = v4;
    v2 = v8;
    ++v4;
  }

  while (v3 < v9 - v8);
  if (v8)
  {
LABEL_5:
    v9 = v2;
    operator delete(v2);
  }
}

void sub_25FEAB624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

OZChannelBase *OZDynamicVertex::enableBehavior(OZDynamicVertex *this, char a2)
{
  v3 = (this + 336);
  if (a2)
  {
    OZChannelBase::resetFlag(v3, 0x80000000, 0);
    OZChannelBase::resetFlag((this + 640), 0x80000000, 0);

    return OZChannelBase::resetFlag((this + 792), 0x80000000, 0);
  }

  else
  {
    OZChannelBase::setFlag(v3, 0x80000000, 0);
    OZChannelBase::setFlag((this + 640), 0x80000000, 0);

    return OZChannelBase::setFlag((this + 792), 0x80000000, 0);
  }
}

uint64_t OZDynamicVertex::offsetVertexInTime(OZDynamicVertex *this, const CMTime *a2)
{
  OZChannel::linearTimeWarp((this + 184), 1.0, a2);
  OZChannel::linearTimeWarp((this + 336), 1.0, a2);
  OZChannel::linearTimeWarp((this + 488), 1.0, a2);
  OZChannel::linearTimeWarp((this + 640), 1.0, a2);

  return OZChannel::linearTimeWarp((this + 792), 1.0, a2);
}

uint64_t OZDynamicVertex::OZDynamicVertex_enabledImpl::getInstance(OZDynamicVertex::OZDynamicVertex_enabledImpl *this)
{
  if (atomic_load_explicit(&OZDynamicVertex::OZDynamicVertex_enabledImpl::getInstance(void)::OZDynamicVertex_enabledImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDynamicVertex::OZDynamicVertex_enabledImpl::getInstance(void)::OZDynamicVertex_enabledImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_enabledImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDynamicVertex::OZDynamicVertex_enabledImpl::_OZDynamicVertex_enabled;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_enabledImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZDynamicVertex::OZDynamicVertex_enabledImpl::_OZDynamicVertex_enabled)
  {
    operator new();
  }
}

uint64_t OZDynamicVertex::OZDynamicVertex_biasImpl::getInstance(OZDynamicVertex::OZDynamicVertex_biasImpl *this)
{
  if (atomic_load_explicit(&OZDynamicVertex::OZDynamicVertex_biasImpl::getInstance(void)::OZDynamicVertex_biasImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDynamicVertex::OZDynamicVertex_biasImpl::getInstance(void)::OZDynamicVertex_biasImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_biasImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDynamicVertex::OZDynamicVertex_biasImpl::_OZDynamicVertex_bias;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_biasImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZDynamicVertex::OZDynamicVertex_biasImpl::_OZDynamicVertex_bias)
  {
    operator new();
  }
}

uint64_t OZDynamicVertex::OZDynamicVertex_tanInVImpl::getInstance(OZDynamicVertex::OZDynamicVertex_tanInVImpl *this)
{
  if (atomic_load_explicit(&OZDynamicVertex::OZDynamicVertex_tanInVImpl::getInstance(void)::OZDynamicVertex_tanInVImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDynamicVertex::OZDynamicVertex_tanInVImpl::getInstance(void)::OZDynamicVertex_tanInVImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_tanInVImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDynamicVertex::OZDynamicVertex_tanInVImpl::_OZDynamicVertex_tanInV;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_tanInVImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZDynamicVertex::OZDynamicVertex_tanInVImpl::_OZDynamicVertex_tanInV)
  {
    operator new();
  }
}

uint64_t OZDynamicVertex::OZDynamicVertex_tanOutVImpl::getInstance(OZDynamicVertex::OZDynamicVertex_tanOutVImpl *this)
{
  if (atomic_load_explicit(&OZDynamicVertex::OZDynamicVertex_tanOutVImpl::getInstance(void)::OZDynamicVertex_tanOutVImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZDynamicVertex::OZDynamicVertex_tanOutVImpl::getInstance(void)::OZDynamicVertex_tanOutVImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_tanOutVImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZDynamicVertex::OZDynamicVertex_tanOutVImpl::_OZDynamicVertex_tanOutV;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZDynamicVertex::OZDynamicVertex_tanOutVImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZDynamicVertex::OZDynamicVertex_tanOutVImpl::_OZDynamicVertex_tanOutV)
  {
    operator new();
  }
}

void OZStaticVertex::OZStaticVertex(OZStaticVertex *this, const CMTime *a2, double a3)
{
  OZVertex::OZVertex(this, a2);
  *v4 = &unk_28724AB18;
  *(v4 + 48) = 1;
  *(v4 + 56) = a3;
  *(v4 + 64) = 0x3FF0000000000000;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
}

void OZStaticVertex::OZStaticVertex(OZStaticVertex *this, OZDynamicVertex *a2, const CMTime *a3)
{
  v7 = *(a2 + 16);
  OZVertex::OZVertex(this, &v7);
  *v6 = &unk_28724AB18;
  *(v6 + 48) = 1;
  *(this + 7) = (*(*a2 + 24))(a2, a3);
  *(this + 8) = (*(*a2 + 40))(a2, a3);
  (*(*a2 + 56))(a2, this + 72, this + 88, a3);
  (*(*a2 + 64))(a2, this + 80, this + 96, a3);
  *(this + 3) = (*(*a2 + 208))(a2);
}

void OZStaticVertex::OZStaticVertex(OZStaticVertex *this, const OZStaticVertex *a2)
{
  OZVertex::OZVertex(this, a2);
  *v3 = &unk_28724AB18;
  *(v3 + 48) = *(a2 + 48);
  *(v3 + 56) = *(a2 + 56);
  *(v3 + 88) = *(a2 + 11);
  *(v3 + 72) = *(a2 + 72);
  *(v3 + 96) = *(a2 + 12);
}

void OZStaticVertex::~OZStaticVertex(OZChannelBase *this, const PCString *a2)
{
  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

BOOL OZStaticVertex::isEqual(OZStaticVertex *this, const OZVertex *lpsrc)
{
  result = 0;
  if (lpsrc)
  {
    if (v4)
    {
      v5 = v4;
      if (OZVertex::isEqual(this, lpsrc) && *(this + 48) == *(v5 + 48) && *(this + 7) == v5[7] && *(this + 8) == v5[8] && *(this + 9) == v5[9] && *(this + 11) == v5[11] && *(this + 10) == v5[10] && *(this + 12) == v5[12])
      {
        return 1;
      }
    }
  }

  return result;
}

double OZStaticVertex::getValue(OZStaticVertex *this, CMTime *a2, double *a3, const CMTime *a4)
{
  if (a2)
  {
    v4 = *(this + 1);
    a2->epoch = *(this + 4);
    *&a2->value = v4;
  }

  if (a3)
  {
    *&v4 = *(this + 7);
    *a3 = v4;
  }

  return *&v4;
}

uint64_t OZStaticVertex::setValueV(uint64_t this, double a2, const CMTime *a3)
{
  if ((*(this + 8) & 2) == 0)
  {
    *(this + 56) = a2;
  }

  return this;
}

uint64_t OZStaticVertex::setBias(uint64_t this, double a2, const CMTime *a3)
{
  if ((*(this + 8) & 2) == 0)
  {
    *(this + 64) = a2;
  }

  return this;
}

double OZStaticVertex::getInputTangents(OZStaticVertex *this, double *a2, double *a3, const CMTime *a4)
{
  if (a2)
  {
    result = *(this + 9);
    *a2 = result;
  }

  if (a3)
  {
    result = *(this + 11);
    *a3 = result;
  }

  return result;
}

double OZStaticVertex::getOutputTangents(OZStaticVertex *this, double *a2, double *a3, const CMTime *a4)
{
  if (a2)
  {
    result = *(this + 10);
    *a2 = result;
  }

  if (a3)
  {
    result = *(this + 12);
    *a3 = result;
  }

  return result;
}

uint64_t OZStaticVertex::setInputTangents(uint64_t this, double a2, double a3, const CMTime *a4)
{
  if (a2 > 0.0)
  {
    a2 = 0.0;
  }

  if ((*(this + 8) & 2) == 0 && *(this + 48) == 1)
  {
    *(this + 72) = a2;
    *(this + 88) = a3;
  }

  return this;
}

uint64_t OZStaticVertex::setOutputTangents(uint64_t this, double a2, double a3, const CMTime *a4)
{
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  if ((*(this + 8) & 2) == 0 && *(this + 48) == 1)
  {
    *(this + 80) = a2;
    *(this + 96) = a3;
  }

  return this;
}

uint64_t OZStaticVertex::flattenTangents(uint64_t this, const CMTime *a2)
{
  if ((*(this + 8) & 2) == 0 && *(this + 48) == 1)
  {
    *(this + 88) = 0u;
    *(this + 72) = 0u;
    return (*(*this + 160))(this, 1);
  }

  return this;
}

int8x16_t OZStaticVertex::swapTangents(OZStaticVertex *this)
{
  *(this + 72) = vextq_s8(*(this + 72), *(this + 72), 8uLL);
  result = vextq_s8(*(this + 88), *(this + 88), 8uLL);
  *(this + 88) = result;
  return result;
}

double OZStaticVertex::offsetVertexInTime(OZStaticVertex *this, const CMTime *a2)
{
  v7 = *(this + 16);
  v6 = *a2;
  PC_CMTimeSaferAdd(&v7, &v6, &v4);
  result = *&v4;
  *(this + 1) = v4;
  *(this + 4) = v5;
  return result;
}

void OZVertex::OZVertex(OZVertex *this, const CMTime *a2)
{
  *this = &unk_28724AC50;
  epoch = a2->epoch;
  *(this + 1) = *&a2->value;
  *(this + 1) = 0x100000000;
  *(this + 4) = epoch;
  *(this + 5) = 0;
}

void OZVertex::OZVertex(OZVertex *this, const OZVertex *a2)
{
  *this = &unk_28724AC50;
  v2 = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *(this + 1) = v2;
  *(this + 1) = *(a2 + 1);
  *(this + 5) = *(a2 + 5);
}

BOOL OZVertex::isEqual(OZVertex *this, const OZVertex *a2)
{
  time1 = *(this + 16);
  v5 = *(a2 + 16);
  return !CMTimeCompare(&time1, &v5) && *(this + 3) == *(a2 + 3) && *(this + 2) == *(a2 + 2) && *(a2 + 5) == 0.0;
}

__n128 OZVertex::setValueU(OZVertex *this, const CMTime *a2)
{
  if ((*(this + 8) & 2) == 0)
  {
    time1 = *(this + 16);
    v5 = *a2;
    if (CMTimeCompare(&time1, &v5))
    {
      result = *&a2->value;
      *(this + 4) = a2->epoch;
      *(this + 1) = result;
    }
  }

  return result;
}

void sub_25FEAC814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  MEMORY[0x2666E9F00](v10, v11);
  _Unwind_Resume(a1);
}

void OZChannelSegmentVisitor::visitSegments(OZChannel *this, CMTime *a2, CMTime *a3, const CMTime *a4, OZChannelSegmentVisitor *a5)
{
  CurveInterface = OZChannel::getCurveInterface(this);
  OZChannel::isParametric(this);
  if (CurveInterface)
  {
  }

  else
  {
    v10 = 0;
  }

  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(v10);
  if (!FactoryForSerialization)
  {
    return;
  }

  v12 = FactoryForSerialization;
  if (!v14)
  {
    if (!v13)
    {
      return;
    }

    (*(*v13 + 16))(v13, MEMORY[0x277CC08F0], 0.0, 0.0);
    goto LABEL_12;
  }

  v15 = v14;
  v16 = PVInstructionGraphContext::HGNodeCache(v14);
  if (!v16)
  {
    goto LABEL_9;
  }

  v17 = v16;
  v18 = (*(v16 + 3) - *(v16 + 2)) >> 3;
  if (v18 == 1)
  {
    time1.value = 0;
    FirstVertex = OZSpline::getFirstVertex(v16);
    (*(*v17 + 264))(v17, FirstVertex, 0, &time1, MEMORY[0x277CC08F0]);
    (*(a4->value + 16))(a4, a2, a3, *&time1.value);
    return;
  }

  if (!v18)
  {
LABEL_9:
    (*(*v15 + 96))(v15);
LABEL_12:
    v19 = *(a4->value + 16);

    v19(a4, a2, a3);
    return;
  }

  v108 = 0;
  v109 = 0;
  v110 = 0;
  (*(*v16 + 24))(v16, &v108);
  v22 = LeftVertex;
  v23 = v109;
  if (v109 == LeftVertex)
  {
    v22 = v108;
    (*(*v17 + 264))(v17, *v108, &v107, 0, MEMORY[0x277CC08F0]);
    v42 = *v22;
    v105 = *a2;
    time1 = v107;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) >= 0)
    {
      v43 = a3;
    }

    else
    {
      v43 = &v107;
    }

    Extrapolation = OZSpline::getExtrapolation(v17, 1);
    if (Extrapolation <= 1)
    {
      if (Extrapolation)
      {
        if (Extrapolation == 1)
        {
          (*(a4->value + 24))(a4, v17, 0, v42, &v105, v43, &v105, v43, 0.0);
        }
      }

      else
      {
        (*(*v17 + 240))(v17, &v105, MEMORY[0x277CC08F0], 1);
        (*(a4->value + 16))(a4, &v105, v43);
      }

      goto LABEL_18;
    }

    switch(Extrapolation)
    {
      case 2:
        memset(&v123, 0, sizeof(v123));
        OZSpline::getMinValueU(v17, MEMORY[0x277CC08F0], 0, &v123);
        memset(&v122, 0, sizeof(v122));
        MaxValueU = OZSpline::getMaxValueU(v17, MEMORY[0x277CC08F0], 0, &v122);
        __p = 0;
        v120 = 0;
        v121 = 0;
        (*(*v17 + 24))(v17, &__p, MaxValueU);
        v101 = __p;
        v103 = v120;
        v74 = MEMORY[0x277CC08F0];
        while (1)
        {
          LOBYTE(v112) = 0;
          memset(&v118, 0, sizeof(v118));
          OZSpline::getStep(v17, &time1);
          OZChannelSegmentVisitor::mapPingPong(&v105, &v123, &v122, &time1, 0, &v112, &v118);
          (*(*v17 + 264))(v17, *v75, &v117, 0, v74);
          time1 = v118;
          time2 = v117;
          if (!CMTimeCompare(&time1, &time2))
          {
            time1 = v105;
            time2 = v123;
            if (CMTimeCompare(&time1, &time2))
            {
              (*(*v17 + 240))(v17, &v105, v74, 1);
              (*(a4->value + 16))(a4, &v105, &v105);
            }

            if (LOBYTE(v112) == 1 && v101 != v75)
            {
              v76 = *--v75;
              (*(*v17 + 264))(v17, v76, &v117, 0, v74);
            }
          }

          time1 = v105;
          time2 = *v43;
          if (!CMTimeCompare(&time1, &time2))
          {
            break;
          }

          v77 = v75 + 1;
          if (v75 + 1 != v103)
          {
            (*(*v17 + 264))(v17, *v77, &v116, 0, v74);
            if (LOBYTE(v112) == 1)
            {
              time1 = *v43;
              time2 = v105;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
              time1 = v118;
              time2 = v117;
              PC_CMTimeSaferSubtract(&time1, &time2, &v113);
              time1 = v113;
              time2 = v124;
              v78 = CMTimeCompare(&time1, &time2);
              v79 = &v124;
              if (v78 < 0)
              {
                v79 = &v113;
              }

              v115 = *v79;
              time1 = v118;
              time2 = v115;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
            }

            else
            {
              time1 = *v43;
              time2 = v105;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
              time1 = v116;
              time2 = v118;
              PC_CMTimeSaferSubtract(&time1, &time2, &v113);
              time1 = v113;
              time2 = v124;
              v80 = CMTimeCompare(&time1, &time2);
              v81 = &v124;
              if (v80 < 0)
              {
                v81 = &v113;
              }

              v115 = *v81;
              time1 = v118;
              time2 = v115;
              PC_CMTimeSaferAdd(&time1, &time2, &v124);
            }

            v114 = v124;
            v82 = *v75;
            v83 = *v77;
            time1 = v105;
            time2 = v115;
            PC_CMTimeSaferAdd(&time1, &time2, &v124);
            time2 = v105;
            v124 = v115;
            PC_CMTimeSaferAdd(&time2, &v124, &time1);
            v105 = time1;
          }
        }

        break;
      case 3:
        memset(&v123, 0, sizeof(v123));
        OZSpline::getMinValueU(v17, MEMORY[0x277CC08F0], 0, &v123);
        memset(&v122, 0, sizeof(v122));
        v84 = OZSpline::getMaxValueU(v17, MEMORY[0x277CC08F0], 0, &v122);
        __p = 0;
        v120 = 0;
        v121 = 0;
        (*(*v17 + 24))(v17, &__p, v84);
        v104 = v120;
        v101 = (v120 - 1);
        v85 = MEMORY[0x277CC08F0];
        while (1)
        {
          memset(&v118, 0, sizeof(v118));
          OZChannelSegmentVisitor::mapProgressiveRepeat(&v105, &v123, &v122, *(*(v17 + 21) + 4), &time1.value, &v118);
          (*(*v17 + 264))(v17, *v86, &v117, 0, v85);
          time1 = v118;
          time2 = v117;
          if (!CMTimeCompare(&time1, &time2))
          {
            time1 = v105;
            time2 = v123;
            if (CMTimeCompare(&time1, &time2))
            {
              (*(*v17 + 240))(v17, &v105, v85, 1);
              (*(a4->value + 16))(a4, &v105, &v105);
            }

            if (v86 == v101)
            {
              v86 = __p;
              (*(*v17 + 264))(v17, *__p, &v117, 0, v85);
              v118 = v117;
            }
          }

          time1 = v105;
          time2 = *v43;
          if (!CMTimeCompare(&time1, &time2))
          {
            break;
          }

          v87 = v86 + 1;
          if (v86 + 1 != v104)
          {
            (*(*v17 + 264))(v17, *v87, &v116, 0, v85);
            time1 = *v43;
            time2 = v105;
            PC_CMTimeSaferSubtract(&time1, &time2, &v124);
            time1 = v116;
            time2 = v118;
            PC_CMTimeSaferSubtract(&time1, &time2, &v114);
            time1 = v114;
            time2 = v124;
            v88 = CMTimeCompare(&time1, &time2);
            v89 = &v124;
            if (v88 < 0)
            {
              v89 = &v114;
            }

            v115 = *v89;
            memset(&v114, 0, sizeof(v114));
            time1 = v118;
            time2 = v115;
            PC_CMTimeSaferAdd(&time1, &time2, &v114);
            v90 = *v86;
            v91 = *v87;
            time1 = v105;
            time2 = v115;
            PC_CMTimeSaferAdd(&time1, &time2, &v124);
            time2 = v105;
            v124 = v115;
            PC_CMTimeSaferAdd(&time2, &v124, &time1);
            v105 = time1;
          }
        }

        break;
      case 4:
        memset(&v123, 0, sizeof(v123));
        OZSpline::getMinValueU(v17, MEMORY[0x277CC08F0], 0, &v123);
        memset(&v122, 0, sizeof(v122));
        v45 = OZSpline::getMaxValueU(v17, MEMORY[0x277CC08F0], 0, &v122);
        __p = 0;
        v120 = 0;
        v121 = 0;
        (*(*v17 + 24))(v17, &__p, v45);
        v102 = v120;
        v112 = 0.0;
        v113.value = 0;
        (*(*v17 + 264))(v17, v42, 0, &v113, MEMORY[0x277CC08F0]);
        DepthBuffer = DepthBufferManager::getDepthBuffer(v17);
        (*(*v17 + 264))(v17, DepthBuffer, 0, &v112, MEMORY[0x277CC08F0]);
        v47 = *&v113.value - v112;
        v101 = (v102 - 1);
        v48 = MEMORY[0x277CC08F0];
        while (1)
        {
          v111 = 0;
          memset(&v118, 0, sizeof(v118));
          OZChannelSegmentVisitor::mapProgressiveRepeat(&v105, &v123, &v122, *(*(v17 + 21) + 4), &v111, &v118);
          (*(*v17 + 264))(v17, *v49, &v117, 0, v48);
          time1 = v118;
          time2 = v117;
          if (!CMTimeCompare(&time1, &time2))
          {
            time1 = v105;
            time2 = v123;
            if (CMTimeCompare(&time1, &time2))
            {
              (*(*v17 + 240))(v17, &v105, v48, 1);
              (*(a4->value + 16))(a4, &v105, &v105);
            }

            if (v49 == v101)
            {
              v49 = __p;
              (*(*v17 + 264))(v17, *__p, &v117, 0, v48);
              v118 = v117;
              --v111;
            }
          }

          time1 = v105;
          time2 = *v43;
          if (!CMTimeCompare(&time1, &time2))
          {
            break;
          }

          v50 = v49 + 1;
          if (v49 + 1 != v102)
          {
            (*(*v17 + 264))(v17, *v50, &v116, 0, v48);
            time1 = *v43;
            time2 = v105;
            PC_CMTimeSaferSubtract(&time1, &time2, &v124);
            time1 = v116;
            time2 = v118;
            PC_CMTimeSaferSubtract(&time1, &time2, &v114);
            time1 = v114;
            time2 = v124;
            v51 = CMTimeCompare(&time1, &time2);
            v52 = &v124;
            if (v51 < 0)
            {
              v52 = &v114;
            }

            v115 = *v52;
            memset(&v114, 0, sizeof(v114));
            time1 = v118;
            time2 = v115;
            PC_CMTimeSaferAdd(&time1, &time2, &v114);
            v53 = *v49;
            v54 = *v50;
            time1 = v105;
            time2 = v115;
            PC_CMTimeSaferAdd(&time1, &time2, &v124);
            time2 = v105;
            v124 = v115;
            PC_CMTimeSaferAdd(&time2, &v124, &time1);
            v105 = time1;
          }
        }

        break;
      default:
        goto LABEL_18;
    }

    if (__p)
    {
      v120 = __p;
      operator delete(__p);
    }

    goto LABEL_18;
  }

  (*(*v17 + 264))(v17, *LeftVertex, &v107, 0, MEMORY[0x277CC08F0]);
LABEL_18:
  v24 = (v22 + 1);
  v25 = MEMORY[0x277CC08F0];
  while (1)
  {
    time1 = v107;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      break;
    }

    time1 = *a2;
    time2 = v107;
    if (CMTimeCompare(&time1, &time2) >= 0)
    {
      v26 = a2;
    }

    else
    {
      v26 = &v107;
    }

    v124 = *v26;
    time1 = *v26;
    time2 = v107;
    if (!CMTimeCompare(&time1, &time2))
    {
      (*(*v17 + 240))(v17, &v124, v25, 1);
      (*(a4->value + 16))(a4, &v124, &v124);
    }

    if (v24 == v23)
    {
      goto LABEL_35;
    }

    (*(*v17 + 264))(v17, *v24, &v106, 0, v25);
    time1 = v106;
    time2 = *a3;
    if (CMTimeCompare(&time1, &time2) >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = &v106;
    }

    v123 = *v27;
    time1 = v124;
    time2 = *v27;
    if (CMTimeCompare(&time1, &time2) < 0 || (time1 = v124, time2 = v123, !CMTimeCompare(&time1, &time2)) && (time1 = v124, time2 = v107, CMTimeCompare(&time1, &time2)))
    {
    }

    v107 = v106;
    ++v24;
    ++v22;
  }

  --v24;
LABEL_35:
  time1 = *a3;
  time2 = v107;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    goto LABEL_157;
  }

  v28 = *(v24 - 1);
  time1 = *a2;
  time2 = v107;
  v29 = CMTimeCompare(&time1, &time2);
  v30 = &v107;
  if (v29 >= 0)
  {
    v30 = a2;
  }

  v105 = *v30;
  v31 = OZSpline::getExtrapolation(v17, 0);
  if (v31 <= 1)
  {
    if (v31)
    {
      if (v31 == 1)
      {
        (*(a4->value + 24))(a4, v17, v28, 0, &v105, a3, &v105, a3, 0.0);
      }
    }

    else
    {
      (*(*v17 + 240))(v17, a3, MEMORY[0x277CC08F0], 1);
      (*(a4->value + 16))(a4, &v105, a3);
    }

    goto LABEL_157;
  }

  switch(v31)
  {
    case 2:
      memset(&v123, 0, sizeof(v123));
      OZSpline::getMinValueU(v17, MEMORY[0x277CC08F0], 0, &v123);
      memset(&v122, 0, sizeof(v122));
      v55 = OZSpline::getMaxValueU(v17, MEMORY[0x277CC08F0], 0, &v122);
      __p = 0;
      v120 = 0;
      v121 = 0;
      (*(*v17 + 24))(v17, &__p, v55);
      v56 = v120;
      if (*(*(v17 + 21) + 4))
      {
        v57 = MEMORY[0x277CC08F0];
        while (1)
        {
          LOBYTE(v112) = 0;
          memset(&v118, 0, sizeof(v118));
          OZSpline::getStep(v17, &time1);
          OZChannelSegmentVisitor::mapPingPong(&v105, &v123, &v122, &time1, 1, &v112, &v118);
          (*(*v17 + 264))(v17, *v58, &v117, 0, v57);
          time1 = v105;
          time2 = *a3;
          if (!CMTimeCompare(&time1, &time2))
          {
            break;
          }

          v59 = v58 + 1;
          if (v58 + 1 != v56)
          {
            (*(*v17 + 264))(v17, *v59, &v116, 0, v57);
            if (LOBYTE(v112) == 1)
            {
              time1 = *a3;
              time2 = v105;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
              time1 = v118;
              time2 = v117;
              PC_CMTimeSaferSubtract(&time1, &time2, &v113);
              time1 = v113;
              time2 = v124;
              if (CMTimeCompare(&time1, &time2) >= 0)
              {
                v60 = &v124;
              }

              else
              {
                v60 = &v113;
              }

              v115 = *v60;
              time1 = v118;
              time2 = v115;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
            }

            else
            {
              time1 = *a3;
              time2 = v105;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
              time1 = v116;
              time2 = v118;
              PC_CMTimeSaferSubtract(&time1, &time2, &v113);
              time1 = v113;
              time2 = v124;
              if (CMTimeCompare(&time1, &time2) >= 0)
              {
                v61 = &v124;
              }

              else
              {
                v61 = &v113;
              }

              v115 = *v61;
              time1 = v118;
              time2 = v115;
              PC_CMTimeSaferAdd(&time1, &time2, &v124);
            }

            v114 = v124;
            v62 = *v58;
            v63 = *v59;
            time1 = v105;
            time2 = v115;
            PC_CMTimeSaferAdd(&time1, &time2, &v124);
            time2 = v105;
            v124 = v115;
            PC_CMTimeSaferAdd(&time2, &v124, &time1);
            v105 = time1;
          }
        }
      }

      else
      {
        v92 = __p;
        v93 = MEMORY[0x277CC08F0];
        while (1)
        {
          LOBYTE(v112) = 0;
          memset(&v118, 0, sizeof(v118));
          OZSpline::getStep(v17, &time1);
          OZChannelSegmentVisitor::mapPingPong(&v105, &v123, &v122, &time1, 0, &v112, &v118);
          (*(*v17 + 264))(v17, *v94, &v117, 0, v93);
          time1 = v118;
          time2 = v117;
          if (!CMTimeCompare(&time1, &time2))
          {
            time1 = v105;
            time2 = v122;
            if (CMTimeCompare(&time1, &time2))
            {
              (*(*v17 + 240))(v17, &v105, v93, 1);
              (*(a4->value + 16))(a4, &v105, &v105);
            }

            if (LOBYTE(v112) == 1 && v92 != v94)
            {
              v95 = *--v94;
              (*(*v17 + 264))(v17, v95, &v117, 0, v93);
            }
          }

          time1 = v105;
          time2 = *a3;
          if (!CMTimeCompare(&time1, &time2))
          {
            break;
          }

          v96 = v94 + 1;
          if (v94 + 1 != v56)
          {
            (*(*v17 + 264))(v17, *v96, &v116, 0, v93);
            if (LOBYTE(v112) == 1)
            {
              time1 = *a3;
              time2 = v105;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
              time1 = v118;
              time2 = v117;
              PC_CMTimeSaferSubtract(&time1, &time2, &v113);
              time1 = v113;
              time2 = v124;
              if (CMTimeCompare(&time1, &time2) >= 0)
              {
                v97 = &v124;
              }

              else
              {
                v97 = &v113;
              }

              v115 = *v97;
              time1 = v118;
              time2 = v115;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
            }

            else
            {
              time1 = *a3;
              time2 = v105;
              PC_CMTimeSaferSubtract(&time1, &time2, &v124);
              time1 = v116;
              time2 = v118;
              PC_CMTimeSaferSubtract(&time1, &time2, &v113);
              time1 = v113;
              time2 = v124;
              if (CMTimeCompare(&time1, &time2) >= 0)
              {
                v98 = &v124;
              }

              else
              {
                v98 = &v113;
              }

              v115 = *v98;
              time1 = v118;
              time2 = v115;
              PC_CMTimeSaferAdd(&time1, &time2, &v124);
            }

            v114 = v124;
            v99 = *v94;
            v100 = *v96;
            time1 = v105;
            time2 = v115;
            PC_CMTimeSaferAdd(&time1, &time2, &v124);
            time2 = v105;
            v124 = v115;
            PC_CMTimeSaferAdd(&time2, &v124, &time1);
            v105 = time1;
          }
        }
      }

      goto LABEL_155;
    case 3:
      memset(&v123, 0, sizeof(v123));
      OZSpline::getMinValueU(v17, MEMORY[0x277CC08F0], 0, &v123);
      memset(&v122, 0, sizeof(v122));
      v64 = OZSpline::getMaxValueU(v17, MEMORY[0x277CC08F0], 0, &v122);
      __p = 0;
      v120 = 0;
      v121 = 0;
      (*(*v17 + 24))(v17, &__p, v64);
      v65 = v120;
      v66 = v120 - 1;
      v67 = MEMORY[0x277CC08F0];
      while (1)
      {
        memset(&v118, 0, sizeof(v118));
        OZChannelSegmentVisitor::mapProgressiveRepeat(&v105, &v123, &v122, *(*(v17 + 21) + 4), &time1.value, &v118);
        (*(*v17 + 264))(v17, *v68, &v117, 0, v67);
        time1 = v118;
        time2 = v117;
        if (!CMTimeCompare(&time1, &time2))
        {
          time1 = v105;
          time2 = v122;
          if (CMTimeCompare(&time1, &time2))
          {
            (*(*v17 + 240))(v17, &v105, v67, 1);
            (*(a4->value + 16))(a4, &v105, &v105);
          }

          if (v68 == v66)
          {
            v68 = __p;
            (*(*v17 + 264))(v17, *__p, &v117, 0, v67);
            v118 = v117;
          }
        }

        time1 = v105;
        time2 = *a3;
        if (!CMTimeCompare(&time1, &time2))
        {
          break;
        }

        v69 = v68 + 1;
        if (v68 + 1 != v65)
        {
          (*(*v17 + 264))(v17, *v69, &v116, 0, v67);
          time1 = *a3;
          time2 = v105;
          PC_CMTimeSaferSubtract(&time1, &time2, &v124);
          time1 = v116;
          time2 = v118;
          PC_CMTimeSaferSubtract(&time1, &time2, &v114);
          time1 = v114;
          time2 = v124;
          if (CMTimeCompare(&time1, &time2) >= 0)
          {
            v70 = &v124;
          }

          else
          {
            v70 = &v114;
          }

          v115 = *v70;
          memset(&v114, 0, sizeof(v114));
          time1 = v118;
          time2 = v115;
          PC_CMTimeSaferAdd(&time1, &time2, &v114);
          v71 = *v68;
          v72 = *v69;
          time1 = v105;
          time2 = v115;
          PC_CMTimeSaferAdd(&time1, &time2, &v124);
          time2 = v105;
          v124 = v115;
          PC_CMTimeSaferAdd(&time2, &v124, &time1);
          v105 = time1;
        }
      }

      goto LABEL_155;
    case 4:
      memset(&v123, 0, sizeof(v123));
      OZSpline::getMinValueU(v17, MEMORY[0x277CC08F0], 0, &v123);
      memset(&v122, 0, sizeof(v122));
      v32 = OZSpline::getMaxValueU(v17, MEMORY[0x277CC08F0], 0, &v122);
      __p = 0;
      v120 = 0;
      v121 = 0;
      (*(*v17 + 24))(v17, &__p, v32);
      v33 = v120;
      v112 = 0.0;
      v113.value = 0;
      v34 = OZSpline::getFirstVertex(v17);
      (*(*v17 + 264))(v17, v34, 0, &v113, MEMORY[0x277CC08F0]);
      (*(*v17 + 264))(v17, v28, 0, &v112, MEMORY[0x277CC08F0]);
      v35 = v112 - *&v113.value;
      v36 = MEMORY[0x277CC08F0];
      while (1)
      {
        v111 = 0;
        memset(&v118, 0, sizeof(v118));
        OZChannelSegmentVisitor::mapProgressiveRepeat(&v105, &v123, &v122, *(*(v17 + 21) + 4), &v111, &v118);
        (*(*v17 + 264))(v17, *v37, &v117, 0, v36);
        time1 = v118;
        time2 = v117;
        if (!CMTimeCompare(&time1, &time2))
        {
          time1 = v105;
          time2 = v122;
          if (CMTimeCompare(&time1, &time2))
          {
            (*(*v17 + 240))(v17, &v105, v36, 1);
            (*(a4->value + 16))(a4, &v105, &v105);
          }

          if (v37 == v33 - 1)
          {
            v37 = __p;
            (*(*v17 + 264))(v17, *__p, &v117, 0, v36);
            v118 = v117;
            ++v111;
          }
        }

        time1 = v105;
        time2 = *a3;
        if (!CMTimeCompare(&time1, &time2))
        {
          break;
        }

        v38 = v37 + 1;
        if (v37 + 1 != v33)
        {
          (*(*v17 + 264))(v17, *v38, &v116, 0, v36);
          time1 = *a3;
          time2 = v105;
          PC_CMTimeSaferSubtract(&time1, &time2, &v124);
          time1 = v116;
          time2 = v118;
          PC_CMTimeSaferSubtract(&time1, &time2, &v114);
          time1 = v114;
          time2 = v124;
          if (CMTimeCompare(&time1, &time2) >= 0)
          {
            v39 = &v124;
          }

          else
          {
            v39 = &v114;
          }

          v115 = *v39;
          memset(&v114, 0, sizeof(v114));
          time1 = v118;
          time2 = v115;
          PC_CMTimeSaferAdd(&time1, &time2, &v114);
          v40 = *v37;
          v41 = *v38;
          time1 = v105;
          time2 = v115;
          PC_CMTimeSaferAdd(&time1, &time2, &v124);
          time2 = v105;
          v124 = v115;
          PC_CMTimeSaferAdd(&time2, &v124, &time1);
          v105 = time1;
        }
      }

LABEL_155:
      if (__p)
      {
        v120 = __p;
        operator delete(__p);
      }

      break;
  }

LABEL_157:
  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }
}

void sub_25FEAFFA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void *anonymous namespace::findLeftVertex(uint64_t a1, void *a2, CMTime *a3)
{
  v4 = *a2;
  v5 = a2[1] - *a2;
  if (v5)
  {
    v8 = v5 >> 3;
    v9 = MEMORY[0x277CC08F0];
    do
    {
      v10 = &v4[v8 >> 1];
      v12 = *v10;
      v11 = v10 + 1;
      (*(*a1 + 264))(a1, v12, &v15, 0, v9);
      time1 = v15;
      time2 = *a3;
      v13 = CMTimeCompare(&time1, &time2);
      if (v13 >= 0)
      {
        v8 >>= 1;
      }

      else
      {
        v8 += ~(v8 >> 1);
      }

      if (v13 < 0)
      {
        v4 = v11;
      }
    }

    while (v8);
    if (v4 != a2[1])
    {
      (*(*a1 + 264))(a1, *v4, &v15, 0, MEMORY[0x277CC08F0]);
      time1 = v15;
      time2 = *a3;
      v4 += CMTimeCompare(&time1, &time2) == 0;
    }
  }

  if (v4 == *a2)
  {
    return a2[1];
  }

  else
  {
    return v4 - 1;
  }
}

uint64_t anonymous namespace::InteriorSegment(OZInterpolators **this, OZSpline *a2, void *a3, void *a4, const CMTime *a5, const CMTime *a6, const CMTime *a7, const CMTime *a8, double a9, OZChannelSegmentVisitor *a10)
{
  v22 = 0;
  result = OZSpline::getVertexInterpolation(this, a2, &v22, 0);
  if (v22 <= 7)
  {
    if (v22 <= 3)
    {
      if (v22)
      {
        if (v22 == 1)
        {
          return (*(a8->value + 24))(a8, this, a2, a3, a4, a5, a6, a7, a9);
        }
      }

      else
      {
        v24 = *a6;
        v23 = *a7;
        PC_CMTimeSaferAdd(&v24, &v23, &v21);
        v20 = operator/(&v21, 2, &v24);
        (*(*this + 30))(this, &v24, MEMORY[0x277CC08F0], 1, v20);
        return (*(a8->value + 16))(a8, a6, a7);
      }
    }

    else
    {
      switch(v22)
      {
        case 4u:
          return (*(a8->value + 32))(a8, this, a2, a3, a4, a5, a6, a7, a9);
        case 6u:
          return (*(a8->value + 40))(a8, this, a2, a3, a4, a5, a6, a7, a9);
        case 7u:
          return (*(a8->value + 48))(a8, this, a2, a3, a4, a5, a6, a7, a9);
      }
    }
  }

  else if (v22 > 14)
  {
    switch(v22)
    {
      case 0xFu:
        return (*(a8->value + 64))(a8, this, a2, a3, a4, a5, a6, a7, a9);
      case 0x10u:
        return (*(a8->value + 72))(a8, this, a2, a3, a4, a5, a6, a7, a9);
      case 0x11u:
        return (*(a8->value + 80))(a8, this, a2, a3, a4, a5, a6, a7, a9);
    }
  }

  else
  {
    switch(v22)
    {
      case 8u:
        return (*(a8->value + 56))(a8, this, a2, a3, a4, a5, a6, a7, a9);
      case 0xDu:
        return (*(a8->value + 88))(a8, this, a2, a3, a4, a5, a6, a7, a9);
      case 0xEu:
        return (*(a8->value + 96))(a8, this, a2, a3, a4, a5, a6, a7, a9);
    }
  }

  return result;
}

void OZChannelSegmentVisitor::mapPingPong(CMTime *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, const CMTime *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v9 = a5;
  memset(&v25, 0, sizeof(v25));
  time1 = *a3;
  time2 = *a2;
  PC_CMTimeSaferSubtract(&time1, &time2, &v25);
  time1 = v25;
  v15 = MEMORY[0x277CC08F0];
  time2 = **&MEMORY[0x277CC08F0];
  if (CMTimeCompare(&time1, &time2))
  {
    time1 = *this;
    time2 = *a2;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      time1 = *a2;
      time2 = *this;
      PC_CMTimeSaferSubtract(&time1, &time2, a7);
      operator*(&v25, &v23, 2.0);
      memset(&v24, 0, sizeof(v24));
      operator/(a7, &v23, &v24);
      CMTimeMake(&v26, 1, 1);
      time1 = v24;
      time2 = v26;
      PC_CMTimeFloorToSampleDuration(&time1, &time2, &v27);
      time1 = v24;
      time2 = v27;
      PC_CMTimeSaferSubtract(&time1, &time2, &v28);
      operator*(&v28.value, &v23, &time1);
      v24 = time1;
      epoch = time1.epoch;
      *a7 = *&time1.value;
      *(a7 + 16) = epoch;
      *&time1.value = *a7;
      time1.epoch = epoch;
      time2 = *v15;
      if (!CMTimeCompare(&time1, &time2))
      {
        operator*(&v25, &time1, 2.0);
        *a7 = time1;
      }

      time1 = *a7;
      time2 = v25;
      if (CMTimeCompare(&time1, &time2) >= 1)
      {
        operator*(&v25, 2, &v27);
        time1 = v27;
        time2 = *a7;
        PC_CMTimeSaferSubtract(&time1, &time2, &v28);
        v17 = 0;
        *a7 = *&v28.value;
        v18 = v28.epoch;
        goto LABEL_14;
      }
    }

    else
    {
      time1 = *this;
      time2 = *a3;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        *a7 = *&this->value;
        *(a7 + 16) = this->epoch;
        *a6 = 0;
        return;
      }

      if (!v9 || (time1 = v25, time2 = *a4, CMTimeCompare(&time1, &time2) < 0))
      {
        time1 = *this;
        time2 = *a2;
        PC_CMTimeSaferSubtract(&time1, &time2, a7);
        operator*(&v25, 2, &v23);
        memset(&v24, 0, sizeof(v24));
        operator/(a7, &v23, &v24);
        CMTimeMake(&v26, 1, 1);
        time1 = v24;
        time2 = v26;
        PC_CMTimeFloorToSampleDuration(&time1, &time2, &v27);
        time1 = v24;
        time2 = v27;
        PC_CMTimeSaferSubtract(&time1, &time2, &v28);
        operator*(&v28.value, &v23, &time1);
        v24 = time1;
        v21 = time1.epoch;
        *a7 = *&time1.value;
        *(a7 + 16) = v21;
        *&time1.value = *a7;
        time1.epoch = v21;
        time2 = v25;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v17 = 0;
          goto LABEL_21;
        }

        operator*(&v25, 2, &v27);
        time1 = v27;
        time2 = *a7;
        PC_CMTimeSaferSubtract(&time1, &time2, &v28);
        *a7 = *&v28.value;
        v22 = v28.epoch;
      }

      else
      {
        time1 = v25;
        time2 = *a4;
        if (!CMTimeCompare(&time1, &time2))
        {
          *a7 = *&v15->value;
          *(a7 + 16) = v15->epoch;
          *a6 = 0;
          goto LABEL_22;
        }

        time1 = *this;
        time2 = *a3;
        PC_CMTimeSaferSubtract(&time1, &time2, a7);
        memset(&v28, 0, sizeof(v28));
        time1 = v25;
        time2 = *a4;
        PC_CMTimeSaferSubtract(&time1, &time2, &v28);
        operator*(&v28, 2, &time2);
        PCMath::mod(a7, &time2, &time1);
        *a7 = *&time1.value;
        v16 = time1.epoch;
        *(a7 + 16) = time1.epoch;
        *&time1.value = *a7;
        time1.epoch = v16;
        time2 = v28;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          time1 = *a7;
          time2 = v28;
          PC_CMTimeSaferSubtract(&time1, &time2, &v26);
          time1 = v26;
          time2 = *a4;
          PC_CMTimeSaferAdd(&time1, &time2, &v27);
          v17 = 0;
          *a7 = *&v27.value;
          v18 = v27.epoch;
LABEL_14:
          *(a7 + 16) = v18;
LABEL_21:
          *a6 = v17;
LABEL_22:
          time2 = *a7;
          v28 = *a2;
          PC_CMTimeSaferAdd(&time2, &v28, &time1);
          *a7 = *&time1.value;
          v19 = time1.epoch;
          goto LABEL_23;
        }

        time1 = v28;
        time2 = *a7;
        PC_CMTimeSaferSubtract(&time1, &time2, &v27);
        *a7 = *&v27.value;
        v22 = v27.epoch;
      }

      *(a7 + 16) = v22;
    }

    v17 = 1;
    goto LABEL_21;
  }

  *a6 = 0;
  *a7 = *&a2->value;
  v19 = a2->epoch;
LABEL_23:
  *(a7 + 16) = v19;
}

void OZChannelSegmentVisitor::mapProgressiveRepeat(CMTime *this@<X0>, const CMTime *a2@<X1>, const CMTime *a3@<X2>, const CMTime *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4;
  memset(&v22, 0, sizeof(v22));
  time1 = *a3;
  time2 = *a2;
  PC_CMTimeSaferSubtract(&time1, &time2, &v22);
  time1 = v22;
  time2 = **&MEMORY[0x277CC08F0];
  if (!CMTimeCompare(&time1, &time2))
  {
    *a5 = 0;
    *a6 = *&a2->value;
    *(a6 + 16) = a2->epoch;
    return;
  }

  time1 = *this;
  time2 = *a2;
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    time1 = *a2;
    time2 = *this;
    PC_CMTimeSaferSubtract(&time1, &time2, &v20);
    memset(&v21, 0, sizeof(v21));
    operator/(&v20, &v22, &v21);
    CMTimeMake(&v23, 1, 1);
    time1 = v21;
    time2 = v23;
    PC_CMTimeFloorToSampleDuration(&time1, &time2, &v24);
    time1 = v21;
    time2 = v24;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    operator*(&time.value, &v22, &time1);
    v21 = time1;
    epoch = time1.epoch;
    v18 = *&time1.value;
    time1 = *a3;
    *&time2.value = v18;
    time2.epoch = epoch;
    PC_CMTimeSaferSubtract(&time1, &time2, a6);
    time1 = *a2;
    time2 = *this;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    Seconds = CMTimeGetSeconds(&time);
    time1 = v22;
    v16 = (Seconds / CMTimeGetSeconds(&time1)) + 1;
    goto LABEL_7;
  }

  time1 = *this;
  time2 = *a3;
  if (CMTimeCompare(&time1, &time2) > 0 || v8 && (time1 = *this, time2 = *a3, (CMTimeCompare(&time1, &time2) & 0x80000000) == 0))
  {
    time1 = *this;
    time2 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &v20);
    memset(&v21, 0, sizeof(v21));
    operator/(&v20, &v22, &v21);
    CMTimeMake(&v23, 1, 1);
    time1 = v21;
    time2 = v23;
    PC_CMTimeFloorToSampleDuration(&time1, &time2, &v24);
    time1 = v21;
    time2 = v24;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    operator*(&time.value, &v22, &time1);
    v21 = time1;
    v13 = time1.epoch;
    v14 = *&time1.value;
    time1 = *a2;
    *&time2.value = v14;
    time2.epoch = v13;
    PC_CMTimeSaferAdd(&time1, &time2, a6);
    time1 = *this;
    time2 = *a2;
    PC_CMTimeSaferSubtract(&time1, &time2, &time);
    v15 = CMTimeGetSeconds(&time);
    time1 = v22;
    v16 = (v15 / CMTimeGetSeconds(&time1));
LABEL_7:
    *a5 = v16;
    return;
  }

  *a6 = *&this->value;
  *(a6 + 16) = this->epoch;
  *a5 = 0;
}