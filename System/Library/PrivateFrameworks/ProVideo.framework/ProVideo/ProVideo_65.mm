BOOL anonymous namespace::rotateSegmentHAroundM(void *a1, int a2, void *a3, Vec2f *a4, int a5, float a6)
{
  if (a5 < 1)
  {
    return 1;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = a2;
    v14 = a2 & ~(a2 >> 31);
    v25 = v14;
LABEL_3:
    v15 = 1;
    v16 = 4;
    while (v14)
    {
      if (v13 == v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v15;
      }

      v18 = (*a3 + 8 * v17);
      v27 = *(*a3 + v16 - 4);
      v28 = *v18;
      v29 = v18[1];
      *&v19 = *a1;
      *(&v19 + 1) = *a4;
      v26 = v19;
      --v14;
      v16 += 8;
      ++v15;
      if (OMUtil::findIntersectionOfLineSegment(&v27, &v26))
      {
        v27 = 1065353216;
        OMUtil::angle2PI(&v27, a4, v20);
        v22 = sqrtf((a4->var0[0] * a4->var0[0]) + (a4->var0[1] * a4->var0[1]));
        v23 = __sincosf_stret(v21 + a6);
        a4->var0[0] = v23.__cosval * v22;
        a4->var0[1] = v23.__sinval * v22;
        v11 = ++v12 >= a5;
        v14 = v25;
        if (v12 != a5)
        {
          goto LABEL_3;
        }

        return v11;
      }
    }
  }

  return v11;
}

void OMKeyer2D::computeSatOffsetVector(OMKeyer2D *this)
{
  v2 = (*(*this + 96))(this);
  OMPie::computeArc(v2, v3, v4);
  v5 = (*(*this + 96))(this);
  OMPie::getArcOut(v5, 0.5, &v8);
  v6 = sqrtf((v8.f32[0] * v8.f32[0]) + (v8.f32[1] * v8.f32[1]));
  v7 = v8.f32[1] / v6;
  *(this + 14) = v8.f32[0] / v6;
  *(this + 15) = v7;
}

void OMKeyer2D::setSoftBasedOnOffsetFromTol(OMKeyer2D *this, float a2, float a3, float a4, float a5)
{
  v10 = (*(*this + 40))(this);
  (*(*this + 64))(this, v10 - (a2 * a3));
  v11 = (*(*this + 48))(this);
  (*(*this + 88))(this, (a2 * a4) + v11);
  v12 = (*(*this + 112))(this);
  v13 = (*(*this + 96))(this);
  OMPie::setBasedOnOffsetFromOtherPie(v12, v13, a2, a5, 1);
  v14 = *((*(*this + 112))(this) + 40);
  v15 = *((*(*this + 112))(this) + 40);
  if (vabds_f32(*v14, *(v15 + 16)) < 0.02)
  {
    v16 = v14[1];
    if (vabds_f32(v16, *(v15 + 20)) < 0.02)
    {
      v17 = sqrtf((*v14 * *v14) + (v16 * v16));

      OMKeyer2D::makeSoftCircle(this, v17);
    }
  }
}

float OMKeyer2D::makeSoftCircle(OMKeyer2D *this, float a2)
{
  v3 = *((*(*this + 112))(this) + 40);
  v4 = *((*(*this + 112))(this) + 40);
  v5 = *((*(*this + 112))(this) + 40);
  v6 = *((*(*this + 112))(this) + 40);
  v7 = (*(*this + 112))(this);
  v8 = *(v3 + 8);
  v3 += 8;
  v9 = *(v7 + 40);
  v10 = vmul_f32(v8, v8);
  v10.f32[0] = sqrtf(vaddv_f32(v10));
  v11 = vmul_n_f32(vdiv_f32(v8, vdup_lane_s32(v10, 0)), a2);
  v6[3] = v11;
  *(v9 + 32) = v11.i32[0];
  *(v9 + 36) = v6[3].i32[1];
  *v3 = v11.i32[0];
  *(v3 + 4) = *(v9 + 36);
  v19 = 1065353216;
  OMUtil::angle2PI(&v19, v3, v12);
  v14 = v13;
  v15 = __sincosf_stret(v13 + 0.1);
  *v4 = v15.__cosval * a2;
  v4[1] = v15.__sinval * a2;
  v16 = __sincosf_stret(v14 + -0.1);
  result = v16.__sinval * a2;
  *(v5 + 16) = v16.__cosval * a2;
  *(v5 + 20) = v16.__sinval * a2;
  return result;
}

uint64_t OMKeyer2D::setSoftBasedOnHisto(OMKeyer2D *this, float a2)
{
  v3 = a2 * 0.2;
  v4 = a2 * 0.3 + 1.0;
  v5 = (*(*this + 40))(this);
  (*(*this + 64))(this, v5 - v4);
  v6 = (*(*this + 48))(this);
  (*(*this + 88))(this, v6 + v4);
  v7 = (*(*this + 112))(this);
  v8 = (*(*this + 96))(this);
  OMPie::setBasedOnOffsetFromOtherPie(v7, v8, 0.8, 1.0, 1);
  v9 = *((*(*this + 112))(this) + 40);
  v10 = *(v9 + 8);
  v11 = *(v9 + 12);
  v12 = sqrtf((v10 * v10) + (v11 * v11));
  v13 = v10 / v12;
  v14 = v11 / v12;
  v15 = **((*(*this + 112))(this) + 40);
  v16 = *(*((*(*this + 96))(this) + 40) + 24);
  v17 = vsub_f32(v16, v15);
  v18 = vmul_f32(v17, v17);
  v18.f32[0] = sqrtf(vaddv_f32(v18));
  v29[0] = v15;
  v29[1] = vadd_f32(v16, vdiv_f32(v17, vdup_lane_s32(v18, 0)));
  v28[0] = -v13;
  v28[1] = -v14;
  v28[2] = v13;
  v28[3] = v14;
  if (OMUtil::findIntersectionOfLineSegment(v29, v28, &v30))
  {
    v19 = sqrtf((v30 * v30) + (v31 * v31));
    if (sqrtf(((v13 + v30) * (v13 + v30)) + ((v14 + v31) * (v14 + v31))) >= sqrtf(((v13 - v30) * (v13 - v30)) + ((v14 - v31) * (v14 - v31))))
    {
      v20 = v19;
    }

    else
    {
      v20 = -v19;
    }

    if (v3 < v20)
    {
      v3 = v20;
    }
  }

  v21 = v14 * v3;
  v22 = (v13 * v3) + 0.0;
  v23 = v21 + 0.0;
  v24 = *((*(*this + 112))(this) + 40);
  *(v24 + 8) = v22;
  *(v24 + 12) = v23;
  v25 = *((*(*this + 112))(this) + 40);
  *(v25 + 24) = v22;
  *(v25 + 28) = v23;
  result = (*(*this + 112))(this);
  v27 = *(result + 40);
  *(v27 + 32) = v22;
  *(v27 + 36) = v23;
  return result;
}

void OMKeyer2D::computeCH(float32x2_t *a1, uint64_t *a2, void *a3, float *a4, _DWORD *a5, _DWORD *a6, float *a7, _DWORD *a8, __n128 a9)
{
  v10 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    __p = 0;
    v46 = 0;
    v47 = 0;
    if ((-1431655765 * ((v9 - v10) >> 2)) < 1)
    {
      v17 = 0;
      a9.n128_u64[0] = 0x44F9E000C4FA2000;
      v19 = -1000.0;
    }

    else
    {
      v39 = a5;
      v40 = a6;
      v41 = a7;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      a9.n128_u64[0] = 0x447A0000C47A0000;
      v43 = a9;
      v19 = -1000.0;
      do
      {
        if ((*(v10 + v16) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v10 + v16 + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v10 + v16 + 8) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          OMKeyer2DColorUtil::rgb2hsl((v10 + v16), &v48, a1[29].u32[0], a4, a5, a6, a7, a8);
          v20 = (v50 * 255.0);
          if ((v50 * 255.0) > 255.0)
          {
            v20 = 255;
          }

          if ((v50 * 255.0) >= 0.0)
          {
            v21 = v20;
          }

          else
          {
            v21 = 0;
          }

          v22 = v49;
          if (v49 > 1.0)
          {
            v22 = 1.0;
          }

          v42 = v22;
          v23 = __sincosf_stret(v48 * 6.2832);
          v24 = vsub_f32(vmul_n_f32(__PAIR64__(LODWORD(v23.__sinval), LODWORD(v23.__cosval)), v42), vmul_n_f32(a1[7], *(*&a1[9] + 4 * v21)));
          v44 = v24;
          v25 = v46;
          if (v46 >= v47)
          {
            v17 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&__p, &v44);
          }

          else
          {
            *v46 = v24.i32[0];
            v25[1] = v44.i32[1];
            v17 = v25 + 2;
          }

          v26.n128_u64[1] = v43.n128_u64[1];
          v46 = v17;
          v26.n128_u64[0] = vbsl_s8(vcgt_f32(__PAIR64__(v43.n128_u32[1], LODWORD(v50)), __PAIR64__(LODWORD(v50), v43.n128_u32[0])), vdup_lane_s32(__PAIR64__(v43.n128_u32[1], LODWORD(v50)), 0), v43.n128_u64[0]);
          v43 = v26;
          if (v49 > v19)
          {
            v19 = v49;
          }

          v10 = *a2;
          v9 = a2[1];
        }

        ++v18;
        v16 += 12;
      }

      while (v18 < (-1431655765 * ((v9 - v10) >> 2)));
      a9 = v43;
      __asm { FMOV            V1.2S, #-1.0 }

      a9.n128_u64[0] = vadd_f32(vadd_f32(a9.n128_u64[0], a9.n128_u64[0]), _D1);
      a6 = v40;
      a7 = v41;
      a5 = v39;
    }

    *a5 = a9.n128_u32[0];
    *a6 = a9.n128_u32[1];
    *a7 = v19;
    if (a8)
    {
      if (v17 >= v47)
      {
        v32 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(&__p, a8);
      }

      else
      {
        *v17 = *a8;
        a9.n128_u32[0] = a8[1];
        v17[1] = a9.n128_u32[0];
        v32 = (v17 + 2);
      }

      v46 = v32;
    }

    v34 = *a4;
    if (v33 <= 0)
    {
      v35 = a4[1];
    }

    else
    {
      v35 = a4[1];
      v36 = v33;
      v37 = (*a3 + 4);
      do
      {
        v34 = *(v37 - 1) + v34;
        *a4 = v34;
        v38 = *v37;
        v37 += 2;
        v35 = v38 + v35;
        a4[1] = v35;
        --v36;
      }

      while (v36);
    }

    *a4 = v34 / v33;
    a4[1] = v35 / v33;
    if (__p)
    {
      v46 = __p;
      operator delete(__p);
    }
  }
}

void sub_25FF1FF44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OMKeyer2D::adjustToRestriction(OMKeyer2D *this)
{
  v2 = (*(*this + 32))(this);
  v3 = (*(*this + 40))(this);
  v4 = (*(*this + 48))(this);
  v5 = (*(*this + 56))(this);
  if (v2 >= v3)
  {
    (*(*this + 64))(this, v3 + -0.01);
  }

  if (v5 <= v4)
  {
    (*(*this + 88))(this, v4 + 0.01);
  }

  v6 = (*(*this + 112))(this);
  v7 = (*(*this + 96))(this);

  return OMPie::offsetSegmentIfNeeded(v6, v7, 0.001);
}

void OMKeyer2D::computeModel(OMKeyer2D *this, int a2, float a3, int a4, OMSamples *a5, float a6, float a7, float a8, BOOL a9, int a10)
{
  if (*(a5 + 8) == 1)
  {
    Description = ProGL::Private::TextureImpl::getDescription(a5);
    Serializer = OZSceneNode::getSerializer(a5);
    v76[0].i32[0] = 0;
    v75[0].i32[0] = 0;
    v74[0].i32[0] = 0;
    OMKeyer2D::tolAdd(this, Description, Serializer, 1, v76[0].f32, v75[0].f32, v74[0].f32);
    v21 = (*(*this + 16))(this);
    *(v21 + 8) = *v21;
    v22 = (*(*this + 40))(this);
    v23 = (*(*this + 48))(this);
    if (a4)
    {
      v24 = (v75[0].f32[0] - v76[0].f32[0]) * 0.5;
      v25 = v74[0].f32[0] - v76[0].f32[0];
      if (v75[0].f32[0] <= v76[0].f32[0])
      {
        v26 = (v75[0].f32[0] - v76[0].f32[0]) * 0.5;
      }

      else
      {
        v26 = -v24;
      }

      v70 = a6;
      v68 = a8;
      if (v75[0].f32[0] <= v76[0].f32[0])
      {
        v27 = -v24;
      }

      else
      {
        v27 = (v75[0].f32[0] - v76[0].f32[0]) * 0.5;
      }

      v76[0].f32[0] = v26;
      v75[0].f32[0] = v27;
      v28 = a3;
      v29 = a7;
      v30 = v25 + v26;
      v77 = 3212836864;
      OMSpline::addVertexAtEnd(v21, &v77);
      v77.var0[0] = v22;
      v77.var0[1] = v26;
      OMSpline::addVertexAtEnd(v21, &v77);
      v77.var0[0] = (v22 + v23) * 0.5;
      v77.var0[1] = v30;
      a7 = v29;
      a3 = v28;
      OMSpline::addVertexAtEnd(v21, &v77);
      v77.var0[0] = v23;
      v77.var0[1] = v27;
      a8 = v68;
      a6 = v70;
    }

    else
    {
      v77 = 3212836864;
      OMSpline::addVertexAtEnd(v21, &v77);
      v77.var0[0] = v22;
      v77.var0[1] = 0.0;
      OMSpline::addVertexAtEnd(v21, &v77);
      v77.var0[0] = (v22 + v23) * 0.5;
      v77.var0[1] = 0.0;
      OMSpline::addVertexAtEnd(v21, &v77);
      v77.var0[0] = v23;
      v77.var0[1] = 0.0;
    }

    OMSpline::addVertexAtEnd(v21, &v77);
    v77 = 1065353216;
    OMSpline::addVertexAtEnd(v21, &v77);
    v31 = (*(*this + 16))(this);
    LODWORD(v32) = -1.0;
    v33.n128_u32[0] = 1.0;
    OMSpline::computeLinearArray(v31, this + 9, v32, v33, -1.0, 1.0, 1.0);
    OMKeyer2D::tolAdd(this, Description, Serializer, 0, 0, 0, 0);
  }

  if (a2)
  {
    v69 = this;
    if (a10)
    {
      OMKeyer2D::setSoftBasedOnHisto(this, a3);
    }

    else
    {
      OMKeyer2D::setSoftBasedOnOffsetFromTol(this, a3 * 0.05, a6, a7, a8);
    }

    EdgeSamples = OMSamples::getEdgeSamples(a5);
    v36 = *EdgeSamples;
    v35 = EdgeSamples[1];
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v37 = v35 - v36;
    if (v37)
    {
      v38 = EdgeSamples;
      v39 = 0;
      v40 = 0x2E8BA2E8BA2E8BA3 * (v37 >> 3);
      if (v40 <= 1)
      {
        v40 = 1;
      }

      v71 = v40;
      do
      {
        v41 = *v38 + 88 * v39;
        v42 = (v41 + 48);
        v43 = *(v41 + 48);
        v78 = 0;
        v79 = 0.0;
        v44 = *(v41 + 56);
        v45 = (v44 - v43) >> 2;
        v46 = 0xAAAAAAAAAAAAAAABLL * v45;
        if (v44 != v43)
        {
          if (v46 <= 1)
          {
            v47 = 1;
          }

          else
          {
            v47 = 0xAAAAAAAAAAAAAAABLL * v45;
          }

          v48 = (v43 + 8);
          v49 = 0;
          v50 = 0.0;
          do
          {
            v51 = *(v48 - 2);
            v49 = vadd_f32(v49, v51);
            v52 = *v48;
            v48 += 3;
            v50 = v50 + v52;
            v78 = v49;
            v79 = v50;
            --v47;
          }

          while (v47);
          v51.f32[0] = v46;
          v78 = vdiv_f32(v49, vdup_lane_s32(v51, 0));
          v79 = v50 / v46;
        }

        BoundingBox = OMUtil::getBoundingBox(v42, &v77, 0, &v78);
        if (BoundingBox)
        {
          fprintf(*MEMORY[0x277D85E08], "OMUtil::getBoundingBox result = %d\n", BoundingBox);
        }

        else
        {
          inv(&v77, v76);
          v54 = *(v41 + 76);
          if (*(v41 + 84))
          {
            v54 = 1.0 - v54;
          }

          if (v54 >= 0.5)
          {
            v55 = (v54 * 8.0) + -3.0;
          }

          else
          {
            v55 = v54 + v54;
          }

          v72.var0[0] = v55;
          v72.var0[1] = v55;
          v72.var0[2] = v55;
          Mat4f::MakeHScale(v73, &v72);
          Mat4f::operator*(&v77, v73, v74);
          Mat4f::operator*(v74[0].f32, v76, v75);
          if (v44 != v43)
          {
            v56 = 0;
            v57 = 1;
            do
            {
              v58 = *v42 + 12 * v56;
              v73[0].i64[0] = *v58;
              v73[0].i32[2] = *(v58 + 8);
              v73[0].i32[3] = 1065353216;
              operator*(v75, v73, v74);
              proj(v74, &v72, v59);
              std::vector<Vec3f>::push_back[abi:ne200100](&v80, &v72);
              v56 = v57;
            }

            while (v46 > v57++);
          }
        }

        ++v39;
      }

      while (v39 != v71);
    }

    this = v69;
    OMKeyer2D::adjustSoft(v69, &v80);
    if (v80)
    {
      v81 = v80;
      operator delete(v80);
    }
  }

  else if (OMKeyer2D::adjustToRestriction(this))
  {
    OMKeyer2D::setSoftBasedOnOffsetFromTol(this, a3 * 0.05, a6, a7, a8);
  }

  v61 = (*(*this + 16))(this);
  v62 = v61;
  v63 = v61[1] - *v61;
  if ((v63 >> 5) < 1)
  {
LABEL_46:
    v66 = (*(*this + 40))(this);
    v67 = (*(*this + 48))(this);
    v62[1] = *v62;
    v77 = 3212836864;
    OMSpline::addVertexAtEnd(v62, &v77);
    v77.var0[0] = v66;
    v77.var0[1] = 0.0;
    OMSpline::addVertexAtEnd(v62, &v77);
    v77.var0[0] = (v66 + v67) * 0.5;
    v77.var0[1] = 0.0;
    OMSpline::addVertexAtEnd(v62, &v77);
    v77.var0[0] = v67;
    v77.var0[1] = 0.0;
    OMSpline::addVertexAtEnd(v62, &v77);
    v77 = 1065353216;
    OMSpline::addVertexAtEnd(v62, &v77);
  }

  else
  {
    v64 = (v63 >> 5) & 0x7FFFFFFF;
    v65 = &(*v61)[3] + 1;
    while (*v65 == 0.0)
    {
      v65 += 8;
      if (!--v64)
      {
        goto LABEL_46;
      }
    }
  }
}

void sub_25FF207E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 80);
  if (v3)
  {
    *(v1 + 88) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void OMKeyer2D::adjustSoft(float32x2_t *a1, uint64_t *a2)
{
  if (*a2 != a2[1])
  {
    v4 = (*(*a1 + 96))(a1);
    v5 = *(v4 + 5);
    OMPie::computeArc(v4, v6, v7);
    OMPie::getArcOut(v4, 0.5, &v41);
    v9 = v5[1];
    v8 = v5 + 1;
    v10.n128_u64[0] = vmul_f32(vadd_f32(v9, v41), 0x3F0000003F000000);
    v40 = v10.n128_u64[0];
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0.0;
    OMKeyer2D::computeCH(a1, a2, &v37, &v36, &v35 + 1, &v35, &v34, &v40, v10);
    v11 = (*(*a1 + 112))(a1);
    v12 = v11;
    v13 = *(v11 + 5);
    v14 = v13 + 2;
    if (sqrtf(vaddv_f32(vmul_f32(*v13, *v13))) < v34 || sqrtf(vaddv_f32(vmul_f32(*v14, *v14))) < v34)
    {
      __p = 0;
      v32 = 0;
      v33 = 0;
      v30.var0[0] = v34;
      v30.var0[1] = 0.0;
      v29 = 11;
      OMPie::move(v11, &v29, &v30, &v30);
      if (__p)
      {
        v32 = __p;
        operator delete(__p);
      }
    }

    v15 = *&v35;
    if (v15 < (*(*a1 + 32))(a1))
    {
      (*(*a1 + 64))(a1, v15);
    }

    v16 = *(&v35 + 1);
    v18.n128_f32[0] = (*(*a1 + 56))(a1);
    if (v16 > v18.n128_f32[0])
    {
      v17 = (*(*a1 + 88))(a1, v16);
    }

    __p = 0;
    v32 = 0;
    v21 = 125;
    v33 = 0;
    do
    {
      if (__p != v32)
      {
        break;
      }

      OMKeyer2D::computeCostPie(v17, &__p, v8, &v41, v13 + 1, v13, v14, v4, v18, v19, v20, v12, &v37, v21 + 25);
      v21 += 25;
    }

    while (v21 <= 0x145);
    OMKeyer2D::computeCostPieAsQuad(v17, &__p, v4, v12, &v37);
    v22 = __p;
    if (v32 == __p)
    {
      if (!__p)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v23 = 0x2E8BA2E8BA2E8BA3 * ((v32 - __p) >> 2);
      v24 = (__p + 20);
      v25 = 1;
      v26 = 10000.0;
      do
      {
        v27 = *(v24 - 5);
        if (v27 < v26)
        {
          v13[1].f32[0] = *(v24 - 4);
          v13[1].f32[1] = *(v24 - 3);
          v13->f32[0] = *(v24 - 2);
          v13->f32[1] = *(v24 - 1);
          v13[2].f32[0] = *v24;
          v13[2].f32[1] = v24[1];
          v13[3].f32[0] = v24[2];
          v13[3].f32[1] = v24[3];
          v13[4].f32[0] = v24[4];
          v13[4].f32[1] = v24[5];
          v26 = v27;
        }

        v28 = v23 > v25++;
        v24 += 11;
      }

      while (v28);
    }

    v32 = v22;
    operator delete(v22);
LABEL_21:
    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }
  }
}

void sub_25FF20B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

float32x2_t OMKeyer2D::getTolCenterCbCr@<D0>(OMKeyer2D *this@<X0>, float32x2_t *a2@<X8>)
{
  v3 = (*(*this + 96))(this);
  OMPie::computeArc(v3, v4, v5);
  OMPie::getArcIn(v3, 0.5, &v8);
  OMPie::getArcOut(v3, 0.5, &v7);
  result = vmul_f32(vadd_f32(v8, v7), 0x3F0000003F000000);
  *a2 = result;
  return result;
}

void OMKeyer2D::getSpillSuppressTransf(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8, float a9, float a10, float a11, float a12)
{
  v23 = (*(*a1 + 96))(a1);
  OMPie::computeArc(v23, v24, v25);
  OMPie::getArcIn(v23, 0.5, &v28);
  OMPie::getArcOut(v23, 0.5, &v27);
  v29 = vmul_f32(vadd_f32(v28, v27), 0x3F0000003F000000);
  OMKeyer2D::getSpillSuppressTransf(&v29, a2, a3, a4, a5, a6, a7, v26, a8, a9, a10, a11, a12);
}

void OMKeyer2D::getSpillSuppressTransf(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13)
{
  v20 = *a1;
  v21 = a1[1];
  if (a7)
  {
    OMColorUtil::getRec2020to709Matrix(a2, a3, a4, a5, a6, a7, a8, v76);
    {
      OMColorUtil::getRGBToYCbCrMatrix(0, v35, v36, v37, v38, v39, v40, v41, v75);
      Mat4f::operator*(v75[0].f32, v76, OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::matrixTunedForRec2020);
    }

    {
      inv(OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::matrixTunedForRec2020, OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::inversematrixTunedForRec2020);
    }

    Mat4f::operator=(v78, OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::matrixTunedForRec2020);
    v22 = OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::inversematrixTunedForRec2020;
  }

  else
  {
    {
      v42 = a6;
      {
        OMColorUtil::getRGBToYCbCrMatrix(v42, v43, v44, v45, v46, v47, v48, v49, &OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::matrixNormal);
      }
    }

    {
      inv(&OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::matrixNormal, OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::inverseMatrixNormal);
    }

    Mat4f::operator=(v78, &OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::matrixNormal);
    v22 = OMKeyer2D::getSpillSuppressTransf(Vec2f const&,float,Vec3f const&,float,float,float,Mat4f &,Mat4f &,Mat4f &,float,OMColorPrimaries,BOOL)::inverseMatrixNormal;
  }

  Mat4f::operator=(v77, v22);
  v23 = sqrtf((v20 * v20) + (v21 * v21));
  v24 = atan2f(v21, v20);
  if (v24 >= 0.0)
  {
    v25 = v24;
  }

  else
  {
    v25 = v24 + 6.2832;
  }

  v26 = v23 * 0.4;
  v27 = (a9 / (v26 + a9)) + a12;
  v75[0].i64[0] = *a2;
  v75[0].i32[2] = *(a2 + 8);
  v75[0].i32[3] = 1065353216;
  operator*(v78, v75, v76);
  proj(v76, &v73, v28);
  *v65.var0 = 1065353216;
  v65.var0[2] = 0.0;
  v29 = (v25 + 1.5708);
  v30 = (-1.5708 - v25);
  v31 = (v73 + -0.5) * 0.4;
  v50 = vadd_f32(v74, v74);
  Mat4f::MakeHRot(v66, &v65, v29);
  Mat4f::operator*(v77, v66, v67);
  *v63.var0 = 0;
  v63.var0[2] = a9;
  Mat4f::MakeHTrans(v64, &v63);
  Mat4f::operator*(v67[0].f32, v64, v68);
  v61.var0[0] = 1.0;
  v61.var0[1] = a13;
  v61.var0[2] = v27;
  Mat4f::MakeHScale(v62, &v61);
  Mat4f::operator*(v68[0].f32, v62, v69);
  *v59.var0 = 0;
  v59.var0[2] = -a9;
  Mat4f::MakeHTrans(v60, &v59);
  Mat4f::operator*(v69[0].f32, v60, v70);
  *v57.var0 = 1065353216;
  v57.var0[2] = 0.0;
  Mat4f::MakeHRot(v58, &v57, v30);
  Mat4f::operator*(v70[0].f32, v58, v71);
  v55.var0[0] = v31;
  *&v55.var0[1] = v50;
  Mat4f::MakeHTrans(v56, &v55);
  Mat4f::operator*(v71[0].f32, v56, v72);
  OMColorUtil::Level4f(v32, a10, a11, v54);
  Mat4f::operator*(v72[0].f32, v54, v75);
  Mat4f::operator*(v75[0].f32, v78, v76);
  Mat4f::operator=(a4, v76);
  *v65.var0 = 1065353216;
  v65.var0[2] = 0.0;
  Mat4f::MakeHRot(v66, &v65, v29);
  Mat4f::operator*(v77, v66, v67);
  *v63.var0 = 0;
  v63.var0[2] = a9;
  Mat4f::MakeHTrans(v64, &v63);
  Mat4f::operator*(v67[0].f32, v64, v68);
  v33 = sqrtf((*a1 * *a1) + (a1[1] * a1[1])) * 0.5;
  *v61.var0 = 0;
  v61.var0[2] = v33;
  Mat4f::MakeHTrans(v62, &v61);
  Mat4f::operator*(v68[0].f32, v62, v69);
  *v59.var0 = 0;
  v59.var0[2] = -a9;
  Mat4f::MakeHTrans(v60, &v59);
  Mat4f::operator*(v69[0].f32, v60, v70);
  *v57.var0 = 1065353216;
  v57.var0[2] = 0.0;
  Mat4f::MakeHRot(v58, &v57, v30);
  Mat4f::operator*(v70[0].f32, v58, v71);
  v55.var0[0] = v31;
  *&v55.var0[1] = v50;
  Mat4f::MakeHTrans(v56, &v55);
  Mat4f::operator*(v71[0].f32, v56, v72);
  OMColorUtil::Level4f(v34, a10, a11, v54);
  Mat4f::operator*(v72[0].f32, v54, v75);
  Mat4f::operator*(v75[0].f32, v78, v76);
  Mat4f::operator=(a5, v76);
  v70[0].i64[0] = 0;
  v70[0].f32[2] = -a9;
  Mat4f::MakeHTrans(v72, v70);
  v69[0].i64[0] = 1065353216;
  v69[0].i32[2] = 0;
  Mat4f::MakeHRot(v71, v69, v30);
  Mat4f::operator*(v72[0].f32, v71, v75);
  Mat4f::operator*(v75[0].f32, v78, v76);
  Mat4f::operator=(a3, v76);
}

void OMKeyer2D::computeCostPie(int a1, uint64_t *a2, float32x2_t *a3, float32x2_t *a4, float32x2_t *a5, Vec2f *a6, Vec2f *a7, OMPie *this, __n128 a9, double a10, __n128 a11, OMPie *a12, void *a13, int a14)
{
  a11.n128_u64[0] = 0;
  do
  {
    a9.n128_u64[0] = vsub_f32(*a3, *a4);
    v21 = vmul_f32(a9.n128_u64[0], a9.n128_u64[0]);
    v21.f32[0] = sqrtf(vaddv_f32(v21));
    a9.n128_u64[0] = vmul_n_f32(vdiv_f32(a9.n128_u64[0], vdup_lane_s32(v21, 0)), a11.n128_f32[0]);
    v33 = a9;
    v34 = a11;
    v44[0] = a9.n128_u64[0];
    if (OMPie::isQuadActive(this) || (v22 = vmul_f32(*a5, *a5), v23 = vmul_f32(*a3, *a3), v24 = vsqrt_f32(vadd_f32(vzip1_s32(v22, v23), vzip2_s32(v22, v23))), (vmvn_s8(vcge_f32(vdup_lane_s32(v24, 1), v24)).u32[0] & 1) != 0))
    {
      if (OMPie::isQuadActive(a12) || (a9 = v33, a9.n128_u64[0] = vmul_f32(a9.n128_u64[0], a9.n128_u64[0]), v25 = vmul_f32(*a5, *a5), a9.n128_u64[0] = vsqrt_f32(vadd_f32(vzip1_s32(a9.n128_u64[0], v25), vzip2_s32(a9.n128_u64[0], v25))), (vmvn_s8(vcge_f32(vdup_lane_s32(a9.n128_u64[0], 1), a9.n128_u64[0])).u32[0] & 1) != 0))
      {
        v43 = *a6;
        {
          v42 = *a7;
          {
            OMPie::OMPie(v39, 1);
            v26 = __p;
            *__p = v43;
            v27 = v42;
            *(v26 + 1) = v33.n128_u64[0];
            *(v26 + 2) = v27;
            *&v28 = v33.n128_u64[0];
            *(&v28 + 1) = v33.n128_u64[0];
            v32 = v28;
            *(v26 + 24) = v28;
            OMPie::getArea(v39);
            v30 = v34.n128_f32[0] + v34.n128_f32[0] + v29;
            *&v31 = v43;
            v35 = v30;
            v36 = v33.n128_u64[0];
            *(&v31 + 1) = v42;
            v37 = v31;
            v38 = v32;
            std::vector<OMCostPie>::push_back[abi:ne200100](a2, &v35);
            if (__p)
            {
              v41 = __p;
              operator delete(__p);
            }
          }
        }
      }
    }

    a11 = v34;
    a11.n128_f32[0] = v34.n128_f32[0] + 0.01;
  }

  while ((v34.n128_f32[0] + 0.01) < 2.0);
}

void sub_25FF2158C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<OMCostPie>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OMCostPie>::__emplace_back_slow_path<OMCostPie>(a1, a2);
  }

  else
  {
    std::vector<OMCostPie>::__construct_one_at_end[abi:ne200100]<OMCostPie>(a1, a2);
    result = (v3 + 44);
  }

  a1[1] = result;
  return result;
}

void OMKeyer2D::computeCostPieAsQuad(int a1, uint64_t *a2, uint64_t a3, OMPie *this, uint64_t *a5)
{
  if (!OMPie::isQuadActive(this))
  {
    return;
  }

  v9 = *(this + 5);
  v11 = a5[1];
  v10 = a5[2];
  if (v11 >= v10)
  {
    v12 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a5, v9);
    v9 = *(this + 5);
    v10 = a5[2];
  }

  else
  {
    *v11 = *v9;
    v11[1] = v9[1];
    v12 = v11 + 2;
  }

  a5[1] = v12;
  if (v12 >= v10)
  {
    v13 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a5, v9 + 4);
    v9 = *(this + 5);
    v10 = a5[2];
  }

  else
  {
    *v12 = v9[4];
    v12[1] = v9[5];
    v13 = v12 + 2;
  }

  a5[1] = v13;
  if (v13 >= v10)
  {
    v14 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a5, v9 + 6);
    v9 = *(this + 5);
    v10 = a5[2];
  }

  else
  {
    *v13 = v9[6];
    v13[1] = v9[7];
    v14 = v13 + 2;
  }

  a5[1] = v14;
  if (v14 >= v10)
  {
    v15 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a5, v9 + 8);
  }

  else
  {
    *v14 = v9[8];
    v14[1] = v9[9];
    v15 = (v14 + 2);
  }

  a5[1] = v15;
  v86[0] = 0;
  std::vector<int>::vector[abi:ne200100](v91, 0x168uLL);
  v16 = *a5;
  v17 = a5[1] - *a5;
  if ((v17 >> 3) < 1)
  {
    v22 = 1000.0;
    v21 = -1000.0;
  }

  else
  {
    v18 = v91[0];
    v19 = (v17 >> 3) & 0x7FFFFFFF;
    v20 = (v16 + 4);
    v21 = -1000.0;
    v22 = 1000.0;
    do
    {
      v23 = *(v20 - 1);
      v24 = sqrtf((v23 * v23) + (*v20 * *v20));
      v25 = atan2f(*v20, v23);
      if (v25 < 0.0)
      {
        v25 = v25 + 6.2832;
      }

      v18[((v25 / 6.2832) * 360.0)] = 1;
      if (v24 > v21)
      {
        v21 = v24;
      }

      if (v24 < v22)
      {
        v22 = v24;
      }

      v20 += 2;
      --v19;
    }

    while (v19);
  }

  std::vector<int>::vector[abi:ne200100](v90, 0x168uLL);
  v86[0] = -1;
  std::vector<int>::vector[abi:ne200100](v89, 0x168uLL);
  v26 = 0;
  v27 = 0;
  v28 = v90[0];
  v29 = 10000;
  v30 = v89[0];
  do
  {
    v31 = v91[0];
    v32 = v89[0];
    v33 = 360;
    v34 = v26;
    do
    {
      v35 = v34 - 360;
      if (v34 <= 0x167)
      {
        v35 = v34;
      }

      v36 = v31[v35];
      if ((v28[v26] & 0x80000000) != 0)
      {
        if (!v36)
        {
          goto LABEL_35;
        }

        v28[v26] = v35;
LABEL_34:
        v32[v26] = v35;
        goto LABEL_35;
      }

      if (v36)
      {
        goto LABEL_34;
      }

LABEL_35:
      ++v34;
      --v33;
    }

    while (v33);
    v37 = v30[v26];
    v38 = v28[v26];
    if (v37 <= v38)
    {
      v37 += 360;
    }

    v39 = v37 - v38;
    if (v39 < v29)
    {
      v27 = v26;
      v29 = v39;
    }

    ++v26;
  }

  while (v26 != 360);
  v40 = v22 >= 0.1 || v29 <= 90;
  v41 = v89[0];
  if (v40 && v22 >= 0.01)
  {
    v42 = (*(v89[0] + v27) + 1.0) / 360.0;
    v43 = v28[v27] / 360.0;
    v44 = (v43 + v43) * 3.14159265;
    v45 = __sincosf_stret(v44);
    v46 = (v42 + v42) * 3.14159265;
    v47 = __sincosf_stret(v46);
    OMPie::OMPie(v86, 1);
    v48 = v21 * v45.__cosval;
    v49 = v21 * v45.__sinval;
    v50 = v21 * v47.__cosval;
    v51 = v21 * v47.__sinval;
    v52 = v22 * v45.__cosval;
    v53 = v22 * v45.__sinval;
    v54 = v22 * v47.__cosval;
    v55 = v22 * v47.__sinval;
    v56 = v50;
    v57 = __p;
    *(__p + 1) = 0;
    *v57 = v48;
    v57[1] = v49;
    v57[4] = v50;
    v57[5] = v51;
    v73 = v53;
    v74 = v52;
    v57[6] = v52;
    v57[7] = v53;
    v57[8] = v54;
    v57[9] = v55;
    v58 = sqrtf((v48 * v48) + (v49 * v49));
    v75.f32[0] = v48 / v58;
    v75.f32[1] = v49 / v58;
    v59 = *(a3 + 40);
    v60 = vmul_f32(*v59, *v59);
    v60.f32[0] = sqrtf(vaddv_f32(v60));
    v85 = vdiv_f32(*v59, vdup_lane_s32(v60, 0));
    OMUtil::angle2PI(&v75, &v85, v61);
    v63 = v62;
    v64 = *(*(a3 + 40) + 16);
    v65 = vmul_f32(v64, v64);
    v65.f32[0] = sqrtf(vaddv_f32(v65));
    v75 = vdiv_f32(v64, vdup_lane_s32(v65, 0));
    v64.f32[0] = sqrtf((v56 * v56) + (v51 * v51));
    v85.var0[0] = v56 / v64.f32[0];
    v85.var0[1] = v51 / v64.f32[0];
    OMUtil::angle2PI(&v75, &v85, v66);
    v68 = v67;
    OMPie::getArea(v86);
    if (v63 <= 1.4)
    {
      v70 = 0.0;
    }

    else
    {
      v70 = 1000.0;
    }

    v71 = v70 + v69;
    if (v68 <= 1.4)
    {
      v72 = 0.0;
    }

    else
    {
      v72 = 1000.0;
    }

    v75.f32[0] = v72 + v71;
    v75.i32[1] = 0;
    v76 = 0;
    v77 = v48;
    v78 = v49;
    v79 = v56;
    v80 = v51;
    v81 = v74;
    v82 = v73;
    v83 = v54;
    v84 = v55;
    std::vector<OMCostPie>::push_back[abi:ne200100](a2, &v75);
    if (__p)
    {
      v88 = __p;
      operator delete(__p);
    }

    v41 = v89[0];
  }

  if (v41)
  {
    v89[1] = v41;
    operator delete(v41);
  }

  if (v90[0])
  {
    v90[1] = v90[0];
    operator delete(v90[0]);
  }

  if (v91[0])
  {
    v91[1] = v91[0];
    operator delete(v91[0]);
  }
}

void sub_25FF21AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a26)
  {
    operator delete(a26);
  }

  if (a29)
  {
    operator delete(a29);
  }

  v32 = *(v30 - 152);
  if (v32)
  {
    *(v30 - 144) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(exception_object);
}

BOOL anonymous namespace::isVec2fLessThan(_anonymous_namespace_ *this, const Vec2f *a2, const Vec2f *a3)
{
  if (*this == a2->var0[0])
  {
    return *(this + 1) < a2->var0[1];
  }

  else
  {
    return *this < a2->var0[0];
  }
}

void std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,false>(unint64_t a1, float *a2, uint64_t (**a3)(void *, unint64_t), uint64_t a4, char a5, __n128 a6)
{
LABEL_1:
  v72 = a2 - 6;
  v73 = a2 - 4;
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = (a2 - v10) >> 3;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      if ((*a3)(a2 - 1, v10))
      {
        v70 = *v10;
        *v10 = *(a2 - 2);
        *(v10 + 4) = *(a2 - 1);
LABEL_97:
        *(a2 - 1) = v70;
        return;
      }

      return;
    }

LABEL_10:
    if (v13 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(v10, a2, a3);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,Vec2f*>(v10, a2, a2, a3, a6);
      }

      return;
    }

    v14 = (v10 + 8 * (v13 >> 1));
    v15 = *a3;
    if (v13 >= 0x81)
    {
      v16 = v15((v10 + 8 * (v13 >> 1)), v10);
      v17 = (*a3)(a2 - 1, v14);
      if (v16)
      {
        v19 = *a1;
        v18 = *(a1 + 4);
        if (v17)
        {
          *a1 = *(a2 - 2);
          *(a1 + 4) = *(a2 - 1);
          *(a2 - 2) = v19;
          *(a2 - 1) = v18;
        }

        else
        {
          *a1 = *v14;
          *v14 = v19;
          *(v14 + 1) = v18;
          if ((*a3)(a2 - 1, v14))
          {
            v28 = *v14;
            *v14 = *(a2 - 2);
            *(v14 + 1) = *(a2 - 1);
            *(a2 - 1) = v28;
          }
        }
      }

      else if (v17)
      {
        v24 = *v14;
        *v14 = *(a2 - 2);
        *(v14 + 1) = *(a2 - 1);
        *(a2 - 1) = v24;
        if ((*a3)(v14, a1))
        {
          v25 = *a1;
          *a1 = *v14;
          *v14 = v25;
        }
      }

      v29 = v14 - 1;
      v30 = (*a3)(v14 - 1, a1 + 8);
      v31 = (*a3)(v73, (v14 - 1));
      if (v30)
      {
        v33 = *(a1 + 8);
        v32 = *(a1 + 12);
        if (v31)
        {
          *(a1 + 8) = *(a2 - 4);
          *(a1 + 12) = *(a2 - 3);
          *(a2 - 4) = v33;
          *(a2 - 3) = v32;
        }

        else
        {
          *(a1 + 8) = *v29;
          *v29 = v33;
          *(v14 - 1) = v32;
          if ((*a3)(v73, (v14 - 1)))
          {
            v37 = *v29;
            *v29 = *(a2 - 4);
            *(v14 - 1) = *(a2 - 3);
            *(a2 - 2) = v37;
          }
        }
      }

      else if (v31)
      {
        v34 = *v29;
        *v29 = *(a2 - 4);
        *(v14 - 1) = *(a2 - 3);
        *(a2 - 2) = v34;
        if ((*a3)(v14 - 1, a1 + 8))
        {
          v35 = *(a1 + 8);
          *(a1 + 8) = *v29;
          *v29 = v35;
        }
      }

      v38 = v14 + 1;
      v39 = (*a3)(v14 + 1, a1 + 16);
      v40 = (*a3)(v72, (v14 + 1));
      if (v39)
      {
        v42 = *(a1 + 16);
        v41 = *(a1 + 20);
        if (v40)
        {
          *(a1 + 16) = *(a2 - 6);
          *(a1 + 20) = *(a2 - 5);
          *(a2 - 6) = v42;
          *(a2 - 5) = v41;
        }

        else
        {
          *(a1 + 16) = *v38;
          *v38 = v42;
          *(v14 + 3) = v41;
          if ((*a3)(v72, (v14 + 1)))
          {
            v45 = *v38;
            *v38 = *(a2 - 6);
            *(v14 + 3) = *(a2 - 5);
            *(a2 - 3) = v45;
          }
        }
      }

      else if (v40)
      {
        v43 = *v38;
        *v38 = *(a2 - 6);
        *(v14 + 3) = *(a2 - 5);
        *(a2 - 3) = v43;
        if ((*a3)(v14 + 1, a1 + 16))
        {
          v44 = *(a1 + 16);
          *(a1 + 16) = *v38;
          *v38 = v44;
        }
      }

      v46 = (*a3)(v14, (v14 - 1));
      v47 = (*a3)(v14 + 1, v14);
      if (v46)
      {
        v49 = *v29;
        v48 = *(v14 - 1);
        if (v47)
        {
          *v29 = *v38;
          *v38 = v49;
          *(v14 + 3) = v48;
          v50 = *v14;
          goto LABEL_58;
        }

        *v29 = *v14;
        *v14 = v49;
        *(v14 + 1) = v48;
        v55 = (*a3)(v14 + 1, v14);
        v50 = *v14;
        if (v55)
        {
          v56 = *(v14 + 1);
          v54 = *v38;
          *v14 = *v38;
          *v38 = v50;
          *(v14 + 3) = v56;
LABEL_57:
          v50 = v54;
        }
      }

      else
      {
        v50 = *v14;
        if (v47)
        {
          v51 = *(v14 + 1);
          *v14 = *v38;
          *v38 = v50;
          *(v14 + 3) = v51;
          v52 = (*a3)(v14, (v14 - 1));
          v50 = *v14;
          if (v52)
          {
            v53 = *(v14 + 1);
            v54 = *v29;
            *v29 = v50;
            *(v14 - 1) = v53;
            *v14 = v54;
            goto LABEL_57;
          }
        }
      }

LABEL_58:
      v57 = *(v14 + 1);
      v58 = *a1;
      *a1 = v50;
      *(a1 + 4) = v57;
      *v14 = v58;
      if (a5)
      {
        goto LABEL_60;
      }

      goto LABEL_59;
    }

    v20 = v15(v10, v10 + 8 * (v13 >> 1));
    v21 = (*a3)(a2 - 1, v10);
    if (v20)
    {
      v23 = *v14;
      v22 = *(v14 + 1);
      if (!v21)
      {
        *v14 = *v10;
        *v10 = v23;
        *(v10 + 4) = v22;
        if ((*a3)(a2 - 1, v10))
        {
          v36 = *v10;
          *v10 = *(a2 - 2);
          *(v10 + 4) = *(a2 - 1);
          *(a2 - 1) = v36;
        }

LABEL_37:
        if (a5)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      *v14 = *(a2 - 2);
      *(v14 + 1) = *(a2 - 1);
      *(a2 - 2) = v23;
      *(a2 - 1) = v22;
      if (a5)
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (!v21)
      {
        goto LABEL_37;
      }

      v26 = *v10;
      *v10 = *(a2 - 2);
      *(v10 + 4) = *(a2 - 1);
      *(a2 - 1) = v26;
      if (!(*a3)(v10, v14))
      {
        goto LABEL_37;
      }

      v27 = *v14;
      *v14 = *v10;
      *v10 = v27;
      if (a5)
      {
        goto LABEL_60;
      }
    }

LABEL_59:
    if (((*a3)(a1 - 8, a1) & 1) == 0)
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Vec2f *,BOOL (*&)(Vec2f const&,Vec2f const&)>(a1, a2, a3);
      goto LABEL_65;
    }

LABEL_60:
    a6.n128_f32[0] = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Vec2f *,BOOL (*&)(Vec2f const&,Vec2f const&)>(a1, a2, a3);
    v60 = v59;
    if ((v61 & 1) == 0)
    {
      goto LABEL_63;
    }

    v62 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(a1, v59, a3);
    v10 = (v60 + 2);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(v60 + 1, a2, a3))
    {
      a4 = -v12;
      a2 = v60;
      if (v62)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v62)
    {
LABEL_63:
      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,false>(a1, v60, a3, -v12, a5 & 1, a6);
      v10 = (v60 + 2);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,0>(v10, (v10 + 8), (v10 + 16), a2 - 2, a3);
      return;
    }

    if (v13 == 5)
    {
      v67 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,0>(v10, (v10 + 8), (v10 + 16), (v10 + 24), a3);
      if (!(*a3)(a2 - 2, v10 + 24, v67))
      {
        return;
      }

      v68 = *(v10 + 24);
      *(v10 + 24) = *(a2 - 2);
      *(v10 + 28) = *(a2 - 1);
      *(a2 - 1) = v68;
      if (!(*a3)(v10 + 24, v10 + 16))
      {
        return;
      }

      *(v10 + 16) = vextq_s8(*(v10 + 16), *(v10 + 16), 8uLL);
      if (!(*a3)(v10 + 16, v10 + 8))
      {
        return;
      }

      *(v10 + 8) = vextq_s8(*(v10 + 8), *(v10 + 8), 8uLL);
      goto LABEL_90;
    }

    goto LABEL_10;
  }

  v63 = (*a3)(v10 + 8, v10);
  v64 = (*a3)(a2 - 1, v10 + 8);
  if ((v63 & 1) == 0)
  {
    if (!v64)
    {
      return;
    }

    v71 = *(v10 + 8);
    *(v10 + 8) = *(a2 - 2);
    *(v10 + 12) = *(a2 - 1);
    *(a2 - 1) = v71;
LABEL_90:
    if ((*a3)(v10 + 8, v10))
    {
      *v10 = vextq_s8(*v10, *v10, 8uLL);
    }

    return;
  }

  v66 = *v10;
  v65 = *(v10 + 4);
  if (v64)
  {
    *v10 = *(a2 - 2);
    *(v10 + 4) = *(a2 - 1);
    *(a2 - 2) = v66;
    *(a2 - 1) = v65;
    return;
  }

  *v10 = *(v10 + 8);
  *(v10 + 8) = v66;
  *(v10 + 12) = v65;
  if ((*a3)(a2 - 1, v10 + 8))
  {
    v70 = *(v10 + 8);
    *(v10 + 8) = *(a2 - 2);
    *(v10 + 12) = *(a2 - 1);
    goto LABEL_97;
  }
}

float std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,0>(float *a1, float *a2, float *a3, float *a4, uint64_t (**a5)(float *, float *))
{
  v10 = (*a5)(a2, a1);
  v11 = (*a5)(a3, a2);
  if (v10)
  {
    v13 = *a1;
    v12 = *(a1 + 1);
    if (v11)
    {
      *a1 = *a3;
      a1[1] = a3[1];
      *a3 = v13;
      *(a3 + 1) = v12;
    }

    else
    {
      *a1 = *a2;
      a1[1] = a2[1];
      *a2 = v13;
      *(a2 + 1) = v12;
      if ((*a5)(a3, a2))
      {
        v16 = *a2;
        *a2 = *a3;
        a2[1] = a3[1];
        *a3 = v16;
      }
    }
  }

  else if (v11)
  {
    v14 = *a2;
    *a2 = *a3;
    a2[1] = a3[1];
    *a3 = v14;
    if ((*a5)(a2, a1))
    {
      v15 = *a1;
      *a1 = *a2;
      a1[1] = a2[1];
      *a2 = v15;
    }
  }

  if ((*a5)(a4, a3))
  {
    v18 = *a3;
    *a3 = *a4;
    a3[1] = a4[1];
    *a4 = v18;
    if ((*a5)(a3, a2))
    {
      v19 = *a2;
      *a2 = *a3;
      a2[1] = a3[1];
      *a3 = v19;
      if ((*a5)(a2, a1))
      {
        v20 = *a1;
        *a1 = *a2;
        result = a2[1];
        a1[1] = result;
        *a2 = v20;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(uint64_t result, void *a2, uint64_t (**a3)(void *, void))
{
  if (result != a2)
  {
    v17[7] = v3;
    v17[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = (*a3)(v7, v11);
        if (result)
        {
          v17[0] = *v10;
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            v14 = *(v6 + v12 + 4);
            *(v13 + 2) = *(v6 + v12);
            *(v13 + 3) = v14;
            if (!v12)
            {
              break;
            }

            v12 -= 8;
            result = (*a3)(v17, v6 + v12);
            if ((result & 1) == 0)
            {
              v15 = (v6 + v12 + 8);
              goto LABEL_10;
            }
          }

          v15 = v6;
LABEL_10:
          v16 = HIDWORD(v17[0]);
          *v15 = v17[0];
          v15[1] = v16;
        }

        v7 = v10 + 1;
        v9 += 8;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(uint64_t result, void *a2, uint64_t (**a3)(void *, _DWORD *))
{
  if (result != a2)
  {
    v14[7] = v3;
    v14[8] = v4;
    v6 = result;
    v7 = (result + 8);
    if ((result + 8) != a2)
    {
      v9 = (result - 8);
      do
      {
        v10 = v6;
        v6 = v7;
        result = (*a3)(v7, v10);
        if (result)
        {
          v14[0] = *v6;
          v11 = v9;
          do
          {
            v12 = v11[3];
            v11[4] = v11[2];
            v11[5] = v12;
            result = (*a3)(v14, v11);
            v11 -= 2;
          }

          while ((result & 1) != 0);
          v13 = HIDWORD(v14[0]);
          v11[4] = v14[0];
          v11[5] = v13;
        }

        v7 = v6 + 1;
        v9 += 2;
      }

      while (v6 + 1 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Vec2f *,BOOL (*&)(Vec2f const&,Vec2f const&)>(unint64_t a1, _DWORD *a2, uint64_t (**a3)(uint64_t *, unint64_t))
{
  v4 = a2;
  v11 = *a1;
  if ((*a3)(&v11, (a2 - 2)))
  {
    v6 = a1;
    do
    {
      v6 += 8;
    }

    while (((*a3)(&v11, v6) & 1) == 0);
  }

  else
  {
    v7 = a1 + 8;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = (*a3)(&v11, v7);
      v7 = v6 + 8;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  while (v6 < v4)
  {
    v9 = *v6;
    *v6 = *v4;
    *(v6 + 4) = v4[1];
    *v4 = v9;
    do
    {
      v6 += 8;
    }

    while (!(*a3)(&v11, v6));
    do
    {
      v4 -= 2;
    }

    while (((*a3)(&v11, v4) & 1) != 0);
  }

  if (v6 - 8 != a1)
  {
    *a1 = *(v6 - 8);
    *(a1 + 4) = *(v6 - 4);
  }

  *(v6 - 8) = v11;
  return v6;
}

float std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Vec2f *,BOOL (*&)(Vec2f const&,Vec2f const&)>(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = 0;
  v12 = *a1;
  do
  {
    ++v6;
  }

  while (((*a3)(&a1[v6], &v12) & 1) != 0);
  v7 = &a1[v6];
  if (v6 == 1)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      --a2;
    }

    while (((*a3)(a2, &v12) & 1) == 0);
  }

  else
  {
    do
    {
      --a2;
    }

    while (!(*a3)(a2, &v12));
  }

  v8 = &a1[v6];
  if (v7 < a2)
  {
    v9 = a2;
    do
    {
      v10 = *v8;
      *v8 = *v9;
      *(v8 + 4) = *(v9 + 1);
      *v9 = v10;
      do
      {
        v8 += 8;
      }

      while (((*a3)(v8, &v12) & 1) != 0);
      do
      {
        --v9;
      }

      while (!(*a3)(v9, &v12));
    }

    while (v8 < v9);
  }

  if ((v8 - 8) != a1)
  {
    *a1 = *(v8 - 8);
    *(a1 + 1) = *(v8 - 4);
  }

  *(v8 - 8) = v12;
  result = *(&v12 + 1);
  *(v8 - 4) = HIDWORD(v12);
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(uint64_t *a1, float *a2, uint64_t (**a3)(float *, float *))
{
  v6 = (a2 - a1) >> 3;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v10 = (*a3)(a1 + 2, a1);
        v11 = (*a3)(a2 - 2, a1 + 2);
        if (v10)
        {
          v13 = *a1;
          v12 = *(a1 + 1);
          if (v11)
          {
            *a1 = *(a2 - 2);
            *(a1 + 1) = *(a2 - 1);
            *(a2 - 2) = v13;
            *(a2 - 1) = v12;
            return 1;
          }

          *a1 = a1[1];
          *(a1 + 2) = v13;
          *(a1 + 3) = v12;
          if (!(*a3)(a2 - 2, a1 + 2))
          {
            return 1;
          }

          v7 = a1[1];
          *(a1 + 2) = *(a2 - 2);
          *(a1 + 3) = *(a2 - 1);
          goto LABEL_6;
        }

        if (!v11)
        {
          return 1;
        }

        v19 = a1[1];
        *(a1 + 2) = *(a2 - 2);
        *(a1 + 3) = *(a2 - 1);
        *(a2 - 1) = v19;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,0>(a1, a1 + 2, a1 + 4, a2 - 2, a3);
        return 1;
      case 5:
        v8 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a3);
        if (!(*a3)(a2 - 2, a1 + 3, v8))
        {
          return 1;
        }

        v9 = a1[3];
        *(a1 + 6) = *(a2 - 2);
        *(a1 + 7) = *(a2 - 1);
        *(a2 - 1) = v9;
        if (!(*a3)(a1 + 6, a1 + 4))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        if (!(*a3)(a1 + 4, a1 + 2))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      default:
        goto LABEL_17;
    }

    if ((*a3)(a1 + 2, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if ((*a3)(a2 - 2, a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 2);
      *(a1 + 1) = *(a2 - 1);
LABEL_6:
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_17:
  v14 = (a1 + 2);
  v15 = (*a3)(a1 + 2, a1);
  v16 = (*a3)(a1 + 4, a1 + 2);
  if (v15)
  {
    v18 = *a1;
    v17 = *(a1 + 1);
    if (v16)
    {
      *a1 = a1[2];
      *(a1 + 4) = v18;
      *(a1 + 5) = v17;
    }

    else
    {
      *a1 = a1[1];
      *(a1 + 2) = v18;
      *(a1 + 3) = v17;
      if ((*a3)(a1 + 4, a1 + 2))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v16)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 2, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v20 = (a1 + 3);
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v21 = 0;
  v22 = 0;
  while (1)
  {
    if ((*a3)(v20, v14))
    {
      v29 = *v20;
      v23 = v21;
      while (1)
      {
        v24 = a1 + v23;
        v25 = *(a1 + v23 + 20);
        *(v24 + 24) = *(a1 + v23 + 16);
        *(v24 + 28) = v25;
        if (v23 == -16)
        {
          break;
        }

        v23 -= 8;
        if (((*a3)(&v29, (v24 + 8)) & 1) == 0)
        {
          v26 = (a1 + v23 + 24);
          goto LABEL_40;
        }
      }

      v26 = a1;
LABEL_40:
      v27 = HIDWORD(v29);
      *v26 = v29;
      v26[1] = v27;
      if (++v22 == 8)
      {
        return v20 + 2 == a2;
      }
    }

    v14 = v20;
    v21 += 8;
    v20 += 2;
    if (v20 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*,Vec2f*>(char *a1, char *a2, char *a3, unsigned int (**a4)(uint64_t, uint64_t), __n128 a5)
{
  if (a1 != a2)
  {
    v9 = (a2 - a1) >> 3;
    if (v9 >= 2)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[8 * v10];
      do
      {
        a5.n128_f32[0] = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(a1, a4, v9, v12);
        v12 -= 8;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if ((*a4)(v13, a1, a5))
        {
          v14 = *v13;
          *v13 = *a1;
          *(v13 + 1) = *(a1 + 1);
          *a1 = v14;
          a5.n128_f32[0] = std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(a1, a4, v9, a1);
        }

        v13 += 8;
      }

      while (v13 != a3);
    }

    if (v9 >= 2)
    {
      v15 = a2 - 8;
      do
      {
        v17 = *a1;
        v16 = *(a1 + 1);
        v18 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(a1, a4, v9);
        if (v15 == v18)
        {
          *v18 = v17;
          *(v18 + 1) = v16;
        }

        else
        {
          *v18 = *v15;
          *(v18 + 1) = *(v15 + 1);
          *v15 = v17;
          *(v15 + 1) = v16;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(a1, (v18 + 8), a4, (v18 + 8 - a1) >> 3);
        }

        v15 -= 8;
      }

      while (v9-- > 2);
    }

    return v13;
  }

  return a3;
}

float std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(uint64_t a1, unsigned int (**a2)(void, void), uint64_t a3, _DWORD *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v20[11] = v4;
    v20[12] = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (a4 - a1) >> 3)
    {
      v12 = (a4 - a1) >> 2;
      v13 = v12 + 1;
      v14 = (a1 + 8 * (v12 + 1));
      v15 = v12 + 2;
      if (v12 + 2 < a3 && (*a2)(v14, v14 + 2))
      {
        v14 += 2;
        v13 = v15;
      }

      if (((*a2)(v14, v7) & 1) == 0)
      {
        v20[0] = *v7;
        do
        {
          v17 = v14;
          *v7 = *v14;
          v7[1] = v14[1];
          if (v9 < v13)
          {
            break;
          }

          v18 = (2 * v13) | 1;
          v14 = (a1 + 8 * v18);
          v19 = 2 * v13 + 2;
          if (v19 < a3)
          {
            if ((*a2)(a1 + 8 * v18, v14 + 2))
            {
              v14 += 2;
              v18 = v19;
            }
          }

          v7 = v17;
          v13 = v18;
        }

        while (!(*a2)(v14, v20));
        *v17 = v20[0];
        result = *(v20 + 1);
        v17[1] = HIDWORD(v20[0]);
      }
    }
  }

  return result;
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(_DWORD *a1, unsigned int (**a2)(uint64_t, uint64_t), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[2 * v6];
    v9 = v8 + 2;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 4;
      if ((*a2)((v8 + 2), (v8 + 4)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    *a1 = *v9;
    a1[1] = v9[1];
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(Vec2f const&,Vec2f const&),Vec2f*>(uint64_t a1, uint64_t a2, uint64_t (**a3)(void, void), uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v14[7] = v4;
    v14[8] = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 8 * (v6 >> 1));
    v11 = (a2 - 8);
    if ((*a3)(v10, a2 - 8))
    {
      v14[0] = *v11;
      do
      {
        v13 = v10;
        *v11 = *v10;
        *(v11 + 1) = v10[1];
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 8 * v9);
        v11 = v13;
      }

      while (((*a3)(v10, v14) & 1) != 0);
      result = *v14;
      *v13 = v14[0];
    }
  }

  return result;
}

char *std::vector<Vec2f>::__assign_with_size[abi:ne200100]<Vec2f*,Vec2f*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 3)
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

      std::vector<double>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 3)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 1);
      v5 += 8;
      result += 8;
    }

    a1[1] = result;
  }

  else
  {
    v12 = &a2[v11 - result];
    if (v11 != result)
    {
      v13 = result;
      v14 = a2;
      do
      {
        *v13 = *v14;
        *(v13 + 1) = *(v14 + 1);
        v14 += 8;
        v13 += 8;
      }

      while (v14 != v12);
    }

    if (v12 == a3)
    {
      v16 = v11;
    }

    else
    {
      v15 = a2 - result;
      v16 = v11;
      do
      {
        v17 = &v16[v15];
        *v11 = *&v16[v15];
        *(v11 + 1) = *&v16[v15 + 4];
        v11 += 8;
        v16 += 8;
      }

      while (v17 + 8 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void sub_25FF232E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

float std::vector<OMCostPie>::__construct_one_at_end[abi:ne200100]<OMCostPie>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v2 = *a2;
  *(v2 + 4) = *(a2 + 4);
  *(v2 + 8) = *(a2 + 8);
  *(v2 + 12) = *(a2 + 12);
  *(v2 + 16) = *(a2 + 16);
  *(v2 + 20) = *(a2 + 20);
  *(v2 + 24) = *(a2 + 24);
  *(v2 + 28) = *(a2 + 28);
  *(v2 + 32) = *(a2 + 32);
  *(v2 + 36) = *(a2 + 36);
  result = *(a2 + 40);
  *(v2 + 40) = result;
  *(a1 + 8) = v2 + 44;
  return result;
}

_DWORD *std::vector<OMCostPie>::__emplace_back_slow_path<OMCostPie>(uint64_t *a1, _DWORD *a2)
{
  v3 = 0x5D1745D1745D174;
  v4 = *a1;
  v5 = a1[1];
  v6 = v5 - *a1;
  v7 = 0x2E8BA2E8BA2E8BA3 * (v6 >> 2) + 1;
  if (v7 > 0x5D1745D1745D174)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - v4) >> 2) > v7)
  {
    v7 = 0x5D1745D1745D1746 * ((a1[2] - v4) >> 2);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - v4) >> 2)) < 0x2E8BA2E8BA2E8BALL)
  {
    v3 = v7;
  }

  if (v3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OMCostPie>>(a1, v3);
  }

  v9 = (4 * (v6 >> 2));
  *v9 = *a2;
  v9[1] = a2[1];
  v9[2] = a2[2];
  v9[3] = a2[3];
  v9[4] = a2[4];
  v9[5] = a2[5];
  v9[6] = a2[6];
  v9[7] = a2[7];
  v9[8] = a2[8];
  v9[9] = a2[9];
  v9[10] = a2[10];
  v10 = v9 - v6;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OMCostPie>,OMCostPie*>(a1, v4, v5, v9 - v6);
  v11 = v9 + 11;
  v12 = *a1;
  *a1 = v10;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OMCostPie>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x5D1745D1745D175)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OMCostPie>,OMCostPie*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (a2 != a3)
  {
    *a4 = *a2;
    *(a4 + 4) = *(a2 + 4);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 12) = *(a2 + 12);
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 20) = *(a2 + 20);
    *(a4 + 24) = *(a2 + 24);
    *(a4 + 28) = *(a2 + 28);
    *(a4 + 32) = *(a2 + 32);
    *(a4 + 36) = *(a2 + 36);
    result = *(a2 + 40);
    *(a4 + 40) = result;
    a2 += 44;
    a4 += 44;
  }

  return result;
}

char *std::vector<Vec3f>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Vec3f*>,std::__wrap_iter<Vec3f*>>(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = *(a1 + 8);
    v8 = *(a1 + 16);
    if ((0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 2)) >= a5)
    {
      v14 = v7 - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((v7 - a2) >> 2)) >= a5)
      {
        v21 = 3 * a5;
        std::vector<Vec3f>::__move_range(a1, a2, v7, a2 + 12 * a5);
        v22 = 0;
        v23 = &a3[v21];
        do
        {
          v24 = &v5[v22];
          *v24 = *a3;
          *(v24 + 1) = a3[1];
          *(v24 + 2) = a3[2];
          a3 += 3;
          v22 += 12;
        }

        while (a3 != v23);
      }

      else
      {
        v15 = (a3 + v14);
        v16 = *(a1 + 8);
        if ((a3 + v14) != a4)
        {
          v16 = *(a1 + 8);
          v17 = (a3 + v14);
          v18 = v16;
          do
          {
            *v18 = *v17;
            v18[1] = v17[1];
            v18[2] = v17[2];
            v17 += 3;
            v18 += 3;
            v16 += 3;
          }

          while (v17 != a4);
        }

        *(a1 + 8) = v16;
        if (v14 >= 1)
        {
          std::vector<Vec3f>::__move_range(a1, a2, v7, a2 + 12 * a5);
          v19 = 0;
          do
          {
            v20 = &v5[v19];
            *v20 = *a3;
            *(v20 + 1) = a3[1];
            *(v20 + 2) = a3[2];
            a3 += 3;
            v19 += 12;
          }

          while (a3 != v15);
        }
      }
    }

    else
    {
      v9 = *a1;
      v10 = a5 - 0x5555555555555555 * ((v7 - *a1) >> 2);
      if (v10 > 0x1555555555555555)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v11 = a2 - v9;
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2);
      if (2 * v12 > v10)
      {
        v10 = 2 * v12;
      }

      if (v12 >= 0xAAAAAAAAAAAAAAALL)
      {
        v13 = 0x1555555555555555;
      }

      else
      {
        v13 = v10;
      }

      v31 = a1;
      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<Vec3f>>(a1, v13);
      }

      v25 = (4 * (v11 >> 2));
      __p = 0;
      v28 = v25;
      v30 = 0;
      do
      {
        *v25 = *a3;
        v25[1] = a3[1];
        v25[2] = a3[2];
        v25 += 3;
        a3 += 3;
      }

      while (v25 != (4 * (v11 >> 2) + 12 * a5));
      v29 = 4 * (v11 >> 2) + 12 * a5;
      v5 = std::vector<Vec3f>::__swap_out_circular_buffer(a1, &__p, v5);
      if (v29 != v28)
      {
        v29 = v28 + (v29 - v28 - 12) % 0xCuLL;
      }

      if (__p)
      {
        operator delete(__p);
      }
    }
  }

  return v5;
}

void sub_25FF23834(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float std::vector<Vec3f>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  v6 = v4;
  while (v5 < a3)
  {
    *v6 = *v5;
    *(v6 + 4) = *(v5 + 4);
    result = *(v5 + 8);
    *(v6 + 8) = result;
    v5 += 12;
    v6 += 12;
  }

  *(a1 + 8) = v6;
  if (v4 != a4)
  {
    v8 = a4 - v4;
    v9 = (v4 - 4);
    v10 = (v9 + a2 - a4);
    do
    {
      *(v9 - 2) = *(v10 - 2);
      *(v9 - 1) = *(v10 - 1);
      v11 = *v10;
      v10 -= 3;
      result = v11;
      *v9 = v11;
      v9 -= 3;
      v8 += 12;
    }

    while (v8);
  }

  return result;
}

uint64_t std::vector<Vec3f>::__swap_out_circular_buffer(char **a1, void *a2, char *a3)
{
  v4 = a1[1];
  result = a2[1];
  v6 = a2[2];
  if (v4 != a3)
  {
    v7 = a3;
    v8 = a2[2];
    do
    {
      *v8 = *v7;
      v8[1] = *(v7 + 1);
      v8[2] = *(v7 + 2);
      v7 += 12;
      v8 += 3;
    }

    while (v7 != v4);
  }

  a2[2] = v6 + v4 - a3;
  v9 = *a1;
  v10 = (result + *a1 - a3);
  if (*a1 != a3)
  {
    v11 = *a1;
    v12 = (result + *a1 - a3);
    do
    {
      *v12 = *v11;
      v12[1] = *(v11 + 1);
      v12[2] = *(v11 + 2);
      v11 += 12;
      v12 += 3;
    }

    while (v11 != a3);
  }

  a2[1] = v10;
  v13 = *a1;
  *a1 = v10;
  a1[1] = v9;
  a2[1] = v13;
  v14 = a1[1];
  a1[1] = a2[2];
  a2[2] = v14;
  v15 = a1[2];
  a1[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

_DWORD *std::vector<OMVertex>::push_back[abi:ne200100](uint64_t *a1, _DWORD *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<OMVertex>::__emplace_back_slow_path<OMVertex>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v3[1] = a2[1];
    v3[2] = a2[2];
    v3[3] = a2[3];
    v3[4] = a2[4];
    v3[5] = a2[5];
    v3[6] = a2[6];
    v3[7] = a2[7];
    result = v3 + 8;
  }

  a1[1] = result;
  return result;
}

void *OMSpline::getCurveSamples(void *result, void *a2, int a3, int a4, double a5, __n128 a6)
{
  v6 = ((result[1] - *result) >> 5) - (a4 ^ 1);
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    a6.n128_u32[0] = 1.0;
    v11 = 1.0 / a3;
    do
    {
      result = OMSpline::getPartialCurveSamples(v9, a2, v10++, a3, v11, a6);
    }

    while (v6 != v10);
  }

  return result;
}

unint64_t OMSpline::getPartialCurveSamples(unint64_t result, void *a2, int a3, int a4, float a5, __n128 a6)
{
  v14 = *result;
  if (((*(result + 8) - *result) >> 5) - 1 == a3)
  {
    v15 = 0;
  }

  else
  {
    v15 = a3 + 1;
  }

  if (a4 >= 1)
  {
    v37[1] = v13;
    v37[2] = v12;
    v37[3] = v11;
    v37[4] = v10;
    v37[5] = v9;
    v37[6] = v8;
    v37[9] = v6;
    v37[10] = v7;
    v17 = a4;
    v19 = (v14 + 32 * a3);
    v20 = (v14 + 32 * v15);
    __asm { FMOV            V0.2S, #3.0 }

    v27 = v19[1];
    v26 = v19[2];
    v28 = vmul_f32(v27, _D0);
    v29 = vmul_f32(v26, _D0);
    v30 = vsub_f32(v29, v28);
    __asm { FMOV            V4.2S, #-6.0 }

    v32 = vmul_f32(*v20, _D0);
    v33 = vadd_f32(vadd_f32(v28, vmul_f32(v26, _D4)), v32);
    v34 = vadd_f32(vsub_f32(vsub_f32(v29, v27), v32), v20[1]);
    result = a2[1];
    a6.n128_u64[0] = 0;
    do
    {
      v35 = vadd_f32(v27, vmul_n_f32(vadd_f32(v30, vmul_n_f32(vadd_f32(v33, vmul_n_f32(v34, a6.n128_f32[0])), a6.n128_f32[0])), a6.n128_f32[0]));
      v37[0] = v35;
      if (result >= a2[2])
      {
        v36 = a6;
        result = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(a2, v37);
        a6 = v36;
      }

      else
      {
        *result = v35.i32[0];
        *(result + 4) = HIDWORD(v37[0]);
        result += 8;
      }

      a2[1] = result;
      a6.n128_f32[0] = a6.n128_f32[0] + a5;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t OMSpline::recomputeInternalBezier(uint64_t this)
{
  v1 = *this;
  v2 = *(this + 8) - *this;
  v3 = v2 >> 5;
  if (v2 >= 0x41 && v3 >= 1)
  {
    v5 = 0;
    v6 = (v3 - 1);
    v7 = *(this + 33);
    v8 = (v2 >> 5) & 0x7FFFFFFF;
    v9 = v1 + 2;
    v10 = vdup_n_s32(0x3F2AAAABu);
    v11 = vdup_n_s32(0x3EAAAAABu);
    do
    {
      v12 = v5;
      if (v5)
      {
        v12 = 1;
      }

      if (v7)
      {
        v13 = v5 - v12;
        if (v6 == v5)
        {
          v14 = v5;
        }

        else
        {
          v14 = v5 + 1;
        }
      }

      else
      {
        v13 = v5 - 1;
        if (!v5)
        {
          v13 = v6;
        }

        if (v6 == v5)
        {
          v14 = 0;
        }

        else
        {
          v14 = v5 + 1;
        }
      }

      v15 = v9[1];
      v16 = v1[4 * v13 + 3];
      v17 = vadd_f32(v16, vmul_f32(vsub_f32(v15, v16), v10));
      v9[-2] = v17;
      v18 = vadd_f32(v15, vmul_f32(vsub_f32(v1[4 * v14 + 3], v15), v11));
      *v9 = v18;
      if (v7 && (!v5 || v6 == v5))
      {
        *&v19 = v15;
        *(&v19 + 1) = v15;
        *v9[-2].f32 = v19;
        *v9 = v15;
      }

      else
      {
        v9[-1] = vadd_f32(v17, vmul_f32(vsub_f32(v18, v17), 0x3F0000003F000000));
      }

      ++v5;
      v9 += 4;
    }

    while (v8 != v5);
  }

  return this;
}

float OMSpline::move(OMSpline *this, int a2, float *a3, unsigned int a4)
{
  v5 = a2;
  v6 = *this;
  v7 = (*this + 32 * v5);
  v8 = v7[3];
  result = *a3 + v7[2];
  v7[2] = result;
  v10 = a3[1] + v8;
  v7[3] = v10;
  if (!a4)
  {
    *v7 = result;
    v7[1] = v10;
    v7[4] = result;
    v7[5] = v10;
    return result;
  }

  if (a4 > 2)
  {
    if (a4 != 3)
    {
      return result;
    }

    goto LABEL_11;
  }

  v12 = *(this + 1) - v6;
  if (v12 <= 0x40)
  {
LABEL_11:
    v17 = v7[1];
    *v7 = *a3 + *v7;
    v7[1] = a3[1] + v17;
    v18 = v7[5];
    v7[4] = *a3 + v7[4];
    result = a3[1] + v18;
    v7[5] = result;
    return result;
  }

  v13 = v12 >> 5;
  v14 = (v12 >> 5) - 1;
  if (a4 == 2)
  {
    if (!a2)
    {
      __p = 0;
      v43 = 0;
      v44 = 0;
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, v6);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, *this);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, *this);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 64));
      OMSpline::tangentsAuto(this, &__p, 0, 1, 2);
      OMSpline::tangentsAuto(this, &__p, 1, 2, 3);
      OMSpline::tangentsAuto(this, &__p, 2, 3, 4);
      v15 = __p;
      v25 = *this;
      *v25 = *(__p + 16);
      v25[1] = v15[17];
      v25[2] = v15[18];
      v25[3] = v15[19];
      v25[4] = v15[20];
      v25[5] = v15[21];
      v25[6] = v15[22];
      v25[7] = v15[23];
      v25[8] = v15[24];
      v25[9] = v15[25];
      v25[10] = v15[26];
      v25[11] = v15[27];
      v25[12] = v15[28];
      v25[13] = v15[29];
      v25[14] = v15[30];
      v25[15] = v15[31];
      v25[16] = v15[32];
      v25[17] = v15[33];
      v25[18] = v15[34];
      v25[19] = v15[35];
      v25[20] = v15[36];
      v25[21] = v15[37];
      v25[22] = v15[38];
      v25[23] = v15[39];
      *v25 = *&v25[8 * v5 + 2];
      goto LABEL_45;
    }

    if (a2 == 1 && (v12 >> 5) == 3)
    {
      __p = 0;
      v43 = 0;
      v44 = 0;
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, v6);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, *this);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 64));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 64));
      OMSpline::tangentsAuto(this, &__p, 0, 1, 2);
      OMSpline::tangentsAuto(this, &__p, 1, 2, 3);
      OMSpline::tangentsAuto(this, &__p, 2, 3, 4);
      v15 = __p;
      v16 = *this;
      *v16 = *(__p + 8);
      v16[1] = v15[9];
      v16[2] = v15[10];
      v16[3] = v15[11];
      v16[4] = v15[12];
      v16[5] = v15[13];
      v16[6] = v15[14];
      v16[7] = v15[15];
      v16[8] = v15[16];
      v16[9] = v15[17];
      v16[10] = v15[18];
      v16[11] = v15[19];
      v16[12] = v15[20];
      v16[13] = v15[21];
      v16[14] = v15[22];
      v16[15] = v15[23];
      v16[16] = v15[24];
      v16[17] = v15[25];
      v16[18] = v15[26];
      v16[19] = v15[27];
      v16[20] = v15[28];
      v16[21] = v15[29];
      v16[22] = v15[30];
      v16[23] = v15[31];
LABEL_45:
      v43 = v15;
      operator delete(v15);
      return result;
    }

    if (a2 == 1)
    {
      __p = 0;
      v43 = 0;
      v44 = 0;
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, v6);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, *this);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 64));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 96));
      OMSpline::tangentsAuto(this, &__p, 0, 1, 2);
      OMSpline::tangentsAuto(this, &__p, 1, 2, 3);
      OMSpline::tangentsAuto(this, &__p, 2, 3, 4);
      v15 = __p;
      v30 = *this;
      *v30 = *(__p + 8);
      v30[1] = v15[9];
      v30[2] = v15[10];
      v30[3] = v15[11];
      v30[4] = v15[12];
      v30[5] = v15[13];
      v30[6] = v15[14];
      v30[7] = v15[15];
      v30[8] = v15[16];
      v30[9] = v15[17];
      v30[10] = v15[18];
      v30[11] = v15[19];
      v30[12] = v15[20];
      v30[13] = v15[21];
      v30[14] = v15[22];
      v30[15] = v15[23];
      v30[16] = v15[24];
      v30[17] = v15[25];
      v30[18] = v15[26];
      v30[19] = v15[27];
      v30[20] = v15[28];
      v30[21] = v15[29];
      v30[22] = v15[30];
      v30[23] = v15[31];
      v30[24] = v15[32];
      v30[25] = v15[33];
      v30[26] = v15[34];
      v30[27] = v15[35];
      v30[28] = v15[36];
      v30[29] = v15[37];
      v30[30] = v15[38];
      v30[31] = v15[39];
      goto LABEL_45;
    }

    if (v14 == a2)
    {
      __p = 0;
      v43 = 0;
      v44 = 0;
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, &v6[8 * v5 - 16]);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * (v5 - 1)));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * v5));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * v5));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * v5));
      OMSpline::tangentsAuto(this, &__p, 0, 1, 2);
      OMSpline::tangentsAuto(this, &__p, 1, 2, 3);
      OMSpline::tangentsAuto(this, &__p, 2, 3, 4);
      v15 = __p;
      v31 = *this;
      v32 = (*this + 32 * (v5 - 2));
      *v32 = *__p;
      v32[1] = v15[1];
      v32[2] = v15[2];
      v32[3] = v15[3];
      v32[4] = v15[4];
      v32[5] = v15[5];
      v32[6] = v15[6];
      v32[7] = v15[7];
      v33 = (v31 + 32 * (v5 - 1));
      *v33 = v15[8];
      v33[1] = v15[9];
      v33[2] = v15[10];
      v33[3] = v15[11];
      v33[4] = v15[12];
      v33[5] = v15[13];
      v33[6] = v15[14];
      v33[7] = v15[15];
      v34 = (v31 + 32 * v5);
      *v34 = v15[16];
      v34[1] = v15[17];
      v35 = v15[18];
      v34[2] = v35;
      v36 = v15[19];
      v34[3] = v36;
      v34[4] = v15[20];
      v34[5] = v15[21];
      v34[6] = v15[22];
      v34[7] = v15[23];
      v34[4] = v35;
      v34[5] = v36;
      goto LABEL_45;
    }

    if (v13 - 2 == a2)
    {
      __p = 0;
      v43 = 0;
      v44 = 0;
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, &v6[8 * v5 - 16]);
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * (v5 - 1)));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * v5));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * v14));
      std::vector<OMVertex>::push_back[abi:ne200100](&__p, (*this + 32 * v14));
      OMSpline::tangentsAuto(this, &__p, 0, 1, 2);
      OMSpline::tangentsAuto(this, &__p, 1, 2, 3);
      OMSpline::tangentsAuto(this, &__p, 2, 3, 4);
      v15 = __p;
      v37 = *this;
      v38 = (*this + 32 * (v5 - 2));
      *v38 = *__p;
      v38[1] = v15[1];
      v38[2] = v15[2];
      v38[3] = v15[3];
      v38[4] = v15[4];
      v38[5] = v15[5];
      v38[6] = v15[6];
      v38[7] = v15[7];
      v39 = (v37 + 32 * (v5 - 1));
      *v39 = v15[8];
      v39[1] = v15[9];
      v39[2] = v15[10];
      v39[3] = v15[11];
      v39[4] = v15[12];
      v39[5] = v15[13];
      v39[6] = v15[14];
      v39[7] = v15[15];
      v40 = (v37 + 32 * v5);
      *v40 = v15[16];
      v40[1] = v15[17];
      v40[2] = v15[18];
      v40[3] = v15[19];
      v40[4] = v15[20];
      v40[5] = v15[21];
      v40[6] = v15[22];
      v40[7] = v15[23];
      v41 = (v37 + 32 * v14);
      *v41 = v15[24];
      v41[1] = v15[25];
      v41[2] = v15[26];
      v41[3] = v15[27];
      v41[4] = v15[28];
      v41[5] = v15[29];
      v41[6] = v15[30];
      v41[7] = v15[31];
      goto LABEL_45;
    }

    OMSpline::tangentsAuto(this, a2 - 2, a2 - 1, a2);
    OMSpline::tangentsAuto(this, a2 - 1, a2, a2 + 1);
    v28 = a2 + 1;
    v29 = a2 + 2;
    v26 = this;
    v27 = a2;
  }

  else
  {
    if (a2 == 1)
    {
      v22 = 0;
      v24 = 3;
      v23 = 2;
    }

    else
    {
      v19 = v13 - 2;
      v20 = a2 + 2;
      if (v19 == a2)
      {
        v21 = (v12 >> 5) - 1;
      }

      else
      {
        v21 = a2 + 1;
      }

      if (v19 == a2)
      {
        v20 = 0;
      }

      if (v14 == a2)
      {
        v21 = 0;
        v20 = 1;
      }

      if (a2)
      {
        v22 = a2 - 1;
      }

      else
      {
        v22 = (v12 >> 5) - 1;
      }

      if (a2)
      {
        v23 = v21;
      }

      else
      {
        v23 = 1;
      }

      if (a2)
      {
        v24 = v20;
      }

      else
      {
        v24 = 2;
      }

      if (a2)
      {
        v14 = a2 - 2;
      }

      else
      {
        v14 = v19;
      }
    }

    OMSpline::tangentsAuto(this, v14, v22, a2);
    OMSpline::tangentsAuto(this, v22, a2, v23);
    v26 = this;
    v27 = a2;
    v28 = v23;
    v29 = v24;
  }

  return OMSpline::tangentsAuto(v26, v27, v28, v29);
}

void sub_25FF246B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

float OMSpline::tangentsAuto(uint64_t a1, void *a2, int a3, int a4, int a5)
{
  v5 = (*a2 + 32 * a4);
  v6 = *a2 + 32 * a3;
  result = v5[2];
  v8 = v5[3];
  v9 = *(v6 + 8);
  v10 = *(v6 + 12);
  v11 = *(a1 + 28);
  v12 = *a2 + 32 * a5;
  v13 = *(v12 + 8);
  v14 = *(v12 + 12);
  v15 = v13 - v9;
  v16 = v14 - v10;
  v17 = sqrtf((v15 * v15) + (v16 * v16));
  if (v17 != 0.0)
  {
    v18 = sqrtf(((result - v9) * (result - v9)) + ((v8 - v10) * (v8 - v10))) / v11;
    if (v18 != 0.0)
    {
      *v5 = result - ((v15 * v18) / v17);
      v5[1] = v8 - ((v16 * v18) / v17);
    }
  }

  if (v17 != 0.0)
  {
    v19 = sqrtf(((result - v13) * (result - v13)) + ((v8 - v14) * (v8 - v14))) / v11;
    if (v19 != 0.0)
    {
      result = result + ((v15 * v19) / v17);
      v5[4] = result;
      v5[5] = v8 + ((v16 * v19) / v17);
    }
  }

  return result;
}

float OMSpline::tangentsAuto(OMSpline *this, int a2, int a3, int a4)
{
  v4 = (*this + 32 * a3);
  v5 = *this + 32 * a2;
  result = v4[2];
  v7 = v4[3];
  v8 = *(v5 + 8);
  v9 = *(v5 + 12);
  v10 = *(this + 7);
  v11 = *this + 32 * a4;
  v12 = *(v11 + 8);
  v13 = *(v11 + 12);
  v14 = v12 - v8;
  v15 = v13 - v9;
  v16 = sqrtf((v14 * v14) + (v15 * v15));
  if (v16 != 0.0)
  {
    v17 = sqrtf(((result - v8) * (result - v8)) + ((v7 - v9) * (v7 - v9))) / v10;
    if (v17 != 0.0)
    {
      *v4 = result - ((v14 * v17) / v16);
      v4[1] = v7 - ((v15 * v17) / v16);
    }
  }

  if (v16 != 0.0)
  {
    v18 = sqrtf(((result - v12) * (result - v12)) + ((v7 - v13) * (v7 - v13))) / v10;
    if (v18 != 0.0)
    {
      result = result + ((v14 * v18) / v16);
      v4[4] = result;
      v4[5] = v7 + ((v15 * v18) / v16);
    }
  }

  return result;
}

void OMSpline::addVertexAtEnd(float32x2_t **this, float32x2_t *a2)
{
  v3 = *(this + 6);
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = (this[1] - *this) >> 5;
      if (v4 < 2)
      {
        *&v7 = *a2;
        if (v4 == 1)
        {
          v8 = vmul_f32(vsub_f32(*a2, (*this)[1]), vdup_n_s32(0x3DCCCCCDu));
          *&v11 = vsub_f32(*a2, v8);
          *(&v11 + 1) = v7;
          v12 = vadd_f32(*&v7, v8);
          std::vector<OMVertex>::push_back[abi:ne200100](this, &v11);
          v9 = *this;
          v10 = (*this)[1];
          v9[2] = vadd_f32(v8, v10);
          *v9 = vsub_f32(v10, v8);
        }

        else
        {
          v12 = *a2;
          *(&v7 + 1) = v7;
          v11 = v7;
          std::vector<OMVertex>::push_back[abi:ne200100](this, &v11);
        }
      }

      else
      {
        *&v5 = *a2;
        v12 = v5;
        *(&v5 + 1) = v5;
        v11 = v5;
        std::vector<OMVertex>::push_back[abi:ne200100](this, &v11);
        if (*(this + 32) == 1)
        {
          v6 = ((this[1] - *this) >> 5) - 1;
          *&v11 = 0;
          OMSpline::move(this, v6, &v11, 2u);
        }
      }
    }
  }

  else
  {
    v13 = *a2;
    std::vector<OMVertex>::push_back[abi:ne200100](this, &v11);
    OMSpline::recomputeInternalBezier(this);
  }
}

void OMSpline::computeLinearArray(void *a1, uint64_t *a2, double a3, __n128 a4, float a5, float a6, float a7)
{
  v10 = a4.n128_f32[0];
  v11 = *&a3;
  v14 = *a2;
  v13 = a2[1];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  OMSpline::getCurveSamples(a1, &v33, 64, 0, a3, a4);
  v15 = v33;
  if (v33 != v34)
  {
    v16 = (v13 - v14) >> 2;
    if (v16 > 0)
    {
      v17 = 0;
      v18 = 0;
      v19 = (v10 - v11) * (1.0 / (v16 - 1));
      v20 = *v33;
      v21 = v33[1];
      v22 = v34 - 1;
      v23 = ((v34 - v33) >> 3);
      v24 = *a2;
      v25 = v11;
      v26 = v21;
      do
      {
        v27 = (v19 * v17) + v11;
        if (v27 >= v20)
        {
          v28 = &v15[2 * v18 + 3];
          v29 = v18 + 1;
          do
          {
            v21 = v26;
            v25 = v20;
            v30 = v22;
            v20 = v10 + 0.0001;
            if (v29 < v23)
            {
              v20 = *(v28 - 4);
              v30 = v28;
            }

            v26 = *v30;
            ++v18;
            v28 += 8;
            ++v29;
          }

          while (v27 >= v20);
        }

        v31 = v21 + (((v27 - v25) * (v26 - v21)) / (v20 - v25));
        v32 = a5;
        if (v31 >= a5)
        {
          v32 = a6;
          if (v31 <= a6)
          {
            v32 = v31;
          }
        }

        *(v24 + 4 * v17++) = v32 * a7;
      }

      while (v17 != (((v13 - v14) >> 2) & 0x7FFFFFFF));
    }
  }

  if (v15)
  {
    v34 = v15;
    operator delete(v15);
  }
}

void sub_25FF24B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *std::vector<OMVertex>::__emplace_back_slow_path<OMVertex>(uint64_t *a1, _DWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 5;
  v6 = v5 + 1;
  if ((v5 + 1) >> 59)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v8 = a1[2] - v3;
  if (v8 >> 4 > v6)
  {
    v6 = v8 >> 4;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OMVertex>>(a1, v6);
  }

  v9 = (v4 - *a1) >> 5;
  v10 = (32 * v5);
  *v10 = *a2;
  v10[1] = a2[1];
  v10[2] = a2[2];
  v10[3] = a2[3];
  v10[4] = a2[4];
  v10[5] = a2[5];
  v10[6] = a2[6];
  v10[7] = a2[7];
  v11 = 32 * v5 - 32 * v9;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OMVertex>,OMVertex*>(a1, v3, v4, &v10[-8 * v9]);
  v12 = *a1;
  *a1 = v11;
  a1[1] = (v10 + 8);
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v10 + 8;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OMVertex>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

float std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<OMVertex>,OMVertex*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (a2 != a3)
  {
    *a4 = *a2;
    *(a4 + 4) = *(a2 + 4);
    *(a4 + 8) = *(a2 + 8);
    *(a4 + 12) = *(a2 + 12);
    *(a4 + 16) = *(a2 + 16);
    *(a4 + 20) = *(a2 + 20);
    *(a4 + 24) = *(a2 + 24);
    result = *(a2 + 28);
    *(a4 + 28) = result;
    a2 += 32;
    a4 += 32;
  }

  return result;
}

uint64_t LiHeEquirectProject::GetDOD(float32x2_t *this, HGRenderer *a2, int a3, HGRect a4)
{
  v25 = *MEMORY[0x277D85DE8];
  if (this[53].i8[0] != 1)
  {
    return 0x8000000080000000;
  }

  v4 = *&a4.var0;
  (*(*this + 104))(this, 6, v18);
  v6 = v18[0];
  (*(*this + 104))(this, 7, v18);
  v7 = vcvtq_f64_f32(*&v18[0]);
  __asm { FMOV            V5.2D, #-0.5 }

  v13 = vcvtq_f64_f32(this[52]);
  v16 = vmulq_f64(v13, _Q5);
  v14 = vcvtq_f64_f32(*(v18 + 8));
  v17 = v13;
  v18[1] = vcvtq_f64_f32(*(&v6 + 8));
  v18[0] = vcvtq_f64_f32(*&v6);
  v18[2] = v7;
  v18[3] = v14;
  v19 = 0;
  v20 = 0;
  v21 = 0x3FF0000000000000;
  v22 = 0u;
  v23 = 0u;
  v24 = 0x3FF0000000000000;
  if (PCMatrix44Tmpl<double>::invert(v18, v18, 0.0))
  {
    PCMatrix44Tmpl<double>::transformRect<double>(v18, v16.f64, &v16);
    return HGRectMake4i(vcvtmd_s64_f64(v16.f64[0]), vcvtmd_s64_f64(v16.f64[1]), vcvtpd_s64_f64(v16.f64[0] + v17.f64[0]), vcvtpd_s64_f64(v16.f64[1] + v17.f64[1]));
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unable to invert image to pixel space transform in LiHeEquirectProject::GetDOD()\n", 81);
  }

  return v4;
}

uint64_t LiHeEquirectProject::GetROI(LiHeEquirectProject *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v72 = *MEMORY[0x277D85DE8];
  (*(*this + 104))(this, 0, v65);
  v45 = *v65;
  (*(*this + 104))(this, 1, v65);
  v46 = *v65;
  (*(*this + 104))(this, 2, v65);
  v7 = *v65;
  (*(*this + 104))(this, 3, v65);
  v63 = *&v65[0];
  v64 = DWORD2(v65[0]);
  (*(*this + 104))(this, 4, v65);
  v61 = *&v65[0];
  v62 = DWORD2(v65[0]);
  (*(*this + 104))(this, 5, v65);
  v59 = *&v65[0];
  v60 = DWORD2(v65[0]);
  (*(*this + 104))(this, 6, v65);
  v58 = v65[0];
  (*(*this + 104))(this, 7, v65);
  v57 = v65[0];
  (*(*this + 104))(this, 8, v65);
  v8 = v65[0];
  v56 = v65[0];
  (*(*this + 104))(this, 9, v65);
  v9 = v65[0];
  v55 = v65[0];
  if ((*(this + 424) & 1) == 0)
  {
    __asm { FMOV            V3.2D, #-0.5 }

    v52 = vmulq_f64(vcvtq_f64_f32(__PAIR64__(LODWORD(v46), LODWORD(v45))), _Q3);
    v53 = v45;
    v54 = v46;
    v65[0] = vcvtq_f64_f32(*&v8);
    v65[1] = vcvtq_f64_f32(*(&v8 + 8));
    v65[2] = vcvtq_f64_f32(*&v9);
    v65[3] = vcvtq_f64_f32(*(&v9 + 8));
    v66 = 0;
    v67 = 0;
    v69 = 0u;
    v70 = 0u;
    v68 = 0x3FF0000000000000;
    v71 = 0x3FF0000000000000;
    if (PCMatrix44Tmpl<double>::transformRect<double>(v65, v52.f64, &v52))
    {
      return HGRectMake4i(vcvtmd_s64_f64(v52.f64[0]), vcvtmd_s64_f64(v52.f64[1]), vcvtpd_s64_f64(v52.f64[0] + v53), vcvtpd_s64_f64(v52.f64[1] + v54));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unable to transform rect. Using default ROI.\n", 45);
    return HGRectMake4i((floor(v45 * -0.5) + -1.0), (floor(v46 * -0.5) + -2.0), (ceil(v45 * 0.5) + 1.0), (ceil(v46 * 0.5) + 1.0));
  }

  v65[0] = xmmword_260343AA0;
  if (SHIDWORD(v5) <= SHIDWORD(v4))
  {
    v10 = HIDWORD(v5);
    do
    {
      getROIPoint(&v63, &v61, &v59, &v58, &v57, &v56, &v55, &v52, v5, v10, v45, v46, v7);
      PCRect<int>::operator|=(v65, &v52);
      getROIPoint(&v63, &v61, &v59, &v58, &v57, &v56, &v55, v51, v4, v10, v45, v46, v7);
      PCRect<int>::operator|=(v65, v51);
      LODWORD(v10) = v10 + 1;
    }

    while (HIDWORD(v4) + 1 != v10);
  }

  v11 = SHIDWORD(v5);
  v12 = SHIDWORD(v4);
  if (v5 <= v4)
  {
    v13 = v5;
    do
    {
      getROIPoint(&v63, &v61, &v59, &v58, &v57, &v56, &v55, &v52, v13, v11, v45, v46, v7);
      PCRect<int>::operator|=(v65, &v52);
      getROIPoint(&v63, &v61, &v59, &v58, &v57, &v56, &v55, v51, v13, v12, v45, v46, v7);
      PCRect<int>::operator|=(v65, v51);
      ++v13;
    }

    while (v4 + 1 != v13);
  }

  getLatLong(&v63, &v61, &v59, &v58, &v57, &v52, v5, v11, v7);
  getLatLong(&v63, &v61, &v59, &v58, &v57, v51, v4, v11, v7);
  getLatLong(&v63, &v61, &v59, &v58, &v57, &v49, v4, v12, v7);
  getLatLong(&v63, &v61, &v59, &v58, &v57, &v47, v5, v12, v7);
  v14 = *v51[0].i32 - *v52.f64;
  v15 = (*v51[0].i32 - *v52.f64);
  if (v15 <= 3.14159265)
  {
    if (v15 >= -3.14159265)
    {
      goto LABEL_16;
    }

    v16 = 6.28318531;
  }

  else
  {
    v16 = -6.28318531;
  }

  v14 = v15 + v16;
LABEL_16:
  v23 = v49 - *v51[0].i32;
  v24 = (v49 - *v51[0].i32);
  if (v24 <= 3.14159265)
  {
    if (v24 >= -3.14159265)
    {
      goto LABEL_21;
    }

    v25 = 6.28318531;
  }

  else
  {
    v25 = -6.28318531;
  }

  v23 = v24 + v25;
LABEL_21:
  v26 = v47 - v49;
  v27 = (v47 - v49);
  if (v27 <= 3.14159265)
  {
    if (v27 >= -3.14159265)
    {
      goto LABEL_26;
    }

    v28 = 6.28318531;
  }

  else
  {
    v28 = -6.28318531;
  }

  v26 = v27 + v28;
LABEL_26:
  v29 = *v52.f64 - v47;
  v30 = (*v52.f64 - v47);
  if (v30 > 3.14159265)
  {
    v31 = -6.28318531;
LABEL_30:
    v29 = v30 + v31;
    goto LABEL_31;
  }

  if (v30 < -3.14159265)
  {
    v31 = 6.28318531;
    goto LABEL_30;
  }

LABEL_31:
  if (fabsf(((v14 + v23) + v26) + v29) > 3.14159265)
  {
    v32 = *(v52.f64 + 1);
    if (*(v52.f64 + 1) >= *&v51[0].i32[1])
    {
      v33 = *(v52.f64 + 1);
    }

    else
    {
      v33 = *&v51[0].i32[1];
    }

    if (v33 < v50)
    {
      v33 = v50;
    }

    if (v33 < v48)
    {
      v33 = v48;
    }

    if (*&v51[0].i32[1] < *(v52.f64 + 1))
    {
      v32 = *&v51[0].i32[1];
    }

    if (v50 < v32)
    {
      v32 = v50;
    }

    if (v48 < v32)
    {
      v32 = v48;
    }

    if (3.14159265 - v33 <= v32)
    {
      HIDWORD(v65[0]) += DWORD1(v65[0]) + 1;
      DWORD1(v65[0]) = -1;
    }

    else
    {
      v34 = vcvtps_s32_f32(v46);
      if (HIDWORD(v65[0]) + DWORD1(v65[0]) > v34)
      {
        v34 = HIDWORD(v65[0]) + DWORD1(v65[0]);
      }

      HIDWORD(v65[0]) = v34 - DWORD1(v65[0]) + 1;
    }
  }

  if (*(this + 424))
  {
    v35 = v48 < 4.0;
    v36 = v46 + -4.0;
    if (v48 > (v46 + -4.0))
    {
      v35 = 1;
    }

    v37 = v50 < 4.0;
    if (v50 > v36)
    {
      v37 = 1;
    }

    v38 = *&v51[0].i32[1] < 4.0;
    if (*&v51[0].i32[1] > v36)
    {
      v38 = 1;
    }

    v39 = *(v52.f64 + 1) < 4.0;
    if (*(v52.f64 + 1) > v36)
    {
      v39 = 1;
    }

    v40 = v37 + v35 + v38 + v39;
    v41 = v65[0];
    v42 = DWORD2(v65[0]);
    if (v40 >= 2)
    {
      v43 = DWORD2(v65[0]) + LODWORD(v65[0]);
      v44 = vcvtps_s32_f32(v45);
      v41 = -1;
      if (DWORD2(v65[0]) + LODWORD(v65[0]) <= v44)
      {
        v43 = v44;
      }

      v42 = v43 + 2;
      LODWORD(v65[0]) = -1;
      DWORD2(v65[0]) = v42;
    }
  }

  else
  {
    v41 = v65[0];
    v42 = DWORD2(v65[0]);
  }

  return HGRectMake4i((v41 + -5.0), (SDWORD1(v65[0]) + -5.0), ((v42 + v41) + 5.0), ((HIDWORD(v65[0]) + DWORD1(v65[0])) + 5.0));
}

int32x2_t *getROIPoint@<X0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X3>, float *a5@<X4>, float *a6@<X5>, float *a7@<X6>, int32x2_t *a8@<X8>, float a9@<S0>, float a10@<S1>, float a11@<S2>, float a12@<S3>, float a13@<S4>)
{
  getLatLong(a1, a2, a3, a4, a5, v48, a9, a10, a13);
  v18 = (v48[0] * a11) / 6.28318531;
  v19 = a12 * 0.5 + (v48[1] * a12) / -3.14159265;
  v20 = a11 * 0.5;
  v21 = fmodf((a11 * 0.5) + ((floorf(v18 + -0.5) + 0.5) + -0.5), a11);
  if (v21 < 0.0)
  {
    v21 = v21 + a11;
  }

  v22 = (v21 + 0.5) - v20;
  v23 = fmodf(v20 + ((v22 + 1.0) + -0.5), a11);
  if (v23 < 0.0)
  {
    v23 = v23 + a11;
  }

  v24 = (v23 + 0.5) - v20;
  v25 = floorf(v19 + -0.5) + 0.5;
  v26 = 0.5 - (a12 * 0.5);
  v27 = (a12 * 0.5) + -0.5;
  if (v27 >= v25)
  {
    v28 = v25;
  }

  else
  {
    v28 = (a12 * 0.5) + -0.5;
  }

  if (v26 <= v25)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0.5 - (a12 * 0.5);
  }

  if (v27 >= (v29 + 1.0))
  {
    v27 = v29 + 1.0;
  }

  if (v26 > (v29 + 1.0))
  {
    v27 = 0.5 - (a12 * 0.5);
  }

  v30 = a6[1];
  v31 = v22 * *a6;
  v32 = v29 * v30;
  v33 = a6[3];
  v34 = v33 + (v31 + (v29 * v30));
  v35 = a7[1];
  v36 = v22 * *a7;
  v37 = v29 * v35;
  v38 = a7[3];
  v39 = v30 * v27;
  v40 = v27 * v35;
  v41 = *a6 * v24;
  v42 = *a7 * v24;
  v47.f32[0] = v34;
  v47.f32[1] = v38 + (v36 + v37);
  v46.f32[0] = v33 + (v31 + v39);
  v46.f32[1] = v38 + (v36 + v40);
  v45.f32[0] = v33 + (v32 + v41);
  v45.f32[1] = v38 + (v37 + v42);
  v44.f32[0] = v33 + (v39 + v41);
  v44.f32[1] = v38 + (v40 + v42);
  *a8->i8 = xmmword_260343AA0;
  addToRect(&v47, a8);
  addToRect(&v46, a8);
  addToRect(&v45, a8);
  return addToRect(&v44, a8);
}

void getLatLong(float *a1@<X0>, float *a2@<X1>, float *a3@<X2>, float *a4@<X3>, float *a5@<X4>, float *a6@<X8>, float a7@<S0>, float a8@<S1>, float a9@<S2>)
{
  v9 = a9;
  v11 = a4[3] + (a4[2] + ((*a4 * a7) + (a4[1] * a8)));
  v12 = a5[3] + (a5[2] + ((*a5 * a7) + (a5[1] * a8)));
  v13 = sqrtf((v9 * v9) + ((v11 * v11) + (v12 * v12)));
  if (fabsf(v13) >= 0.00001)
  {
    v11 = v11 / v13;
    v12 = v12 / v13;
    v9 = a9 / v13;
  }

  v14 = ((v11 * *a1) + (v12 * a1[1])) + (v9 * a1[2]);
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = ((v11 * *a3) + (v12 * a3[1])) + (v9 * a3[2]);
  if (fabsf(v18) >= 0.00001)
  {
    v19 = atan2f(v14, v18);
  }

  else
  {
    v19 = flt_26084A810[v14 < 0.0];
  }

  v20 = acosf(((v11 * v15) + (v12 * v16)) + (v9 * v17));
  *a6 = v19;
  a6[1] = v20;
}

void LiHeEquirectProject::~LiHeEquirectProject(HGNode *this)
{
  LiHgcEquirectProject::~LiHgcEquirectProject(this);

  HGObject::operator delete(v1);
}

int32x2_t *addToRect(float32x2_t *a1, int32x2_t *a2)
{
  v5 = vcvt_s32_f32(vrndm_f32(*a1));
  PCRect<int>::operator|=(a2, &v5);
  v5 = vcvt_s32_f32(vrndp_f32(*a1));
  return PCRect<int>::operator|=(a2, &v5);
}

int32x2_t *PCRect<int>::operator|=(int32x2_t *result, int32x2_t *a2)
{
  v2 = result[1].i32[0];
  if (v2 < 0 || (v3 = result[1].i32[1], v3 < 0))
  {
    v5 = 0;
    v4 = *a2;
  }

  else
  {
    v4 = vmin_s32(*result, *a2);
    v5 = vsub_s32(vmax_s32(vadd_s32(__PAIR64__(v3, v2), *result), *a2), v4);
  }

  *result = v4;
  result[1] = v5;
  return result;
}

__n128 OMPie::moveAll(OMPie *this, const Vec2f *a2)
{
  v3 = *(this + 5);
  if (*(this + 8))
  {
    result.n128_u32[0] = *(v3 + 4);
    v6 = *(v3 + 16);
    v5 = *(v3 + 20);
    v8 = *(v3 + 8);
    v7 = *(v3 + 12);
    v9 = a2->var0[0] + *v3;
LABEL_3:
    *v3 = v9;
    *(v3 + 4) = a2->var0[1] + result.n128_f32[0];
    *(v3 + 16) = a2->var0[0] + v6;
    *(v3 + 20) = a2->var0[1] + v5;
    *(v3 + 8) = a2->var0[0] + v8;
    *(v3 + 12) = a2->var0[1] + v7;
    if (OMPie::isQuadActive(this))
    {
      v10 = *(v3 + 36);
      *(v3 + 32) = a2->var0[0] + *(v3 + 32);
      *(v3 + 36) = a2->var0[1] + v10;
      v11 = *(v3 + 28);
      *(v3 + 24) = a2->var0[0] + *(v3 + 24);
      result.n128_f32[0] = a2->var0[1] + v11;
      *(v3 + 28) = result.n128_u32[0];
    }

    else
    {
      result.n128_u64[0] = *(v3 + 8);
      result.n128_u64[1] = result.n128_u64[0];
      *(v3 + 24) = result;
    }

    return result;
  }

  result.n128_u32[0] = *(v3 + 4);
  v12 = a2->var0[0];
  v13 = a2->var0[1];
  v9 = *v3 + a2->var0[0];
  if (sqrtf((v9 * v9) + ((result.n128_f32[0] + v13) * (result.n128_f32[0] + v13))) <= 1.0)
  {
    v8 = *(v3 + 8);
    v7 = *(v3 + 12);
    if (sqrtf(((v8 + v12) * (v8 + v12)) + ((v7 + v13) * (v7 + v13))) <= 1.0)
    {
      v6 = *(v3 + 16);
      v5 = *(v3 + 20);
      if (sqrtf(((v6 + v12) * (v6 + v12)) + ((v5 + v13) * (v5 + v13))) <= 1.0)
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

BOOL OMPie::isQuadActive(OMPie *this)
{
  v3 = *(this + 5);
  v5 = *(v3 + 8);
  v4 = *(v3 + 12);
  result = 0;
  if (sqrtf((v5 * v5) + (v4 * v4)) < 0.00002)
  {
    v6 = *(v3 + 24);
    v7 = *(v3 + 28);
    v8 = v5 == v6 && v4 == v7;
    if (!v8 || v5 != *(v3 + 32) || v4 != *(v3 + 36))
    {
      v13 = v1;
      v14 = v2;
      v12[0] = v6;
      v12[1] = v7;
      v12[2] = *v3;
      v12[3] = *(v3 + 4);
      *&v9 = *(v3 + 32);
      *(&v9 + 1) = *(v3 + 16);
      v11 = v9;
      if (!OMUtil::findIntersectionOfLineSegmentExclusive(v12, &v11))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t OMPie::moveAroundArc(OMPie *this, float32x2_t *a2, Vec2f *a3)
{
  v5 = *(*(this + 5) + 8);
  v6 = v5.f32[1];
  v29 = v5;
  if (v5.f32[0] == 0.0 && v5.f32[1] == 0.0)
  {
    v7 = vsub_f32(*a2, v5);
    v30 = 1065353216;
    v31 = v7;
    OMUtil::angle2PI(&v31, &v30, a3);
    v9 = __sincosf_stret(v8);
    result = 0;
    v11 = sqrtf(((a3->var0[0] - v29.f32[0]) * (a3->var0[0] - v29.f32[0])) + ((a3->var0[1] - v6) * (a3->var0[1] - v6)));
    v12 = v29.f32[0] + (v9.__cosval * v11);
    v13 = v6 - (v9.__sinval * v11);
  }

  else
  {
    v14 = vsub_f32(*a2, v5);
    v30 = vsub_f32(0, v5);
    v31 = v14;
    OMUtil::angle2PI(&v31, &v30, a3);
    v16 = v15;
    v17 = vdup_lane_s32(v29, 0);
    v17.i32[0] = LODWORD(a3->var0[0]);
    v18.i32[1] = v29.i32[1];
    v18.i32[0] = LODWORD(a3->var0[1]);
    v19 = vsqrt_f32(vadd_f32(vmul_f32(v17, v17), vmul_f32(v18, v18)));
    v27 = v19.f32[1];
    v28 = vmul_f32(v19, v19);
    v20 = vmuls_lane_f32(cosf(v16 + v16), v28, 1) + v28.f32[0];
    v21 = __sincosf_stret(v16);
    v22 = sqrtf(v20 + (((v27 + v27) * v21.__cosval) * sqrtf(v28.f32[0] - vmuls_lane_f32(v21.__sinval * v21.__sinval, v28, 1))));
    v23 = vsub_f32(*a2, v29);
    v30 = 1065353216;
    v31 = v23;
    OMUtil::angle2PI(&v31, &v30, v24);
    v26 = __sincosf_stret(v25);
    v12 = v29.f32[0] + (v22 * v26.__cosval);
    v13 = v6 - (v22 * v26.__sinval);
    result = 0;
  }

  a3->var0[0] = v12;
  a3->var0[1] = v13;
  return result;
}

void OMPie::computeArc(OMPie *this, uint64_t a2, const Vec2f *a3)
{
  OMPie::computeArcIn(this, a2, a3);

  OMPie::computeArcOut(this, v4, v5);
}

void OMPie::getArcIn(OMPie *this@<X0>, float a2@<S0>, float *a3@<X8>)
{
  if (!OMPie::isQuadActive(this))
  {
    goto LABEL_7;
  }

  v6 = *(this + 8);
  if (v6 == 1)
  {
    v16 = *(this + 4);
    v8 = 1.0 - a2;
    if (v16 != 0.0)
    {
      v17 = *(this + 5);
      if (v17 != 0.0)
      {
        v18 = *(this + 6) + (*(this + 7) * a2);
        v19 = (v8 * v16) + (v17 * a2);
        v20 = __sincosf_stret(v18);
        v21 = *(this + 5);
        v22 = *(v21 + 12);
        *a3 = *(v21 + 8) + (v19 * v20.__cosval);
        v14 = (v19 * v20.__sinval) + v22;
        goto LABEL_9;
      }
    }

LABEL_13:
    v23 = *(this + 5);
    v24 = v23[7] * a2;
    v25 = v8 * v23[8];
    v26 = v8 * v23[9];
    *a3 = (v23[6] * a2) + v25;
    v14 = v24 + v26;
    goto LABEL_9;
  }

  if (v6)
  {
LABEL_7:
    v15 = *(this + 5);
    v13 = *(v15 + 8);
    v14 = *(v15 + 12);
    goto LABEL_8;
  }

  v7 = *(this + 4);
  v8 = 1.0 - a2;
  if (v7 == 0.0)
  {
    goto LABEL_13;
  }

  v9 = *(this + 5);
  if (v9 == 0.0)
  {
    goto LABEL_13;
  }

  v10 = *(this + 6) + (*(this + 7) * a2);
  v11 = (v8 * v7) + (v9 * a2);
  v12 = __sincosf_stret(v10);
  v13 = v11 * v12.__cosval;
  v14 = v11 * v12.__sinval;
LABEL_8:
  *a3 = v13;
LABEL_9:
  a3[1] = v14;
}

void OMPie::getArcOut(float32x2_t **this@<X0>, float a2@<S0>, float32x2_t *a3@<X8>)
{
  v4 = 1.0 - a2;
  if (*this == 0.0 || (v5 = *(this + 1), v5 == 0.0))
  {
    v7 = vadd_f32(vmul_n_f32(*this[5], a2), vmul_n_f32(this[5][2], v4));
  }

  else
  {
    v8 = (v4 * *this) + (v5 * a2);
    v6 = __sincosf_stret(*(this + 2) + (*(this + 3) * a2));
    v7 = vmul_n_f32(__PAIR64__(LODWORD(v6.__sinval), LODWORD(v6.__cosval)), v8);
  }

  *a3 = v7;
}

void OMPie::move(OMPie *this, int *a2, Vec2f *a3, float32x2_t *a4)
{
  v8 = *a2;
  if (*a2 <= 7)
  {
    if (!v8)
    {
      v20 = *(this + 5);
      if (*(this + 8))
      {
        v21 = v20->f32[1];
        v22.f32[0] = a4->f32[0] + v20->f32[0];
      }

      else
      {
        v22 = vadd_f32(*v20, *a4);
        if (sqrtf(vaddv_f32(vmul_f32(v22, v22))) > 1.0)
        {
          return;
        }

        LODWORD(v21) = HIDWORD(*v20);
      }

      v20->i32[0] = v22.i32[0];
      v20->f32[1] = a4->f32[1] + v21;
      return;
    }

    if (v8 != 1)
    {
      if (v8 == 2)
      {
        v9 = *(this + 5);
        if (*(this + 8))
        {
          v10 = v9[2].f32[1];
          v11.f32[0] = a4->f32[0] + v9[2].f32[0];
        }

        else
        {
          v11 = vadd_f32(v9[2], *a4);
          if (sqrtf(vaddv_f32(vmul_f32(v11, v11))) > 1.0)
          {
            return;
          }

          LODWORD(v10) = HIDWORD(*&v9[2]);
        }

        v9[2].i32[0] = v11.i32[0];
        v9[2].f32[1] = a4->f32[1] + v10;
        return;
      }

      goto LABEL_29;
    }

LABEL_11:
    v12 = *(this + 5);
    *(v12 + 8) = *a3;
    OMPie::computeArcIn(this, a2, a3);
    OMPie::computeArcOut(this, v13, v14);
    OMPie::getArcOut(this, 0.5, &v84);
    *v15.f32 = vsub_f32(*(v12 + 16), *v12);
    v15.i64[1] = v15.i64[0];
    v83 = vmulq_f32(v15, xmmword_26084A7E0);
    v16 = v84;
    v82[0] = *(v12 + 8);
    v82[1] = v84;
    if (OMUtil::findIntersectionOfLineSegment(v83.f32, v82))
    {
      v18 = *(v12 + 8);
      v17 = *(v12 + 12);
      *(v12 + 32) = v18;
      *(v12 + 36) = v17;
      *(v12 + 24) = v18;
      v19 = 28;
    }

    else
    {
      v23 = vmul_f32(v16, v16);
      v23.f32[0] = sqrtf(vaddv_f32(v23));
      v23.f32[0] = vaddv_f32(vmul_f32(vdiv_f32(v16, vdup_lane_s32(v23, 0)), *a3));
      *(v12 + 8) = 0;
      v24 = *v12;
      v25 = *(v12 + 4);
      v26 = sqrtf((v24 * v24) + (v25 * v25));
      v27 = v23.f32[0] * (*v12 / v26);
      v28 = v23.f32[0] * (v25 / v26);
      v29 = *(v12 + 16);
      v30 = *(v12 + 20);
      v31 = sqrtf((v29 * v29) + (v30 * v30));
      v32 = v23.f32[0] * (v29 / v31);
      v17 = v23.f32[0] * (v30 / v31);
      v34 = sqrtf((v27 * v27) + (v28 * v28)) < v26;
      v33 = sqrtf((v32 * v32) + (v17 * v17));
      v34 = v34 && v33 < v31;
      if (v34)
      {
        *(v12 + 24) = v27;
        *(v12 + 28) = v28;
        v19 = 36;
        *(v12 + 32) = v32;
      }

      else
      {
        *(v12 + 24) = v24;
        *(v12 + 28) = v25;
        v19 = 36;
        v17 = v30;
        *(v12 + 32) = v29;
      }
    }

    *(v12 + v19) = v17;
    v8 = *a2;
    goto LABEL_29;
  }

  switch(v8)
  {
    case 8:
      goto LABEL_11;
    case 12:
      *a2 = 10;
LABEL_55:
      *v83.f32 = vsub_f32(*a3, *a4);
      OMUtil::angle2PI(&v83, a3, a3);
      v72 = *(this + 5);
      v74 = v73;
      Mat2f::MakeRot(&v83, v73);
      *v72 = vadd_f32(vmul_f32(vrev64_s32(*v72), *&v83.i32[1]), vmul_f32(*v72, __PAIR64__(v83.u32[3], v83.u32[0])));
      Mat2f::MakeRot(&v83, v74);
      v72[1] = vadd_f32(vmul_f32(vrev64_s32(v72[1]), *&v83.i32[1]), vmul_f32(v72[1], __PAIR64__(v83.u32[3], v83.u32[0])));
      Mat2f::MakeRot(&v83, v74);
      v72[2] = vadd_f32(vmul_f32(vrev64_s32(v72[2]), *&v83.i32[1]), vmul_f32(v72[2], __PAIR64__(v83.u32[3], v83.u32[0])));
      Mat2f::MakeRot(&v83, v74);
      v72[3] = vadd_f32(vmul_f32(vrev64_s32(v72[3]), *&v83.i32[1]), vmul_f32(v72[3], __PAIR64__(v83.u32[3], v83.u32[0])));
      Mat2f::MakeRot(&v83, v74);
      v72[4] = vadd_f32(vmul_f32(vrev64_s32(v72[4]), *&v83.i32[1]), vmul_f32(v72[4], __PAIR64__(v83.u32[3], v83.u32[0])));
      return;
    case 9:
      *a2 = 11;
      goto LABEL_46;
  }

LABEL_29:
  if (v8 > 8)
  {
    if (v8 <= 10)
    {
      if (v8 == 9)
      {
        v62 = *(this + 5);
        v63 = v62[1];
        v64 = vsub_f32(v63, *a3);
        v65 = vmul_f32(v64, v64);
        v65.f32[0] = sqrtf(vaddv_f32(v65));
        v66 = vmul_f32(*a4, vdiv_f32(v64, vdup_lane_s32(v65, 0)));
        v66.i32[0] = vadd_f32(v66, vdup_lane_s32(v66, 1)).u32[0];
        v67 = vsub_f32(v63, *v62);
        v68 = vmul_f32(v67, v67);
        v68.f32[0] = sqrtf(vaddv_f32(v68));
        *v62 = vadd_f32(*v62, vmul_n_f32(vdiv_f32(v67, vdup_lane_s32(v68, 0)), v66.f32[0]));
        v69 = v62[2];
        v70 = vsub_f32(v63, v69);
        v71 = vmul_f32(v70, v70);
        v71.f32[0] = sqrtf(vaddv_f32(v71));
        v62[2] = vadd_f32(v69, vmul_n_f32(vdiv_f32(v70, vdup_lane_s32(v71, 0)), v66.f32[0]));
      }

      goto LABEL_55;
    }

    if (v8 != 11)
    {
      if (v8 == 12)
      {
        OMPie::moveAll(this, a4);
      }

      return;
    }

LABEL_46:
    v41 = *(this + 5);
    OMPie::computeArcIn(this, a2, a3);
    OMPie::computeArcOut(this, v42, v43);
    OMPie::getArcOut(this, 0.5, &v83);
    v44 = v83.i64[0];
    v45 = sqrtf(vaddv_f32(vmul_f32(*a3, *a3)));
    if (v45 <= 0.0)
    {
      v45 = 0.02;
    }

    v46 = v41[1];
    v47 = sqrtf((*v41 * *v41) + (v46 * v46));
    v48 = v45 * (*v41 / v47);
    v49 = v45 * (v46 / v47);
    v50 = v41[4];
    v51 = v41[5];
    v52 = sqrtf((v50 * v50) + (v51 * v51));
    v53 = v45 * (v50 / v52);
    v54 = v45 * (v51 / v52);
    isQuadActive = OMPie::isQuadActive(this);
    v57 = *(this + 5);
    if (!isQuadActive)
    {
      goto LABEL_65;
    }

    if (sqrtf((*(v57 + 24) * *(v57 + 24)) + (*(v57 + 28) * *(v57 + 28))) >= sqrtf((v48 * v48) + (v49 * v49)))
    {
      v58 = *(v57 + 36);
    }

    else
    {
      v58 = *(v57 + 36);
      if (sqrtf((*(v57 + 32) * *(v57 + 32)) + (v58 * v58)) < sqrtf((v53 * v53) + (v54 * v54)))
      {
        goto LABEL_65;
      }
    }

    v48 = *(v57 + 24);
    v49 = *(v57 + 28);
    v53 = *(v57 + 32);
    v54 = v58;
LABEL_65:
    *v57 = v48;
    *(v57 + 4) = v49;
    *(v57 + 16) = v53;
    *(v57 + 20) = v54;
    OMUtil::angle2PI(v57, (v57 + 16), v56);
    if (v77 > 3.14159265 && !OMPie::isQuadActive(this))
    {
      OMPie::computeArcIn(this, v78, v79);
      OMPie::computeArcOut(this, v80, v81);
      OMPie::getArcOut(this, 0.5, v82);
      *(v57 + 8) = vmul_n_f32(*(v57 + 8), sqrtf(vaddv_f32(vmul_f32(v82[0], v82[0]))) / sqrtf((*&v44 * *&v44) + (*(&v44 + 1) * *(&v44 + 1))));
    }

    return;
  }

  if (v8 > 5)
  {
    if (v8 == 6)
    {
      OMPie::moveAroundArc(this, a3, *(this + 5));
      if (!OMPie::isQuadActive(this))
      {
        goto LABEL_61;
      }

      v38 = *(this + 5);
      v39 = (v38 + 6);
      if (v38[6] == v38[2])
      {
        v40 = v38[7];
LABEL_59:
        if (v40 == v38[3])
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      if (v8 != 7)
      {
        return;
      }

      OMPie::moveAroundArc(this, a3, (*(this + 5) + 16));
      if (!OMPie::isQuadActive(this))
      {
        goto LABEL_61;
      }

      v38 = *(this + 5);
      v39 = (v38 + 8);
      if (v38[8] == v38[2])
      {
        v40 = v38[9];
        goto LABEL_59;
      }
    }

    OMPie::moveAroundArc(this, a3, v39);
LABEL_61:
    if (!OMPie::isQuadActive(this))
    {
      OMPie::testIfShouldBeAQuad(this, v75, v76);
    }

    return;
  }

  if (v8 == 3)
  {
    v59 = *(this + 5);
    if (*(this + 8))
    {
      v60 = v59[3].f32[1];
      v61.f32[0] = a4->f32[0] + v59[3].f32[0];
    }

    else
    {
      v61 = vadd_f32(v59[3], *a4);
      if (sqrtf(vaddv_f32(vmul_f32(v61, v61))) > 1.0)
      {
        return;
      }

      LODWORD(v60) = HIDWORD(*&v59[3]);
    }

    v59[3].i32[0] = v61.i32[0];
    v59[3].f32[1] = a4->f32[1] + v60;
  }

  else
  {
    if (v8 != 4)
    {
      return;
    }

    v35 = *(this + 5);
    if (*(this + 8))
    {
      v36 = v35[4].f32[1];
      v37.f32[0] = a4->f32[0] + v35[4].f32[0];
    }

    else
    {
      v37 = vadd_f32(v35[4], *a4);
      if (sqrtf(vaddv_f32(vmul_f32(v37, v37))) > 1.0)
      {
        return;
      }

      LODWORD(v36) = HIDWORD(*&v35[4]);
    }

    v35[4].i32[0] = v37.i32[0];
    v35[4].f32[1] = a4->f32[1] + v36;
  }
}

BOOL OMPie::testIfShouldBeAQuad(OMPie *this, uint64_t a2, const Vec2f *a3)
{
  v4 = *(this + 5);
  OMPie::computeArcIn(this, a2, a3);
  OMPie::computeArcOut(this, v5, v6);
  OMPie::getArcOut(this, 0.5, &v23);
  *v7.f32 = vsub_f32(v4[2], *v4);
  v7.i64[1] = v7.i64[0];
  v22 = vmulq_f32(v7, xmmword_26084A7E0);
  *v7.f32 = v4[1];
  *&v7.u32[2] = v23;
  v21 = v7;
  result = OMUtil::findIntersectionOfLineSegment(v22.f32, v21.f32);
  if (!result)
  {
    v9 = sqrtf(vaddv_f32(vmul_f32(v4[1], v4[1])));
    v4[1] = 0;
    v10 = v4->f32[1];
    v11 = sqrtf((v4->f32[0] * v4->f32[0]) + (v10 * v10));
    v12 = v9 * (v4->f32[0] / v11);
    v13 = v9 * (v10 / v11);
    v14 = v4[2].f32[0];
    v15 = v4[2].f32[1];
    v20 = sqrtf((v12 * v12) + (v13 * v13)) < v11;
    v16 = sqrtf((v14 * v14) + (v15 * v15));
    v17 = v9 * (v15 / v16);
    v18 = v9 * (v14 / v16);
    v19 = sqrtf((v18 * v18) + (v17 * v17));
    v20 = v20 && v19 < v16;
    if (!v20)
    {
      v12 = v4->f32[0];
      v13 = v4->f32[1];
      v18 = v4[2].f32[0];
      v17 = v4[2].f32[1];
    }

    v4[3].f32[0] = v12;
    v4[3].f32[1] = v13;
    v4[4].f32[0] = v18;
    v4[4].f32[1] = v17;
  }

  return result;
}

void OMPie::computeArcIn(OMPie *this, uint64_t a2, const Vec2f *a3)
{
  v4 = *(this + 5);
  v6 = v4[3].f32[0];
  v5 = v4[3].f32[1];
  v7 = v4[4];
  if (*(this + 8) == 1)
  {
    v9 = v4[1].f32[0];
    v8 = v4[1].f32[1];
    v10 = v6 - v9;
    v11 = v5 - v8;
    v12 = sqrtf((v11 * v11) + (v10 * v10));
    v13 = v7.f32[0] - v9;
    v14 = v7.f32[1] - v8;
    v15 = sqrtf((v14 * v14) + (v13 * v13));
    *(this + 4) = v12;
    *(this + 5) = v15;
    v29 = 1065353216;
    *&v16 = v10 / v12;
    *&v17 = v11 / v12;
    v28.var0[0] = v10 / v12;
    v28.var0[1] = v11 / v12;
    OMUtil::angle2PI(&v29, &v28, a3);
    *(this + 6) = v19;
    v29 = __PAIR64__(v17, v16);
    v28.var0[0] = v13 / v15;
    v28.var0[1] = v14 / v15;
  }

  else
  {
    v20 = sqrtf((v6 * v6) + (v5 * v5));
    v21 = vmul_f32(v7, v7);
    v21.f32[0] = sqrtf(vaddv_f32(v21));
    v27 = v21;
    *(this + 4) = v20;
    *(this + 5) = v21.i32[0];
    v29 = 1065353216;
    *&v22 = v6 / v20;
    *&v23 = v5 / v20;
    v28.var0[0] = v6 / v20;
    v28.var0[1] = v5 / v20;
    v26 = v7;
    OMUtil::angle2PI(&v29, &v28, a3);
    *(this + 6) = v24;
    v29 = __PAIR64__(v23, v22);
    v28 = vdiv_f32(v26, vdup_lane_s32(v27, 0));
  }

  OMUtil::angle2PI(&v29, &v28, v18);
  *(this + 7) = v25;
}

void OMPie::computeArcOut(OMPie *this, uint64_t a2, const Vec2f *a3)
{
  v4 = *(this + 5);
  *this = sqrtf((v4->f32[0] * v4->f32[0]) + (v4->f32[1] * v4->f32[1]));
  *(this + 1) = sqrtf((v4[2].f32[0] * v4[2].f32[0]) + (v4[2].f32[1] * v4[2].f32[1]));
  v14 = 1065353216;
  v5 = vmul_f32(*v4, *v4);
  v5.f32[0] = sqrtf(vaddv_f32(v5));
  v13 = vdiv_f32(*v4, vdup_lane_s32(v5, 0));
  OMUtil::angle2PI(&v14, &v13, a3);
  *(this + 2) = v6;
  v7 = vmul_f32(*v4, *v4);
  v7.f32[0] = sqrtf(vaddv_f32(v7));
  v8 = vdiv_f32(*v4, vdup_lane_s32(v7, 0));
  v9 = v4[2];
  v10 = vmul_f32(v9, v9);
  v10.f32[0] = sqrtf(vaddv_f32(v10));
  v13 = vdiv_f32(v9, vdup_lane_s32(v10, 0));
  v14 = v8;
  OMUtil::angle2PI(&v14, &v13, v11);
  *(this + 3) = v12;
}

void OMPie::computeOppositeArc(OMPie *this, uint64_t a2, const Vec2f *a3)
{
  v4 = *(this + 5);
  v5 = v4[2].f32[0];
  v6 = v4[2].f32[1];
  v7 = sqrtf((v5 * v5) + (v6 * v6));
  *&v8 = v5 / v7;
  *&v9 = v6 / v7;
  v10 = *v4;
  v11 = vmul_f32(v10, v10);
  v11.f32[0] = sqrtf(vaddv_f32(v11));
  v27 = v11;
  *this = v7;
  *(this + 1) = v11.i32[0];
  v30 = 1065353216;
  LODWORD(v29.var0[0]) = v8;
  v29.var0[1] = v6 / v7;
  OMUtil::angle2PI(&v30, &v29, a3);
  *(this + 2) = v12;
  v30 = __PAIR64__(v9, v8);
  v29 = vdiv_f32(v10, vdup_lane_s32(v27, 0));
  OMUtil::angle2PI(&v30, &v29, v13);
  *(this + 3) = v14;
  v15 = *(this + 5);
  v16 = v15[3].f32[0];
  v17 = v15[3].f32[1];
  v18 = sqrtf((v16 * v16) + (v17 * v17));
  v30 = 1065353216;
  *&v19 = v16 / v18;
  *&v20 = v17 / v18;
  v29.var0[0] = v16 / v18;
  v29.var0[1] = v17 / v18;
  v21 = v15[4];
  v22 = vmul_f32(v21, v21);
  v22.f32[0] = sqrtf(vaddv_f32(v22));
  v28 = v22;
  *(this + 4) = v18;
  *(this + 5) = v22.i32[0];
  OMUtil::angle2PI(&v30, &v29, v23);
  *(this + 6) = v24;
  v30 = __PAIR64__(v20, v19);
  v29 = vdiv_f32(v21, vdup_lane_s32(v28, 0));
  OMUtil::angle2PI(&v30, &v29, v25);
  *(this + 7) = v26;
}

BOOL OMPie::setBasedOnOffsetFromOtherPie(OMPie *this, OMPie *a2, float a3, float a4, const Vec2f *a5)
{
  v5 = a5;
  v9 = *(a2 + 5);
  if (a3 > 0.45)
  {
    a3 = ((a3 + -0.45) * 0.333) + 0.45;
  }

  v86 = a3;
  OMUtil::angle2PI(v9, (v9 + 16), a5);
  if (v12 <= 3.14159265)
  {
    OMPie::computeArcIn(a2, v10, v11);
    OMPie::computeArcOut(a2, v21, v22);
    OMPie::getArcOut(a2, 0.5, v88);
    v15 = *(v9 + 8);
    v23 = vmvn_s8(vceq_f32(v15, *&v88[0]));
    v24 = v23.i8[0] | v23.i8[4];
    v25 = vmul_f32(v15, v15);
    v25.f32[0] = sqrtf(vaddv_f32(v25));
    v26 = vsub_f32(v15, *&v88[0]);
    v27 = vmul_f32(v26, v26);
    v27.f32[0] = sqrtf(vaddv_f32(v27));
    v28 = COERCE_DOUBLE(vsub_f32(v15, vmul_n_f32(vdiv_f32(v15, vdup_lane_s32(v25, 0)), v86)));
    v20 = COERCE_DOUBLE(vadd_f32(v15, vmul_n_f32(vdiv_f32(v26, vdup_lane_s32(v27, 0)), v86)));
    if ((v24 & 1) == 0)
    {
      v20 = v28;
    }
  }

  else
  {
    OMPie::computeOppositeArc(a2, v10, v11);
    OMPie::getArcOut(a2, 0.5, &v92);
    v15 = *(v9 + 8);
    v16 = vmvn_s8(vceq_f32(v15, v92));
    if (((v16.i32[0] | v16.i32[1]) & 1) != 0 && (v84 = v92.i32[0], v88[0] = v15, *&v17 = *v9, *(&v17 + 1) = *(v9 + 16), *v91[0].f32 = v17, IntersectionOfLineSegment = OMUtil::findIntersectionOfLineSegment(v88, v91), v15 = *(v9 + 8), !IntersectionOfLineSegment))
    {
      v76 = vsub_f32(v15, __PAIR64__(v92.u32[1], v84));
      v77 = vmul_f32(v76, v76);
      v77.f32[0] = sqrtf(vaddv_f32(v77));
      v20 = COERCE_DOUBLE(vsub_f32(v15, vmul_n_f32(vdiv_f32(v76, vdup_lane_s32(v77, 0)), v86)));
    }

    else
    {
      v19 = vmul_f32(v15, v15);
      v19.f32[0] = sqrtf(vaddv_f32(v19));
      v20 = COERCE_DOUBLE(vadd_f32(v15, vmul_n_f32(vdiv_f32(v15, vdup_lane_s32(v19, 0)), v86)));
    }
  }

  v29 = vsub_f32(v15, *&v20);
  v85 = *&v20;
  v87 = sqrtf(vaddv_f32(vmul_f32(v29, v29)));
  OMPie::computeArcIn(a2, v13, v14);
  OMPie::computeArcOut(a2, v30, v31);
  v32 = *v9;
  *v33.i32 = sqrtf(vaddv_f32(vmul_f32(v32, v32)));
  v34 = *(v9 + 16);
  v35 = vmul_f32(v34, v34);
  v35.f32[0] = sqrtf(vaddv_f32(v35));
  v36 = vdiv_f32(v34, vdup_lane_s32(v35, 0));
  if (v5)
  {
    v37 = fmaxf(*v33.i32, 1.575);
    v38 = vmul_n_f32(vdiv_f32(v32, vdup_lane_s32(v33, 0)), v37);
    v39 = vmul_n_f32(v36, v37);
  }

  else
  {
    v38 = vadd_f32(v32, vmul_n_f32(vdiv_f32(v32, vdup_lane_s32(v33, 0)), v87));
    v39 = vadd_f32(v34, vmul_n_f32(v36, v87));
  }

  OMPie::OMPie(v88, 0);
  v40 = __p;
  *__p = v38;
  v40[2] = v39;
  v40[1] = 0;
  OMPie::computeArcIn(v88, v41, v42);
  OMPie::computeArcOut(v88, v43, v44);
  OMUtil::angle2PI(v9, (v9 + 16), v45);
  v47 = ((v87 * a4) + (v87 * a4)) * 3.14159265 * 0.200000003 / v46;
  OMPie::getArcOut(v88, 0.0 - v47, v91);
  v94 = v91[0];
  OMPie::getArcOut(v88, v47 + 1.0, v91);
  v93 = v91[0];
  if (__p)
  {
    v90 = __p;
    operator delete(__p);
  }

  OMUtil::angle2PI(v9, (v9 + 16), v48);
  if (v50 > 3.14159265)
  {
    OMUtil::angle2PI(&v94, &v93, v49);
    if (v51 < 3.14159265)
    {
      OMPie::OMPie(v88, 0);
      v52 = __p;
      *__p = v94;
      v52[2] = v93;
      v52[1] = 0;
      OMPie::computeArcIn(v88, v53, v54);
      OMPie::computeArcOut(v88, v55, v56);
      OMPie::getArcOut(v88, 0.501, v91);
      v94 = v91[0];
      OMPie::getArcOut(v88, 0.499, v91);
      v93 = v91[0];
      if (__p)
      {
        v90 = __p;
        operator delete(__p);
      }
    }
  }

  v57 = *(this + 5);
  *v57 = v94;
  v58 = v93;
  *&v59 = v85;
  *(&v59 + 1) = v85;
  *(v57 + 24) = v59;
  *(v57 + 8) = v85;
  *(v57 + 16) = v58;
  result = OMPie::isQuadActive(a2);
  if (result)
  {
    if ((v5 & 1) == 0)
    {
      v61 = *(a2 + 5);
      v62 = vsub_f32(v61[4], *(v9 + 16));
      v63 = vsub_f32(v61[3], *v9);
      v64 = (v87 + v87) + sqrtf(vaddv_f32(vmul_f32(v63, v63)));
      *&v65 = v93;
      v66 = vsub_f32(0, v93);
      v67 = vmul_f32(v66, v66);
      v67.f32[0] = sqrtf(vaddv_f32(v67));
      v68 = vadd_f32(v93, vmul_n_f32(vdiv_f32(v66, vdup_lane_s32(v67, 0)), (v87 + v87) + sqrtf(vaddv_f32(vmul_f32(v62, v62)))));
      *&v69 = v94;
      v70 = vsub_f32(0, v94);
      v71 = vmul_f32(v70, v70);
      v71.f32[0] = sqrtf(vaddv_f32(v71));
      v82 = vadd_f32(v94, vmul_n_f32(vdiv_f32(v70, vdup_lane_s32(v71, 0)), v64));
      v83 = v68;
      *(&v69 + 1) = v82;
      v88[0] = v69;
      *(&v65 + 1) = v68;
      *v91[0].f32 = v65;
      if (OMUtil::findIntersectionOfLineSegmentExclusive(v88, v91))
      {
        v72 = sqrtf(vaddv_f32(vmul_f32(v83, v83))) / v87;
        *(*(this + 5) + 8) = vadd_f32(vmul_n_f32(v85, v72), vmul_n_f32(vmul_f32(vadd_f32(v83, v82), 0x3F0000003F000000), 1.0 - v72));
      }

      else
      {
        v78 = *(this + 5);
        *(v78 + 8) = 0;
        *&v79 = v82;
        *(&v79 + 1) = v83;
        *(v78 + 24) = v79;
      }
    }

    result = OMPie::isQuadActive(this);
    if (!result)
    {
      v80 = *(this + 5);
      *&v81 = vmul_f32(*(v80 + 8), vdup_n_s32(0x3CA3D70Au));
      *(v80 + 8) = v81;
      *(&v81 + 1) = v81;
      *(v80 + 24) = v81;
    }
  }

  else
  {
    v73 = *(this + 5);
    v74 = *(v9 + 8);
    v73[6] = v74;
    v75 = *(v9 + 12);
    v73[7] = v75;
    v73[8] = v74;
    v73[9] = v75;
    v73[2] = v74;
    v73[3] = v75;
  }

  return result;
}

void sub_25FF27390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OMPie::offsetSegment_180more(OMPie *this, float32x2_t *a2, const Vec2f *a3, Vec2f *a4, Vec2f *a5, Vec2f *a6, Vec2f *a7, float32x2_t **a8)
{
  *&v14 = *a7;
  *(&v14 + 1) = *a6;
  *v23 = v14;
  *&v14 = *a2;
  *(&v14 + 1) = *a3;
  v22 = v14;
  if (OMUtil::findIntersectionOfLineSegment(v23, &v22, &v24))
  {
    *a6 = v24;
  }

  isQuadActive = OMPie::isQuadActive(this);
  OMPie::getArcOut(a8, 0.0, &v21);
  v16 = v21;
  v17 = 0.04;
  while (1)
  {
    OMPie::getArcOut(a8, v17, &v20);
    *&v18 = *a6;
    *(&v18 + 1) = *a4;
    *v23 = v18;
    *&v22 = v16;
    v16 = v20;
    *(&v22 + 1) = v20;
    result = OMUtil::findIntersectionOfLineSegment(v23, &v22);
    if (result)
    {
      break;
    }

    v17 = v17 + 0.04;
    if (v17 > 1.0001)
    {
      return result;
    }
  }

  result = OMPie::moveAroundArc(this, a2, a4);
  if (isQuadActive)
  {
    return OMPie::moveAroundArc(this, a2, a5);
  }

  return result;
}

uint64_t OMPie::offsetSegmentIfNeeded(OMPie *this, OMPie *a2, float a3)
{
  v5 = *(this + 5);
  v6 = *(a2 + 1);
  v91[0] = *a2;
  v91[1] = v6;
  v92 = *(a2 + 8);
  v94 = 0;
  v95 = 0;
  __p = 0;
  std::vector<Vec2f>::__init_with_size[abi:ne200100]<Vec2f*,Vec2f*>(&__p, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  OMPie::setBasedOnOffsetFromOtherPie(v91, a2, 0.02, 1.0, 0);
  OMPie::computeArcIn(v91, v7, v8);
  OMPie::computeArcOut(v91, v9, v10);
  v11 = __p;
  OMPie::computeArcIn(this, v12, v13);
  OMPie::computeArcOut(this, v14, v15);
  OMPie::getArcOut(this, 0.5, &v90);
  v17 = v90.n128_u64[0];
  v18 = vmul_f32(*v11, *v11);
  v19 = vmul_f32(*(v11 + 16), *(v11 + 16));
  v20 = vsqrt_f32(vadd_f32(vzip1_s32(v18, v19), vzip2_s32(v18, v19)));
  if (v20.f32[0] <= v20.f32[1])
  {
    v20.f32[0] = v20.f32[1];
  }

  v21 = *v5;
  v22 = vmul_f32(v21, v21);
  v22.f32[0] = sqrtf(vaddv_f32(v22));
  if (v22.f32[0] < v20.f32[0])
  {
    *v5 = vmul_n_f32(vdiv_f32(v21, vdup_lane_s32(v22, 0)), v20.f32[0]);
  }

  v23 = v5[2];
  v24 = vmul_f32(v23, v23);
  v24.f32[0] = sqrtf(vaddv_f32(v24));
  if (v24.f32[0] < v20.f32[0])
  {
    v5[2] = vmul_n_f32(vdiv_f32(v23, vdup_lane_s32(v24, 0)), v20.f32[0]);
  }

  OMUtil::angle2PI(v5, &v5[2], v16);
  if (v25 > 3.14159265 && !OMPie::isQuadActive(this))
  {
    OMPie::computeArcIn(this, v26, v27);
    OMPie::computeArcOut(this, v28, v29);
    OMPie::getArcOut(this, 0.5, v89);
    v5[1] = vmul_n_f32(v5[1], sqrtf(vaddv_f32(vmul_f32(v89[0], v89[0]))) / sqrtf((*&v17 * *&v17) + (*(&v17 + 1) * *(&v17 + 1))));
  }

  if (OMPie::isQuadActive(a2) && OMPie::isQuadActive(this))
  {
    v31 = vmul_f32(*(v11 + 24), *(v11 + 24));
    v32 = vmul_f32(*(v11 + 32), *(v11 + 32));
    v33 = vsqrt_f32(vadd_f32(vzip1_s32(v31, v32), vzip2_s32(v31, v32)));
    if (v33.f32[0] >= v33.f32[1])
    {
      v33.f32[0] = v33.f32[1];
    }

    v34 = v5[3];
    v35 = vmul_f32(v34, v34);
    v35.f32[0] = sqrtf(vaddv_f32(v35));
    if (v35.f32[0] > v33.f32[0])
    {
      v5[3] = vmul_n_f32(vdiv_f32(v34, vdup_lane_s32(v35, 0)), v33.f32[0]);
    }

    v36 = v5[4];
    v37 = vmul_f32(v36, v36);
    v37.f32[0] = sqrtf(vaddv_f32(v37));
    if (v37.f32[0] > v33.f32[0])
    {
      v5[4] = vmul_n_f32(vdiv_f32(v36, vdup_lane_s32(v37, 0)), v33.f32[0]);
    }
  }

  v38 = v5[1];
  v90.n128_u64[0] = vsub_f32(*v5, v38);
  v89[0] = vsub_f32(v5[2], v38);
  OMUtil::angle2PI(&v90, v89, v30);
  v40 = v39;
  isQuadActive = OMPie::isQuadActive(this);
  v43 = v40 <= 3.14159265 || isQuadActive;
  if (v43)
  {
    OMPie::adjustSegment(this, v5, &v5[3], v5 + 2, v11, v11 + 3, v11 + 2, v42, 1, v91);
    OMPie::adjustSegment(this, &v5[2], &v5[4], v5, v11 + 2, v11 + 4, v11, v44, 0, v91);
  }

  else
  {
    OMPie::offsetSegment_180more(this, v11, v11 + 1, v5, &v5[3], &v5[1], &v5[2], v91);
    OMPie::offsetSegment_180more(this, v11 + 2, v11 + 1, &v5[2], &v5[4], &v5[1], v5, v91);
  }

  OMPie::setBasedOnOffsetFromOtherPie(v91, a2, 0.01, 1.0, 0);
  OMPie::computeArcIn(v91, v45, v46);
  OMPie::computeArcOut(v91, v47, v48);
  if (!OMPie::isQuadActive(a2))
  {
    if (!OMPie::isQuadActive(this))
    {
      v90 = *v5[1].f32;
      *v89[0].var0 = *(v11 + 8);
      if (OMUtil::findIntersectionOfLineSegmentExclusive(&v90, v89) || (v87 = v5[1], v88 = *v5, v85 = *(v11 + 1), v86 = *v11, OMUtil::findIntersectionOfLineSegmentExclusive(&v87, &v85)))
      {
        v5[1].i32[0] = *(v11 + 2);
        v5[1].i32[1] = *(v11 + 3);
      }

      OMPie::computeArcIn(this, v49, v50);
      OMPie::computeArcOut(this, v51, v52);
      OMPie::getArcOut(this, 0.0, &v84);
      v90.n128_u64[0] = *(v11 + 1);
      v90.n128_u64[1] = *v11;
      v89[0] = *(v11 + 8);
      v89[1] = *v11;
      v54 = v84.i32[1];
      v53 = v84.i32[0];
      v55 = 0.04;
      while (1)
      {
        OMPie::getArcOut(this, v55, &v83);
        v87 = __PAIR64__(v54, v53);
        v56 = v83;
        v88 = v83;
        if (OMUtil::findIntersectionOfLineSegment(&v90, &v87))
        {
          goto LABEL_28;
        }

        v85 = __PAIR64__(v54, v53);
        v86 = v56;
        if (OMUtil::findIntersectionOfLineSegment(v89, &v85))
        {
          goto LABEL_28;
        }

        v55 = v55 + 0.04;
        v54 = v56.i32[1];
        v53 = v56.i32[0];
        if (v55 > 1.0001)
        {
          goto LABEL_36;
        }
      }
    }

    if (OMPie::isQuadActive(this) && !OMPie::isQuadActive(a2))
    {
LABEL_28:
      v5[1].i32[0] = *(v11 + 2);
      v5[1].i32[1] = *(v11 + 3);
    }
  }

LABEL_36:
  v57 = v5[1];
  v58 = vmul_f32(v57, v57);
  v58.f32[0] = sqrtf(vaddv_f32(v58));
  if (v58.f32[0] > 1.5)
  {
    v59 = vdiv_f32(v57, vdup_lane_s32(v58, 0));
    __asm { FMOV            V1.2S, #1.5 }

    v5[1] = vmul_f32(v59, _D1);
  }

  v65 = OMPie::isQuadActive(a2);
  v66 = OMPie::isQuadActive(this);
  OMPie::computeArcIn(a2, v67, v68);
  OMPie::computeArcOut(a2, v69, v70);
  OMPie::computeArcIn(this, v71, v72);
  OMPie::computeArcOut(this, v73, v74);
  v75 = 0;
  if (v65)
  {
    v76 = 66;
  }

  else
  {
    v76 = 34;
  }

  if (v66)
  {
    v77 = 66;
  }

  else
  {
    v77 = 34;
  }

  while (2)
  {
    OMPie::getNextEdgeTurnAround(this, v66, v75, &v90);
    for (i = 0; i != v76; ++i)
    {
      OMPie::getNextEdgeTurnAround(a2, v65, i, v89);
      if (OMUtil::findIntersectionOfLineSegmentExclusive(v89, &v90))
      {
        v81 = 1;
        goto LABEL_55;
      }
    }

    if (++v75 != v77)
    {
      continue;
    }

    break;
  }

  v79 = 0;
  while (2)
  {
    OMPie::getNextEdgeSweep(this, v66, v79, &v90);
    for (j = 0; j != v76; ++j)
    {
      OMPie::getNextEdgeTurnAround(a2, v65, j, v89);
      if (OMUtil::findIntersectionOfLineSegmentExclusive(v89, &v90))
      {
        v81 = 0;
        goto LABEL_55;
      }
    }

    ++v79;
    v81 = 1;
    if (v79 != 32)
    {
      continue;
    }

    break;
  }

LABEL_55:
  if (__p)
  {
    v94 = __p;
    operator delete(__p);
  }

  return v81;
}

void sub_25FF27B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OMPie::adjustSegment(OMPie *this, Vec2f *a2, Vec2f *a3, float32x2_t *a4, float32x2_t *a5, float32x2_t *a6, const Vec2f *a7, const Vec2f *a8, BOOL a9, OMPie *a10)
{
  v14 = *(a10 + 5);
  v15 = *(this + 5);
  isQuadActive = OMPie::isQuadActive(this);
  OMPie::getArcOut(a10, 0.0, &v64);
  v18 = v64.i32[1];
  v17 = v64.i32[0];
  v19 = 0.04;
  while (1)
  {
    OMPie::getArcOut(a10, v19, v61);
    *&v20 = v15[1];
    *(&v20 + 1) = *a2;
    v63 = v20;
    LODWORD(v62[0].var0[0]) = v17;
    LODWORD(v62[0].var0[1]) = v18;
    v21 = v61[0].i32[1];
    v17 = v61[0].i32[0];
    v62[1] = v61[0];
    if (OMUtil::findIntersectionOfLineSegment(&v63, v62))
    {
      break;
    }

    v19 = v19 + 0.04;
    v18 = v21;
    if (v19 > 1.0001)
    {
      goto LABEL_7;
    }
  }

  v64.i32[1] = v18;
  OMPie::moveAroundArc(this, a5, a2);
  if (isQuadActive)
  {
    OMPie::moveAroundArc(this, a5, a3);
  }

LABEL_7:
  OMPie::getArcOut(a10, 0.04, &v63);
  v22 = v63;
  v23 = 0.04;
  while (1)
  {
    OMPie::getArcOut(a10, v23, v61);
    *&v24 = v15[1];
    *(&v24 + 1) = *a2;
    v63 = v24;
    v62[0] = v22;
    v22 = v61[0];
    v62[1] = v61[0];
    if (OMUtil::findIntersectionOfLineSegment(&v63, v62))
    {
      break;
    }

    v23 = v23 + 0.04;
    if (v23 >= 1.0)
    {
      goto LABEL_15;
    }
  }

  v25 = vdup_lane_s32(v15[1], 0);
  v25.i32[0] = a5->i32[0];
  v26 = vmul_f32(v25, v25);
  v25.i32[1] = HIDWORD(*&v15[1]);
  v25.i32[0] = a5->i32[1];
  v54 = v15[1];
  v55 = vsqrt_f32(vadd_f32(v26, vmul_f32(v25, v25)));
  v28 = asinf(vdiv_f32(v55, vdup_lane_s32(v55, 1)).f32[0]);
  if (a9)
  {
    v29 = -v28;
  }

  else
  {
    v29 = v28;
  }

  v62[0] = vneg_f32(v54);
  v59 = 1065353216;
  OMUtil::angle2PI(&v59, v62, v27);
  v31 = __sincosf_stret(v29 + v30);
  v59 = vadd_f32(vmul_lane_f32(__PAIR64__(LODWORD(v31.__sinval), LODWORD(v31.__cosval)), v55, 1), v15[1]);
  OMPie::moveAroundArc(this, &v59, a2);
LABEL_15:
  result = OMPie::isQuadActive(this);
  if ((result & 1) == 0)
  {
    if (OMPie::isQuadActive(a10))
    {
      OMPie::getArcIn(a10, 0.0, v61);
      *&v33 = v15[1];
      *(&v33 + 1) = *a2;
      v63 = v33;
      v34 = v61[0];
      v35 = 0.04;
      while (1)
      {
        OMPie::getArcIn(a10, v35, &v59);
        v62[0] = v34;
        v34 = v59;
        v62[1] = v59;
        if (OMUtil::findIntersectionOfLineSegment(&v63, v62))
        {
          break;
        }

        v35 = v35 + 0.04;
        if (v35 > 1.0001)
        {
          v36 = vmul_f32(*a5, vdup_n_s32(0x3F733333u));
          v37 = vmul_f32(v36, v36);
          v38 = vmul_f32(*a6, *a6);
          v39 = vsqrt_f32(vadd_f32(vzip1_s32(v37, v38), vzip2_s32(v37, v38)));
          v40 = vbsl_s8(vdup_lane_s32(vcgt_f32(vdup_lane_s32(v39, 1), v39), 0), *a6, v36);
          v62[0] = *a6;
          v62[1] = v40;
          result = OMUtil::findIntersectionOfLineSegment(&v63, v62);
          if (!result)
          {
            return result;
          }

          return OMPie::moveAroundArc(this, a6, a2);
        }
      }

      return OMPie::moveAroundArc(this, a6, a2);
    }

    else
    {
      *&v41 = v15[1];
      *(&v41 + 1) = *a2;
      v63 = v41;
      *&v41 = v14[1];
      *(&v41 + 1) = *a7;
      *v62[0].var0 = v41;
      result = OMUtil::findIntersectionOfLineSegment(&v63, v62);
      if (result)
      {
        v42 = vsub_f32(v14[1], *a2);
        v43 = vmul_f32(v42, v42);
        v43.f32[0] = sqrtf(vaddv_f32(v43));
        v44 = vdiv_f32(v42, vdup_lane_s32(v43, 0));
        __asm { FMOV            V2.2S, #5.0 }

        v50 = vadd_f32(*a2, vmul_f32(v44, _D2));
        v61[0] = *a2;
        v61[1] = v50;
        v51 = vsub_f32(v15[1], *a4);
        v52 = vmul_f32(v51, v51);
        v52.f32[0] = sqrtf(vaddv_f32(v52));
        v53 = vadd_f32(*a4, vmul_f32(vdiv_f32(v51, vdup_lane_s32(v52, 0)), _D2));
        v59 = *a4;
        v60 = v53;
        return OMUtil::findIntersectionOfLineSegment(v61, &v59, &v15[1]);
      }
    }
  }

  return result;
}

void OMPie::getNextEdgeTurnAround(OMPie *this@<X0>, int a2@<W1>, signed int a3@<W2>, int8x16_t *a4@<X8>)
{
  v6 = *(this + 5);
  if (!a2)
  {
    if (a3)
    {
      if (a3 <= 32)
      {
LABEL_8:
        v9 = vcvts_n_f32_s32(a3, 5uLL);
        OMPie::getArcOut(this, vcvts_n_f32_s32(a3 - 1, 5uLL), &v13);
        OMPie::getArcOut(this, v9, &v12);
LABEL_9:
        v8 = v12;
        *v7.i8 = v13;
        goto LABEL_11;
      }

      v10 = *(v6 + 8);
    }

    else
    {
      v10 = *v6;
    }

    v7 = vextq_s8(v10, v10, 8uLL);
    goto LABEL_15;
  }

  if (!a3)
  {
    v7.i64[0] = *(v6 + 24);
    v8 = *v6;
    goto LABEL_11;
  }

  if (a3 <= 32)
  {
    goto LABEL_8;
  }

  if (a3 != 33)
  {
    v11 = vcvts_n_f32_u32(a3 - 33, 5uLL);
    OMPie::getArcIn(this, vcvts_n_f32_u32(a3 - 34, 5uLL), &v13);
    OMPie::getArcIn(this, v11, &v12);
    goto LABEL_9;
  }

  v7.i64[0] = *(v6 + 16);
  v8 = *(v6 + 32);
LABEL_11:
  v7.u64[1] = v8;
LABEL_15:
  *a4 = v7;
}

__n128 OMPie::getNextEdgeSweep@<Q0>(float32x2_t **this@<X0>, int a2@<W1>, int a3@<W2>, __n128 *a4@<X8>)
{
  if (a2)
  {
    v6 = a3 / 31.0;
    OMPie::getArcOut(this, v6, &v11);
    OMPie::getArcIn(this, v6, &v10);
    v8 = v10;
    result.n128_u64[0] = v11;
  }

  else
  {
    v9 = this[5];
    OMPie::getArcOut(this, a3 / 31.0, &v11);
    result.n128_u64[0] = v11;
    v8 = v9[1];
  }

  result.n128_u64[1] = v8;
  *a4 = result;
  return result;
}

void OMPie::getArea(OMPie *this)
{
  v2 = *(this + 5);
  if (OMPie::isQuadActive(this))
  {
    OMUtil::angle2PI(v2, v2 + 2, v3);
    OMUtil::angle2PI((*(this + 5) + 24), (*(this + 5) + 32), v4);
    __asm { FMOV            V1.2S, #0.25 }
  }

  else
  {
    v10 = *(this + 5);
    v11 = *(v10 + 8);
    v12 = *(v10 + 12);
    v13 = v2->var0[0] - v11;
    v14 = v2->var0[1] - v12;
    v15 = v2[2].var0[0] - v11;
    v16 = v2[2].var0[1] - v12;
    *v18 = v13;
    *&v18[1] = v14;
    v17.var0[0] = v15;
    v17.var0[1] = v16;
    OMUtil::angle2PI(v18, &v17, v3);
  }
}

void OMSamples::updateTolAddSamples(uint64_t a1, uint64_t a2)
{
  v19 = 0;
  v20 = 0;
  __p = 0;
  v4 = *(a1 + 16);
  v5 = *v4;
  if (v4[1] != *v4)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      v8 = *(v5 + 8 * v6);
      if ((*(v8 + 8) | 2) == 3)
      {
        std::vector<Vec3f>::__insert_with_size[abi:ne200100]<std::__wrap_iter<Vec3f*>,std::__wrap_iter<Vec3f*>>(&__p, v19, *(v8 + 48), *(v8 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(v8 + 56) - *(v8 + 48)) >> 2));
        v4 = *(a1 + 16);
        v5 = *v4;
        *(a1 + 8) = *(*(*v4 + 8 * v6) + 12);
      }

      v6 = v7++;
    }

    while (v6 < (v4[1] - v5) >> 3);
  }

  OMUtil::reduceSample(&__p, (a1 + 24), 5.62950094e14);
  *(a1 + 56) = *(a1 + 48);
  v14 = *(a1 + 24);
  if ((-1431655765 * ((*(a1 + 32) - v14) >> 2)) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      OMKeyer2DColorUtil::rgb2hsl((v14 + v15), v17, a2, v9, v10, v11, v12, v13);
      std::vector<Vec3f>::push_back[abi:ne200100]((a1 + 48), v17);
      ++v16;
      v14 = *(a1 + 24);
      v15 += 12;
    }

    while (v16 < (-1431655765 * ((*(a1 + 32) - v14) >> 2)));
  }

  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }
}

void sub_25FF28694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OMAutoSamples::OMAutoSamples(uint64_t a1, char **a2)
{
  *(a1 + 8) = 3;
  *(a1 + 12) = 1;
  *(a1 + 16) = 10;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 1;
  *a1 = &unk_287259FF0;
  v3 = (a1 + 48);
  if (v3 != a2)
  {
    std::vector<Vec3f>::__assign_with_size[abi:ne200100]<Vec3f*,Vec3f*>(v3, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 2));
  }

  return a1;
}

void OMRect::OMRect(OMRect *this, float a2, float a3, float a4, float a5, int a6, char a7, int a8)
{
  *(this + 2) = a6;
  *(this + 12) = a7;
  *(this + 4) = a8;
  *(this + 24) = 0u;
  v13 = (this + 24);
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 1;
  *this = &unk_287259C10;
  v19 = a2;
  v20 = a3;
  v14 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(this + 3, &v19);
  v15 = *(this + 5);
  *(this + 4) = v14;
  v19 = a2;
  v20 = a5;
  if (v14 >= v15)
  {
    v16 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v13, &v19);
    v15 = *(this + 5);
  }

  else
  {
    *v14 = a2;
    v14[1] = a5;
    v16 = v14 + 2;
  }

  *(this + 4) = v16;
  v19 = a4;
  v20 = a5;
  if (v16 >= v15)
  {
    v17 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v13, &v19);
    v15 = *(this + 5);
  }

  else
  {
    *v16 = a4;
    v16[1] = a5;
    v17 = v16 + 2;
  }

  *(this + 4) = v17;
  v19 = a4;
  v20 = a3;
  if (v17 >= v15)
  {
    v18 = std::vector<Vec2f>::__emplace_back_slow_path<Vec2f>(v13, &v19);
  }

  else
  {
    *v17 = a4;
    v17[1] = a3;
    v18 = (v17 + 2);
  }

  *(this + 4) = v18;
}

char *std::vector<Vec3f>::__assign_with_size[abi:ne200100]<Vec3f*,Vec3f*>(char **a1, char *a2, char *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Vec3f>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 1) = *(v5 + 1);
      *(result + 2) = *(v5 + 2);
      v5 += 12;
      result += 12;
    }

    a1[1] = result;
  }

  else
  {
    v13 = &a2[v12 - result];
    if (v12 != result)
    {
      v14 = result;
      v15 = a2;
      do
      {
        *v14 = *v15;
        *(v14 + 1) = *(v15 + 1);
        *(v14 + 2) = *(v15 + 2);
        v15 += 12;
        v14 += 12;
      }

      while (v15 != v13);
    }

    if (v13 == a3)
    {
      v17 = v12;
    }

    else
    {
      v16 = a2 - result;
      v17 = v12;
      do
      {
        v18 = &v17[v16];
        *v12 = *&v17[v16];
        *(v12 + 1) = *&v17[v16 + 4];
        *(v12 + 2) = *&v17[v16 + 8];
        v12 += 12;
        v17 += 12;
      }

      while (v18 + 12 != a3);
    }

    a1[1] = v17;
  }

  return result;
}

void std::vector<Vec3f>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Vec3f>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t std::vector<Vec3f>::__init_with_size[abi:ne200100]<Vec3f*,Vec3f*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<Vec3f>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FF28C00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void OMColorUtil::getRGBToYCbCrMatrix(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, Mat4f *a9@<X8>)
{
  *&v11 = 0;
  *(&v11 + 1) = 0x3F80000000000000;
  if (a1 == 1)
  {
    *&v9 = 0xBEEB68E03F000000;
    *(&v9 + 1) = 3173300474;
    Mat4f::Mat4f(a9, 0.2627, 0.678, 0.059302, 0.0, -0.13963, -0.36037, 0.5, 0.0, a2, a3, a4, a5, a6, a7, a8, v9, v11);
  }

  else
  {
    *&v10 = 0xBEE887123F000000;
    *(&v10 + 1) = 3174811502;
    Mat4f::Mat4f(a9, 0.21264, 0.71517, 0.072192, 0.0, -0.11459, -0.38541, 0.5, 0.0, a2, a3, a4, a5, a6, a7, a8, v10, v11);
  }
}

void OMColorUtil::getRec2020to709Matrix(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, Mat4f *a8@<X8>)
{
  *&v10 = 0;
  *(&v10 + 1) = 0x3F80000000000000;
  *&v9 = 0xBDCE075FBC95182BLL;
  *(&v9 + 1) = 1066348944;
  Mat4f::Mat4f(a8, 1.6605, -0.5876, -0.0728, 0.0, -0.1246, 1.1329, -0.0083, 0.0, a1, a2, a3, a4, a5, a6, a7, v9, v10);
}

void OMColorUtil::Level4f(OMColorUtil *this@<X0>, float a2@<S0>, float a3@<S1>, float32x4_t *a4@<X8>)
{
  v14.var0[0] = a2;
  *&v14.var0[1] = 0;
  Mat4f::MakeHTrans(v15, &v14);
  v12.var0[0] = (a3 + 1.0) - a2;
  __asm { FMOV            V0.2S, #1.0 }

  *&v12.var0[1] = _D0;
  Mat4f::MakeHScale(v13, &v12);
  Mat4f::operator*(v15, v13, a4);
}

float OMColorUtil::RGB2LumaHS(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OMColorUtil::getRGBToYCbCrMatrix(a3, a2, a3, a4, a5, a6, a7, a8, v19);
  v16 = *a1;
  v17 = *(a1 + 2);
  v18 = 1065353216;
  operator*(v19, &v16, &v20);
  proj(&v20, &v21, v10);
  v11 = v21.f32[1];
  *a2 = v21.i32[0];
  v12 = v22;
  v13 = atan2f(v22, v11);
  if (v13 < 0.0)
  {
    v13 = v13 + 6.2832;
  }

  result = v13 / 6.2832;
  v15 = sqrtf((v11 * v11) + (v12 * v12));
  *(a2 + 4) = result;
  *(a2 + 8) = v15 + v15;
  return result;
}

float OMKeyer2DColorUtil::rgb2hsl(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OMColorUtil::RGB2LumaHS(a1, &v10, a3, a4, a5, a6, a7, a8);
  *a2 = v11;
  result = v10;
  *(a2 + 8) = v10;
  return result;
}

void sub_25FF29C64(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void sub_25FF2A20C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF2A350(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x25FF2A344);
}

void sub_25FF2A534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF2A80C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF2A998(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FF2AC20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  (*(*v11 + 24))(v11);
  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(a1);
}

const char *HgcRetimeAddBlend2::GetProgram(HgcRetimeAddBlend2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000031d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    output.color0 = float4(r0)*hg_Params[0];\n    output.color0 = float4(r1)*hg_Params[1] + output.color0;\n    return output;\n}\n//MD5=a6f2738f:8a109c49:9f8e303a:93873d7d\n//SIG=00400000:00000003:00000003:00000003:0000:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000300\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    output.color0 = r0*hg_Params[0];\n    output.color0 = r1*hg_Params[1] + output.color0;\n    return output;\n}\n//MD5=1be635f9:660b7dcc:e57c3030:63e78bbe\n//SIG=00000000:00000003:00000003:00000000:0000:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    gl_FragColor = r0*hg_ProgramLocal0;\n    gl_FragColor = r1*hg_ProgramLocal1 + gl_FragColor;\n}\n//MD5=429bb167:5e6f191c:22f11cc4:fb4e8fd4\n//SIG=00000000:00000003:00000003:00000000:0000:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FF2AE38(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF2AF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF2AFC0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF2AFB8);
}

uint64_t HgcRetimeAddBlend2::BindTexture(HgcRetimeAddBlend2 *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcRetimeAddBlend2::Bind(HgcRetimeAddBlend2 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcRetimeAddBlend2::RenderTile(HgcRetimeAddBlend2 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 12);
    v7 = 16 * *(a2 + 22);
    v8 = *(a2 + 10);
    v9 = 16 * *(a2 + 26);
    v10 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = *(this + 51);
          v15 = v14[1];
          v16 = vaddq_f32(vmulq_f32(*(v8 + v12 - 32), *v14), vmulq_f32(*(v6 + v12 - 32), v15));
          v17 = vaddq_f32(vmulq_f32(*(v8 + v12 - 16), *v14), vmulq_f32(*(v6 + v12 - 16), v15));
          v18 = vaddq_f32(vmulq_f32(*(v8 + v12), *v14), vmulq_f32(*(v6 + v12), v15));
          v19 = vaddq_f32(vmulq_f32(*(v8 + v12 + 16), *v14), vmulq_f32(*(v6 + v12 + 16), v15));
          v20 = (v5 + v12);
          v20[-2] = v16;
          v20[-1] = v17;
          *v20 = v18;
          v20[1] = v19;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vaddq_f32(vmulq_f32(*(v8 + 16 * v11), **(this + 51)), vmulq_f32(*(v6 + 16 * v11), *(*(this + 51) + 16)));
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcRetimeAddBlend2::GetDOD(HgcRetimeAddBlend2 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcRetimeAddBlend2::GetROI(HgcRetimeAddBlend2 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcRetimeAddBlend2::HgcRetimeAddBlend2(HgcRetimeAddBlend2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725A048;
  operator new();
}

void HgcRetimeAddBlend2::~HgcRetimeAddBlend2(HGNode *this)
{
  *this = &unk_28725A048;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcRetimeAddBlend2::~HgcRetimeAddBlend2(this);

  HGObject::operator delete(v1);
}

uint64_t HgcRetimeAddBlend2::SetParameter(HgcRetimeAddBlend2 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcRetimeAddBlend2::GetParameter(HgcRetimeAddBlend2 *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcInverseSimpleToneCurve::GetProgram(HgcInverseSimpleToneCurve *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000374\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz)*half3(hg_Params[0].xyz);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2.xyz = r1.xyz*c0.xxx;\n    r0.xyz = half3(r0.xyz < c0.yyy);\n    output.color0.xyz = float3(r0.xyz)*float3(r2.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=bd3c0a0c:448bf4c3:fc12ffab:811426d6\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000344\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz)*hg_Params[0].xyz;\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2.xyz = r1.xyz*c0.xxx;\n    r0.xyz = float3(r0.xyz < c0.yyy);\n    output.color0.xyz = r0.xyz*r2.xyz + r1.xyz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=2a737f2f:14893905:3367d370:94190f6c\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000344\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = abs(r0.xyz)*hg_ProgramLocal0.xyz;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2.xyz = r1.xyz*c0.xxx;\n    r0.xyz = vec3(lessThan(r0.xyz, c0.yyy));\n    gl_FragColor.xyz = r0.xyz*r2.xyz + r1.xyz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=25754dcf:39a6290c:71b65a47:d37941f7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF2B66C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF2B76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF2B7AC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF2B7A4);
}

uint64_t HgcInverseSimpleToneCurve::BindTexture(HgcInverseSimpleToneCurve *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcInverseSimpleToneCurve::Bind(HgcInverseSimpleToneCurve *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcInverseSimpleToneCurve::RenderTile(HgcInverseSimpleToneCurve *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    do
    {
      if (v4 < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = *(this + 51);
          v15 = *(v14 + 16);
          v16 = vmulq_f32(vabsq_f32(v12), *v14);
          v17 = vmulq_f32(vabsq_f32(v13), *v14);
          v19 = *(v14 + 32);
          v18 = *(v14 + 48);
          v20 = vorrq_s8(vandq_s8(v19, v16), v18);
          v21 = *(v14 + 64);
          v22 = *(v14 + 80);
          v23 = vorrq_s8(vandq_s8(v19, v17), v18);
          v24 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v16, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v21, v16)));
          v25 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v21, v17)));
          v26 = *(v14 + 96);
          v27 = *(v14 + 112);
          v28 = vandq_s8(v18, vcgtq_f32(v20, v27));
          v29 = vandq_s8(v18, vcgtq_f32(v23, v27));
          v30 = *(v14 + 128);
          v31 = *(v14 + 144);
          v32 = vsubq_f32(v25, v26);
          v33 = vaddq_f32(vsubq_f32(v24, v26), v28);
          v34 = vsubq_f32(vsubq_f32(v20, v18), vmulq_f32(vmulq_f32(v30, v28), v20));
          v35 = vsubq_f32(vsubq_f32(v23, v18), vmulq_f32(vmulq_f32(v30, v29), v23));
          v36 = *(v14 + 160);
          v37 = *(v14 + 176);
          v38 = *(v14 + 192);
          v39 = *(v14 + 208);
          v40 = vaddq_f32(vaddq_f32(v32, v29), vmulq_f32(v35, vaddq_f32(vaddq_f32(v37, vmulq_f32(v35, v38)), vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(v31, vmulq_f32(v36, v35))))));
          v41 = vmulq_f32(v15, vaddq_f32(v33, vmulq_f32(v34, vaddq_f32(vaddq_f32(v37, vmulq_f32(v34, v38)), vmulq_f32(vmulq_f32(v34, v34), vaddq_f32(v31, vmulq_f32(v36, v34)))))));
          v42 = vmulq_f32(v15, v40);
          v43 = vmaxq_f32(v41, v39);
          v44 = vmaxq_f32(v42, v39);
          v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
          v46 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
          v47 = vsubq_f32(v45, vandq_s8(v18, vcgtq_f32(v45, v43)));
          v48 = vsubq_f32(v46, vandq_s8(v18, vcgtq_f32(v46, v44)));
          v49 = vsubq_f32(v43, v47);
          v50 = vsubq_f32(v44, v48);
          v51 = *(v14 + 224);
          v52 = *(v14 + 240);
          v53 = vaddq_f32(v51, vmulq_f32(v52, v49));
          v54 = vaddq_f32(v51, vmulq_f32(v52, v50));
          v55 = vmulq_f32(v49, v53);
          v56 = *(v14 + 256);
          v57 = *(v14 + 272);
          v58 = vmulq_f32(vaddq_f32(v18, vmulq_f32(v49, vaddq_f32(v56, v55))), vshlq_n_s32(vaddq_s32(v57, vcvtq_s32_f32(v47)), 0x17uLL));
          v59 = vmulq_f32(vaddq_f32(v18, vmulq_f32(v50, vaddq_f32(v56, vmulq_f32(v50, v54)))), vshlq_n_s32(vaddq_s32(v57, vcvtq_s32_f32(v48)), 0x17uLL));
          v60 = *(v14 + 288);
          v61 = *(v14 + 304);
          v62 = vandq_s8(v18, vcgtq_f32(v61, v12));
          v63 = vandq_s8(v18, vcgtq_f32(v61, v13));
          v64 = *(v14 + 320);
          v65 = (v5 + v10);
          v65[-1] = vbslq_s8(v64, v12, vaddq_f32(v58, vmulq_f32(vmulq_f32(v60, v58), vbslq_s8(v64, v12, v62))));
          *v65 = vbslq_s8(v64, v13, vaddq_f32(v59, vmulq_f32(vmulq_f32(v60, v59), vbslq_s8(v64, v13, v63))));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v66 = *(v6 + 16 * v9);
        v67 = *(this + 51);
        v68 = vmulq_f32(vabsq_f32(v66), *v67);
        v69 = *(v67 + 48);
        v70 = vorrq_s8(vandq_s8(*(v67 + 32), v68), v69);
        v71 = vandq_s8(v69, vcgtq_f32(v70, *(v67 + 112)));
        v72 = vsubq_f32(vsubq_f32(v70, v69), vmulq_f32(vmulq_f32(*(v67 + 128), v71), v70));
        v73 = vmaxq_f32(vmulq_f32(*(v67 + 16), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(*(v67 + 80), vcgtq_f32(*(v67 + 64), v68))), *(v67 + 96)), v71), vmulq_f32(v72, vaddq_f32(vaddq_f32(*(v67 + 176), vmulq_f32(v72, *(v67 + 192))), vmulq_f32(vmulq_f32(v72, v72), vaddq_f32(*(v67 + 144), vmulq_f32(*(v67 + 160), v72))))))), *(v67 + 208));
        v74 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
        v75 = vsubq_f32(v74, vandq_s8(v69, vcgtq_f32(v74, v73)));
        v76 = vsubq_f32(v73, v75);
        v77 = vmulq_f32(vaddq_f32(v69, vmulq_f32(v76, vaddq_f32(*(v67 + 256), vmulq_f32(v76, vaddq_f32(*(v67 + 224), vmulq_f32(*(v67 + 240), v76)))))), vshlq_n_s32(vaddq_s32(*(v67 + 272), vcvtq_s32_f32(v75)), 0x17uLL));
        *(v5 + 16 * v9) = vbslq_s8(*(v67 + 320), v66, vaddq_f32(v77, vmulq_f32(vmulq_f32(*(v67 + 288), v77), vbslq_s8(*(v67 + 320), v66, vandq_s8(v69, vcgtq_f32(*(v67 + 304), v66))))));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcInverseSimpleToneCurve::GetDOD(HgcInverseSimpleToneCurve *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcInverseSimpleToneCurve::GetROI(HgcInverseSimpleToneCurve *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcInverseSimpleToneCurve::HgcInverseSimpleToneCurve(HgcInverseSimpleToneCurve *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725A2B0;
  operator new();
}

void HgcInverseSimpleToneCurve::~HgcInverseSimpleToneCurve(HGNode *this)
{
  *this = &unk_28725A2B0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcInverseSimpleToneCurve::~HgcInverseSimpleToneCurve(this);

  HGObject::operator delete(v1);
}

uint64_t HgcInverseSimpleToneCurve::SetParameter(HgcInverseSimpleToneCurve *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v9 = *(this + 51);
    if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a3.n128_f32[0] || *(v9 + 24) != a3.n128_f32[0] || *(v9 + 28) != 0.0)
    {
      v10 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v10.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v9 + 16) = v10;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v9 + 352) = a3;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(this + 51);
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != 0.0)
    {
      v8 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v8.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 336) = a3;
LABEL_13:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcInverseSimpleToneCurve::GetParameter(HgcInverseSimpleToneCurve *this, int a2, float *a3)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 364;
    v4 = 360;
    v5 = 356;
    v6 = 352;
  }

  else
  {
    v3 = 348;
    v4 = 344;
    v5 = 340;
    v6 = 336;
  }

  v7 = 0;
  v8 = *(this + 51);
  *a3 = *(v8 + v6);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v4);
  a3[3] = *(v8 + v3);
  return v7;
}

const char *HgcSimpleToneCurve::GetProgram(HgcSimpleToneCurve *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000374\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = pow(fabs(r0.xyz), half3(hg_Params[1].xyz));\n    r1.xyz = r1.xyz*half3(hg_Params[0].xyz);\n    r2.xyz = r1.xyz*c0.xxx;\n    r0.xyz = half3(r0.xyz < c0.yyy);\n    output.color0.xyz = float3(r0.xyz)*float3(r2.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=121c40eb:fea358e3:1c5eacae:1ed8c37c\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000344\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = pow(fabs(r0.xyz), hg_Params[1].xyz);\n    r1.xyz = r1.xyz*hg_Params[0].xyz;\n    r2.xyz = r1.xyz*c0.xxx;\n    r0.xyz = float3(r0.xyz < c0.yyy);\n    output.color0.xyz = r0.xyz*r2.xyz + r1.xyz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=6df6fe31:0f0f92a3:1cae0ccc:4b490fb3\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000344\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = pow(abs(r0.xyz), hg_ProgramLocal1.xyz);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.xyz;\n    r2.xyz = r1.xyz*c0.xxx;\n    r0.xyz = vec3(lessThan(r0.xyz, c0.yyy));\n    gl_FragColor.xyz = r0.xyz*r2.xyz + r1.xyz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=6d930ca3:a6a50e9c:15819e55:a3a8ad06\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF2C190(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF2C290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF2C2D0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF2C2C8);
}

uint64_t HgcSimpleToneCurve::BindTexture(HgcSimpleToneCurve *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcSimpleToneCurve::Bind(HgcSimpleToneCurve *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSimpleToneCurve::RenderTile(HgcSimpleToneCurve *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    do
    {
      if (v4 < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = vabsq_f32(v12);
          v15 = *(this + 51);
          v17 = *(v15 + 32);
          v16 = *(v15 + 48);
          v18 = vabsq_f32(v13);
          v19 = vorrq_s8(vandq_s8(v17, v14), v16);
          v20 = *(v15 + 64);
          v21 = *(v15 + 80);
          v22 = vorrq_s8(vandq_s8(v17, v18), v16);
          v23 = vcgtq_f32(v20, v14);
          v24 = vandq_s8(v21, vcgtq_f32(v20, v18));
          v25 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v14, 0x17uLL)), vandq_s8(v21, v23));
          v26 = *(v15 + 96);
          v27 = *(v15 + 112);
          v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), v24);
          v29 = vsubq_f32(v25, v26);
          v30 = vandq_s8(v16, vcgtq_f32(v19, v27));
          v31 = vandq_s8(v16, vcgtq_f32(v22, v27));
          v32 = vsubq_f32(v28, v26);
          v33 = *(v15 + 128);
          v34 = *(v15 + 144);
          v35 = vsubq_f32(vsubq_f32(v19, v16), vmulq_f32(vmulq_f32(v33, v30), v19));
          v36 = vsubq_f32(vsubq_f32(v22, v16), vmulq_f32(vmulq_f32(v33, v31), v22));
          v37 = *(v15 + 160);
          v38 = *(v15 + 176);
          v39 = vaddq_f32(v34, vmulq_f32(v37, v35));
          v40 = vaddq_f32(v34, vmulq_f32(v37, v36));
          v41 = *(v15 + 192);
          v42 = *(v15 + 208);
          v43 = vaddq_f32(vaddq_f32(v32, v31), vmulq_f32(v36, vaddq_f32(vaddq_f32(v38, vmulq_f32(v36, v41)), vmulq_f32(vmulq_f32(v36, v36), v40))));
          v44 = *(v15 + 16);
          v45 = vmaxq_f32(vmulq_f32(v44, vaddq_f32(vaddq_f32(v29, v30), vmulq_f32(v35, vaddq_f32(vaddq_f32(v38, vmulq_f32(v35, v41)), vmulq_f32(vmulq_f32(v35, v35), v39))))), v42);
          v46 = vmaxq_f32(vmulq_f32(v44, v43), v42);
          v47 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
          v48 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
          v49 = vsubq_f32(v47, vandq_s8(v16, vcgtq_f32(v47, v45)));
          v50 = vsubq_f32(v48, vandq_s8(v16, vcgtq_f32(v48, v46)));
          v51 = vsubq_f32(v45, v49);
          v52 = *(v15 + 224);
          v53 = *(v15 + 240);
          v54 = vsubq_f32(v46, v50);
          v55 = vaddq_f32(v52, vmulq_f32(v53, v51));
          v56 = vaddq_f32(v52, vmulq_f32(v53, v54));
          v57 = *(v15 + 256);
          v58 = *(v15 + 272);
          v59 = vmulq_f32(*v15, vmulq_f32(vaddq_f32(v16, vmulq_f32(v51, vaddq_f32(v57, vmulq_f32(v51, v55)))), vshlq_n_s32(vaddq_s32(v58, vcvtq_s32_f32(v49)), 0x17uLL)));
          v60 = vmulq_f32(*v15, vmulq_f32(vaddq_f32(v16, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, v56)))), vshlq_n_s32(vaddq_s32(v58, vcvtq_s32_f32(v50)), 0x17uLL)));
          v61 = *(v15 + 288);
          v62 = *(v15 + 304);
          v63 = vandq_s8(v16, vcgtq_f32(v62, v12));
          v64 = vandq_s8(v16, vcgtq_f32(v62, v13));
          v65 = *(v15 + 320);
          v66 = (v5 + v10);
          v66[-1] = vbslq_s8(v65, v12, vaddq_f32(v59, vmulq_f32(vmulq_f32(v61, v59), vbslq_s8(v65, v12, v63))));
          *v66 = vbslq_s8(v65, v13, vaddq_f32(v60, vmulq_f32(vmulq_f32(v61, v60), vbslq_s8(v65, v13, v64))));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v67 = *(v6 + 16 * v9);
        v68 = vabsq_f32(v67);
        v69 = *(this + 51);
        v70 = *(v69 + 48);
        v71 = vorrq_s8(vandq_s8(*(v69 + 32), v68), v70);
        v72 = vandq_s8(v70, vcgtq_f32(v71, *(v69 + 112)));
        v73 = vsubq_f32(vsubq_f32(v71, v70), vmulq_f32(vmulq_f32(*(v69 + 128), v72), v71));
        v74 = vmaxq_f32(vmulq_f32(*(v69 + 16), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(*(v69 + 80), vcgtq_f32(*(v69 + 64), v68))), *(v69 + 96)), v72), vmulq_f32(v73, vaddq_f32(vaddq_f32(*(v69 + 176), vmulq_f32(v73, *(v69 + 192))), vmulq_f32(vmulq_f32(v73, v73), vaddq_f32(*(v69 + 144), vmulq_f32(*(v69 + 160), v73))))))), *(v69 + 208));
        v75 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
        v76 = vsubq_f32(v75, vandq_s8(v70, vcgtq_f32(v75, v74)));
        v77 = vsubq_f32(v74, v76);
        v78 = vmulq_f32(*v69, vmulq_f32(vaddq_f32(v70, vmulq_f32(v77, vaddq_f32(*(v69 + 256), vmulq_f32(v77, vaddq_f32(*(v69 + 224), vmulq_f32(*(v69 + 240), v77)))))), vshlq_n_s32(vaddq_s32(*(v69 + 272), vcvtq_s32_f32(v76)), 0x17uLL)));
        *(v5 + 16 * v9) = vbslq_s8(*(v69 + 320), v67, vaddq_f32(v78, vmulq_f32(vmulq_f32(*(v69 + 288), v78), vbslq_s8(*(v69 + 320), v67, vandq_s8(v70, vcgtq_f32(*(v69 + 304), v67))))));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcSimpleToneCurve::GetDOD(HgcSimpleToneCurve *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcSimpleToneCurve::GetROI(HgcSimpleToneCurve *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcSimpleToneCurve::HgcSimpleToneCurve(HgcSimpleToneCurve *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725A518;
  operator new();
}

void HgcSimpleToneCurve::~HgcSimpleToneCurve(HGNode *this)
{
  *this = &unk_28725A518;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcSimpleToneCurve::~HgcSimpleToneCurve(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSimpleToneCurve::SetParameter(HgcSimpleToneCurve *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v9 = *(this + 51);
    if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a3.n128_f32[0] || *(v9 + 24) != a3.n128_f32[0] || *(v9 + 28) != 0.0)
    {
      v10 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v10.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v9 + 16) = v10;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v9 + 352) = a3;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(this + 51);
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != 0.0)
    {
      v8 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v8.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 336) = a3;
LABEL_13:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcSimpleToneCurve::GetParameter(HgcSimpleToneCurve *this, int a2, float *a3)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 364;
    v4 = 360;
    v5 = 356;
    v6 = 352;
  }

  else
  {
    v3 = 348;
    v4 = 344;
    v5 = 340;
    v6 = 336;
  }

  v7 = 0;
  v8 = *(this + 51);
  *a3 = *(v8 + v6);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v4);
  a3[3] = *(v8 + v3);
  return v7;
}

const char *HgcRenderToEquirect::GetProgram(HgcRenderToEquirect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1314;
    }

    else
    {
      return aMetal10Len0000_1315;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_487;
  }
}

void sub_25FF2CCB4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_26084A8E0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF2D0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF2D154()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF2D14CLL);
}

uint64_t HgcRenderToEquirect::BindTexture(HgcRenderToEquirect *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v13 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
        v8.n128_f32[0] = *(a2 + 60);
        v9.n128_f32[0] = *(a2 + 61);
        if (v13)
        {
          v10 = *(*a2 + 136);
          v6.n128_u32[0] = 1.0;
          v7.n128_u32[0] = 1.0;
        }

        else
        {
          v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
          v10 = *(*a2 + 136);
          v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
        }

        v16 = a2;
        v17 = 21;
        break;
      case 4:
        v15 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
        v8.n128_f32[0] = *(a2 + 60);
        v9.n128_f32[0] = *(a2 + 61);
        if (v15)
        {
          v10 = *(*a2 + 136);
          v6.n128_u32[0] = 1.0;
          v7.n128_u32[0] = 1.0;
        }

        else
        {
          v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
          v10 = *(*a2 + 136);
          v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
        }

        v16 = a2;
        v17 = 22;
        break;
      case 5:
        v11 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
        v8.n128_f32[0] = *(a2 + 60);
        v9.n128_f32[0] = *(a2 + 61);
        if (v11)
        {
          v10 = *(*a2 + 136);
          v6.n128_u32[0] = 1.0;
          v7.n128_u32[0] = 1.0;
        }

        else
        {
          v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
          v10 = *(*a2 + 136);
          v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
        }

        v16 = a2;
        v17 = 23;
        break;
      default:
        return result;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v14 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
      v8.n128_f32[0] = *(a2 + 60);
      v9.n128_f32[0] = *(a2 + 61);
      if (v14)
      {
        v10 = *(*a2 + 136);
        v6.n128_u32[0] = 1.0;
        v7.n128_u32[0] = 1.0;
      }

      else
      {
        v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
        v10 = *(*a2 + 136);
        v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
      }

      v16 = a2;
      v17 = 18;
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
      v8.n128_f32[0] = *(a2 + 60);
      v9.n128_f32[0] = *(a2 + 61);
      if (v5)
      {
        v10 = *(*a2 + 136);
        v6.n128_u32[0] = 1.0;
        v7.n128_u32[0] = 1.0;
      }

      else
      {
        v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
        v10 = *(*a2 + 136);
        v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
      }

      v16 = a2;
      v17 = 20;
    }
  }

  else
  {
    v12 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    v8.n128_f32[0] = *(a2 + 60);
    v9.n128_f32[0] = *(a2 + 61);
    if (v12)
    {
      v10 = *(*a2 + 136);
      v6.n128_u32[0] = 1.0;
      v7.n128_u32[0] = 1.0;
    }

    else
    {
      v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v10 = *(*a2 + 136);
      v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v16 = a2;
    v17 = 19;
  }

  v10(v16, v17, v8, v9, v6, v7);
  return 0;
}

uint64_t HgcRenderToEquirect::Bind(HgcRenderToEquirect *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*a2 + 144))(a2, 12, *(this + 51) + 192, 1);
  (*(*a2 + 144))(a2, 13, *(this + 51) + 208, 1);
  (*(*a2 + 144))(a2, 14, *(this + 51) + 224, 1);
  (*(*a2 + 144))(a2, 15, *(this + 51) + 240, 1);
  (*(*a2 + 144))(a2, 16, *(this + 51) + 256, 1);
  (*(*a2 + 144))(a2, 17, *(this + 51) + 272, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcRenderToEquirect::RenderTile(HgcRenderToEquirect *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = *(a2 + 2);
    v12 = 16 * *(a2 + 6);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14.i64[0] = 0x8000000080000000;
    v14.i64[1] = 0x8000000080000000;
    v15 = v9;
    do
    {
      if (v10 >= 1)
      {
        v16 = 0;
        v17 = v15;
        do
        {
          v18 = *(this + 51);
          v19 = *v18;
          v20 = vextq_s8(*(v18 + 1), *(v18 + 1), 8uLL);
          v21 = v18[18];
          v23 = v18[19];
          v22 = v18[20];
          v24 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v20), v21), v23), v22);
          v25 = vmulq_f32(v24, vrecpsq_f32(v20, v24));
          v26 = vextq_s8(*(v18 + 2), *(v18 + 2), 4uLL);
          v27 = vminq_f32(vmaxq_f32(vmulq_f32(v23, vrecpeq_f32(v26)), v21), v22);
          v28 = vmulq_f32(v27, vrecpsq_f32(v26, v27));
          v29 = v18[21];
          v30 = v18[22];
          v31 = vbslq_s8(v29, v25, v28);
          v32 = vmulq_f32(v17, *(v18 + 4));
          v33 = vaddq_f32(v32, vextq_s8(v32, v32, 4uLL));
          v33.i64[0] = vaddq_f32(v33, vdupq_laneq_s64(v33, 1)).u64[0];
          v34 = vmulq_f32(v17, *(v18 + 3));
          v35 = vaddq_f32(v34, vextq_s8(v34, v34, 4uLL));
          v33.i64[1] = v31.i64[1];
          v36 = vbslq_s8(v30, vaddq_f32(v35, vextq_s8(v35, v35, 8uLL)), v33);
          v37.i64[0] = vaddq_f32(*(v18 + 17), v36).u64[0];
          v37.i64[1] = v36.i64[1];
          v38 = vmulq_laneq_f32(v37, v36, 2);
          v39 = vbslq_s8(v30, v38, v37);
          v40 = vmulq_laneq_f32(v39, v39, 3);
          v41.i64[0] = vbslq_s8(v30, vaddq_f32(v21, vmulq_f32(v23, vbslq_s8(v30, v38, v40))), v40).u64[0];
          v42 = v18[23];
          v43 = v18[24];
          v44 = vmulq_n_f32(v42, v41.f32[0]);
          v45 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
          v46 = vsubq_f32(v44, vsubq_f32(v45, vandq_s8(v43, vcgtq_f32(v45, v44))));
          v48 = v18[25];
          v47 = v18[26];
          v49 = vsubq_f32(vabdq_f32(v46, v48), v47);
          v50 = vmulq_f32(v49, v49);
          v51 = v18[27];
          v52 = v18[28];
          v53 = v18[29];
          v54 = v18[30];
          v41.i64[1] = vmulq_f32(v49, vaddq_f32(v54, vmulq_f32(v50, vaddq_f32(v53, vmulq_f32(v50, vaddq_f32(v52, vmulq_f32(v51, v50))))))).i64[1];
          v55 = v18[31];
          v56 = v18[32];
          v57 = vbslq_s8(v55, vmulq_laneq_f32(v41, v54, 2), v41);
          v58 = vaddq_f32(v52, vmulq_lane_f32(v53, *v57.i8, 1));
          v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
          v60 = vaddq_f32(v52, vabdq_f32(vsubq_f32(v58, vsubq_f32(v59, vandq_s8(v51, vcgtq_f32(v59, v58)))), v47));
          v61 = vmulq_f32(v60, v60);
          v62 = vbslq_s8(v29, vmulq_f32(v60, vaddq_f32(v56, vmulq_f32(v61, vaddq_f32(v42, vmulq_f32(v61, vaddq_f32(v43, vmulq_f32(v48, v61))))))), v57);
          v63 = vaddq_f32(v54, vmulq_f32(v56, v62));
          v64 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
          v65 = vaddq_f32(v54, vabdq_f32(vsubq_f32(v63, vsubq_f32(v64, vandq_s8(v53, vcgtq_f32(v64, v63)))), v52));
          v66 = vmulq_f32(v65, v65);
          v67 = vbslq_s8(v30, vmulq_f32(v65, vaddq_f32(v43, vmulq_f32(v66, vaddq_f32(v48, vmulq_f32(v66, vaddq_f32(v47, vmulq_f32(v51, v66))))))), v62);
          v68 = vbslq_s8(v30, vmulq_laneq_f32(v67, v67, 2), v62);
          v68.i64[1] = vmulq_laneq_f32(v68, v68, 3).i64[1];
          v69 = vmulq_f32(v56, v68);
          v70 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
          v71 = vsubq_f32(vabdq_f32(vsubq_f32(v69, vsubq_f32(v70, vandq_s8(v54, vcgtq_f32(v70, v69)))), v53), v52);
          v72 = vmulq_f32(v71, v71);
          v73 = vbslq_s8(v55, vmulq_f32(v71, vaddq_f32(v43, vmulq_f32(v72, vaddq_f32(v48, vmulq_f32(v72, vaddq_f32(v47, vmulq_f32(v51, v72))))))), v68);
          v74 = vabsq_f32(v73);
          v76 = v18[33];
          v75 = v18[34];
          v77 = vbslq_s8(v76, vmaxq_f32(vbslq_s8(v76, vmaxq_f32(vextq_s8(v74, v74, 4uLL), vextq_s8(v74, v74, 8uLL)), v73), vrev64q_s32(v74)), v73);
          v78 = vminq_f32(vmaxq_f32(vrecpeq_f32(v77), v56), v22);
          v79 = vminq_f32(vmaxq_f32(vmulq_f32(v78, vrecpsq_f32(v77, v78)), v56), v22);
          v80 = vbslq_s8(v76, vmulq_f32(v79, vrecpsq_f32(v77, v79)), v73);
          v81 = vmulq_laneq_f32(v80, v80, 3);
          v82 = vminq_f32(vmaxq_f32(vmulq_n_f32(v47, vaddq_f32(v53, v81).f32[0]), v75), v51);
          v83.i64[0] = vsubq_f32(v54, vminq_f32(vmaxq_f32(vmulq_n_f32(v75, vaddq_f32(v75, vdupq_lane_s32(*v81.f32, 1)).f32[0]), v42), v54)).u64[0];
          v83.i64[1] = v82.i64[1];
          v84 = vbslq_s8(v76, vmulq_n_f32(v75, COERCE_FLOAT(*v18)), v81);
          v85 = vdupq_laneq_s32(v84, 3);
          v82.i64[0] = vsubq_f32(vmulq_n_f32(vbslq_s8(v30, vsubq_f32(v75, vdupq_laneq_s64(v82, 1)), v83), COERCE_FLOAT(*v18)), v85).u64[0];
          v86 = v18[35];
          v82.i64[1] = *(v18 + 71);
          v87 = vmulq_f32(*(v18 + 7), v82);
          v88 = vaddq_f32(v87, vextq_s8(v87, v87, 4uLL));
          v89 = vmulq_f32(*(v18 + 8), v82);
          v90 = vaddq_f32(v89, vextq_s8(v89, v89, 4uLL));
          v91 = *(a2 + 26);
          v92 = vsubq_f32(vbslq_s8(v30, vaddq_f32(v88, vextq_s8(v88, v88, 8uLL)), vaddq_f32(v90, vextq_s8(v90, v90, 8uLL))), v9);
          v93 = *(a2 + 12);
          if (v5)
          {
            v94 = vaddq_s32(vcvtq_s32_f32(v92), vcltzq_f32(v92));
            v95 = vsubq_f32(v92, vcvtq_f32_s32(v94)).u64[0];
            v96 = (v93 + 16 * (v94.i32[0] + v94.i32[1] * v91));
            v97 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), v95.f32[0]));
            v98 = vaddq_f32(v97, vmulq_lane_f32(vsubq_f32(vaddq_f32(v96[v91], vmulq_n_f32(vsubq_f32(v96[v91 + 1], v96[v91]), v95.f32[0])), v97), v95, 1));
          }

          else
          {
            v99 = vaddq_f32(v92, v13);
            v100 = vcvtq_s32_f32(v99);
            v99.i64[0] = vaddq_s32(v100, vcgtq_f32(vcvtq_f32_s32(v100), v99)).u64[0];
            v98 = *(v93 + 16 * (v99.i32[0] + v99.i32[1] * v91));
          }

          v101 = vmvnq_s8(v30);
          v102 = vmvnq_s8(v76);
          v103 = vandq_s8(v53, vcgeq_f32(vextq_s8(v81, v81, 8uLL), v42));
          v104 = vdupq_lane_s32(*v19.i8, 0).u64[0];
          v105 = vextq_s8(v86, v86, 8uLL).u64[0];
          v106 = vorrq_s8(vandq_s8(vandq_s8(v86, v101), vcgeq_f32(vrev64q_s32(v103), v86)), vandq_s8(v103, v30));
          v107 = vextq_s8(v84, v84, 8uLL);
          v108 = vorrq_s8(vandq_s8(vsubq_f32(v86, v106), v101), vandq_s8(vandq_s8(v75, v30), vcgeq_f32(v107, v86)));
          v109 = vorrq_s8(vandq_s8(v30, vsubq_f32(v75, v108)), vbicq_s8(v83, v30));
          v110 = vorrq_s8(vandq_s8(vextq_s8(v109, v109, 8uLL), v76), vandq_s8(v109, v102));
          *v111.f32 = vsub_f32(vmul_f32(v104, *&vextq_s8(v110, v110, 8uLL)), *v85.f32);
          v111.i64[1] = v105;
          v112 = vmulq_f32(v111, *(v18 + 6));
          v113 = vaddq_f32(v112, vextq_s8(v112, v112, 4uLL));
          v114 = vaddq_f32(v113, vdupq_lane_s64(v113.i64[0], 0));
          v115 = vmvnq_s8(v29);
          v116 = vmulq_f32(v111, *(v18 + 5));
          v117 = vaddq_f32(v116, vextq_s8(v116, v116, 4uLL));
          v118.i64[0] = v106.i64[0];
          v118.i64[1] = v114.i64[1];
          v119 = vorrq_s8(vandq_s8(v118, v115), vandq_s8(v29, vaddq_f32(v117, vextq_s8(v117, v117, 8uLL))));
          v120 = *(a2 + 22);
          v121 = vsubq_f32(vextq_s8(v119, v119, 8uLL), v9);
          v122 = *(a2 + 10);
          if (v5)
          {
            v123 = vaddq_s32(vcvtq_s32_f32(v121), vcltzq_f32(v121));
            v124 = vsubq_f32(v121, vcvtq_f32_s32(v123)).u64[0];
            v125 = (v122 + 16 * (v123.i32[0] + v123.i32[1] * v120));
            v126 = vaddq_f32(*v125, vmulq_n_f32(vsubq_f32(v125[1], *v125), v124.f32[0]));
            v127 = vaddq_f32(v126, vmulq_lane_f32(vsubq_f32(vaddq_f32(v125[v120], vmulq_n_f32(vsubq_f32(v125[v120 + 1], v125[v120]), v124.f32[0])), v126), v124, 1));
          }

          else
          {
            v128 = vaddq_f32(v121, v13);
            v129 = vcvtq_s32_f32(v128);
            v128.i64[0] = vaddq_s32(v129, vcgtq_f32(vcvtq_f32_s32(v129), v128)).u64[0];
            v127 = *(v122 + 16 * (v128.i32[0] + v128.i32[1] * v120));
          }

          v130 = vorrq_s8(vandq_s8(v30, vaddq_f32(vrev64q_s32(v106), v110)), vandq_s8(v110, v101));
          v131 = vorrq_s8(vandq_s8(vandq_s8(v86, v76), vcgeq_f32(vextq_s8(v130, v130, 4uLL), v86)), vandq_s8(v130, v102));
          v132 = v18[36];
          v133 = vorrq_s8(vandq_s8(v30, vminq_f32(vmaxq_f32(vmulq_lane_f32(vaddq_f32(v75, v107), *v75.f32, 1), v132), v75)), vandq_s8(v131, v101));
          v134 = vrev64q_s32(v133);
          v135 = vandq_s8(v84, v115);
          v136 = vorrq_s8(vandq_s8(v29, vsubq_f32(v132, v134)), v135);
          *v137.f32 = vsub_f32(vmul_f32(v104, vorr_s8(vand_s8(*v134.f32, *v101.i8), vand_s8(*&vextq_s8(v133, v133, 8uLL), *v30.i8))), *&vdupq_laneq_s32(v136, 3));
          v137.i64[1] = v105;
          v138 = vmulq_f32(*(v18 + 10), v137);
          v139 = vaddq_f32(v138, vextq_s8(v138, v138, 4uLL));
          v140 = vmulq_f32(*(v18 + 9), v137);
          v141 = vaddq_f32(v140, vextq_s8(v140, v140, 4uLL));
          v142 = *(a2 + 30);
          v143 = vsubq_f32(vorrq_s8(vandq_s8(v30, vaddq_f32(v141, vextq_s8(v141, v141, 8uLL))), vandq_s8(vaddq_f32(v139, vextq_s8(v139, v139, 8uLL)), v101)), v9);
          v144 = *(a2 + 14);
          if (v5)
          {
            v145 = vaddq_s32(vcvtq_s32_f32(v143), vcltzq_f32(v143));
            v146 = vsubq_f32(v143, vcvtq_f32_s32(v145)).u64[0];
            v147 = (v144 + 16 * (v145.i32[0] + v145.i32[1] * v142));
            v148 = vaddq_f32(*v147, vmulq_n_f32(vsubq_f32(v147[1], *v147), v146.f32[0]));
            v149 = vaddq_f32(v148, vmulq_lane_f32(vsubq_f32(vaddq_f32(v147[v142], vmulq_n_f32(vsubq_f32(v147[v142 + 1], v147[v142]), v146.f32[0])), v148), v146, 1));
          }

          else
          {
            v150 = vaddq_f32(v143, v13);
            v151 = vcvtq_s32_f32(v150);
            v150.i64[0] = vaddq_s32(v151, vcgtq_f32(vcvtq_f32_s32(v151), v150)).u64[0];
            v149 = *(v144 + 16 * (v150.i32[0] + v150.i32[1] * v142));
          }

          v152 = vmulq_f32(v137, *(v18 + 12));
          v153 = vaddq_f32(v152, vextq_s8(v152, v152, 4uLL));
          v154 = vmulq_f32(v137, *(v18 + 11));
          v155 = vaddq_f32(v154, vextq_s8(v154, v154, 4uLL));
          v156 = *(a2 + 34);
          v157 = vsubq_f32(vorrq_s8(vandq_s8(v30, vaddq_f32(v155, vextq_s8(v155, v155, 8uLL))), vandq_s8(vaddq_f32(v153, vextq_s8(v153, v153, 8uLL)), v101)), v9);
          v158 = *(a2 + 16);
          if (v5)
          {
            v159 = vaddq_s32(vcvtq_s32_f32(v157), vcltzq_f32(v157));
            v160 = vsubq_f32(v157, vcvtq_f32_s32(v159)).u64[0];
            v161 = (v158 + 16 * (v159.i32[0] + v159.i32[1] * v156));
            v162 = vaddq_f32(*v161, vmulq_n_f32(vsubq_f32(v161[1], *v161), v160.f32[0]));
            v163 = vaddq_f32(v162, vmulq_lane_f32(vsubq_f32(vaddq_f32(v161[v156], vmulq_n_f32(vsubq_f32(v161[v156 + 1], v161[v156]), v160.f32[0])), v162), v160, 1));
          }

          else
          {
            v164 = vaddq_f32(v157, v13);
            v165 = vcvtq_s32_f32(v164);
            v164.i64[0] = vaddq_s32(v165, vcgtq_f32(vcvtq_f32_s32(v165), v164)).u64[0];
            v163 = *(v158 + 16 * (v164.i32[0] + v164.i32[1] * v156));
          }

          v166 = v18[37];
          v167 = vorrq_s8(vandq_s8(vandq_s8(v132, v29), vcgeq_f32(vextq_s8(v136, v136, 0xCuLL), v166)), v135);
          v168 = vaddq_f32(v134, v167);
          v168.i64[0] = vandq_s8(v166, vcgeq_f32(vextq_s8(v168, v168, 8uLL), v166)).u64[0];
          v168.i64[1] = vsubq_f32(v132, vdupq_lane_s64(*&v168, 0)).i64[1];
          v169 = vmvnq_s8(v55);
          v170 = vandq_s8(v168, v169);
          v171 = vorrq_s8(vandq_s8(v55, vsubq_f32(v132, vorrq_s8(v170, vandq_s8(vandq_s8(v132, v55), vcgeq_f32(v167, v166))))), v170);
          *v172.i8 = vsub_f32(*v166.f32, *v133.i8);
          v172.i64[1] = v105;
          v173 = vorrq_s8(vandq_s8(v172, v169), vandq_s8(v133, v55));
          v174 = vdupq_laneq_s32(v167, 3);
          v175.i64[0] = vsubq_f32(vmulq_n_f32(v173, *v19.i32), v174).u64[0];
          v175.i64[1] = v173.i64[1];
          v176 = vmulq_f32(v175, *(v18 + 14));
          v177 = vaddq_f32(v176, vextq_s8(v176, v176, 4uLL));
          v177.i64[0] = vaddq_f32(v177, vdupq_laneq_s64(v177, 1)).u64[0];
          v178 = vaddq_f32(vrev64q_s32(v171), v171);
          v177.i64[1] = vandq_s8(*&v132, vcgeq_f32(vextq_s8(v178, v178, 8uLL), v132)).i64[1];
          v179 = vmulq_f32(v175, *(v18 + 13));
          v180 = vaddq_f32(v179, vextq_s8(v179, v179, 4uLL));
          v181 = vorrq_s8(vandq_s8(v177, v101), vandq_s8(v30, vaddq_f32(v180, vextq_s8(v180, v180, 8uLL))));
          v182 = *(a2 + 38);
          v183 = vsubq_f32(v181, v9);
          v184 = *(a2 + 18);
          if (v5)
          {
            v185 = vaddq_s32(vcvtq_s32_f32(v183), vcltzq_f32(v183));
            v186 = vsubq_f32(v183, vcvtq_f32_s32(v185)).u64[0];
            v187 = (v184 + 16 * (v185.i32[0] + v185.i32[1] * v182));
            v188 = vaddq_f32(*v187, vmulq_n_f32(vsubq_f32(v187[1], *v187), v186.f32[0]));
            v189 = vaddq_f32(v188, vmulq_lane_f32(vsubq_f32(vaddq_f32(v187[v182], vmulq_n_f32(vsubq_f32(v187[v182 + 1], v187[v182]), v186.f32[0])), v188), v186, 1));
          }

          else
          {
            v190 = vaddq_f32(v183, v13);
            v191 = vcvtq_s32_f32(v190);
            v190.i64[0] = vaddq_s32(v191, vcgtq_f32(vcvtq_f32_s32(v191), v190)).u64[0];
            v189 = *(v184 + 16 * (v190.i32[0] + v190.i32[1] * v182));
          }

          v192.i64[0] = vsubq_f32(v132, vextq_s8(v181, v9, 4uLL)).u64[0];
          v192.i64[1] = v181.i64[1];
          v193 = vandq_s8(v166, v30);
          v194 = vorrq_s8(vandq_s8(v192, v101), vandq_s8(v193, vcgeq_f32(v167, v42)));
          v192.i64[0] = vorrq_s8(vandq_s8(vaddq_f32(v132, vrev64q_s32(vbslq_s8(vcgeq_f32(vaddq_f32(vrev64q_s32(vextq_s8(v194, v194, 4uLL)), v194), v166), vnegq_f32(v166), v14))), v101), vandq_s8(v193, vcgeq_f32(v167, v86))).u64[0];
          *v195.f32 = vsub_f32(vmul_f32(v104, *v133.i8), *v174.f32);
          v195.i64[1] = v105;
          v196 = vmulq_f32(v195, *(v18 + 16));
          v197 = vaddq_f32(v196, vextq_s8(v196, v196, 4uLL));
          v198 = vmulq_f32(v195, *(v18 + 15));
          v199 = vaddq_f32(v198, vextq_s8(v198, v198, 4uLL));
          v192.i64[1] = vaddq_f32(v197, vdupq_lane_s64(*&v197, 0)).i64[1];
          v200 = vorrq_s8(vandq_s8(v192, v115), vandq_s8(v29, vaddq_f32(v199, vextq_s8(v199, v199, 8uLL))));
          v201 = *(a2 + 42);
          v202 = vsubq_f32(vextq_s8(v200, v200, 8uLL), v9);
          v203 = *(a2 + 20);
          if (v5)
          {
            v204 = vaddq_s32(vcvtq_s32_f32(v202), vcltzq_f32(v202));
            v205 = vsubq_f32(v202, vcvtq_f32_s32(v204)).u64[0];
            v206 = (v203 + 16 * (v204.i32[0] + v204.i32[1] * v201));
            v207 = vaddq_f32(*v206, vmulq_n_f32(vsubq_f32(v206[1], *v206), v205.f32[0]));
            v208 = vaddq_f32(v207, vmulq_lane_f32(vsubq_f32(vaddq_f32(v206[v201], vmulq_n_f32(vsubq_f32(v206[v201 + 1], v206[v201]), v205.f32[0])), v207), v205, 1));
          }

          else
          {
            v209 = vaddq_f32(v202, v13);
            v210 = vcvtq_s32_f32(v209);
            v209.i64[0] = vaddq_s32(v210, vcgtq_f32(vcvtq_f32_s32(v210), v209)).u64[0];
            v208 = *(v203 + 16 * (v209.i32[0] + v209.i32[1] * v201));
          }

          *(v11 + v16) = vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vmulq_lane_f32(v98, *v108.f32, 1), *v109.i32), vmulq_n_f32(v127, *v119.i32)), vmulq_laneq_f32(vmulq_laneq_f32(v149, v136, 2), v167, 2)), vmulq_lane_f32(vmulq_laneq_f32(v163, v171, 2), *v171.f32, 1)), vmulq_n_f32(vmulq_lane_f32(v189, *v194.f32, 1), v194.f32[0])), vmulq_n_f32(vmulq_lane_f32(v208, *v200.f32, 1), vsubq_f32(v166, v200).f32[0]));
          v17 = vaddq_f32(v17, xmmword_2603429B0);
          v16 += 16;
        }

        while (16 * v10 != v16);
      }

      v15 = vaddq_f32(v15, xmmword_2603429C0);
      ++v8;
      v11 += v12;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcRenderToEquirect::GetDOD(HgcRenderToEquirect *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  v6 = &HGRectNull;
  if (a3 <= 2)
  {
    if (a3 > 2)
    {
      return *v6;
    }

LABEL_9:
    if ((*(*this + 312))(this, a2) <= 0)
    {
LABEL_11:
      v6 = &HGRectInfinite;
      return *v6;
    }

LABEL_10:
    v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    HGRectGrow(v5, v4, v7);
    goto LABEL_11;
  }

  if (a3 == 3 || a3 == 4)
  {
    goto LABEL_9;
  }

  if (a3 == 5)
  {
    if ((*(*this + 312))(this, a2) < 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  return *v6;
}

uint64_t HgcRenderToEquirect::GetROI(HGNode *this, HGRenderer *a2, signed int a3, HGRect a4)
{
  if (a3 > 2)
  {
    if (a3 != 3 && a3 != 4 && a3 != 5)
    {
      return 0;
    }
  }

  else if (a3 > 2)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcRenderToEquirect::HgcRenderToEquirect(HgcRenderToEquirect *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725A780;
  operator new();
}

void HgcRenderToEquirect::~HgcRenderToEquirect(HGNode *this)
{
  *this = &unk_28725A780;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404B930091);
  }

  HGNode::~HGNode(this);
}

{
  HgcRenderToEquirect::~HgcRenderToEquirect(this);

  HGObject::operator delete(v1);
}

uint64_t HgcRenderToEquirect::SetParameter(HgcRenderToEquirect *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 0x11)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcRenderToEquirect::GetParameter(HgcRenderToEquirect *this, unsigned int a2, float *a3)
{
  if (a2 > 0x11)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *LiHgcEquirectProject::GetProgram(LiHgcEquirectProject *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1317;
    }

    else
    {
      return aMetal10Len0000_1318;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_488;
  }
}

void LiHgcEquirectProject::InitProgramDescriptor(LiHgcEquirectProject *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "LiHgcEquirectProject_hgc_visible",  "//Metal1.0     \n //LEN=0000000f88\n [[ visible ]] FragmentOut LiHgcEquirectProject_hgc_visible(const constant float4* hg_Params, \n texture2d< float > hg_Texture0, \n sampler hg_Sampler0,\n float4 texCoord0)\n {\n const float4 c0 = float4(-0.01348046958, 0.05747731403, -0.1212390736, 1.000000000);\n"
    "    const float4 c1 = float4(-0.3329946101, 0.1956359297, 0.9999956489, 1.570796371);\n"
    "    const float4 c2 = float4(0.000000000, -0.01872929931, 0.07426100224, 3.141592741);\n"
    "    const float4 c3 = float4(0.1591549367, -0.2121143937, 0.5000000000, 1.570728779);\n"
    "    const float4 c4 = float4(-0.3183098733, 0.5000000000, -2.000000000, -0.5000000000);\n"
    "    float4 r0, r1, r2, r3, r4;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0.w = c0.w;\n"
    "    r1.x = dot(texCoord0, hg_Params[6]);\n"
    "    r1.z = hg_Params[2].z;\n"
    "    r1.y = dot(texCoord0, hg_Params[7]);\n"
    "    r1.xyz = normalize(r1.xyz).xyz;\n"
    "    r2.y = dot(r1.xyz, hg_Params[3].xyz);\n"
    "    r1.w = dot(r1.xyz, hg_Params[5].xyz);\n"
    "    r1.y = dot(r1.xyz, hg_Params[4].xyz);\n"
    "    r1.z = abs(r1.y);\n"
    "    r2.x = abs(r1.w);\n"
    "    r2.z = abs(r2.y);\n"
    "    r2.w = fmax(r2.x, r2.z);\n"
    "    r3.x = 1.00000f / r2.w;\n"
    "    r2.w = fmin(r2.x, r2.z);\n"
    "    r2.w = r2.w*r3.x;\n"
    "    r3.x = r2.w*r2.w;\n"
    "    r3.y = r3.x*c0.x + c0.y;\n"
    "    r3.y = r3.y*r3.x + c0.z;\n"
    "    r3.y = r3.y*r3.x + c1.y;\n"
    "    r3.y = r3.y*r3.x + c1.x;\n"
    "    r3.x = r3.y*r3.x + c1.z;\n"
    "    r2.w = r3.x*r2.w;\n"
    "    r2.z = r2.x - r2.z;\n"
    "    r3.x = c1.w - r2.w;\n"
    "    r2.z = select(r2.w, r3.x, r2.z < 0.00000f);\n"
    "    r2.w = -r2.z + c2.w;\n"
    "    r1.w = select(r2.z, r2.w, r1.w < 0.00000f);\n"
    "    r1.w = select(r1.w, -r1.w, r2.y < 0.00000f);\n"
    "    r2.z = c0.w - r1.z;\n"
    "    r2.x = float(-r2.x >= c2.x);\n"
    "    r1.x = 1.00000f / hg_Params[0].x;\n"
    "    r2.y = select(c1.w, -c1.w, r2.y < 0.00000f);\n"
    "    r1.w = select(r1.w, r2.y, -r2.x < 0.00000f);\n"
    "    r2.y = r1.z*c2.y + c2.z;\n"
    "    r2.y = r2.y*r1.z + c3.y;\n"
    "    r1.w = r1.w*hg_Params[0].x;\n"
    "    r1.w = r1.w*c3.x;\n"
    "    r3.y = r1.w - c3.z;\n"
    "    r2.x = floor(r3.y);\n"
    "    r2.x = hg_Params[0].x*-c3.z + r2.x;\n"
    "    r2.x = r2.x + c3.z;\n"
    "    r2.w = r2.x*r1.x;\n"
    "    r2.z = sqrt(r2.z);\n"
    "    r1.z = r2.y*r1.z + c3.w;\n"
    "    r1.z = r1.z*r2.z;\n"
    "    r2.z = floor(r2.w);\n"
    "    r2.x = -r2.z*hg_Params[0].x + r2.x;\n"
    "    r1.y = float(r1.y < c2.x);\n"
    "    r2.y = r1.y*r1.z;\n"
    "    r1.z = r2.y*c4.z + r1.z;\n"
    "    r1.y = r1.y*c2.w + r1.z;\n"
    "    r2.x = hg_Params[0].x*-c3.z + r2.x;\n"
    "    r1.z = hg_Params[0].x*-c3.z + r2.x;\n"
    "    r1.y = r1.y*hg_Params[1].x;\n"
    "    r4.x = r1.y*c4.x;\n"
    "    r4.x = hg_Params[1].x*c3.z + r4.x;\n"
    "    r1.z = r1.z + c0.w;\n"
    "    r3.x = r4.x - c3.z;\n"
    "    r4.x = r1.z*r1.x;\n"
    "    r1.x = floor(r3.x);\n"
    "    r4.y = r1.x + c3.z;\n"
    "    r1.xy = hg_Params[1].xx*c4.yw + c4.wy;\n"
    "    r4.x = floor(r4.x);\n"
    "    r4.x = -r4.x*hg_Params[0].x + r1.z;\n"
    "    r4.x = hg_Params[0].x*c4.w + r4.x;\n"
    "    r0.x = r4.x;\n"
    "    r4.y = fmin(r1.x, r4.y);\n"
    "    r4.y = fmax(r1.y, r4.y);\n"
    "    r1.z = r4.y + c0.w;\n"
    "    r1.z = fmin(r1.z, r1.x);\n"
    "    r4.z = fmax(r1.z, r1.y);\n"
    "    r0.y = r4.z;\n"
    "    r1.y = r4.z;\n"
    "    r1.x = r2.x;\n"
    "    r1.w = c0.w;\n"
    "    r2.y = r4.y;\n"
    "    r2.w = dot(r1.xyw, hg_Params[9].xyw);\n"
    "    r2.z = dot(r1.xyw, hg_Params[8].xyw);\n"
    "    r1.xy = r2.zw + hg_Params[10].xy;\n"
    "    r1.xy = r1.xy*hg_Params[10].zw;\n"
    "    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n"
    "    r4.w = dot(r0.xyw, hg_Params[9].xyw);\n"
    "    r4.z = dot(r0.xyw, hg_Params[8].xyw);\n"
    "    r0.xy = r4.zw + hg_Params[10].xy;\n"
    "    r0.xy = r0.xy*hg_Params[10].zw;\n"
    "    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n"
    "    r2.w = c0.w;\n"
    "    r4.w = dot(r2.xyw, hg_Params[9].xyw);\n"
    "    r4.z = dot(r2.xyw, hg_Params[8].xyw);\n"
    "    r2.xy = r4.zw + hg_Params[10].xy;\n"
    "    r2.xy = r2.xy*hg_Params[10].zw;\n"
    "    r2 = hg_Texture0.sample(hg_Sampler0, r2.xy);\n"
    "    r4.w = c0.w;\n"
    "    r3.y = fract(r3.y);\n"
    "    r3.w = dot(r4.xyw, hg_Params[9].xyw);\n"
    "    r3.z = dot(r4.xyw, hg_Params[8].xyw);\n"
    "    r4.xy = r3.zw + hg_Params[10].xy;\n"
    "    r4.xy = r4.xy*hg_Params[10].zw;\n"
    "    r4 = hg_Texture0.sample(hg_Sampler0, r4.xy);\n"
    "    r4 = mix(r2, r4, r3.yyyy);\n"
    "    r1 = mix(r1, r0, r3.yyyy);\n"
    "    r3.x = fract(r3.x);\n"
    "    output.color0 = mix(r4, r1, r3.xxxx);\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "LiHgcEquirectProject");
}

void sub_25FF2EBFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344B10;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF2ED7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF2EDCC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF2EDC4);
}

uint64_t LiHgcEquirectProject::BindTexture(LiHgcEquirectProject *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 10, v5, v6, v7, v8);
  return 0;
}

uint64_t LiHgcEquirectProject::Bind(LiHgcEquirectProject *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHgcEquirectProject::RenderTile(LiHgcEquirectProject *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = 16 * a2[3].i32[0];
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = v5;
    do
    {
      if (v6 >= 1)
      {
        v11 = 0;
        v12 = v10;
        do
        {
          v13 = *(this + 51);
          v14 = vmulq_f32(v12, *(v13 + 6));
          v15 = vaddq_f32(v14, vextq_s8(v14, v14, 4uLL));
          v16 = vmulq_f32(v12, *(v13 + 7));
          v15.i64[0] = vaddq_f32(v15, vdupq_laneq_s64(v15, 1)).u64[0];
          v17 = vaddq_f32(v16, vextq_s8(v16, v16, 4uLL));
          v15.i64[1] = *(v13 + 5);
          v19 = *(v13 + 10);
          v18 = *(v13 + 11);
          v20 = vbslq_s8(v18, vaddq_f32(v17, vextq_s8(v17, v17, 8uLL)), v15);
          v21 = vmulq_f32(v20, v20);
          v22 = vaddq_f32(vdupq_laneq_s32(v21, 2), vaddq_f32(vdupq_lane_s32(*v21.i8, 0), vdupq_lane_s32(*v21.i8, 1)));
          v23 = vminq_f32(vrsqrteq_f32(v22), v19);
          v24 = vminq_f32(vmulq_f32(v23, vrsqrtsq_f32(vmulq_f32(v23, v22), v23)), v19);
          v25 = vmulq_f32(vmulq_f32(v24, vrsqrtsq_f32(vmulq_f32(v24, v22), v24)), v20);
          v26 = vmulq_f32(*(v13 + 3), v25);
          v27 = vmulq_f32(*(v13 + 5), v25);
          v28 = *(v13 + 12);
          v29 = *(v13 + 13);
          v30 = vbslq_s8(v28, vaddq_f32(vrev64q_s32(v27), vaddq_f32(vextq_s8(v27, v27, 4uLL), vextq_s8(v27, v27, 8uLL))), v25);
          v31 = vmulq_f32(*(v13 + 4), v30);
          *v31.i8 = vadd_f32(*&vextq_s8(v31, v5, 4uLL), vadd_f32(*v31.i8, vrev64_s32(*v31.i8)));
          v31.i64[1] = vextq_s8(v30, v30, 8uLL).u64[0];
          *v32.i8 = vqtbl1_s8(v31, *v29.i8);
          v33 = vextq_s8(v29, v29, 8uLL).u64[0];
          v32.u64[1] = vqtbl1_s8(v31, v33);
          v35 = *(v13 + 14);
          v34 = *(v13 + 15);
          v36 = vandq_s8(v32, v35);
          v37 = vbslq_s8(v34, vabsq_f32(vextq_s8(v36, v36, 0xCuLL)), vaddq_f32(vextq_s8(v26, v26, 4uLL), vaddq_f32(v26, vrev64q_s32(v26))));
          *v24.f32 = vqtbl1_s8(v37, *v29.i8);
          *v37.i8 = vand_s8(vqtbl1_s8(v37, v33), *&vextq_s8(v35, v35, 8uLL));
          v29.i64[0] = v24.i64[0];
          *v32.i8 = vext_s8(*v24.f32, *v37.i8, 4uLL);
          v32.u64[1] = vext_s8(*v37.i8, *v24.f32, 4uLL);
          v24.i64[1] = v37.i64[0];
          v29.i64[1] = v37.i64[0];
          v38 = vbslq_s8(v28, vmaxq_f32(v32, vrev64q_s32(v24)), v29);
          v39 = vextq_s8(v38, v38, 0xCuLL);
          v40 = *(v13 + 16);
          v41 = *(v13 + 17);
          v42 = vminq_f32(vmaxq_f32(vrecpeq_f32(v39), v40), v41);
          v43 = vminq_f32(vmaxq_f32(vmulq_f32(v42, vrecpsq_f32(v39, v42)), v40), v41);
          v44 = vbslq_s8(v28, vmulq_n_f32(vbslq_s8(v28, vminq_f32(vextq_s8(v38, v38, 4uLL), vrev64q_s32(v38)), v29), vmulq_f32(v43, vrecpsq_f32(v39, v43)).f32[0]), v29);
          v45 = vmulq_laneq_f32(vextq_s8(v44, v44, 0xCuLL), v44, 3);
          v46 = *(v13 + 18);
          v47 = *(v13 + 19);
          v48 = vbslq_s8(v34, v45, vaddq_f32(v40, vmulq_f32(v46, vrev64q_s32(v45))));
          v49 = vbslq_s8(v34, v45, vaddq_f32(v47, vmulq_n_f32(v48, v48.f32[0])));
          v50 = *(v13 + 20);
          v51 = *(v13 + 21);
          v52 = vbslq_s8(v34, v45, vaddq_f32(v50, vmulq_n_f32(v49, v49.f32[0])));
          v53 = vbslq_s8(v34, v45, vaddq_f32(v51, vmulq_n_f32(v52, v52.f32[0])));
          v54 = vbslq_s8(v28, vmulq_n_f32(v44, vaddq_f32(v51, vmulq_lane_f32(v53, *v53.f32, 1)).f32[0]), v29);
          v55 = *(v13 + 22);
          v56 = vbslq_s8(v55, vsubq_f32(vextq_s8(v54, v54, 8uLL), v54), v54);
          v57 = vbslq_s8(vcgtq_f32(v51, v56), vdupq_lane_s64(vsubq_f32(v50, vextq_s8(v56, v56, 0xCuLL)).i64[0], 0), vrev64q_s32(v56));
          v58.i64[0] = v56.i64[0];
          v58.i64[1] = vdupq_laneq_s64(v57, 1).u64[0];
          v56.i64[1] = v57.i64[1];
          v59 = vbslq_s8(v28, vsubq_f32(v51, vrev64q_s32(v58)), v56);
          v60 = vbslq_s8(v28, veorq_s8(vandq_s8(vextq_s8(v59, v59, 8uLL), *(v13 + 23)), vbslq_s8(vcgtq_f32(v50, v36), v59, vrev64q_s32(v59))), v36);
          v59.i64[1] = vsubq_f32(v50, v60).i64[1];
          v61 = *(v13 + 1);
          v62 = vandq_s8(v46, vcgeq_f32(vnegq_f32(v59), v47));
          v64 = *(v13 + 24);
          v63 = *(v13 + 25);
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(*v13), v64), v40), v41);
          v66 = vbslq_s8(v34, v62, v59);
          v68 = *(v13 + 26);
          v67 = *(v13 + 27);
          v69 = vbslq_s8(v34, vmulq_f32(v65, vrecpsq_f32(*v13, v65)), v60);
          v70 = vbslq_s8(v18, vbslq_s8(vcgtq_f32(v68, v66), v63, v64), v66);
          v71 = vbslq_s8(v28, vbslq_s8(vcgtq_f32(vextq_s8(v70, v70, 4uLL), v68), vextq_s8(v70, v70, 8uLL), v69), v69);
          v72 = *(v13 + 28);
          v73 = *(v13 + 29);
          v75 = *(v13 + 30);
          v74 = *(v13 + 31);
          v76 = vbslq_s8(v28, vmulq_f32(v75, vbslq_s8(v28, vmulq_n_f32(v71, COERCE_FLOAT(*v13)), v69)), v69);
          v77 = vsubq_f32(vextq_s8(v76, v76, 8uLL), v74);
          v78 = vrev64q_s32(v77);
          v71.i64[0] = vaddq_f32(v73, vmulq_laneq_f32(vaddq_f32(v67, vmulq_f32(v72, vextq_s8(v71, v5, 4uLL))), v71, 2)).u64[0];
          v79 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
          v71.i64[1] = v70.i64[1];
          v80 = vbslq_s8(v34, vsubq_f32(v79, vandq_s8(v74, vcgtq_f32(v79, v78))), v71);
          v81 = vmulq_laneq_f32(*v13, v74, 2);
          v82 = vbslq_s8(v34, vaddq_f32(v68, vbslq_s8(v34, vsubq_f32(v80, v81), v71)), v71);
          v83 = vbslq_s8(v28, vmulq_n_f32(vextq_s8(v76, v76, 4uLL), *v82.i32), v82);
          v84 = vminq_f32(vrsqrteq_f32(v83), v73);
          v85 = vminq_f32(vmulq_f32(v84, vrsqrtsq_f32(vmulq_f32(v84, v83), v84)), v73);
          v86 = vbslq_s8(v55, vmulq_f32(vminq_f32(vmulq_f32(v85, vrsqrtsq_f32(vmulq_f32(v85, v83), v85)), v73), v83), v83);
          v87 = vrev64q_s32(v86);
          v88 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
          v76.i64[1] = vmulq_f32(vaddq_f32(v72, vmulq_lane_f32(v76, *&v86, 1)), v86).i64[1];
          v89 = vsubq_f32(v88, vbslq_s8(vcgtq_f32(v88, v87), v75, 0));
          v86.i64[1] = v89.i64[1];
          v90 = vbslq_s8(v18, vandq_s8(v75, vcgtq_f32(v68, v76)), v76);
          v91 = vbslq_s8(v34, vsubq_f32(v86, vmulq_laneq_f32(*v13, v89, 2)), vmulq_laneq_f32(v90, v90, 2));
          v92 = vaddq_f32(vmulq_lane_f32(v67, *v91.f32, 1), v90);
          v87.i64[0] = v90.i64[0];
          v87.i64[1] = v92.i64[1];
          *v92.f32 = vext_s8(*v90.f32, *&vextq_s8(v92, v92, 8uLL), 4uLL);
          v93 = vaddq_f32(v92, vmulq_laneq_f32(v87, v74, 3));
          v94 = vsubq_f32(v91, v81);
          v90.i64[0] = vbslq_s8(v34, v90, v93).u64[0];
          v90.i64[1] = vsubq_f32(vdupq_lane_s64(*&v94, 0), vmulq_n_f32(v74, COERCE_FLOAT(*v13))).i64[1];
          v95 = vbslq_s8(v18, vmulq_n_f32(v90, v61.f32[0]), v90);
          v96 = vsubq_f32(vaddq_f32(vmulq_laneq_f32(v61, v74, 2), vmulq_f32(v73, vrev64q_s32(v95))), v72);
          v97 = vaddq_f32(v63, v95);
          v98 = vbslq_s8(v34, v96, v77);
          v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
          v100 = vcgtq_f32(v99, v98);
          v77.i64[0] = vsubq_f32(v99, vbslq_s8(v100, v74, 0)).u64[0];
          v87.i64[0] = vdupq_laneq_s64(v97, 1).u64[0];
          v77.i64[1] = v87.i64[0];
          v95.i64[1] = v97.i64[1];
          v101 = vaddq_f32(v74, vrev64q_s32(v77));
          v102 = vbslq_s8(v34, vmulq_laneq_f32(v95, v97, 2), v101);
          v103 = *(v13 + 32);
          v104 = *(v13 + 33);
          v105 = vaddq_f32(v103, vmulq_n_f32(v104, v61.f32[0]));
          v88.i64[0] = v105.i64[0];
          v88.i64[1] = v97.i64[1];
          v106 = vcvtq_f32_s32(vcvtq_s32_f32(v102));
          v107 = vsubq_f32(vbslq_s8(v34, vsubq_f32(vextq_s8(v97, v105, 8uLL), vmulq_f32(*v13, vbslq_s8(v34, vsubq_f32(v106, vandq_s8(v74, vcgtq_f32(v106, v102))), v101))), v101), vmulq_laneq_f32(*v13, v104, 2));
          v108 = vbslq_s8(v34, v107, v101);
          v101.i64[0] = v105.i64[0];
          v101.i64[1] = v87.i64[0];
          v109 = vbslq_s8(v34, v107, vmaxq_f32(v88, vbslq_s8(v34, v107, vminq_f32(vrev64q_s32(v101), v108))));
          v110 = vaddq_f32(v103, vextq_s8(v5, v109, 0xCuLL));
          v111 = vextq_s8(v110, v105, 8uLL);
          *v101.f32 = vmin_f32(*&vextq_s8(v110, v110, 8uLL), *v105.i8);
          v103.i64[0] = v105.i64[0];
          v88.i64[0] = v105.i64[0];
          v88.i64[1] = v110.i64[1];
          *v110.f32 = vext_s8(*v101.f32, *v105.i8, 4uLL);
          *&v110.u32[2] = vext_s8(*v105.i8, *v101.f32, 4uLL);
          v103.i64[1] = vminq_f32(v88, v111).i64[1];
          v105.i64[0] = v109.i64[0];
          v105.i64[1] = vmaxq_f32(v103, v110).i64[1];
          v112 = vextq_s8(v105, v105, 4uLL);
          v113 = vbslq_s8(v34, v94, v112);
          v113.i32[3] = 1.0;
          v115 = *(v13 + 8);
          v114 = *(v13 + 9);
          v108.i64[1] = *(v13 + 21);
          v116 = vmulq_f32(v114, v113);
          v117 = *(v13 + 34);
          *v88.f32 = vqtbl1_s8(v116, *v117.f32);
          v101.i64[0] = vextq_s8(v117, v117, 8uLL).u64[0];
          *v116.f32 = vqtbl1_s8(v116, *v101.f32);
          v118 = vmulq_f32(v115, v113);
          *v106.f32 = vqtbl1_s8(v118, *v117.f32);
          *v119.f32 = vqtbl1_s8(v118, *v101.f32);
          v119.i64[1] = v106.i64[0];
          *v120.f32 = vext_s8(*v119.f32, *v106.f32, 4uLL);
          v106.i64[1] = v119.i64[0];
          v121 = vextq_s8(v116, vrev64q_s32(v116), 8uLL);
          *v116.f32 = vext_s8(*v116.f32, *v88.f32, 4uLL);
          v116.i64[1] = v116.i64[0];
          v88.i64[1] = v88.i64[0];
          v94.i64[0] = vbslq_s8(v34, v94, v109).u64[0];
          *&v120.u32[2] = vext_s8(*v106.f32, *v119.f32, 4uLL);
          v122 = vbslq_s8(v18, v112, v108);
          v94.i64[1] = vaddq_f32(v121, vaddq_f32(v88, v116)).i64[1];
          v123 = vbslq_s8(v55, vaddq_f32(vaddq_f32(v119, v120), v106), v94);
          v124 = vmulq_f32(v114, v122);
          *v112.f32 = vqtbl1_s8(v124, *v117.f32);
          *v124.f32 = vqtbl1_s8(v124, *v101.f32);
          *v121.f32 = vext_s8(*v124.f32, *v112.f32, 4uLL);
          v112.i64[1] = v112.i64[0];
          v121.i64[1] = v121.i64[0];
          v125 = &a2[11];
          v109.i64[1] = vaddq_f32(vextq_s8(*&v124, vrev64q_s32(*&v124), 8uLL), vaddq_f32(v112, v121)).i64[1];
          v126 = vmulq_f32(v115, v122);
          *v124.f32 = vqtbl1_s8(v126, *v117.f32);
          *v121.f32 = vqtbl1_s8(v126, *v101.f32);
          v121.i64[1] = v124.i64[0];
          *v88.f32 = vext_s8(*v121.f32, *v124.f32, 4uLL);
          v127 = vaddq_f32(vsubq_f32(vextq_s8(v123, v123, 8uLL), v5), v9);
          v124.i64[1] = v121.i64[0];
          *&v88.u32[2] = vext_s8(*v124.f32, *v121.f32, 4uLL);
          v128 = vcvtq_s32_f32(v127);
          v129 = a2[10];
          v130 = vbslq_s8(v55, vaddq_f32(vaddq_f32(v121, v88), v124), v109);
          v131 = vaddq_f32(vsubq_f32(vextq_s8(v130, v130, 8uLL), v5), v9);
          v132 = vcvtq_s32_f32(v131);
          v124.i64[0] = vcgtq_f32(vcvtq_f32_s32(v128), v127).u64[0];
          *v127.f32 = vadd_s32(*v132.i8, *&vcgtq_f32(vcvtq_f32_s32(v132), v131));
          *v131.f32 = vld1_dup_f32(v125);
          v123.i32[3] = 1.0;
          *v124.f32 = vadd_s32(*v128.i8, *v124.f32);
          *v132.i8 = vzip2_s32(*v124.f32, *v127.f32);
          v133 = vmulq_f32(v114, v123);
          *v88.f32 = vqtbl1_s8(v133, *v117.f32);
          *v133.i8 = vqtbl1_s8(v133, *v101.f32);
          *v124.f32 = vzip1_s32(*v124.f32, *v127.f32);
          *&v127.u32[2] = vext_s8(*v133.i8, *v88.f32, 4uLL);
          v88.i64[1] = v88.i64[0];
          v134 = vaddq_f32(v88, v127);
          v135 = vmulq_f32(v115, v123);
          *v88.f32 = vqtbl1_s8(v135, *v117.f32);
          *v106.f32 = vqtbl1_s8(v135, *v101.f32);
          *v124.f32 = vmla_s32(*v124.f32, *v132.i8, *v131.f32);
          v106.i64[1] = v88.i64[0];
          *v119.f32 = vext_s8(*v106.f32, *v88.f32, 4uLL);
          v88.i64[1] = v106.i64[0];
          *&v119.u32[2] = vext_s8(*v88.f32, *v106.f32, 4uLL);
          v130.i64[1] = vaddq_f32(vextq_s8(*&v133, vrev64q_s32(v133), 8uLL), v134).i64[1];
          v136 = vbslq_s8(v55, vaddq_f32(vaddq_f32(v106, v119), v88), v130);
          v137 = vsubq_f32(vextq_s8(v136, v136, 8uLL), v5);
          v136.i32[3] = 1.0;
          v138 = vsubq_f32(v99, vbslq_s8(v100, v75, 0));
          v139 = vaddq_f32(v137, v9);
          v34.i64[0] = vbslq_s8(v34, v96, vsubq_f32(v98, v138)).u64[0];
          v140 = vmulq_f32(v114, v136);
          *v96.f32 = vqtbl1_s8(v140, *v117.f32);
          *v140.i8 = vqtbl1_s8(v140, *v101.f32);
          v141 = vcvtq_s32_f32(v139);
          *v100.f32 = vext_s8(*v140.i8, *v96.f32, 4uLL);
          v100.i64[1] = v100.i64[0];
          v96.i64[1] = v96.i64[0];
          v142 = vmulq_f32(v115, v136);
          *v117.f32 = vqtbl1_s8(v142, *v117.f32);
          *v115.f32 = vqtbl1_s8(v142, *v101.f32);
          v115.i64[1] = v117.i64[0];
          *v101.f32 = vext_s8(*v115.f32, *v117.f32, 4uLL);
          v117.i64[1] = v115.i64[0];
          *&v101.u32[2] = vext_s8(*v117.f32, *v115.f32, 4uLL);
          v34.i64[1] = vaddq_f32(vextq_s8(*&v140, vrev64q_s32(v140), 8uLL), vaddq_f32(v96, v100)).i64[1];
          v143 = vbslq_s8(v55, vaddq_f32(vaddq_f32(v115, v101), v117), v34);
          v144 = vaddq_f32(vsubq_f32(vextq_s8(v143, v143, 8uLL), v5), v9);
          v145 = vcvtq_s32_f32(v144);
          *v144.f32 = vadd_s32(*v145.i8, *&vcgtq_f32(vcvtq_f32_s32(v145), v144));
          *v117.f32 = vadd_s32(*v141.i8, *&vcgtq_f32(vcvtq_f32_s32(v141), v139));
          *v144.f32 = vmla_s32(vzip1_s32(*v117.f32, *v144.f32), vzip2_s32(*v117.f32, *v144.f32), *v131.f32);
          v146 = vcvtq_f32_s32(vcvtq_s32_f32(v143));
          v147 = vaddq_f32(*(*&v129 + 16 * v144.i32[0]), vmulq_lane_f32(vsubq_f32(*(*&v129 + 16 * v144.i32[1]), *(*&v129 + 16 * v144.i32[0])), *v143.f32, 1));
          *(*&v7 + v11) = vaddq_f32(v147, vmulq_n_f32(vsubq_f32(vaddq_f32(*(*&v129 + 16 * v124.i32[0]), vmulq_lane_f32(vsubq_f32(*(*&v129 + 16 * v124.i32[1]), *(*&v129 + 16 * v124.i32[0])), *v143.f32, 1)), v147), vsubq_f32(v143, vsubq_f32(v146, vbslq_s8(vcgtq_f32(v146, v143), v74, 0))).f32[0]));
          v12 = vaddq_f32(v12, xmmword_2603429B0);
          v11 += 16;
        }

        while (16 * v6 != v11);
      }

      v10 = vaddq_f32(v10, xmmword_2603429C0);
      ++v4;
      *&v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHgcEquirectProject::GetDOD(LiHgcEquirectProject *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t LiHgcEquirectProject::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void LiHgcEquirectProject::LiHgcEquirectProject(LiHgcEquirectProject *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725A9E8;
  operator new();
}

void LiHgcEquirectProject::~LiHgcEquirectProject(HGNode *this)
{
  *this = &unk_28725A9E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4044C9E2E8);
  }

  HGNode::~HGNode(this);
}

{
  LiHgcEquirectProject::~LiHgcEquirectProject(this);

  HGObject::operator delete(v1);
}

uint64_t LiHgcEquirectProject::SetParameter(LiHgcEquirectProject *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v13 = *(this + 51);
        if (*(v13 + 80) != a3.n128_f32[0] || *(v13 + 84) != a4 || *(v13 + 88) != a5 || *(v13 + 92) != a6)
        {
          *(v13 + 80) = a3.n128_u32[0];
          *(v13 + 84) = a4;
          *(v13 + 88) = a5;
          *(v13 + 92) = a6;
          goto LABEL_62;
        }
      }

      else
      {
        v11 = *(this + 51);
        if (*(v11 + 96) != a3.n128_f32[0] || *(v11 + 100) != a4 || *(v11 + 104) != a5 || *(v11 + 108) != a6)
        {
          *(v11 + 96) = a3.n128_u32[0];
          *(v11 + 100) = a4;
          *(v11 + 104) = a5;
          *(v11 + 108) = a6;
          goto LABEL_62;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 7:
        v15 = *(this + 51);
        if (*(v15 + 112) != a3.n128_f32[0] || *(v15 + 116) != a4 || *(v15 + 120) != a5 || *(v15 + 124) != a6)
        {
          *(v15 + 112) = a3.n128_u32[0];
          *(v15 + 116) = a4;
          *(v15 + 120) = a5;
          *(v15 + 124) = a6;
          goto LABEL_62;
        }

        return 0;
      case 8:
        v17 = *(this + 51);
        if (*(v17 + 128) != a3.n128_f32[0] || *(v17 + 132) != a4 || *(v17 + 136) != a5 || *(v17 + 140) != a6)
        {
          *(v17 + 128) = a3.n128_u32[0];
          *(v17 + 132) = a4;
          *(v17 + 136) = a5;
          *(v17 + 140) = a6;
          goto LABEL_62;
        }

        return 0;
      case 9:
        v9 = *(this + 51);
        if (*(v9 + 144) != a3.n128_f32[0] || *(v9 + 148) != a4 || *(v9 + 152) != a5 || *(v9 + 156) != a6)
        {
          *(v9 + 144) = a3.n128_u32[0];
          *(v9 + 148) = a4;
          *(v9 + 152) = a5;
          *(v9 + 156) = a6;
          goto LABEL_62;
        }

        return 0;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v14 = *(this + 51);
        if (v14[2].n128_f32[0] != 0.0 || v14[2].n128_f32[1] != 0.0 || v14[2].n128_f32[2] != a3.n128_f32[0] || v14[2].n128_f32[3] != 0.0)
        {
          v14[2].n128_u64[0] = 0;
          v14[2].n128_u32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v14[2].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v14[35] = a3;
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        v16 = *(this + 51);
        if (*(v16 + 48) != a3.n128_f32[0] || *(v16 + 52) != a4 || *(v16 + 56) != a5 || *(v16 + 60) != a6)
        {
          *(v16 + 48) = a3.n128_u32[0];
          *(v16 + 52) = a4;
          *(v16 + 56) = a5;
          *(v16 + 60) = a6;
          goto LABEL_62;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a4 || *(v8 + 72) != a5 || *(v8 + 76) != a6)
        {
          *(v8 + 64) = a3.n128_u32[0];
          *(v8 + 68) = a4;
          *(v8 + 72) = a5;
          *(v8 + 76) = a6;
LABEL_62:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (!a2)
    {
      v12 = *(this + 51);
      if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
      {
        *v12 = a3.n128_u32[0];
        *(v12 + 4) = a4;
        *(v12 + 8) = a5;
        *(v12 + 12) = a6;
        goto LABEL_62;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v10 = *(this + 51);
      if (*(v10 + 16) != a3.n128_f32[0] || *(v10 + 20) != a4 || *(v10 + 24) != a5 || *(v10 + 28) != a6)
      {
        *(v10 + 16) = a3.n128_u32[0];
        *(v10 + 20) = a4;
        *(v10 + 24) = a5;
        *(v10 + 28) = a6;
        goto LABEL_62;
      }

      return 0;
    }
  }

  return v7;
}

uint64_t LiHgcEquirectProject::GetParameter(LiHgcEquirectProject *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      v8 = *(this + 51);
      if (a2 == 5)
      {
        *a3 = v8[20];
        a3[1] = v8[21];
        a3[2] = v8[22];
        v5 = v8 + 23;
      }

      else
      {
        *a3 = v8[24];
        a3[1] = v8[25];
        a3[2] = v8[26];
        v5 = v8 + 27;
      }

      goto LABEL_22;
    }

    switch(a2)
    {
      case 7:
        v11 = *(this + 51);
        *a3 = v11[28];
        a3[1] = v11[29];
        a3[2] = v11[30];
        v5 = v11 + 31;
        goto LABEL_22;
      case 8:
        v12 = *(this + 51);
        *a3 = v12[32];
        a3[1] = v12[33];
        a3[2] = v12[34];
        v5 = v12 + 35;
        goto LABEL_22;
      case 9:
        v6 = *(this + 51);
        *a3 = v6[36];
        a3[1] = v6[37];
        a3[2] = v6[38];
        v5 = v6 + 39;
LABEL_22:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v10 = *(this + 51);
        *a3 = v10[140];
        a3[1] = v10[141];
        a3[2] = v10[142];
        v5 = v10 + 143;
      }

      else
      {
        v4 = *(this + 51);
        if (a2 == 3)
        {
          *a3 = v4[12];
          a3[1] = v4[13];
          a3[2] = v4[14];
          v5 = v4 + 15;
        }

        else
        {
          *a3 = v4[16];
          a3[1] = v4[17];
          a3[2] = v4[18];
          v5 = v4 + 19;
        }
      }

      goto LABEL_22;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v7 = *(this + 51);
      *a3 = v7[4];
      a3[1] = v7[5];
      a3[2] = v7[6];
      v5 = v7 + 7;
      goto LABEL_22;
    }
  }

  return v3;
}

double LiHgcEquirectProject::State::State(LiHgcEquirectProject::State *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 10) = xmmword_26084AA00;
  *(this + 11) = xmmword_260344670;
  *(this + 12) = xmmword_260344600;
  *(this + 13) = xmmword_26084AA10;
  *(this + 14) = xmmword_2603446A0;
  *(this + 15) = xmmword_2603444B0;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 16) = xmmword_2603451A0;
  *(this + 17) = vnegq_f32(v2);
  *(this + 18) = xmmword_26084AA20;
  *(this + 19) = xmmword_26084AA30;
  *(this + 20) = xmmword_26084AA40;
  *(this + 21) = xmmword_26084AA50;
  *(this + 22) = xmmword_260344660;
  *(this + 23) = xmmword_26084AA60;
  *(this + 24) = xmmword_26084AA70;
  *(this + 25) = xmmword_26084AA80;
  *(this + 26) = xmmword_260344E30;
  *(this + 27) = xmmword_26084AA90;
  *(this + 28) = xmmword_26084AAA0;
  *(this + 29) = xmmword_26084AAB0;
  *(this + 30) = xmmword_26084AAC0;
  *(this + 31) = xmmword_26084AAD0;
  *(this + 32) = xmmword_260344730;
  *(this + 33) = xmmword_26084AAE0;
  *(this + 34) = xmmword_2603448A0;
  *(this + 35) = 0u;
  return result;
}

const char *HgcGradientBlend::GetProgram(HgcGradientBlend *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002e6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    output.color0 = float4(r0.wwww)*float4(r1);\n    return output;\n}\n//MD5=b4bc87a4:fe351ce8:53d5d7d0:cb789fc8\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ca\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    output.color0 = r0.wwww*r1;\n    return output;\n}\n//MD5=840901ce:6cf857a3:8b59720c:358dc55d\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000248\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    gl_FragColor = r0.wwww*r1;\n}\n//MD5=fc30fb8e:6d0b1937:1491b653:13192ed3\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FF3030C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF3044C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF30494()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF3048CLL);
}

uint64_t HgcGradientBlend::BindTexture(HgcGradientBlend *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcGradientBlend::RenderTile(HgcGradientBlend *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 12);
    v7 = 16 * *(a2 + 22);
    v8 = *(a2 + 10);
    v9 = 16 * *(a2 + 26);
    v10 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = vmulq_laneq_f32(*(v6 + v12 - 16), *(v8 + v12 - 16), 3);
          v15 = vmulq_laneq_f32(*(v6 + v12), *(v8 + v12), 3);
          v16 = vmulq_laneq_f32(*(v6 + v12 + 16), *(v8 + v12 + 16), 3);
          v17 = (v5 + v12);
          v17[-2] = vmulq_laneq_f32(*(v6 + v12 - 32), *(v8 + v12 - 32), 3);
          v17[-1] = v14;
          *v17 = v15;
          v17[1] = v16;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vmulq_laneq_f32(*(v6 + 16 * v11), *(v8 + 16 * v11), 3);
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcGradientBlend::GetDOD(HgcGradientBlend *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcGradientBlend::GetROI(HgcGradientBlend *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcGradientBlend::HgcGradientBlend(HgcGradientBlend *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725AC50;
  operator new();
}

void HgcGradientBlend::~HgcGradientBlend(HGNode *this)
{
  *this = &unk_28725AC50;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);
}

{
  HgcGradientBlend::~HgcGradientBlend(this);

  HGObject::operator delete(v1);
}

const char *HgcColorBalanceNoClip::GetProgram(HgcColorBalanceNoClip *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000030e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*half4(hg_Params[0]);\n    r1 = half4(hg_Params[1])*r0.wwww + r1;\n    r2.xyz = pow(fabs(r1.xyz), half3(hg_Params[2].xyz));\n    r1.xyz = select(r2.xyz, -r2.xyz, r1.xyz < 0.00000h);\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[3]);\n    return output;\n}\n//MD5=495dfcdb:e6516cd9:0b27cff0:e742c35d\n//SIG=00400000:00000001:00000001:00000001:0000:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002e3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*hg_Params[0];\n    r1 = hg_Params[1]*r0.wwww + r1;\n    r2.xyz = pow(fabs(r1.xyz), hg_Params[2].xyz);\n    r1.xyz = select(r2.xyz, -r2.xyz, r1.xyz < 0.00000f);\n    output.color0 = mix(r0, r1, hg_Params[3]);\n    return output;\n}\n//MD5=a853d778:834db82b:f879a4ec:9afacfb2\n//SIG=00000000:00000001:00000001:00000000:0000:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000366\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r0*hg_ProgramLocal0;\n    r1 = hg_ProgramLocal1*r0.wwww + r1;\n    r2.xyz = pow(abs(r1.xyz), hg_ProgramLocal2.xyz);\n    r1.xyz = vec3(r1.x < 0.00000 ? -r2.x : r2.x, r1.y < 0.00000 ? -r2.y : r2.y, r1.z < 0.00000 ? -r2.z : r2.z);\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal3);\n}\n//MD5=d33d8d21:3461c00f:bb53e25e:d8ff5ca4\n//SIG=00000000:00000001:00000001:00000000:0000:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF309C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344C00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF30AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF30B08()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF30B00);
}

uint64_t HgcColorBalanceNoClip::BindTexture(HgcColorBalanceNoClip *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcColorBalanceNoClip::Bind(HgcColorBalanceNoClip *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorBalanceNoClip::RenderTile(HgcColorBalanceNoClip *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    do
    {
      if (v4 < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v13 = *(v6 + v10 - 16);
          v12 = *(v6 + v10);
          v14 = *(this + 51);
          v15 = *(v14 + 16);
          v16 = vaddq_f32(vmulq_f32(v13, *v14), vmulq_laneq_f32(v15, v13, 3));
          v17 = vaddq_f32(vmulq_f32(v12, *v14), vmulq_laneq_f32(v15, v12, 3));
          v18 = vabsq_f32(v16);
          v19 = vabsq_f32(v17);
          v21 = *(v14 + 64);
          v20 = *(v14 + 80);
          v22 = vorrq_s8(vandq_s8(v21, v18), v20);
          v23 = *(v14 + 96);
          v24 = *(v14 + 112);
          v25 = vorrq_s8(vandq_s8(v21, v19), v20);
          v26 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v18)));
          v27 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v19)));
          v28 = *(v14 + 128);
          v29 = *(v14 + 144);
          v30 = vsubq_f32(v26, v28);
          v31 = vsubq_f32(v27, v28);
          v32 = vandq_s8(v20, vcgtq_f32(v22, v29));
          v33 = vandq_s8(v20, vcgtq_f32(v25, v29));
          v34 = vaddq_f32(v30, v32);
          v35 = *(v14 + 160);
          v36 = *(v14 + 176);
          v37 = vaddq_f32(v31, v33);
          v38 = vsubq_f32(vsubq_f32(v22, v20), vmulq_f32(vmulq_f32(v35, v32), v22));
          v39 = vsubq_f32(vsubq_f32(v25, v20), vmulq_f32(vmulq_f32(v35, v33), v25));
          v40 = *(v14 + 192);
          v41 = *(v14 + 208);
          v42 = vaddq_f32(v36, vmulq_f32(v40, v38));
          v43 = vaddq_f32(v36, vmulq_f32(v40, v39));
          v45 = *(v14 + 224);
          v44 = *(v14 + 240);
          v46 = vaddq_f32(v37, vmulq_f32(v39, vaddq_f32(vaddq_f32(v41, vmulq_f32(v45, v39)), vmulq_f32(vmulq_f32(v39, v39), v43))));
          v47 = *(v14 + 32);
          v48 = *(v14 + 48);
          v49 = vmulq_f32(v47, v46);
          v50 = vmaxq_f32(vmulq_f32(v47, vaddq_f32(v34, vmulq_f32(v38, vaddq_f32(vaddq_f32(v41, vmulq_f32(v45, v38)), vmulq_f32(vmulq_f32(v38, v38), v42))))), v44);
          v51 = vmaxq_f32(v49, v44);
          v52 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
          v53 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
          v54 = vsubq_f32(v52, vandq_s8(v20, vcgtq_f32(v52, v50)));
          v55 = vsubq_f32(v53, vandq_s8(v20, vcgtq_f32(v53, v51)));
          v56 = vsubq_f32(v50, v54);
          v57 = vsubq_f32(v51, v55);
          v58 = *(v14 + 256);
          v59 = *(v14 + 272);
          v60 = vaddq_f32(v58, vmulq_f32(v59, v56));
          v61 = vaddq_f32(v58, vmulq_f32(v59, v57));
          v62 = *(v14 + 288);
          v63 = *(v14 + 304);
          v64 = vaddq_f32(v20, vmulq_f32(v56, vaddq_f32(v62, vmulq_f32(v56, v60))));
          v65 = vaddq_f32(v20, vmulq_f32(v57, vaddq_f32(v62, vmulq_f32(v57, v61))));
          v66 = vshlq_n_s32(vaddq_s32(v63, vcvtq_s32_f32(v55)), 0x17uLL);
          v67 = vmulq_f32(v64, vshlq_n_s32(vaddq_s32(v63, vcvtq_s32_f32(v54)), 0x17uLL));
          v68 = *(v14 + 320);
          v69 = *(v14 + 336);
          v70 = (v5 + v10);
          v70[-1] = vaddq_f32(v13, vmulq_f32(v48, vsubq_f32(vbslq_s8(v69, v16, veorq_s8(vandq_s8(v68, v16), v67)), v13)));
          *v70 = vaddq_f32(v12, vmulq_f32(v48, vsubq_f32(vbslq_s8(v69, v17, veorq_s8(vandq_s8(v68, v17), vmulq_f32(v65, v66))), v12)));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v71 = *(v6 + 16 * v9);
        v72 = *(this + 51);
        v73 = vaddq_f32(vmulq_f32(v71, *v72), vmulq_laneq_f32(*(v72 + 16), v71, 3));
        v74 = vabsq_f32(v73);
        v75 = *(v72 + 80);
        v76 = vorrq_s8(vandq_s8(*(v72 + 64), v74), v75);
        v77 = vandq_s8(v75, vcgtq_f32(v76, *(v72 + 144)));
        v78 = vsubq_f32(vsubq_f32(v76, v75), vmulq_f32(vmulq_f32(*(v72 + 160), v77), v76));
        v79 = vmaxq_f32(vmulq_f32(*(v72 + 32), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v74, 0x17uLL)), vandq_s8(*(v72 + 112), vcgtq_f32(*(v72 + 96), v74))), *(v72 + 128)), v77), vmulq_f32(v78, vaddq_f32(vaddq_f32(*(v72 + 208), vmulq_f32(*(v72 + 224), v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(*(v72 + 176), vmulq_f32(*(v72 + 192), v78))))))), *(v72 + 240));
        v80 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
        v81 = vsubq_f32(v80, vandq_s8(v75, vcgtq_f32(v80, v79)));
        v82 = vsubq_f32(v79, v81);
        *(v5 + 16 * v9) = vaddq_f32(v71, vmulq_f32(*(v72 + 48), vsubq_f32(vbslq_s8(*(v72 + 336), v73, veorq_s8(vandq_s8(*(v72 + 320), v73), vmulq_f32(vaddq_f32(v75, vmulq_f32(v82, vaddq_f32(*(v72 + 288), vmulq_f32(v82, vaddq_f32(*(v72 + 256), vmulq_f32(*(v72 + 272), v82)))))), vshlq_n_s32(vaddq_s32(*(v72 + 304), vcvtq_s32_f32(v81)), 0x17uLL)))), v71)));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcColorBalanceNoClip::GetDOD(HgcColorBalanceNoClip *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcColorBalanceNoClip::GetROI(HgcColorBalanceNoClip *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcColorBalanceNoClip::HgcColorBalanceNoClip(HgcColorBalanceNoClip *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725AEB8;
  operator new();
}

void HgcColorBalanceNoClip::~HgcColorBalanceNoClip(HGNode *this)
{
  *this = &unk_28725AEB8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AF73A19ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcColorBalanceNoClip::~HgcColorBalanceNoClip(this);

  HGObject::operator delete(v1);
}

uint64_t HgcColorBalanceNoClip::SetParameter(HgcColorBalanceNoClip *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcColorBalanceNoClip::GetParameter(HgcColorBalanceNoClip *this, unsigned int a2, float *a3)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

uint64_t HgcColorBalanceNoClipGammaOne::Setup(HgcColorBalanceNoClipGammaOne *this, void *a2)
{
  v2 = *(this + 62);
  v3 = v2[1];
  v4 = v2[2];
  v5 = vaddq_f32(v2[8], vmulq_f32(v4, vsubq_f32(vaddq_f32(vmulq_f32(v2[8], *v2), vmulq_laneq_f32(v3, v2[8], 3)), v2[8])));
  v6 = vaddq_f32(v2[9], vmulq_f32(v4, vsubq_f32(vaddq_f32(vmulq_f32(v2[9], *v2), vmulq_laneq_f32(v3, v2[9], 3)), v2[9])));
  v7 = vaddq_f32(v2[10], vmulq_f32(v4, vsubq_f32(vaddq_f32(vmulq_f32(v2[10], *v2), vmulq_laneq_f32(v3, v2[10], 3)), v2[10])));
  v2[3] = vaddq_f32(v2[7], vmulq_f32(v4, vsubq_f32(vaddq_f32(vmulq_f32(v2[7], *v2), vmulq_laneq_f32(v3, v2[7], 3)), v2[7])));
  *(*(this + 62) + 64) = v5;
  *(*(this + 62) + 80) = v6;
  *(*(this + 62) + 96) = v7;
  return 0;
}

const char *HgcColorBalanceNoClipGammaOne::GetProgram(HgcColorBalanceNoClipGammaOne *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000298\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*half4(hg_Params[0]);\n    r1 = half4(hg_Params[1])*r0.wwww + r1;\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[2]);\n    return output;\n}\n//MD5=c65cc828:2159394f:f80023c0:4f30c4ee\n//SIG=00400000:00000001:00000001:00000001:0000:0003:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000274\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*hg_Params[0];\n    r1 = hg_Params[1]*r0.wwww + r1;\n    output.color0 = mix(r0, r1, hg_Params[2]);\n    return output;\n}\n//MD5=80bd144c:5259ff36:49efba23:99823071\n//SIG=00000000:00000001:00000001:00000000:0000:0003:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000029a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r0*hg_ProgramLocal0;\n    r1 = hg_ProgramLocal1*r0.wwww + r1;\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal2);\n}\n//MD5=6d318dea:60b330fa:6f2cc7f9:00c2cc0a\n//SIG=00000000:00000001:00000001:00000000:0000:0003:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF31558(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A30;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF31658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF31698()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF31690);
}

uint64_t HgcColorBalanceNoClipGammaOne::BindTexture(HgcColorBalanceNoClipGammaOne *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcColorBalanceNoClipGammaOne::Bind(HgcColorBalanceNoClipGammaOne *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 62), 1);
  (*(*a2 + 144))(a2, 1, *(this + 62) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 62) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorBalanceNoClipGammaOne::RenderTile(HgcColorBalanceNoClipGammaOne *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 22);
    v8 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = *(this + 62);
          v15 = v14[1];
          v16 = vsubq_f32(vaddq_f32(vmulq_f32(v12, *v14), vmulq_laneq_f32(v15, v12, 3)), v12);
          v17 = vsubq_f32(vaddq_f32(vmulq_f32(v13, *v14), vmulq_laneq_f32(v15, v13, 3)), v13);
          v18 = v14[2];
          v19 = vaddq_f32(*(v6 + v10 - 32), vmulq_f32(v18, vsubq_f32(vaddq_f32(vmulq_f32(*(v6 + v10 - 32), *v14), vmulq_laneq_f32(v15, *(v6 + v10 - 32), 3)), *(v6 + v10 - 32))));
          v20 = vaddq_f32(*(v6 + v10 + 16), vmulq_f32(v18, vsubq_f32(vaddq_f32(vmulq_f32(*(v6 + v10 + 16), *v14), vmulq_laneq_f32(v15, *(v6 + v10 + 16), 3)), *(v6 + v10 + 16))));
          v21 = (v5 + v10);
          v21[-2] = v19;
          v21[-1] = vaddq_f32(v12, vmulq_f32(v18, v16));
          *v21 = vaddq_f32(v13, vmulq_f32(v18, v17));
          v21[1] = v20;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          *(v5 + 16 * v9) = vaddq_f32(*(v6 + 16 * v9), vmulq_f32(*(*(this + 62) + 32), vsubq_f32(vaddq_f32(vmulq_f32(*(v6 + 16 * v9), **(this + 62)), vmulq_laneq_f32(*(*(this + 62) + 16), *(v6 + 16 * v9), 3)), *(v6 + 16 * v9))));
          ++v9;
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcColorBalanceNoClipGammaOne::GetDOD(HgcColorBalanceNoClipGammaOne *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcColorBalanceNoClipGammaOne::GetROI(HgcColorBalanceNoClipGammaOne *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcColorBalanceNoClipGammaOne::~HgcColorBalanceNoClipGammaOne(HgcColorBalanceNoClipGammaOne *this)
{
  *this = &unk_28725B108;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  HgcColorBalanceNoClipGammaOne::~HgcColorBalanceNoClipGammaOne(this);

  HGObject::operator delete(v1);
}