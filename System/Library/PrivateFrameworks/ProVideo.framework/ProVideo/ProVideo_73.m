double LiPolygonInstance::addReflectionFilter(LiPolygonInstance *this)
{
  result = (*(**(this + 179) + 184))(*(this + 179));
  if (result > 0.0 && *(*(this + 27) + 79) == 1)
  {
    if (*(*(this + 181) + 96) < 1)
    {
      result = *(this + 190) * fmax(1.0 - (*(**(this + 179) + 184))(*(this + 179)), 0.0);
      *(this + 190) = result;
    }

    else
    {
      LiPolygonInstance::makeReflectionFilter(this, &v3);
      if (v3)
      {
        LiImageReflection::setBlendMode(v3, *(*(this + 179) + 680));
        LiImageFilterChain::append((this + 1544), v3);
      }

      PCSharedCount::~PCSharedCount(&v4);
    }
  }

  return result;
}

void sub_25FFB66C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

BOOL LiPolygonInstance::makeReflectionFilter@<W0>(LiPolygonInstance *this@<X0>, PCSharedCount *a2@<X8>)
{
  a2->var0 = 0;
  PCSharedCount::PCSharedCount(a2 + 1);
  v3 = *(this + 712);
  v4 = *(this + 680);
  v41 = *(this + 696);
  v42 = v3;
  v5 = *(this + 712);
  v6 = *(this + 744);
  v43 = *(this + 728);
  v44 = v6;
  v7 = *(this + 648);
  v37 = *(this + 632);
  v38 = v7;
  v8 = *(this + 680);
  v10 = *(this + 632);
  v9 = *(this + 648);
  v39 = *(this + 664);
  v40 = v8;
  v36[4] = v41;
  v36[5] = v5;
  v11 = *(this + 744);
  v36[6] = v43;
  v36[7] = v11;
  v36[0] = v10;
  v36[1] = v9;
  v36[2] = v39;
  v36[3] = v4;
  if (PCMatrix44Tmpl<double>::invert(v36, v36, 0.0))
  {
    goto LABEL_7;
  }

  v12 = *&v39 * *(&v41 + 1) - *&v41 * *(&v39 + 1);
  v13 = *&v41 * *(&v37 + 1) - *&v37 * *(&v41 + 1);
  v14 = *&v37 * *(&v39 + 1) - *&v39 * *(&v37 + 1);
  v15 = sqrt(v14 * v14 + v12 * v12 + v13 * v13);
  if (fabs(v15) >= 0.000000100000001)
  {
    v12 = v12 / v15;
    v13 = v13 / v15;
    v14 = v14 / v15;
  }

  v16 = 0;
  *&v38 = v12;
  *&v40 = v13;
  *&v42 = v14;
  *&v44 = 0;
  do
  {
    v17 = &v36[v16];
    v18 = *(&v37 + v16 * 16 + 16);
    *v17 = *(&v37 + v16 * 16);
    v17[1] = v18;
    v16 += 2;
  }

  while (v16 != 8);
  result = PCMatrix44Tmpl<double>::invert(v36, v36, 0.0);
  if (result)
  {
LABEL_7:
    v35 = 0x3FF0000000000000;
    v32 = 0x3FF0000000000000;
    v29 = 0x3FF0000000000000;
    v26 = 0x3FF0000000000000;
    v27 = 0u;
    v28 = 0u;
    v30 = 0u;
    v31 = 0u;
    v33 = 0u;
    v34 = 0u;
    (*(**(this + 179) + 144))(v20);
    v22 = 0uLL;
    v23 = 0;
    v24 = *&v20[0].var0;
    v25 = v21;
    transformPlane<double>(&v37, &v22, &v22);
    PCMatrix44Tmpl<double>::setReflect(&v26, &v24, &v22);
    LiRenderInstance::getRootTransform(*(this + 181), &v22);
    PCMatrix44Tmpl<double>::rightMult(&v26, &v22);
    operator new();
  }

  return result;
}

void sub_25FFB6E7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, PCSharedCount a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  PCSharedCount::~PCSharedCount(v30 + 1);
  PCSharedCount::~PCSharedCount(&a26);
  PCSharedCount::~PCSharedCount(v31 + 1);
  PCSharedCount::~PCSharedCount(v29);
  _Unwind_Resume(a1);
}

void LiPolygonInstance::crop(uint64_t a1, double *a2, int a3)
{
  if (PCMath::equal(a2, (a1 + 16), 0.0000001))
  {
    v6 = *(a1 + 88);

    std::vector<LiPolygon::PosEdge>::resize(v6, 0);
  }

  else
  {
    v7 = a2[2];
    v8 = a2[4];
    v9 = a2[5];
    v10 = a2[3] * *a2 + v8 * a2[1];
    if (a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }

    *v12 = a2[3];
    *&v12[1] = v8;
    *&v12[2] = v9;
    *&v12[3] = -(v10 + v9 * v7);
    if (liPolygonPlaneClip((a1 + 88), (a1 + 104), v12, v11))
    {
      *(a1 + 1440) = 1;
    }
  }
}

void LiPolygonInstance::crop(uint64_t a1, float64x2_t *a2, int a3)
{
  v3 = **(a1 + 88);
  v4 = *(*(a1 + 88) + 8) - v3;
  if ((v4 >> 5) >= 1)
  {
    v8 = a2[1].f64[0];
    v9 = a2[1].f64[1];
    v10 = a2->f64[0];
    v11 = a2->f64[1];
    v12 = fmin(v8, v9) < 0.0;
    if (v3[2] == 0.0)
    {
      v26 = 0;
      v27 = v8 + v10;
      v28 = v9 + v11;
      v29 = (v4 >> 5) & 0x7FFFFFFF;
      v30 = 1;
      v31 = **(a1 + 88);
      while (!v12)
      {
        v32 = v31[1];
        if (v10 <= *v31 && v27 >= *v31 && v11 <= v32 && v28 >= v32)
        {
          v26 = v30 >= v29;
          if (v29 != v30)
          {
            v36 = v31[6];
            v31 += 4;
            ++v30;
            if (v36 == 0.0)
            {
              continue;
            }
          }
        }

        if (!v26)
        {
          break;
        }

        return;
      }
    }

    v52.f64[0] = 0.0;
    v13 = v4 & 0x1FFFFFFFE0;
    if (v13)
    {
      if (v13 == 128)
      {
        v14 = *v3;
        v15 = v3[4];
        v16 = v3[5];
        if (*v3 == v15)
        {
          v17 = v3[9];
          if (v16 == v17)
          {
            v18 = v3[8];
            if (v18 == v3[12])
            {
              v19 = v3[1];
              if (v3[13] == v19)
              {
                v20 = v18 - v14;
                v21 = v14 - v18;
                if (v14 >= v18)
                {
                  v14 = v3[8];
                  v20 = v21;
                }

                v52.f64[0] = v14;
                v53 = v20;
                v22 = v17 - v19;
                v23 = v19 - v17;
                v24 = v19 < v17;
                if (v19 >= v17)
                {
                  v25 = v17;
                }

                else
                {
                  v25 = v19;
                }

LABEL_39:
                if (!v24)
                {
                  v22 = v23;
                }

                v52.f64[1] = v25;
                v54 = v22;
                PCRect<double>::operator&=(&v52, a2);
                std::vector<LiPolygon::PosEdge>::resize(*(a1 + 88), 4uLL);
                v42 = **(a1 + 88);
                v43 = v52.f64[0];
                *v42 = v52;
                *(v42 + 16) = 0;
                v44 = v53;
                v45 = v52.f64[1];
                v46 = v52.f64[1] + v54;
                *(v42 + 32) = v43;
                *(v42 + 40) = v46;
                *(v42 + 48) = 0;
                v47 = v43 + v44;
                *(v42 + 64) = v47;
                *(v42 + 72) = v46;
                *(v42 + 80) = 0;
                *(v42 + 96) = v47;
                *(v42 + 104) = v45;
                *(v42 + 112) = 0;
                *(a1 + 1440) = 1;
                return;
              }
            }
          }
        }

        v37 = v3[1];
        if (v37 == v16)
        {
          v38 = v3[8];
          if (v15 == v38)
          {
            v39 = v3[9];
            if (v39 == v3[13] && v3[12] == v14)
            {
              v40 = v38 - v14;
              v41 = v14 - v38;
              if (v14 >= v38)
              {
                v14 = v3[8];
                v40 = v41;
              }

              v52.f64[0] = v14;
              v53 = v40;
              v22 = v39 - v37;
              v23 = v37 - v39;
              v24 = v37 < v39;
              if (v37 >= v39)
              {
                v25 = v39;
              }

              else
              {
                v25 = v37;
              }

              goto LABEL_39;
            }
          }
        }
      }

      v49.f64[0] = v10;
      v49.f64[1] = v11;
      v50 = xmmword_260342700;
      v51 = 0uLL;
      LiPolygonInstance::crop(a1, v49.f64, a3);
      if (((*(*(a1 + 88) + 8) - **(a1 + 88)) & 0x1FFFFFFFE0) != 0)
      {
        v48 = *a2;
        v50 = 0uLL;
        v49 = v48;
        v51 = xmmword_2603426F0;
        LiPolygonInstance::crop(a1, v49.f64, a3);
        if (((*(*(a1 + 88) + 8) - **(a1 + 88)) & 0x1FFFFFFFE0) != 0)
        {
          v49 = vaddq_f64(*a2, a2[1]);
          *&v50 = 0;
          *(&v50 + 1) = 0xBFF0000000000000;
          v51 = 0uLL;
          LiPolygonInstance::crop(a1, v49.f64, a3);
          if (((*(*(a1 + 88) + 8) - **(a1 + 88)) & 0x1FFFFFFFE0) != 0)
          {
            v49 = vaddq_f64(*a2, a2[1]);
            v50 = 0uLL;
            v51 = 0xBFF0000000000000;
            LiPolygonInstance::crop(a1, v49.f64, a3);
          }
        }
      }
    }
  }
}

float64x2_t PCRect<double>::operator&=(float64x2_t *a1, float64x2_t *a2)
{
  result.f64[0] = a1[1].f64[0];
  if (result.f64[0] >= 0.0 && a1[1].f64[1] >= 0.0)
  {
    v3 = vbslq_s8(vcgtq_f64(*a2, *a1), *a2, *a1);
    result.f64[1] = a1[1].f64[1];
    v4 = vaddq_f64(*a1, result);
    v5 = vaddq_f64(*a2, a2[1]);
    result = vsubq_f64(vbslq_s8(vcgtq_f64(v4, v5), v5, v4), v3);
    *a1 = v3;
    a1[1] = result;
  }

  return result;
}

uint64_t LiPolygonInstance::getOutput(LiPolygonInstance *this)
{
  do
  {
    v1 = this;
    v2 = *(this + 16);
    if (!v2)
    {
      break;
    }
  }

  while (this);
  return *(v1 + 188);
}

void LiPolygonInstance::makeNode(LiPolygonInstance *this, const LiClipSet *a2)
{
  LiClipSet::operator=(this + 264, a2);
  v4 = *(this + 181);
  *(this + 39) = a2;
  *(this + 40) = v4 + 256;
  *(this + 45) = this + 632;
  *(this + 47) = v4 + 480;
  *(this + 48) = this + 760;
  *(this + 49) = v4 + 352;
  *(this + 42) = this + 1304;
  *(this + 43) = this + 1176;
  operator new();
}

void sub_25FFB80D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, PCSharedCount a29)
{
  if (a28)
  {
    (*(*a28 + 24))(a28);
  }

  MEMORY[0x2666E9F00](v30, v29);
  _Unwind_Resume(a1);
}

double LiPolygonInstance::sliverify(LiPolygonInstance *this)
{
  v6[0] = 0.0;
  v6[1] = 0.0;
  v5[0] = 0.0;
  v5[1] = 0.0;
  v3 = 0.0;
  v4 = 0;
  liPolygonDimensions(this, v6, v5, &v4, &v3);
  result = v3;
  if (v3 < 0.1)
  {
    std::vector<LiPolygon::PosEdge>::resize(*(this + 11), 0);
    operator new();
  }

  return result;
}

void LiPolygonInstance::clipToRendererPlanes(LiPolygonInstance *this)
{
  v1 = *(this + 181);
  v2 = *(v1 + 268);
  if (v2)
  {
    v22 = 0x3FF0000000000000;
    v19 = 0x3FF0000000000000;
    v16 = 0x3FF0000000000000;
    v13 = 0x3FF0000000000000;
    v14 = 0u;
    v15 = 0u;
    v17 = 0u;
    v18 = 0u;
    v20 = 0u;
    v21 = 0u;
    PCMatrix44Tmpl<double>::operator*(v1 + 1008, (this + 632), v12);
    if (PCMatrix44Tmpl<double>::planarInverseZ(&v13, v12, 0.0))
    {
      v4 = PCMatrix44Tmpl<double>::operator*(this + 632, &v13, v12);
      memset(v11, 0, sizeof(v11));
      if (v2 >= 1)
      {
        v5 = 0;
        v6 = 16;
        do
        {
          if (v5 >= *(v1 + 268))
          {
            PCArray_base::badIndex(v4);
          }

          v7 = (*(v1 + 272) + v6);
          v9 = v7[-1];
          v10 = *v7;
          PCMatrix44Tmpl<double>::transform_row<double>(v12, v9.f64, v9.f64);
          v4 = PCPlaneType(v9.f64);
          if (v4)
          {
            if (v4 == 1)
            {
              LiPolygon::setEmpty(this);
              return;
            }

            v8 = vaddvq_f64(vmulq_f64(v9, v9)) + v10.f64[0] * v10.f64[0];
            if (fabs(v8) >= 1.0e-24)
            {
              *(&v11[1] + 8) = v9;
              *(&v11[2] + 1) = *&v10.f64[0];
              v11[0] = vdivq_f64(vmulq_n_f64(v9, -v10.f64[1]), vdupq_lane_s64(*&v8, 0));
              *&v11[1] = -(v10.f64[1] * v10.f64[0]) / v8;
            }

            if (v5 >= *(v1 + 292))
            {
              PCArray_base::badIndex(v4);
            }

            LiPolygonInstance::crop(this, v11, *(*(v1 + 296) + 4 * v5) == 0);
          }

          ++v5;
          v6 += 32;
        }

        while (v2 != v5);
      }
    }
  }
}

uint64_t **bounds<LiPolygon::PosFacet,double>(uint64_t **result, uint64_t a2)
{
  v2 = **result;
  v3 = (*result)[1] - v2;
  *(a2 + 16) = xmmword_2603429E0;
  *(a2 + 32) = xmmword_2603429E0;
  *a2 = xmmword_2603429E0;
  if ((v3 >> 5) >= 1)
  {
    v4 = (v3 >> 5) & 0x7FFFFFFF;
    v5 = (v2 + 16);
    v6 = -1.0;
    v7 = 1.0;
    v8 = 1.0;
    v9 = -1.0;
    v10 = 1.0;
    v11 = -1.0;
    do
    {
      v12 = *(v5 - 2);
      if (v7 <= v6 && v8 <= v9 && v10 <= v11)
      {
        if (v7 >= v12)
        {
          v7 = *(v5 - 2);
        }

        if (v6 <= v12)
        {
          v6 = *(v5 - 2);
        }

        v15 = *(v5 - 1);
        v16 = *v5;
        if (v8 >= v15)
        {
          v8 = *(v5 - 1);
        }

        if (v9 <= v15)
        {
          v9 = *(v5 - 1);
        }

        if (v10 >= v16)
        {
          v10 = *v5;
        }

        if (v11 <= v16)
        {
          v11 = *v5;
        }
      }

      else
      {
        v9 = *(v5 - 1);
        v11 = *v5;
        v6 = *(v5 - 2);
        v7 = v6;
        v8 = v9;
        v10 = *v5;
      }

      v5 += 4;
      --v4;
    }

    while (v4);
    *a2 = v7;
    *(a2 + 8) = v6;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
  }

  return result;
}

PCShared_base **LiPolygonInstance::setColor(PCShared_base **this, LiImageSource *a2)
{
  result = PCPtr<LiImageSource>::operator=<LiImageSource>(this + 182, a2);
  v5 = this[184];
  if (v5)
  {

    return PCPtr<LiImageSource>::operator=<LiImageSource>(v5 + 2, a2);
  }

  return result;
}

uint64_t LiPolygonInstance::getHeliumNode@<X0>(LiPolygonInstance *this@<X0>, void *a2@<X8>)
{
  do
  {
    v3 = this;
    v4 = *(this + 16);
    if (!v4)
    {
      break;
    }
  }

  while (this);
  result = *(v3 + 20);
  *a2 = result;
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

void LiPolygonInstance::draw(LiPolygonInstance *this, LiBlender *a2)
{
  v4 = *(this + 190);
  v5 = LiSceneObject::blendMode(*(this + 179));
  LiSceneObject::blendOptions(*(this + 179), &v15);
  if (v4 > 0.0 || LiCompositor::isStencil(v5))
  {
    v6 = LiSceneObject::preserveOpacity(*(this + 179));
    LiPolygonInstance::getHeliumNode(this, &v14);
    if (v14)
    {
      if (LiAgent::rasterizeEdges((this + 168)) && (Output = LiPolygonInstance::getOutput(this)) != 0)
      {
        v8 = (*(*Output + 40))(Output, 1);
      }

      else
      {
        v8 = 1;
      }

      isBounded = LiPolygon::isBounded(this);
      if ((isBounded & v8) == 1)
      {
        LOBYTE(isBounded) = *(this + 1440);
      }

      v10 = *(this + 179);
      if (v10[698] == 1 && (isBounded & 1) != 0)
      {
        if ((*(*v10 + 272))(*(this + 179)))
        {
          v11 = 1;
        }

        else
        {
          v11 = *(this + 1440);
        }

        LiBlender::crop(a2, this, v11 & 1);
      }

      var0 = v15.var0;
      PCSharedCount::PCSharedCount(&v13, &v16);
      (*(*a2 + 16))(a2, &v14, v5, 0, v6, &var0, v4);
      PCSharedCount::~PCSharedCount(&v13);
      if (v14)
      {
        (*(*v14 + 24))(v14);
      }
    }
  }

  PCSharedCount::~PCSharedCount(&v16);
}

void sub_25FFB8824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  (*(*v6 + 24))(v6);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t LiPolygonInstance::getSceneObject(LiPolygonInstance *this)
{
  result = *(this + 192);
  if (!result)
  {
    return *(this + 179);
  }

  return result;
}

uint64_t non-virtual thunk toLiPolygonInstance::getSceneObject(LiPolygonInstance *this)
{
  result = *(this + 178);
  if (!result)
  {
    return *(this + 165);
  }

  return result;
}

void LiPolygonInstance::setPlane(uint64_t a1, float64x2_t *a2)
{
  PCPlane<double>::setImplicit(a1 + 16, a2);
  v4[0] = 0.0;
  v4[1] = 0.0;
  v4[2] = 1.0;
  LiPolygon::projectToPlane(a1, a2, v4);
}

void non-virtual thunk toLiPolygonInstance::setPlane(uint64_t a1, float64x2_t *a2)
{
  v3 = a1 - 112;
  PCPlane<double>::setImplicit(a1 - 96, a2);
  v4[0] = 0.0;
  v4[1] = 0.0;
  v4[2] = 1.0;
  LiPolygon::projectToPlane(v3, a2, v4);
}

PCArray_base *LiPolygonInstance::intersect(PCArray_base *this, LiIntersection *a2)
{
  v2 = *(a2 + 5);
  if (v2 >= 1)
  {
    v4 = this;
    for (i = 0; i != v2; ++i)
    {
      if (i >= *(a2 + 5))
      {
        PCArray_base::badIndex(this);
      }

      this = (*(*v4 + 104))(v4, a2, *(*(a2 + 3) + 8 * i));
    }
  }

  return this;
}

uint64_t LiPolygonInstance::getBlendMode(LiSceneObject **this)
{
  if (*(this + 190) <= 0.0)
  {
    return 48;
  }

  else
  {
    return LiSceneObject::blendMode(this[179]);
  }
}

uint64_t non-virtual thunk toLiPolygonInstance::getBlendMode(LiSceneObject **this)
{
  if (*(this + 176) <= 0.0)
  {
    return 48;
  }

  else
  {
    return LiSceneObject::blendMode(this[165]);
  }
}

uint64_t LiPolygonInstance::name@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 1432) + 512);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 - 12), 1u);
  }

  return this;
}

double LiPolygonInstance::getPosition@<D0>(LiPolygonInstance *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 99);
  result = *(this + 200);
  *(a2 + 16) = result;
  return result;
}

uint64_t non-virtual thunk toLiPolygonInstance::name@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(*(this + 1320) + 512);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 - 12), 1u);
  }

  return this;
}

void DepthFilterProgram::DepthFilterProgram(DepthFilterProgram *this)
{
  ProGL::Program::Program(this);
  *v2 = &unk_287265EB0;
  ProGL::UniformSampler<35678u>::UniformSampler((v2 + 28), this, "inputTex");
  ProGL::Uniform<int>::Uniform((this + 280), this, "numSamples");
  ProGL::UniformArray<PCVector2<float>,16ul>::UniformArray(this + 336, this, "offsets");
  {
    {
      std::string::basic_string[abi:ne200100]<0>(downsampleDepthFilter(void)::result, "void main() { float z = 1.0; float depth; for (int i=0; i < numSamples; i++) { depth = texture2D(inputTex, gl_TexCoord[0].st + offsets[i]).r; if (depth < z) z = depth; depth = texture2D(inputTex, gl_TexCoord[0].st - offsets[i]).r; if (depth < z) z = depth; } gl_FragColor = vec4( z); }");
      __cxa_atexit(MEMORY[0x277D82640], downsampleDepthFilter(void)::result, &dword_25F8F0000);
    }
  }

  ProGL::Program::setFragmentSource();
}

void sub_25FFB8DD4(_Unwind_Exception *a1)
{
  ProGL::UniformArray<PCVector2<float>,16ul>::~UniformArray(v1 + 42);
  ProGL::Uniform<int>::~Uniform(v1 + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(v1);
  _Unwind_Resume(a1);
}

void LiSSAASolidRenderer::LiSSAASolidRenderer(LiSSAASolidRenderer *this)
{
  LiSolidRenderer::LiSolidRenderer(this);
  *v1 = &unk_287265EE0;
  *(v1 + 872) = 0x40000000;
  *(v1 + 884) = 0;
  *(v1 + 892) = 0;
  *(v1 + 876) = 0;
  *(v1 + 900) = 0;
}

void LiSSAASolidRenderer::~LiSSAASolidRenderer(LiSSAASolidRenderer *this)
{
  *this = &unk_287265EE0;
  v2 = (this + 880);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  LiSolidRenderer::~LiSolidRenderer(this);
}

{
  *this = &unk_287265EE0;
  v2 = (this + 880);
  std::vector<std::shared_ptr<HGGPUComputeDevice const>>::__destroy_vector::operator()[abi:ne200100](&v2);
  LiSolidRenderer::~LiSolidRenderer(this);
  MEMORY[0x2666E9F00]();
}

void LiSSAASolidRenderer::filterDepthTexture(LiSSAASolidRenderer *this@<X0>, GLuint a2@<W1>, GLuint a3@<W2>, unsigned int a4@<W3>, unsigned int a5@<W4>, unsigned int a6@<W5>, unsigned int a7@<W6>, PCWorkingColorVector *a8@<X8>)
{
  ProGL::GL::GL(v31);
  glBindFramebuffer(0x8D40u, a2);
  LiSolidUtils::createRedTexture(a8);
  Name = ProGL::TextureHandle::getName(a8);
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, 0xDE1u, Name, 0);
  glViewport(0, 0, a6, a7);
  glClear(0x4100u);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, a3);
  glEnable(0xDE1u);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  v30 = *(this + 218);
  {
    ProGL::Init::Init(&getDepthFilterProgramHandle(void)::init);
    __cxa_atexit(ProGL::Init::~Init, &getDepthFilterProgramHandle(void)::init, &dword_25F8F0000);
  }

  {
    ProGL::makeProgramHandle<DepthFilterProgram>();
  }

  v28 = getDepthFilterProgramHandle(void)::result;
  v29 = *algn_27FE4BA68;
  if (*algn_27FE4BA68)
  {
    atomic_fetch_add_explicit((*algn_27FE4BA68 + 8), 1uLL, memory_order_relaxed);
  }

  ProGL::UseProgramSentry::UseProgramSentry(v27, v31, &v28);
  v17 = ProGL::ProgramHandle::getProgram<DepthFilterProgram>(&v28, v31);
  ProGL::UniformSampler<35678u>::set(v17 + 56, 0);
  ProGL::Uniform<int>::set<int>(v17 + 70, &v30);
  v20 = v30;
  if (v30 >= 1)
  {
    v21 = 0;
    do
    {
      v22 = v21 + (v20 - 1) * -0.5;
      if (a5 == a7)
      {
        v26 = COERCE_UNSIGNED_INT(v22 / a4);
      }

      else
      {
        LODWORD(v26) = 0;
        *(&v26 + 1) = v22 / a5;
      }

      ProGL::UniformArray<PCVector2<float>,16ul>::setAtIndex<PCVector2<float>>((v17 + 84), v21++, &v26);
      v20 = v30;
    }

    while (v21 < v30);
  }

  v23 = 0;
  v24 = a6;
  v25 = a7;
  v26 = 0;
  LiSolidUtils::drawRect(v31, &v23, 33984, &v26, v18, v19);
  ProGL::UseProgramSentry::~UseProgramSentry(v27);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v29);
  }

  ProGL::GL::~GL(v31);
}

void sub_25FFB9280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  v16 = *(v14 + 8);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void *ProGL::ProgramHandle::getProgram<DepthFilterProgram>(os_unfair_lock_s **a1, ProGL::GL *a2)
{
  ProGL::Private::ProgramHandleImpl::getProgram(*a1, a2, &lpsrc);
  if (lpsrc)
  {
  }

  else
  {
    v2 = 0;
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return v2;
}

void LiSSAASolidRenderer::depthBlur(LiSSAASolidRenderer *this, ProGL::GL *a2, const LiSolidDofInfo *a3, LiSolidDofInfo *a4, GLuint a5, unsigned int a6, unsigned int a7)
{
  params = 0;
  ProGL::GL_Wrap::getIntegerv(a2, 0x8CA6u, &params);
  ProGL::Framebuffer::Framebuffer(v26, a2);
  v14 = *(this + 218);
  PCWorkingColorVector::PCWorkingColorVector(&v25);
  if (a5 && *(this + 636) == 1)
  {
    RGBOperation = HGGLBlendingInfo::GetRGBOperation(v26);
    v16 = (v14 * a7);
    LiSSAASolidRenderer::filterDepthTexture(this, RGBOperation, a5, (v14 * a6), v16, a6, v16, &v23);
    v17 = HGGLBlendingInfo::GetRGBOperation(v26);
    Name = ProGL::TextureHandle::getName(&v23);
    LiSSAASolidRenderer::filterDepthTexture(this, v17, Name, a6, v16, a6, a7, &v22);
    v19 = v22;
    v22 = 0uLL;
    v20 = *(&v25 + 1);
    v25 = v19;
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
      if (*(&v22 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v22 + 1));
      }
    }

    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    }
  }

  ProGL::Framebuffer::detach(v26, 0x8D40u, 0x8CE0u);
  v21 = ProGL::TextureHandle::getName(&v25);
  LiSolidRenderer::depthBlur(this, a2, a3, a4, v21, a6, a7);
  glBindFramebuffer(0x8D40u, params);
  if (*(&v25 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v25 + 1));
  }

  ProGL::Framebuffer::~Framebuffer(v26);
}

void sub_25FFB952C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  ProGL::Framebuffer::~Framebuffer(va);
  _Unwind_Resume(a1);
}

float LiSSAASolidRenderer::getFullSizePaddedTileSize(LiSSAASolidRenderer *this, unsigned int *a2, unsigned int *a3, unsigned int a4, unsigned int a5)
{
  v5 = *(this + 218);
  *a2 = (v5 * a4);
  result = v5 * a5;
  *a3 = result;
  return result;
}

uint64_t LiSSAASolidRenderer::getTileSize(uint64_t this, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5, double a6, double a7)
{
  v7 = *(this + 872);
  v8 = (v7 * a2);
  v9 = (v7 * a3);
  if (v8 < 0x801)
  {
    v10 = vcvtps_u32_f32(v8 / v7);
  }

  else
  {
    LODWORD(a7) = *(this + 396);
    a7 = (2048.0 - (*&a7 + *&a7)) / v7;
    v10 = vcvtpd_u64_f64(a7);
  }

  *a4 = v10;
  if (v9 < 0x801)
  {
    v11 = vcvtps_u32_f32(v9 / v7);
  }

  else
  {
    LODWORD(a7) = *(this + 396);
    v11 = vcvtpd_u64_f64((2048.0 - (*&a7 + *&a7)) / v7);
  }

  *a5 = v11;
  return this;
}

void *LiSSAASolidRenderer::setRenderingParameter(void *result, int a2, int *a3)
{
  switch(a2)
  {
    case 0:
      *(result + 109) = 0;
      return result;
    case 2:
      if (a3)
      {
        if (*a3 <= 2)
        {
          *(result + 219) = *a3;
          return result;
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Invalid filter sent to ", 23);
        v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "setRenderingParameter", 21);
        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " in ", 4);
        v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiSSAASolidRenderer.cpp", 72);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ":", 1);
        v10 = 788;
      }

      else
      {
        v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Invalid object sent to ", 23);
        v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "setRenderingParameter", 21);
        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " in ", 4);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiSSAASolidRenderer.cpp", 72);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
        v10 = 793;
      }

      goto LABEL_21;
    case 1:
      if (a3)
      {
        v3 = *a3;
        if (*a3 >= 1.0 && v3 <= 8.0)
        {
          *(result + 218) = v3;
          return result;
        }

        v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Invalid scale sent to ", 22);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "setRenderingParameter", 21);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " in ", 4);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiSSAASolidRenderer.cpp", 72);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ":", 1);
        v10 = 769;
      }

      else
      {
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Invalid object sent to ", 23);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "setRenderingParameter", 21);
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " in ", 4);
        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiSSAASolidRenderer.cpp", 72);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ":", 1);
        v10 = 774;
      }

LABEL_21:
      v23 = MEMORY[0x2666E9B50](v9, v10);

      return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "\n", 1);
  }

  return LiSolidRenderer::setRenderingParameter(result, a2, a3);
}

void DepthFilterProgram::~DepthFilterProgram(void **this)
{
  *this = &unk_287265EB0;
  v2 = this + 28;
  ProGL::UniformArray<PCVector2<float>,16ul>::~UniformArray(this + 42);
  ProGL::Uniform<int>::~Uniform(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);

  ProGL::Program::~Program(this);
}

{
  *this = &unk_287265EB0;
  v2 = this + 28;
  ProGL::UniformArray<PCVector2<float>,16ul>::~UniformArray(this + 42);
  ProGL::Uniform<int>::~Uniform(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(this);

  JUMPOUT(0x2666E9F00);
}

void sub_25FFB9A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FFB9B90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Program>::shared_ptr[abi:ne200100]<DepthFilterProgram,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<DepthFilterProgram *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,DepthFilterProgram>,std::allocator<DepthFilterProgram>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<DepthFilterProgram *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,DepthFilterProgram>,std::allocator<DepthFilterProgram>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25FFB9C80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::shared_ptr[abi:ne200100]<ProGL::Private::ProgramFactory0<DepthFilterProgram>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<DepthFilterProgram> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<DepthFilterProgram>>,std::allocator<ProGL::Private::ProgramFactory0<DepthFilterProgram>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<DepthFilterProgram> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<DepthFilterProgram>>,std::allocator<ProGL::Private::ProgramFactory0<DepthFilterProgram>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_25FFB9D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<ProGL::Private::ProgramHandleImpl>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramHandleImpl *,std::shared_ptr<ProGL::Private::ProgramHandleImpl>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl,ProGL::Private::ProgramHandleImpl>,std::allocator<ProGL::Private::ProgramHandleImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<ProGL::Private::ProgramHandleImpl>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::destroy(a2 + 16, *(a2 + 24));
    PCSpinLock::~PCSpinLock(a2);

    JUMPOUT(0x2666E9F00);
  }
}

void std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,std::__map_value_compare<ProGL::Private::ProgramHandleImpl::ContextKey,std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,ProGL::Private::ProgramHandleImpl::LessContextKey,true>,std::allocator<std::__value_type<ProGL::Private::ProgramHandleImpl::ContextKey,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<ProGL::Private::ProgramHandleImpl::ContextKey const,ProGL::Private::SimpleCache<ProGL::Private::ProgramHandleImpl::ContextKey,std::shared_ptr<ProGL::Program>,ProGL::Private::ProgramHandleImpl::LessContextKey>::Rec>,0>((a2 + 4));

    operator delete(a2);
  }
}

ProGL::Private::VariableBase *ProGL::UniformSampler<35678u>::UniformSampler(ProGL::Private::VariableBase *a1, ProGL::Program *a2, char *a3)
{
  v5 = ProGL::Private::VariableBase::VariableBase(a1, a2);
  *v5 = &unk_287266130;
  *(v5 + 4) = 0;
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  *(a1 + 12) = -1;
  return a1;
}

void ProGL::UniformSampler<35678u>::~UniformSampler(void **a1)
{
  ProGL::UniformSampler<35678u>::~UniformSampler(a1);

  JUMPOUT(0x2666E9F00);
}

BOOL ProGL::UniformSampler<35678u>::prepare(uint64_t a1)
{
  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
  v3 = LiImageSource::imageSpace(FactoryForSerialization);
  v4 = (a1 + 24);
  if (*(a1 + 47) < 0)
  {
    v4 = *v4;
  }

  UniformLocation = glGetUniformLocation(v3, v4);
  *(a1 + 48) = UniformLocation;
  return UniformLocation != -1;
}

uint64_t ProGL::UniformSampler<35678u>::getString(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "uniform ", 8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "sampler2D", 9);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  v5 = *(a1 + 47);
  if (v5 >= 0)
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 24);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 47);
  }

  else
  {
    v7 = *(a1 + 32);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ";\n", 2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "#define _", 9);
  v10 = *(a1 + 47);
  if (v10 >= 0)
  {
    v11 = a1 + 24;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "(coord) (", 9);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "texture2D", 9);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "(", 1);
  v17 = *(a1 + 47);
  if (v17 >= 0)
  {
    v18 = a1 + 24;
  }

  else
  {
    v18 = *(a1 + 24);
  }

  if (v17 >= 0)
  {
    v19 = *(a1 + 47);
  }

  else
  {
    v19 = *(a1 + 32);
  }

  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", (coord)))\n", 12);
  std::stringbuf::str();
  v22 = *MEMORY[0x277D82828];
  *(&v22 + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v26);
}

void sub_25FFBA1E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void ProGL::UniformSampler<35678u>::~UniformSampler(void **this)
{
  *this = &unk_287266130;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  ProGL::Private::VariableBase::~VariableBase(this);
}

ProGL::Private::VariableBase *ProGL::Uniform<int>::Uniform(ProGL::Private::VariableBase *a1, ProGL::Program *a2, char *a3)
{
  v5 = ProGL::Private::VariableBase::VariableBase(a1, a2);
  *v5 = &unk_287266198;
  *(v5 + 4) = 0;
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  *(a1 + 12) = -1;
  return a1;
}

void ProGL::Uniform<int>::~Uniform(void **a1)
{
  ProGL::Uniform<int>::~Uniform(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProGL::Uniform<int>::getString(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "uniform ", 8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "int", 3);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  v7 = *(a1 + 24);
  v6 = a1 + 24;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ";\n", 2);
  std::stringbuf::str();
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v17);
}

void sub_25FFBA4AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void ProGL::Uniform<int>::~Uniform(void **this)
{
  *this = &unk_287266198;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  ProGL::Private::VariableBase::~VariableBase(this);
}

uint64_t ProGL::UniformArray<PCVector2<float>,16ul>::UniformArray(uint64_t a1, ProGL::Program *a2, char *a3)
{
  v5 = ProGL::Private::VariableBase::VariableBase(a1, a2);
  *v5 = &unk_287266200;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  std::string::basic_string[abi:ne200100]<0>(v5 + 160, a3);
  *(a1 + 184) = -1;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return a1;
}

void ProGL::UniformArray<PCVector2<float>,16ul>::~UniformArray(void **a1)
{
  ProGL::UniformArray<PCVector2<float>,16ul>::~UniformArray(a1);

  JUMPOUT(0x2666E9F00);
}

BOOL ProGL::UniformArray<PCVector2<float>,16ul>::prepare(uint64_t a1)
{
  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
  v3 = LiImageSource::imageSpace(FactoryForSerialization);
  v4 = (a1 + 160);
  if (*(a1 + 183) < 0)
  {
    v4 = *v4;
  }

  UniformLocation = glGetUniformLocation(v3, v4);
  *(a1 + 184) = UniformLocation;
  return UniformLocation != -1;
}

void ProGL::UniformArray<PCVector2<float>,16ul>::upload(uint64_t a1, int a2)
{
  v4 = 0;
  v5 = a1 + 144;
  v6 = (a1 + 16);
  do
  {
    if (*(v5 + v4) == 1)
    {
      ProGL::Private::uploadUniform(a2, v4 + *(a1 + 184), v6);
      *(v5 + v4) = 0;
    }

    ++v4;
    v6 += 2;
  }

  while (v4 != 16);
}

uint64_t ProGL::UniformArray<PCVector2<float>,16ul>::getString(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "uniform ", 8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "vec2", 4);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  v7 = *(a1 + 160);
  v6 = a1 + 160;
  v5 = v7;
  v8 = *(v6 + 23);
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = *(v6 + 23);
  }

  else
  {
    v10 = *(v6 + 8);
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "[", 1);
  v13 = MEMORY[0x2666E9B80](v12, 16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "];\n", 3);
  std::stringbuf::str();
  v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v19);
}

void sub_25FFBA85C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void ProGL::UniformArray<PCVector2<float>,16ul>::~UniformArray(void **this)
{
  *this = &unk_287266200;
  if (*(this + 183) < 0)
  {
    operator delete(this[20]);
  }

  ProGL::Private::VariableBase::~VariableBase(this);
}

void ProGL::UniformSampler<35678u>::set(_DWORD *a1, int a2)
{
  if (OZFactoryBase::getFactoryForSerialization(a1))
  {
    a1[4] = a2;
    if (a1[12] != -1)
    {
      FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
      ProGL::Private::ProgramHelper::getProgramContext(FactoryForSerialization, v5);
      ProGL::GL::GL(v6, v5);
      ProGL::ContextHandle::~ContextHandle(v5);
      (*(*a1 + 24))(a1, v6);
      ProGL::GL::~GL(v6);
    }
  }
}

void sub_25FFBA96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void ProGL::Uniform<int>::set<int>(_DWORD *a1, _DWORD *a2)
{
  if (OZFactoryBase::getFactoryForSerialization(a1))
  {
    a1[4] = *a2;
    if (a1[12] != -1)
    {
      FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
      ProGL::Private::ProgramHelper::getProgramContext(FactoryForSerialization, v5);
      ProGL::GL::GL(v6, v5);
      ProGL::ContextHandle::~ContextHandle(v5);
      (*(*a1 + 24))(a1, v6);
      ProGL::GL::~GL(v6);
    }
  }
}

void sub_25FFBAA30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void ProGL::UniformArray<PCVector2<float>,16ul>::setAtIndex<PCVector2<float>>(uint64_t a1, uint64_t a2, void *a3)
{
  if (OZFactoryBase::getFactoryForSerialization(a1))
  {
    *(a1 + 144 + a2) = 1;
    v6 = a1 + 8 * a2;
    *(v6 + 16) = *a3;
    v7 = (v6 + 16);
    if (*(a1 + 184) != -1)
    {
      FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
      ProGL::Private::ProgramHelper::getProgramContext(FactoryForSerialization, v9);
      ProGL::GL::GL(v10, v9);
      ProGL::ContextHandle::~ContextHandle(v9);
      ProGL::Private::uploadUniform(v10, *(a1 + 184) + a2, v7);
      *(a1 + 144 + a2) = 0;
      ProGL::GL::~GL(v10);
    }
  }
}

void sub_25FFBAB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

uint64_t LiScriptParameterDescriptor::LiScriptParameterDescriptor(uint64_t a1, CFTypeRef cf, int a3)
{
  *a1 = CFRetain(cf);
  *(a1 + 8) = a3;
  return a1;
}

void Li3DEngineScene::Li3DEngineScene(Li3DEngineScene *this)
{
  v2 = MEMORY[0x2666E9C50]();
  *(v2 + 64) = 0;
  *(v2 + 88) = 0;
  *(v2 + 80) = v2 + 88;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  v3 = objc_opt_new();
  *(this + 16) = 0;
  *(this + 14) = v3;
  *(this + 15) = this + 128;
  *(this + 20) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  *(this + 18) = this + 152;
}

void sub_25FFBAC20(_Unwind_Exception *a1)
{
  v5 = v4;
  std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(v3, *v5);
  ProCore_Impl::PCNSRefImpl::release(v2);
  std::recursive_mutex::~recursive_mutex(v1);
  _Unwind_Resume(a1);
}

void Li3DEngineScene::set(Li3DEngineScene *this, SCNScene *a2)
{
  std::recursive_mutex::lock(this);
  v5 = a2;
  ProCore_Impl::PCNSRefImpl::operator=(this + 8, &v5);
  ProCore_Impl::PCNSRefImpl::release(&v5);
  v4 = Li3DEngineScene::sceneID++;
  *(this + 9) = v4;
  std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(this + 80, *(this + 11));
  *(this + 10) = this + 88;
  *(this + 12) = 0;
  *(this + 11) = 0;
  std::recursive_mutex::unlock(this);
}

void sub_25FFBACD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProCore_Impl::PCNSRefImpl::release(va);
  std::recursive_mutex::unlock(v2);
  _Unwind_Resume(a1);
}

id Li3DEngineScene::getSceneAndRenderer(Li3DEngineScene *this, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = [a2 registryID];
  v24[0] = v4;
  v5 = *(this + 11);
  v6 = *(this + 8);
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = (this + 88);
  do
  {
    v8 = v5[4];
    v9 = v8 >= v4;
    v10 = v8 < v4;
    if (v9)
    {
      v7 = v5;
    }

    v5 = v5[v10];
  }

  while (v5);
  if (v7 != (this + 88) && v4 >= v7[4])
  {
    v12 = v7[5];
  }

  else
  {
LABEL_9:
    if ((*(this + 104) & 1) == 0)
    {
      v11 = [MEMORY[0x277CDBAF8] scene];
      [objc_msgSend(v11 "rootNode")];
      v6 = v11;
    }

    PCMakeNSRefAndRetain<EAGLContext *>([MEMORY[0x277CDBAE8] rendererWithDevice:a2 options:0], &v23);
    v12 = v23;
    [v23 setScene:v6];
    v24[2] = v24;
    v13 = std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(this + 80, v24);
    ProCore_Impl::PCNSRefImpl::operator=(v13 + 5, &v23);
    ProCore_Impl::PCNSRefImpl::release(&v23);
  }

  if ((*(this + 104) & 1) == 0)
  {
    v14 = [MEMORY[0x277CBEA60] arrayWithArray:{objc_msgSend(objc_msgSend(objc_msgSend(v12, "scene"), "rootNode"), "childNodes")}];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v15)
    {
      v16 = *v20;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v20 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v19 + 1) + 8 * i) removeFromParentNode];
        }

        v15 = [v14 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v15);
    }

    [objc_msgSend(objc_msgSend(v12 "scene")];
  }

  return v12;
}

void sub_25FFBAF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Li3DEngineScene::particleParameters(Li3DEngineScene *this, SCNParticleSystem *a2)
{
  v4 = *(this + 19);
  v2 = this + 152;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 4) <= a2)
  {
    return *(v5 + 5);
  }

  else
  {
    return 0;
  }
}

uint64_t Li3DEngineScene::reset_NoLock(id *this)
{
  v1 = [this[8] rootNode];

  return [v1 enumerateChildNodesUsingBlock:&__block_literal_global_70];
}

uint64_t ___ZN15Li3DEngineScene12reset_NoLockEv_block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [a2 particleSystems];
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) reset];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t Li3DEngineScene::didLoad_NoLock(id *this)
{
  v2 = [this[8] rootNode];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = *"";
  v4[2] = ___ZN15Li3DEngineScene14didLoad_NoLockEv_block_invoke;
  v4[3] = &__block_descriptor_40_e21_v24__0__SCNNode_8_B16l;
  v4[4] = this;
  return [v2 enumerateChildNodesUsingBlock:v4];
}

uint64_t ___ZN15Li3DEngineScene14didLoad_NoLockEv_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  result = [objc_msgSend(a2 "particleSystems")];
  if (result)
  {
    v6 = 0;
    v3 = **(&v5[0] + 1);
    v6 = v3;
    [v3 particleSize];
    [v3 setParticleSize:v4 * 512.0];
    operator new();
  }

  return result;
}

void sub_25FFBB394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, PCSharedCount a24)
{
  PCSharedCount::~PCSharedCount(&a24);
  PCSharedCount::~PCSharedCount(v24 + 1);
  _Unwind_Resume(a1);
}

uint64_t Li3DEngineScene::didAddNode_NoLock(Li3DEngineScene *this, SCNNode *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = *"";
  v3[2] = ___ZN15Li3DEngineScene17didAddNode_NoLockEP7SCNNode_block_invoke;
  v3[3] = &__block_descriptor_40_e21_v24__0__SCNNode_8_B16l;
  v3[4] = this;
  return [(SCNNode *)a2 enumerateChildNodesUsingBlock:v3];
}

uint64_t ___ZN15Li3DEngineScene17didAddNode_NoLockEP7SCNNode_block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13[0] = a2;
  v2 = *(a1 + 32);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a2 particleSystems];
  result = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (result)
  {
    v5 = result;
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

        [*(*(&v9 + 1) + 8 * v7) birthRate];
        v13[2] = v13;
        *(std::__tree<std::__value_type<SCNNode *,int>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,int>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,int>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v2 + 120, v13) + 10) = v8;
        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v9 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void Li3DEngineScene::setNodeActiveState_NoLock(Li3DEngineScene *this, SCNNode *a2, int a3, double a4)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = *"";
  v8[2] = ___ZN15Li3DEngineScene25setNodeActiveState_NoLockEP7SCNNodebd_block_invoke;
  v8[3] = &unk_279AA9B50;
  v9 = a3;
  v8[4] = &v10;
  v8[5] = this;
  [(SCNNode *)a2 enumerateChildNodesUsingBlock:v8];
  if ((v11[3] & 1) == 0)
  {
    v7 = 0.0;
    if (a3)
    {
      v7 = a4;
    }

    [(SCNNode *)a2 setOpacity:v7];
  }

  _Block_object_dispose(&v10, 8);
}

void sub_25FFBB634(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN15Li3DEngineScene25setNodeActiveState_NoLockEP7SCNNodebd_block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v17[0] = a2;
  v3 = *(a1 + 40);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [a2 particleSystems];
  result = [v4 countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = 0.0;
        if (*(a1 + 48) == 1)
        {
          for (i = *(v3 + 128); i; i = *i)
          {
            v12 = i[4];
            if (v17[0] >= v12)
            {
              if (v12 >= v17[0])
              {
                v17[2] = v17;
                v10 = *(std::__tree<std::__value_type<SCNNode *,int>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,int>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,int>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(v3 + 120, v17) + 10);
                goto LABEL_14;
              }

              ++i;
            }
          }
        }

        else
        {
LABEL_14:
          [v9 setBirthRate:v10];
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
        ++v8;
      }

      while (v8 != v6);
      result = [v4 countByEnumeratingWithState:&v13 objects:v18 count:{16, v10}];
      v6 = result;
    }

    while (result);
  }

  return result;
}

void *Li3DEngineObjectDataBase::defaultPerInstanceColor(Li3DEngineObjectDataBase *this)
{
  {
    PCWorkingColorVector::PCWorkingColorVector(&Li3DEngineObjectDataBase::defaultPerInstanceColor(void)::defaultValue, 1.0, 1.0, 1.0, 1.0);
  }

  return &Li3DEngineObjectDataBase::defaultPerInstanceColor(void)::defaultValue;
}

uint64_t Li3DEngineObject::Li3DEngineObject(uint64_t a1, void *a2)
{
  *(a1 + 584) = &unk_2872DEA38;
  *(a1 + 592) = 0;
  *(a1 + 600) = 1;
  LiSceneObject::LiSceneObject(a1, &off_287266358);
  *a1 = &unk_287266290;
  *(a1 + 584) = &unk_287266338;
  v4 = a2[1];
  *(a1 + 568) = *a2;
  *(a1 + 576) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_25FFBB91C(_Unwind_Exception *a1)
{
  *(v1 + 584) = v2;
  *(v1 + 600) = 0;
  PCWeakCount::~PCWeakCount((v1 + 592));
  _Unwind_Resume(a1);
}

void Li3DEngineObject::~Li3DEngineObject(PCSharedCount *this, PCSharedCount *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + *(var0 - 3)) = a2[5];
  v5 = this[72].var0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  LiSceneObject::~LiSceneObject(this, &a2[1].var0);
}

void Li3DEngineObject::~Li3DEngineObject(PCSharedCount *this)
{
  *(v1 + 584) = &unk_2872DEA38;
  *(v1 + 600) = 0;
  PCWeakCount::~PCWeakCount((v1 + 592));
}

{
  *(v1 + 584) = &unk_2872DEA38;
  *(v1 + 600) = 0;
  PCWeakCount::~PCWeakCount((v1 + 592));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLi3DEngineObject::~Li3DEngineObject(Li3DEngineObject *this)
{
  *(v1 + 584) = &unk_2872DEA38;
  *(v1 + 600) = 0;
  v2 = (v1 + 592);

  PCWeakCount::~PCWeakCount(v2);
}

{
  Li3DEngineObject::~Li3DEngineObject((this + *(*this - 24)));
}

uint64_t Li3DEngineObject::getSceneData@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 576);
  *a2 = *(this + 568);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void Li3DEngineObject::plane(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xBFF0000000000000;
}

void Li3DEngineObject::localBoundingBox(uint64_t a1, double *a2)
{
  v3 = *(*(a1 + 568) + 8);
  std::recursive_mutex::lock(v3);
  [objc_msgSend(*(v3 + 64) "rootNode")];
  v4 = v10;
  v5 = v8;
  v11.val[1] = vcvtq_f64_f32(v7);
  v11.val[0] = vcvtq_f64_f32(v9);
  v6 = a2;
  vst2q_f64(v6, v11);
  v6 += 4;
  *v6 = v4;
  a2[5] = v5;
  std::recursive_mutex::unlock(v3);
}

void Li3DEngineObject::cast(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  PCSharedCount::PCSharedCount((a1 + 72));
}

uint64_t Li3DEngineObject::print(void *a1, void *a2, uint64_t a3)
{
  LiImageSource::printIndent(a2, a3);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Li3DEngineObject(", 18);
  if (a1[64])
  {
    v7 = a1[64];
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " ", 2);
  v10 = MEMORY[0x2666E9B10](v9, *(a1[71] + 8));
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ")", 1);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v15);
  std::ostream::put();
  std::ostream::flush();
  v13 = *(*a1 + 120);

  return v13(a1, a2, a3);
}

void Li3DEngineObjectData::~Li3DEngineObjectData(id *this)
{
  *this = &unk_287266390;

  v2 = this[70];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = this[68];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = this[65];
  if (v4)
  {
    this[66] = v4;
    operator delete(v4);
  }

  v5 = this[61];
  if (v5)
  {
    this[62] = v5;
    operator delete(v5);
  }

  v6 = this[58];
  if (v6)
  {
    this[59] = v6;
    operator delete(v6);
  }

  ProCore_Impl::PCNSRefImpl::release(this + 33);

  Li3DEngineObjectDataBase::~Li3DEngineObjectDataBase(this);
}

{
  Li3DEngineObjectData::~Li3DEngineObjectData(this);

  JUMPOUT(0x2666E9F00);
}

void Li3DEngineObjectDataBase::~Li3DEngineObjectDataBase(Li3DEngineObjectDataBase *this)
{
  *this = &unk_287266628;
  v2 = this + 168;
  *(this + 21) = &unk_2871F25A8;
  if (*(this + 44) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 44);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(v2, 0, v3);
  v4 = *(this + 23);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(this + 23) = 0;
  *(this + 44) = 0;
}

{
  Li3DEngineObjectDataBase::~Li3DEngineObjectDataBase(this);

  JUMPOUT(0x2666E9F00);
}

NSString *Li3DEngineObjectData::setDebugName(id *this, NSString *a2)
{
  result = a2;
  this[56] = result;
  return result;
}

uint64_t Li3DEngineObjectData::updateScriptingEngine(uint64_t this, float a2)
{
  v2 = *(this + 456);
  if (v2)
  {
    v3 = this;
    [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:"), @"arScale"}];
    v7 = *(v3 + 488);
    v8 = *(v3 + 496);
    if (v7 != v8)
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        v11 = *(v7 + 2);
        if (v11 > 2)
        {
          if (v11 == 3)
          {
            v14 = (*(v3 + 464) + 4 * v9);
            LODWORD(v4) = *v14;
            LODWORD(v5) = v14[1];
            v9 += 3;
            LODWORD(v6) = v14[2];
            v13 = [MEMORY[0x277CCAE60] valueWithSCNVector3:{v4, v5, v6}];
            goto LABEL_12;
          }

          if (v11 == 4)
          {
LABEL_10:
            LODWORD(v4) = *(*(v3 + 464) + 4 * v9);
            [*(v3 + 456) setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithFloat:", v4), v10}];
            ++v9;
          }
        }

        else
        {
          if (v11 < 2)
          {
            goto LABEL_10;
          }

          if (v11 == 2)
          {
            v12 = (*(v3 + 464) + 4 * v9);
            v9 += 4;
            v13 = [MEMORY[0x277D75348] colorWithRed:*v12 green:v12[1] blue:v12[2] alpha:v12[3]];
LABEL_12:
            [*(v3 + 456) setObject:v13 forKeyedSubscript:v10];
          }
        }

        v7 += 2;
      }

      while (v7 != v8);
    }

    v15 = [*(v3 + 456) objectForKeyedSubscript:@"WillRenderScene"];
    this = [v15 isUndefined];
    if ((this & 1) == 0)
    {

      return [v15 callWithArguments:0];
    }
  }

  return this;
}

uint64_t Li3DEngineObjectData::updateShadingEngine(uint64_t this)
{
  v14 = *MEMORY[0x277D85DE8];
  if (*(this + 512))
  {
    v1 = this;
    v2 = *(this + 544);
    if (v2)
    {
      v3 = *(v2 + 144);
      v4 = [*(this + 440) childNodesPassingTest:&__block_literal_global_16];
      v9 = 0u;
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      this = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (this)
      {
        v5 = this;
        v6 = *v10;
        do
        {
          v7 = 0;
          do
          {
            if (*v10 != v6)
            {
              objc_enumerationMutation(v4);
            }

            v8 = [objc_msgSend(*(*(&v9 + 1) + 8 * v7) "geometry")];
            [v8 setValue:objc_msgSend(MEMORY[0x277CDBA98] forKey:{"materialPropertyWithContents:", v3), @"texture"}];
            if (*(v1 + 568) == 1)
            {
              [v8 setProgram:*(v1 + 512)];
            }

            ++v7;
          }

          while (v5 != v7);
          this = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
          v5 = this;
        }

        while (this);
      }
    }
  }

  return this;
}

uint64_t Li3DEngineObjectData::applyChanges(uint64_t a1, float a2)
{
  Li3DEngineObjectData::updateScriptingEngine(a1, a2);

  return Li3DEngineObjectData::updateShadingEngine(a1);
}

uint64_t Li3DEngineObjectData::getHelium3DEngine(Li3DEngineObjectData *this, LiAgent *a2)
{
  result = *(this + 69);
  if (result)
  {
    (*(*result + 24))(&v5);
    result = *(this + 68);
    v4 = v5;
    if (result == v5)
    {
      if (result)
      {
        return (*(*v5 + 24))(v5);
      }
    }

    else
    {
      if (result)
      {
        result = (*(*result + 24))(result);
        v4 = v5;
      }

      *(this + 68) = v4;
    }
  }

  return result;
}

void sub_25FFBC3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void Li3DEngineObjectData::setTextureSource(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 552) = v2;
  v4 = *(a1 + 560);
  *(a1 + 560) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void Li3DEngineWorldData::add3DEngineObjectData(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v8[0] = a2;
  v8[2] = v8;
  v4 = std::__tree<std::__value_type<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a1 + 208, v8);
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = v4[6];
  v4[5] = v6;
  v4[6] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void Li3DEngineWorldData::getHelium3DEngine(Li3DEngineWorldData *this, LiAgent *a2)
{
  v2 = *(this + 26);
  v3 = this + 216;
  if (v2 != this + 216)
  {
    do
    {
      v5 = *(v2 + 5);
      v6 = *(v2 + 6);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v5 + 16))(v5, a2);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v7 = *(v2 + 1);
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = *(v2 + 2);
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }
}

void sub_25FFBC580(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void Li3DEngineWorldData::applyChanges(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = *(a1 + 208);
  v5 = (a1 + 216);
  if (v4 != (a1 + 216))
  {
    do
    {
      v9 = v4[5];
      v10 = v4[6];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v9 + 24))(v9, a2, a3, a4);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      }

      v11 = v4[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v4[2];
          v13 = *v12 == v4;
          v4 = v12;
        }

        while (!v13);
      }

      v4 = v12;
    }

    while (v12 != v5);
  }
}

void sub_25FFBC670(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void Li3DEngineWorldData::unapplyChanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 208);
  v4 = (a1 + 216);
  if (v3 != (a1 + 216))
  {
    do
    {
      v7 = v3[5];
      v8 = v3[6];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 32))(v7, a2, a3);
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }
}

void sub_25FFBC750(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

SCNNode *Li3DEngineObjectData::setSCNNode(id *this, SCNNode *a2)
{
  result = a2;
  this[55] = result;
  return result;
}

char *Li3DEngineObjectData::setScriptParameters(uint64_t a1, char **a2, __int128 **a3)
{
  v5 = (a1 + 464);
  if (v5 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v5, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  result = (a1 + 488);
  if ((a1 + 488) != a3)
  {
    v7 = *a3;
    v8 = a3[1];
    v9 = v8 - *a3;

    return std::vector<LiScriptParameterDescriptor>::__assign_with_size[abi:ne200100]<LiScriptParameterDescriptor*,LiScriptParameterDescriptor*>(result, v7, v8, v9);
  }

  return result;
}

void Li3DEngineObjectForceParams::Li3DEngineObjectForceParams(Li3DEngineObjectForceParams *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 8) = 0;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
}

void Li3DEngineObjectForceParams::setUUID(id *this, NSUUID *a2)
{
  PCMakeNSRefAndRetain<EAGLContext *>(a2, &v3);
  ProCore_Impl::PCNSRefImpl::operator=(this + 6, &v3);
  ProCore_Impl::PCNSRefImpl::release(&v3);
}

void sub_25FFBC8A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProCore_Impl::PCNSRefImpl::release(va);
  _Unwind_Resume(a1);
}

void Li3DEngineWorldData::~Li3DEngineWorldData(Li3DEngineWorldData *this)
{
  *this = &unk_287266410;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(this + 208, *(this + 27));

  Li3DEngineObjectDataBase::~Li3DEngineObjectDataBase(this);
}

{
  *this = &unk_287266410;
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(this + 208, *(this + 27));
  Li3DEngineObjectDataBase::~Li3DEngineObjectDataBase(this);

  JUMPOUT(0x2666E9F00);
}

void LiParticleParameters::~LiParticleParameters(LiParticleParameters *this)
{
  *(this + 3) = &unk_2872DEA38;
  *(this + 40) = 0;
  PCWeakCount::~PCWeakCount(this + 4);
}

{
  *(this + 3) = &unk_2872DEA38;
  *(this + 40) = 0;
  PCWeakCount::~PCWeakCount(this + 4);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiParticleParameters::~LiParticleParameters(LiParticleParameters *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 3) = &unk_2872DEA38;
  v1[40] = 0;
  PCWeakCount::~PCWeakCount(v1 + 4);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 3) = &unk_2872DEA38;
  v1[40] = 0;
  PCWeakCount::~PCWeakCount(v1 + 4);

  JUMPOUT(0x2666E9F00);
}

void std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(uint64_t a1, id *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::destroy(a1, a2[1]);
    ProCore_Impl::PCNSRefImpl::release(a2 + 5);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,PCNSRef<SCNRenderer *>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::__emplace_unique_key_args<SCNParticleSystem *,std::piecewise_construct_t const&,std::tuple<SCNParticleSystem * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::__map_value_compare<SCNParticleSystem *,std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,std::less<SCNParticleSystem *>,true>,std::allocator<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<SCNParticleSystem * const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<SCNParticleSystem *,PCPtr<LiParticleParameters>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCSharedCount::~PCSharedCount(v2 + 6);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<SCNNode *,int>,std::__map_value_compare<SCNNode *,std::__value_type<SCNNode *,int>,std::less<SCNNode *>,true>,std::allocator<std::__value_type<SCNNode *,int>>>::__emplace_unique_key_args<SCNNode *,std::piecewise_construct_t const&,std::tuple<SCNNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

char *std::vector<LiScriptParameterDescriptor>::__assign_with_size[abi:ne200100]<LiScriptParameterDescriptor*,LiScriptParameterDescriptor*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<LiScriptParameterDescriptor>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v18 = *v5;
      *(result + 2) = *(v5 + 2);
      *result = v18;
      result += 16;
      ++v5;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5;
        *(result + 2) = *(v5 + 2);
        *result = v14;
        result += 16;
        ++v5;
        v12 -= 16;
      }

      while (v12);
      v11 = a1[1];
    }

    v15 = v11;
    if (v13 != a3)
    {
      v15 = v11;
      v16 = v11;
      do
      {
        v17 = *v13++;
        *v16 = v17;
        v16 += 16;
        v15 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void std::vector<LiScriptParameterDescriptor>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<LiScriptParameterDescriptor>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<LiScriptParameterDescriptor>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t PCArray<LiLightScaledElementID,PCArray_Traits<LiLightScaledElementID>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287266A70;
  v2 = *(a1 + 8);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(a1 + 12);
    v5 = *(a1 + 16);
    if ((v4 & 0x80000000) != 0)
    {
      v6 = (v5 + 16 * v4 + 8);
      do
      {
        *(v6 - 1) = 0;
        *v6 = 0x3FF0000000000000;
        v6 += 2;
      }

      while (!__CFADD__(v4++, 1));
      *(a1 + 8) = v3;
      *(a1 + 12) = 0;
      goto LABEL_16;
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v8 = *(a1 + 16);
    if (v8)
    {
      MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
LABEL_16:
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void LiRenderer::LiRenderer(LiRenderer *this)
{
  *(this + 52) = &unk_2872DEA38;
  *(this + 53) = 0;
  *(this + 432) = 1;
  LiRendererBase::LiRendererBase(this, &off_2872667A0);
  *this = &unk_287266668;
  *(this + 52) = &unk_287266780;
  *(this + 51) = 0;
  PCWorkingColorVector::PCWorkingColorVector((this + 52), 1.0, 1.0, 1.0, 1.0);
  LiClipSet::LiClipSet((this + 72));
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = &unk_287263058;
  LiImageFilterChain::LiImageFilterChain((this + 144));
  *(this + 24) = 0;
  *(this + 25) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 13) = _Q0;
  *(this + 43) = 0x3FF0000000000000;
  *(this + 38) = 0x3FF0000000000000;
  *(this + 33) = 0x3FF0000000000000;
  *(this + 28) = 0x3FF0000000000000;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 45) = 0;
  *(this + 46) = 0;
  *(this + 44) = &unk_287266A70;
  *(this + 48) = 0;
  PCSharedCount::PCSharedCount(this + 49);
  *(this + 404) = 0;
  *(this + 24) = 256;
  *(this + 50) = 1;
  *(this + 200) = 1;
  *(this + 184) = 0;
  *(this + 376) = 1;
}

void sub_25FFBD40C(_Unwind_Exception *a1)
{
  v5 = v4;
  PCArray<LiLightScaledElementID,PCArray_Traits<LiLightScaledElementID>>::~PCArray(v5);
  LiImageFilterChain::~LiImageFilterChain((v1 + 144));
  PCArray<PCPtr<LiSceneObject>,PCArray_Traits<PCPtr<LiSceneObject>>>::~PCArray(v3);
  LiClipSet::~LiClipSet((v1 + 72));
  LiRendererBase::~LiRendererBase(v1, &off_2872667A0);
  *(v1 + 416) = v2;
  *(v1 + 432) = 0;
  PCWeakCount::~PCWeakCount((v1 + 424));
  _Unwind_Resume(a1);
}

void LiRenderer::~LiRenderer(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[7].var0;
  PCSharedCount::~PCSharedCount(this + 49);
  PCArray<LiLightScaledElementID,PCArray_Traits<LiLightScaledElementID>>::~PCArray(&this[44]);
  this[20].var0 = &unk_2871F2660;
  if (SLODWORD(this[21].var0) < 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = this[21].var0;
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(&this[20], 0, v5);
  v6 = this[22].var0;
  if (v6)
  {
    MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
  }

  this[22].var0 = 0;
  LODWORD(this[21].var0) = 0;
  PCSharedCount::~PCSharedCount(this + 19);
  this[15].var0 = &unk_287263058;
  if (SLODWORD(this[16].var0) < 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = this[16].var0;
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(&this[15], 0, v7);
  v8 = this[17].var0;
  if (v8)
  {
    MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
  }

  this[17].var0 = 0;
  LODWORD(this[16].var0) = 0;
  LiClipSet::~LiClipSet(&this[9]);

  LiRendererBase::~LiRendererBase(this, a2 + 1);
}

void LiRenderer::~LiRenderer(PCSharedCount *this)
{
  *(v1 + 416) = &unk_2872DEA38;
  *(v1 + 432) = 0;
  PCWeakCount::~PCWeakCount((v1 + 424));
}

{
  *(v1 + 416) = &unk_2872DEA38;
  *(v1 + 432) = 0;
  PCWeakCount::~PCWeakCount((v1 + 424));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiRenderer::~LiRenderer(LiRenderer *this)
{
  *(v1 + 416) = &unk_2872DEA38;
  *(v1 + 432) = 0;
  v2 = (v1 + 424);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiRenderer::~LiRenderer((this + *(*this - 24)));
}

uint64_t LiRenderer::setRootTransform(uint64_t result, uint64_t a2)
{
  v2 = result + 224;
  if (result + 224 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v2 + j) = *(a2 + j);
      }

      v2 += 32;
      a2 += 32;
    }
  }

  return result;
}

__n128 LiRenderer::getRootTransform@<Q0>(LiRenderer *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 19);
  *(a2 + 64) = *(this + 18);
  *(a2 + 80) = v2;
  v3 = *(this + 21);
  *(a2 + 96) = *(this + 20);
  *(a2 + 112) = v3;
  v4 = *(this + 15);
  *a2 = *(this + 14);
  *(a2 + 16) = v4;
  result = *(this + 16);
  v6 = *(this + 17);
  *(a2 + 32) = result;
  *(a2 + 48) = v6;
  return result;
}

uint64_t LiRenderer::getBoundary(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (*(a1 + 184) == 1)
  {
    v4 = *(a1 + 192);
    v5 = *(a1 + 208);
  }

  else
  {
    (*(*a1 + 192))(v9);
    v7 = *&v9[0];
    PCSharedCount::~PCSharedCount(v9 + 1);
    if (!v7)
    {
      v7 = **(a2 + 48);
    }

    (*(*v7 + 280))(v9, v7);
    v4 = v9[0];
    v5 = v9[1];
  }

  *a3 = v4;
  a3[1] = v5;
  return 1;
}

__n128 LiRenderer::setBoundary(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 192) = *a2;
  *(a1 + 208) = v3;
  *(a1 + 184) = 1;
  return result;
}

void sub_25FFBDED0(_Unwind_Exception *a1)
{
  LiImageFilterChain::~LiImageFilterChain(v1 + 2);
  PCSharedCount::~PCSharedCount(v2 + 1);
  _Unwind_Resume(a1);
}

void LiRenderer::doSixFaceRender(LiRenderer *this, LiAgent *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  (*(*this + 192))(&v3);
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  v2 = 0 * 0.785398163;
  __sincosf_stret(v2);
  LiRenderer::doOneFaceRender();
}

void sub_25FFBE4C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void LiRenderer::getHelium(LiRenderer *this, LiAgent *a2)
{
  if (*(this + 401) == 1)
  {

    LiRenderer::doSixFaceRender(this, a2);
  }

  LiAgent::getRenderDevice(a2);
  operator new();
}

uint64_t LiRenderer::applyRenderToEquirect(uint64_t this, int a2, int a3)
{
  *(this + 401) = 1;
  *(this + 404) = a2;
  *(this + 408) = a3;
  return this;
}

uint64_t LiRenderer::pixelTransformSupport(uint64_t a1)
{
  if (*(a1 + 401))
  {
    return 3;
  }

  else
  {
    return 6;
  }
}

uint64_t LiRenderer::estimateRenderMemory(PCColorSpaceCache *a1, uint64_t a2)
{
  v4 = PCColorSpaceCache::cgRec709Linear(a1);
  LegacyColorDescription = FxMakeLegacyColorDescription(v4, 1, v10);
  HGComputeDeviceManager::GetCPUComputeDevice(LegacyColorDescription, &v8);
  v9 = v8;
  v8 = 0uLL;
  LiRenderInstance::LiRenderInstance(v11, a1, v10, &v9);
  if (*(&v9 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v9 + 1));
  }

  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v8 + 1));
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(v10);
  v6 = LiRenderInstance::estimateRenderMemory(v11, a2);
  LiRenderInstance::~LiRenderInstance(v11);
  return v6;
}

void sub_25FFBE8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  LiRenderInstance::~LiRenderInstance(va);
  _Unwind_Resume(a1);
}

void PCArray<LiLightScaledElementID,PCArray_Traits<LiLightScaledElementID>>::~PCArray(uint64_t a1)
{
  PCArray<LiLightScaledElementID,PCArray_Traits<LiLightScaledElementID>>::~PCArray(a1);

  JUMPOUT(0x2666E9F00);
}

void LiPadImage::LiPadImage(LiPadImage *this)
{
  *(this + 9) = &unk_2872DEA38;
  *(this + 10) = 0;
  *(this + 88) = 1;
  LiImageFilter::LiImageFilter(this, &off_287266BB8);
  *this = &unk_287266AB0;
  *(this + 9) = &unk_287266B98;
  *(this + 5) = 0;
  *(this + 6) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 56) = _Q0;
}

void sub_25FFBE9F0(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiPadImage::~LiPadImage(PCSharedCount *this)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));
}

{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiPadImage::~LiPadImage(LiPadImage *this)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiPadImage::~LiPadImage((this + *(*this - 24)));
}

__n128 LiPadImage::SetDOD(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 56) = *(a2 + 16);
  *(a1 + 40) = result;
  return result;
}

uint64_t LiPadImage::getHelium@<X0>(LiPadImage *this@<X0>, __int128 **a2@<X1>, HGCrop **a3@<X8>)
{
  v30[2] = *MEMORY[0x277D85DE8];
  LiAgent::getHelium(a2, *(this + 2), &v29);
  *a3 = 0;
  v6 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v6);
  (*(*v6 + 120))(v6, 0, v29);
  HGTextureWrap::SetTextureWrapMode(v6, 0, v7);
  v30[0] = 0;
  v30[1] = 0;
  HGTextureWrap::SetTextureBorderColor(v6, v30);
  v8 = a2[20];
  v9 = v8[3];
  v11 = *v8;
  v10 = v8[1];
  v28[2] = v8[2];
  v28[3] = v9;
  v28[0] = v11;
  v28[1] = v10;
  v12 = v8[7];
  v14 = v8[4];
  v13 = v8[5];
  v28[6] = v8[6];
  v28[7] = v12;
  v28[4] = v14;
  v28[5] = v13;
  v15 = *(this + 56);
  v26 = *(this + 40);
  v27 = v15;
  PCMatrix44Tmpl<double>::transformRect<double>(v28, &v26, &v26);
  v16 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v16);
  (*(*v16 + 120))(v16, 0, v6);
  v17 = *&v26;
  v18 = *(&v26 + 1);
  v19 = *&v26 + *&v27;
  v20 = *(&v26 + 1) + *(&v27 + 1);
  v22 = HGRectMake4f(v21, v17, v18, v19, v20);
  (*(*v16 + 96))(v16, 0, v22, SHIDWORD(v22), v23, v24);
  *a3 = v16;
  (*(*v16 + 16))(v16);
  (*(*v16 + 24))(v16);
  (*(*v6 + 24))(v6);
  result = v29;
  if (v29)
  {
    return (*(*v29 + 24))(v29);
  }

  return result;
}

void sub_25FFBEDF0(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t LiPadImage::getBoundary(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(a1 + 56);
  *a3 = *(a1 + 40);
  a3[1] = v3;
  return 1;
}

void LiCollectState::LiCollectState(LiCollectState *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 7) = 0x3FF0000000000000;
  *(this + 2) = 0x3FF0000000000000;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 28) = 0x3FF0000000000000;
  *(this + 23) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 136) = _Q1;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 44) = 0x3FF0000000000000;
  *(this + 39) = 0x3FF0000000000000;
  *(this + 33) = 0x3FF0000000000000;
  *(this + 34) = 0x3FF0000000000000;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 49) = 0x3FF0000000000000;
  *(this + 50) = 0x3FF0000000000000;
  *(this + 408) = 0;
  LiClipSet::LiClipSet((this + 416));
  *(this + 58) = 0;
}

uint64_t LiRenderInstance::LiRenderInstance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = &unk_287266E88;
  *(a1 + 8) = a2;
  *(a1 + 16) = *(a2 + 48);
  LiRenderParameters::LiRenderParameters(a1 + 24, a3, a4);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  LiClipSet::LiClipSet((a1 + 256));
  LiClipSet::LiClipSet((a1 + 304));
  *(a1 + 432) = 0x3FF0000000000000;
  *(a1 + 392) = 0x3FF0000000000000;
  *(a1 + 352) = 0x3FF0000000000000;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 600) = 0x3FF0000000000000;
  *(a1 + 560) = 0x3FF0000000000000;
  *(a1 + 520) = 0x3FF0000000000000;
  *(a1 + 472) = 0x3FF0000000000000;
  *(a1 + 480) = 0x3FF0000000000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 728) = 0x3FF0000000000000;
  *(a1 + 688) = 0x3FF0000000000000;
  *(a1 + 648) = 0x3FF0000000000000;
  *(a1 + 608) = 0x3FF0000000000000;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 856) = 0x3FF0000000000000;
  *(a1 + 816) = 0x3FF0000000000000;
  *(a1 + 776) = 0x3FF0000000000000;
  *(a1 + 736) = 0x3FF0000000000000;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 864) = xmmword_260343AA0;
  *(a1 + 1000) = 0x3FF0000000000000;
  *(a1 + 960) = 0x3FF0000000000000;
  *(a1 + 920) = 0x3FF0000000000000;
  *(a1 + 880) = 0x3FF0000000000000;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1128) = 0x3FF0000000000000;
  *(a1 + 1088) = 0x3FF0000000000000;
  *(a1 + 1048) = 0x3FF0000000000000;
  *(a1 + 1008) = 0x3FF0000000000000;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1136) = &unk_28725EFF0;
  *(a1 + 1168) = 0u;
  *(a1 + 1160) = &unk_28725EFF0;
  return a1;
}

void sub_25FFBF190(_Unwind_Exception *a1)
{
  LiClipSet::~LiClipSet((v1 + 256));
  LiRenderParameters::~LiRenderParameters((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t LiRenderInstance::LiRenderInstance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  *a1 = &unk_287266E88;
  *(a1 + 8) = a2;
  *(a1 + 16) = *(a2 + 48);
  LiRenderParameters::LiRenderParameters(a1 + 24, a3, a4, a5);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  LiClipSet::LiClipSet((a1 + 256));
  LiClipSet::LiClipSet((a1 + 304));
  *(a1 + 432) = 0x3FF0000000000000;
  *(a1 + 392) = 0x3FF0000000000000;
  *(a1 + 352) = 0x3FF0000000000000;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 600) = 0x3FF0000000000000;
  *(a1 + 560) = 0x3FF0000000000000;
  *(a1 + 520) = 0x3FF0000000000000;
  *(a1 + 472) = 0x3FF0000000000000;
  *(a1 + 480) = 0x3FF0000000000000;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 728) = 0x3FF0000000000000;
  *(a1 + 688) = 0x3FF0000000000000;
  *(a1 + 648) = 0x3FF0000000000000;
  *(a1 + 608) = 0x3FF0000000000000;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 856) = 0x3FF0000000000000;
  *(a1 + 816) = 0x3FF0000000000000;
  *(a1 + 776) = 0x3FF0000000000000;
  *(a1 + 736) = 0x3FF0000000000000;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 784) = 0u;
  *(a1 + 800) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 864) = xmmword_260343AA0;
  *(a1 + 1000) = 0x3FF0000000000000;
  *(a1 + 960) = 0x3FF0000000000000;
  *(a1 + 920) = 0x3FF0000000000000;
  *(a1 + 880) = 0x3FF0000000000000;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 968) = 0u;
  *(a1 + 984) = 0u;
  *(a1 + 1128) = 0x3FF0000000000000;
  *(a1 + 1088) = 0x3FF0000000000000;
  *(a1 + 1048) = 0x3FF0000000000000;
  *(a1 + 1008) = 0x3FF0000000000000;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 0u;
  *(a1 + 1072) = 0u;
  *(a1 + 1056) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1136) = &unk_28725EFF0;
  *(a1 + 1168) = 0u;
  *(a1 + 1160) = &unk_28725EFF0;
  return a1;
}

void sub_25FFBF360(_Unwind_Exception *a1)
{
  LiClipSet::~LiClipSet((v1 + 256));
  LiRenderParameters::~LiRenderParameters((v1 + 24));
  _Unwind_Resume(a1);
}

void LiRenderInstance::~LiRenderInstance(LiRenderInstance *this)
{
  *this = &unk_287266E88;
  PCPtrArray<LiDrawer>::deleteAll(this + 290);
  *(this + 145) = &unk_28725F040;
  v2 = *(this + 292);
  if (v2 < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2 & ~(v2 >> 31);
  }

  if (v3 == v2)
  {
    v4 = *(this + 293);
    if ((v4 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 147) + 8 * v4) = 0;
        v5 = __CFADD__(v4++, 1);
      }

      while (!v5);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v6 = *(this + 147);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(this + 147) = 0;
  }

  *(this + 292) = v3;
  *(this + 293) = 0;
  v7 = *(this + 147);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(this + 147) = 0;
  *(this + 292) = 0;
  *(this + 142) = &unk_28725F040;
  v8 = *(this + 286);
  if (v8 < 0)
  {
    v9 = 1;
  }

  else
  {
    v9 = v8 & ~(v8 >> 31);
  }

  if (v9 == v8)
  {
    v10 = *(this + 287);
    if ((v10 & 0x80000000) != 0)
    {
      do
      {
        *(*(this + 144) + 8 * v10) = 0;
        v5 = __CFADD__(v10++, 1);
      }

      while (!v5);
    }
  }

  else
  {
    if (v9)
    {
      operator new[]();
    }

    v11 = *(this + 144);
    if (v11)
    {
      MEMORY[0x2666E9ED0](v11, 0x1000C8077774924);
    }

    *(this + 144) = 0;
  }

  *(this + 286) = v9;
  *(this + 287) = 0;
  v12 = *(this + 144);
  if (v12)
  {
    MEMORY[0x2666E9ED0](v12, 0x1000C8077774924);
  }

  *(this + 144) = 0;
  *(this + 286) = 0;
  LiClipSet::~LiClipSet((this + 304));
  LiClipSet::~LiClipSet((this + 256));
  v13 = *(this + 29);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 23);
  *(this + 7) = &unk_2871F2660;
  if (*(this + 16) < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = *(this + 16);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 56, 0, v14);
  v15 = *(this + 9);
  if (v15)
  {
    MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
  }

  *(this + 9) = 0;
  *(this + 16) = 0;
  PCSharedCount::~PCSharedCount(this + 6);
}

{
  LiRenderInstance::~LiRenderInstance(this);

  JUMPOUT(0x2666E9F00);
}

unsigned int *PCPtrArray<LiDrawer>::deleteAll(unsigned int *result)
{
  v1 = result;
  v2 = result[3];
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      if (i >= v1[3])
      {
        PCArray_base::badIndex(result);
      }

      result = *(*(v1 + 2) + 8 * i);
      if (result)
      {
        result = (*(*result + 8))(result);
      }

      if (i >= v1[3])
      {
        PCArray_base::badIndex(result);
      }

      *(*(v1 + 2) + 8 * i) = 0;
    }
  }

  v4 = v1[2];
  if (v4 < 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 & ~(v4 >> 31);
  }

  if (v5 == v4)
  {
    v6 = v1[3];
    if ((v6 & 0x80000000) != 0)
    {
      do
      {
        *(*(v1 + 2) + 8 * v6) = 0;
      }

      while (!__CFADD__(v6++, 1));
    }
  }

  else
  {
    if (v5)
    {
      operator new[]();
    }

    result = *(v1 + 2);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v1 + 2) = 0;
  }

  v1[2] = v5;
  v1[3] = 0;
  return result;
}

uint64_t LiRenderInstance::getHelium@<X0>(LiRenderInstance *this@<X0>, LiAgent *a2@<X1>, void *a3@<X8>)
{
  *(this + 16) = (*(*(this + 1) + 48) | *(a2 + 248)) & 1;
  result = LiAgent::getImageToDocumentTransform(a2, v15);
  if (v15 != this + 352)
  {
    for (i = 0; i != 128; i += 32)
    {
      v8 = (this + i + 352);
      v9 = *&v15[i + 16];
      *v8 = *&v15[i];
      v8[1] = v9;
    }
  }

  v10 = *(a2 + 20);
  v11 = vmulq_f64(*v10, *v10);
  v12 = vmulq_f64(v10[1], v10[1]);
  if (fabs(vaddq_f64(vaddq_f64(vaddq_f64(v11, vdupq_laneq_s64(v11, 1)), v12), vdupq_laneq_s64(v12, 1)).f64[0]) >= 0.0000001)
  {
    v13 = vmulq_f64(v10[2], v10[2]);
    v14 = vmulq_f64(v10[3], v10[3]);
    if (fabs(vaddq_f64(vaddq_f64(vaddq_f64(v13, vdupq_laneq_s64(v13, 1)), v14), vdupq_laneq_s64(v14, 1)).f64[0]) >= 0.0000001)
    {
      LiClipSet::operator=(this + 256, *(this + 1) + 72);
      LiRenderInstance::setRenderParameters(this, *(a2 + 6));
      *(a2 + 8) = 1;
      LiRenderInstance::buildHeliumGraph(this, a2);
    }
  }

  *a3 = 0;
  return result;
}

void LiRenderInstance::setRenderParameters(LiRenderInstance *this, const LiRenderParameters *a2)
{
  *(this + 24) = *a2;
  LiImageFilterChain::operator=(this + 40, a2 + 16);
  v4 = *(a2 + 88);
  v5 = *(a2 + 72);
  *(this + 5) = *(a2 + 56);
  *(this + 6) = v5;
  *(this + 7) = v4;
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  v8 = *(a2 + 104);
  *(this + 22) = *(a2 + 19);
  *(this + 9) = v6;
  *(this + 10) = v7;
  *(this + 8) = v8;
  PCCFRef<CGColorSpace *>::operator=(this + 23, a2 + 20);
  v9 = *(a2 + 21);
  *(this + 50) = *(a2 + 44);
  *(this + 24) = v9;
  *(this + 208) = *(a2 + 184);
  *(this + 54) = *(a2 + 48);
  v11 = *(a2 + 25);
  v10 = *(a2 + 26);
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(this + 29);
  *(this + 28) = v11;
  *(this + 29) = v10;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  (*(**(this + 1) + 192))(&v17);
  v13 = v17;
  PCSharedCount::~PCSharedCount(&v18);
  if (v13)
  {
    *(this + 10) = *(this + 1);
    *(this + 3) = v13;
    *(this + 4) = 0;
    if (*(this + 16) < 0)
    {
      v14 = 1;
    }

    else
    {
      v14 = *(this + 16);
    }

    PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 56, 0, v14);
    v15 = *(this + 9);
    if (v15)
    {
      MEMORY[0x2666E9ED0](v15, 0x1000C8077774924);
    }

    *(this + 9) = 0;
    *(this + 16) = 0;
  }

  v16 = *(this + 1);
  if (*(v16 + 48) == 1)
  {
    --*(this + 24);
    *(this + 11) = v16 + 120;
    *(this + 4) = v16 + 224;
  }

  LiImageFilterChain::append((this + 40), (v16 + 144));
}

void LiRenderInstance::buildHeliumGraph(LiRenderInstance *this, __n128 *a2)
{
  v4 = a2[10].n128_u64[0];
  if (LiAgent::haveROI(a2))
  {
    LiAgent::getROI(a2, &v14);
    v5 = v14;
  }

  else
  {
    v5 = xmmword_260343AA0;
  }

  v11 = v5;
  *(this + 30) = LiAgent::getHeliumRenderer(a2);
  v6 = this + 736;
  if (v4 != (this + 736))
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *&v6[j] = *(v4 + j);
      }

      v6 += 32;
      v4 = (v4 + 32);
    }
  }

  *(this + 54) = v11;
  LiAgent::get2DClipPlanes(a2, &v14);
  LiClipSet::operator=(this + 304, &v14);
  LiClipSet::~LiClipSet(&v14);
  (*(**(this + 1) + 192))(&v14);
  v9 = v14;
  PCSharedCount::~PCSharedCount(&v14 + 1);
  if (!v9)
  {
    WorldClipPlanes = LiAgent::getWorldClipPlanes(a2);
    LiClipSet::add((this + 256), WorldClipPlanes);
  }

  LiCompositor::LiCompositor(&v14);
  (*(**(this + 1) + 216))(&v12);
  v15 = v12;
  PCSharedCount::PCSharedCount(&v18, &v13);
  PCSharedCount::operator=(&v16, &v18);
  PCSharedCount::~PCSharedCount(&v18);
  PCSharedCount::~PCSharedCount(&v13);
  v17 = (*(**(this + 1) + 232))(*(this + 1));
  LiRenderInstance::collect(this);
}

void sub_25FFBFBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount((v6 - 56));
  PCSharedCount::~PCSharedCount(v5 + 1);
  LiCompositor::~LiCompositor(va);
  _Unwind_Resume(a1);
}

uint64_t LiRenderInstance::estimateRenderMemory(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  if (a3)
  {
    if (v6)
    {
      v7 = v6;
      (*(*v6 + 160))(&v18);
      v8 = v18;
      PCSharedCount::~PCSharedCount(&v19);
      if (v7[159])
      {
        LiImageFilterChain::LiImageFilterChain(&v18, (v7 + 152));
        LiImageFilterChain::setInput(&v18, v8);
        Tail = LiImageFilterChain::getTail(&v18);
        v3 = (*(*Tail + 112))(Tail, a2);
        v20 = &unk_2871F2660;
        if (v21 < 0)
        {
          v10 = 1;
        }

        else
        {
          v10 = v21;
        }

        PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(&v20, 0, v10);
        if (v22)
        {
          MEMORY[0x2666E9ED0](v22, 0x1000C8077774924);
        }

        v22 = 0;
        v21 = 0;
        PCSharedCount::~PCSharedCount(&v19);
      }

      else
      {
        return (*(*v8 + 112))(v8, a2);
      }
    }

    else
    {
      if (v11 && (v12 = v11, v13 = (*(*v11 + 136))(v11), v13 >= 1))
      {
        v14 = v13;
        v15 = 0;
        v3 = 0;
        do
        {
          v16 = (*(*v12 + 144))(v12, v15);
          v3 += LiRenderInstance::estimateRenderMemory(a1, a2, v16);
          v15 = (v15 + 1);
        }

        while (v14 != v15);
      }

      else
      {
        return 0;
      }
    }
  }

  return v3;
}

void sub_25FFBFED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LiImageFilterChain::~LiImageFilterChain(va);
  _Unwind_Resume(a1);
}

uint64_t LiRenderInstance::add(LiRenderInstance *this, LiDrawer *a2)
{
  v4 = *(this + 293);
  if (*(this + 292) <= v4)
  {
    v5 = 2 * (v4 + 1) + 1;
  }

  else
  {
    v5 = *(this + 292);
  }

  result = PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(this + 1160, v4 + 1, v5);
  *(*(this + 147) + 8 * *(this + 293) - 8) = a2;
  return result;
}

uint64_t LiRenderInstance::getCamera(LiRenderInstance *this)
{
  (*(**(this + 1) + 192))(&v4);
  v2 = v4;
  PCSharedCount::~PCSharedCount(&v5);
  if (!v2)
  {
    return *(this + 3);
  }

  return v2;
}

double LiRenderInstance::getRootTransform@<D0>(LiRenderInstance *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *v2;
    v4 = v2[1];
    v5 = v2[3];
    a2[2] = v2[2];
    a2[3] = v5;
    *a2 = v3;
    a2[1] = v4;
    v6 = v2[4];
    v7 = v2[5];
    v8 = v2[7];
    a2[6] = v2[6];
    a2[7] = v8;
    a2[4] = v6;
    a2[5] = v7;
  }

  else
  {
    *&v6 = LiRenderer::getRootTransform(*(this + 1), a2).n128_u64[0];
  }

  return *&v6;
}

void LiRenderInstance::collect(LiRenderInstance *this)
{
  *(this + 94) = *(this + 94) * 0.0;
  *(this + 98) = *(this + 98) * 0.0;
  *(this + 102) = *(this + 102) * 0.0;
  *(this + 106) = *(this + 106) * 0.0;
  LiCollectState::LiCollectState(v1);
  operator new();
}

uint64_t LiRenderInstance::collect3D(LiRenderInstance *this, LiSceneObject *a2, LiCollectState *a3)
{
  result = LiRenderParameters::shouldOmit((this + 24), a2);
  if ((result & 1) == 0)
  {
    if (*(*(this + 1) + 48) == 1)
    {
      if ((*(a2 + 552) & 1) == 0)
      {
        return result;
      }
    }

    else if (*(a2 + 553) != 1)
    {
      return result;
    }

    if (*(a2 + 140))
    {
      operator new();
    }

    operator new();
  }

  return result;
}

BOOL LiRenderInstance::collectGeode(LiRenderInstance *this, LiGeode *a2, LiCollectState *a3)
{
  v4 = LiSceneObject::blendMode(a2);
  if (*(a3 + 50) != 0.0 || (result = LiCompositor::isStencil(v4)))
  {
    operator new();
  }

  return result;
}

void sub_25FFC0F18(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x25FFC0E1CLL);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiRenderInstance::collectEquirectGroup(LiRenderInstance *this, Li3DGroupForEquirect *a2, LiCollectState *a3, LiCollectState *a4)
{
  result = (*(*a2 + 136))(a2);
  if (result)
  {
    Renderer = Li3DGroupForEquirect::getRenderer(a2);
    v9 = (*(*Renderer + 176))(Renderer);
    if (v9)
    {
    }

    else
    {
      v10 = 0;
    }

    if ((*(*a2 + 136))(a2))
    {
      v11 = 0;
      do
      {
        v12 = (*(*a2 + 144))(a2, v11);
        (*(*v10 + 152))(v10, v12);
        v11 = (v11 + 1);
      }

      while (v11 != (*(*a2 + 136))(a2));
    }

    Geode = Li3DGroupForEquirect::getGeode(a2);

    return LiRenderInstance::collectGeode(this, Geode, a3);
  }

  return result;
}

void LiRenderInstance::collectGroup(LiRenderInstance *this, LiGroup *a2, LiCollectState *a3, LiCollectState *a4)
{
  (*(*a2 + 136))(a2);
  (*(*a2 + 184))(a2);
  operator new();
}

void sub_25FFC1B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  PCPtrArray<LiDrawer>::~PCPtrArray(&a15);
  LiDepthSorter::~LiDepthSorter(&a18);
  LiPlanarGroupHerd::~LiPlanarGroupHerd(&a27);
  MEMORY[0x2666E9F00](v27, 0x1000C407EBBDD04);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<LiCollectState>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LiClipSet::~LiClipSet((v2 + 416));
    MEMORY[0x2666E9F00](v2, 0x10F0C40AD4F3889);
  }

  return a1;
}

uint64_t LiSceneObject_layerOrder(uint64_t a1, uint64_t a2)
{
  if (!*a1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*a1 + 528);
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  v3 = *(*a2 + 528);
  v4 = v2 <= v3;
  if (v2 >= v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v4)
  {
    return v5;
  }

  else
  {
    return 1;
  }
}

void LiRenderInstance::addLightsAndDOF(LiRenderInstance *this, LiPolygonInstance *a2)
{
  if (a2)
  {
    v2 = *(a2 + 179);
    if (v2)
    {
      (*(*v2 + 160))(&v3, *(a2 + 179));
      if (!v3)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v3 + 152))(v3);
      PCSharedCount::~PCSharedCount(&v4);
      if (LiGeode::needsLights(v2))
      {
        if (*(LiGeode::getLightFilter(v2) + 52))
        {
          operator new();
        }
      }
    }
  }
}

uint64_t LiRenderParameters::LiRenderParameters(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  LiImageFilterChain::LiImageFilterChain((a1 + 16));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  *(a1 + 76) = 0x1000000;
  LiRenderingTechnology::LiRenderingTechnology((a1 + 80));
  *(a1 + 132) = 0;
  *(a1 + 138) = 0;
  v6 = *a2;
  *(a1 + 160) = *a2;
  *(a1 + 128) = 5;
  *(a1 + 152) = 0x3FF0000000000000;
  if (v6)
  {
    v6 = PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  v7 = *(a2 + 8);
  *(a1 + 176) = *(a2 + 16);
  *(a1 + 168) = v7;
  *(a1 + 184) = *(a2 + 24);
  *(a1 + 192) = PCRenderModel::getDefaultBlendingGamma(v6);
  v8 = a3[1];
  *(a1 + 200) = *a3;
  *(a1 + 208) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_25FFC1FE4(_Unwind_Exception *a1)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(v2);
  LiImageFilterChain::~LiImageFilterChain(v1 + 2);
  _Unwind_Resume(a1);
}

uint64_t LiRenderParameters::LiRenderParameters(uint64_t a1, uint64_t a2, void *a3, float a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  LiImageFilterChain::LiImageFilterChain((a1 + 16));
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 2;
  *(a1 + 76) = 0x1000000;
  LiRenderingTechnology::LiRenderingTechnology((a1 + 80));
  *(a1 + 128) = 5;
  *(a1 + 132) = 0;
  *(a1 + 138) = 0;
  v8 = *a2;
  *(a1 + 152) = 0x3FF0000000000000;
  *(a1 + 160) = v8;
  if (v8)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v8);
  }

  v9 = *(a2 + 8);
  *(a1 + 176) = *(a2 + 16);
  *(a1 + 168) = v9;
  *(a1 + 184) = *(a2 + 24);
  *(a1 + 192) = a4;
  v10 = a3[1];
  *(a1 + 200) = *a3;
  *(a1 + 208) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

uint64_t LiRenderParameters::shouldOmit(LiRenderParameters *this, LiSceneObject *a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v9 = a2;
    if (a2)
    {
      a2 = (a2 + *(*a2 - 24));
    }

    PCSharedCount::PCSharedCount(&v10, a2);
    v3 = *(v2 + 12);
    if (v3 < 1)
    {
      v2 = 0;
    }

    else
    {
      v4 = *(v2 + 16);
      v5 = v3 - 1;
      do
      {
        v6 = *v4;
        v4 += 2;
        v2 = v6 == v9;
      }

      while (v6 != v9 && v5-- != 0);
    }

    PCSharedCount::~PCSharedCount(&v10);
  }

  return v2;
}

uint64_t LiRenderParameters::isDynamicRangeTrackingRender(FxColorDescription *this)
{
  if (FxColorDescription::isSDR(this + 5))
  {
    return 1;
  }

  return FxColorDescription::isHDR(this + 5);
}

void ProShade::Snippet::loadFromBundle(ProShade::Snippet *this, const PCString *a2)
{
  v2 = objc_opt_class();

  ProShade::Snippet::loadFromClassBundle(v2, v3, v4);
}

void LiFilteredPolygon::LiFilteredPolygon(LiFilteredPolygon *this)
{
  *(this + 8) = 0;
  *(this + 9) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(this + 5) = _Q1;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 22) = 0x3FF0000000000000;
  *(this + 17) = 0x3FF0000000000000;
  *(this + 12) = 0x3FF0000000000000;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 6) = 0x3FFB333333333333;
  *(this + 28) = 1;
  *(this + 112) = 256;
}

void LiFilteredPolygon::setPolygon(std::vector<int> *this, const LiImagePolygon *a2)
{
  copy<LiPolygon::PosFacet,LiChannelT<PCVector3<double>>>(a2 + 88, this);

  copy<LiImagePolygon::EdgeFacet,LiChannelT<int>>(a2 + 104, this + 1);
}

__n128 copy<LiPolygon::PosFacet,LiChannelT<PCVector3<double>>>(uint64_t a1, void *a2)
{
  v4 = *(*a1 + 8) - **a1;
  std::vector<PCVector3<double>>::resize(a2, (v4 >> 5));
  if ((v4 >> 5) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = (v4 >> 5) & 0x7FFFFFFF;
    do
    {
      v9 = (**a1 + v6);
      v10 = (*a2 + v7);
      result = *v9;
      v10[1].n128_u64[0] = v9[1].n128_u64[0];
      *v10 = result;
      v7 += 24;
      v6 += 32;
      --v8;
    }

    while (v8);
  }

  return result;
}

void copy<LiImagePolygon::EdgeFacet,LiChannelT<int>>(uint64_t a1, std::vector<int> *this)
{
  v4 = *(*a1 + 8) - **a1;
  std::vector<unsigned int>::resize(this, (v4 >> 5));
  if ((v4 >> 5) >= 1)
  {
    begin = this->__begin_;
    v6 = (v4 >> 5) & 0x7FFFFFFF;
    v7 = (**a1 + 24);
    do
    {
      v8 = *v7;
      v7 += 8;
      *begin++ = v8;
      --v6;
    }

    while (v6);
  }
}

int8x8_t LiFilteredPolygon_State::unfilter(uint64_t a1, double *a2, float64x2_t *a3)
{
  v3 = *a3;
  v4 = vmovn_s64(vcgtzq_f64(*a3));
  v5 = v4.i8[4];
  __asm
  {
    FMOV            V2.2S, #1.0
    FMOV            V3.2S, #-1.0
  }

  v12 = vbsl_s8(v4, _D3, _D2);
  _ZF = (v4.i8[0] & 1) == 0;
  v13 = a2[8];
  if (!_ZF)
  {
    v13 = v13 + a2[10];
  }

  v14 = v13;
  *a1 = v14;
  v15 = a2[9];
  if (v5)
  {
    v15 = v15 + a2[11];
  }

  v16 = v15;
  *(a1 + 4) = v16;
  v17 = vcvt_f32_f64(vmulq_f64(vnegq_f64(v3), vcvtq_f64_f32(v12)));
  result = vbic_s8(v17, vcltz_f32(v17));
  v19 = a2[6];
  *&v19 = v19;
  *(a1 + 8) = vdiv_f32(v12, vdup_lane_s32(*&v19, 0));
  *(a1 + 16) = result;
  return result;
}

uint64_t *LiFilteredPolygon::makeGeometry(LiEdgeTexture *a1, LiFilteredPolygon_Geometry *a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  result = LiEdgeTexture::getDefaultResolution(a1);
  v10 = result;
  v32 = 0.501;
  v31 = result + -0.501;
  if (a6)
  {
    v31 = (result + -0.501) / v10;
    v32 = 0.501 / v10;
  }

  v11 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3);
  memset(v30, 0, sizeof(v30));
  if (*(a1 + 56))
  {
    if (v11 >= 1)
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v25 = 0uLL;
      v26 = 0;
      v23 = 0uLL;
      v24 = 0;
      v21 = 0uLL;
      v22 = 0;
      v19 = 0uLL;
      v20 = 0;
      HGArray<int,(HGFormat)34>::HGArray(&v18);
    }
  }

  else if (v11 >= 3)
  {
    v12 = (**a2)(a2, v30);
    (**a2)(a2, v30, *a3 + 24, &v31, &v31);
    v13 = v11 & 0x7FFFFFFF;
    v14 = v12 + 2;
    v15 = v13 - 2;
    v16 = 48;
    do
    {
      (**a2)(a2, v30, *a3 + v16, &v31, &v31);
      result = LiFilteredPolygon_Geometry::tri(a2, v12, v14 - 1, v14);
      ++v14;
      v16 += 24;
      --v15;
    }

    while (v15);
  }

  return result;
}

void sub_25FFC3234(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, PCString a35, uint64_t a36, uint64_t a37, uint64_t a38, HGArrayData *a39)
{
  PCString::~PCString(&a35);
  if (a39)
  {
    HGArrayData::Release(a39);
  }

  _Unwind_Resume(a1);
}

uint64_t *LiFilteredPolygon_Geometry::tri(LiFilteredPolygon_Geometry *this, __int16 a2, __int16 a3, __int16 a4)
{
  v10 = *(this + 1);
  v8 = (this + 8);
  v9 = v10;
  if (v10)
  {
    v11 = *(v9 + 8);
  }

  else
  {
    v11 = 0;
  }

  result = HGArray<short,(HGFormat)3>::resize(v8, v11 + 3);
  v13 = *(this + 1);
  v14 = *(v13 + 16);
  v15 = *(v13 + 4);
  v16 = *(this + 4);
  *(v14 + v15 * v11 + v16) = a2;
  *(v14 + v15 + v15 * v11 + v16) = a3;
  *(v14 + v15 * (v11 + 2) + v16) = a4;
  return result;
}

uint64_t HGArray<int,(HGFormat)34>::reserve(HGArrayDataRef *this, int a2)
{
  result = *this;
  if (result)
  {
    if (*(result + 12) < a2)
    {
      return HGArrayData::allocate(result, a2);
    }
  }

  else if (a2 > 0)
  {
    HGArrayDataRef::allocate(this);
  }

  return result;
}

void LiFilteredPolygon::makeRasterizer(LiFilteredPolygon *this, HGTransform *a2, HGRenderer *a3)
{
  if (-1431655765 * ((*(this + 1) - *this) >> 3))
  {
    LiFilteredPolygon_GeometryGL::LiFilteredPolygon_GeometryGL(&v4);
  }

  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v4, "empty vertex channel");
  PCException::PCException(exception, &v4);
  *exception = &unk_2872DE188;
}

void make_clockwise(void *a1, std::vector<int> *a2)
{
  v3 = -1431655765 * ((a1[1] - *a1) >> 3);
  if (v3 >= 2)
  {
    v4 = 0;
    v5 = (v3 & 0x7FFFFFFF) - 1;
    v6 = 24 * (v3 & 0x7FFFFFFF);
    v7 = 1;
    do
    {
      v8 = (*a1 + v4);
      v9 = *a1 + v6;
      v10 = *(v8 + 2);
      v11 = *v8;
      v12 = *(v9 - 8);
      *v8 = *(v9 - 24);
      *(v8 + 2) = v12;
      *(v9 - 24) = v11;
      *(v9 - 8) = v10;
      --v5;
      v6 -= 24;
      v4 += 24;
    }

    while (v7++ < v5);
  }

  if (((a2->__end_ - a2->__begin_) & 0x3FFFFFFFCLL) != 0)
  {
    memset(&v18, 0, sizeof(v18));
    std::vector<unsigned int>::resize(&v18, v3);
    begin = v18.__begin_;
    if (v3 >= 1)
    {
      v15 = v3 - 1;
      v16 = a2->__begin_;
      v17 = (v3 - 1);
      do
      {
        *&begin[4 * (v15 % v3)] = v16[v17];
        ++v15;
        --v17;
      }

      while (v17 != -1);
    }

    if (&v18 != a2)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a2, begin, v18.__end_, (v18.__end_ - begin) >> 2);
      begin = v18.__begin_;
    }

    if (begin)
    {
      v18.__end_ = begin;
      operator delete(begin);
    }
  }
}

void sub_25FFC38A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void LiFilteredPolygon::makeEdge(LiFilteredPolygon *this@<X0>, uint64_t *a2@<X8>)
{
  v4 = HGObject::operator new(0x1D0uLL);
  LiHeEdge::LiHeEdge(v4);
  *a2 = v4;
  {
    {
      LiEdgeTexture::createArray(&LiFilteredPolygon::makeEdge(void)::filter);
    }
  }

  LiHeEdge::setFilter(*a2, &LiFilteredPolygon::makeEdge(void)::filter);
  signed_area(this);
  HGArray<PCVector3<float>,(HGFormat)21>::HGArray(&v5);
}

void sub_25FFC3CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, HGArrayData *a13, uint64_t a14, HGArrayData *a15)
{
  if (*v15)
  {
    (*(**v15 + 24))(*v15);
  }

  _Unwind_Resume(a1);
}

uint64_t *HGArray<float,(HGFormat)7>::~HGArray(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    HGArrayData::Release(v2);
  }

  return a1;
}

double signed_area(uint64_t *a1)
{
  v1 = *a1;
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (v2 < 1)
  {
    return 0.0;
  }

  v3 = v2 & 0x7FFFFFFF;
  v4 = (v1 + 8);
  v5 = -v3;
  v6 = 0.0;
  v7 = 1;
  do
  {
    v8 = v7;
    if (!(v5 + v7))
    {
      v8 = 0;
    }

    v9 = (v1 + 24 * v8);
    v10 = *(v4 - 1);
    if (v10 != *v9)
    {
      v6 = v6 + (*v9 - v10) * (v9[1] + *v4);
    }

    v4 += 3;
    ++v7;
  }

  while (v5 + v7 != 1);
  return v6 * 0.5;
}

uint64_t *HGArray<HGVec3f,(HGFormat)21>::resize(uint64_t *result, int a2)
{
  v3 = *result;
  if (*result)
  {
    if (*(v3 + 12) < a2)
    {
      result = HGArrayData::allocate(*result, a2);
    }

    *(v3 + 8) = a2;
  }

  else if (a2 > 0)
  {

    HGArrayDataRef::allocate(result);
  }

  return result;
}

double PCMatrix44Tmpl<double>::toSimdFloat(float64_t *a1)
{
  v1.f64[0] = a1[8];
  v1.f64[1] = a1[12];
  v2.f64[0] = *a1;
  v2.f64[1] = a1[4];
  *&result = vcvt_hight_f32_f64(vcvt_f32_f64(v2), v1).u64[0];
  return result;
}

uint64_t *HGArray<short,(HGFormat)3>::resize(uint64_t *result, int a2)
{
  v3 = *result;
  if (*result)
  {
    if (*(v3 + 12) < a2)
    {
      result = HGArrayData::allocate(*result, a2);
    }

    *(v3 + 8) = a2;
  }

  else if (a2 > 0)
  {

    HGArrayDataRef::allocate(result);
  }

  return result;
}

void sub_25FFC403C(_Unwind_Exception *exception_object)
{
  v5 = v1[9];
  if (v5)
  {
    HGArrayData::Release(v5);
  }

  v6 = v1[7];
  if (v6)
  {
    HGArrayData::Release(v6);
  }

  v7 = v1[5];
  if (v7)
  {
    HGArrayData::Release(v7);
  }

  if (*v3)
  {
    HGArrayData::Release(*v3);
  }

  *v1 = v2;
  v8 = v1[1];
  if (v8)
  {
    HGArrayData::Release(v8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiFilteredPolygon_GeometryGL::add(int *a1, void *a2, float64x2_t *a3, double *a4, double *a5)
{
  v11 = *(a1 + 3);
  v9 = (a1 + 6);
  v10 = v11;
  if (v11)
  {
    v12 = *(v10 + 8);
  }

  else
  {
    v12 = 0;
  }

  v13 = vcvt_f32_f64(*a3);
  v14 = HGArray<PCVector3<float>,(HGFormat)21>::append(v9);
  *v14 = v13;
  *(v14 + 8) = 1056964608;
  v15 = HGArray<PCVector2<float>,(HGFormat)13>::append(a1 + 10);
  v16 = *a4;
  v17 = *a5;
  *v15 = v16;
  v15[1] = v17;
  *HGArray<PCVector2<float>,(HGFormat)13>::append(a1 + 14) = *a2;
  *HGArray<PCVector2<float>,(HGFormat)13>::append(a1 + 18) = a2[1];
  *HGArray<PCVector2<float>,(HGFormat)13>::append(a1 + 22) = a2[2];
  return v12;
}

uint64_t LiFilteredPolygon_GeometryGL::reserveImpl(LiFilteredPolygon_GeometryGL *this, int a2)
{
  HGArray<PCVector3<float>,(HGFormat)21>::reserve((this + 24), a2);
  HGArray<PCVector2<float>,(HGFormat)13>::reserve((this + 40), a2);
  HGArray<PCVector2<float>,(HGFormat)13>::reserve((this + 56), a2);
  HGArray<PCVector2<float>,(HGFormat)13>::reserve((this + 72), a2);

  return HGArray<PCVector2<float>,(HGFormat)13>::reserve((this + 88), a2);
}

void HGArray<short,(HGFormat)3>::HGArray(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 3;
  HGArrayDataRef::allocate(a1);
}

void sub_25FFC4210(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    HGArrayData::Release(*v1);
  }

  _Unwind_Resume(exception_object);
}

void HGArray<PCVector3<float>,(HGFormat)21>::HGArray(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 21;
  HGArrayDataRef::allocate(a1);
}

void sub_25FFC4268(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    HGArrayData::Release(*v1);
  }

  _Unwind_Resume(exception_object);
}

void HGArray<PCVector2<float>,(HGFormat)13>::HGArray(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 13;
  HGArrayDataRef::allocate(a1);
}

void sub_25FFC42C0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    HGArrayData::Release(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGArray<PCVector2<float>,(HGFormat)13>::append(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 8);
    v4 = v3 + 1;
    if (v3 < *(v2 + 12))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  HGArray<PCVector2<float>,(HGFormat)13>::reserve(a1, 2 * v4);
LABEL_6:
  HGArray<PCVector2<float>,(HGFormat)13>::resize(a1, v4);
  return *(*a1 + 16) + *(*a1 + 4) * v3 + a1[2];
}

uint64_t HGArray<PCVector3<float>,(HGFormat)21>::append(HGArrayDataRef *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(v2 + 8);
    v4 = v3 + 1;
    if (v3 < *(v2 + 12))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  HGArray<PCVector3<float>,(HGFormat)21>::reserve(this, 2 * v4);
LABEL_6:
  HGArray<HGVec3f,(HGFormat)21>::resize(this, v4);
  return *(*this + 16) + *(*this + 4) * v3 + *(this + 2);
}

uint64_t HGArray<PCVector3<float>,(HGFormat)21>::reserve(HGArrayDataRef *this, int a2)
{
  result = *this;
  if (result)
  {
    if (*(result + 12) < a2)
    {
      return HGArrayData::allocate(result, a2);
    }
  }

  else if (a2 > 0)
  {
    HGArrayDataRef::allocate(this);
  }

  return result;
}

uint64_t HGArray<PCVector2<float>,(HGFormat)13>::reserve(HGArrayDataRef *this, int a2)
{
  result = *this;
  if (result)
  {
    if (*(result + 12) < a2)
    {
      return HGArrayData::allocate(result, a2);
    }
  }

  else if (a2 > 0)
  {
    HGArrayDataRef::allocate(this);
  }

  return result;
}

uint64_t *HGArray<PCVector2<float>,(HGFormat)13>::resize(uint64_t *result, int a2)
{
  v3 = *result;
  if (*result)
  {
    if (*(v3 + 12) < a2)
    {
      result = HGArrayData::allocate(*result, a2);
    }

    *(v3 + 8) = a2;
  }

  else if (a2 > 0)
  {

    HGArrayDataRef::allocate(result);
  }

  return result;
}

uint64_t std::vector<PCVector3<double>>::__init_with_size[abi:ne200100]<PCVector3<double>*,PCVector3<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PCVector3<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FFC452C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void LiFilteredPolygon_GeometryGL::~LiFilteredPolygon_GeometryGL(LiFilteredPolygon_GeometryGL *this)
{
  *this = &unk_287266EF8;
  v2 = *(this + 11);
  if (v2)
  {
    HGArrayData::Release(v2);
  }

  v3 = *(this + 9);
  if (v3)
  {
    HGArrayData::Release(v3);
  }

  v4 = *(this + 7);
  if (v4)
  {
    HGArrayData::Release(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    HGArrayData::Release(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    HGArrayData::Release(v6);
  }

  *this = &unk_287266F40;
  v7 = *(this + 1);
  if (v7)
  {
    HGArrayData::Release(v7);
  }
}

void *_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE7reserveEm(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(result, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void HGArray<int,(HGFormat)34>::HGArray(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 34;
  HGArrayDataRef::allocate(a1);
}

void sub_25FFC46CC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    HGArrayData::Release(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGArray<int,(HGFormat)34>::append(int *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = *(v2 + 8);
    v4 = v3 + 1;
    if (v3 < *(v2 + 12))
    {
      goto LABEL_6;
    }
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  HGArray<int,(HGFormat)34>::reserve(a1, 2 * v4);
LABEL_6:
  HGArray<int,(HGFormat)34>::resize(a1, v4);
  return *(*a1 + 16) + *(*a1 + 4) * v3 + a1[2];
}

uint64_t *HGArray<int,(HGFormat)34>::resize(uint64_t *result, int a2)
{
  v3 = *result;
  if (*result)
  {
    if (*(v3 + 12) < a2)
    {
      result = HGArrayData::allocate(*result, a2);
    }

    *(v3 + 8) = a2;
  }

  else if (a2 > 0)
  {

    HGArrayDataRef::allocate(result);
  }

  return result;
}

uint64_t LiHeEdgeNode::BindTexture(LiHeEdgeNode *this, HGHandler *a2, uint64_t a3)
{
  HGHandler::TexCoord(a2, a3, 0, 0, 0);
  (*(*a2 + 72))(a2, a3, 0);
  if (a3 == 1)
  {
    (*(*a2 + 48))(a2, 1, 1);
  }

  else if (!a3)
  {
    (*(*a2 + 48))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  return 0;
}

void LiHeEdgeNode::~LiHeEdgeNode(LiHeEdgeNode *this)
{
  LiHeEdgeNodeFragment::~LiHeEdgeNodeFragment(this);

  HGObject::operator delete(v1);
}

void LiSceneObject::LiSceneObject(LiSceneObject *this, uint64_t *a2)
{
  v3 = a2[1];
  *this = v3;
  *(this + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 11) = 0x3FF0000000000000;
  *(this + 6) = 0x3FF0000000000000;
  *(this + 1) = 0x3FF0000000000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0x3FF0000000000000;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 22) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 8) = _Q0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 264) = 0;
  *(this + 49) = 0x3FF0000000000000;
  *(this + 44) = 0x3FF0000000000000;
  *(this + 39) = 0x3FF0000000000000;
  *(this + 34) = 0x3FF0000000000000;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 400) = 0;
  *(this + 480) = 0;
  *(this + 121) = 0;
  *(this + 61) = 0;
  *(this + 408) = 0u;
  *(this + 424) = 0;
  *(this + 448) = 0;
  *(this + 27) = 0u;
  *(this + 472) = 0;
  *(this + 456) = 0u;
  PCSharedCount::PCSharedCount(this + 62);
  *(this + 504) = 0;
  *(this + 32) = 0u;
  *(this + 132) = atomic_fetch_add(serial_compositeOrder, 1u) + 1;
  *(this + 532) = 0;
  *(this + 270) = 0;
  *(this + 68) = 0x3FF0000000000000;
  *(this + 138) = 257;
  *(this + 556) = 0;
  *(this + 140) = 0;
  *(this + 564) = 0;
}

void LiSceneObject::~LiSceneObject(PCSharedCount *this, PC_Sp_counted_base **a2)
{
  v3 = *a2;
  this->var0 = *a2;
  *(&this->var0 + *(v3 - 3)) = a2[3];
  LiString::dec(&this[64]);
  PCSharedCount::~PCSharedCount(this + 62);
}

uint64_t LiSceneObject::setTransform(uint64_t result, uint64_t a2)
{
  v2 = result + 8;
  if (result + 8 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v2 + j) = *(a2 + j);
      }

      v2 += 32;
      a2 += 32;
    }
  }

  return result;
}

uint64_t LiSceneObject::setPlacementTransform(uint64_t result, uint64_t a2)
{
  v2 = result + 136;
  if (result + 136 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v2 + j) = *(a2 + j);
      }

      v2 += 32;
      a2 += 32;
    }
  }

  *(result + 264) = 1;
  return result;
}

uint64_t LiSceneObject::setPlacementBoundsTransform(uint64_t result, uint64_t a2)
{
  v2 = result + 272;
  if (result + 272 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v2 + j) = *(a2 + j);
      }

      v2 += 32;
      a2 += 32;
    }
  }

  *(result + 400) = 1;
  return result;
}

__n128 LiSceneObject::setPlacementJitterX(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 408) = *a2;
  *(a1 + 424) = 1;
  return result;
}

__n128 LiSceneObject::setPlacementJitterY(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[27] = *a2;
  a1[28].n128_u8[0] = 1;
  return result;
}

__n128 LiSceneObject::setPlacementJitterZ(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 456) = *a2;
  *(a1 + 472) = 1;
  return result;
}

uint64_t LiSceneObject::setIndex(uint64_t this, int a2)
{
  *(this + 476) = a2;
  *(this + 480) = 1;
  return this;
}

double *LiSceneObject::boundingBox(uint64_t a1, double *a2, double *a3)
{
  v19 = xmmword_2603429E0;
  v20 = xmmword_2603429E0;
  v18 = xmmword_2603429E0;
  (*(*a1 + 72))(a1, &v18);
  v5 = 0;
  v6 = 0;
  v7 = -1.0;
  v8 = 1.0;
  v9 = 1.0;
  v10 = -1.0;
  v11 = 1.0;
  v12 = -1.0;
  do
  {
    v13 = (&v19 + 8);
    if ((v6 & 2) != 0)
    {
      v13 = &v19;
    }

    v14 = *v13;
    v15 = (&v20 + 8);
    if (v6 >= 4)
    {
      v15 = &v20;
    }

    v16 = *v15;
    v21 = *(&v18 | v5 & 8 ^ 8);
    v22 = v14;
    v23 = v16;
    result = PCMatrix44Tmpl<double>::transform<double>(a3, &v21, &v21);
    if (v5)
    {
      if (v8 >= v21)
      {
        v8 = v21;
      }

      if (v7 <= v21)
      {
        v7 = v21;
      }

      if (v9 >= v22)
      {
        v9 = v22;
      }

      if (v10 <= v22)
      {
        v10 = v22;
      }

      if (v11 >= v23)
      {
        v11 = v23;
      }

      if (v12 <= v23)
      {
        v12 = v23;
      }
    }

    else
    {
      v10 = v22;
      v12 = v23;
      v11 = v23;
      v9 = v22;
      v7 = v21;
      v8 = v21;
    }

    ++v6;
    v5 += 8;
  }

  while (v5 != 64);
  *a2 = v8;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v10;
  a2[4] = v11;
  a2[5] = v12;
  return result;
}

void LiSceneObject::setBlendMode(uint64_t a1, int a2, PCSharedCount *a3)
{
  *(a1 + 484) = a2;
  *(a1 + 488) = a3->var0;
  PCSharedCount::PCSharedCount(&v4, a3 + 1);
  PCSharedCount::operator=((a1 + 496), &v4);
  PCSharedCount::~PCSharedCount(&v4);
}

uint64_t LiSceneObject::findBounds(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v20 = 0x3FF0000000000000;
  v17 = 0x3FF0000000000000;
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v12 = 0u;
  v13 = 0u;
  v15 = 0u;
  v16 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(a2 + 12);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = 24;
    do
    {
      if (v7 >= *(a2 + 12))
      {
        PCArray_base::badIndex(a1);
      }

      a1 = PCVector3<double>::normalize((*(a2 + 16) + v8), 0.000000100000001);
      ++v7;
      v8 += 48;
    }

    while (v6 != v7);
  }

  v10 = 0;
  (*(*v5 + 128))(v5, a2, &v11, &v10, a3);
  return v10;
}

double *LiSceneObject::widenBounds(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, char a5)
{
  v30 = xmmword_2603429E0;
  v31 = xmmword_2603429E0;
  v29 = xmmword_2603429E0;
  result = (*(*a1 + 72))(a1, &v29);
  if (*&v29 <= *(&v29 + 1) && *&v30 <= *(&v30 + 1) && *&v31 <= *(&v31 + 1) && ((a5 & 1) != 0 || sqrt((*(&v29 + 1) - *&v29) * (*(&v29 + 1) - *&v29) + (*(&v30 + 1) - *&v30) * (*(&v30 + 1) - *&v30) + (*(&v31 + 1) - *&v31) * (*(&v31 + 1) - *&v31)) != 0.0))
  {
    PCMatrix44Tmpl<double>::operator*(a3, (a1 + 8), v28);
    v11 = 0;
    v12 = *(a2 + 12);
    do
    {
      v13 = &v29 + 1;
      if (v11)
      {
        v13 = &v29;
      }

      v14 = *v13;
      v15 = &v30;
      if ((v11 & 2) == 0)
      {
        v15 = &v30 + 1;
      }

      v16 = *v15;
      v17 = &v31;
      if (v11 < 4)
      {
        v17 = (&v31 + 8);
      }

      v18 = *v17;
      v26.f64[0] = v14;
      v26.f64[1] = v16;
      v27 = v18;
      result = PCMatrix44Tmpl<double>::transform<double>(v28, v26.f64, v26.f64);
      if (v12 >= 1)
      {
        v19 = 0;
        v20 = 24;
        do
        {
          if (v19 >= *(a2 + 12))
          {
            PCArray_base::badIndex(result);
          }

          v21 = (*(a2 + 16) + v20);
          v22 = v21[-1].f64[1];
          v23 = *(v21 - 24);
          v24 = v21[1].f64[0];
          v25 = vaddvq_f64(vmulq_f64(vsubq_f64(v26, v23), *v21)) + (v27 - v22) * v24;
          if (v25 < 0.0 || (*a4 & 1) == 0)
          {
            *(v21 - 24) = vaddq_f64(v23, vmulq_n_f64(*v21, v25));
            v21[-1].f64[1] = v22 + v24 * v25;
          }

          ++v19;
          v20 += 48;
        }

        while (v12 != v19);
      }

      *a4 = 1;
      ++v11;
    }

    while (v11 != 8);
  }

  return result;
}

uint64_t LiSceneObject::print(uint64_t a1, void *a2, uint64_t a3)
{
  LiImageSource::printIndent(a2, a3);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "LiSceneObject(", 15);
  if (*(a1 + 512))
  {
    v7 = *(a1 + 512);
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ", compositeOrder=", 18);
  MEMORY[0x2666E9B50](v9, *(a1 + 528));
  if (*(a1 + 532) || *(a1 + 536))
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B50](v10, *(a1 + 532));
    if (*(a1 + 540) == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "(r)", 3);
    }
  }

  if (*(a1 + 536))
  {
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B50](v11, *(a1 + 536));
  }

  if ((*(a1 + 552) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", doesReflect=false", 19);
  }

  if ((*(a1 + 553) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", visibleOutsideReflection=false", 32);
  }

  if (*(a1 + 544) != 1.0)
  {
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", opacity=", 10);
    MEMORY[0x2666E9B30](v12, *(a1 + 544));
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ")", 1);
  std::ios_base::getloc((v13 + *(*v13 - 24)));
  v14 = std::locale::use_facet(&v17, MEMORY[0x277D82680]);
  (v14->__vftable[2].~facet_0)(v14, 10);
  std::locale::~locale(&v17);
  std::ostream::put();
  std::ostream::flush();
  v15 = *(*a1 + 120);

  return v15(a1, a2, a3);
}

void LiSceneObject::printTransform(uint64_t a1, void *a2, int a3)
{
  if (!PCMatrix44Tmpl<double>::isIdentity((a1 + 8)))
  {

    PCMatrix44Tmpl<double>::print(a1 + 8, a2, a3 + 2);
  }
}

void ShadowMap::ShadowMap(ShadowMap *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 13) = 0x3FF0000000000000;
  *(this + 8) = 0x3FF0000000000000;
  *(this + 2) = 0;
  *(this + 3) = 0x3FF0000000000000;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 29) = 0x3FF0000000000000;
  *(this + 24) = 0x3FF0000000000000;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 9) = _Q0;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 50) = 0x3FF0000000000000;
  *(this + 45) = 0x3FF0000000000000;
  *(this + 40) = 0x3FF0000000000000;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 17) = _Q0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 55) = 0xBFF0000000000000;
  *(this + 56) = 0xBFF0000000000000;
  LiPolygon::LiPolygon((this + 456));
  __asm { FMOV            V0.2D, #-1.0 }

  *(this + 35) = 0u;
  *(this + 36) = _Q0;
  *(this + 592) = 0;
}

void sub_25FFC5594(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL ShadowMap::operator*=(uint64_t a1, uint64_t a2)
{
  result = PCMatrix44Tmpl<double>::isIdentity(a2);
  if (!result)
  {
    v5 = *(a2 + 80);
    v19[4] = *(a2 + 64);
    v19[5] = v5;
    v6 = *(a2 + 112);
    v19[6] = *(a2 + 96);
    v19[7] = v6;
    v7 = *(a2 + 16);
    v19[0] = *a2;
    v19[1] = v7;
    v8 = *(a2 + 48);
    v19[2] = *(a2 + 32);
    v19[3] = v8;
    PCMatrix44Tmpl<double>::invert(v19, v19, 0.0);
    PCMatrix44Tmpl<double>::operator*(a2, (a1 + 24), v18);
    if (v18 != (a1 + 24))
    {
      for (i = 0; i != 128; i += 32)
      {
        v10 = (a1 + 24 + i);
        v11 = *&v18[i + 16];
        *v10 = *&v18[i];
        v10[1] = v11;
      }
    }

    PCMatrix44Tmpl<double>::operator*(a1 + 152, v19, v18);
    if (v18 != (a1 + 152))
    {
      for (j = 0; j != 128; j += 32)
      {
        v13 = (a1 + 152 + j);
        v14 = *&v18[j + 16];
        *v13 = *&v18[j];
        v13[1] = v14;
      }
    }

    PCMatrix44Tmpl<double>::operator*(a1 + 280, v19, v18);
    if (v18 != (a1 + 280))
    {
      for (k = 0; k != 128; k += 32)
      {
        v16 = (a1 + 280 + k);
        v17 = *&v18[k + 16];
        *v16 = *&v18[k];
        v16[1] = v17;
      }
    }

    return transformPlane<double>(a2, (a1 + 472), a1 + 472);
  }

  return result;
}

void ShadowCubeMap::ShadowCubeMap(ShadowCubeMap *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_287267208;
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = &unk_287267258;
  PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::resize(this, 1, 3);
  v2 = *(this + 2) + 24 * *(this + 3);
  if (*(v2 - 16) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(v2 - 16);
  }

  PCArray<ShadowMap,PCArray_Traits<ShadowMap>>::resize(v2 - 24, 0, v3);
  ShadowMapsLazy::~ShadowMapsLazy(v4);
}

void sub_25FFC580C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ShadowMapsLazy::~ShadowMapsLazy(va);
  PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::~PCArray(v2);
  _Unwind_Resume(a1);
}

void ShadowMapsLazy::~ShadowMapsLazy(ShadowMapsLazy *this)
{
  *this = &unk_2872672A8;
  if (*(this + 2) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 2);
  }

  PCArray<ShadowMap,PCArray_Traits<ShadowMap>>::resize(this, 0, v2);
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
}

{
  ShadowMapsLazy::~ShadowMapsLazy(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2872672C8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void ShadowCubeMap::~ShadowCubeMap(ShadowCubeMap *this)
{
  *this = &unk_2872672C8;
  if (*(this + 2) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 2);
  }

  PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::resize(this, 0, v2);
  v3 = *(this + 2);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
}

{
  ShadowCubeMap::~ShadowCubeMap(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t ShadowCubeMap::operator*=(uint64_t result, uint64_t a2)
{
  v2 = *(result + 12);
  if (v2 >= 1)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      v6 = *(v4 + 16) + 24 * i;
      if (*(v6 + 12) >= 1)
      {
        v7 = 0;
        v8 = 0;
        do
        {
          result = ShadowMap::operator*=(*(v6 + 16) + v7, a2);
          ++v8;
          v7 += 600;
        }

        while (v8 < *(v6 + 12));
        v2 = *(v4 + 12);
      }
    }
  }

  return result;
}

void PCArray<ShadowMap,PCArray_Traits<ShadowMap>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2872672A8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ShadowMap,PCArray_Traits<ShadowMap>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t ShadowMap::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4 != v5)
  {
    if (v4)
    {
      (*(*v4 + 24))(v4);
      v5 = *(a2 + 16);
    }

    *(a1 + 16) = v5;
    if (v5)
    {
      (*(*v5 + 16))(v5);
    }
  }

  if (a2 != a1)
  {
    v6 = 0;
    v7 = a1 + 24;
    v8 = a2 + 24;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v7 + i) = *(v8 + i);
      }

      ++v6;
      v7 += 32;
      v8 += 32;
    }

    while (v6 != 4);
    if (a2 != a1)
    {
      v10 = 0;
      v11 = a1 + 152;
      v12 = a2 + 152;
      do
      {
        for (j = 0; j != 32; j += 8)
        {
          *(v11 + j) = *(v12 + j);
        }

        ++v10;
        v11 += 32;
        v12 += 32;
      }

      while (v10 != 4);
      if (a2 != a1)
      {
        v14 = 0;
        v15 = a1 + 280;
        v16 = a2 + 280;
        do
        {
          for (k = 0; k != 32; k += 8)
          {
            *(v15 + k) = *(v16 + k);
          }

          ++v14;
          v15 += 32;
          v16 += 32;
        }

        while (v14 != 4);
      }
    }
  }

  v18 = *(a2 + 408);
  v19 = *(a2 + 440);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 440) = v19;
  *(a1 + 408) = v18;
  LiPolygon::operator=(a1 + 456, a2 + 456);
  v20 = *(a2 + 592);
  v21 = *(a2 + 576);
  *(a1 + 560) = *(a2 + 560);
  *(a1 + 576) = v21;
  *(a1 + 592) = v20;
  return a1;
}

void PCArray<ShadowMap,PCArray_Traits<ShadowMap>>::resize(uint64_t a1, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v19, "PCArray::resize");
    PCException::PCException(exception, &v19);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v9 = 600 * v6;
        v10 = a2 - v6;
        do
        {
          ShadowMap::ShadowMap((*(a1 + 16) + v9));
          v9 += 600;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 600 * a2;
      v8 = a2;
      do
      {
        ShadowMap::~ShadowMap((*(a1 + 16) + v7));
        v7 += 600;
        ++v8;
      }

      while (*(a1 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v11 = *(a1 + 12);
    if (a2 >= v11)
    {
      v12 = *(a1 + 12);
    }

    else
    {
      v12 = a2;
    }

    if (v12 < 1)
    {
      v12 = 0;
    }

    else
    {
      v13 = 0;
      do
      {
        ShadowMap::ShadowMap(v13, (v13 + *(a1 + 16)));
        ShadowMap::~ShadowMap((v13 + *(a1 + 16)));
        v13 = (v13 + 600);
      }

      while ((600 * v12) != v13);
      v11 = *(a1 + 12);
    }

    if (v12 < v11)
    {
      v14 = 600 * v12;
      do
      {
        ShadowMap::~ShadowMap((*(a1 + 16) + v14));
        v14 += 600;
        ++v12;
      }

      while (*(a1 + 12) > v12);
    }

    if (v12 < a2)
    {
      v15 = (600 * v12);
      do
      {
        ShadowMap::ShadowMap(v15);
        v15 = (v16 + 600);
        ++v12;
      }

      while (v12 < a2);
    }

    v17 = *(a1 + 16);
    if (v17)
    {
      MEMORY[0x2666E9ED0](v17, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void ShadowMap::ShadowMap(ShadowMap *this, const ShadowMap *a2)
{
  *this = *a2;
  v4 = *(a2 + 2);
  *(this + 2) = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  memcpy(this + 24, a2 + 24, 0x1B0uLL);
  LiPolygon::LiPolygon((this + 456), (a2 + 456));
  v5 = *(a2 + 35);
  v6 = *(a2 + 36);
  *(this + 592) = *(a2 + 592);
  *(this + 35) = v5;
  *(this + 36) = v6;
}

void sub_25FFC5FD4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  _Unwind_Resume(exception_object);
}

void ShadowMap::~ShadowMap(ShadowMap *this)
{
  LiPolygon::~LiPolygon((this + 456));
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }
}

void PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2872672C8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<ShadowMapsLazy,PCArray_Traits<ShadowMapsLazy>>::resize(uint64_t result, int a2, int a3)
{
  if (a3 <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a3;
  }

  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v25, "PCArray::resize");
    PCException::PCException(exception, &v25);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 8))
  {
    v6 = *(result + 12);
    if (v6 <= a2)
    {
      if (v6 < a2)
      {
        v9 = 24 * v6;
        v10 = a2 - v6;
        do
        {
          v11 = (*(result + 16) + v9);
          v11[1] = 0;
          v11[2] = 0;
          *v11 = &unk_287267258;
          v9 += 24;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 24 * a2;
      v8 = a2;
      do
      {
        result = (**(*(v5 + 16) + v7))(*(v5 + 16) + v7);
        v7 += 24;
        ++v8;
      }

      while (*(v5 + 12) > v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v12 = *(result + 12);
    if (a2 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = a2;
    }

    if (v13 < 1)
    {
      LODWORD(v13) = 0;
    }

    else
    {
      for (i = 0; i != v13; ++i)
      {
        v15 = 24 * i;
        v16 = *(v5 + 16) + 24 * i;
        *(v15 + 8) = 0;
        *(v15 + 16) = 0;
        *v15 = &unk_2872672A8;
        v17 = *(v16 + 12);
        if (v17 > 0)
        {
          v18 = 2 * v17 + 1;
        }

        else
        {
          v18 = 0;
        }

        PCArray<ShadowMap,PCArray_Traits<ShadowMap>>::resize(24 * i, v17, v18);
        if (*(v16 + 12) >= 1)
        {
          v19 = 0;
          v20 = 0;
          do
          {
            ShadowMap::operator=(*(24 * i + 0x10) + v19, *(v16 + 16) + v19);
            ++v20;
            v19 += 600;
          }

          while (v20 < *(v16 + 12));
        }

        *v15 = &unk_287267258;
        (**(*(v5 + 16) + 24 * i))(*(v5 + 16) + 24 * i);
      }

      v12 = *(v5 + 12);
      v3 = 0;
    }

    if (v13 < v12)
    {
      v21 = 24 * v13;
      do
      {
        (**(*(v5 + 16) + v21))(*(v5 + 16) + v21);
        v21 += 24;
        LODWORD(v13) = v13 + 1;
      }

      while (*(v5 + 12) > v13);
    }

    if (v13 < a2)
    {
      v22 = 24 * v13;
      v23 = (v22 + 8);
      do
      {
        *v23 = 0;
        v23[1] = 0;
        *(v23 - 1) = &unk_287267258;
        v23 += 3;
        v22 += 24;
        LODWORD(v13) = v13 + 1;
      }

      while (v13 < a2);
    }

    result = *(v5 + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v5 + 16) = 0;
  }

  *(v5 + 8) = v3;
  *(v5 + 12) = a2;
  return result;
}

BOOL liDebug(const char *a1)
{
  {
    v20 = getenv("LITHIUM_DEBUG");
    LiString::LiString(&v25, v20);
    LiString::trim(&v25, &liDebug(char const*)::dbg);
    if (v25 && atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      if (v25)
      {
        v21 = (v25 - 3);
      }

      else
      {
        v21 = 0;
      }

      free(v21);
    }

    __cxa_atexit(LiString::~LiString, &liDebug(char const*)::dbg, &dword_25F8F0000);
  }

  v25 = liDebug(char const*)::dbg;
  if (liDebug(char const*)::dbg)
  {
    atomic_fetch_add((liDebug(char const*)::dbg - 12), 1u);
  }

  LiString::LiString(&v23, a1);
  LiString::trim(&v23, &v24);
  if (v23 && atomic_fetch_add(v23 - 3, 0xFFFFFFFF) == 1)
  {
    *v23 = 0;
    if (v23)
    {
      v2 = (v23 - 3);
    }

    else
    {
      v2 = 0;
    }

    free(v2);
  }

  for (i = v25; v25; i = v25)
  {
    v4 = *(i - 2);
    if (v4 < 1)
    {
      break;
    }

    v5 = 0;
    while (*(i + v5) != 44)
    {
      if (v4 == ++v5)
      {
        goto LABEL_44;
      }
    }

    LiString::to(&v25, v5 - 1, &v22);
    LiString::trim(&v22, &v23);
    v6 = LiString::operator==(&v23, &v24);
    if (v23 && atomic_fetch_add(v23 - 3, 0xFFFFFFFF) == 1)
    {
      *v23 = 0;
      if (v23)
      {
        v7 = (v23 - 3);
      }

      else
      {
        v7 = 0;
      }

      free(v7);
      v23 = 0;
    }

    if (v22 && atomic_fetch_add(v22 - 3, 0xFFFFFFFF) == 1)
    {
      *v22 = 0;
      if (v22)
      {
        v8 = v22 - 3;
      }

      else
      {
        v8 = 0;
      }

      free(v8);
    }

    if (v6)
    {
      v15 = 1;
      goto LABEL_50;
    }

    v9 = v25;
    if (!v25)
    {
      break;
    }

    v10 = *(v25 - 2);
    if (v10 <= v5 + 1 || (v11 = ~v5 + v10, v11 < 1))
    {
      v13 = 0;
    }

    else
    {
      v12 = malloc_type_malloc((v10 - v5 + 12), 0x10000403E1C8BA9uLL);
      v12[1] = v11;
      v12[2] = v10 - v5;
      atomic_store(1u, v12);
      v13 = (v12 + 3);
      memcpy(v12 + 3, v9 + v5 + 1, v11);
      v13[v11] = 0;
      v9 = v25;
      if (!v25)
      {
        v25 = v13;
        goto LABEL_41;
      }
    }

    if (atomic_fetch_add(v9 - 3, 0xFFFFFFFF) == 1)
    {
      *v25 = 0;
      if (v25)
      {
        v14 = (v25 - 3);
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }

    v25 = v13;
    if (!v13)
    {
      break;
    }

LABEL_41:
    atomic_fetch_add(v13 - 3, 1u);
    if (atomic_fetch_add(v13 - 3, 0xFFFFFFFF) == 1)
    {
      *v13 = 0;
      free((v13 - 12));
    }
  }

LABEL_44:
  LiString::trim(&v25, &v23);
  v15 = LiString::operator==(&v23, &v24);
  if (v23 && atomic_fetch_add(v23 - 3, 0xFFFFFFFF) == 1)
  {
    *v23 = 0;
    if (v23)
    {
      v16 = (v23 - 3);
    }

    else
    {
      v16 = 0;
    }

    free(v16);
  }

LABEL_50:
  if (v24 && atomic_fetch_add(v24 - 3, 0xFFFFFFFF) == 1)
  {
    *v24 = 0;
    if (v24)
    {
      v17 = (v24 - 3);
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  if (v25 && atomic_fetch_add(v25 - 3, 0xFFFFFFFF) == 1)
  {
    *v25 = 0;
    if (v25)
    {
      v18 = (v25 - 3);
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  return v15;
}

void sub_25FFC689C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (a12)
  {
    if (atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
    {
      *a12 = 0;
      free(a12 - 3);
    }
  }

  _Unwind_Resume(a1);
}

void LiString::trim(LiString *this@<X0>, LiString *a2@<X8>)
{
  LiString::ltrim(this, &v4);
  LiString::rtrim(&v4, a2);
  if (v4 && atomic_fetch_add(v4 - 3, 0xFFFFFFFF) == 1)
  {
    *v4 = 0;
    if (v4)
    {
      v3 = (v4 - 3);
    }

    else
    {
      v3 = 0;
    }

    free(v3);
  }
}

void sub_25FFC6AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    LiGeode::print(a10, &a10);
  }

  _Unwind_Resume(exception_object);
}

void LiString::format(LiString *this@<X0>, LiString *a2@<X8>, ...)
{
  va_start(va, a2);
  v5 = *MEMORY[0x277D85DE8];
  vsnprintf(__str, 0x800uLL, this, va);
  LiString::LiString(a2, __str);
}

uint64_t LiString::contains(char **this, const char **a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  v3 = *a2;
  if (!v3)
  {
    return 1;
  }

  result = strstr(*this, v3);
  if (result)
  {
    return result - v2 != -1;
  }

  return result;
}

void LiString::ltrim(LiString *this@<X0>, LiString *a2@<X8>)
{
  if (*this)
  {
    v4 = *(*this - 8);
    if (v4 < 1)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      v5 = 0;
      v6 = MEMORY[0x277D85DE0];
      do
      {
        v7 = *(*this + v5);
        if ((v7 & 0x80000000) != 0)
        {
          if (!__maskrune(v7, 0x4000uLL))
          {
            goto LABEL_12;
          }
        }

        else if ((*(v6 + 4 * v7 + 60) & 0x4000) == 0)
        {
          goto LABEL_12;
        }

        ++v5;
      }

      while (v4 != v5);
      LODWORD(v5) = v4;
    }

LABEL_12:

    LiString::from(this, v5, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void LiString::rtrim(const char **this@<X0>, LiString *a2@<X8>)
{
  if (*this)
  {
    v4 = *(*this - 2);
    v5 = v4 - 1;
    v6 = MEMORY[0x277D85DE0];
    do
    {
      v7 = __OFSUB__(v4--, 1);
      if (v4 < 0 != v7)
      {
        break;
      }

      v8 = (*this)[v5];
      v9 = (v8 & 0x80000000) != 0 ? __maskrune(v8, 0x4000uLL) : *(v6 + 4 * v8 + 60) & 0x4000;
      --v5;
    }

    while (v9);

    LiString::to(this, v4, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void LiString::to(const char **this@<X0>, int a2@<W1>, LiString *a3@<X8>)
{
  v4 = *this;
  if (!*this)
  {
LABEL_5:
    *a3 = 0;
    return;
  }

  if (*(v4 - 2) > a2)
  {
    if ((a2 & 0x80000000) == 0)
    {
      LiString::LiString(a3, v4, a2 + 1);
      return;
    }

    goto LABEL_5;
  }

  *a3 = v4;
  atomic_fetch_add(v4 - 3, 1u);
}

void DiffuseMaterialLayer::setBlendMode(uint64_t a1, int a2)
{
  if (*(a1 + 32) != a2)
  {
    *(a1 + 32) = a2;
    if (a2 <= 3)
    {
      if (a2 > 1)
      {
        if (a2 != 2)
        {
          operator new();
        }

        operator new();
      }

      if (a2)
      {
        if (a2 == 1)
        {
          operator new();
        }
      }

      else
      {
        v2 = (a1 + 40);

        PCPtr<LiImageSource>::reset(v2);
      }
    }

    else
    {
      if (a2 <= 5)
      {
        if (a2 != 4)
        {
          operator new();
        }

        operator new();
      }

      switch(a2)
      {
        case 6:
          operator new();
        case 7:
          operator new();
        case 8:
          operator new();
      }
    }
  }
}

void DiffuseMaterialLayer::ReplaceDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFC7488(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 3);
  *(v2 - 88) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v2 - 64));
  _Unwind_Resume(a1);
}

void DiffuseMaterialLayer::OverDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFC79C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, PCSharedCount a18, void *a19, uint64_t a20, uint64_t a21, PCSharedCount a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, PCSharedCount a30, void *a31, uint64_t a32, uint64_t a33, PCSharedCount a34, void *a35)
{
  a35 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v38 + 3);
  a31 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a34);
  a27 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a30);
  a19 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a22);
  PCSharedCount::~PCSharedCount(v40 + 3);
  PCSharedCount::~PCSharedCount(&a18);
  PCSharedCount::~PCSharedCount(v37 + 3);
  *(v41 - 192) = v36;
  PCSharedCount::~PCSharedCount(v39 + 3);
  *(v41 - 128) = v35;
  PCSharedCount::~PCSharedCount((v41 - 104));
  *(v41 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v41 - 136));
  _Unwind_Resume(a1);
}

void DiffuseMaterialLayer::AddDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFC8140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, PCSharedCount a24, uint64_t a25, uint64_t a26, uint64_t a27, PCSharedCount a28, uint64_t a29, uint64_t a30, uint64_t a31, PCSharedCount a32, void *a33, uint64_t a34, uint64_t a35, PCSharedCount a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, PCSharedCount a44)
{
  a37 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v45 + 3);
  PCSharedCount::~PCSharedCount(&a24);
  PCSharedCount::~PCSharedCount(v46 + 3);
  PCSharedCount::~PCSharedCount(v44 + 3);
  a33 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a36);
  PCSharedCount::~PCSharedCount(&a28);
  a29 = a10;
  PCSharedCount::~PCSharedCount(&a32);
  a41 = a11;
  PCSharedCount::~PCSharedCount(&a44);
  *(v47 - 224) = a12;
  PCSharedCount::~PCSharedCount((v47 - 200));
  *(v47 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v47 - 168));
  _Unwind_Resume(a1);
}

void sub_25FFC82D8()
{
  *(v1 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v0 + 3);
  *(v1 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v1 - 136));
  JUMPOUT(0x25FFC8234);
}

void DiffuseMaterialLayer::OverUnderDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFC8B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount a13, uint64_t a14, uint64_t a15, uint64_t a16, PCSharedCount a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, PCSharedCount a25, void *a26, uint64_t a27, uint64_t a28, PCSharedCount a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, PCSharedCount a37)
{
  *(v40 - 120) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v37 + 3);
  a34 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a37);
  a26 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a29);
  PCSharedCount::~PCSharedCount(&a13);
  a22 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a25);
  PCSharedCount::~PCSharedCount(&a17);
  PCSharedCount::~PCSharedCount(v39 + 3);
  PCSharedCount::~PCSharedCount(v38 + 3);
  *(v40 - 216) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v40 - 192));
  *(v40 - 184) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v40 - 160));
  *(v40 - 152) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v40 - 128));
  _Unwind_Resume(a1);
}

void ProShade::mix(const PCSharedCount *a1, const PCSharedCount *a2, const PCSharedCount *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  v12[0] = &unk_28725E328;
  v12[2] = var0;
  PCSharedCount::PCSharedCount(v13, a1 + 3);
  v6 = a2[2].var0;
  v10[0] = &unk_28725E328;
  v10[2] = v6;
  PCSharedCount::PCSharedCount(&v11, a2 + 3);
  v7 = a3[2].var0;
  v8[0] = &unk_28725E328;
  v8[2] = v7;
  PCSharedCount::PCSharedCount(&v9, a3 + 3);
  ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::mix_traits>>::eval(v12, v10, v8);
}

void sub_25FFC9044(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v3 + 3);
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void DiffuseMaterialLayer::MultiplyDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFC9330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, PCSharedCount a29)
{
  PCSharedCount::~PCSharedCount(v30 + 3);
  PCSharedCount::~PCSharedCount(v32 + 3);
  *(v33 - 104) = v29;
  PCSharedCount::~PCSharedCount(v31 + 3);
  PCSharedCount::~PCSharedCount(&a29);
  _Unwind_Resume(a1);
}

void sub_25FFC9B50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, PCSharedCount a62)
{
  PCSharedCount::~PCSharedCount(v66 + 3);
  PCSharedCount::~PCSharedCount(v65 + 3);
  PCSharedCount::~PCSharedCount(&a62);
  *(v67 - 256) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v67 - 232));
  *(v67 - 224) = v64;
  PCSharedCount::~PCSharedCount((v67 - 200));
  *(v67 - 192) = v63;
  PCSharedCount::~PCSharedCount((v67 - 168));
  *(v67 - 160) = v62;
  PCSharedCount::~PCSharedCount((v67 - 136));
  *(v67 - 128) = a10;
  PCSharedCount::~PCSharedCount((v67 - 104));
  _Unwind_Resume(a1);
}

void DiffuseMaterialLayer::SimpleMultiplyDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFCA53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, PCSharedCount a34)
{
  PCSharedCount::~PCSharedCount(v34 + 3);
  PCSharedCount::~PCSharedCount(v36 + 3);
  PCSharedCount::~PCSharedCount(v35 + 3);
  PCSharedCount::~PCSharedCount(&a34);
  *(v37 - 128) = a10;
  PCSharedCount::~PCSharedCount((v37 - 104));
  *(v37 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v37 - 136));
  _Unwind_Resume(a1);
}

void DiffuseMaterialLayer::OverWhiteMultiplyDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFCAD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, PCSharedCount a32, void *a33, uint64_t a34, uint64_t a35, PCSharedCount a36)
{
  PCSharedCount::~PCSharedCount(v36 + 3);
  PCSharedCount::~PCSharedCount(&a32);
  a33 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a36);
  *(v37 - 160) = a10;
  PCSharedCount::~PCSharedCount((v37 - 136));
  *(v37 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v37 - 104));
  _Unwind_Resume(a1);
}

void DiffuseMaterialLayer::OverBlackScreenDiffuseColor::eval(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, *(*(a1 + 8) + 27));
}

void sub_25FFCB96C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, PCSharedCount a20, void *a21, uint64_t a22, uint64_t a23, PCSharedCount a24, void *a25, uint64_t a26, uint64_t a27, PCSharedCount a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, PCSharedCount a36, void *a37, uint64_t a38, uint64_t a39, PCSharedCount a40)
{
  a29 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v40 + 3);
  a25 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a28);
  PCSharedCount::~PCSharedCount(&a20);
  a21 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a24);
  a33 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a36);
  a37 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a40);
  *(v41 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v41 - 168));
  *(v41 - 160) = a10;
  PCSharedCount::~PCSharedCount((v41 - 136));
  *(v41 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v41 - 104));
  _Unwind_Resume(a1);
}

uint64_t DiffuseMaterialLayer::computeDiffuseColor(uint64_t a1, uint64_t a2, const PCSharedCount *a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v4 + 16))(v4, a2, a3);

  return ProShade::VarT<ProShade::Node>::operator=(&a3[68], a3 + 64);
}

void DiffuseMaterialLayer::getDiffuse(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v5 = &unk_28725E328;
  v6 = *(a3 + 72);
  v7 = *(a3 + 80);
  PCSharedCount::PCSharedCount(v8, (a3 + 88));
  v5 = &unk_287268E10;
  PCSharedCount::PCSharedCount(&v4, v8);
  v5 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v8);
  LiLightProperties::getAttenuation(a3, &v5);
}

void sub_25FFCD4A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, PCSharedCount a38, void *a39, uint64_t a40, uint64_t a41, PCSharedCount a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, PCSharedCount a50, void *a51, uint64_t a52, uint64_t a53, PCSharedCount a54, void *a55, uint64_t a56, uint64_t a57, PCSharedCount a58, void *a59, uint64_t a60, uint64_t a61, PCSharedCount a62, void *a63)
{
  *(v74 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v71 + 3);
  *(v74 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v74 - 136));
  a47 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a50);
  a39 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a42);
  PCSharedCount::~PCSharedCount(v73 + 3);
  PCSharedCount::~PCSharedCount(&a38);
  PCSharedCount::~PCSharedCount(v72 + 3);
  a55 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a58);
  a51 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a54);
  a59 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a62);
  a63 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a66);
  a67 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a70);
  a71 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x208]);
  STACK[0x210] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x228]);
  STACK[0x230] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x248]);
  STACK[0x250] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x268]);
  STACK[0x270] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x288]);
  STACK[0x290] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x2A8]);
  STACK[0x2B0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x2C8]);
  STACK[0x2D0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x2E8]);
  STACK[0x2F0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x308]);
  STACK[0x310] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x328]);
  STACK[0x330] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x348]);
  STACK[0x350] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x368]);
  *(v74 - 256) = a11;
  PCSharedCount::~PCSharedCount((v74 - 232));
  *(v74 - 224) = a12;
  PCSharedCount::~PCSharedCount((v74 - 200));
  *(v74 - 192) = a13;
  PCSharedCount::~PCSharedCount((v74 - 168));
  _Unwind_Resume(a1);
}

uint64_t DiffuseMaterialLayer::isOpaque(uint64_t a1, char *a2, os_unfair_lock_s *a3, uint64_t (***a4)(void, void))
{
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(a1);
  v9 = LiMaterialLayerUniform::get(a3, DstAlphaFactor);
  v12 = 0.0;
  result = LiMaterial::get<double>(a3, v9 + 160, &v12);
  if (*(a1 + 32) == 6)
  {
    if (fabs(v12 + -1.0) >= 0.0000001 || (result = LiMaterial::getSamplerInfo(a3, *(v9 + 368)), *(result + 316) == 1) && (result = (**a4)(a4, *(v9 + 368)), (result & 1) == 0))
    {
      v11 = 0;
LABEL_6:
      *a2 = v11;
    }
  }

  else if ((*(a1 + 9) & 1) == 0 && fabs(v12 + -1.0) < 0.0000001)
  {
    result = *(LiMaterial::getSamplerInfo(a3, *(v9 + 368)) + 316) == 1 ? (**a4)(a4, *(v9 + 368)) : 1;
    if ((*(a1 + 28) & 1) == 0 && result)
    {
      v11 = 1;
      goto LABEL_6;
    }
  }

  return result;
}

PCArray_base *LiMaterial::get<double>(PCArray_base *result, uint64_t a2, BOOL *a3)
{
  v3 = *(result + 147);
  if (v3 >= 1)
  {
    v5 = 0;
    for (i = 8; ; i += 152)
    {
      if (v5 >= *(result + 147))
      {
        PCArray_base::badIndex(result);
      }

      v7 = *(result + 74);
      if (*(v7 + i - 8) == *(a2 + 16))
      {
        break;
      }

      if (++v5 >= v3)
      {
        return result;
      }
    }

    if (v5 >= *(result + 147))
    {
      PCArray_base::badIndex(result);
    }

    if (*(v7 + i) == 3)
    {
      v9 = 0;
      if (v5 >= *(result + 147))
      {
        PCArray_base::badIndex(result);
      }

      result = ProShade::Value::get((v7 + i), *(v7 + i), &v9);
      *a3 = v9;
    }

    else
    {
      if (v5 >= *(result + 147))
      {
        PCArray_base::badIndex(result);
      }

      v8 = *(v7 + i);

      return ProShade::Value::get((v7 + i), v8, a3);
    }
  }

  return result;
}

void DiffuseMaterialLayer::computeColor(HGGLBlendingInfo *a1, uint64_t a2, const PCSharedCount *a3)
{
  v23[8] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(a1);
  v8 = LiMaterialLayerUniform::get(v6, DstAlphaFactor);
  if (*(a1 + 28) == 1)
  {
    SamplerInfo = LiMaterial::getSamplerInfo(*(a2 + 40), *(v8 + 1360));
    v14 = *(SamplerInfo + 316);
    v15 = *(SamplerInfo + 332);
    v18 = &unk_28725E920;
    v19 = *(v8 + 1352);
    v20 = *(v8 + 1360);
    PCSharedCount::PCSharedCount(&v21, (v8 + 1368));
    v18 = &unk_28725E878;
    ProShade::VarT<ProShade::UniformNode>::VarT(&v22, *(v8 + 1392));
    v22.var0 = &unk_28725EAA0;
    ProShade::VarT<ProShade::UniformNode>::VarT(v23, *(v8 + 1424));
    v23[0].var0 = &unk_28725EB20;
    v10 = *(a2 + 40);
    v16 = *(v10 + 697);
    v17 = *(v10 + 698);
    v11.var0 = &unk_28725E328;
    PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v12, (v8 + 1712));
    LiMaterialLayer::sampleTextureMap();
  }

  DiffuseMaterialLayer::computeDiffuseColor(a1, a2, a3);
  if (*(a1 + 8) == 1)
  {
    v11.var0 = &unk_28725E328;
    PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v12, (v8 + 304));
  }

  else
  {
    v11.var0 = &unk_28725E328;
    PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v12, (v8 + 144));
  }

  ProShade::VarT<ProShade::Node>::operator=(&a3[40], &v11);
  v11.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v13);
  v23[4].var0 = &unk_28725E328;
  operator new();
}

void sub_25FFCF41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, PCSharedCount a26, void *a27, uint64_t a28, uint64_t a29, PCSharedCount a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, PCSharedCount a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, PCSharedCount a58)
{
  a51 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v60 + 3);
  a47 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a50);
  PCSharedCount::~PCSharedCount(&a26);
  PCSharedCount::~PCSharedCount(v59 + 3);
  PCSharedCount::~PCSharedCount(v58 + 3);
  a27 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a30);
  *(v61 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v61 - 104));
  a55 = a10;
  PCSharedCount::~PCSharedCount(&a58);
  *(v61 - 256) = a11;
  PCSharedCount::~PCSharedCount((v61 - 232));
  _Unwind_Resume(a1);
}

void LiLightProperties::~LiLightProperties(PCSharedCount *this)
{
  this[12].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 15);
  this[8].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 11);
  this[4].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 7);
}

int8x8_t *DiffuseMaterialLayer::writeHash(DiffuseMaterialLayer *this, int8x8_t *a2)
{
  LiMaterialLayer::writeHash(this, a2);
  PCHashWriteStream::writeValue(a2, (0x800000026084C798 & 0x7FFFFFFFFFFFFFFFLL));
  (*(*a2 + 48))(a2, *(this + 8));
  PCHashWriteStream::writeValue(a2, *(this + 26));
  PCHashWriteStream::writeValue(a2, *(this + 27));
  PCHashWriteStream::writeValue(a2, *(this + 56));
  PCHashWriteStream::writeValue(a2, *(this + 28));
  v4 = *(this + 29);

  return PCHashWriteStream::writeValue(a2, v4);
}

void DiffuseMaterialLayer::DiffuseMaterialLayer(DiffuseMaterialLayer *this, uint64_t a2)
{
  *(this + 8) = &unk_2872DEA38;
  *(this + 9) = 0;
  *(this + 80) = 1;
  LiMaterialLayer::LiMaterialLayer(this, &off_287267390, a2);
  *this = &unk_287267308;
  *(this + 8) = &unk_287267370;
  *(this + 8) = 0;
  *(this + 26) = 0;
  operator new();
}

void sub_25FFCFE28(_Unwind_Exception *a1)
{
  *(v1 + 64) = v2;
  *(v1 + 80) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void SpecularMaterialLayer::ReplaceSpecularColor::eval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v8 = LiMaterialLayerUniform::get(v6, DstAlphaFactor);
  LiMaterialLayer::getSurfaceSpecularColor((*(a1 + 8) + 144), *(a2 + 40), v8, a3, v9);
  ProShade::VarT<ProShade::Node>::operator=(a3 + 576, v9);
  v9[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10);
}

void isoPhongShader(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v7 = &unk_28725E328;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  PCSharedCount::PCSharedCount(v10, (a1 + 88));
  v7 = &unk_287268E10;
  v3 = v9;
  PCSharedCount::PCSharedCount(&v4, v10);
  v7 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10);
  v7 = &unk_28725E328;
  v9 = v3;
  PCSharedCount::PCSharedCount(v10, &v4);
  var0 = v1[18].var0;
  v5[0] = &unk_28725E328;
  v5[2] = var0;
  PCSharedCount::PCSharedCount(&v6, v1 + 19);
  ProShade::Func<ProShade::Func_reflect>::eval(&v7, v5);
}

void sub_25FFD04C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, PCSharedCount a26, void *a27, uint64_t a28, uint64_t a29, PCSharedCount a30, void *a31, uint64_t a32, uint64_t a33, PCSharedCount a34)
{
  PCSharedCount::~PCSharedCount(v35 + 3);
  *(v37 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v37 - 104));
  *(v37 - 160) = v34;
  PCSharedCount::~PCSharedCount(v36 + 3);
  PCSharedCount::~PCSharedCount(&a26);
  a27 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a30);
  a31 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a34);
  *(v37 - 192) = a10;
  PCSharedCount::~PCSharedCount((v37 - 168));
  _Unwind_Resume(a1);
}

void isoBlinnPhongShader(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v7.var0 = &unk_28725E328;
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  PCSharedCount::PCSharedCount(v10, (a1 + 88));
  v7.var0 = &unk_287268E10;
  v3 = &unk_28725E328;
  v4 = v8;
  v5 = v9;
  PCSharedCount::PCSharedCount(&v6, v10);
  v7.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10);
  ProShade::operator+(&v7, &v3, v1 + 96);
  ProShade::Func<ProShade::Func_normalize>::eval(&v7, v2);
  v7.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v10);
  ProShade::Func<ProShade::Func_dot>::eval(v1 + 128, v2);
}

void sub_25FFD0B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v14.var0 = va_arg(va1, PC_Sp_counted_base *);
  v16 = va_arg(va1, void *);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void *);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  PCSharedCount::~PCSharedCount(v11 + 3);
  *(v12 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v12 - 104));
  PCSharedCount::~PCSharedCount(v10 + 3);
  PCSharedCount::~PCSharedCount(va);
  v16 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v9 + 3);
  v20 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  PCSharedCount::~PCSharedCount(v8 + 3);
  _Unwind_Resume(a1);
}

void isoWardShader(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v14.var0 = &unk_28725E328;
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  PCSharedCount::PCSharedCount(v17, (a1 + 120));
  v14.var0 = &unk_287268E10;
  v10 = &unk_28725E328;
  v11 = v15;
  v12 = v16;
  PCSharedCount::PCSharedCount(&v13, v17);
  v14.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v17);
  v6[1].var0 = &unk_28725E328;
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  PCSharedCount::PCSharedCount(&v9, (v1 + 152));
  v3 = &unk_28725E328;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  PCSharedCount::PCSharedCount(v6, (v1 + 120));
  ProShade::operator+(&v14, &v3, &v10);
  ProShade::Func<ProShade::Func_normalize>::eval(&v14, v2);
  v14.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v17);
  operator new();
}

void sub_25FFD1ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, PCSharedCount a28, void *a29, uint64_t a30, uint64_t a31, PCSharedCount a32, void *a33, uint64_t a34, uint64_t a35, PCSharedCount a36, void *a37, uint64_t a38, uint64_t a39, PCSharedCount a40, void *a41, uint64_t a42, uint64_t a43, PCSharedCount a44, void *a45, uint64_t a46, uint64_t a47, PCSharedCount a48, void *a49, uint64_t a50, uint64_t a51, PCSharedCount a52, void *a53, uint64_t a54, uint64_t a55, PCSharedCount a56, void *a57, uint64_t a58, uint64_t a59, PCSharedCount a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(v68 + 3);
  PCSharedCount::~PCSharedCount(v70 + 3);
  v69->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v69 + 3);
  PCSharedCount::~PCSharedCount(&a28);
  a29 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a32);
  a33 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a36);
  a37 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a40);
  a41 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a44);
  a45 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a48);
  a49 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a52);
  a53 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a56);
  a57 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a60);
  a61 = a9;
  PCSharedCount::~PCSharedCount(&a64);
  a65 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a68);
  *(v71 - 256) = a10;
  PCSharedCount::~PCSharedCount((v71 - 232));
  *(v71 - 224) = a11;
  PCSharedCount::~PCSharedCount((v71 - 200));
  *(v71 - 192) = a12;
  PCSharedCount::~PCSharedCount((v71 - 168));
  _Unwind_Resume(a1);
}

void anisoWardShader(uint64_t a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v14.var0 = &unk_28725E328;
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  PCSharedCount::PCSharedCount(v17, (a1 + 120));
  v14.var0 = &unk_287268E10;
  v10 = &unk_28725E328;
  v11 = v15;
  v12 = v16;
  PCSharedCount::PCSharedCount(&v13, v17);
  v14.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v17);
  v6[1].var0 = &unk_28725E328;
  v7 = *(v1 + 136);
  v8 = *(v1 + 144);
  PCSharedCount::PCSharedCount(&v9, (v1 + 152));
  v3 = &unk_28725E328;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  PCSharedCount::PCSharedCount(v6, (v1 + 120));
  ProShade::operator+(&v14, &v3, &v10);
  ProShade::Func<ProShade::Func_normalize>::eval(&v14, v2);
  v14.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v17);
  operator new();
}

void sub_25FFD58AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, unint64_t a15, unint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, unint64_t a20, unint64_t a21, unint64_t a22, unint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x260] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v72 + 3);
  STACK[0x220] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x238]);
  PCSharedCount::~PCSharedCount(&a72);
  PCSharedCount::~PCSharedCount(v75 + 3);
  PCSharedCount::~PCSharedCount(v74 + 3);
  STACK[0x200] = v73;
  PCSharedCount::~PCSharedCount(&STACK[0x218]);
  STACK[0x240] = a14;
  PCSharedCount::~PCSharedCount(&STACK[0x258]);
  STACK[0x280] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x298]);
  STACK[0x2A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x2B8]);
  STACK[0x2C0] = a15;
  PCSharedCount::~PCSharedCount(&STACK[0x2D8]);
  STACK[0x2E0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x2F8]);
  STACK[0x300] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x318]);
  STACK[0x320] = a16;
  PCSharedCount::~PCSharedCount(&STACK[0x338]);
  STACK[0x340] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x358]);
  STACK[0x360] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x378]);
  STACK[0x380] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x398]);
  STACK[0x3A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x3B8]);
  STACK[0x3C0] = a17;
  PCSharedCount::~PCSharedCount(&STACK[0x3D8]);
  STACK[0x3E0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x3F8]);
  STACK[0x400] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x418]);
  STACK[0x420] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x438]);
  STACK[0x440] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x458]);
  STACK[0x460] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x478]);
  STACK[0x480] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x498]);
  STACK[0x4A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x4B8]);
  STACK[0x4C0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x4D8]);
  STACK[0x4E0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x4F8]);
  STACK[0x500] = a20;
  PCSharedCount::~PCSharedCount(&STACK[0x518]);
  STACK[0x520] = a19;
  PCSharedCount::~PCSharedCount(&STACK[0x538]);
  STACK[0x540] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x558]);
  STACK[0x560] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x578]);
  STACK[0x580] = a21;
  PCSharedCount::~PCSharedCount(&STACK[0x598]);
  STACK[0x5A0] = a22;
  PCSharedCount::~PCSharedCount(&STACK[0x5B8]);
  STACK[0x5C0] = a23;
  PCSharedCount::~PCSharedCount(&STACK[0x5D8]);
  STACK[0x5E0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x5F8]);
  STACK[0x600] = a24;
  PCSharedCount::~PCSharedCount(&STACK[0x618]);
  *(v76 - 240) = a25;
  PCSharedCount::~PCSharedCount((v76 - 216));
  *(v76 - 208) = a26;
  PCSharedCount::~PCSharedCount((v76 - 184));
  _Unwind_Resume(a1);
}

void sub_25FFD6D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  STACK[0x3A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v19 + 3);
  STACK[0x380] = v18;
  PCSharedCount::~PCSharedCount(v20 + 3);
  *a18 = &unk_28725E328;
  JUMPOUT(0x25FFD6AB0);
}

void sub_25FFD6DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  MEMORY[0x2666E9F00](v18, 0x10B1C40A585CD1CLL);
  *a18 = &unk_28725E328;
  JUMPOUT(0x25FFD6AB0);
}

void sub_25FFD6E40()
{
  STACK[0x3A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 3);
  STACK[0x380] = v0;
  JUMPOUT(0x25FFD6AB0);
}

void sub_25FFD70E8()
{
  *(v4 - 176) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v2 + 3);
  STACK[0x3A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x3B8]);
  STACK[0x3C0] = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  *(v4 - 144) = v0;
  JUMPOUT(0x25FFD6AECLL);
}

void sub_25FFD7158()
{
  MEMORY[0x2666E9F00](v1, 0x10B1C40A585CD1CLL);
  *(v2 - 144) = v0;
  JUMPOUT(0x25FFD6AECLL);
}

void sub_25FFD7198()
{
  *(v5 - 144) = v1;
  PCSharedCount::~PCSharedCount(v4 + 3);
  STACK[0x3E0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v3 + 3);
  STACK[0x3A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x3B8]);
  STACK[0x3C0] = v0;
  PCSharedCount::~PCSharedCount(v2 + 3);
  JUMPOUT(0x25FFD6B1CLL);
}

void sub_25FFD7268()
{
  *(v1 - 144) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v0 + 3);
  JUMPOUT(0x25FFD6B1CLL);
}

void sub_25FFD72A0()
{
  *(v4 - 176) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  *(v4 - 144) = v0;
  PCSharedCount::~PCSharedCount(v2 + 3);
  JUMPOUT(0x25FFD6B50);
}

void sub_25FFD72EC()
{
  *(v4 - 176) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  *(v4 - 144) = v0;
  PCSharedCount::~PCSharedCount(v2 + 3);
  JUMPOUT(0x25FFD6B78);
}

void sub_25FFD7300()
{
  MEMORY[0x2666E9F00](v1, 0x10B1C40A585CD1CLL);
  *(v3 - 144) = v0;
  PCSharedCount::~PCSharedCount(v2 + 3);
  JUMPOUT(0x25FFD6B78);
}

void sub_25FFD7390()
{
  *(v6 - 176) = v2;
  PCSharedCount::~PCSharedCount(v5 + 3);
  *(v6 - 144) = v1;
  PCSharedCount::~PCSharedCount(v4 + 3);
  STACK[0x4A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x4B8]);
  STACK[0x4C0] = v0;
  PCSharedCount::~PCSharedCount(v3 + 3);
  JUMPOUT(0x25FFD6C40);
}

void sub_25FFD7464()
{
  *(v4 - 176) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  *(v4 - 144) = v0;
  PCSharedCount::~PCSharedCount(v2 + 3);
  JUMPOUT(0x25FFD6C88);
}

void sub_25FFD74C0()
{
  *(v4 - 176) = v1;
  PCSharedCount::~PCSharedCount(v3 + 3);
  *(v4 - 144) = v0;
  PCSharedCount::~PCSharedCount(v2 + 3);
  JUMPOUT(0x25FFD6CB0);
}

void ProShade::smoothstep(const PCSharedCount *a1, const PCSharedCount *a2, const PCSharedCount *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  v12[0] = &unk_28725E328;
  v12[2] = var0;
  PCSharedCount::PCSharedCount(v13, a1 + 3);
  v6 = a2[2].var0;
  v10[0] = &unk_28725E328;
  v10[2] = v6;
  PCSharedCount::PCSharedCount(&v11, a2 + 3);
  v7 = a3[2].var0;
  v8[0] = &unk_28725E328;
  v8[2] = v7;
  PCSharedCount::PCSharedCount(&v9, a3 + 3);
  ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::smoothstep_traits>>::eval(v12, v10, v8);
}

void sub_25FFD77B4(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v3 + 3);
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void anisoBlinnPhongShader(uint64_t a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v10.var0 = &unk_28725E328;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  PCSharedCount::PCSharedCount(v13, (a1 + 88));
  v10.var0 = &unk_287268E10;
  v6 = &unk_28725E328;
  v7 = v11;
  v8 = v12;
  PCSharedCount::PCSharedCount(&v9, v13);
  v10.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v13);
  v2[4] = &unk_28725E328;
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  PCSharedCount::PCSharedCount(&v5, (v1 + 152));
  ProShade::operator+(&v10, v1 + 96, &v6);
  ProShade::Func<ProShade::Func_normalize>::eval(&v10, v2);
  v10.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v13);
  ProShade::Selector_base::_select(v1 + 424, 0);
}

void sub_25FFD84E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, PCSharedCount a32, void *a33, uint64_t a34, uint64_t a35, PCSharedCount a36, void *a37, uint64_t a38, uint64_t a39, PCSharedCount a40, void *a41, uint64_t a42, uint64_t a43, PCSharedCount a44, void *a45, uint64_t a46, uint64_t a47, PCSharedCount a48, void *a49, uint64_t a50, uint64_t a51, PCSharedCount a52, void *a53, uint64_t a54, uint64_t a55, PCSharedCount a56, void *a57, uint64_t a58, uint64_t a59, PCSharedCount a60, void *a61, uint64_t a62, uint64_t a63)
{
  PCSharedCount::~PCSharedCount(v74 + 3);
  PCSharedCount::~PCSharedCount(v73 + 3);
  PCSharedCount::~PCSharedCount(&a32);
  PCSharedCount::~PCSharedCount(v72 + 3);
  a33 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a36);
  a37 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a40);
  a41 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a44);
  a45 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a48);
  a49 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a52);
  a53 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a56);
  a57 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a60);
  a61 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a64);
  a65 = a11;
  PCSharedCount::~PCSharedCount(&a68);
  a69 = a12;
  PCSharedCount::~PCSharedCount(&a72);
  STACK[0x200] = a13;
  PCSharedCount::~PCSharedCount(&STACK[0x218]);
  STACK[0x220] = a14;
  PCSharedCount::~PCSharedCount(&STACK[0x238]);
  *(v75 - 256) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v75 - 232));
  *(v75 - 224) = a15;
  PCSharedCount::~PCSharedCount((v75 - 200));
  *(v75 - 192) = a16;
  PCSharedCount::~PCSharedCount((v75 - 168));
  _Unwind_Resume(a1);
}

void sub_25FFD9A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, PCSharedCount a48)
{
  PCString::~PCString((v50 - 160));
  PCString::~PCString((v50 - 128));
  if (v49)
  {
    __cxa_free_exception(v48);
  }

  PCSharedCount::~PCSharedCount(&a48);
  *(v50 - 256) = a14;
  PCSharedCount::~PCSharedCount((v50 - 232));
  *(v50 - 224) = a15;
  PCSharedCount::~PCSharedCount((v50 - 200));
  *(v50 - 192) = a16;
  PCSharedCount::~PCSharedCount((v50 - 168));
  _Unwind_Resume(a1);
}

void simpleFresnel(uint64_t a1, const PCSharedCount *a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  ProShade::Func<ProShade::Func_normalize>::eval(a2, v5);
  ProShade::operator+(v6, a1 + 96, v5);
  ProShade::Func<ProShade::Func_normalize>::eval(v6, v4);
  v6[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v7);
  v3 = &unk_28725E328;
  operator new();
}

void sub_25FFDA6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PCSharedCount *a10, uint64_t a11, uint64_t a12, uint64_t a13, PCSharedCount a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, PCSharedCount a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, PCSharedCount a30, void *a31, uint64_t a32, uint64_t a33, PCSharedCount a34)
{
  a23 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v34 + 3);
  a19 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a22);
  PCSharedCount::~PCSharedCount(&a14);
  PCSharedCount::~PCSharedCount(v35 + 3);
  a10->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(a10 + 3);
  a27 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a30);
  a31 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a34);
  *(v36 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v36 - 168));
  _Unwind_Resume(a1);
}

void sub_25FFDC3C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unint64_t a16, unint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20)
{
  PCString::~PCString((v22 - 176));
  PCString::~PCString((v22 - 144));
  if (v21)
  {
    __cxa_free_exception(v20);
  }

  STACK[0x200] = a16;
  PCSharedCount::~PCSharedCount(&STACK[0x218]);
  STACK[0x220] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x238]);
  STACK[0x240] = a17;
  PCSharedCount::~PCSharedCount(&STACK[0x258]);
  STACK[0x260] = a18;
  PCSharedCount::~PCSharedCount(&STACK[0x278]);
  *(v22 - 240) = a19;
  PCSharedCount::~PCSharedCount((v22 - 216));
  *(v22 - 208) = a20;
  PCSharedCount::~PCSharedCount((v22 - 184));
  _Unwind_Resume(a1);
}

uint64_t SpecularMaterialLayer::computeNormal(uint64_t a1)
{
  result = *(a1 + 120);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void SpecularMaterialLayer::computeColor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[8] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(a1);
  v8 = LiMaterialLayerUniform::get(v6, DstAlphaFactor);
  v9 = *(a1 + 72);
  if (!v9)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v9 + 16))(v9, a2, a3);
  v10 = 832;
  if (*(a1 + 69))
  {
    v10 = 992;
  }

  v11 = v8 + v10;
  v14 = &unk_28725E920;
  v15 = *(v8 + v10 + 8);
  v16 = *(v8 + v10 + 16);
  PCSharedCount::PCSharedCount(&v17, (v8 + v10 + 24));
  v14 = &unk_28725E878;
  ProShade::VarT<ProShade::UniformNode>::VarT(&v18, *(v11 + 48));
  v18.var0 = &unk_28725EAA0;
  ProShade::VarT<ProShade::UniformNode>::VarT(v19, *(v11 + 80));
  v19[0].var0 = &unk_28725EB20;
  v14 = &unk_287260E88;
  v12 = 1824;
  if (*(a1 + 69))
  {
    v12 = 1856;
  }

  ProShade::VarT<ProShade::UniformNode>::VarT(v13, *(v8 + v12 + 16));
  v13[0].var0 = &unk_28725EAF8;
  LiMaterialLayer::getSurfaceSpecularShininess(*(a2 + 40), v8, &v14, v13);
}

void sub_25FFDDE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, PCSharedCount a56, void *a57, uint64_t a58, uint64_t a59, PCSharedCount a60)
{
  PCSharedCount::~PCSharedCount(v61 + 3);
  *(v62 - 128) = v60;
  PCSharedCount::~PCSharedCount((v62 - 104));
  PCSharedCount::~PCSharedCount(&a56);
  a57 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a60);
  *(v62 - 256) = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount((v62 - 232));
  ProShade::Sampler::~Sampler((v62 - 224));
  _Unwind_Resume(a1);
}

int8x8_t *SpecularMaterialLayerBase::writeHash(SpecularMaterialLayerBase *this, int8x8_t *a2)
{
  LiMaterialLayer::writeHash(this, a2);
  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
  }

  v5 = *(this + 6);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2);
  }

  (*(*a2 + 48))(a2, *(this + 16));
  PCHashWriteStream::writeValue(a2, *(this + 68));
  v6 = *(this + 69);

  return PCHashWriteStream::writeValue(a2, v6);
}

uint64_t SpecularMaterialLayer::writeHash(SpecularMaterialLayer *this, int8x8_t *a2)
{
  SpecularMaterialLayerBase::writeHash(this, a2);
  PCHashWriteStream::writeValue(a2, (0x800000026084C7C7 & 0x7FFFFFFFFFFFFFFFLL));
  (*(*a2 + 48))(a2, *(this + 34));
  PCHashWriteStream::writeValue(a2, *(this + 140));
  (*(*a2 + 48))(a2, *(this + 36));
  v4 = *(this + 9);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
  }

  v5 = *(this + 11);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2);
  }

  v6 = *(this + 13);
  if (v6)
  {
    (*(*v6 + 32))(v6, a2);
  }

  result = *(this + 15);
  if (result)
  {
    v8 = *(*result + 32);

    return v8();
  }

  return result;
}

void *SpecularMaterialLayer::print(uint64_t a1, void *a2, int a3)
{
  result = LiMaterialLayer::print(a1, a2, a3);
  if (*(a1 + 8) == 1)
  {
    LiImageSource::printIndent(a2, a3 + 1);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "separateEnvResponse: ", 21);
    if (*(a1 + 8))
    {
      v8 = "true";
    }

    else
    {
      v8 = "false";
    }

    if (*(a1 + 8))
    {
      v9 = 4;
    }

    else
    {
      v9 = 5;
    }

    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n", 1);
  }

  if (*(a1 + 136) != 2)
  {
    LiImageSource::printIndent(a2, a3 + 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "specularModel: ", 15);
    v11 = *(a1 + 136);
    if (v11 == 2)
    {
      v12 = "Ward";
      v13 = a2;
      v14 = 4;
    }

    else if (v11 == 1)
    {
      v12 = "BlinnPhong";
      v13 = a2;
      v14 = 10;
    }

    else
    {
      if (v11)
      {
LABEL_17:
        result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
        goto LABEL_18;
      }

      v12 = "Phong";
      v13 = a2;
      v14 = 5;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v12, v14);
    goto LABEL_17;
  }

LABEL_18:
  if (*(a1 + 140) == 1)
  {
    LiImageSource::printIndent(a2, a3 + 1);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "fresnel: ", 9);
    if (*(a1 + 140))
    {
      v16 = "true";
    }

    else
    {
      v16 = "false";
    }

    if (*(a1 + 140))
    {
      v17 = 4;
    }

    else
    {
      v17 = 5;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, v17);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  }

  if (*(a1 + 64))
  {
    LiImageSource::printIndent(a2, a3 + 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "anisotropicModel: ", 18);
    v19 = *(a1 + 64);
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        v20 = "AnisotropicAngleMap";
        v21 = a2;
        v22 = 19;
        goto LABEL_36;
      }

      if (v19 == 3)
      {
        v20 = "Isotropic";
        v21 = a2;
        v22 = 9;
        goto LABEL_36;
      }
    }

    else
    {
      if (!v19)
      {
        v20 = "Linear";
        v21 = a2;
        v22 = 6;
        goto LABEL_36;
      }

      if (v19 == 1)
      {
        v20 = "Cylindrical";
        v21 = a2;
        v22 = 11;
LABEL_36:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v20, v22);
      }
    }

    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
  }

  if (!*(a1 + 144))
  {
    goto LABEL_52;
  }

  LiImageSource::printIndent(a2, a3 + 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "colorModel: ", 12);
  v23 = *(a1 + 144);
  if (v23 <= 1)
  {
    if (!v23)
    {
      v24 = "LerpWhiteToDiffuse";
      v25 = a2;
      v26 = 18;
      goto LABEL_50;
    }

    if (v23 == 1)
    {
      v24 = "Solid";
      v25 = a2;
      v26 = 5;
      goto LABEL_50;
    }
  }

  else
  {
    switch(v23)
    {
      case 2:
        v24 = "Diffuse";
        v25 = a2;
        v26 = 7;
        goto LABEL_50;
      case 3:
        v24 = "Map";
        v25 = a2;
        v26 = 3;
        goto LABEL_50;
      case 4:
        v24 = "ViewDependent";
        v25 = a2;
        v26 = 13;
LABEL_50:
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v24, v26);
        break;
    }
  }

  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\n", 1);
LABEL_52:
  if ((*(a1 + 68) & 1) == 0)
  {
    LiImageSource::printIndent(a2, a3 + 1);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "cylindricalPerGlyph: ", 21);
    if (*(a1 + 68))
    {
      v28 = "true";
    }

    else
    {
      v28 = "false";
    }

    if (*(a1 + 68))
    {
      v29 = 4;
    }

    else
    {
      v29 = 5;
    }

    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v28, v29);

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "\n", 1);
  }

  return result;
}

void SpecularMaterialLayerBase::SpecularMaterialLayerBase(SpecularMaterialLayerBase *this, uint64_t *a2, uint64_t a3)
{
  LiMaterialLayer::LiMaterialLayer(this, a2 + 1, a3);
  v5 = *a2;
  *v6 = *a2;
  *(this + *(v5 - 24)) = a2[5];
  *(this + 4) = 0;
  PCSharedCount::PCSharedCount(this + 5);
  *(this + 6) = 0;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 16) = 0;
  *(this + 34) = 1;
}

void SpecularMaterialLayerBase::~SpecularMaterialLayerBase(PCSharedCount *this, PC_Sp_counted_base **a2)
{
  v3 = *a2;
  this->var0 = *a2;
  *(&this->var0 + *(v3 - 3)) = a2[5];
  PCSharedCount::~PCSharedCount(this + 7);
  PCSharedCount::~PCSharedCount(this + 5);
}

void SpecularMaterialLayer::SpecularMaterialLayer(SpecularMaterialLayer *this, uint64_t a2)
{
  *(this + 19) = &unk_2872DEA38;
  *(this + 20) = 0;
  *(this + 168) = 1;
  SpecularMaterialLayerBase::SpecularMaterialLayerBase(this, off_287267488, a2);
  *this = &unk_287267400;
  *(this + 19) = &unk_287267468;
  operator new();
}

void sub_25FFDEBD8(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 112));
  PCSharedCount::~PCSharedCount((v1 + 96));
  PCSharedCount::~PCSharedCount((v1 + 80));
  SpecularMaterialLayerBase::~SpecularMaterialLayerBase(v1, off_287267488);
  *(v1 + 152) = v2;
  *(v1 + 168) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void BumpMaterialLayer::BumpMaterialLayer(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = &unk_2872DEA38;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  LiMaterialLayer::LiMaterialLayer(a1, &off_287267560, a2);
  *a1 = &unk_2872674D8;
  *(a1 + 56) = &unk_287267540;
  operator new();
}

void sub_25FFDED64(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;
  *(v1 + 72) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t BumpMaterialLayer::sampleBumpMap(uint64_t a1, os_unfair_lock_s *this, const ProShade::SamplerNode **a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  SamplerInfo = LiMaterial::getSamplerInfo(this, a3[82]);
  v9 = (*(SamplerInfo + 316) & *(LiMaterial::getSamplerInfo(this, a3[94]) + 316));
  v10 = LiMaterial::getSamplerInfo(this, a3[70]);
  v11 = *(a1 + 24);
  if (v11 == 1 && (v9 & 1) != 0)
  {
    BumpMaterialLayer::sampleLeanBumpMap(v10, this, a3);
  }

  v12 = (v11 ^ 1) & v9;
  if (v12 & 1) != 0 || (*(v10 + 316))
  {
    BumpMaterialLayer::sampleRegularBumpMap(a1, this, a3, a4, v12);
  }

  return 0;
}

void BumpMaterialLayer::sampleLeanBumpMap(int a1, os_unfair_lock_s *this, uint64_t a3)
{
  v4 = *MEMORY[0x277D85DE8];
  SamplerInfo = LiMaterial::getSamplerInfo(this, *(a3 + 656));
  LiMaterialLayer::calculateTriplanarNormal(SamplerInfo);
}

void sub_25FFDF448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, PCSharedCount a30, uint64_t a31, uint64_t a32, uint64_t a33, PCSharedCount a34)
{
  PCSharedCount::~PCSharedCount(v36 + 3);
  PCSharedCount::~PCSharedCount(v35 + 3);
  PCSharedCount::~PCSharedCount(&a30);
  a31 = a9;
  PCSharedCount::~PCSharedCount(&a34);
  *(v37 - 192) = v34;
  PCSharedCount::~PCSharedCount((v37 - 168));
  *(v37 - 160) = a10;
  PCSharedCount::~PCSharedCount((v37 - 136));
  *(v37 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v37 - 104));
  _Unwind_Resume(a1);
}

void BumpMapSample::~BumpMapSample(PCSharedCount *this)
{
  this[8].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 11);
  this[4].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 7);
  this->var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 3);
}

void BumpMaterialLayer::sampleRegularBumpMap(int a1, os_unfair_lock_s *this, uint64_t a3, uint64_t a4, int a5)
{
  v5 = 560;
  if (a5)
  {
    v5 = 656;
  }

  SamplerInfo = LiMaterial::getSamplerInfo(this, *(a3 + v5));
  LiMaterialLayer::calculateTriplanarNormal(SamplerInfo);
}

void sub_25FFE2448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, _Unwind_Exception *exception_objecta, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, PCSharedCount *a26)
{
  STACK[0x2E0] = v31;
  PCSharedCount::~PCSharedCount(v33 + 3);
  STACK[0x2C0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x2D8]);
  STACK[0x2A0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x2B8]);
  STACK[0x220] = v30;
  PCSharedCount::~PCSharedCount(v32 + 3);
  STACK[0x240] = v29;
  PCSharedCount::~PCSharedCount(v27 + 3);
  STACK[0x260] = v28;
  PCSharedCount::~PCSharedCount(v26 + 3);
  STACK[0x280] = a15;
  PCSharedCount::~PCSharedCount(&STACK[0x298]);
  STACK[0x300] = a16;
  PCSharedCount::~PCSharedCount(&STACK[0x318]);
  STACK[0x320] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x338]);
  STACK[0x340] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x358]);
  STACK[0x360] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x378]);
  STACK[0x380] = a17;
  PCSharedCount::~PCSharedCount(&STACK[0x398]);
  BumpMapSample::~BumpMapSample(a26);
  STACK[0x4A0] = a20;
  PCSharedCount::~PCSharedCount(&STACK[0x4B8]);
  STACK[0x4C0] = a21;
  PCSharedCount::~PCSharedCount(&STACK[0x4D8]);
  *(v34 - 256) = a22;
  PCSharedCount::~PCSharedCount((v34 - 232));
  *(v34 - 224) = a23;
  PCSharedCount::~PCSharedCount((v34 - 200));
  *(v34 - 192) = a24;
  PCSharedCount::~PCSharedCount((v34 - 168));
  *(v34 - 160) = a25;
  PCSharedCount::~PCSharedCount((v34 - 136));
  *(v34 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v34 - 104));
  _Unwind_Resume(a1);
}

void sub_25FFE3800()
{
  STACK[0x420] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 3);
  STACK[0x3A0] = v0;
  JUMPOUT(0x25FFE3758);
}

void sub_25FFE3860()
{
  STACK[0x420] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 3);
  STACK[0x3A0] = v0;
  JUMPOUT(0x25FFE376CLL);
}

void sub_25FFE38C0()
{
  STACK[0x420] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 3);
  STACK[0x3A0] = v0;
  JUMPOUT(0x25FFE3780);
}

void BumpMaterialLayer::adjustBumpMapGain(BumpMaterialLayer *this, const PCSharedCount *a2, BumpMapSample *a3)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v7[1].var0 = &unk_28725E328;
  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(v8, a2 + 226);
  v5[0] = *(a3 + 8);
  v6 = *(a3 + 2);
  PCSharedCount::PCSharedCount(v7, a3 + 3);
  if (*(this + 12) == 2)
  {
    ProShade::Selector_base::_select(v5, 4);
  }

  v8[2].var0 = &unk_28725E328;
  operator new();
}

void sub_25FFE4668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, PCSharedCount a26, void *a27, uint64_t a28, uint64_t a29, PCSharedCount a30, void *a31, uint64_t a32, uint64_t a33, PCSharedCount a34, uint64_t a35, uint64_t a36, uint64_t a37, PCSharedCount a38)
{
  *(v40 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v38 + 3);
  *(v40 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v40 - 136));
  a31 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a34);
  a27 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a30);
  PCSharedCount::~PCSharedCount(&a26);
  a35 = a9;
  PCSharedCount::~PCSharedCount(&a38);
  *(v40 - 224) = v39;
  PCSharedCount::~PCSharedCount((v40 - 200));
  *(v40 - 192) = a10;
  PCSharedCount::~PCSharedCount((v40 - 168));
  _Unwind_Resume(a1);
}

void BumpMaterialLayer::adjustBumpMapGain(BumpMaterialLayer *a1, const PCSharedCount *a2, const PCSharedCount *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  BumpMapSample::BumpMapSample(&v6);
  v7 = 0;
  ProShade::VarT<ProShade::Node>::operator=(&v6, a3);
  BumpMaterialLayer::adjustBumpMapGain(a1, a2, &v6);
}

void BumpMaterialLayer::Add::eval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v4 = (a2 + 40);
  v5 = *(a2 + 40);
  v6 = (a1 + 8);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v8 = LiMaterialLayerUniform::get(v5, DstAlphaFactor);
  BumpMapSample::BumpMapSample(v12);
  if (BumpMaterialLayer::sampleBumpMap(*v6, *v4, v8, a3))
  {
    ProShade::operator-(v10, v12, a3 + 160);
    ProShade::operator+(v19, a3 + 192, v10);
    ProShade::VarT<ProShade::Node>::operator=(a3 + 192, v19);
    v19[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(v20);
    v10[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v11);
    ProShade::operator+(v10, a3 + 192, a3 + 160);
    ProShade::Func<ProShade::Func_normalize>::eval(v10, v19);
    ProShade::VarT<ProShade::Node>::operator=(a3 + 128, v19);
    v19[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(v20);
    v10[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v11);
    if (v18 == 1)
    {
      if (*(a3 + 768) == 1)
      {
        v9 = &unk_28725E328;
        operator new();
      }

      ProShade::VarT<ProShade::Node>::operator=(a3 + 776, &v14);
      ProShade::VarT<ProShade::Node>::operator=(a3 + 808, &v16);
      *(a3 + 768) = 1;
    }
  }

  v16.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v17);
  v14.var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v15);
  v12[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v13);
}

void sub_25FFE5448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v13.var0 = va_arg(va1, PC_Sp_counted_base *);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void *);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22.var0 = va_arg(va2, PC_Sp_counted_base *);
  *(v11 - 104) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v8 + 3);
  PCSharedCount::~PCSharedCount(va);
  PCSharedCount::~PCSharedCount(v10 + 3);
  v19 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(va1);
  PCSharedCount::~PCSharedCount(v9 + 3);
  BumpMapSample::~BumpMapSample(va2);
  _Unwind_Resume(a1);
}

uint64_t BumpMaterialLayer::computeNormal(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 16);

  return v2();
}

uint64_t BumpMaterialLayer::writeHash(BumpMaterialLayer *this, int8x8_t *a2)
{
  LiMaterialLayer::writeHash(this, a2);
  PCHashWriteStream::writeValue(a2, (0x800000026084C814 & 0x7FFFFFFFFFFFFFFFLL));
  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
  }

  v5 = *(this + 12);
  v6 = *(*a2 + 48);

  return v6(a2, v5);
}

void FlatMaterialLayer::Replace::eval(uint64_t a1, uint64_t a2, const PCSharedCount *a3)
{
  v5 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  LiMaterialLayerUniform::get(v5, DstAlphaFactor);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 8) + 88, a3 + 88);
  operator new();
}

void sub_25FFE5B8C(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v4 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  PCSharedCount::~PCSharedCount(v3 + 3);
  _Unwind_Resume(a1);
}

void sub_25FFE64D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  *(v14 - 160) = v13;
  PCSharedCount::~PCSharedCount(v11 + 3);
  *(v14 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v14 - 168));
  *(v14 - 224) = v12;
  PCSharedCount::~PCSharedCount((v14 - 200));
  ProShade::Sampler::~Sampler(va);
  *(v14 - 128) = a3;
  PCSharedCount::~PCSharedCount((v14 - 104));
  _Unwind_Resume(a1);
}

void FlatMaterialLayer::Over::eval(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v5 = LiMaterialLayerUniform::get(v3, DstAlphaFactor);
  FlatMaterialLayer::sampleLayerColor(v5, *(a2 + 40), v5);
}

void sub_25FFE6E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 - 224) = v10;
  PCSharedCount::~PCSharedCount((v11 - 200));
  *(v11 - 192) = a9;
  PCSharedCount::~PCSharedCount((v11 - 168));
  *(v11 - 160) = a10;
  PCSharedCount::~PCSharedCount((v11 - 136));
  *(v11 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v11 - 104));
  _Unwind_Resume(a1);
}

void FlatMaterialLayer::Multiply::eval(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v5 = LiMaterialLayerUniform::get(v3, DstAlphaFactor);
  FlatMaterialLayer::sampleLayerColor(v5, *(a2 + 40), v5);
}

void sub_25FFE75EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, PCSharedCount a18, void *a19, uint64_t a20, uint64_t a21, PCSharedCount a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, PCSharedCount a30)
{
  a19 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a22);
  PCSharedCount::~PCSharedCount(&a18);
  PCSharedCount::~PCSharedCount(v32 + 3);
  a27 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a30);
  PCSharedCount::~PCSharedCount(v33 + 3);
  PCSharedCount::~PCSharedCount(v30 + 3);
  *(v34 - 192) = v31;
  PCSharedCount::~PCSharedCount((v34 - 168));
  *(v34 - 160) = a10;
  PCSharedCount::~PCSharedCount((v34 - 136));
  *(v34 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v34 - 104));
  _Unwind_Resume(a1);
}

void FlatMaterialLayer::Add::eval(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(*(a1 + 8));
  v5 = LiMaterialLayerUniform::get(v3, DstAlphaFactor);
  FlatMaterialLayer::sampleLayerColor(v5, *(a2 + 40), v5);
}

void sub_25FFE7BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, PCSharedCount a22, uint64_t a23, uint64_t a24, uint64_t a25, PCSharedCount a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, PCSharedCount a34, uint64_t a35, uint64_t a36, uint64_t a37, PCSharedCount a38)
{
  a27 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v38 + 3);
  PCSharedCount::~PCSharedCount(&a22);
  PCSharedCount::~PCSharedCount(v39 + 3);
  PCSharedCount::~PCSharedCount(v40 + 3);
  PCSharedCount::~PCSharedCount(&a26);
  a31 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a34);
  a35 = a9;
  PCSharedCount::~PCSharedCount(&a38);
  *(v41 - 224) = a10;
  PCSharedCount::~PCSharedCount((v41 - 200));
  *(v41 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v41 - 168));
  _Unwind_Resume(a1);
}

void sub_25FFE849C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, PCSharedCount a62)
{
  PCSharedCount::~PCSharedCount(v66 + 3);
  PCSharedCount::~PCSharedCount(v65 + 3);
  PCSharedCount::~PCSharedCount(&a62);
  *(v67 - 256) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v67 - 232));
  *(v67 - 224) = v64;
  PCSharedCount::~PCSharedCount((v67 - 200));
  *(v67 - 192) = v63;
  PCSharedCount::~PCSharedCount((v67 - 168));
  *(v67 - 160) = v62;
  PCSharedCount::~PCSharedCount((v67 - 136));
  *(v67 - 128) = a10;
  PCSharedCount::~PCSharedCount((v67 - 104));
  _Unwind_Resume(a1);
}

uint64_t FlatMaterialLayer::isOpaque(HGGLBlendingInfo *a1, _BYTE *a2, os_unfair_lock_s *a3, uint64_t (***a4)(void, void))
{
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(a1);
  result = LiMaterialLayerUniform::get(a3, DstAlphaFactor);
  if ((*(a1 + 48) & 1) == 0 && (*(a1 + 9) & 1) == 0)
  {
    v10 = result;
    v11 = 0.0;
    result = LiMaterial::get<double>(a3, result + 160, &v11);
    if (fabs(v11 + -1.0) < 0.0000001)
    {
      result = LiMaterial::getSamplerInfo(a3, *(v10 + 368));
      if (*(result + 316) != 1 || (result = (**a4)(a4, *(v10 + 368)), result))
      {
        *a2 = 1;
      }
    }
  }

  return result;
}

uint64_t FlatMaterialLayer::computeColor(uint64_t a1, uint64_t a2, const PCSharedCount *a3)
{
  v18[9] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  if (!v6)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v6 + 16))(v6, a2, a3);
  v7 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(a1);
  LiMaterialLayerUniform::get(v7, DstAlphaFactor);
  if (*(a1 + 48) == 1)
  {
    v17[0] = &unk_28725E328;
    v17[2] = 0;
    PCSharedCount::PCSharedCount(v18);
    v15[0] = &unk_28725E328;
    v15[2] = 0;
    PCSharedCount::PCSharedCount(&v16);
    v13[0] = &unk_28725E328;
    v13[2] = 0;
    PCSharedCount::PCSharedCount(&v14);
    v11[0] = &unk_28725E328;
    v11[2] = 0;
    PCSharedCount::PCSharedCount(&v12);
    if (*(a1 + 49) == 1)
    {
      ProShade::VarT<ProShade::Node>::operator=(v17, a3 + 64);
      ProShade::VarT<ProShade::Node>::operator=(v15, a3 + 84);
      ProShade::VarT<ProShade::Node>::operator=(v13, (a1 + 56));
      v9 = 88;
    }

    else
    {
      ProShade::VarT<ProShade::Node>::operator=(v17, a3 + 84);
      ProShade::VarT<ProShade::Node>::operator=(v15, a3 + 64);
      ProShade::VarT<ProShade::Node>::operator=(v13, (a1 + 88));
      v9 = 56;
    }

    ProShade::VarT<ProShade::Node>::operator=(v11, (a1 + v9));
    operator new();
  }

  ProShade::VarT<ProShade::Node>::operator=(&a3[68], a3 + 64);
  return ProShade::VarT<ProShade::Node>::operator=(&a3[84], a3 + 64);
}

void sub_25FFE9440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, PCSharedCount a30, void *a31, uint64_t a32, uint64_t a33, PCSharedCount a34, void *a35, uint64_t a36, uint64_t a37, PCSharedCount a38, void *a39, uint64_t a40, uint64_t a41, PCSharedCount a42, void *a43, uint64_t a44, uint64_t a45, PCSharedCount a46, uint64_t a47, uint64_t a48, uint64_t a49, PCSharedCount a50)
{
  *(v52 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v51 + 3);
  a31 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a34);
  PCSharedCount::~PCSharedCount(&a30);
  PCSharedCount::~PCSharedCount(v50 + 3);
  a35 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a38);
  *(v52 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v52 - 104));
  a39 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a42);
  a43 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a46);
  a47 = a11;
  PCSharedCount::~PCSharedCount(&a50);
  *(v52 - 256) = a12;
  PCSharedCount::~PCSharedCount((v52 - 232));
  *(v52 - 224) = a13;
  PCSharedCount::~PCSharedCount((v52 - 200));
  *(v52 - 192) = a14;
  PCSharedCount::~PCSharedCount((v52 - 168));
  _Unwind_Resume(a1);
}

int8x8_t *FlatMaterialLayer::writeHash(FlatMaterialLayer *this, int8x8_t *a2)
{
  LiMaterialLayer::writeHash(this, a2);
  PCHashWriteStream::writeValue(a2, (0x800000026084C83DLL & 0x7FFFFFFFFFFFFFFFLL));
  v4 = *(this + 4);
  if (v4)
  {
    (*(*v4 + 32))(v4, a2);
  }

  PCHashWriteStream::writeValue(a2, *(this + 48));
  v5 = *(this + 49);

  return PCHashWriteStream::writeValue(a2, v5);
}

void FlatMaterialLayer::FlatMaterialLayer(FlatMaterialLayer *this, uint64_t a2)
{
  *(this + 15) = &unk_2872DEA38;
  *(this + 16) = 0;
  *(this + 136) = 1;
  LiMaterialLayer::LiMaterialLayer(this, &off_287267658, a2);
  *this = &unk_2872675D0;
  *(this + 15) = &unk_287267638;
  operator new();
}

void sub_25FFE9AF8(_Unwind_Exception *a1)
{
  v6 = v4;
  *v5 = v6;
  PCSharedCount::~PCSharedCount((v1 + 80));
  PCSharedCount::~PCSharedCount((v1 + 40));
  *(v1 + 120) = v2;
  *(v1 + 136) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::clamp(const PCSharedCount *a1, const PCSharedCount *a2, const PCSharedCount *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  var0 = a1[2].var0;
  v12[0] = &unk_28725E328;
  v12[2] = var0;
  PCSharedCount::PCSharedCount(v13, a1 + 3);
  v6 = a2[2].var0;
  v10[0] = &unk_28725E328;
  v10[2] = v6;
  PCSharedCount::PCSharedCount(&v11, a2 + 3);
  v7 = a3[2].var0;
  v8[0] = &unk_28725E328;
  v8[2] = v7;
  PCSharedCount::PCSharedCount(&v9, a3 + 3);
  ProShade::Func<ProShade::ScalarFunctionTraits_3<ProShade::clamp_traits>>::eval(v12, v10, v8);
}

void sub_25FFE9C98(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v3 + 3);
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void AbsorbLayer::AbsorbLayer(AbsorbLayer *this, uint64_t a2)
{
  *(this + 4) = &unk_2872DEA38;
  *(this + 5) = 0;
  *(this + 48) = 1;
  LiMaterialLayer::LiMaterialLayer(this, &off_287267720, a2);
  *this = &unk_287267698;
  *(this + 4) = &unk_287267700;
  *(this + 27) = 0;
  *(this + 25) = 0;
}

void sub_25FFE9D90(_Unwind_Exception *a1)
{
  *(v1 + 32) = v2;
  *(v1 + 48) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

PCArray_base *AbsorbLayer::isOpaque(HGGLBlendingInfo *a1, _BYTE *a2, os_unfair_lock_s *a3)
{
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(a1);
  v6 = LiMaterialLayerUniform::get(a3, DstAlphaFactor);
  v8 = 0.0;
  result = LiMaterial::get<double>(a3, v6 + 160, &v8);
  if (fabs(v8 + -1.0) < 0.0000001)
  {
    *a2 = 1;
  }

  return result;
}

void AbsorbLayer::computeColor(unsigned __int8 *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 40);
  DstAlphaFactor = HGGLBlendingInfo::GetDstAlphaFactor(a1);
  v6 = LiMaterialLayerUniform::get(v4, DstAlphaFactor);
  LiMaterialLayer::sampleLayerColor(*(a2 + 40), v6, a1[26]);
}

void sub_25FFEB43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v67 - 144) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v64 + 3);
  *(v67 - 176) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v67 - 152));
  PCSharedCount::~PCSharedCount(&a64);
  *(v67 - 240) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v67 - 216));
  PCSharedCount::~PCSharedCount(v66 + 3);
  PCSharedCount::~PCSharedCount(v65 + 3);
  *(v67 - 208) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v67 - 184));
  _Unwind_Resume(a1);
}

uint64_t *ProShade::Vec4::operator=(uint64_t *a1, const PCSharedCount *a2)
{
  a1[2] = a2[2].var0;
  PCSharedCount::PCSharedCount(&v4, a2 + 3);
  PCSharedCount::operator=(a1 + 3, &v4);
  PCSharedCount::~PCSharedCount(&v4);
  ProShade::Vec4::checkType(a1);
  return a1;
}

void ProShade::VarT<ProShade::Node>::setName(const PCSharedCount *a1@<X0>, uint64_t *a2@<X1>, PCSharedCount *a3@<X8>)
{
  var0 = a1[2].var0;
  if (!var0)
  {
    throw_PCNullPointerException(1);
  }

  v7 = (var0 + 32);
  if ((var0 + 32) != a2)
  {
    LiString::dec((var0 + 32));
    v8 = *a2;
    *v7 = *a2;
    if (v8)
    {
      atomic_fetch_add((v8 - 12), 1u);
    }
  }

  a3->var0 = &unk_28725E328;
  a3[2].var0 = a1[2].var0;

  PCSharedCount::PCSharedCount(a3 + 3, a1 + 3);
}

int8x8_t *AbsorbLayer::writeHash(AbsorbLayer *this, int8x8_t *a2)
{
  LiMaterialLayer::writeHash(this, a2);
  PCHashWriteStream::writeValue(a2, (0x800000026084C866 & 0x7FFFFFFFFFFFFFFFLL));
  PCHashWriteStream::writeValue(a2, *(this + 26));
  v4 = *(this + 27);

  return PCHashWriteStream::writeValue(a2, v4);
}

void LiMaterialLayerOperator::~LiMaterialLayerOperator(LiMaterialLayerOperator *this)
{
  *(this + 1) = &unk_2872DEA38;
  *(this + 24) = 0;
  PCWeakCount::~PCWeakCount(this + 2);
}

{
  *(this + 1) = &unk_2872DEA38;
  *(this + 24) = 0;
  PCWeakCount::~PCWeakCount(this + 2);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiMaterialLayerOperator::~LiMaterialLayerOperator(LiMaterialLayerOperator *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 1) = &unk_2872DEA38;
  v1[24] = 0;
  PCWeakCount::~PCWeakCount(v1 + 2);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 1) = &unk_2872DEA38;
  v1[24] = 0;
  PCWeakCount::~PCWeakCount(v1 + 2);

  JUMPOUT(0x2666E9F00);
}

void DiffuseMaterialLayer::ReplaceDiffuseColor::~ReplaceDiffuseColor(DiffuseMaterialLayer::ReplaceDiffuseColor *this)
{
  *(this + 2) = &unk_2872DEA38;
  *(this + 32) = 0;
  PCWeakCount::~PCWeakCount(this + 3);
}

{
  *(this + 2) = &unk_2872DEA38;
  *(this + 32) = 0;
  PCWeakCount::~PCWeakCount(this + 3);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toDiffuseMaterialLayer::ReplaceDiffuseColor::~ReplaceDiffuseColor(DiffuseMaterialLayer::ReplaceDiffuseColor *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2872DEA38;
  v1[32] = 0;
  PCWeakCount::~PCWeakCount(v1 + 3);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 2) = &unk_2872DEA38;
  v1[32] = 0;
  PCWeakCount::~PCWeakCount(v1 + 3);

  JUMPOUT(0x2666E9F00);
}

void DiffuseMaterialLayer::~DiffuseMaterialLayer(PCSharedCount *this)
{
  this->var0 = &unk_287267308;
  this[8].var0 = &unk_287267370;
  PCSharedCount::~PCSharedCount(this + 6);
  this[8].var0 = &unk_2872DEA38;
  LOBYTE(this[10].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[9].var0);
}

{
  this->var0 = &unk_287267308;
  this[8].var0 = &unk_287267370;
  PCSharedCount::~PCSharedCount(this + 6);
  this[8].var0 = &unk_2872DEA38;
  LOBYTE(this[10].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[9].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toDiffuseMaterialLayer::~DiffuseMaterialLayer(DiffuseMaterialLayer *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287267308;
  v1[8].var0 = &unk_287267370;
  PCSharedCount::~PCSharedCount(v1 + 6);
  v1[8].var0 = &unk_2872DEA38;
  LOBYTE(v1[10].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[9].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287267308;
  v1[8].var0 = &unk_287267370;
  PCSharedCount::~PCSharedCount(v1 + 6);
  v1[8].var0 = &unk_2872DEA38;
  LOBYTE(v1[10].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[9].var0);

  JUMPOUT(0x2666E9F00);
}

void SpecularMaterialLayer::~SpecularMaterialLayer(PCSharedCount *this)
{
  this->var0 = &unk_287267400;
  this[19].var0 = &unk_287267468;
  PCSharedCount::~PCSharedCount(this + 16);
  PCSharedCount::~PCSharedCount(this + 14);
  PCSharedCount::~PCSharedCount(this + 12);
  PCSharedCount::~PCSharedCount(this + 10);
  this->var0 = off_287268470;
  this[19].var0 = off_2872684D8;
  PCSharedCount::~PCSharedCount(this + 7);
  PCSharedCount::~PCSharedCount(this + 5);
  this[19].var0 = &unk_2872DEA38;
  LOBYTE(this[21].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[20].var0);
}

{
  this->var0 = &unk_287267400;
  this[19].var0 = &unk_287267468;
  PCSharedCount::~PCSharedCount(this + 16);
  PCSharedCount::~PCSharedCount(this + 14);
  PCSharedCount::~PCSharedCount(this + 12);
  PCSharedCount::~PCSharedCount(this + 10);
  this->var0 = off_287268470;
  this[19].var0 = off_2872684D8;
  PCSharedCount::~PCSharedCount(this + 7);
  PCSharedCount::~PCSharedCount(this + 5);
  this[19].var0 = &unk_2872DEA38;
  LOBYTE(this[21].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[20].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toSpecularMaterialLayer::~SpecularMaterialLayer(SpecularMaterialLayer *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287267400;
  v1[19].var0 = &unk_287267468;
  PCSharedCount::~PCSharedCount(v1 + 16);
  PCSharedCount::~PCSharedCount(v1 + 14);
  PCSharedCount::~PCSharedCount(v1 + 12);
  PCSharedCount::~PCSharedCount(v1 + 10);
  v1->var0 = off_287268470;
  v1[19].var0 = off_2872684D8;
  PCSharedCount::~PCSharedCount(v1 + 7);
  PCSharedCount::~PCSharedCount(v1 + 5);
  v1[19].var0 = &unk_2872DEA38;
  LOBYTE(v1[21].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[20].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287267400;
  v1[19].var0 = &unk_287267468;
  PCSharedCount::~PCSharedCount(v1 + 16);
  PCSharedCount::~PCSharedCount(v1 + 14);
  PCSharedCount::~PCSharedCount(v1 + 12);
  PCSharedCount::~PCSharedCount(v1 + 10);
  v1->var0 = off_287268470;
  v1[19].var0 = off_2872684D8;
  PCSharedCount::~PCSharedCount(v1 + 7);
  PCSharedCount::~PCSharedCount(v1 + 5);
  v1[19].var0 = &unk_2872DEA38;
  LOBYTE(v1[21].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[20].var0);

  JUMPOUT(0x2666E9F00);
}

void BumpMaterialLayer::~BumpMaterialLayer(PCSharedCount *this)
{
  this->var0 = &unk_2872674D8;
  this[7].var0 = &unk_287267540;
  PCSharedCount::~PCSharedCount(this + 5);
  this[7].var0 = &unk_2872DEA38;
  LOBYTE(this[9].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[8].var0);
}

{
  this->var0 = &unk_2872674D8;
  this[7].var0 = &unk_287267540;
  PCSharedCount::~PCSharedCount(this + 5);
  this[7].var0 = &unk_2872DEA38;
  LOBYTE(this[9].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[8].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toBumpMaterialLayer::~BumpMaterialLayer(BumpMaterialLayer *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872674D8;
  v1[7].var0 = &unk_287267540;
  PCSharedCount::~PCSharedCount(v1 + 5);
  v1[7].var0 = &unk_2872DEA38;
  LOBYTE(v1[9].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[8].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872674D8;
  v1[7].var0 = &unk_287267540;
  PCSharedCount::~PCSharedCount(v1 + 5);
  v1[7].var0 = &unk_2872DEA38;
  LOBYTE(v1[9].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[8].var0);

  JUMPOUT(0x2666E9F00);
}

void FlatMaterialLayer::~FlatMaterialLayer(PCSharedCount *this)
{
  this->var0 = &unk_2872675D0;
  this[15].var0 = &unk_287267638;
  this[11].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 14);
  this[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 10);
  PCSharedCount::~PCSharedCount(this + 5);
  this[15].var0 = &unk_2872DEA38;
  LOBYTE(this[17].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[16].var0);
}

{
  this->var0 = &unk_2872675D0;
  this[15].var0 = &unk_287267638;
  this[11].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 14);
  this[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 10);
  PCSharedCount::~PCSharedCount(this + 5);
  this[15].var0 = &unk_2872DEA38;
  LOBYTE(this[17].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[16].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toFlatMaterialLayer::~FlatMaterialLayer(FlatMaterialLayer *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872675D0;
  v1[15].var0 = &unk_287267638;
  v1[11].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 14);
  v1[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 10);
  PCSharedCount::~PCSharedCount(v1 + 5);
  v1[15].var0 = &unk_2872DEA38;
  LOBYTE(v1[17].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[16].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2872675D0;
  v1[15].var0 = &unk_287267638;
  v1[11].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 14);
  v1[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 10);
  PCSharedCount::~PCSharedCount(v1 + 5);
  v1[15].var0 = &unk_2872DEA38;
  LOBYTE(v1[17].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[16].var0);

  JUMPOUT(0x2666E9F00);
}

void AbsorbLayer::~AbsorbLayer(AbsorbLayer *this)
{
  *(this + 4) = &unk_2872DEA38;
  *(this + 48) = 0;
  PCWeakCount::~PCWeakCount(this + 5);
}

{
  *(this + 4) = &unk_2872DEA38;
  *(this + 48) = 0;
  PCWeakCount::~PCWeakCount(this + 5);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toAbsorbLayer::~AbsorbLayer(AbsorbLayer *this)
{
  v1 = this + *(*this - 24);
  *(v1 + 4) = &unk_2872DEA38;
  v1[48] = 0;
  PCWeakCount::~PCWeakCount(v1 + 5);
}

{
  v1 = this + *(*this - 24);
  *(v1 + 4) = &unk_2872DEA38;
  v1[48] = 0;
  PCWeakCount::~PCWeakCount(v1 + 5);

  JUMPOUT(0x2666E9F00);
}

PCSharedCount *ProShade::Vec4::Vec4(PCSharedCount *a1, const PCSharedCount *a2)
{
  a1->var0 = &unk_28725E328;
  a1[2].var0 = a2[2].var0;
  PCSharedCount::PCSharedCount(a1 + 3, a2 + 3);
  a1->var0 = &unk_2872688E0;
  ProShade::Vec4::checkType(a1);
  return a1;
}

void sub_25FFED130(_Unwind_Exception *a1)
{
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::max_traits>>::eval(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 16);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v4)
    {
      if (v6)
      {
        ProShade::ScalarFunctionTraits_2<ProShade::max_traits>::compute(v4, v6);
      }
    }
  }

  PCSharedCount::PCSharedCount(v7);
  operator new();
}