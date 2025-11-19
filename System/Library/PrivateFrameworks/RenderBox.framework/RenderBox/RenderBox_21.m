BOOL RB::Path::ClipStroke::anonymous namespace::make_single_keyframes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, __n128 a6)
{
  v6 = 2 * a2;
  if (!(2 * a2))
  {
    return v6 != 0;
  }

  a4[1] = 0;
  if (a4[2] < v6)
  {
    RB::vector<std::pair<char const*,std::shared_ptr<RB::XML::Value::Base>>,0ul,unsigned long>::reserve_slow(a4, 2 * a2);
    if (a2)
    {
LABEL_4:
      v12 = 0;
      v13 = a4[1];
      v14 = (a1 + 8);
      do
      {
        v15 = *(a3 + 24);
        v16 = *(v14 - 1);
        v17 = *v14;
        v18 = *(v14 - 2);
        v19 = v13 + 1;
        v20 = a4[2];
        if (v20 < v13 + 1)
        {
          RB::vector<std::pair<char const*,std::shared_ptr<RB::XML::Value::Base>>,0ul,unsigned long>::reserve_slow(a4, v19);
          v13 = a4[1];
          v20 = a4[2];
          v19 = v13 + 1;
        }

        v21 = *a4;
        v22 = *a4 + 24 * v13;
        *v22 = v15 * (v17 - floorf(v17));
        *(v22 + 8) = v16;
        *(v22 + 12) = v12;
        *(v22 + 16) = v18;
        a4[1] = v19;
        v23 = v14[1];
        v24 = *(a3 + 24);
        v25 = *(v14 - 1);
        v26 = *(v14 - 2);
        v27 = v13 + 2;
        if (v20 < v27)
        {
          RB::vector<std::pair<char const*,std::shared_ptr<RB::XML::Value::Base>>,0ul,unsigned long>::reserve_slow(a4, v27);
          v21 = *a4;
          v19 = a4[1];
        }

        a6.n128_f64[0] = v24 * (v23 - floorf(v23));
        v28 = v21 + 24 * v19;
        *v28 = a6.n128_u64[0];
        *(v28 + 8) = v25;
        *(v28 + 12) = v12;
        *(v28 + 16) = v26;
        v13 = v19 + 1;
        a4[1] = v19 + 1;
        a6.n128_f32[0] = *(v14 - 1);
        v29 = *(a5 + 4);
        if (a6.n128_f32[0] >= *a5)
        {
          a6.n128_u32[0] = *a5;
        }

        *a5 = a6.n128_u32[0];
        a6.n128_f32[0] = *(v14 - 1);
        if (v29 >= a6.n128_f32[0])
        {
          a6.n128_f32[0] = v29;
        }

        *(a5 + 4) = a6.n128_u32[0];
        ++v12;
        v14 += 4;
      }

      while (a2 != v12);
      goto LABEL_17;
    }
  }

  else if (a2)
  {
    goto LABEL_4;
  }

  v21 = *a4;
  v13 = a4[1];
LABEL_17:
  v30 = 126 - 2 * __clz(v13);
  if (v13)
  {
    v31 = v30;
  }

  else
  {
    v31 = 0;
  }

  v32 = a4[1];
  if (v32 >= 2)
  {
    v33 = *(a5 + 8);
    v34 = *(a5 + 16);
    v35 = v32 - 1;
    v36 = (*a4 + 32);
    do
    {
      v37 = *(v36 - 6);
      v38 = *v36;
      if (vabds_f32(v37, *v36) >= 0.0001)
      {
        v33 = *(v36 - 1) - *(v36 - 4) + v33;
        *(a5 + 8) = v33;
        v34 = v34 + vabds_f32(v38, v37);
        *(a5 + 16) = v34;
      }

      v36 += 6;
      --v35;
    }

    while (v35);
  }

  return v6 != 0;
}

uint64_t RB::Path::ClipStroke::Transform::record_cap(uint64_t result, uint64_t a2, __n128 a3, __n128 a4)
{
  if (*(result + 384))
  {
    v5 = result;
    result = std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    v7 = a3;
    v6 = a4;
    v8 = *(a2 + 24);
    v9 = *(a2 + 16) ? *(a2 + 16) : a2;
    if (v8)
    {
      v10 = 4 * v8;
      v11 = -1;
      do
      {
        v12 = *v9;
        if (*v9 != v11)
        {
          v13 = *(v5 + 384);
          v14 = v13[1];
          if (v13[2] < (v14 + 1))
          {
            result = RB::vector<RB::CustomShader::Closure::marshal_args(RB::RenderPass &,RB::Function &,RB::ColorSpace,RB::Rect const*,unsigned char *,RB::BufferRegion &,std::array<RB::Texture *,3ul> &)::PendingArg,0ul,unsigned long>::reserve_slow(*(v5 + 384), v14 + 1);
            v7 = a3;
            v6 = a4;
            v14 = v13[1];
          }

          v15 = *v13 + 48 * v14;
          *v15 = v12;
          *(v15 + 16) = v7;
          *(v15 + 32) = v6;
          ++v13[1];
          v11 = v12;
        }

        ++v9;
        v10 -= 4;
      }

      while (v10);
    }
  }

  return result;
}

double *RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(double *this, double a2)
{
  v3 = this;
  v4 = (this + 14);
  v5 = this[14];
  while (v5 <= a2)
  {
    v14 = *(v3 + 72);
    if (v14 >= *(v3 + 48))
    {
      break;
    }

    v15 = *(v3 + 40) + 24 * v14;
    v16 = *v15;
    v17 = *(v15 + 8);
    v22 = *(v15 + 12);
    v23 = *(v15 + 20);
    if (*v15 < v5)
    {
      break;
    }

    *(v3 + 72) = v14 + 1;
    if ((v17 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      if (*(v3 + 141) == 1)
      {
        v18 = *(v3 + 128);
        if ((v18 & 0x80) != 0)
        {
          v19 = *(v3 + 168);
          v20 = v19 + 1;
          if (*(v3 + 176) < (v19 + 1))
          {
            this = RB::vector<unsigned int,4ul,unsigned long>::reserve_slow((v3 + 144), v20);
            v19 = *(v3 + 168);
            v20 = v19 + 1;
          }

          v21 = *(v3 + 160);
          if (!v21)
          {
            v21 = v3 + 144;
          }

          *(v21 + 4 * v19) = v18 >> 8;
          *(v3 + 168) = v20;
        }
      }

      *(v3 + 88) = *v4;
      *(v3 + 104) = *(v4 + 2);
      *(v3 + 112) = v16;
      *(v3 + 120) = v17;
      *(v3 + 124) = v22;
      *(v3 + 132) = v23;
      v5 = v16;
    }
  }

  if (v5 <= a2)
  {
    v6 = *(v3 + 72);
    if (v6 == *(v3 + 48))
    {
      if (*(v3 + 141) == 1)
      {
        v7 = *(v3 + 128);
        if ((v7 & 0x80) != 0)
        {
          v8 = v7 >> 8;
          v9 = *(v3 + 168);
          v10 = v9 + 1;
          if (*(v3 + 176) < (v9 + 1))
          {
            this = RB::vector<unsigned int,4ul,unsigned long>::reserve_slow((v3 + 144), v10);
            v9 = *(v3 + 168);
            v10 = v9 + 1;
            v6 = *(v3 + 48);
          }

          v11 = *(v3 + 160);
          if (!v11)
          {
            v11 = v3 + 144;
          }

          *(v11 + 4 * v9) = v8;
          *(v3 + 168) = v10;
        }
      }

      *(v3 + 88) = *v4;
      *(v3 + 104) = *(v4 + 2);
      if (v6)
      {
        v12 = *(v3 + 40);
        v13 = *v12;
        *(v4 + 2) = *(v12 + 2);
        *v4 = v13;
        *(v3 + 112) = *(v3 + 112) + *(*(v3 + 16) + 24);
        ++*(v3 + 72);
      }
    }
  }

  return this;
}

float64x2_t RB::Path::ClipStroke::Transform::Clipper::emit_cap(uint64_t a1, __n128 *a2, float64x2_t *a3, int a4, double a5, double a6, double a7, double a8, double a9, float64x2_t a10, float64x2_t a11)
{
  a11.f64[0] = a5;
  if (*(a1 + 140))
  {
    v15 = *a1;
    v16 = *(*a1 + 392);
    v17 = (a1 + 184);
    v18 = *(a1 + 184);
    v19 = *a2;
    v87 = a11;
    if ((v16 & 8) != 0)
    {
      RB::Path::ClipStroke::Transform::record_cap(v15, a1 + 144, v18, v19);
      *(a1 + 168) = 0;
      (*(**(*a1 + 360) + 24))(*(*a1 + 360), *a2);
      *v17 = *a2;
      *(a1 + 200) = vnegq_f64(*a3);
      result = v87;
      *(a1 + 216) = v87.n128_u64[0];
      return result;
    }

    v20 = vmulq_n_f64(*(a1 + 200), 1.0 / sqrt(vaddvq_f64(vmulq_f64(*(a1 + 200), *(a1 + 200)))));
    a10.f64[0] = *(a1 + 216);
    v21 = vmulq_n_f64(*a3, 1.0 / sqrt(vaddvq_f64(vmulq_f64(*a3, *a3))));
    v22 = vbslq_s8(vdupq_lane_s64(vcgtq_f64(a10, a11).i64[0], 0), v20, v21);
    v23 = vmulq_f64(v22, vsubq_f64(v19, v18));
    v24 = vdupq_laneq_s64(v23, 1);
    v25 = vaddq_f64(v23, v24);
    v24.f64[0] = 0.0;
    v26 = vdupq_lane_s64(vcgtq_f64(v25, v24).i64[0], 0);
    v77 = v22;
    v27 = vmulq_n_f64(v22, v25.f64[0]);
    v28 = vbslq_s8(v26, v19, vsubq_f64(v19, v27));
    v29 = vbslq_s8(v26, vaddq_f64(v27, v18), v18);
    if ((v16 & 2) == 0)
    {
      v30 = *(a1 + 136);
      if (a4)
      {
        if (v30 > 0.0)
        {
          goto LABEL_15;
        }

        v31 = v30 - COERCE_FLOAT(*(a1 + 8));
      }

      else
      {
        if (v30 < 1.0)
        {
          goto LABEL_15;
        }

        v31 = *(a1 + 12) - v30;
      }

      if (v31 > 0.0001)
      {
        v37 = vaddq_f64(v21, v20);
        v38 = vmulq_n_f64(v37, *(a1 + 64) * v31 / sqrt(vaddvq_f64(vmulq_f64(v37, v37))));
        v29 = vaddq_f64(v38, v29);
        v28 = vaddq_f64(v38, v28);
      }
    }

LABEL_15:
    v39 = vceqq_f64(v29, v18);
    v81 = v29;
    v86 = v28;
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v39), 1), v39).u64[0] & 0x8000000000000000) != 0)
    {
      (*(**(v15 + 360) + 24))(*(v15 + 360), v29);
      v29 = v81;
      v28 = v86;
      v15 = *a1;
    }

    RB::Path::ClipStroke::Transform::record_cap(v15, a1 + 144, v29, v28);
    *(a1 + 168) = 0;
    v41 = 32;
    if (a4)
    {
      v41 = 24;
    }

    v42 = *(a1 + v41);
    if (v42)
    {
      v43 = v42 + 32;
      if (*(v42 + 288))
      {
        v43 = *(v42 + 288);
      }

      v44 = *(v42 + 8);
      v45 = vsubq_f64(*(v43 + 8 * *(v42 + 296) - 16), v44);
      v46 = vsubq_f64(v86, v81);
      v47 = vsqrtq_f64(vpaddq_f64(vmulq_f64(v46, v46), vmulq_f64(v45, v45)));
      v48 = vdupq_laneq_s64(v47, 1);
      v49 = vdivq_f64(v45, v48);
      v50 = vdupq_lane_s64(*&v47.f64[0], 0);
      v51 = vdivq_f64(v46, v50);
      v47.f64[0] = vdivq_f64(v47, v48).f64[0];
      v50.f64[0] = -v49.f64[1];
      v52 = vpaddq_f64(vmulq_f64(v49, v51), vmulq_f64(vzip1q_s64(v50, v49), v51));
      *&v89.a = vmulq_n_f64(v52, v47.f64[0]);
      v89.c = vmuld_lane_f64(-v47.f64[0], v52, 1);
      v89.d = v89.a;
      *&v89.tx = v81;
      *&v88.a = *&v89.a;
      *&v88.c = *&v89.c;
      *&v88.tx = v81;
      CGAffineTransformTranslate(&v89, &v88, -v44.f64[0], -v44.f64[1]);
      RB::Path::Subpath::replay(v42, *(*a1 + 360), 0, &v89);
      goto LABEL_38;
    }

    v53 = vsubq_f64(v86, v81);
    *v40.i64 = -v53.f64[1];
    v54 = vmulq_f64(vzip1q_s64(v40, v53), v77);
    v55 = vdupq_laneq_s64(v54, 1);
    v56 = vaddq_f64(v54, v55);
    v55.f64[0] = 0.0;
    v57 = vdupq_lane_s64(vcgtq_f64(v55, v56).i64[0], 0);
    v55.f64[0] = -v77.f64[1];
    v58 = vzip1q_s64(v55, v77);
    v53.f64[0] = sqrt(vaddvq_f64(vmulq_f64(v53, v53))) * 0.5;
    v59 = vmulq_n_f64(vbslq_s8(v57, vnegq_f64(v58), v58), v53.f64[0]);
    v60 = vsubq_f64(v81, v59);
    v61 = vmulq_n_f64(v77, v53.f64[0]);
    v62 = *a1;
    v63 = *(*a1 + 408);
    v64 = v86;
    if (v63 > 3)
    {
      if (v63 != 4)
      {
        if (v63 == 5)
        {
          goto LABEL_32;
        }

        if (v63 != 6)
        {
LABEL_34:
          v66 = *(v62 + 360);
          goto LABEL_35;
        }
      }

      v65 = vaddq_f64(v61, v81);
      v78 = v59;
      v82 = v60;
      v75 = v61;
      (*(**(v62 + 360) + 24))(*(v62 + 360), v65);
      (*(**(*a1 + 360) + 24))(v82);
    }

    else
    {
      if (!*(*a1 + 408))
      {
        v67 = vdupq_n_s64(0x3FE1AC51114F0EAFuLL);
        v76 = vmulq_f64(v61, v67);
        v68 = vaddq_f64(v76, v81);
        v73 = vaddq_f64(v60, v61);
        v74 = vmulq_f64(v59, v67);
        v80 = v59;
        v84 = v60;
        (*(**(v62 + 360) + 40))(*(v62 + 360), v68, vaddq_f64(v73, v74));
        (*(**(*a1 + 360) + 40))(*(*a1 + 360), vsubq_f64(v73, v74), vaddq_f64(vsubq_f64(v84, v80), v76));
LABEL_38:
        v70 = vceqq_f64(v86, *a2);
        v71 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v70), 1), v70).u64[0];
        v72 = v87.n128_u64[0];
        if ((v71 & 0x8000000000000000) != 0)
        {
          (*(**(*a1 + 360) + 24))(*(*a1 + 360), *a2, v87);
          v72 = v87.n128_u64[0];
        }

        *v17 = *a2;
        result = vnegq_f64(*a3);
        *(a1 + 200) = result;
        *(a1 + 216) = v72;
        return result;
      }

      if (v63 != 1)
      {
        if (v63 != 3)
        {
          goto LABEL_34;
        }

LABEL_32:
        v79 = v59;
        v83 = v60;
        (*(**(v62 + 360) + 24))(*(v62 + 360), vaddq_f64(v60, v61));
        v66 = *(*a1 + 360);
        v64 = vsubq_f64(v83, v79);
LABEL_35:
        (*(*v66 + 24))(v64);
        goto LABEL_38;
      }

      v69 = vaddq_f64(v61, v81);
      v78 = v59;
      v82 = v60;
      v75 = v61;
      (*(**(v62 + 360) + 24))(v69);
    }

    v85 = vsubq_f64(v82, v78);
    (*(**(*a1 + 360) + 24))(*(*a1 + 360), vaddq_f64(v85, v75));
    (*(**(*a1 + 360) + 24))(v85);
    goto LABEL_38;
  }

  *(a1 + 224) = *a2;
  *(a1 + 240) = *a3;
  *(a1 + 256) = a5;
  *(a1 + 264) = *(a1 + 136);
  *(a1 + 268) = a4;
  v32 = *(a1 + 288);
  *(a1 + 288) = *(a1 + 160);
  v33 = *(a1 + 304);
  v34 = *(a1 + 168);
  *(a1 + 160) = v32;
  *(a1 + 168) = 0;
  *(a1 + 296) = v34;
  *(a1 + 176) = v33;
  v35 = (a1 + 272);

  RB::vector<unsigned int,4ul,unsigned long>::swap_inline(v35, (a1 + 144));
  return result;
}

uint64_t RB::Path::ClipStroke::Transform::Clipper::Clipper(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7, double a8, double a9)
{
  *result = a2;
  v9 = *(a2 + 400);
  *(result + 8) = v9;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  *(result + 56) = a8;
  *(result + 64) = a9;
  *(result + 140) = 0;
  *(result + 142) = 0;
  *(result + 160) = 0;
  *(result + 168) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 176) = 4;
  v10 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(result + 184) = v10;
  *(result + 200) = 0;
  *(result + 208) = 0;
  *(result + 224) = v10;
  *(result + 240) = 0;
  *(result + 248) = 0;
  *(result + 288) = 0;
  *(result + 296) = 0;
  *(result + 304) = 4;
  v11 = a6 + 24 * a7;
  v12 = *(v11 - 24);
  *(result + 104) = *(v11 - 8);
  *(result + 88) = v12;
  v13 = *(result + 88) - *(a3 + 24);
  *(result + 88) = v13;
  v14 = *a6;
  *(result + 128) = *(a6 + 2);
  *(result + 112) = v14;
  *(result + 72) = 1;
  if (*&a8 == 0.0)
  {
    if (fabsf(*&v9) < 0.0001)
    {
LABEL_3:
      HIDWORD(v15) = HIDWORD(v9);
      LODWORD(v15) = 2143289344;
      *(result + 8) = v15;
      goto LABEL_6;
    }
  }

  else if (*&v9 < (*&a8 + 0.0001))
  {
    goto LABEL_3;
  }

  v15 = v9;
LABEL_6:
  if (*(&a8 + 1) == 1.0)
  {
    if (fabsf(*(&v9 + 1) + -1.0) >= 0.0001)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (*(&v9 + 1) > (*(&a8 + 1) + -0.0001))
  {
LABEL_8:
    *(result + 12) = 2143289344;
    v15 = *(result + 8);
  }

LABEL_9:
  v16 = v13 / (*(result + 112) - v13);
  v17 = *(result + 96) + ((*(result + 96) - *(result + 120)) * v16);
  *(result + 136) = v17;
  v18 = 0.0;
  if (*&v15 >= 0.0)
  {
    v18 = *&v15;
  }

  v19 = *(&v15 + 1);
  if (*(&v15 + 1) > 1.0)
  {
    v19 = 1.0;
  }

  v20 = v18 >= v17;
  if (v19 <= v17)
  {
    v20 = 1;
  }

  *(result + 141) = v20;
  return result;
}

double RB::Path::ClipStroke::LengthEstimator::LengthEstimator(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = 0;
  *(a1 + 344) = 32;
  *(a1 + 352) = 2;
  *(a1 + 356) = 0;
  *a1 = &unk_1F0A3F898;
  *(a1 + 392) = 0;
  result = 0.0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  return result;
}

double RB::Path::ClipStroke::LengthEstimator::subpath_keyframes(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (a3)
  {
    a4.n128_u64[0] = *(a1 + 64);
    if (a4.n128_f64[0] > 0.0)
    {
      a4.n128_u64[0] = 0xFF8000007F800000;
      v9 = 0xFF8000007F800000;
      v10 = 0.0;
      v11 = 0.0;
      a4.n128_f32[0] = v11;
      if (v11 > 0.0)
      {
        v5 = vrecpe_f32(LODWORD(v11));
        v6 = vmul_f32(vrecps_f32(LODWORD(v11), v5), v5);
        a4.n128_f64[0] = v10 * vmul_f32(v6, vrecps_f32(LODWORD(v11), v6)).f32[0];
        if (a4.n128_f64[0] > 0.0)
        {
          v7 = *(a1 + 368);
          if (v7 < a4.n128_f64[0])
          {
            v7 = a4.n128_f64[0];
          }

          a4.n128_f64[0] = *(a1 + 360) + a4.n128_f64[0];
          *(a1 + 360) = a4.n128_u64[0];
          *(a1 + 368) = v7;
        }
      }
    }
  }

  return a4.n128_f64[0];
}

uint64_t RB::Path::ClipStroke::AttachmentResolver::AttachmentResolver(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, float a5, double a6, double a7, double a8)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a8;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 344) = 32;
  *(result + 352) = 2;
  *(result + 356) = 0;
  *result = &unk_1F0A3F8E0;
  *(result + 360) = 0;
  *(result + 364) = 0;
  *(result + 368) = 0u;
  *(result + 384) = 0u;
  *(result + 400) = a4;
  *(result + 408) = a5;
  *(result + 416) = a6;
  *(result + 424) = a7;
  return result;
}

void RB::Path::ClipStroke::AttachmentResolver::subpath_keyframes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32) != *(a1 + 400))
  {
    return;
  }

  v42 = 0;
  v43 = 0;
  v44 = 4;
  if (!a3)
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = (a2 + 12);
  do
  {
    if (vabds_f32(*(v9 - 2), *(a1 + 408)) >= 0.0001)
    {
      goto LABEL_16;
    }

    v10 = RB::Path::Subpath::point_at((a1 + 40), *(v9 - 1) - floorf(*(v9 - 1)));
    v12 = v11;
    v13 = RB::Path::Subpath::point_at((a1 + 40), *v9 - floorf(*v9));
    v15 = v14;
    v17 = *(v9 - 1);
    v16 = *v9;
    if (vabds_f32(*v9, v17) <= 0.5)
    {
      if (v16 >= v17)
      {
LABEL_9:
        v18 = v13;
        v19 = v15;
        v13 = v10;
        v15 = v12;
        goto LABEL_10;
      }
    }

    else if (v16 < v17)
    {
      goto LABEL_9;
    }

    v18 = v10;
    v19 = v12;
LABEL_10:
    v20 = v43;
    v7 = v43 + 1;
    if (v44 < v43 + 1)
    {
      RB::vector<std::tuple<unsigned long,CG::Point,CG::Point>,4ul,unsigned long>::reserve_slow(__dst, v7);
      v20 = v43;
      v7 = v43 + 1;
    }

    v6 = v42;
    if (v42)
    {
      v21 = v42;
    }

    else
    {
      v21 = __dst;
    }

    v22 = &v21[40 * v20];
    *v22 = v8;
    v22[1] = v13;
    *(v22 + 2) = v15;
    v22[3] = v18;
    *(v22 + 4) = v19;
    v43 = v7;
LABEL_16:
    ++v8;
    v9 += 4;
  }

  while (a3 != v8);
  if (v7)
  {
    if (v7 == 1)
    {
      v23 = __dst;
      if (v6)
      {
        v23 = v6;
      }

      v39 = *(v23 + 24);
      v40 = *(v23 + 8);
      v24 = *(a1 + 24) + *v23;
      if ((*(a1 + 364) & 1) == 0)
      {
        *(a1 + 364) = 1;
      }

      *(a1 + 360) = v24;
      *(a1 + 368) = v40;
      *(a1 + 384) = v39;
    }

    else
    {
      v25 = __dst;
      if (v6)
      {
        v25 = v6;
      }

      v26 = *(a1 + 416);
      v27 = 40 * v7;
      v28 = INFINITY;
      __asm { FMOV            V1.2D, #-0.5 }

      do
      {
        v34 = *(v25 + 8);
        v35 = *(v25 + 24);
        v36 = vmlaq_f64(v26, _Q1, vaddq_f64(v35, v34));
        v37 = vaddvq_f64(vmulq_f64(v36, v36));
        if (v37 < v28)
        {
          v38 = *v25;
          if ((*(a1 + 364) & 1) == 0)
          {
            *(a1 + 364) = 1;
          }

          *(a1 + 360) = *(a1 + 24) + v38;
          *(a1 + 368) = v34;
          *(a1 + 384) = v35;
          v28 = v37;
        }

        v25 += 40;
        v27 -= 40;
      }

      while (v27);
    }
  }

  if (v6)
  {
    free(v6);
  }
}

__n128 std::__introsort<std::_ClassicAlgPolicy,RB::Path::ClipStroke::anonymous namespace::make_single_keyframes(std::span<RBPathClipStrokeKeyframe const,18446744073709551615ul>,RB::Path::Subpath const&,RB::vector<RB::Path::ClipStroke::SingleKeyframe,0ul,unsigned long> &,RB::Path::ClipStroke::anonymous namespace::KeyframesMetadata &)::$_0 &,RB::Path::ClipStroke::SingleKeyframe*,false>(uint64_t a1, unint64_t a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = (a2 - 48);
  v11 = (a2 - 72);
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v90 = *(a2 - 24);
        v89 = (a2 - 24);
        result.n128_f64[0] = v90;
        if (v90 >= *v12)
        {
          return result;
        }

LABEL_106:
        v198 = *(v12 + 16);
        v169 = *v12;
        v94 = *v89;
        *(v12 + 16) = v89[1].n128_u64[0];
        *v12 = v94;
        result = v169;
        v89[1].n128_u64[0] = v198;
LABEL_107:
        *v89 = result;
        return result;
      }

      goto LABEL_9;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      v91 = (v12 + 24);
      v95 = *(v12 + 24);
      v96 = (v12 + 48);
      v97 = *(v12 + 48);
      if (v95 >= *v12)
      {
        if (v97 < v95)
        {
          v138 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
          *(v12 + 64) = v138;
          if (*(v12 + 24) < *v12)
          {
            v201 = *(v12 + 16);
            v174 = *v12;
            *v12 = *v91;
            *(v12 + 16) = *(v12 + 40);
            result.n128_u64[1] = v174.n128_u64[1];
            *v91 = v174;
            *(v12 + 40) = v201;
          }
        }
      }

      else
      {
        if (v97 < v95)
        {
          v199 = *(v12 + 16);
          v170 = *v12;
          *v12 = *v96;
          *(v12 + 16) = *(v12 + 64);
          result.n128_u64[1] = v170.n128_u64[1];
          *v96 = v170;
          v98 = v199;
          goto LABEL_177;
        }

        v203 = *(v12 + 16);
        v177 = *v12;
        *v12 = *v91;
        *(v12 + 16) = *(v12 + 40);
        *v91 = v177;
        *(v12 + 40) = v203;
        if (v97 < *(v12 + 24))
        {
          v98 = *(v12 + 40);
          result = *v91;
          *v91 = *v96;
          *(v12 + 40) = *(v12 + 64);
          *v96 = result;
LABEL_177:
          *(v12 + 64) = v98;
        }
      }

      result.n128_u64[0] = *v9;
      if (*v9 >= v96->n128_f64[0])
      {
        return result;
      }

      result = *v96;
      v144 = *(v12 + 64);
      v145 = *(a2 - 8);
      *v96 = *v9;
      *(v12 + 64) = v145;
      *(a2 - 8) = v144;
      *v9 = result;
      result.n128_u64[0] = v96->n128_u64[0];
      if (v96->n128_f64[0] >= v91->n128_f64[0])
      {
        return result;
      }

      v146 = *(v12 + 40);
      result = *v91;
      *v91 = *v96;
      *(v12 + 40) = *(v12 + 64);
      *v96 = result;
      *(v12 + 64) = v146;
LABEL_181:
      result.n128_u64[0] = *(v12 + 24);
      if (result.n128_f64[0] < *v12)
      {
        v204 = *(v12 + 16);
        v178 = *v12;
        *v12 = *v91;
        *(v12 + 16) = v91[1].n128_u64[0];
        result = v178;
        *v91 = v178;
        v91[1].n128_u64[0] = v204;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(v12, (v12 + 24), (v12 + 48), (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v99 = v12 + 24;
      v101 = v12 == a2 || v99 == a2;
      if (a4)
      {
        if (!v101)
        {
          v102 = 0;
          v103 = v12;
          do
          {
            v104 = v99;
            result.n128_u64[0] = v103[1].n128_u64[1];
            if (result.n128_f64[0] < v103->n128_f64[0])
            {
              v171 = v103[2];
              v105 = v102;
              while (1)
              {
                v106 = v12 + v105;
                *(v106 + 24) = *(v12 + v105);
                *(v106 + 40) = *(v12 + v105 + 16);
                if (!v105)
                {
                  break;
                }

                v105 -= 24;
                if (result.n128_f64[0] >= *(v106 - 24))
                {
                  v107 = v12 + v105 + 24;
                  goto LABEL_126;
                }
              }

              v107 = v12;
LABEL_126:
              *v107 = result.n128_u64[0];
              result = v171;
              *(v107 + 8) = v171;
            }

            v99 = &v104[1].n128_u64[1];
            v102 += 24;
            v103 = v104;
          }

          while (&v104[1].n128_i8[8] != a2);
        }
      }

      else if (!v101)
      {
        do
        {
          v139 = v99;
          result.n128_u64[0] = *(a1 + 24);
          if (result.n128_f64[0] < *a1)
          {
            v175 = *(a1 + 32);
            v140 = v99;
            do
            {
              *v140 = *(v140 - 24);
              *(v140 + 16) = *(v140 - 8);
              v141 = *(v140 - 48);
              v140 -= 24;
            }

            while (result.n128_f64[0] < v141);
            *v140 = result.n128_u64[0];
            result = v175;
            *(v140 + 8) = v175;
          }

          v99 += 24;
          a1 = v139;
        }

        while (v139 + 24 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v14 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = v12 + 24 * v111;
            if (2 * v110 + 2 < v14 && *v112 < *(v112 + 24))
            {
              v112 += 24;
              v111 = 2 * v110 + 2;
            }

            v113 = v12 + 24 * v110;
            v114 = *v113;
            if (*v112 >= *v113)
            {
              v172 = *(v113 + 8);
              do
              {
                v115 = v113;
                v113 = v112;
                v116 = *v112;
                *(v115 + 16) = *(v112 + 16);
                *v115 = v116;
                if (v108 < v111)
                {
                  break;
                }

                v117 = 2 * v111;
                v111 = (2 * v111) | 1;
                v112 = v12 + 24 * v111;
                v118 = v117 + 2;
                if (v118 < v14 && *v112 < *(v112 + 24))
                {
                  v112 += 24;
                  v111 = v118;
                }
              }

              while (*v112 >= v114);
              *v113 = v114;
              *(v113 + 8) = v172;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v119 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v120 = 0;
          v200 = *(v12 + 16);
          v173 = *v12;
          v121 = v12;
          do
          {
            v122 = v121;
            v123 = v121 + 24 * v120;
            v121 = v123 + 24;
            v124 = 2 * v120;
            v120 = (2 * v120) | 1;
            v125 = v124 + 2;
            if (v125 < v119)
            {
              v127 = *(v123 + 48);
              v126 = v123 + 48;
              if (*(v126 - 24) < v127)
              {
                v121 = v126;
                v120 = v125;
              }
            }

            v128 = *v121;
            v122[1].n128_u64[0] = *(v121 + 16);
            *v122 = v128;
          }

          while (v120 <= ((v119 - 2) >> 1));
          a2 -= 24;
          if (v121 == a2)
          {
            result = v173;
            *(v121 + 16) = v200;
            *v121 = v173;
          }

          else
          {
            v129 = *a2;
            *(v121 + 16) = *(a2 + 16);
            *v121 = v129;
            result = v173;
            *(a2 + 16) = v200;
            *a2 = v173;
            v130 = v121 - v12 + 24;
            if (v130 >= 25)
            {
              v131 = (-2 - 0x5555555555555555 * (v130 >> 3)) >> 1;
              v132 = v12 + 24 * v131;
              result.n128_u64[0] = *v121;
              if (*v132 < *v121)
              {
                v149 = *(v121 + 8);
                do
                {
                  v133 = v121;
                  v121 = v132;
                  v134 = *v132;
                  *(v133 + 16) = *(v132 + 16);
                  *v133 = v134;
                  if (!v131)
                  {
                    break;
                  }

                  v131 = (v131 - 1) >> 1;
                  v132 = v12 + 24 * v131;
                }

                while (*v132 < result.n128_f64[0]);
                *v121 = result.n128_u64[0];
                result = v149;
                *(v121 + 8) = v149;
              }
            }
          }
        }

        while (v119-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = *v9;
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_f64[0];
      if (v16->n128_f64[0] >= *v12)
      {
        if (v17 < v18)
        {
          v181 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v22;
          *(a2 - 8) = v181;
          *v9 = v152;
          if (v16->n128_f64[0] < *v12)
          {
            v182 = *(v12 + 16);
            v153 = *v12;
            v23 = *v16;
            *(v12 + 16) = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v182;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v179 = *(v12 + 16);
          v150 = *v12;
          v19 = *v9;
          *(v12 + 16) = *(a2 - 8);
          *v12 = v19;
          goto LABEL_26;
        }

        v185 = *(v12 + 16);
        v156 = *v12;
        v26 = *v16;
        *(v12 + 16) = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v185;
        *v16 = v156;
        if (*v9 < v16->n128_f64[0])
        {
          v179 = v16[1].n128_u64[0];
          v150 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = *(a2 - 8);
          *v16 = v27;
LABEL_26:
          *(a2 - 8) = v179;
          *v9 = v150;
        }
      }

      v28 = (v12 + 24);
      v29 = v12 + 24 * v15;
      v31 = *(v29 - 24);
      v30 = (v29 - 24);
      v32 = v31;
      v33 = *v10;
      if (v31 >= *(v12 + 24))
      {
        if (v33 < v32)
        {
          v186 = v30[1].n128_i64[0];
          v157 = *v30;
          v37 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v37;
          *(a2 - 32) = v186;
          *v10 = v157;
          if (v30->n128_f64[0] < v28->n128_f64[0])
          {
            v38 = *v28;
            v39 = *(v12 + 40);
            v40 = v30[1].n128_i64[0];
            *v28 = *v30;
            *(v12 + 40) = v40;
            v30[1].n128_u64[0] = v39;
            *v30 = v38;
          }
        }
      }

      else
      {
        if (v33 < v32)
        {
          v34 = *v28;
          v35 = *(v12 + 40);
          v36 = *(a2 - 32);
          *v28 = *v10;
          *(v12 + 40) = v36;
          *(a2 - 32) = v35;
          goto LABEL_38;
        }

        v43 = *v28;
        v44 = *(v12 + 40);
        v45 = v30[1].n128_i64[0];
        *v28 = *v30;
        *(v12 + 40) = v45;
        v30[1].n128_u64[0] = v44;
        *v30 = v43;
        if (*v10 < v30->n128_f64[0])
        {
          v188 = v30[1].n128_i64[0];
          v159 = *v30;
          v46 = *v10;
          v30[1].n128_u64[0] = *(a2 - 32);
          *v30 = v46;
          v34 = v159;
          *(a2 - 32) = v188;
LABEL_38:
          *v10 = v34;
        }
      }

      v47 = (v12 + 48);
      v48 = v12 + 24 * v15;
      v50 = *(v48 + 24);
      v49 = (v48 + 24);
      v51 = v50;
      v52 = *v11;
      if (v50 >= *(v12 + 48))
      {
        if (v52 < v51)
        {
          v189 = v49[1].n128_i64[0];
          v160 = *v49;
          v56 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v56;
          *(a2 - 56) = v189;
          *v11 = v160;
          if (v49->n128_f64[0] < v47->n128_f64[0])
          {
            v57 = *v47;
            v58 = *(v12 + 64);
            v59 = v49[1].n128_i64[0];
            *v47 = *v49;
            *(v12 + 64) = v59;
            v49[1].n128_u64[0] = v58;
            *v49 = v57;
          }
        }
      }

      else
      {
        if (v52 < v51)
        {
          v53 = *v47;
          v54 = *(v12 + 64);
          v55 = *(a2 - 56);
          *v47 = *v11;
          *(v12 + 64) = v55;
          *(a2 - 56) = v54;
          goto LABEL_47;
        }

        v60 = *v47;
        v61 = *(v12 + 64);
        v62 = v49[1].n128_i64[0];
        *v47 = *v49;
        *(v12 + 64) = v62;
        v49[1].n128_u64[0] = v61;
        *v49 = v60;
        if (*v11 < v49->n128_f64[0])
        {
          v190 = v49[1].n128_i64[0];
          v161 = *v49;
          v63 = *v11;
          v49[1].n128_u64[0] = *(a2 - 56);
          *v49 = v63;
          v53 = v161;
          *(a2 - 56) = v190;
LABEL_47:
          *v11 = v53;
        }
      }

      v64 = v16->n128_f64[0];
      v65 = v49->n128_f64[0];
      if (v16->n128_f64[0] >= v30->n128_f64[0])
      {
        if (v65 < v64)
        {
          v192 = v16[1].n128_u64[0];
          v163 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
          v49[1].n128_u64[0] = v192;
          *v49 = v163;
          if (v16->n128_f64[0] < v30->n128_f64[0])
          {
            v193 = v30[1].n128_u64[0];
            v164 = *v30;
            *v30 = *v16;
            v30[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v193;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v65 < v64)
        {
          v191 = v30[1].n128_u64[0];
          v162 = *v30;
          *v30 = *v49;
          v30[1].n128_u64[0] = v49[1].n128_u64[0];
          goto LABEL_56;
        }

        v194 = v30[1].n128_u64[0];
        v165 = *v30;
        *v30 = *v16;
        v30[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v194;
        *v16 = v165;
        if (v49->n128_f64[0] < v16->n128_f64[0])
        {
          v191 = v16[1].n128_u64[0];
          v162 = *v16;
          *v16 = *v49;
          v16[1].n128_u64[0] = v49[1].n128_u64[0];
LABEL_56:
          v49[1].n128_u64[0] = v191;
          *v49 = v162;
        }
      }

      v195 = *(v12 + 16);
      v166 = *v12;
      v66 = *v16;
      *(v12 + 16) = v16[1].n128_u64[0];
      *v12 = v66;
      v16[1].n128_u64[0] = v195;
      *v16 = v166;
      goto LABEL_58;
    }

    v20 = *v12;
    if (*v12 >= v16->n128_f64[0])
    {
      if (v17 < v20)
      {
        v183 = *(v12 + 16);
        v154 = *v12;
        v24 = *v9;
        *(v12 + 16) = *(a2 - 8);
        *v12 = v24;
        *(a2 - 8) = v183;
        *v9 = v154;
        if (*v12 < v16->n128_f64[0])
        {
          v184 = v16[1].n128_u64[0];
          v155 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = *(v12 + 16);
          *v16 = v25;
          *(v12 + 16) = v184;
          *v12 = v155;
        }
      }

      goto LABEL_58;
    }

    if (v17 >= v20)
    {
      v187 = v16[1].n128_u64[0];
      v158 = *v16;
      v41 = *v12;
      v16[1].n128_u64[0] = *(v12 + 16);
      *v16 = v41;
      *(v12 + 16) = v187;
      *v12 = v158;
      if (*v9 >= *v12)
      {
        goto LABEL_58;
      }

      v180 = *(v12 + 16);
      v151 = *v12;
      v42 = *v9;
      *(v12 + 16) = *(a2 - 8);
      *v12 = v42;
    }

    else
    {
      v180 = v16[1].n128_u64[0];
      v151 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = *(a2 - 8);
      *v16 = v21;
    }

    *(a2 - 8) = v180;
    *v9 = v151;
LABEL_58:
    --a3;
    v67 = *v12;
    if ((a4 & 1) != 0 || *(v12 - 24) < v67)
    {
      v68 = 0;
      v147 = *(v12 + 8);
      do
      {
        v69 = *(v12 + v68 + 24);
        v68 += 24;
      }

      while (v69 < v67);
      v70 = v12 + v68;
      v71 = a2;
      if (v68 == 24)
      {
        v71 = a2;
        do
        {
          if (v70 >= v71)
          {
            break;
          }

          v73 = *(v71 - 24);
          v71 -= 24;
        }

        while (v73 >= v67);
      }

      else
      {
        do
        {
          v72 = *(v71 - 24);
          v71 -= 24;
        }

        while (v72 >= v67);
      }

      v12 += v68;
      if (v70 < v71)
      {
        v74 = v71;
        do
        {
          v196 = *(v12 + 16);
          v167 = *v12;
          v75 = *v74;
          *(v12 + 16) = *(v74 + 16);
          *v12 = v75;
          *(v74 + 16) = v196;
          *v74 = v167;
          do
          {
            v76 = *(v12 + 24);
            v12 += 24;
          }

          while (v76 < v67);
          do
          {
            v77 = *(v74 - 24);
            v74 -= 24;
          }

          while (v77 >= v67);
        }

        while (v12 < v74);
      }

      if (v12 - 24 != a1)
      {
        v78 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v78;
      }

      *(v12 - 24) = v67;
      *(v12 - 16) = v147;
      if (v70 < v71)
      {
        goto LABEL_79;
      }

      {
        a2 = v12 - 24;
        if (!v79)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v79)
      {
LABEL_79:
        a4 = 0;
      }
    }

    else
    {
      v148 = *(v12 + 8);
      if (v67 >= *v9)
      {
        v82 = v12 + 24;
        do
        {
          v12 = v82;
          if (v82 >= a2)
          {
            break;
          }

          v82 += 24;
        }

        while (v67 >= *v12);
      }

      else
      {
        do
        {
          v81 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v81);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v83 = a2;
        do
        {
          v84 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v84);
      }

      while (v12 < v83)
      {
        v197 = *(v12 + 16);
        v168 = *v12;
        v85 = *v83;
        *(v12 + 16) = *(v83 + 16);
        *v12 = v85;
        *(v83 + 16) = v197;
        *v83 = v168;
        do
        {
          v86 = *(v12 + 24);
          v12 += 24;
        }

        while (v67 >= v86);
        do
        {
          v87 = *(v83 - 24);
          v83 -= 24;
        }

        while (v67 < v87);
      }

      if (v12 - 24 != a1)
      {
        v88 = *(v12 - 24);
        *(a1 + 16) = *(v12 - 8);
        *a1 = v88;
      }

      a4 = 0;
      *(v12 - 24) = v67;
      result = v148;
      *(v12 - 16) = v148;
    }
  }

  v91 = (v12 + 24);
  result.n128_u64[0] = *(v12 + 24);
  v92 = *(a2 - 24);
  v89 = (a2 - 24);
  v93 = v92;
  if (result.n128_f64[0] >= *v12)
  {
    if (v93 >= result.n128_f64[0])
    {
      return result;
    }

    result = *v91;
    v136 = *(v12 + 40);
    v137 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v137;
    v89[1].n128_u64[0] = v136;
    *v89 = result;
    goto LABEL_181;
  }

  if (v93 < result.n128_f64[0])
  {
    goto LABEL_106;
  }

  v202 = *(v12 + 16);
  v176 = *v12;
  *v12 = *v91;
  *(v12 + 16) = *(v12 + 40);
  result.n128_u64[1] = v176.n128_u64[1];
  *v91 = v176;
  *(v12 + 40) = v202;
  result.n128_u64[0] = v89->n128_u64[0];
  if (v89->n128_f64[0] < *(v12 + 24))
  {
    result = *v91;
    v142 = *(v12 + 40);
    v143 = v89[1].n128_u64[0];
    *v91 = *v89;
    *(v12 + 40) = v143;
    v89[1].n128_u64[0] = v142;
    goto LABEL_107;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::ClipStroke::anonymous namespace::make_single_keyframes(std::span<RBPathClipStrokeKeyframe const,18446744073709551615ul>,RB::Path::Subpath const&,RB::vector<RB::Path::ClipStroke::SingleKeyframe,0ul,unsigned long> &,RB::Path::ClipStroke::anonymous namespace::KeyframesMetadata &)::$_0 &,RB::Path::ClipStroke::SingleKeyframe*>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 24);
      v7 = *(a1 + 24);
      v8 = *(a2 - 24);
      v4 = (a2 - 24);
      v9 = v8;
      if (v7 < *a1)
      {
        if (v9 >= v7)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v39;
          *(a1 + 40) = v38;
          if (v4->n128_f64[0] < *(a1 + 24))
          {
            v40 = *(a1 + 40);
            v41 = *v6;
            v42 = v4[1].n128_i64[0];
            *v6 = *v4;
            *(a1 + 40) = v42;
            *v4 = v41;
            v4[1].n128_u64[0] = v40;
          }

          return 1;
        }

LABEL_12:
        v10 = *(a1 + 16);
        v11 = *a1;
        v12 = v4[1].n128_i64[0];
        *a1 = *v4;
        *(a1 + 16) = v12;
        *v4 = v11;
        v4[1].n128_u64[0] = v10;
        return 1;
      }

      if (v9 >= v7)
      {
        return 1;
      }

      v27 = *(a1 + 40);
      v28 = *v6;
      v29 = v4[1].n128_i64[0];
      *v6 = *v4;
      *(a1 + 40) = v29;
      *v4 = v28;
      v4[1].n128_u64[0] = v27;
LABEL_48:
      if (*(a1 + 24) < *a1)
      {
        v61 = *(a1 + 16);
        v62 = *a1;
        *a1 = *v6;
        *(a1 + 16) = v6[1].n128_u64[0];
        *v6 = v62;
        v6[1].n128_u64[0] = v61;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,RB::Path::Subpath::DistanceMap::ensure_sorted(void)::$_0 &,RB::Path::Subpath::DistanceMap::Element *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 24), a3);
      return 1;
    }

    v6 = (a1 + 24);
    v20 = *(a1 + 24);
    v21 = (a1 + 48);
    v22 = *(a1 + 48);
    v23 = (a2 - 24);
    v24 = *a1;
    if (v20 >= *a1)
    {
      if (v22 < v20)
      {
        v34 = *(a1 + 40);
        v35 = *v6;
        *v6 = *v21;
        *(a1 + 40) = *(a1 + 64);
        *v21 = v35;
        *(a1 + 64) = v34;
        if (v6->n128_f64[0] < v24)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *v6;
          *(a1 + 16) = *(a1 + 40);
          *v6 = v37;
          *(a1 + 40) = v36;
        }
      }

      goto LABEL_45;
    }

    if (v22 >= v20)
    {
      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *v6;
      *(a1 + 16) = *(a1 + 40);
      *v6 = v55;
      *(a1 + 40) = v54;
      if (v22 >= *(a1 + 24))
      {
        goto LABEL_45;
      }

      v25 = *(a1 + 40);
      v26 = *v6;
      *v6 = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    else
    {
      v25 = *(a1 + 16);
      v26 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    *v21 = v26;
    *(a1 + 64) = v25;
LABEL_45:
    if (*v23 >= v21->n128_f64[0])
    {
      return 1;
    }

    v56 = *(a1 + 64);
    v57 = *v21;
    v58 = *(a2 - 8);
    *v21 = *v23;
    *(a1 + 64) = v58;
    *v23 = v57;
    *(a2 - 8) = v56;
    if (v21->n128_f64[0] >= v6->n128_f64[0])
    {
      return 1;
    }

    v59 = *(a1 + 40);
    v60 = *v6;
    *v6 = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v60;
    *(a1 + 64) = v59;
    goto LABEL_48;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 24);
    v4 = (a2 - 24);
    if (v5 >= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 48);
  v15 = (a1 + 24);
  v16 = *(a1 + 24);
  v17 = *a1;
  if (v16 >= *a1)
  {
    if (v14 < v16)
    {
      v30 = *(a1 + 40);
      v31 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v31;
      *(a1 + 64) = v30;
      if (v15->n128_f64[0] < v17)
      {
        v32 = *(a1 + 16);
        v33 = *a1;
        *a1 = *v15;
        *(a1 + 16) = *(a1 + 40);
        *v15 = v33;
        *(a1 + 40) = v32;
      }
    }
  }

  else if (v14 >= v16)
  {
    v43 = *(a1 + 16);
    v44 = *a1;
    *a1 = *v15;
    *(a1 + 16) = *(a1 + 40);
    *v15 = v44;
    *(a1 + 40) = v43;
    if (v14 < *(a1 + 24))
    {
      v45 = *(a1 + 40);
      v46 = *v15;
      *v15 = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v46;
      *(a1 + 64) = v45;
    }
  }

  else
  {
    v18 = *(a1 + 16);
    v19 = *a1;
    *a1 = *v13;
    *(a1 + 16) = *(a1 + 64);
    *v13 = v19;
    *(a1 + 64) = v18;
  }

  v47 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v48 = 0;
  v49 = 0;
  while (1)
  {
    v50 = *v47;
    if (*v47 < v13->n128_f64[0])
    {
      v64 = *(v47 + 8);
      v51 = v48;
      while (1)
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          break;
        }

        v51 -= 24;
        if (v50 >= *(v52 + 24))
        {
          v53 = a1 + v51 + 72;
          goto LABEL_39;
        }
      }

      v53 = a1;
LABEL_39:
      *v53 = v50;
      *(v53 + 8) = v64;
      if (++v49 == 8)
      {
        return v47 + 24 == a2;
      }
    }

    v13 = v47;
    v48 += 24;
    v47 += 24;
    if (v47 == a2)
    {
      return 1;
    }
  }
}

void *RB::vector<unsigned int,4ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 4) + (*(__dst + 4) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 4) + (*(__dst + 4) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,4ul>(*(__dst + 2), __dst, 4uLL, __dst + 4, v3);
  *(__dst + 2) = result;
  return result;
}

__int128 *RB::vector<unsigned int,4ul,unsigned long>::swap_inline(__int128 *result, __int128 *a2)
{
  v2 = *(a2 + 2);
  v3 = *(result + 2);
  if (v2)
  {
    v4 = v3 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = *a2;
    *a2 = *result;
    *result = v5;
    if (v3)
    {
      if (v2)
      {
        return result;
      }
    }

    else
    {
      *(result + 2) = 0;
      if (v2)
      {
        return result;
      }
    }

    *(a2 + 2) = 0;
  }

  return result;
}

void RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::LineSegment>(uint64_t a1, float64_t a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8)
{
  v8 = a6;
  v25.f64[0] = a2;
  v25.f64[1] = a3;
  *&v26 = a4;
  *(&v26 + 1) = a5;
  v10 = *(a1 + 80);
  v11 = v10 + a6;
  v12 = *(a1 + 112);
  if (v12 < v11)
  {
    do
    {
      v13 = CG::LineSegment::index(&v25, v12 - v10);
      if (v13 <= 0.0001)
      {
        v17 = *(a1 + 112);
      }

      else
      {
        CG::LineSegment::split(&v25, v13, &v19);
        v14.f64[0] = v22 - v20;
        v15 = sqrt((v21 - v19) * (v21 - v19) + v14.f64[0] * v14.f64[0]);
        LODWORD(v14.f64[0]) = *(a1 + 120);
        RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>(a1, v19, v20, v21, v22, v15, v14, v16);
        v17 = *(a1 + 112);
        v25 = v23;
        v26 = v24;
        v8 = v8 - v15;
        v10 = v17;
      }

      RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(a1, v17);
      v12 = *(a1 + 112);
    }

    while (v12 < v11);
    a3 = v25.f64[1];
    a2 = v25.f64[0];
    a5 = *(&v26 + 1);
    a4 = *&v26;
  }

  a7.f64[0] = *(a1 + 88);
  a8.f64[0] = v11 - a7.f64[0];
  v18 = (v11 - a7.f64[0]) / (v12 - a7.f64[0]);
  LODWORD(a7.f64[0]) = *(a1 + 96);
  *&v18 = v18;
  *a8.f64 = *(a1 + 120) - *a7.f64;
  *a7.f64 = *a7.f64 + (*a8.f64 * *&v18);
  RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>(a1, a2, a3, a4, a5, v8, a7, a8);
  *(a1 + 80) = v11;
}

uint64_t RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(uint64_t result, float64x2_t *a2, double a3, double a4, double a5, double a6, double a7, float64x2_t a8, float64x2_t a9)
{
  v11 = vsubq_f64(a2[1], *a2);
  v12 = vaddvq_f64(vmulq_f64(v11, v11));
  v13 = 0.00000001;
  if (v12 > 0.00000001)
  {
    v20 = v9;
    v21 = v10;
    v15 = result;
    if (*(result + 143) == 1)
    {
      v19 = vnegq_f64(v11);
      if (*(result + 128))
      {
        v16 = INFINITY;
      }

      else
      {
        v13 = *(*(result + 16) + 24);
        v16 = vabdd_f64(*(result + 112), *(result + 88));
        v12 = v13 - v16;
        if (v13 - v16 < v16)
        {
          v16 = v13 - v16;
        }
      }

      RB::Path::ClipStroke::Transform::Clipper::emit_cap(result, a2, &v19, *(result + 142), v16, v12, v13, a6, a7, a8, a9);
      if (*(v15 + 143) == 1)
      {
        *(v15 + 143) = 0;
      }
    }

    if ((*(v15 + 140) & 1) == 0)
    {
      *(v15 + 224) = *a2;
      *(v15 + 240) = vsubq_f64(*a2, a2[1]);
      (*(**(*v15 + 360) + 16))(*(*v15 + 360));
      *(v15 + 140) = 1;
    }

    result = (*(**(*v15 + 360) + 24))(*(*v15 + 360), a2[1]);
    *(v15 + 184) = a2[1];
    *(v15 + 200) = vsubq_f64(a2[1], *a2);
    if (*(v15 + 128))
    {
      v18 = INFINITY;
    }

    else
    {
      v17 = *(*(v15 + 16) + 24);
      v18 = vabdd_f64(*(v15 + 112), *(v15 + 88));
      if (v17 - v18 < v18)
      {
        v18 = v17 - v18;
      }
    }

    *(v15 + 216) = v18;
  }

  return result;
}

void RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::LineSegment>(uint64_t a1, float64_t a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8)
{
  v8 = *a7.f64;
  v9 = a6;
  v11 = 0;
  v24.f64[0] = a2;
  v24.f64[1] = a3;
  *&v25 = a4;
  *(&v25 + 1) = a5;
  v12 = *(a1 + 136);
  v13 = v12 >= *a7.f64;
  *&a2 = v12;
  v14 = 1;
  do
  {
    if (*&a2 == v8)
    {
      break;
    }

    v15 = v14;
    if (v11 == v13)
    {
      a3 = *(a1 + 8);
    }

    else
    {
      LODWORD(a3) = *(a1 + 12);
    }

    a4 = *(a1 + 56);
    LODWORD(a5) = HIDWORD(a4);
    if (*&a3 < *&a4)
    {
      *&a3 = *&a4;
    }

    if (*&a3 <= *(&a4 + 1))
    {
      v16 = *&a3;
    }

    else
    {
      LODWORD(v16) = HIDWORD(*(a1 + 56));
    }

    *&a3 = v12 >= v8 ? v8 : *&a2;
    *&a4 = v12 >= v8 ? *&a2 : v8;
    v17 = v16 < *&a3 || v16 > *&a4;
    if (v17 || *(a1 + 141) == ((v12 < v8) ^ (v11 == v13)))
    {
      v16 = *&a2;
    }

    else
    {
      v18 = (v16 - *&a2) / (v8 - *&a2);
      a2 = CG::LineSegment::index(&v24, v9 * v18);
      if (a2 > 0.0001)
      {
        *&v19 = CG::LineSegment::split(&v24, a2, v22).n128_u64[0];
        if ((*(a1 + 141) & 1) == 0)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(a1, v22, v19, v20, a4, a5, a6, a7, a8);
        }

        a3 = *&v23;
        v24 = v22[2];
        v25 = v23;
        a2 = (1.0 - v18);
        v9 = v9 * a2;
      }

      *(a1 + 136) = v16;
      if (*(a1 + 141) == 1)
      {
        *(a1 + 141) = 0;
        v21 = v11 == v13 ? 257 : 256;
        *(a1 + 142) = v21;
      }

      else
      {
        *(a1 + 141) = 1;
        if (*(a1 + 143) == 1)
        {
          *(a1 + 143) = 0;
        }
      }
    }

    v14 = 0;
    v11 = 1;
    *&a2 = v16;
  }

  while ((v15 & 1) != 0);
  if ((*(a1 + 141) & 1) == 0)
  {
    RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(a1, &v24, a2, a3, a4, a5, a6, a7, a8);
  }

  *(a1 + 136) = v8;
}

void RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Quadratic>(uint64_t a1, Point *this, double a3)
{
  v3 = a3;
  v6 = *(a1 + 80);
  v7 = v6 + a3;
  for (i = *(a1 + 112); i < v7; i = *(a1 + 112))
  {
    CG::Quadratic::index(this, i - v6, **(a1 + 16));
    if (v9 > 0.0001)
    {
      CG::Quadratic::split(this, v9, v19);
      CG::Quadratic::length(v19, **(a1 + 16));
      v11 = v10;
      v18[2] = v21;
      v18[3] = v22;
      v18[4] = v23;
      v18[0] = *&v19[0].v;
      v18[1] = v20;
      RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Quadratic>(a1, v18, v10, *(a1 + 120));
      v6 = *(a1 + 112);
      v12 = v27;
      *&this[8].v = v26;
      *&this[12].v = v12;
      *&this[16].v = v28;
      v13 = v25;
      v3 = v3 - v11;
      *&this->v = v24;
      *&this[4].v = v13;
    }

    RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(a1, *(a1 + 112));
  }

  v14 = (v7 - *(a1 + 88)) / (i - *(a1 + 88));
  v15 = *(a1 + 96) + ((*(a1 + 120) - *(a1 + 96)) * v14);
  v16 = *&this[12].v;
  v21 = *&this[8].v;
  v22 = v16;
  v23 = *&this[16].v;
  v17 = *&this[4].v;
  *&v19[0].v = *&this->v;
  v20 = v17;
  RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Quadratic>(a1, v19, v3, v15);
  *(a1 + 80) = v7;
}

void RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(__n128 *a1, float64x2_t *this)
{
  v4 = this[1];
  v5 = vsubq_f64(v4, *this);
  if (vaddvq_f64(vmulq_f64(v5, v5)) > 0.00000001 || (v6 = vsubq_f64(this[2], v4), vaddvq_f64(vmulq_f64(v6, v6)) > 0.00000001))
  {
    if (a1[8].n128_u8[15] == 1)
    {
      v7 = CG::Quadratic::derivative(this, 0.0);
      v14 = -v13;
      v22.f64[0] = -v7;
      v22.f64[1] = v14;
      if (a1[8].n128_u8[0])
      {
        v15 = INFINITY;
      }

      else
      {
        v8 = *(a1[1].n128_u64[0] + 24);
        v15 = vabdd_f64(a1[7].n128_f64[0], a1[5].n128_f64[1]);
        v14 = v8 - v15;
        if (v8 - v15 < v15)
        {
          v15 = v8 - v15;
        }
      }

      RB::Path::ClipStroke::Transform::Clipper::emit_cap(a1, this, &v22, a1[8].n128_u8[14], v15, v14, v8, v9, v10, v11, v12);
      if (a1[8].n128_u8[15] == 1)
      {
        a1[8].n128_u8[15] = 0;
      }
    }

    if ((a1[8].n128_u8[12] & 1) == 0)
    {
      a1[14].n128_f64[0] = CG::Quadratic::start_point(this);
      a1[14].n128_u64[1] = v16;
      a1[15].n128_f64[0] = -CG::Quadratic::derivative(this, 0.0);
      a1[15].n128_f64[1] = -v17;
      (*(**(a1->n128_u64[0] + 360) + 16))(*(a1->n128_u64[0] + 360), a1[14]);
      a1[8].n128_u8[12] = 1;
    }

    (*(**(a1->n128_u64[0] + 360) + 32))(*(a1->n128_u64[0] + 360), this[1], this[2]);
    a1[11].n128_f64[1] = CG::Quadratic::end_point(this);
    a1[12].n128_u64[0] = v18;
    a1[12].n128_f64[1] = CG::Quadratic::derivative(this, 1.0);
    a1[13].n128_u64[0] = v19;
    if (a1[8].n128_u8[0])
    {
      v21 = INFINITY;
    }

    else
    {
      v20 = *(a1[1].n128_u64[0] + 24);
      v21 = vabdd_f64(a1[7].n128_f64[0], a1[5].n128_f64[1]);
      if (v20 - v21 < v21)
      {
        v21 = v20 - v21;
      }
    }

    a1[13].n128_f64[1] = v21;
  }
}

void RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Quadratic>(uint64_t a1, Point *this, double a3, float a4)
{
  v8 = 0;
  v9 = *(a1 + 136);
  v10 = v9 >= a4;
  v11 = v9;
  v12 = 1;
  do
  {
    if (v11 == a4)
    {
      break;
    }

    v13 = v12;
    if (v8 == v10)
    {
      v14 = *(a1 + 8);
    }

    else
    {
      LODWORD(v14) = *(a1 + 12);
    }

    if (*&v14 < COERCE_FLOAT(*(a1 + 56)))
    {
      LODWORD(v14) = *(a1 + 56);
    }

    if (*&v14 <= COERCE_FLOAT(HIDWORD(*(a1 + 56))))
    {
      v15 = *&v14;
    }

    else
    {
      LODWORD(v15) = HIDWORD(*(a1 + 56));
    }

    v16 = v9 >= a4 ? a4 : v11;
    v17 = v9 >= a4 ? v11 : a4;
    v18 = v15 < v16 || v15 > v17;
    if (v18 || *(a1 + 141) == ((v9 < a4) ^ (v8 == v10)))
    {
      v15 = v11;
    }

    else
    {
      v19 = (v15 - v11) / (a4 - v11);
      CG::Quadratic::index(this, a3 * v19, **(a1 + 16));
      if (v20 > 0.0001)
      {
        CG::Quadratic::split(this, v20, v24);
        if ((*(a1 + 141) & 1) == 0)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(a1, v24);
        }

        v21 = v24[8];
        *&this[8].v = v24[7];
        *&this[12].v = v21;
        *&this[16].v = v24[9];
        v22 = v24[6];
        *&this->v = v24[5];
        *&this[4].v = v22;
        a3 = a3 * (1.0 - v19);
      }

      *(a1 + 136) = v15;
      if (*(a1 + 141) == 1)
      {
        *(a1 + 141) = 0;
        v23 = v8 == v10 ? 257 : 256;
        *(a1 + 142) = v23;
      }

      else
      {
        *(a1 + 141) = 1;
        if (*(a1 + 143) == 1)
        {
          *(a1 + 143) = 0;
        }
      }
    }

    v12 = 0;
    v8 = 1;
    v11 = v15;
  }

  while ((v13 & 1) != 0);
  if ((*(a1 + 141) & 1) == 0)
  {
    RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(a1, this);
  }

  *(a1 + 136) = a4;
}

void RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Cubic>(uint64_t a1, float64x2_t *this, double a3)
{
  v3 = a3;
  v6 = *(a1 + 80);
  v7 = v6 + a3;
  for (i = *(a1 + 112); i < v7; i = *(a1 + 112))
  {
    CG::Cubic::index(this, i - v6, **(a1 + 16));
    if (v9 > 0.0001)
    {
      CG::Cubic::split(this, v9, &v21);
      v10 = CG::Cubic::length(&v21, **(a1 + 16));
      v20[4] = v25;
      v20[5] = v26;
      v20[6] = v27;
      v20[0] = v21;
      v20[1] = v22;
      v20[2] = v23;
      v20[3] = v24;
      RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Cubic>(a1, v20, v10, *(a1 + 120));
      v6 = *(a1 + 112);
      v11 = v33;
      this[4] = v32;
      this[5] = v11;
      this[6] = v34;
      v12 = v29;
      *this = v28;
      this[1] = v12;
      v3 = v3 - v10;
      v13 = v31;
      this[2] = v30;
      this[3] = v13;
    }

    RB::Path::ClipStroke::Transform::Clipper::advance_keyframes(a1, *(a1 + 112));
  }

  v14 = (v7 - *(a1 + 88)) / (i - *(a1 + 88));
  v15 = *(a1 + 96);
  v16 = this[5];
  v25 = this[4];
  v26 = v16;
  *&v14 = v14;
  v17 = v15 + ((*(a1 + 120) - v15) * *&v14);
  v27 = this[6];
  v18 = this[1];
  v21 = *this;
  v22 = v18;
  v19 = this[3];
  v23 = this[2];
  v24 = v19;
  RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Cubic>(a1, &v21, v3, v17);
  *(a1 + 80) = v7;
}

void RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(uint64_t a1, float64x2_t *this)
{
  v4 = this[1];
  v5 = vsubq_f64(v4, *this);
  if (vaddvq_f64(vmulq_f64(v5, v5)) > 0.00000001 || (v6 = this[2], v7 = vsubq_f64(v6, v4), vaddvq_f64(vmulq_f64(v7, v7)) > 0.00000001) || (v8 = vsubq_f64(this[3], v6), vaddvq_f64(vmulq_f64(v8, v8)) > 0.00000001))
  {
    if (*(a1 + 143) == 1)
    {
      v9 = CG::Cubic::derivative(this, 0.0);
      v16 = -v15;
      v22.f64[0] = -v9;
      v22.f64[1] = v16;
      if (*(a1 + 128))
      {
        v17 = INFINITY;
      }

      else
      {
        v10 = *(*(a1 + 16) + 24);
        v17 = vabdd_f64(*(a1 + 112), *(a1 + 88));
        v16 = v10 - v17;
        if (v10 - v17 < v17)
        {
          v17 = v10 - v17;
        }
      }

      RB::Path::ClipStroke::Transform::Clipper::emit_cap(a1, this, &v22, *(a1 + 142), v17, v16, v10, v11, v12, v13, v14);
      if (*(a1 + 143) == 1)
      {
        *(a1 + 143) = 0;
      }
    }

    if ((*(a1 + 140) & 1) == 0)
    {
      *(a1 + 224) = *this;
      *(a1 + 240) = -CG::Cubic::derivative(this, 0.0);
      *(a1 + 248) = -v18;
      (*(**(*a1 + 360) + 16))(*(*a1 + 360), *(a1 + 224));
      *(a1 + 140) = 1;
    }

    (*(**(*a1 + 360) + 40))(*(*a1 + 360), this[1], this[2], this[3]);
    *(a1 + 184) = this[3];
    *(a1 + 200) = CG::Cubic::derivative(this, 1.0);
    *(a1 + 208) = v19;
    if (*(a1 + 128))
    {
      v21 = INFINITY;
    }

    else
    {
      v20 = *(*(a1 + 16) + 24);
      v21 = vabdd_f64(*(a1 + 112), *(a1 + 88));
      if (v20 - v21 < v21)
      {
        v21 = v20 - v21;
      }
    }

    *(a1 + 216) = v21;
  }
}

void RB::Path::ClipStroke::Transform::Clipper::clip_segment<CG::Cubic>(uint64_t a1, float64x2_t *this, double a3, float a4)
{
  v8 = 0;
  v9 = *(a1 + 136);
  v10 = v9 >= a4;
  v11 = v9;
  v12 = 1;
  do
  {
    if (v11 == a4)
    {
      break;
    }

    v13 = v12;
    if (v8 == v10)
    {
      v14 = *(a1 + 8);
    }

    else
    {
      LODWORD(v14) = *(a1 + 12);
    }

    if (*&v14 < COERCE_FLOAT(*(a1 + 56)))
    {
      LODWORD(v14) = *(a1 + 56);
    }

    if (*&v14 <= COERCE_FLOAT(HIDWORD(*(a1 + 56))))
    {
      v15 = *&v14;
    }

    else
    {
      LODWORD(v15) = HIDWORD(*(a1 + 56));
    }

    v16 = v9 >= a4 ? a4 : v11;
    v17 = v9 >= a4 ? v11 : a4;
    v18 = v15 < v16 || v15 > v17;
    if (v18 || *(a1 + 141) == ((v9 < a4) ^ (v8 == v10)))
    {
      v15 = v11;
    }

    else
    {
      v19 = (v15 - v11) / (a4 - v11);
      CG::Cubic::index(this, a3 * v19, **(a1 + 16));
      if (v20 > 0.0001)
      {
        CG::Cubic::split(this, v20, v25);
        if ((*(a1 + 141) & 1) == 0)
        {
          RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(a1, v25);
        }

        v21 = v25[12];
        this[4] = v25[11];
        this[5] = v21;
        this[6] = v25[13];
        v22 = v25[8];
        *this = v25[7];
        this[1] = v22;
        v23 = v25[10];
        this[2] = v25[9];
        this[3] = v23;
        a3 = a3 * (1.0 - v19);
      }

      *(a1 + 136) = v15;
      if (*(a1 + 141) == 1)
      {
        *(a1 + 141) = 0;
        v24 = v8 == v10 ? 257 : 256;
        *(a1 + 142) = v24;
      }

      else
      {
        *(a1 + 141) = 1;
        if (*(a1 + 143) == 1)
        {
          *(a1 + 143) = 0;
        }
      }
    }

    v12 = 0;
    v8 = 1;
    v11 = v15;
  }

  while ((v13 & 1) != 0);
  if ((*(a1 + 141) & 1) == 0)
  {
    RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(a1, this);
  }

  *(a1 + 136) = a4;
}

void *RB::vector<std::tuple<unsigned long,CG::Point,CG::Point>,4ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 22) + (*(__dst + 22) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 22) + (*(__dst + 22) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,40ul>(*(__dst + 20), __dst, 4uLL, __dst + 22, v3);
  *(__dst + 20) = result;
  return result;
}

Class screen_init(void *a1)
{
  result = NSClassFromString(&cfstr_Uiview.isa);
  qword_1ED6D5580 = result;
  return result;
}

void RB::Symbol::Keyframes::print(RB::Symbol::Keyframes *this, RB::SexpString *a2, __int16 a3, const RB::Symbol::KeyframeStorage *a4)
{
  v5 = *this;
  if (*(this + 2))
  {
    v6 = ((a3 ^ (v5 >> 15)) & (v5 >> 5) & 0x300) == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return;
  }

  v10 = v5 & 0x1F;
  if (v10 > 0x10)
  {
    v11 = "unknown-property";
  }

  else
  {
    v11 = RB::Symbol::Keyframes::print(RB::SexpString &,unsigned int,RB::Symbol::KeyframeStorage const*)const::property_names[v10];
  }

  RB::SexpString::push(a2, v11);
  v12 = *(this + 2);
  if (v12 != 0.0)
  {
    RB::SexpString::printf(a2, 0, "(begin %.4f)", v12);
  }

  if ((*this & 0x6000) != 0)
  {
    v13 = (*this >> 15) & 0x300;
    if (v13 == 256)
    {
      v14 = "(symbol from)";
      goto LABEL_16;
    }

    if (v13 == 512)
    {
      v14 = "(symbol to)";
LABEL_16:
      RB::SexpString::print(a2, 0, v14);
    }
  }

  v15 = "eraser";
  v16 = 8;
  do
  {
    v17 = *(v15 - 1);
    if ((v17 & (*this >> 5) & 0x3FF) != 0)
    {
      if ((v17 & (*this >> 15) & 0x3FF) != 0)
      {
        RB::SexpString::printf(a2, 0, "%s");
      }

      else
      {
        RB::SexpString::printf(a2, 0, "(not %s)");
      }
    }

    v15 += 28;
    --v16;
  }

  while (v16);
  v18 = (*this >> 25) & 3;
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      RB::SexpString::printf(a2, 0, "(layer-index %u)");
    }

    else
    {
      RB::SexpString::printf(a2, 0, "(value-index %u)");
    }
  }

  else if (v18)
  {
    RB::SexpString::printf(a2, 0, "(timing-group-index %u)");
  }

  v19 = *(this + 2);
  if ((v19 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (a4)
  {
    v20 = *(a4 + 96);
    if (!v20)
    {
      v20 = a4;
    }

    v19 = v20 + 12 * (v19 >> 1);
LABEL_34:
    if (v19)
    {
      v21 = (v19 + 4);
      do
      {
        RB::SexpString::push(a2, "value");
        RB::SexpString::printf(a2, 0, "(value %.2f)", v21[1]);
        if (*v21 >= 0.0)
        {
          RB::SexpString::printf(a2, 0, "(duration %.4f)", *v21);
          v22 = *(v21 - 1);
          if (v22 - 1 <= 0x28)
          {
          }
        }

        RB::SexpString::pop(a2);
        v23 = *v21;
        v21 += 3;
      }

      while (v23 >= 0.0);
    }
  }

  RB::SexpString::pop(a2);
}

void RB::SharedSurfaceClient::invalidate(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 3);
  *&this[4]._os_unfair_lock_opaque = 0;

  os_unfair_lock_unlock(this + 3);
}

void RB::SharedSurfaceClient::owner_ref(RB::SharedSurfaceClient *this@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock(this + 3);
  *a2 = *(this + 2);

  os_unfair_lock_unlock(this + 3);
}

uint64_t RB::vector<RB::SharedSurface::AsyncUpdate,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    v4 = v2 + 9;
    do
    {

      v5 = *(v4 - 1);
      if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      RB::SharedSubsurface::~SharedSubsurface(v4 - 8);
      v6 = *(v4 - 9);
      if (v6 && atomic_fetch_add_explicit((v6 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v3;
      v4 += 16;
    }

    while (v3 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

char **RB::vector<RB::SharedSurface::Copy,0ul,unsigned int>::~vector(char **a1)
{
  v2 = *a1;
  if (*(a1 + 2))
  {
    v3 = 0;
    v4 = v2 + 8;
    do
    {
      if (*v4 && atomic_fetch_add_explicit((*v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurfaceGroup::~SharedSurfaceGroup();
      }

      v5 = *(v4 - 1);
      if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v3;
      v4 += 56;
    }

    while (v3 < *(a1 + 2));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::vector<RB::SharedSurface::Update,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    v4 = v2 + 1;
    do
    {

      v5 = *(v4 - 1);
      if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v3;
      v4 += 8;
    }

    while (v3 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

char **RB::vector<RB::SharedSurface::Remove,0ul,unsigned int>::~vector(char **a1)
{
  v2 = *a1;
  if (*(a1 + 2))
  {
    v3 = 0;
    v4 = v2 + 8;
    do
    {
      if (*v4 && atomic_fetch_add_explicit((*v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSubsurface::~SharedSubsurface();
      }

      v5 = *(v4 - 1);
      if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v3;
      v4 += 40;
    }

    while (v3 < *(a1 + 2));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

char **RB::vector<RB::SharedSurface::Allocation,0ul,unsigned int>::~vector(char **a1)
{
  v2 = *a1;
  if (*(a1 + 2))
  {
    v3 = 0;
    do
    {
      if (*v2 && atomic_fetch_add_explicit((*v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
      }

      ++v3;
      v2 += 40;
    }

    while (v3 < *(a1 + 2));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void RB::BinAllocator::~BinAllocator(RB::BinAllocator *this)
{
  v2 = *(this + 2);
  v3 = *(this + 6);
  if (v3)
  {
    v4 = 0;
    v5 = v2 + 2;
    do
    {
      if (*v5)
      {
        free(*v5);
        v3 = *(this + 6);
      }

      ++v4;
      v5 += 4;
    }

    while (v4 < v3);
    v2 = *(this + 2);
  }

  if (v2)
  {
    free(v2);
  }
}

uint64_t RB::SharedSurfaceGroup::render_updates(void)::Context::~Context(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 168);
  }

  else
  {
    v3 = (a1 + 8);
  }

  if (*(a1 + 176))
  {
    v4 = 0;
    do
    {
      RB::SharedSurfaceGroup::SurfaceUpdate::~SurfaceUpdate(v3);
      ++v4;
      v3 = (v5 + 40);
    }

    while (v4 < *(a1 + 176));
    v2 = *(a1 + 168);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void ___ZN2RB18SharedSurfaceGroup21render_updates_deviceERNS_6vectorINS0_13SurfaceUpdateELm4EjEE_block_invoke_9(uint64_t a1, id a2)
{
  if (a2)
  {
    v3 = a2;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3321888768;
    v12[2] = ___ZN2RB18SharedSurfaceGroup21render_updates_deviceERNS_6vectorINS0_13SurfaceUpdateELm4EjEE_block_invoke_2;
    v12[3] = &__block_descriptor_48_e8_40c29_ZTSN2RB8objc_ptrIP7NSErrorEE_e5_v8__0l;
    v12[4] = *(a1 + 32);
    v13 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], v12);
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    if (!v5)
    {
      goto LABEL_8;
    }

    v6 = *v4;
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      *(v8 + 36) = 0;
      v7 -= 8;
    }

    while (v7);
    v4 = *(a1 + 32);
    if (v4)
    {
LABEL_8:
      v9 = *v4;
      if (*(v4 + 8))
      {
        v10 = 0;
        do
        {
          v11 = v9[v10];
          if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
          }

          ++v10;
        }

        while (v10 < *(v4 + 8));
        v9 = *v4;
      }

      if (v9)
      {
        free(v9);
      }

      JUMPOUT(0x19A8C09E0);
    }
  }
}

void ___ZN2RB18SharedSurfaceGroup21render_updates_deviceERNS_6vectorINS0_13SurfaceUpdateELm4EjEE_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = *v1;
  v5 = 8 * v2;
  do
  {
    RB::SharedSurfaceClient::owner_ref(*v4, &v11);
    v6 = *(*v4 + 36);
    *(*v4 + 36) = 1;
    v7 = v11;
    [v11 _commandBufferError:*(a1 + 40) failedBefore:v6 & 1];

    ++v4;
    v5 -= 8;
  }

  while (v5);
  v1 = *(a1 + 32);
  if (v1)
  {
LABEL_5:
    v8 = *v1;
    if (*(v1 + 8))
    {
      v9 = 0;
      do
      {
        v10 = v8[v9];
        if (v10 && atomic_fetch_add_explicit(v10 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
        }

        ++v9;
      }

      while (v9 < *(v1 + 8));
      v8 = *v1;
    }

    if (v8)
    {
      free(v8);
    }

    JUMPOUT(0x19A8C09E0);
  }
}

void RB::SharedSurfaceGroup::cancel_async_updates(os_unfair_lock_s *this, atomic_uint *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = 0x400000000;
  os_unfair_lock_lock(this + 2);
  v23 = this;
  os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v5 = *&this[4]._os_unfair_lock_opaque;
    v24 = &v5[os_unfair_lock_opaque];
    do
    {
      v25 = *v5;
      os_unfair_lock_lock(*v5 + 29);
      v6 = (*v5)[40]._os_unfair_lock_opaque;
      if (v6)
      {
        v7 = (v6 << 7) - 128;
        v8 = 1 - v6;
        do
        {
          v9 = *&(*v5)[38]._os_unfair_lock_opaque;
          if (*(v9 + v7) == a2)
          {
            atomic_fetch_add_explicit(a2 + 8, 0xFFFFFFFF, memory_order_relaxed);
            v10 = v28;
            if (HIDWORD(v28) < (v28 + 1))
            {
              RB::vector<RB::DisplayList::RenderState::DetachedInfo::Element,4ul,unsigned int>::reserve_slow(__dst, v28 + 1);
              v10 = v28;
            }

            v11 = v9 + v7;
            v12 = v27;
            if (!v27)
            {
              v12 = __dst;
            }

            v13 = &v12[48 * v10];
            *v13 = *(v11 + 8);
            *(v13 + 1) = *(v11 + 16);
            *(v13 + 2) = *(v11 + 24);
            *(v13 + 3) = 0;
            *(v13 + 4) = 0;
            *(v13 + 10) = *(v11 + 48);
            v13[44] = *(v11 + 52);
            *(v11 + 8) = 0;
            LODWORD(v28) = v28 + 1;
            v14 = *v5;
            v15 = *&(*v5)[38]._os_unfair_lock_opaque + v7;

            v16 = *(v15 + 64);
            if (v16 && atomic_fetch_add_explicit((v16 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              [RBLayer displayWithBounds:callback:];
            }

            RB::SharedSubsurface::~SharedSubsurface((v15 + 8));
            if (*v15 && atomic_fetch_add_explicit((*v15 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              [RBLayer displayWithBounds:callback:];
            }

            v17 = v14[40]._os_unfair_lock_opaque;
            v14[40]._os_unfair_lock_opaque = v17 - 1;
            if (v6 != v17)
            {
              memmove(v15, (v15 + 128), (v8 + (v17 - 1)) << 7);
            }
          }

          v7 -= 128;
          ++v8;
          --v6;
        }

        while (v7 != -128);
      }

      os_unfair_lock_unlock(v25 + 29);
      ++v5;
    }

    while (v5 != v24);
  }

  os_unfair_lock_unlock(v23 + 2);
  v18 = v27;
  if (v27)
  {
    v19 = v27;
  }

  else
  {
    v19 = __dst;
  }

  if (v28)
  {
    v20 = 48 * v28;
    do
    {
      RB::SharedSurfaceGroup::remove_subsurface(v23, v19, 0);
      v19 = (v19 + 48);
      v20 -= 48;
    }

    while (v20);
    v18 = v27;
    v21 = (v27 ? v27 : __dst);
    if (v28)
    {
      v22 = 0;
      do
      {
        RB::SharedSubsurface::~SharedSubsurface(v21);
        ++v22;
        v21 += 6;
      }

      while (v22 < v28);
      v18 = v27;
    }
  }

  if (v18)
  {
    free(v18);
  }
}

void sub_195E2060C(_Unwind_Exception *a1, uint64_t a2, os_unfair_lock_s *a3, uint64_t a4, os_unfair_lock_s *a5, ...)
{
  va_start(va, a5);
  os_unfair_lock_unlock(a5 + 29);
  os_unfair_lock_unlock(a3 + 2);
  RB::vector<RB::SharedSubsurface,4ul,unsigned int>::~vector(va);
  _Unwind_Resume(a1);
}

uint64_t *RB::CommitMarker::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      if (atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSubsurface::~SharedSubsurface();
      }

      v4 = *a2;
    }

    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    }

    *a1 = v4;
  }

  return a1;
}

uint64_t RB::SharedSurfaceGroup::commit_removed_locked(RB::SharedSurfaceGroup *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 2);
  v20 = &v4[v1];
  do
  {
    v21 = result;
    v5 = *(*v4 + 104);
    if (v5)
    {
      v6 = 40 * v5 - 40;
      v7 = 1 - v5;
      do
      {
        v8 = *(*v4 + 96);
        v9 = *(v8 + v6 + 8);
        if (!v9 || (*(v9 + 40) & 1) != 0)
        {
          v10 = RB::shared_surface_log(result);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v12 = *(v8 + v6 + 32);
            v13 = *(v8 + v6 + 16);
            v14 = *(v8 + v6 + 24);
            *buf = 134219264;
            v23 = this;
            v24 = 1024;
            v25 = v12;
            v26 = 1024;
            v27 = v13;
            v28 = 1024;
            v29 = HIDWORD(v13);
            v30 = 1024;
            v31 = v14;
            v32 = 1024;
            v33 = HIDWORD(v14);
            _os_log_impl(&dword_195CE8000, v10, OS_LOG_TYPE_INFO, "%p: remove %08x [%d, %d; %d, %d]\n", buf, 0x2Au);
          }

          atomic_fetch_add_explicit((*(v8 + v6) + 28), 0xFFFFFFFF, memory_order_relaxed);
          v15 = *v4;
          v11.n128_u64[0] = *(v8 + v6 + 24);
          RB::BinAllocator::dealloc(*v4 + 32, *(v8 + v6 + 16), v11);
          --*(v15 + 112);
          *(this + 60) = 1;
          v16 = *v4;
          v17 = (*(*v4 + 96) + v6);
          v18 = v17[1];
          if (v18 && atomic_fetch_add_explicit((v18 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            RB::SharedSurface::~SharedSurface();
          }

          result = *v17;
          if (*v17 && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            result = [RBLayer displayWithBounds:callback:];
          }

          v19 = *(v16 + 104);
          *(v16 + 104) = v19 - 1;
          if (v5 != v19)
          {
            result = memmove(v17, v17 + 5, 40 * (v7 + (v19 - 1)));
          }
        }

        v6 -= 40;
        ++v7;
        --v5;
      }

      while (v6 != -40);
    }

    result = (v21 & 1) != 0 || *(*v4++ + 104) != 0;
  }

  while (v4 != v20);
  return result;
}

void RB::SharedSurfaceGroup::render_async(os_unfair_lock_s *this)
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v42 = 0;
  v44 = 8;
  os_unfair_lock_lock(this + 2);
  os_unfair_lock_opaque = this[6]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v3 = 0;
    v4 = *&this[4]._os_unfair_lock_opaque;
    v32 = this;
    v33 = &v4[os_unfair_lock_opaque];
    do
    {
      v5 = *v4;
      os_unfair_lock_lock(*v4 + 29);
      v7 = *v4 + 40;
      v6 = v7->_os_unfair_lock_opaque;
      if (v6)
      {
        v8 = *&(*v4)[38]._os_unfair_lock_opaque;
        v9 = v8 + (v6 << 7);
        do
        {
          atomic_fetch_add_explicit((*v8 + 32), 0xFFFFFFFF, memory_order_relaxed);
          v10 = *v4;
          v11 = (*v4)[32]._os_unfair_lock_opaque;
          if ((*v4)[33]._os_unfair_lock_opaque < v11 + 1)
          {
            RB::vector<RB::Symbol::Glyph::Shape::Attachment,0ul,unsigned int>::reserve_slow(&v10[30], v11 + 1);
            v11 = v10[32]._os_unfair_lock_opaque;
          }

          v12 = (*&v10[30]._os_unfair_lock_opaque + (v11 << 6));
          *v12 = *(v8 + 64);
          *(v8 + 64) = 0u;
          v13 = *(v8 + 80);
          v14 = *(v8 + 96);
          *(v12 + 44) = *(v8 + 108);
          v12[1] = v13;
          v12[2] = v14;
          ++v10[32]._os_unfair_lock_opaque;
          v15 = *(v8 + 56);
          *(v8 + 56) = 0;
          v34 = v15;
          v35 = *(v8 + 8);
          *&v14 = *(v8 + 24);
          v36 = *(v8 + 16);
          v37 = v14;
          v38 = 0u;
          v39 = *(v8 + 48);
          v40 = *(v8 + 52);
          *(v8 + 8) = 0;
          v16 = v43;
          if (v44 < v43 + 1)
          {
            RB::vector<RB::SharedSurfaceGroup::render_async(void)::Completion,8ul,unsigned long>::reserve_slow(__dst, v43 + 1);
            v16 = v43;
            v15 = v34;
          }

          v17 = v42;
          if (!v42)
          {
            v17 = __dst;
          }

          v18 = &v17[56 * v16];
          v19 = v35;
          *v18 = v15;
          *(v18 + 1) = v19;
          *(v18 + 2) = v36;
          *(v18 + 3) = v37;
          *(v18 + 4) = 0;
          *(v18 + 5) = 0;
          *(v18 + 12) = v39;
          v18[52] = v40;
          v35 = 0;
          ++v43;
          RB::SharedSubsurface::~SharedSubsurface(&v35);

          v8 += 128;
        }

        while (v8 != v9);
        v7 = *v4 + 40;
        v20 = v7->_os_unfair_lock_opaque;
        if (v20)
        {
          v21 = v20 << 7;
          v22 = (*&(*v4)[38]._os_unfair_lock_opaque + 72);
          do
          {

            v23 = *(v22 - 1);
            if (v23 && atomic_fetch_add_explicit((v23 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              [RBLayer displayWithBounds:callback:];
            }

            RB::SharedSubsurface::~SharedSubsurface(v22 - 8);
            v24 = *(v22 - 9);
            if (v24 && atomic_fetch_add_explicit((v24 + 8), 0xFFFFFFFF, memory_order_release) == 1)
            {
              [RBLayer displayWithBounds:callback:];
            }

            v22 += 16;
            v21 -= 128;
          }

          while (v21);
        }
      }

      v7->_os_unfair_lock_opaque = 0;
      if ((v3 & 1) != 0 || (*v4)[32]._os_unfair_lock_opaque)
      {
        v3 = 1;
      }

      else
      {
        v3 = (*v4)[43]._os_unfair_lock_opaque;
      }

      os_unfair_lock_unlock(v5 + 29);
      ++v4;
    }

    while (v4 != v33);
    os_unfair_lock_unlock(v32 + 2);
    if (v3)
    {
      RB::SharedSurfaceGroup::render_updates(v32);
    }
  }

  else
  {
    os_unfair_lock_unlock(this + 2);
  }

  if (!v43)
  {
    goto LABEL_46;
  }

  v25 = pthread_main_np();
  if (!v25)
  {
    [MEMORY[0x1E6979518] activateBackground:1];
  }

  if (v42)
  {
    v26 = v42;
  }

  else
  {
    v26 = __dst;
  }

  if (v43)
  {
    v27 = &v26[56 * v43];
    do
    {
      (*(*v26 + 16))();
      v26 += 56;
    }

    while (v26 != v27);
  }

  if (!v25)
  {
    [MEMORY[0x1E6979518] flush];
  }

  v28 = v42;
  v29 = __dst;
  if (v42)
  {
    v29 = v42;
  }

  if (v43)
  {
    v30 = 0;
    v31 = (v29 + 8);
    do
    {
      RB::SharedSubsurface::~SharedSubsurface(v31);

      ++v30;
      v31 += 7;
    }

    while (v30 < v43);
LABEL_46:
    v28 = v42;
  }

  if (v28)
  {
    free(v28);
  }
}

char *RB::vector<RB::SharedSurfaceGroup::render_async(void)::Completion,8ul,unsigned long>::~vector(char *a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = a1;
  }

  if (*(a1 + 57))
  {
    v4 = 0;
    v5 = (v3 + 8);
    do
    {
      RB::SharedSubsurface::~SharedSubsurface(v5);

      ++v4;
      v5 += 7;
    }

    while (v4 < *(a1 + 57));
    v2 = *(a1 + 56);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void RB::SharedSurfaceGroup::flush(RB::SharedSurfaceGroup *this)
{

  dispatch_sync_f(v2, this, RB::SharedSurfaceGroup::flush(void)::$_0::__invoke);
}

void RB::SharedSurfaceGroup::finish_async(RB::SharedSurfaceGroup *this)
{

  dispatch_sync_f(v2, this, RB::SharedSurfaceGroup::finish_async(void)::$_0::__invoke);
}

uint64_t RB::SharedSurfaceGroup::prune_caches(os_unfair_lock_s *this, int a2, char a3)
{
  os_unfair_lock_lock(this + 2);
  v6 = RB::SharedSurfaceGroup::prune_removed_locked(this);
  v7 = RB::SharedSurfaceGroup::prune_caches_locked(this, a2, a3);
  os_unfair_lock_unlock(this + 2);
  return v6 | v7;
}

BOOL RB::SharedSurfaceGroup::prune_removed_locked(RB::SharedSurfaceGroup *this)
{
  v15 = 0;
  v16 = 0;
  v1 = *(this + 6);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = *(this + 2);
  v6 = v5 + 8 * v1;
  do
  {
    v7 = *(*v5 + 104);
    if (v7)
    {
      v8 = *(*v5 + 96);
      v9 = v8 + 40 * v7;
      do
      {
        v10 = v3;
        if (v3)
        {
          v11 = 0;
          while (*(v8 + 8) != v4[v11])
          {
            if (v3 == ++v11)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          if (HIDWORD(v16) < v3 + 1)
          {
            RB::vector<RB::objc_ptr<void({block_pointer})(RBFill *,CGRect)>,0ul,unsigned int>::reserve_slow(&v15, v3 + 1);
            v2 = v15;
            v10 = v16;
            v3 = v16;
          }

          v12 = *(v8 + 8);
          if (v12)
          {
            atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
            v3 = v16;
          }

          v2[v10] = v12;
          LODWORD(v16) = ++v3;
          v4 = v2;
        }

        v8 += 40;
      }

      while (v8 != v9);
    }

    v5 += 8;
  }

  while (v5 != v6);
  v13 = v3 != 0;
  if (v3)
  {
    operator new();
  }

  if (v2)
  {
    free(v2);
  }

  return v13;
}

uint64_t RB::SharedSurfaceGroup::prune_caches_locked(RB::SharedSurfaceGroup *this, int a2, char a3)
{
  v6 = *(this + 6);
  if (!v6)
  {
    v13 = *(this + 2);
    v12 = v13;
LABEL_13:
    v14 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  do
  {
    v8 = *(this + 2);
    v9 = *(v8 + 8 * v7);
    if (*(v9 + 112))
    {
      ++v7;
    }

    else
    {
      v10 = v6 - 1;
      *(v8 + 8 * v7) = *(v8 + 8 * v10);
      *(v8 + 8 * v10) = v9;
      *(this + 6) = v10;
      v11 = *(*(this + 2) + 8 * v10);
      if (v11 && atomic_fetch_add_explicit((v11 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurfaceGroup::~SharedSurfaceGroup();
      }

      *(this + 60) = 1;
      v6 = *(this + 6);
    }
  }

  while (v7 < v6);
  v12 = *(this + 2);
  v13 = (v12 + 8 * v6);
  if (!v6)
  {
    goto LABEL_13;
  }

  v14 = 126 - 2 * __clz(v6);
LABEL_14:
  std::__introsort<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,false>(v12, v13, v14, 1);
  {
    v45 = RB::debug_BOOL("RB_DISABLE_SUBSURFACE_COPY", v44);
    RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::disable_relocation = v45 & ((v45 & 0x100) >> 8);
  }

  v15 = 0;
  if ((a3 & 1) == 0 && (RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::disable_relocation & 1) == 0)
  {
    if (!*(this + 6) || +[RBDevice isRunningInBackground]|| (v16 = *(this + 6), !v16))
    {
LABEL_27:
      v15 = 0;
      goto LABEL_28;
    }

    v15 = 0;
    v17 = 0;
    v18 = *(this + 2);
    v19 = 8 * v16;
    v20 = 0x7FFFFFFF;
    do
    {
      v21 = RB::BinAllocator::free_space(&(*v18)[4]);
      v23 = *v18++;
      v22 = v23;
      v24 = vmul_lane_s32(v23[4], v23[4], 1).u32[0];
      if (v21 > v24 - (v24 >> 2) && v21 < v20)
      {
        v17 = v24;
        v20 = v21;
        v15 = v22;
      }

      v19 -= 8;
    }

    while (v19);
    if (v15)
    {
      if (!RB::SharedSurface::is_idle(v15, a2))
      {
        v15 = 1;
        goto LABEL_28;
      }

      RB::SharedSurfaceGroup::relocate_surface(this, v15, v20 > v17 - (v17 >> 3), a2);
      goto LABEL_27;
    }
  }

LABEL_28:
  if (RB::verbose_mode(8) && (*(this + 6) || *(this + 60) == 1))
  {
    puts("\n** Shared surfaces **\n");
    v26 = *(this + 6);
    if (v26)
    {
      v27 = *(this + 2);
      v28 = 8 * v26;
      do
      {
        v29 = vmul_lane_s32((*v27)[4], (*v27)[4], 1).u32[0];
        v30 = v29 - RB::BinAllocator::free_space(&(*v27)[4]);
        v31 = vmul_lane_s32((*v27)[4], (*v27)[4], 1).u32[0];
        ID = IOSurfaceGetID(*(*&(*v27)[3] + 48));
        v33 = HIDWORD(*&(*v27)[4]);
        v34 = (*v27)[4];
        v36 = RB::pixel_format_name(*(*&(*v27)[3] + 32), v35);
        v37 = *v27++;
        printf("  %08x  %4d x %4d  %-16s -- %d%% used, %d/%d (%d+%d).\n", ID, v34, v33, v36, (((v30 * 100.0) / v31) + 0.5), v30, v31, *(v37 + 88), *(v37 + 104));
        v28 -= 8;
      }

      while (v28);
    }

    v38 = RB::verbose_mode(0x10);
    v39 = MEMORY[0x1E69E9858];
    if (v38)
    {
      memset(&v46, 0, sizeof(v46));
      std::string::append(&v46, "\n<?xml version=1.0 encoding=UTF-8?>\n", 0x28uLL);
      std::string::append(&v46, "<display-list xmlns=http://www.apple.com/RenderBox/1.0>\n", 0x3AuLL);
      std::string::append(&v46, "  <transform scale=0.5/>\n", 0x1BuLL);
      v40 = *(this + 6);
      if (v40)
      {
        v41 = *(this + 2);
        v42 = 8 * v40;
        do
        {
          RB::BinAllocator::print(*v41++ + 32, &v46);
          v42 -= 8;
        }

        while (v42);
      }

      std::string::append(&v46, "</display-list>\n", 0x10uLL);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v43 = &v46;
      }

      else
      {
        v43 = v46.__r_.__value_.__r.__words[0];
      }

      fputs(v43, *v39);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }

    fflush(*v39);
    *(this + 60) = 0;
  }

  return v15;
}

uint64_t RB::SharedSurfaceGroup::test_markers(uint64_t a1)
{
  if (*(a1 + 8) && (v2 = CACurrentMediaTime(), v3 = *(a1 + 8), v3))
  {
    v4 = v2;
    v5 = 0;
    v6 = *a1;
    v7 = 8 * v3;
    do
    {
      if (*v6)
      {
        v5 |= RB::CommitMarker::Observer::test_displayed(*v6, 0, v4);
      }

      else
      {
        v5 = 1;
      }

      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5 & 1;
}

uint64_t RB::Refcount<RB::SharedSurface,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return RB::SharedSurfaceGroup::~SharedSurfaceGroup();
  }

  return result;
}

int32x2_t std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t a3, int32x2_t result)
{
  v7 = a2 - a1;
  if (v7 <= 2)
  {
    if (v7 < 2)
    {
      return result;
    }

    if (v7 == 2)
    {
      v8 = *(a2 - 1);
      v9 = *(*a3 + 32);
      result = *(v9 + 112 * v8 + 24);
      v10 = *a1;
      v11 = *(v9 + 112 * *a1 + 24);
      if (result.i32[1] > v11.i32[1] || result.i32[1] == v11.i32[1] && (result = vcgt_s32(result, v11), (result.i8[0] & 1) != 0))
      {
        *a1 = v8;
LABEL_31:
        *(a2 - 1) = v10;
        return result;
      }

      return result;
    }

LABEL_32:
    v38 = a1 + 2;
    v39 = *a1;
    v40 = a1 + 1;
    v41 = a1[1];
    v42 = *(*a3 + 32);
    result = *(v42 + 112 * v41 + 24);
    v43 = (v42 + 112 * *a1);
    v45 = v43[3];
    v44 = v43 + 3;
    v46 = v45;
    v47 = v45.i32[1];
    if (result.i32[1] > v45.i32[1] || result.i32[1] == v47 && (vcgt_s32(result, v46).u8[0] & 1) != 0)
    {
      v48 = *v38;
      v49 = (v42 + 112 * *v38);
      v51 = v49[3];
      v50 = v49 + 3;
      v52 = v51;
      v53 = v51.i32[1];
      if (v51.i32[1] > result.i32[1] || v53 == result.i32[1] && (result = vcgt_s32(v52, result), (result.i8[0] & 1) != 0))
      {
        *a1 = v48;
LABEL_39:
        v40 = a1 + 2;
LABEL_40:
        *v40 = v39;
        goto LABEL_41;
      }

      *a1 = v41;
      a1[1] = v39;
      result = *v50;
      v86 = HIDWORD(*v50);
      v87 = *v44;
      v88 = HIDWORD(*v44);
      if (v86 > v88 || v86 == v88 && (result = vcgt_s32(result, v87), (result.i8[0] & 1) != 0))
      {
        *v40 = v48;
        goto LABEL_39;
      }
    }

    else
    {
      v74 = *v38;
      v75 = (v42 + 112 * *v38);
      v77 = v75[3];
      v76 = v75 + 3;
      v78 = v77;
      v79 = v77.i32[1];
      if (v77.i32[1] > result.i32[1] || v79 == result.i32[1] && (result = vcgt_s32(v78, result), (result.i8[0] & 1) != 0))
      {
        *v40 = v74;
        *v38 = v41;
        result = *v76;
        v80 = HIDWORD(*v76);
        v81 = *v44;
        v82 = HIDWORD(*v44);
        if (v80 > v82 || v80 == v82 && (result = vcgt_s32(result, v81), (result.i8[0] & 1) != 0))
        {
          *a1 = v74;
          goto LABEL_40;
        }
      }
    }

LABEL_41:
    v54 = a1 + 3;
    if (a1 + 3 != a2)
    {
      v55 = 0;
      v56 = 0;
      do
      {
        v57 = *v54;
        v58 = (v42 + 112 * *v54);
        v60 = v58[3];
        v59 = v58 + 3;
        result = v60;
        v61 = v60.i32[1];
        v62 = *v38;
        v63 = *(v42 + 112 * v62 + 24);
        if (v60.i32[1] > v63.i32[1] || v61 == v63.i32[1] && (result = vcgt_s32(result, v63), (result.i8[0] & 1) != 0))
        {
          *v54 = v62;
          v64 = v55;
          while (1)
          {
            result = *v59;
            v65 = HIDWORD(*v59);
            v66 = *(a1 + v64 + 4);
            v67 = *(v42 + 112 * v66 + 24);
            if (v65 <= v67.i32[1])
            {
              if (v65 != v67.i32[1])
              {
                break;
              }

              result = vcgt_s32(result, v67);
              if ((result.i8[0] & 1) == 0)
              {
                break;
              }
            }

            *(a1 + v64 + 8) = v66;
            v64 -= 4;
            if (v64 == -8)
            {
              v68 = a1;
              goto LABEL_53;
            }
          }

          v68 = (a1 + v64 + 8);
LABEL_53:
          *v68 = v57;
          if (++v56 == 8)
          {
            break;
          }
        }

        v38 = v54;
        v55 += 4;
        ++v54;
      }

      while (v54 != a2);
    }

    return result;
  }

  if (v7 != 3)
  {
    if (v7 == 4)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
      return result;
    }

    if (v7 == 5)
    {
      std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::allocate_updates(void)::$_0 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a3);
      v12 = *(a2 - 1);
      v13 = *(*a3 + 32);
      result = *(v13 + 112 * v12 + 24);
      v14 = a1[3];
      v15 = *(v13 + 112 * v14 + 24);
      if (result.i32[1] > v15.i32[1] || result.i32[1] == v15.i32[1] && (result = vcgt_s32(result, v15), (result.i8[0] & 1) != 0))
      {
        a1[3] = v12;
        *(a2 - 1) = v14;
        v17 = a1[2];
        v16 = a1[3];
        v18 = (v13 + 112 * v16);
        v20 = v18[3];
        v19 = v18 + 3;
        result = v20;
        v21 = v20.i32[1];
        v22 = *(v13 + 112 * v17 + 24);
        if (v20.i32[1] > v22.i32[1] || v21 == v22.i32[1] && (result = vcgt_s32(result, v22), (result.i8[0] & 1) != 0))
        {
          a1[2] = v16;
          a1[3] = v17;
          v23 = a1[1];
          result = *v19;
          v24 = HIDWORD(*v19);
          v25 = *(v13 + 112 * v23 + 24);
          if (v24 > v25.i32[1] || v24 == v25.i32[1] && (result = vcgt_s32(result, v25), (result.i8[0] & 1) != 0))
          {
            a1[1] = v16;
            a1[2] = v23;
            v26 = *a1;
            result = *v19;
            v27 = HIDWORD(*v19);
            v28 = *(v13 + 112 * *a1 + 24);
            if (v27 > v28.i32[1] || v27 == v28.i32[1] && (result = vcgt_s32(result, v28), (result.i8[0] & 1) != 0))
            {
              *a1 = v16;
              a1[1] = v26;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_32;
  }

  v10 = *a1;
  v29 = a1[1];
  v30 = *(*a3 + 32);
  result = *(v30 + 112 * v29 + 24);
  v31 = (v30 + 112 * *a1);
  v33 = v31[3];
  v32 = v31 + 3;
  v34 = v33;
  v35 = v33.i32[1];
  if (result.i32[1] > v33.i32[1] || result.i32[1] == v35 && (vcgt_s32(result, v34).u8[0] & 1) != 0)
  {
    v36 = *(a2 - 1);
    v37 = *(v30 + 112 * v36 + 24);
    if (v37.i32[1] > result.i32[1] || v37.i32[1] == result.i32[1] && (result = vcgt_s32(v37, result), (result.i8[0] & 1) != 0))
    {
      *a1 = v36;
      goto LABEL_31;
    }

    *a1 = v29;
    a1[1] = v10;
    v83 = *(a2 - 1);
    result = *(v30 + 112 * v83 + 24);
    v84 = *v32;
    v85 = HIDWORD(*v32);
    if (result.i32[1] > v85 || result.i32[1] == v85 && (result = vcgt_s32(result, v84), (result.i8[0] & 1) != 0))
    {
      a1[1] = v83;
      goto LABEL_31;
    }
  }

  else
  {
    v69 = *(a2 - 1);
    v70 = *(v30 + 112 * v69 + 24);
    if (v70.i32[1] > result.i32[1] || v70.i32[1] == result.i32[1] && (result = vcgt_s32(v70, result), (result.i8[0] & 1) != 0))
    {
      a1[1] = v69;
      *(a2 - 1) = v29;
      v72 = *a1;
      v71 = a1[1];
      result = *(v30 + 112 * v71 + 24);
      v73 = *(v30 + 112 * *a1 + 24);
      if (result.i32[1] > v73.i32[1] || result.i32[1] == v73.i32[1] && (result = vcgt_s32(result, v73), (result.i8[0] & 1) != 0))
      {
        *a1 = v71;
        a1[1] = v72;
      }
    }
  }

  return result;
}

void *RB::vector<RB::SharedSurface::AsyncUpdate,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,128ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,128ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(a3 << 7);
    v6 = v5 >> 7;
    if (*a2 != (v5 >> 7))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void RB::SharedSurface::AsyncUpdate::~AsyncUpdate(id *this)
{
  v2 = this[8];
  if (v2 && atomic_fetch_add_explicit(v2 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
  }

  RB::SharedSubsurface::~SharedSubsurface(this + 1);
  if (*this)
  {
    if (atomic_fetch_add_explicit(*this + 2, 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
    }
  }
}

void RB::SharedSurface::Remove::~Remove(RB::SharedSurface::Remove *this)
{
  v2 = *(this + 1);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::SharedSubsurface::~SharedSubsurface();
  }

  if (*this)
  {
    if (atomic_fetch_add_explicit((*this + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
    }
  }
}

void RB::SharedSurfaceGroup::flush(void)::$_0::__invoke(os_unfair_lock_s *a1)
{
  RB::SharedSurfaceGroup::render_async(a1);

  RB::SharedSurfaceGroup::render_updates(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,false>(uint64_t result, int32x2_t **a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  v305 = a2;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      break;
    }

    switch(v9)
    {
      case 3:
        v179 = v8[1];
        v180 = v179[4];
        v181 = RB::BinAllocator::free_space(&v179[4]);
        v182 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v8)[4]), v181)), vzip1_s32(v180, (*v8)[4]), vzip2_s32(v180, (*v8)[4]));
        v183 = *(a2 - 1);
        v184 = v183[4];
        v185 = RB::BinAllocator::free_space(&v183[4]);
        v186 = v8[1];
        v187 = v186[4];
        result = RB::BinAllocator::free_space(&v186[4]);
        v188 = vmla_s32(vneg_s32(__PAIR64__(result, v185)), vzip1_s32(v184, v187), vzip2_s32(v184, v187));
        v189 = vcgt_s32(vzip1_s32(v188, v182), vzip2_s32(v188, v182));
        if (v189.i8[4])
        {
          v178 = *v8;
          if (v189.i8[0])
          {
LABEL_113:
            *v8 = *(a2 - 1);
          }

          else
          {
            *v8 = v8[1];
            v8[1] = v178;
            v299 = *(a2 - 1);
            v300 = v299[4];
            v301 = RB::BinAllocator::free_space(&v299[4]);
            v302 = v8[1];
            v303 = v302[4];
            result = RB::BinAllocator::free_space(&v302[4]);
            v304 = vmla_s32(vneg_s32(__PAIR64__(result, v301)), vzip1_s32(v300, v303), vzip2_s32(v300, v303));
            if ((vcgt_s32(v304, vdup_lane_s32(v304, 1)).u32[0] & 1) == 0)
            {
              return result;
            }

            v178 = v8[1];
            v8[1] = *(a2 - 1);
          }

          *(a2 - 1) = v178;
          return result;
        }

        if ((v189.i8[0] & 1) == 0)
        {
          return result;
        }

        v282 = v8[1];
        v8[1] = *(a2 - 1);
        *(a2 - 1) = v282;
        v210 = v8[1];
LABEL_190:
        v283 = v210[4];
        v284 = RB::BinAllocator::free_space(&v210[4]);
        v285 = (*v8)[4];
        result = RB::BinAllocator::free_space(&(*v8)[4]);
        v286 = vmla_s32(vneg_s32(__PAIR64__(result, v284)), vzip1_s32(v283, v285), vzip2_s32(v283, v285));
        if (vcgt_s32(v286, vdup_lane_s32(v286, 1)).u32[0])
        {
          *v8 = vextq_s8(*v8, *v8, 8uLL);
        }

        return result;
      case 4:

        return std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,0>(v8, v8 + 1, v8 + 2, a2 - 1);
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,0>(v8, v8 + 1, v8 + 2, v8 + 3);
        v190 = *(a2 - 1);
        v191 = v190[4];
        v192 = RB::BinAllocator::free_space(&v190[4]);
        v193 = v8[3];
        v194 = v193[4];
        result = RB::BinAllocator::free_space(&v193[4]);
        v195 = vmla_s32(vneg_s32(__PAIR64__(result, v192)), vzip1_s32(v191, v194), vzip2_s32(v191, v194));
        if ((vcgt_s32(v195, vdup_lane_s32(v195, 1)).u32[0] & 1) == 0)
        {
          return result;
        }

        v196 = v8[3];
        v8[3] = *(a2 - 1);
        *(a2 - 1) = v196;
        v197 = v8[3];
        v198 = v197[4];
        v199 = RB::BinAllocator::free_space(&v197[4]);
        v200 = v8[2];
        v201 = v200[4];
        result = RB::BinAllocator::free_space(&v200[4]);
        v202 = vmla_s32(vneg_s32(__PAIR64__(result, v199)), vzip1_s32(v198, v201), vzip2_s32(v198, v201));
        if ((vcgt_s32(v202, vdup_lane_s32(v202, 1)).u32[0] & 1) == 0)
        {
          return result;
        }

        v204 = v8[2];
        v203 = v8[3];
        v8[2] = v203;
        v8[3] = v204;
        v205 = v203[4];
        v206 = RB::BinAllocator::free_space(&v203[4]);
        v207 = v8[1];
        v208 = v207[4];
        result = RB::BinAllocator::free_space(&v207[4]);
        v209 = vmla_s32(vneg_s32(__PAIR64__(result, v206)), vzip1_s32(v205, v208), vzip2_s32(v205, v208));
        if ((vcgt_s32(v209, vdup_lane_s32(v209, 1)).u32[0] & 1) == 0)
        {
          return result;
        }

        v211 = v8[1];
        v210 = v8[2];
        v8[1] = v210;
        v8[2] = v211;
        goto LABEL_190;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v212 = v8 + 1;
      v214 = v8 == a2 || v212 == a2;
      if (a4)
      {
        if (!v214)
        {
          v215 = 0;
          v216 = v8;
          do
          {
            v217 = v216;
            v216 = v212;
            v218 = v217[1];
            v219 = v218[4];
            v220 = RB::BinAllocator::free_space(&v218[4]);
            v221 = (*v217)[4];
            result = RB::BinAllocator::free_space(&(*v217)[4]);
            v222 = vmla_s32(vneg_s32(__PAIR64__(result, v220)), vzip1_s32(v219, v221), vzip2_s32(v219, v221));
            if (vcgt_s32(v222, vdup_lane_s32(v222, 1)).u32[0])
            {
              v223 = *v216;
              *v216 = 0;
              v224 = v215;
              while (1)
              {
                v225 = (v8 + v224);
                v226 = *(v8 + v224);
                result = *(v8 + v224 + 8);
                *v225 = result;
                v225[1] = v226;
                if (!v224)
                {
                  break;
                }

                v227 = v223[4];
                v228 = RB::BinAllocator::free_space(&v223[4]);
                v229 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space((*(v225 - 1) + 32)), v228)), vzip1_s32(v227, *(*(v225 - 1) + 32)), vzip2_s32(v227, *(*(v225 - 1) + 32)));
                v224 -= 8;
                if ((vcgt_s32(v229, vdup_lane_s32(v229, 1)).u32[0] & 1) == 0)
                {
                  v230 = (v8 + v224 + 8);
                  result = *v230;
                  goto LABEL_137;
                }
              }

              v230 = v8;
LABEL_137:
              *v230 = v223;
              if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                result = RB::SharedSurfaceGroup::~SharedSurfaceGroup();
              }
            }

            v212 = v216 + 1;
            v215 += 8;
          }

          while (v216 + 1 != a2);
        }
      }

      else if (!v214)
      {
        do
        {
          v287 = v7;
          v7 = v212;
          v288 = v287[1];
          v289 = v288[4];
          v290 = RB::BinAllocator::free_space(&v288[4]);
          v291 = (*v287)[4];
          result = RB::BinAllocator::free_space(&(*v287)[4]);
          v292 = vmla_s32(vneg_s32(__PAIR64__(result, v290)), vzip1_s32(v289, v291), vzip2_s32(v289, v291));
          if (vcgt_s32(v292, vdup_lane_s32(v292, 1)).u32[0])
          {
            v293 = *v7;
            *v7 = 0;
            v294 = v7;
            do
            {
              v295 = *(v294 - 1);
              *(v294 - 1) = *v294;
              *v294 = v295;
              v296 = v293[4];
              v297 = RB::BinAllocator::free_space(&v293[4]);
              v298 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space((*(v294 - 2) + 32)), v297)), vzip1_s32(v296, *(*(v294 - 2) + 32)), vzip2_s32(v296, *(*(v294 - 2) + 32)));
              --v294;
            }

            while ((vcgt_s32(v298, vdup_lane_s32(v298, 1)).u32[0] & 1) != 0);
            result = *v294;
            *v294 = v293;
            if (result)
            {
              if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                result = RB::SharedSurfaceGroup::~SharedSurfaceGroup();
              }
            }
          }

          v212 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v231 = (v9 - 2) >> 1;
        v307 = v231;
        do
        {
          v232 = v231;
          if (v307 >= v231)
          {
            v233 = (2 * v231) | 1;
            v234 = &v8[v233];
            if (2 * v231 + 2 < v9)
            {
              v235 = (*v234)[4];
              v236 = RB::BinAllocator::free_space(&(*v234)[4]);
              v237 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v234[1][4]), v236)), vzip1_s32(v235, v234[1][4]), vzip2_s32(v235, v234[1][4]));
              if (vcgt_s32(v237, vdup_lane_s32(v237, 1)).u8[0])
              {
                ++v234;
                v233 = 2 * v232 + 2;
              }
            }

            v238 = &v8[v232];
            v239 = (*v234)[4];
            v240 = RB::BinAllocator::free_space(&(*v234)[4]);
            v241 = (*v238)[4];
            result = RB::BinAllocator::free_space(&(*v238)[4]);
            v242 = vmla_s32(vneg_s32(__PAIR64__(result, v240)), vzip1_s32(v239, v241), vzip2_s32(v239, v241));
            if ((vcgt_s32(v242, vdup_lane_s32(v242, 1)).u32[0] & 1) == 0)
            {
              v243 = *v238;
              *v238 = 0;
              while (1)
              {
                v244 = v234;
                result = *v238;
                *v238 = *v234;
                *v234 = result;
                if (v307 < v233)
                {
                  break;
                }

                v245 = (2 * v233) | 1;
                v234 = &v8[v245];
                v233 = 2 * v233 + 2;
                if (v233 >= v9)
                {
                  v233 = v245;
                }

                else
                {
                  v246 = (*v234)[4];
                  v247 = RB::BinAllocator::free_space(&(*v234)[4]);
                  v248 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v234[1][4]), v247)), vzip1_s32(v246, v234[1][4]), vzip2_s32(v246, v234[1][4]));
                  if (vcgt_s32(v248, vdup_lane_s32(v248, 1)).u8[0])
                  {
                    ++v234;
                  }

                  else
                  {
                    v233 = v245;
                  }
                }

                v249 = (*v234)[4];
                v250 = RB::BinAllocator::free_space(&(*v234)[4]);
                v251 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v243[4]), v250)), vzip1_s32(v249, v243[4]), vzip2_s32(v249, v243[4]));
                v238 = v244;
                if (vcgt_s32(v251, vdup_lane_s32(v251, 1)).u32[0])
                {
                  result = *v244;
                  break;
                }
              }

              *v244 = v243;
              if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
              {
                result = RB::SharedSurfaceGroup::~SharedSurfaceGroup();
              }
            }
          }

          v231 = v232 - 1;
        }

        while (v232);
        v252 = v305;
        do
        {
          v306 = v252;
          v253 = 0;
          v254 = 0;
          v255 = *v7;
          *v7 = 0;
          v256 = v7;
          do
          {
            v257 = &v256[v254];
            v258 = v257 + 1;
            v259 = (2 * v254) | 1;
            v260 = 2 * v254 + 2;
            if (v260 >= v9)
            {
              v254 = (2 * v254) | 1;
            }

            else
            {
              v261 = v257[1];
              v262 = v261[4];
              v263 = RB::BinAllocator::free_space(&v261[4]);
              v265 = v257[2];
              v264 = v257 + 2;
              v266 = v265[4];
              result = RB::BinAllocator::free_space(&v265[4]);
              v267 = vmla_s32(vneg_s32(__PAIR64__(result, v263)), vzip1_s32(v262, v266), vzip2_s32(v262, v266));
              if (vcgt_s32(v267, vdup_lane_s32(v267, 1)).u32[0])
              {
                v258 = v264;
                v254 = v260;
              }

              else
              {
                v254 = v259;
              }

              v253 = *v256;
            }

            *v256 = *v258;
            *v258 = v253;
            v256 = v258;
          }

          while (v254 <= ((v9 - 2) >> 1));
          v252 = v306 - 1;
          if (v258 == v306 - 1)
          {
            *v258 = v255;
          }

          else
          {
            *v258 = *v252;
            *v252 = v255;
            v268 = (v258 - v7 + 8) >> 3;
            v269 = v268 < 2;
            v270 = v268 - 2;
            if (!v269)
            {
              v271 = v270 >> 1;
              v272 = &v7[v270 >> 1];
              v273 = (*v272)[4];
              v274 = RB::BinAllocator::free_space(&(*v272)[4]);
              v275 = (*v258)[4];
              result = RB::BinAllocator::free_space(&(*v258)[4]);
              v276 = vmla_s32(vneg_s32(__PAIR64__(result, v274)), vzip1_s32(v273, v275), vzip2_s32(v273, v275));
              if (vcgt_s32(v276, vdup_lane_s32(v276, 1)).u32[0])
              {
                v277 = *v258;
                *v258 = 0;
                while (1)
                {
                  v278 = v272;
                  result = *v258;
                  *v258 = *v272;
                  *v272 = result;
                  if (!v271)
                  {
                    break;
                  }

                  v271 = (v271 - 1) >> 1;
                  v272 = &v7[v271];
                  v279 = (*v272)[4];
                  v280 = RB::BinAllocator::free_space(&(*v272)[4]);
                  v281 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v277[4]), v280)), vzip1_s32(v279, v277[4]), vzip2_s32(v279, v277[4]));
                  v258 = v278;
                  if ((vcgt_s32(v281, vdup_lane_s32(v281, 1)).u32[0] & 1) == 0)
                  {
                    result = *v278;
                    break;
                  }
                }

                *v278 = v277;
                if (result && atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
                {
                  result = RB::SharedSurfaceGroup::~SharedSurfaceGroup();
                }
              }
            }
          }

          if (v253 && atomic_fetch_add_explicit(&v253[1], 0xFFFFFFFF, memory_order_release) == 1)
          {
            result = RB::SharedSurfaceGroup::~SharedSurfaceGroup();
          }

          v269 = v9-- <= 2;
        }

        while (!v269);
      }

      return result;
    }

    v10 = v9 >> 1;
    if (v9 >= 0x81)
    {
      v11 = v7[v10];
      v12 = v11[4];
      v13 = RB::BinAllocator::free_space(&v11[4]);
      v14 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v7)[4]), v13)), vzip1_s32(v12, (*v7)[4]), vzip2_s32(v12, (*v7)[4]));
      v15 = *(a2 - 1);
      v16 = v15[4];
      v17 = RB::BinAllocator::free_space(&v15[4]);
      v18 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10][4]), v17)), vzip1_s32(v16, v7[v10][4]), vzip2_s32(v16, v7[v10][4]));
      v19 = vcgt_s32(vzip1_s32(v18, v14), vzip2_s32(v18, v14));
      if (v19.i8[4])
      {
        v20 = *v7;
        if (v19.i8[0])
        {
          *v7 = *(a2 - 1);
          goto LABEL_27;
        }

        *v7 = v7[v10];
        v7[v10] = v20;
        v41 = *(a2 - 1);
        v42 = v41[4];
        v43 = RB::BinAllocator::free_space(&v41[4]);
        v44 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10][4]), v43)), vzip1_s32(v42, v7[v10][4]), vzip2_s32(v42, v7[v10][4]));
        if (vcgt_s32(v44, vdup_lane_s32(v44, 1)).u8[0])
        {
          v20 = v7[v10];
          v7[v10] = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v20;
        }
      }

      else if (v19.i8[0])
      {
        v30 = v7[v10];
        v7[v10] = *(a2 - 1);
        *(a2 - 1) = v30;
        v31 = v7[v10];
        v32 = v31[4];
        v33 = RB::BinAllocator::free_space(&v31[4]);
        v34 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v7)[4]), v33)), vzip1_s32(v32, (*v7)[4]), vzip2_s32(v32, (*v7)[4]));
        if (vcgt_s32(v34, vdup_lane_s32(v34, 1)).u8[0])
        {
          v35 = *v7;
          *v7 = v7[v10];
          v7[v10] = v35;
        }
      }

      v45 = v10 - 1;
      v46 = v7[v10 - 1];
      v47 = v46[4];
      v48 = RB::BinAllocator::free_space(&v46[4]);
      v49 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[1][4]), v48)), vzip1_s32(v47, v7[1][4]), vzip2_s32(v47, v7[1][4]));
      v50 = *(a2 - 2);
      v51 = v50[4];
      v52 = RB::BinAllocator::free_space(&v50[4]);
      v53 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10 - 1][4]), v52)), vzip1_s32(v51, v7[v10 - 1][4]), vzip2_s32(v51, v7[v10 - 1][4]));
      v54 = vcgt_s32(vzip1_s32(v53, v49), vzip2_s32(v53, v49));
      if (v54.i8[4])
      {
        v55 = v7[1];
        if (v54.i8[0])
        {
          v7[1] = *(a2 - 2);
          goto LABEL_39;
        }

        v7[1] = v7[v45];
        v7[v45] = v55;
        v66 = *(a2 - 2);
        v67 = v66[4];
        v68 = RB::BinAllocator::free_space(&v66[4]);
        v69 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v45][4]), v68)), vzip1_s32(v67, v7[v45][4]), vzip2_s32(v67, v7[v45][4]));
        if (vcgt_s32(v69, vdup_lane_s32(v69, 1)).u8[0])
        {
          v55 = v7[v45];
          v7[v45] = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v55;
        }
      }

      else if (v54.i8[0])
      {
        v56 = v7[v45];
        v7[v45] = *(a2 - 2);
        *(a2 - 2) = v56;
        v57 = v7[v45];
        v58 = v57[4];
        v59 = RB::BinAllocator::free_space(&v57[4]);
        v60 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[1][4]), v59)), vzip1_s32(v58, v7[1][4]), vzip2_s32(v58, v7[1][4]));
        if (vcgt_s32(v60, vdup_lane_s32(v60, 1)).u8[0])
        {
          v61 = v7[1];
          v7[1] = v7[v45];
          v7[v45] = v61;
        }
      }

      v70 = v10 + 1;
      v71 = v7[v10 + 1];
      v72 = v71[4];
      v73 = RB::BinAllocator::free_space(&v71[4]);
      v74 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[2][4]), v73)), vzip1_s32(v72, v7[2][4]), vzip2_s32(v72, v7[2][4]));
      v75 = *(a2 - 3);
      v76 = v75[4];
      v77 = RB::BinAllocator::free_space(&v75[4]);
      v78 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10 + 1][4]), v77)), vzip1_s32(v76, v7[v10 + 1][4]), vzip2_s32(v76, v7[v10 + 1][4]));
      v79 = vcgt_s32(vzip1_s32(v78, v74), vzip2_s32(v78, v74));
      if (v79.i8[4])
      {
        v80 = v7[2];
        if (v79.i8[0])
        {
          v7[2] = *(a2 - 3);
          goto LABEL_48;
        }

        v7[2] = v7[v70];
        v7[v70] = v80;
        v87 = *(a2 - 3);
        v88 = v87[4];
        v89 = RB::BinAllocator::free_space(&v87[4]);
        v90 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v70][4]), v89)), vzip1_s32(v88, v7[v70][4]), vzip2_s32(v88, v7[v70][4]));
        if (vcgt_s32(v90, vdup_lane_s32(v90, 1)).u8[0])
        {
          v80 = v7[v70];
          v7[v70] = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v80;
        }
      }

      else if (v79.i8[0])
      {
        v81 = v7[v70];
        v7[v70] = *(a2 - 3);
        *(a2 - 3) = v81;
        v82 = v7[v70];
        v83 = v82[4];
        v84 = RB::BinAllocator::free_space(&v82[4]);
        v85 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[2][4]), v84)), vzip1_s32(v83, v7[2][4]), vzip2_s32(v83, v7[2][4]));
        if (vcgt_s32(v85, vdup_lane_s32(v85, 1)).u8[0])
        {
          v86 = v7[2];
          v7[2] = v7[v70];
          v7[v70] = v86;
        }
      }

      v91 = v7[v10];
      v92 = v91[4];
      v93 = RB::BinAllocator::free_space(&v91[4]);
      v94 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v45][4]), v93)), vzip1_s32(v92, v7[v45][4]), vzip2_s32(v92, v7[v45][4]));
      v95 = v7[v70];
      v96 = v95[4];
      v97 = RB::BinAllocator::free_space(&v95[4]);
      v98 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10][4]), v97)), vzip1_s32(v96, v7[v10][4]), vzip2_s32(v96, v7[v10][4]));
      v99 = vcgt_s32(vzip1_s32(v98, v94), vzip2_s32(v98, v94));
      if (v99.i8[4])
      {
        v100 = v7[v45];
        if (v99.i8[0])
        {
          v7[v45] = v7[v70];
          v7[v70] = v100;
          v101 = v7[v10];
LABEL_58:
          v111 = *v7;
          *v7 = v101;
          v7[v10] = v111;
          goto LABEL_59;
        }

        v7[v45] = v7[v10];
        v7[v10] = v100;
        v107 = v7[v70];
        v108 = v107[4];
        v109 = RB::BinAllocator::free_space(&v107[4]);
        v110 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10][4]), v109)), vzip1_s32(v108, v7[v10][4]), vzip2_s32(v108, v7[v10][4]));
        v101 = v7[v10];
        if ((vcgt_s32(v110, vdup_lane_s32(v110, 1)).u8[0] & 1) == 0)
        {
          goto LABEL_58;
        }

        v106 = v7[v70];
        v7[v10] = v106;
        v7[v70] = v101;
      }

      else
      {
        v101 = v7[v10];
        if ((v99.i8[0] & 1) == 0)
        {
          goto LABEL_58;
        }

        v102 = v7[v70];
        v7[v10] = v102;
        v7[v70] = v101;
        v103 = v102[4];
        v104 = RB::BinAllocator::free_space(&v102[4]);
        v105 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v45][4]), v104)), vzip1_s32(v103, v7[v45][4]), vzip2_s32(v103, v7[v45][4]));
        v101 = v7[v10];
        if ((vcgt_s32(v105, vdup_lane_s32(v105, 1)).u8[0] & 1) == 0)
        {
          goto LABEL_58;
        }

        v106 = v7[v45];
        v7[v45] = v101;
        v7[v10] = v106;
      }

      v101 = v106;
      goto LABEL_58;
    }

    v21 = (*v7)[4];
    v22 = RB::BinAllocator::free_space(&(*v7)[4]);
    v23 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10][4]), v22)), vzip1_s32(v21, v7[v10][4]), vzip2_s32(v21, v7[v10][4]));
    v24 = *(a2 - 1);
    v25 = v24[4];
    v26 = RB::BinAllocator::free_space(&v24[4]);
    v27 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v7)[4]), v26)), vzip1_s32(v25, (*v7)[4]), vzip2_s32(v25, (*v7)[4]));
    v28 = vcgt_s32(vzip1_s32(v27, v23), vzip2_s32(v27, v23));
    if ((v28.i8[4] & 1) == 0)
    {
      if (v28.i8[0])
      {
        v36 = *v7;
        *v7 = *(a2 - 1);
        *(a2 - 1) = v36;
        v37 = (*v7)[4];
        v38 = RB::BinAllocator::free_space(&(*v7)[4]);
        v39 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v7[v10][4]), v38)), vzip1_s32(v37, v7[v10][4]), vzip2_s32(v37, v7[v10][4]));
        if (vcgt_s32(v39, vdup_lane_s32(v39, 1)).u8[0])
        {
          v40 = v7[v10];
          v7[v10] = *v7;
          *v7 = v40;
        }
      }

      goto LABEL_59;
    }

    v29 = v7[v10];
    if (v28.i8[0])
    {
      v7[v10] = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v29;
      goto LABEL_59;
    }

    v7[v10] = *v7;
    *v7 = v29;
    v62 = *(a2 - 1);
    v63 = v62[4];
    v64 = RB::BinAllocator::free_space(&v62[4]);
    v65 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v7)[4]), v64)), vzip1_s32(v63, (*v7)[4]), vzip2_s32(v63, (*v7)[4]));
    if (vcgt_s32(v65, vdup_lane_s32(v65, 1)).u8[0])
    {
      v29 = *v7;
      *v7 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v112 = *v7;
LABEL_62:
      v117 = 0;
      *v7 = 0;
      do
      {
        v118 = v7[v117 + 1];
        v119 = v118[4];
        v120 = RB::BinAllocator::free_space(&v118[4]);
        v121 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v112[4]), v120)), vzip1_s32(v119, v112[4]), vzip2_s32(v119, v112[4]));
        ++v117;
      }

      while ((vcgt_s32(v121, vdup_lane_s32(v121, 1)).u8[0] & 1) != 0);
      v122 = &v7[v117];
      v123 = a2;
      if (v117 == 1)
      {
        v123 = a2;
        do
        {
          if (v122 >= v123)
          {
            break;
          }

          v128 = *--v123;
          v129 = v128[4];
          v130 = RB::BinAllocator::free_space(&v128[4]);
          v131 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v112[4]), v130)), vzip1_s32(v129, v112[4]), vzip2_s32(v129, v112[4]));
        }

        while ((vcgt_s32(v131, vdup_lane_s32(v131, 1)).u8[0] & 1) == 0);
      }

      else
      {
        do
        {
          v124 = *--v123;
          v125 = v124[4];
          v126 = RB::BinAllocator::free_space(&v124[4]);
          v127 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v112[4]), v126)), vzip1_s32(v125, v112[4]), vzip2_s32(v125, v112[4]));
        }

        while ((vcgt_s32(v127, vdup_lane_s32(v127, 1)).u8[0] & 1) == 0);
      }

      if (v122 >= v123)
      {
        v143 = v122 - 1;
      }

      else
      {
        v132 = &v7[v117];
        v133 = v123;
        do
        {
          v134 = *v132;
          *v132 = *v133;
          *v133 = v134;
          do
          {
            v135 = v132[1];
            ++v132;
            v136 = v135[4];
            v137 = RB::BinAllocator::free_space(&v135[4]);
            v138 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v112[4]), v137)), vzip1_s32(v136, v112[4]), vzip2_s32(v136, v112[4]));
          }

          while ((vcgt_s32(v138, vdup_lane_s32(v138, 1)).u8[0] & 1) != 0);
          do
          {
            v139 = *--v133;
            v140 = v139[4];
            v141 = RB::BinAllocator::free_space(&v139[4]);
            v142 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v112[4]), v141)), vzip1_s32(v140, v112[4]), vzip2_s32(v140, v112[4]));
          }

          while ((vcgt_s32(v142, vdup_lane_s32(v142, 1)).u8[0] & 1) == 0);
        }

        while (v132 < v133);
        v143 = v132 - 1;
        a2 = v305;
      }

      v144 = *v7;
      if (v143 != v7)
      {
        *v7 = *v143;
        *v143 = v144;
      }

      *v143 = v112;
      if (v144 && atomic_fetch_add_explicit(&v144[1], 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSurfaceGroup::~SharedSurfaceGroup();
      }

      if (v122 < v123)
      {
        goto LABEL_86;
      }

      v145 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *>(v7, v143);
      v8 = v143 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *>(v143 + 1, a2);
      if (result)
      {
        a2 = v143;
        if (!v145)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v145)
      {
LABEL_86:
        result = std::__introsort<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,false>(v7, v143, a3, a4 & 1);
        a4 = 0;
        v8 = v143 + 1;
      }
    }

    else
    {
      v113 = *(v7 - 1);
      v114 = v113[4];
      v115 = RB::BinAllocator::free_space(&v113[4]);
      v116 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v7)[4]), v115)), vzip1_s32(v114, (*v7)[4]), vzip2_s32(v114, (*v7)[4]));
      v112 = *v7;
      if (vcgt_s32(v116, vdup_lane_s32(v116, 1)).u8[0])
      {
        goto LABEL_62;
      }

      *v7 = 0;
      v146 = v112 + 4;
      v147 = v112[4];
      v148 = RB::BinAllocator::free_space(&v112[4]);
      v149 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*(a2 - 1))[4]), v148)), vzip1_s32(v147, (*(a2 - 1))[4]), vzip2_s32(v147, (*(a2 - 1))[4]));
      if (vcgt_s32(v149, vdup_lane_s32(v149, 1)).u32[0])
      {
        v8 = v7;
        do
        {
          v150 = *v146;
          v151 = RB::BinAllocator::free_space(&v112[4]);
          v152 = v8[1];
          ++v8;
          v153 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v152[4]), v151)), vzip1_s32(v150, v152[4]), vzip2_s32(v150, v152[4]));
        }

        while ((vcgt_s32(v153, vdup_lane_s32(v153, 1)).u32[0] & 1) == 0);
      }

      else
      {
        v154 = v7 + 1;
        do
        {
          v8 = v154;
          if (v154 >= a2)
          {
            break;
          }

          v155 = *v146;
          v156 = RB::BinAllocator::free_space(&v112[4]);
          v157 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v8)[4]), v156)), vzip1_s32(v155, (*v8)[4]), vzip2_s32(v155, (*v8)[4]));
          v154 = v8 + 1;
        }

        while ((vcgt_s32(v157, vdup_lane_s32(v157, 1)).u32[0] & 1) == 0);
      }

      v158 = a2;
      if (v8 < a2)
      {
        v158 = a2;
        do
        {
          v159 = *v146;
          v160 = RB::BinAllocator::free_space(&v112[4]);
          v161 = *--v158;
          v162 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space((v161 + 32)), v160)), vzip1_s32(v159, *(v161 + 32)), vzip2_s32(v159, *(v161 + 32)));
        }

        while ((vcgt_s32(v162, vdup_lane_s32(v162, 1)).u32[0] & 1) != 0);
      }

      while (v8 < v158)
      {
        v163 = *v8;
        *v8 = *v158;
        *v158 = v163;
        do
        {
          v164 = *v146;
          v165 = RB::BinAllocator::free_space(&v112[4]);
          v166 = v8[1];
          ++v8;
          v167 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&v166[4]), v165)), vzip1_s32(v164, v166[4]), vzip2_s32(v164, v166[4]));
        }

        while ((vcgt_s32(v167, vdup_lane_s32(v167, 1)).u8[0] & 1) == 0);
        do
        {
          v168 = *v146;
          v169 = RB::BinAllocator::free_space(&v112[4]);
          v170 = *--v158;
          v171 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space((v170 + 32)), v169)), vzip1_s32(v168, *(v170 + 32)), vzip2_s32(v168, *(v170 + 32)));
        }

        while ((vcgt_s32(v171, vdup_lane_s32(v171, 1)).u32[0] & 1) != 0);
      }

      v172 = v8 - 1;
      result = *v7;
      if (v8 - 1 != v7)
      {
        *v7 = *v172;
        *v172 = result;
      }

      a4 = 0;
      *v172 = v112;
      if (result)
      {
        a4 = 0;
        if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          result = RB::SharedSurfaceGroup::~SharedSurfaceGroup();
          a4 = 0;
        }
      }
    }
  }

  if (v9 < 2)
  {
    return result;
  }

  if (v9 != 2)
  {
    goto LABEL_10;
  }

  v173 = *(a2 - 1);
  v174 = v173[4];
  v175 = RB::BinAllocator::free_space(&v173[4]);
  v176 = (*v8)[4];
  result = RB::BinAllocator::free_space(&(*v8)[4]);
  v177 = vmla_s32(vneg_s32(__PAIR64__(result, v175)), vzip1_s32(v174, v176), vzip2_s32(v174, v176));
  if (vcgt_s32(v177, vdup_lane_s32(v177, 1)).u32[0])
  {
    v178 = *v8;
    goto LABEL_113;
  }

  return result;
}

void sub_195E23264(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit(v1 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,0>(int32x2_t **a1, int32x2_t **a2, int32x2_t **a3, int32x2_t **a4)
{
  v8 = (*a2)[4];
  v9 = RB::BinAllocator::free_space(&(*a2)[4]);
  v10 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a1)[4]), v9)), vzip1_s32(v8, (*a1)[4]), vzip2_s32(v8, (*a1)[4]));
  v11 = (*a3)[4];
  v12 = RB::BinAllocator::free_space(&(*a3)[4]);
  v13 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a2)[4]), v12)), vzip1_s32(v11, (*a2)[4]), vzip2_s32(v11, (*a2)[4]));
  v14 = vcgt_s32(vzip1_s32(v13, v10), vzip2_s32(v13, v10));
  if (v14.i8[4])
  {
    v15 = *a1;
    if (v14.i8[0])
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v15;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v15;
    v21 = (*a3)[4];
    v22 = RB::BinAllocator::free_space(&(*a3)[4]);
    v23 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a2)[4]), v22)), vzip1_s32(v21, (*a2)[4]), vzip2_s32(v21, (*a2)[4]));
    if (vcgt_s32(v23, vdup_lane_s32(v23, 1)).u8[0])
    {
      v15 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v14.i8[0])
  {
    v16 = *a2;
    *a2 = *a3;
    *a3 = v16;
    v17 = (*a2)[4];
    v18 = RB::BinAllocator::free_space(&(*a2)[4]);
    v19 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a1)[4]), v18)), vzip1_s32(v17, (*a1)[4]), vzip2_s32(v17, (*a1)[4]));
    if (vcgt_s32(v19, vdup_lane_s32(v19, 1)).u8[0])
    {
      v20 = *a1;
      *a1 = *a2;
      *a2 = v20;
    }
  }

LABEL_10:
  v24 = (*a4)[4];
  v25 = RB::BinAllocator::free_space(&(*a4)[4]);
  v26 = (*a3)[4];
  result = RB::BinAllocator::free_space(&(*a3)[4]);
  v28 = vmla_s32(vneg_s32(__PAIR64__(result, v25)), vzip1_s32(v24, v26), vzip2_s32(v24, v26));
  if (vcgt_s32(v28, vdup_lane_s32(v28, 1)).u32[0])
  {
    v29 = *a3;
    *a3 = *a4;
    *a4 = v29;
    v30 = (*a3)[4];
    v31 = RB::BinAllocator::free_space(&(*a3)[4]);
    v32 = (*a2)[4];
    result = RB::BinAllocator::free_space(&(*a2)[4]);
    v33 = vmla_s32(vneg_s32(__PAIR64__(result, v31)), vzip1_s32(v30, v32), vzip2_s32(v30, v32));
    if (vcgt_s32(v33, vdup_lane_s32(v33, 1)).u32[0])
    {
      v34 = *a2;
      *a2 = *a3;
      *a3 = v34;
      v35 = (*a2)[4];
      v36 = RB::BinAllocator::free_space(&(*a2)[4]);
      v37 = (*a1)[4];
      result = RB::BinAllocator::free_space(&(*a1)[4]);
      v38 = vmla_s32(vneg_s32(__PAIR64__(result, v36)), vzip1_s32(v35, v37), vzip2_s32(v35, v37));
      if (vcgt_s32(v38, vdup_lane_s32(v38, 1)).u32[0])
      {
        v39 = *a1;
        *a1 = *a2;
        *a2 = v39;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *>(int32x2_t **a1, int32x2_t **a2)
{
  v4 = a2 - a1;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v26 = a1[1];
        v27 = v26[4];
        v28 = RB::BinAllocator::free_space(&v26[4]);
        v29 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a1)[4]), v28)), vzip1_s32(v27, (*a1)[4]), vzip2_s32(v27, (*a1)[4]));
        v30 = *(a2 - 1);
        v31 = v30[4];
        v32 = RB::BinAllocator::free_space(&v30[4]);
        v33 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&a1[1][4]), v32)), vzip1_s32(v31, a1[1][4]), vzip2_s32(v31, a1[1][4]));
        v34 = vcgt_s32(vzip1_s32(v33, v29), vzip2_s32(v33, v29));
        if (v34.i8[4])
        {
          v9 = *a1;
          if ((v34.i8[0] & 1) == 0)
          {
            *a1 = a1[1];
            a1[1] = v9;
            v57 = *(a2 - 1);
            v58 = v57[4];
            v59 = RB::BinAllocator::free_space(&v57[4]);
            v60 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&a1[1][4]), v59)), vzip1_s32(v58, a1[1][4]), vzip2_s32(v58, a1[1][4]));
            if ((vcgt_s32(v60, vdup_lane_s32(v60, 1)).u32[0] & 1) == 0)
            {
              return 1;
            }

            v9 = a1[1];
            a1[1] = *(a2 - 1);
            goto LABEL_16;
          }

LABEL_15:
          *a1 = *(a2 - 1);
LABEL_16:
          *(a2 - 1) = v9;
          return 1;
        }

        if ((v34.i8[0] & 1) == 0)
        {
          return 1;
        }

        v48 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v48;
        v24 = a1[1];
        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,0>(a1, a1 + 1, a1 + 2, a2 - 1);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,RB::SharedSurfaceGroup::prune_caches_locked(unsigned int,unsigned int)::$_0 &,RB::refcounted_ptr<RB::SharedSurface> *,0>(a1, a1 + 1, a1 + 2, a1 + 3);
        v10 = *(a2 - 1);
        v11 = v10[4];
        v12 = RB::BinAllocator::free_space(&v10[4]);
        v13 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&a1[3][4]), v12)), vzip1_s32(v11, a1[3][4]), vzip2_s32(v11, a1[3][4]));
        if ((vcgt_s32(v13, vdup_lane_s32(v13, 1)).u32[0] & 1) == 0)
        {
          return 1;
        }

        v14 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v14;
        v15 = a1[3];
        v16 = v15[4];
        v17 = RB::BinAllocator::free_space(&v15[4]);
        v18 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&a1[2][4]), v17)), vzip1_s32(v16, a1[2][4]), vzip2_s32(v16, a1[2][4]));
        if ((vcgt_s32(v18, vdup_lane_s32(v18, 1)).u32[0] & 1) == 0)
        {
          return 1;
        }

        v20 = a1[2];
        v19 = a1[3];
        a1[2] = v19;
        a1[3] = v20;
        v21 = v19[4];
        v22 = RB::BinAllocator::free_space(&v19[4]);
        v23 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&a1[1][4]), v22)), vzip1_s32(v21, a1[1][4]), vzip2_s32(v21, a1[1][4]));
        if ((vcgt_s32(v23, vdup_lane_s32(v23, 1)).u32[0] & 1) == 0)
        {
          return 1;
        }

        v25 = a1[1];
        v24 = a1[2];
        a1[1] = v24;
        a1[2] = v25;
        break;
      default:
        goto LABEL_17;
    }

    v49 = v24[4];
    v50 = RB::BinAllocator::free_space(&v24[4]);
    v51 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a1)[4]), v50)), vzip1_s32(v49, (*a1)[4]), vzip2_s32(v49, (*a1)[4]));
    if (vcgt_s32(v51, vdup_lane_s32(v51, 1)).u32[0])
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 1);
    v6 = v5[4];
    v7 = RB::BinAllocator::free_space(&v5[4]);
    v8 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a1)[4]), v7)), vzip1_s32(v6, (*a1)[4]), vzip2_s32(v6, (*a1)[4]));
    if (vcgt_s32(v8, vdup_lane_s32(v8, 1)).u32[0])
    {
      v9 = *a1;
      goto LABEL_15;
    }

    return 1;
  }

LABEL_17:
  v35 = a1[1];
  v36 = v35[4];
  v37 = RB::BinAllocator::free_space(&v35[4]);
  v38 = (*a1)[4];
  v39 = RB::BinAllocator::free_space(&(*a1)[4]);
  v41 = a1 + 2;
  v40 = a1[2];
  v42 = vmla_s32(vneg_s32(__PAIR64__(v39, v37)), vzip1_s32(v36, v38), vzip2_s32(v36, v38));
  v43 = v40[4];
  v44 = RB::BinAllocator::free_space(&v40[4]);
  v45 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&a1[1][4]), v44)), vzip1_s32(v43, a1[1][4]), vzip2_s32(v43, a1[1][4]));
  v46 = vcgt_s32(vzip1_s32(v45, v42), vzip2_s32(v45, v42));
  if (v46.i8[4])
  {
    v47 = *a1;
    if (v46.i8[0])
    {
      *a1 = a1[2];
      a1[2] = v47;
    }

    else
    {
      v61 = a1[2];
      *a1 = a1[1];
      a1[1] = v47;
      v62 = v61[4];
      v63 = RB::BinAllocator::free_space(&v61[4]);
      v64 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&a1[1][4]), v63)), vzip1_s32(v62, a1[1][4]), vzip2_s32(v62, a1[1][4]));
      if (vcgt_s32(v64, vdup_lane_s32(v64, 1)).u32[0])
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v46.i8[0])
  {
    v53 = a1[1];
    v52 = a1[2];
    a1[1] = v52;
    a1[2] = v53;
    v54 = v52[4];
    v55 = RB::BinAllocator::free_space(&v52[4]);
    v56 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*a1)[4]), v55)), vzip1_s32(v54, (*a1)[4]), vzip2_s32(v54, (*a1)[4]));
    if (vcgt_s32(v56, vdup_lane_s32(v56, 1)).u32[0])
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v65 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v66 = 0;
  v67 = 0;
  while (1)
  {
    v68 = (*v65)[4];
    v69 = RB::BinAllocator::free_space(&(*v65)[4]);
    v70 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space(&(*v41)[4]), v69)), vzip1_s32(v68, (*v41)[4]), vzip2_s32(v68, (*v41)[4]));
    if (vcgt_s32(v70, vdup_lane_s32(v70, 1)).u32[0])
    {
      v71 = *v65;
      *v65 = 0;
      v72 = v66;
      while (1)
      {
        v73 = (a1 + v72);
        v75 = *(a1 + v72 + 16);
        v74 = *(a1 + v72 + 24);
        v73[2] = v74;
        v73[3] = v75;
        if (v72 == -16)
        {
          break;
        }

        v76 = v71[4];
        v77 = RB::BinAllocator::free_space(&v71[4]);
        v78 = vmla_s32(vneg_s32(__PAIR64__(RB::BinAllocator::free_space((v73[1] + 32)), v77)), vzip1_s32(v76, *(v73[1] + 32)), vzip2_s32(v76, *(v73[1] + 32)));
        v72 -= 8;
        if ((vcgt_s32(v78, vdup_lane_s32(v78, 1)).u32[0] & 1) == 0)
        {
          v79 = (a1 + v72 + 24);
          v74 = *v79;
          goto LABEL_40;
        }
      }

      v79 = a1;
LABEL_40:
      *v79 = v71;
      if (v74)
      {
        if (atomic_fetch_add_explicit(&v74[1], 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::SharedSurfaceGroup::~SharedSurfaceGroup();
        }
      }

      if (++v67 == 8)
      {
        return v65 + 1 == a2;
      }
    }

    v41 = v65;
    v66 += 8;
    if (++v65 == a2)
    {
      return 1;
    }
  }
}

void sub_195E23BB4(_Unwind_Exception *exception_object)
{
  if (atomic_fetch_add_explicit((v1 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::SharedSurfaceGroup::~SharedSurfaceGroup();
  }

  _Unwind_Resume(exception_object);
}

uint64_t RB::SharedSurfaceGroup::prune_removed_locked(void)::$_0::__invoke(os_unfair_lock_s **a1)
{
  result = RB::SharedSurfaceGroup::test_markers((a1 + 1));
  if (result)
  {
    v3 = *a1;
    os_unfair_lock_lock(*a1 + 2);
    v4 = RB::SharedSurfaceGroup::commit_removed_locked(v3);
    v5 = v4;
    v6 = RB::current_time_seconds(v4);
    v7 = RB::SharedSurfaceGroup::prune_caches_locked(v3, (v6 * 60.0 + 0.5), 0) | v5;
    os_unfair_lock_unlock(v3 + 2);
    if (v7)
    {
      [*(*&v3->_os_unfair_lock_opaque + 16) collectResources];
    }

LABEL_5:
    v8 = a1[1];
    if (*(a1 + 4))
    {
      v9 = 0;
      do
      {
        v10 = *&v8[2 * v9]._os_unfair_lock_opaque;
        if (v10 && atomic_fetch_add_explicit((v10 + 8), 0xFFFFFFFF, memory_order_release) == 1)
        {
          RB::SharedSubsurface::~SharedSubsurface();
        }

        ++v9;
      }

      while (v9 < *(a1 + 4));
      v8 = a1[1];
    }

    if (v8)
    {
      free(v8);
    }

    JUMPOUT(0x19A8C09E0);
  }

  if (a1)
  {
    goto LABEL_5;
  }

  return result;
}

void *RB::vector<RB::SharedSurface::Copy,0ul,unsigned int>::reserve_slow(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12) + (*(a1 + 12) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(a1 + 12) + (*(a1 + 12) >> 1);
  }

  result = RB::details::realloc_vector<unsigned int,56ul>(*a1, (a1 + 12), v3);
  *a1 = result;
  return result;
}

void *RB::details::realloc_vector<unsigned int,56ul>(void *a1, _DWORD *a2, unsigned int a3)
{
  v4 = a1;
  if (a3)
  {
    v5 = malloc_good_size(56 * a3);
    v6 = v5 / 0x38;
    if (*a2 != (v5 / 0x38))
    {
      v7 = malloc_type_realloc(v4, v5, 0x92EAD613uLL);
      if (!v7)
      {
        RB::precondition_failure("allocation failure", v8);
      }

      v4 = v7;
      *a2 = v6;
    }
  }

  else
  {
    *a2 = 0;
    free(a1);
    return 0;
  }

  return v4;
}

void RB::SharedSurface::Copy::~Copy(RB::SharedSurface::Copy *this)
{
  v2 = *(this + 1);
  if (v2 && atomic_fetch_add_explicit((v2 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::SharedSurfaceGroup::~SharedSurfaceGroup();
  }

  if (*this)
  {
    if (atomic_fetch_add_explicit((*this + 8), 0xFFFFFFFF, memory_order_release) == 1)
    {
      RB::refcounted_ptr<RB::SharedSurfaceClient>::operator=();
    }
  }
}

void *RB::vector<RB::SharedSurfaceGroup::render_async(void)::Completion,8ul,unsigned long>::reserve_slow(void *__dst, unint64_t a2)
{
  if (*(__dst + 58) + (*(__dst + 58) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 58) + (*(__dst + 58) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,56ul>(*(__dst + 56), __dst, 8uLL, __dst + 58, v3);
  *(__dst + 56) = result;
  return result;
}

uint64_t RB::vector<RB::SharedSubsurface,4ul,unsigned int>::~vector(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 192);
  if (v2)
  {
    a1 = *(a1 + 192);
  }

  if (*(v1 + 200))
  {
    v3 = 0;
    do
    {
      RB::SharedSubsurface::~SharedSubsurface(a1);
      ++v3;
      a1 = v4 + 48;
    }

    while (v3 < *(v1 + 200));
    v2 = *(v1 + 192);
  }

  if (v2)
  {
    free(v2);
  }

  return v1;
}

uint64_t RB::vector<RB::CommitMarker,0ul,unsigned int>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      v4 = v2[v3];
      if (v4 && atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        RB::SharedSubsurface::~SharedSubsurface();
      }

      ++v3;
    }

    while (v3 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

void RB::Fill::Color::log_key_color(RB::Fill::Color *this)
{
  v1 = RB::error_log(this);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    RB::Fill::Color::log_key_color(v1);
  }
}

uint64_t RB::Fill::Color::create_cgcolor@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>, float16x4_t a4@<D0>, float16x4_t a5@<D1>)
{
  v27 = *MEMORY[0x1E69E9840];
  v24 = a2;
  a4.i32[0] = *a1;
  a5.i32[0] = *(a1 + 4);
  *components = vcvtq_f64_f32(*&vcvtq_f32_f16(a4));
  *&components[16] = vcvtq_f64_f32(*&vcvtq_f32_f16(a5));
  if (*(a1 + 13) == 1 && (v7 = RB::ColorSpace::cg_color_space((a1 + 12), 1)) != 0)
  {
    v8 = v7;
  }

  else
  {
    v9 = RB::ColorSpace::cg_color_space(&v24, 1);
    if (v9)
    {
      v8 = v9;
      v11 = v24;
    }

    else
    {
      v8 = RB::extended_srgb_colorspace(0);
      v11 = 17;
      v24 = 17;
    }

    v25[0] = *a1;
    *(v25 + 6) = *(a1 + 6);
    v10.i64[0] = 0;
    RB::Fill::Color::convert(v25, v11, v10);
    _H1 = v25[0];
    _H3 = HIWORD(v25[0]);
    __asm { FCVT            D1, H1 }

    *components = _D1;
    v19 = vmovn_s64(vshlq_u64(vdupq_n_s64(v25[0]), xmmword_195E45740));
    *&components[8] = vcvtq_f64_f32(*&vcvtq_f32_f16(vuzp1_s16(v19, v19)));
    __asm { FCVT            D4, H3 }

    *&components[24] = _D4;
  }

  if ((*(a1 + 8) & 0x7FFF) != 0)
  {
    _H0 = *(a1 + 8);
    __asm { FCVT            S0, H0 }

    result = CGColorCreateWithContentHeadroom();
  }

  else
  {
    result = CGColorCreate(v8, components);
  }

  *a3 = result;
  return result;
}

__int16 RB::Fill::Color::convert_from_oklab@<H0>(RB::Fill::Color *this@<X0>)
{
  v1 = (*this * *this) * *this;
  v2 = (*(this + 1) * *(this + 1)) * *(this + 1);
  v3 = (*(this + 2) * *(this + 2)) * *(this + 2);
  *this = ((v1 * COERCE_SHORT_FLOAT(17428)) + (v2 * COERCE_SHORT_FLOAT(-15714))) + (v3 * COERCE_SHORT_FLOAT(13156));
  *(this + 1) = ((v1 * COERCE_SHORT_FLOAT(-17133)) + (v2 * COERCE_SHORT_FLOAT(16696))) + (v3 * COERCE_SHORT_FLOAT(-19082));
  *&result = ((v1 * COERCE_SHORT_FLOAT(-25524)) + (v2 * COERCE_SHORT_FLOAT(-18015))) + (v3 * COERCE_SHORT_FLOAT(16085));
  *(this + 2) = *&result;
  return result;
}

float RB::Fill::Color::append_color_fn(RB::Fill::Color *this, const RB::ColorMatrixFn *a2, uint64_t a3)
{
  v3 = a3;
  (*(*a2 + 8))(a2, v21, *(this + 6), a3, 0.0);
  v6 = 1.0;
  v7 = (v3 >> 2) & 1;
  if ((v3 & 0x80000000) != 0)
  {
    v6 = RB::ColorMatrix::remove_alpha_factor(v21, (v3 & 4) != 0);
  }

  if (*(this + 13) == 1)
  {
    v8 = RB::color_flags_space(v3, 0);
    if ((v8 & 0x100) != 0)
    {
      v10 = v8;
      v9.i64[0] = 0;
      RB::Fill::Color::convert(this, v8, v9);
      *(this + 6) = v10;
    }
  }

  RB::Fill::Color::apply_color_matrix(this, v21, v7);
  _S0 = RB::ColorMatrixFn::content_headroom(a2);
  if (_S0 > 1.0)
  {
    _H1 = *(this + 4);
    __asm
    {
      FCVT            S2, H1
      FCVT            H3, S0
    }

    if (_S0 >= _S2)
    {
      v19 = _H3;
    }

    else
    {
      v19 = *(this + 4);
    }

    *(this + 4) = v19;
  }

  return v6;
}

void RB::Fill::Color::fill(uint64_t a1, uint64_t a2, float32x4_t a3, float16x4_t a4)
{
  v5 = *(a2 + 125);
  v6 = *(a1 + 13);
  if (v5 != v6 || v5 == 0)
  {
    if (v5 == v6 || v5 == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(a2 + 124) == *(a1 + 12))
  {
    goto LABEL_14;
  }

  if (v6)
  {
LABEL_20:
    RB::CGContext::set_fill_color_slow(a2, a1, a3, a4);
    goto LABEL_21;
  }

LABEL_14:
  a3.i16[0] = *(a2 + 112);
  a4.i16[0] = *a1;
  if (*a3.i16 != *a1)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(a2 + 114);
  a4.i16[0] = *(a1 + 2);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(a2 + 116);
  a4.i16[0] = *(a1 + 4);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(a2 + 118);
  a4.i16[0] = *(a1 + 6);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(a2 + 120);
  a4.i16[0] = *(a1 + 8);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

  a3.i16[0] = *(a2 + 122);
  a4.i16[0] = *(a1 + 10);
  if (*a3.i16 != *a4.i16)
  {
    goto LABEL_20;
  }

LABEL_21:
  v9 = *a2;
  ClipBoundingBox = CGContextGetClipBoundingBox(v9);

  CGContextFillRect(v9, ClipBoundingBox);
}

float RB::Fill::Color::cielab_luminance(RB::Fill::Color *this, float32x4_t a2)
{
  v13[0] = *this;
  *(v13 + 6) = *(this + 6);
  a2.i64[0] = 0;
  RB::Fill::Color::convert(v13, 1u, a2);
  _H1 = v13[0];
  __asm { FCVT            S1, H1 }

  v8 = vmovn_s64(vshlq_u64(vdupq_n_s64(v13[0]), xmmword_195E45740));
  v9 = vmul_f32(*&vcvtq_f32_f16(vuzp1_s16(v8, v8)), 0x3D7841F03F37866FLL);
  v10 = (v9.f32[0] + (_S1 * 0.2225)) + v9.f32[1];
  if (v10 <= 0.0088565)
  {
    v11 = (v10 * 7.787) + 0.13793;
  }

  else
  {
    v11 = powf(v10, 0.33333);
  }

  result = (v11 * 1.16) + -0.16;
  if (result < 0.0)
  {
    result = 0.0;
  }

  if (result > 1.0)
  {
    return 1.0;
  }

  return result;
}

uint64_t RB::Fill::Color::is_white(uint64_t a1, unsigned __int8 a2, float32x4_t a3)
{
  if (*(a1 + 6) != COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
  {
    return 0;
  }

  v15[2] = v3;
  v15[3] = v4;
  v15[0] = *a1;
  *(v15 + 6) = *(a1 + 6);
  a3.i64[0] = 0;
  RB::Fill::Color::convert(v15, a2, a3);
  _H1 = v15[0].i16[2];
  v7 = vcvtq_f32_f16(v15[0]);
  __asm { FCVT            S1, H1 }

  v7.i32[2] = _S1;
  __asm { FMOV            V1.4S, #-1.0 }

  v14 = vcgtq_f32(vdupq_n_s32(0x3A83126Fu), vabsq_f32(vaddq_f32(v7, _Q1)));
  v14.i32[3] = v14.i32[2];
  return vminvq_u32(v14) >> 31;
}

void *RB::Fill::Color::encode(RB::Fill::Color *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::color_field(a2, 1, *this);
  result = rb_color_space(*(this + 6));
  if (result != 1)
  {
    v5 = result;
    RB::ProtobufEncoder::encode_varint(a2, 0x10uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, v5);
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    __asm { FCVT            S8, H0 }

    RB::ProtobufEncoder::encode_varint(a2, 0x1DuLL);
    result = RB::ProtobufEncoder::encode_fixed32(a2, _S8);
  }

  __asm { FCMP            H0, #0 }

  if (!_ZF)
  {
    __asm { FCVT            S8, H0 }

    RB::ProtobufEncoder::encode_varint(a2, 0x25uLL);

    return RB::ProtobufEncoder::encode_fixed32(a2, _S8);
  }

  return result;
}

void RB::Fill::Color::print(RB::Fill::Color *this, RB::SexpString *a2)
{
  RB::SexpString::push(a2, "color");
  _H0 = *this;
  __asm { FCVT            D0, H0 }

  _H1 = *(this + 1);
  __asm { FCVT            D1, H1 }

  _H2 = *(this + 2);
  __asm { FCVT            D2, H2 }

  _H3 = *(this + 3);
  __asm { FCVT            D3, H3 }

  RB::SexpString::printf(a2, 0, "[%g %g %g %g]", _D0, _D1, _D2, _D3);
  if ((*(this + 4) & 0x7FFF) != 0)
  {
    _H0 = *(this + 4);
    __asm { FCVT            D0, H0 }

    RB::SexpString::printf(a2, 0, "(content-headroom %g)", _D0);
  }

  if ((*(this + 5) & 0x7FFF) != 0)
  {
    _H0 = *(this + 5);
    __asm { FCVT            D0, H0 }

    RB::SexpString::printf(a2, 0, "(target-headroom %g)", _D0);
  }

  RB::SexpString::pop(a2);
}

uint64_t RB::Path::Dilator::Dilator(uint64_t result, uint64_t a2, __n128 a3)
{
  *result = &unk_1F0A3F970;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 72) = 1;
  return result;
}

uint64_t RB::Path::Dilator::closepath(uint64_t this)
{
  if ((*(this + 72) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 48);
    v3 = vceqq_f64(v2, *(this + 32));
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v3), 1), v3).u64[0] & 0x8000000000000000) != 0)
    {
      v2 = RB::Path::Dilator::lineto(this, v2);
    }

    this = (*(**(v1 + 8) + 8))(*(v1 + 8), v2);
    *(v1 + 72) = 1;
  }

  return this;
}

__n128 RB::Path::Dilator::lineto(uint64_t a1, float64x2_t a2)
{
  v3 = *(a1 + 32);
  v4 = vsubq_f64(a2, v3);
  if (v4.f64[1] >= 0.0)
  {
    v5.f64[0] = 0.0;
    if (v4.f64[1] > 0.0)
    {
      v5.f64[0] = *(a1 + 16);
    }
  }

  else
  {
    v5.f64[0] = -*(a1 + 16);
  }

  v6 = v4.f64[0] <= 0.0;
  if (v4.f64[0] >= 0.0)
  {
    v7 = 0.0;
    if (!v6)
    {
      v7 = -*(a1 + 24);
    }
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v5.f64[1] = v7;
  v8 = *(a1 + 16);
  v8.f64[0] = *(a1 + 64);
  v12 = vaddq_f64(v8, v5);
  v9 = vaddq_f64(v12, v3);
  v10 = **(a1 + 8);
  if (*(a1 + 72) == 1)
  {
    (*(v10 + 16))(v9);
    *(a1 + 72) = 0;
  }

  else
  {
    (*(v10 + 24))(v9);
  }

  (*(**(a1 + 8) + 24))(*(a1 + 8), vaddq_f64(v12, a2));
  result = a2;
  *(a1 + 32) = a2;
  return result;
}

__n128 *RB::Path::Dilator::moveto(__n128 *this, __n128 a2)
{
  v2 = this;
  if ((this[4].n128_u8[8] & 1) == 0)
  {
    v3 = a2;
    this = RB::Path::Dilator::closepath(this);
    a2 = v3;
  }

  v2[2] = a2;
  v2[3] = a2;
  return this;
}

__n128 RB::Path::Dilator::quadto_monotonic_xy(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v4 = *(a1 + 32);
  v5 = vsubq_f64(a3, v4);
  if (v5.f64[1] >= 0.0)
  {
    v6.f64[0] = 0.0;
    if (v5.f64[1] > 0.0)
    {
      v6.f64[0] = *(a1 + 16);
    }
  }

  else
  {
    v6.f64[0] = -*(a1 + 16);
  }

  v7 = v5.f64[0] <= 0.0;
  if (v5.f64[0] >= 0.0)
  {
    v8 = 0.0;
    if (!v7)
    {
      v8 = -*(a1 + 24);
    }
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v6.f64[1] = v8;
  v9 = *(a1 + 16);
  v9.f64[0] = *(a1 + 64);
  v13 = vaddq_f64(v9, v6);
  v10 = vaddq_f64(v13, v4);
  v11 = **(a1 + 8);
  if (*(a1 + 72) == 1)
  {
    (*(v11 + 16))(v10);
    *(a1 + 72) = 0;
  }

  else
  {
    (*(v11 + 24))(v10);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), vaddq_f64(v13, a2), vaddq_f64(v13, a3));
  result = a3;
  *(a1 + 32) = a3;
  return result;
}

double RB::Path::Dilator::quadto_monotonic_x(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v3 = a3;
  v6 = *(a1 + 32);
  v7 = vsubq_f64(v6, a3);
  if (v7.f64[1] != 0.0)
  {
    v8 = vdivq_f64(vsubq_f64(v6, a2), v7);
    if (v8.f64[1] >= 0.0001 && v8.f64[1] <= 0.9999)
    {
      v9 = vmlaq_laneq_f64(v6, vsubq_f64(a2, v6), v8, 1);
      v11 = vmlaq_laneq_f64(a2, vsubq_f64(v3, a2), v8, 1);
      v12 = v3;
      RB::Path::Dilator::quadto_monotonic_xy(a1, v9, vmlaq_laneq_f64(v9, vsubq_f64(v11, v9), v8, 1));
      a2 = v11;
      v3 = v12;
    }
  }

  *&result = RB::Path::Dilator::quadto_monotonic_xy(a1, a2, v3).n128_u64[0];
  return result;
}

double RB::Path::Dilator::quadto(uint64_t a1, float64x2_t a2, float64x2_t a3)
{
  v5 = *(a1 + 32);
  v6 = vsubq_f64(v5, a3);
  if (v6.f64[0] != 0.0)
  {
    v7 = vdivq_f64(vsubq_f64(v5, a2), v6).f64[0];
    if (v7 >= 0.0001 && v7 <= 0.9999)
    {
      v8 = vmlaq_n_f64(v5, vsubq_f64(a2, v5), v7);
      v10 = vmlaq_n_f64(a2, vsubq_f64(a3, a2), v7);
      v11 = a3;
      RB::Path::Dilator::quadto_monotonic_x(a1, v8, vmlaq_n_f64(v8, vsubq_f64(v10, v8), v7));
      a2 = v10;
      a3 = v11;
    }
  }

  return RB::Path::Dilator::quadto_monotonic_x(a1, a2, a3);
}

__n128 RB::Path::Dilator::cubeto_monotonic_xy(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v5 = *(a1 + 32);
  v6 = vsubq_f64(a4, v5);
  if (v6.f64[1] >= 0.0)
  {
    v7.f64[0] = 0.0;
    if (v6.f64[1] > 0.0)
    {
      v7.f64[0] = *(a1 + 16);
    }
  }

  else
  {
    v7.f64[0] = -*(a1 + 16);
  }

  v8 = v6.f64[0] <= 0.0;
  if (v6.f64[0] >= 0.0)
  {
    v9 = 0.0;
    if (!v8)
    {
      v9 = -*(a1 + 24);
    }
  }

  else
  {
    v9 = *(a1 + 24);
  }

  v7.f64[1] = v9;
  v10 = *(a1 + 16);
  v10.f64[0] = *(a1 + 64);
  v14 = vaddq_f64(v10, v7);
  v11 = vaddq_f64(v14, v5);
  v12 = **(a1 + 8);
  if (*(a1 + 72) == 1)
  {
    (*(v12 + 16))(v11);
    *(a1 + 72) = 0;
  }

  else
  {
    (*(v12 + 24))(v11);
  }

  (*(**(a1 + 8) + 40))(*(a1 + 8), vaddq_f64(v14, a2), vaddq_f64(v14, a3), vaddq_f64(v14, a4));
  result = a4;
  *(a1 + 32) = a4;
  return result;
}

double RB::Path::Dilator::cubeto_monotonic_x(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v4 = a3;
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  a3.f64[0] = COERCE_DOUBLE(*&vsubq_f64(a4, v7).f64[1]) + (a2.f64[1] - a3.f64[1]) * 3.0;
  v9 = a3.f64[1] - (a2.f64[1] + a2.f64[1]) + v8 + a3.f64[1] - (a2.f64[1] + a2.f64[1]) + v8;
  v10 = a2.f64[1] - v8;
  v11 = a3.f64[0] * (-4.0 * (a2.f64[1] - v8)) + v9 * v9;
  if (v11 < 0.0)
  {
    goto LABEL_2;
  }

  v14 = sqrt(v11);
  if (v9 < 0.0)
  {
    v14 = -v14;
  }

  v15 = v14 + v9;
  v16 = v15 * -0.5;
  v17 = v15 * -0.5 / a3.f64[0];
  if (a3.f64[0] == 0.0)
  {
    v17 = -1.0;
  }

  v18 = v10 * -2.0 / v15;
  if (v16 == 0.0)
  {
    v18 = -1.0;
  }

  v19 = v18 >= v17 ? v17 : v18;
  v20 = v17 >= v18 ? v17 : v18;
  v21 = v19 >= 0.0001 ? v19 : v20;
  if (v21 < 0.0001 || v21 > 0.9999)
  {
LABEL_2:
    v12 = a2;
    v13 = v4;
  }

  else
  {
    if (v19 >= 0.0001)
    {
      v22 = v20;
    }

    else
    {
      v22 = 2.0;
    }

    v23 = vmlaq_n_f64(v7, vsubq_f64(a2, v7), v21);
    v24 = vmlaq_n_f64(a2, vsubq_f64(v4, a2), v21);
    v33 = a4;
    v25 = vmlaq_n_f64(v23, vsubq_f64(v24, v23), v21);
    v35 = vmlaq_n_f64(v4, vsubq_f64(a4, v4), v21);
    v34 = vmlaq_n_f64(v24, vsubq_f64(v35, v24), v21);
    v31 = vmlaq_n_f64(v25, vsubq_f64(v34, v25), v21);
    v32 = v21;
    RB::Path::Dilator::cubeto_monotonic_xy(a1, v23, v25, v31);
    if (1.0 - v22 >= 0.0001)
    {
      v27 = (v22 - v32) / (1.0 - v32);
      v28 = vmlaq_n_f64(v31, vsubq_f64(v34, v31), v27);
      v29 = vmlaq_n_f64(v34, vsubq_f64(v35, v34), v27);
      v30 = vmlaq_n_f64(v28, vsubq_f64(v29, v28), v27);
      v35 = vmlaq_n_f64(v35, vsubq_f64(v33, v35), v27);
      v34 = vmlaq_n_f64(v29, vsubq_f64(v35, v29), v27);
      RB::Path::Dilator::cubeto_monotonic_xy(v6, v28, v30, vmlaq_n_f64(v30, vsubq_f64(v34, v30), v27));
    }

    a1 = v6;
    a4 = v33;
    v12 = v34;
    v13 = v35;
  }

  *&result = RB::Path::Dilator::cubeto_monotonic_xy(a1, v12, v13, a4).n128_u64[0];
  return result;
}

double RB::Path::Dilator::cubeto(uint64_t a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = vsubq_f64(a4, v7).f64[0] + vsubq_f64(a2, a3).f64[0] * 3.0;
  v9 = a3.f64[0] - (a2.f64[0] + a2.f64[0]) + v7.f64[0] + a3.f64[0] - (a2.f64[0] + a2.f64[0]) + v7.f64[0];
  v10 = vsubq_f64(a2, v7);
  v11 = v8 * (-4.0 * v10.f64[0]) + v9 * v9;
  if (v11 < 0.0)
  {
    goto LABEL_2;
  }

  v14 = sqrt(v11);
  if (v9 < 0.0)
  {
    v14 = -v14;
  }

  v15 = v14 + v9;
  v16 = v15 * -0.5;
  v17 = v15 * -0.5 / v8;
  if (v8 == 0.0)
  {
    v17 = -1.0;
  }

  v18 = v10.f64[0] * -2.0 / v15;
  if (v16 == 0.0)
  {
    v18 = -1.0;
  }

  if (v18 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  if (v17 >= v18)
  {
    v18 = v17;
  }

  v20 = v19 >= 0.0001 ? v19 : v18;
  if (v20 < 0.0001 || v20 > 0.9999)
  {
LABEL_2:
    v12 = a2;
    v13 = a3;
  }

  else
  {
    if (v19 >= 0.0001)
    {
      v21 = v18;
    }

    else
    {
      v21 = 2.0;
    }

    v22 = vmlaq_n_f64(v7, v10, v20);
    v23 = vmlaq_n_f64(a2, vsubq_f64(a3, a2), v20);
    v32 = a4;
    v24 = vmlaq_n_f64(v22, vsubq_f64(v23, v22), v20);
    v34 = vmlaq_n_f64(a3, vsubq_f64(a4, a3), v20);
    v33 = vmlaq_n_f64(v23, vsubq_f64(v34, v23), v20);
    v30 = vmlaq_n_f64(v24, vsubq_f64(v33, v24), v20);
    v31 = v20;
    RB::Path::Dilator::cubeto_monotonic_x(a1, v22, v24, v30);
    if (1.0 - v21 >= 0.0001)
    {
      v26 = (v21 - v31) / (1.0 - v31);
      v27 = vmlaq_n_f64(v30, vsubq_f64(v33, v30), v26);
      v28 = vmlaq_n_f64(v33, vsubq_f64(v34, v33), v26);
      v29 = vmlaq_n_f64(v27, vsubq_f64(v28, v27), v26);
      v34 = vmlaq_n_f64(v34, vsubq_f64(v32, v34), v26);
      v33 = vmlaq_n_f64(v28, vsubq_f64(v34, v28), v26);
      RB::Path::Dilator::cubeto_monotonic_x(v6, v27, v29, vmlaq_n_f64(v29, vsubq_f64(v33, v29), v26));
    }

    a1 = v6;
    a4 = v32;
    v12 = v33;
    v13 = v34;
  }

  return RB::Path::Dilator::cubeto_monotonic_x(a1, v12, v13, a4);
}

void RB::CustomEffect::transform_border(float32x2_t *a1, float64x2_t *a2)
{
  v2 = *a1;
  v3 = vceqz_f32(*a1);
  if ((vpmin_u32(v3, v3).u32[0] & 0x80000000) == 0)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[1].f64[1];
    v8 = a2->f64[1];
    if (a2->f64[0] == v7 && v8 == 0.0 && v6.f64[0] == 0.0 || v7 == 0.0 && (v5.f64[0] == 0.0 ? (v9 = v8 == v6.f64[0]) : (v9 = 0), v9))
    {
      v10 = fabs(v5.f64[0]);
      v11 = fabs(v8);
      if (v8 == 0.0)
      {
        v12 = v10;
      }

      else
      {
        v12 = v11;
      }

      v13 = v12;
      v14 = vmul_n_f32(v2, v13);
    }

    else
    {
      v18[0] = *a2;
      v18[1] = v6;
      v19 = 0;
      v20 = 0;
      v15 = RB::operator*(v18, vneg_f32(v2), vadd_f32(v2, v2));
      v17 = vbsl_s8(vcltz_f32(v16), vadd_f32(v16, v15), v15);
      v14 = vmaxnm_f32(vneg_f32(v17), vadd_f32(v17, vabs_f32(v16)));
    }

    *a1 = v14;
  }
}

RB::CustomEffect *RB::CustomEffect::CustomEffect(RB::CustomEffect *this, RB::DisplayList::Layer **a2, atomic_uint *a3)
{
  v12[39] = *MEMORY[0x1E69E9840];
  v6 = RB::CustomShader::Closure::Closure(this, a2);
  *(v6 + 21) = 0;
  *(v6 + 22) = a2[22];
  *(v6 + 23) = a2[23];
  v7 = *(a2 + 12);
  v8 = *(a2 + 14);
  *(v6 + 13) = *(a2 + 13);
  *(v6 + 14) = v8;
  *(v6 + 12) = v7;
  *(v6 + 15) = *(a2 + 15);
  *(v6 + 64) = *(a2 + 64);
  if (a2[21])
  {
    RB::DisplayList::Builder::Builder(v12, a3);
    v9 = RB::DisplayList::Layer::copy(a2[21], v12, 0);
    v10 = *(this + 21);
    *(this + 21) = v9;
    if (v10)
    {
      (**v10)(v10);
    }

    RB::DisplayList::Builder::~Builder(v12);
  }

  return this;
}

void sub_195E25378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  RB::DisplayList::Builder::~Builder(&a9);
  v11 = *(v9 + 168);
  *(v9 + 168) = 0;
  if (v11)
  {
    (**v11)(v11);
  }

  RB::CustomShader::Closure::~Closure(v9);
  _Unwind_Resume(a1);
}

void RB::CustomEffect::apply_transform(RB::CustomEffect *this, float64x2_t *a2)
{
  *&v4 = RB::operator*(this + 12, a2 + 68);
  *(this + 12) = v4;
  *(this + 13) = v5;
  *(this + 14) = v6;
  if ((*(this + 256) & 0x20) == 0)
  {
    RB::CustomEffect::transform_border(this + 22, a2 + 68);
  }

  v7 = *(this + 21);
  if (v7)
  {
    if ((*(this + 256) & 0x20) == 0)
    {
      RB::CustomEffect::transform_border(this + 23, a2 + 68);
      v7 = *(this + 21);
    }

    RB::DisplayList::Layer::apply_transform(v7, a2);
  }
}

void RB::CustomEffect::render(RB::CustomEffect *this, RB::CGContext *a2)
{
  if (*this && *(*this + 36) == 1 && *(this + 18) == 1)
  {
    if (*(this + 17))
    {
      v4 = *(this + 17);
    }

    else
    {
      v4 = (this + 8);
    }

    v5 = RB::CustomShader::Value::float2_value(v4);

    RB::CGContext::apply_distance_filter(a2, 0x842u, 0.0, v5);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    if (*(this + 21))
    {
      v7 = 4;
    }

    else if ((*(this + 64) & 3) == 2)
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    v8 = *(a2 + 10);
    if (v8)
    {
      *&v9 = RB::operator*(v8, a2 + 2);
    }

    else
    {
      v9 = *(a2 + 2);
      v10 = *(a2 + 3);
      v11 = *(a2 + 4);
    }

    *v16 = v9;
    v17 = v10;
    v18 = v11;
    *&v12 = RB::operator*(this + 12, v16);
    *&v19.a = v12;
    *&v19.c = v13;
    *&v19.tx = v14;
    RB::CustomShader::Closure::make_cifilter(this, this + 30, &v19, v7, v16);
    if (v16[0])
    {
      RB::CGContext::apply_cifilter(a2, v16[0], &v19, 1);
      v15 = v16[0];
    }

    else
    {
      v15 = 0;
    }

    objc_autoreleasePoolPop(v6);
  }
}

void *RB::CustomEffect::prepare_encode(RB::CustomEffect *this, RB::Encoder *a2)
{
  RB::CustomShader::Closure::prepare_encode(this, a2);
  result = *(this + 21);
  if (result)
  {

    return RB::DisplayList::Layer::prepare_encode(result, a2, 0);
  }

  return result;
}

void *RB::CustomEffect::encode(RB::CustomEffect *this, RB::Encoder *a2)
{
  RB::ProtobufEncoder::encode_varint(a2, 0xAuLL);
  RB::ProtobufEncoder::begin_length_delimited(a2);
  RB::CustomShader::Closure::encode(this, a2);
  RB::ProtobufEncoder::end_length_delimited(a2);
  result = RB::ProtobufEncoder::float2_field(a2, 2, *(this + 22));
  v5 = vandq_s8(vandq_s8(vceqq_f64(*(this + 13), xmmword_195E42770), vceqq_f64(*(this + 12), xmmword_195E42760)), vceqzq_f64(*(this + 14)));
  if ((vandq_s8(vdupq_laneq_s64(v5, 1), v5).u64[0] & 0x8000000000000000) == 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x1AuLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::AffineTransform::encode(this + 24, a2);
    result = RB::ProtobufEncoder::end_length_delimited(a2);
  }

  v6 = *(this + 64);
  if ((v6 & 3) == 2)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x20uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
    v6 = *(this + 64);
  }

  if ((v6 & 4) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x28uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v7 = vmvn_s8(vceqz_f32(*(this + 248)));
  if ((vpmin_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    result = RB::ProtobufEncoder::float4_field(a2, 6, *(this + 15));
  }

  if ((*(this + 256) & 8) != 0)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x38uLL);
    result = RB::ProtobufEncoder::encode_varint(a2, 1uLL);
  }

  v8 = *(this + 21);
  if (v8)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x42uLL);
    RB::ProtobufEncoder::begin_length_delimited(a2);
    RB::DisplayList::Layer::encode(v8, a2, 0);
    RB::ProtobufEncoder::end_length_delimited(a2);
    result = RB::ProtobufEncoder::float2_field(a2, 9, *(this + 23));
  }

  v9 = *(this + 64);
  if ((v9 & 0x10) != 0)
  {
    v10 = 1;
  }

  else
  {
    v10 = (v9 >> 5) & 2;
  }

  if (v10)
  {
    RB::ProtobufEncoder::encode_varint(a2, 0x50uLL);

    return RB::ProtobufEncoder::encode_varint(a2, v10);
  }

  return result;
}

unint64_t RB::CustomEffect::decode(__n128 *this, size_t **a2)
{
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v6 = result;
    do
    {
      v7 = v6 >> 3;
      if ((v6 >> 3) > 5)
      {
        if (v7 <= 7)
        {
          if (v7 == 6)
          {
            this[15] = RB::ProtobufDecoder::float4_field(a2, v6);
            goto LABEL_42;
          }

          if (v7 != 7)
          {
LABEL_41:
            RB::ProtobufDecoder::skip_field(a2, v6);
            goto LABEL_42;
          }

          if (RB::ProtobufDecoder::BOOL_field(a2, v6))
          {
            v8 = 8;
          }

          else
          {
            v8 = 0;
          }

LABEL_26:
          v10 = this[16].n128_u32[0] | v8;
          goto LABEL_27;
        }

        if (v7 == 8)
        {
          v11 = *(a2 + 52) + 1;
          *(a2 + 52) = v11;
          v17 = 0;
          v18 = v11;
          v12 = RB::Heap::emplace<RB::DisplayList::Layer,unsigned int,int>(a2[8], &v18, &v17);
          v14 = v13;
          v15 = this[10].n128_u64[1];
          this[10].n128_u64[1] = v14;
          if (v15)
          {
            (**v15)(v15, v12);
          }

          if ((v6 & 7) != 2)
          {
LABEL_45:
            *(a2 + 56) = 1;
            *a2 = a2[1];
            goto LABEL_42;
          }

          v16 = this[10].n128_u64[1];
          RB::ProtobufDecoder::begin_message(a2);
          RB::DisplayList::Layer::decode(v16, a2, 0);
          goto LABEL_37;
        }

        if (v7 == 9)
        {
          this[11].n128_u64[1] = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
          goto LABEL_42;
        }

        if (v7 != 10)
        {
          goto LABEL_41;
        }

        v9 = RB::ProtobufDecoder::uint_field(a2, v6);
        if (v9 == 2)
        {
          v10 = this[16].n128_u32[0] | 0x40;
          goto LABEL_27;
        }

        if (v9 == 1)
        {
          v10 = this[16].n128_u32[0] | 0x10;
LABEL_27:
          this[16].n128_u32[0] = v10;
        }
      }

      else
      {
        if (v7 > 2)
        {
          if (v7 == 3)
          {
            if ((v6 & 7) != 2)
            {
              goto LABEL_45;
            }

            RB::ProtobufDecoder::begin_message(a2);
            RB::AffineTransform::decode(&this[12], a2);
            goto LABEL_37;
          }

          if (v7 == 4)
          {
            this[16].n128_u32[0] &= 0xFFFFFFFC;
            if (!RB::ProtobufDecoder::BOOL_field(a2, v6))
            {
              goto LABEL_42;
            }

            v10 = this[16].n128_u32[0] | 2;
            goto LABEL_27;
          }

          if (v7 != 5)
          {
            goto LABEL_41;
          }

          if (RB::ProtobufDecoder::BOOL_field(a2, v6))
          {
            v8 = 4;
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_26;
        }

        if (v7 == 1)
        {
          if ((v6 & 7) != 2)
          {
            goto LABEL_45;
          }

          RB::ProtobufDecoder::begin_message(a2);
          RB::CustomShader::Closure::decode(this, a2);
LABEL_37:
          RB::ProtobufDecoder::end_message(a2);
          goto LABEL_42;
        }

        if (v7 != 2)
        {
          goto LABEL_41;
        }

        this[11].n128_u64[0] = RB::ProtobufDecoder::float2_field(a2, v6, v5).n128_u64[0];
      }

LABEL_42:
      result = RB::ProtobufDecoder::next_field(a2);
      v6 = result;
    }

    while (result);
  }

  return result;
}

void RB::CustomEffect::print(RB::CustomEffect *this, RB::SexpString *a2, uint64_t a3)
{
  RB::SexpString::push(a2, "custom-filter");
  if ((*(this + 64) & 3) == 2)
  {
    v6 = "warp";
  }

  else
  {
    v6 = "layer";
  }

  RB::SexpString::printf(a2, 0, "#:type %s", v6);
  if (*this)
  {
    RB::SexpString::printf(a2, 0, "#:shader %s", [*(*this + 24) UTF8String]);
  }

  v7 = *(this + 64);
  if ((v7 & 4) != 0)
  {
    RB::SexpString::printf(a2, 0, "#:dither");
    v7 = *(this + 64);
  }

  if ((v7 & 8) != 0)
  {
    RB::SexpString::printf(a2, 0, "#:alpha-only");
  }

  v8 = *(this + 176);
  v9 = vmvn_s8(vceqz_f32(v8));
  if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0)
  {
    RB::SexpString::printf(a2, 0, "(border %g %g)", v8.f32[0], v8.f32[1]);
  }

  v10 = *(this + 248);
  v11 = vmvn_s8(vceqz_f32(v10));
  if ((vpmin_u32(v11, v11).u32[0] & 0x80000000) != 0)
  {
    RB::SexpString::printf(a2, 0, "(bounds %g %g %g %g)", COERCE_FLOAT(*(this + 30)), COERCE_FLOAT(HIDWORD(*(this + 30))), v10.f32[0], v10.f32[1]);
  }

  if ((a3 & 1) == 0)
  {
    v12 = *(this + 21);
    if (v12)
    {
      v13 = *(this + 184);
      v14 = vmvn_s8(vceqz_f32(v13));
      if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0)
      {
        RB::SexpString::printf(a2, 0, "(layer-border %g %g)", v13.f32[0], v13.f32[1]);
        v12 = *(this + 21);
      }

      RB::DisplayList::Layer::print(v12, a2, a3);
    }
  }

  RB::SexpString::pop(a2);
}

std::string *RB::XML::Value::Bool::to_string(uint64_t a1, std::string *this)
{
  if (*(a1 + 8) == 1)
  {
    return std::string::append(this, "true", 4uLL);
  }

  else
  {
    return std::string::append(this, "false", 5uLL);
  }
}

std::string *RB::XML::Value::Int::to_string(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf_l(__s, 0x80uLL, 0, "%ld", *(a1 + 8));
  v3 = strlen(__s);
  return std::string::append(a2, __s, v3);
}

std::string *RB::XML::Value::Float::to_string(uint64_t a1, std::string *a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 4) != 0)
  {
    snprintf_l(__s, 0x80uLL, 0, "%a");
  }

  else
  {
    snprintf_l(__s, 0x80uLL, 0, "%g");
  }

  v4 = strlen(__s);
  return std::string::append(a2, __s, v4);
}

std::string *RB::XML::Value::ConstantString::to_string(uint64_t a1, std::string *a2)
{
  v3 = *(a1 + 8);
  v4 = strlen(v3);

  return std::string::append(a2, v3, v4);
}

std::string *RB::XML::Value::StateID::to_string(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf_l(__s, 0x80uLL, 0, "#%ld", *(a1 + 8));
  v3 = strlen(__s);
  return std::string::append(a2, __s, v3);
}

std::string *RB::XML::Value::DisplayListID::to_string(uint64_t a1, std::string *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  snprintf_l(__s, 0x80uLL, 0, "@%ld", *(a1 + 8));
  v3 = strlen(__s);
  return std::string::append(a2, __s, v3);
}

std::string *RB::XML::Value::Angle::to_string(uint64_t a1, std::string *a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 4) != 0)
  {
    snprintf_l(__s, 0x80uLL, 0, "%a deg");
  }

  else
  {
    snprintf_l(__s, 0x80uLL, 0, "%g deg");
  }

  v4 = strlen(__s);
  return std::string::append(a2, __s, v4);
}

std::string *RB::XML::Value::Vec2::to_string(uint64_t a1, std::string *a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 4) != 0)
  {
    snprintf_l(__s, 0x80uLL, 0, "%a %a");
  }

  else
  {
    snprintf_l(__s, 0x80uLL, 0, "%g %g");
  }

  v4 = strlen(__s);
  return std::string::append(a2, __s, v4);
}

std::string *RB::XML::Value::Vec3::to_string(uint64_t a1, std::string *a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 4) != 0)
  {
    snprintf_l(__s, 0xC0uLL, 0, "%a %a %a");
  }

  else
  {
    snprintf_l(__s, 0xC0uLL, 0, "%g %g %g");
  }

  v4 = strlen(__s);
  return std::string::append(a2, __s, v4);
}

std::string *RB::XML::Value::Vec4::to_string(uint64_t a1, std::string *a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 4) != 0)
  {
    snprintf_l(__s, 0x100uLL, 0, "%a %a %a %a");
  }

  else
  {
    snprintf_l(__s, 0x100uLL, 0, "%g %g %g %g");
  }

  v4 = strlen(__s);
  return std::string::append(a2, __s, v4);
}

std::string *RB::XML::Value::AffineMatrix::to_string(uint64_t a1, std::string *a2, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if ((a3 & 4) != 0)
  {
    snprintf_l(__s, 0x100uLL, 0, "%a %a %a %a %a %a");
  }

  else
  {
    snprintf_l(__s, 0x100uLL, 0, "%g %g %g %g %g %g");
  }

  v4 = strlen(__s);
  return std::string::append(a2, __s, v4);
}

std::string *RB::XML::Value::Transform::to_string(uint64_t a1, std::string *a2, char a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 8);
  if (v5 == 1.0 && *(a1 + 16) == 0.0 && *(a1 + 24) == 0.0 && *(a1 + 32) == 1.0)
  {
    if ((a3 & 4) != 0)
    {
      snprintf_l(__s, 0x100uLL, 0, "translate(%a, %a)");
    }

    else
    {
      snprintf_l(__s, 0x100uLL, 0, "translate(%g, %g)");
    }

    goto LABEL_22;
  }

  if (*(a1 + 40) != 0.0 || *(a1 + 48) != 0.0)
  {
    goto LABEL_19;
  }

  v6 = *(a1 + 16);
  if (v6 == 0.0 && *(a1 + 24) == 0.0)
  {
    if (v5 == *(a1 + 32))
    {
      if ((a3 & 4) != 0)
      {
        snprintf_l(__s, 0x100uLL, 0, "scale(%a)");
      }

      else
      {
        snprintf_l(__s, 0x100uLL, 0, "scale(%g)");
      }
    }

    else if ((a3 & 4) != 0)
    {
      snprintf_l(__s, 0x100uLL, 0, "scale(%a, %a)");
    }

    else
    {
      snprintf_l(__s, 0x100uLL, 0, "scale(%g, %g)");
    }

    goto LABEL_22;
  }

  if (v5 == *(a1 + 32) && v6 == -*(a1 + 24) && (v7 = acos(*(a1 + 8)), vabdd_f64(asin(v6), v7) < 0.0001))
  {
    if ((a3 & 4) != 0)
    {
      snprintf_l(__s, 0x100uLL, 0, "rotate(%a)");
    }

    else
    {
      snprintf_l(__s, 0x100uLL, 0, "rotate(%g)");
    }
  }

  else
  {
LABEL_19:
    if ((a3 & 4) != 0)
    {
      snprintf_l(__s, 0x100uLL, 0, "matrix(%a, %a; %a, %a; %a, %a)");
    }

    else
    {
      snprintf_l(__s, 0x100uLL, 0, "matrix(%g, %g; %g, %g; %g, %g)");
    }
  }

LABEL_22:
  v8 = strlen(__s);
  return std::string::append(a2, __s, v8);
}

std::string *RB::XML::Value::BlendMode::to_string(uint64_t a1, std::string *this)
{
  v3 = *(a1 + 8);
  if (v3 <= 0x1B)
  {
    v4 = RB::XML::Value::BlendMode::to_string(std::string &,unsigned int)const::cg_names[v3];
LABEL_5:
    v6 = strlen(v4);
    v7 = this;
    v8 = v4;
    goto LABEL_7;
  }

  v5 = v3 - 1000;
  if (v5 <= 0x13)
  {
    v4 = RB::XML::Value::BlendMode::to_string(std::string &,unsigned int)const::custom_names[v5];
    goto LABEL_5;
  }

  v8 = "unknown";
  v7 = this;
  v6 = 7;
LABEL_7:

  return std::string::append(v7, v8, v6);
}

std::string *RB::XML::Value::AlphaBlendMode::to_string(std::string *result, std::string *a2)
{
  v3 = LODWORD(result->__r_.__value_.__r.__words[1]);
  if (v3 <= 3)
  {
    v5 = off_1E744DDB8[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

std::string *RB::XML::Value::ClipMode::to_string(std::string *result, std::string *a2)
{
  v3 = LODWORD(result->__r_.__value_.__r.__words[1]);
  if (v3 <= 1)
  {
    v5 = off_1E744DDD8[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

std::string *RB::XML::Value::InterpolationMode::to_string(std::string *result, std::string *a2)
{
  v3 = LODWORD(result->__r_.__value_.__r.__words[1]);
  if (v3 <= 0xC)
  {
    v5 = off_1E744DDE8[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

std::string *RB::XML::Value::LineCap::to_string(std::string *result, std::string *a2)
{
  v3 = result->__r_.__value_.__s.__data_[8];
  if (v3 <= 6)
  {
    v5 = off_1E744DE50[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

std::string *RB::XML::Value::LineJoin::to_string(std::string *result, std::string *a2)
{
  v3 = result->__r_.__value_.__s.__data_[8];
  if (v3 <= 2)
  {
    v5 = off_1E744DE88[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

RB::XML::Value::Color *RB::XML::Value::Color::Color(RB::XML::Value::Color *this, float16x4_t *a2)
{
  *this = &unk_1F0A38B50;
  *(this + 8) = vcvtq_f32_f16(*a2);
  *(this + 6) = rb_color_space(a2[1].i16[2]);
  return this;
}

std::string *RB::XML::Value::Color::to_string(uint64_t a1, std::string *a2, int a3)
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = a3 < 0;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 12);
  v9 = *(a1 + 20);
  if (v6)
  {
    v10 = -v8;
    if (v8 > 0.0)
    {
      v10 = *(a1 + 8);
    }

    v15 = *(a1 + 12);
    v16 = *(a1 + 16);
    if (v10 > 0.0031308)
    {
      powf(v10, 0.41667);
      v7 = v15;
    }

    v11 = -v7;
    if (v7 > 0.0)
    {
      v11 = v7;
    }

    if (v11 > 0.0031308)
    {
      powf(v11, 0.41667);
    }

    v12 = -v16;
    if (v16 > 0.0)
    {
      v12 = v16;
    }

    if (v12 > 0.0031308)
    {
      powf(v12, 0.41667);
    }
  }

  if (v9 == 1.0)
  {
    if ((v3 & 4) != 0)
    {
      snprintf_l(__s, 0x100uLL, 0, "rgb(%a, %a, %a)");
    }

    else
    {
      snprintf_l(__s, 0x100uLL, 0, "rgb(%g, %g, %g)");
    }
  }

  else if ((v3 & 4) != 0)
  {
    snprintf_l(__s, 0x100uLL, 0, "rgba(%a, %a, %a, %a)");
  }

  else
  {
    snprintf_l(__s, 0x100uLL, 0, "rgba(%g, %g, %g, %g)");
  }

  v13 = strlen(__s);
  return std::string::append(a2, __s, v13);
}

std::string *RB::XML::Value::ColorSpace::to_string(std::string *result, std::string *a2)
{
  v3 = LODWORD(result->__r_.__value_.__r.__words[1]);
  if (v3 <= 0x11)
  {
    v5 = off_1E744DEA0[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

std::string *RB::XML::Value::ColorMatrix::to_string(uint64_t a1, std::string *a2, char a3, int32x4_t a4, double a5, double a6, int32x4_t a7)
{
  a4.i32[0] = 0;
  v8 = 0;
  v26 = *MEMORY[0x1E69E9840];
  v9.i64[0] = 0x4200000042000000;
  v9.i64[1] = 0x4200000042000000;
  v10.i64[0] = 0x3D0000003D000000;
  v10.i64[1] = 0x3D0000003D000000;
  do
  {
    a7.i32[0] = a3 & 2;
    a7 = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(a7, a4), 0), *(a1 + 8 + v8), vmulq_f32(vrndaq_f32(vmulq_f32(*(a1 + 8 + v8), v9)), v10));
    *(&v14 + v8) = a7;
    v8 += 16;
  }

  while (v8 != 80);
  if ((a3 & 4) != 0)
  {
    snprintf_l(__s, 0x500uLL, 0, "%a %a %a %a %a; %a %a %a %a %a; %a %a %a %a %a; %a %a %a %a %a", v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  else
  {
    snprintf_l(__s, 0x500uLL, 0, "%g %g %g %g %g; %g %g %g %g %g; %g %g %g %g %g; %g %g %g %g %g", v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  }

  v11 = strlen(__s);
  return std::string::append(a2, __s, v11);
}

std::string *RB::XML::Value::ColorArray::to_string(std::string *result, std::string *this, int a3)
{
  if (result->__r_.__value_.__r.__words[2])
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(*(v5 + 8) + 8 * v6);
      v8 = *(v5 + 32);
      v9 = &unk_1F0A38B50;
      v10 = vcvtq_f32_f16(v7);
      v11 = v8;
      if (v6)
      {
        std::string::push_back(this, 32);
      }

      result = RB::XML::Value::Color::to_string(&v9, this, a3);
      ++v6;
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

std::string *RB::XML::Value::Image::to_string(uint64_t a1, std::string *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4)
  {
LABEL_2:
    RB::ImageDescription::ImageDescription(v11, v4, *(a1 + 16));
    if (v12)
    {
      v5 = ", 1";
    }

    else
    {
      v5 = "";
    }

    snprintf_l(__s, 0x40uLL, 0, "placeholder(%llu, %llu, %llu%s)", v11[0], v11[1], v11[2], v5);
    v6 = strlen(__s);
    return std::string::append(a2, __s, v6);
  }

  v8 = RBXMLRecorderExportCGImage(*(a1 + 16));
  if (!v8)
  {
    v4 = *(a1 + 8);
    goto LABEL_2;
  }

  v9 = [v8 UTF8String];
  v10 = strlen(v9);

  return std::string::append(a2, v9, v10);
}

void RB::XML::Value::Font::to_string(uint64_t a1, std::string *a2)
{
  v3 = CGFontCopyPostScriptName(*(a1 + 8));
  if (v3)
  {
    v4 = v3;
    std::string::append(a2, "name(", 5uLL);
    v5 = [v4 UTF8String];
    v6 = strlen(v5);
    std::string::append(a2, v5, v6);
    std::string::append(a2, ")", 1uLL);
  }

  else
  {
    v7 = CGFontCopyURL();
    if (!v7)
    {
      return;
    }

    v4 = v7;
    v8 = objc_autoreleasePoolPush();
    v9 = [objc_msgSend(v4 "path")];
    v10 = strlen(v9);
    std::string::append(a2, v9, v10);
    objc_autoreleasePoolPop(v8);
  }

  CFRelease(v4);
}

std::string *RB::XML::Value::IntArray::to_string(std::string *result, std::string *this)
{
  v7 = *MEMORY[0x1E69E9840];
  if (result->__r_.__value_.__r.__words[2])
  {
    v3 = result;
    v4 = 0;
    do
    {
      if (v4)
      {
        std::string::push_back(this, 32);
      }

      snprintf_l(__s, 0x40uLL, 0, "%ld", *(*(v3 + 8) + 8 * v4));
      v5 = strlen(__s);
      result = std::string::append(this, __s, v5);
      ++v4;
    }

    while (v4 < *(v3 + 16));
  }

  return result;
}

std::string *RB::XML::Value::FloatArray::to_string(std::string *result, std::string *this, char a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result->__r_.__value_.__r.__words[2])
  {
    v5 = result;
    v6 = 0;
    if ((a3 & 4) != 0)
    {
      v7 = "%a";
    }

    else
    {
      v7 = "%g";
    }

    do
    {
      if (v6)
      {
        std::string::push_back(this, 32);
      }

      v8 = *(*(v5 + 8) + 8 * v6);
      v9 = round(v8 * 32.0) * 0.03125;
      if ((a3 & 2) != 0)
      {
        v8 = v9;
      }

      snprintf_l(__s, 0x40uLL, 0, v7, *&v8);
      v10 = strlen(__s);
      result = std::string::append(this, __s, v10);
      ++v6;
    }

    while (v6 < *(v5 + 16));
  }

  return result;
}

void RB::XML::Value::GlyphArray::to_string(uint64_t a1, std::string *this)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v4 = 0;
    do
    {
      if (v4)
      {
        std::string::push_back(this, 32);
      }

      v5 = CGFontCopyGlyphNameForGlyph(*(a1 + 32), *(*(a1 + 40) + 2 * v4));
      if (v5)
      {
        std::string::push_back(this, 92);
        v6 = [(__CFString *)v5 UTF8String];
        v7 = strlen(v6);
        std::string::append(this, v6, v7);
        CFRelease(v5);
      }

      else
      {
        snprintf_l(__s, 0x40uLL, 0, "%d", *(*(a1 + 40) + 2 * v4));
        v8 = strlen(__s);
        std::string::append(this, __s, v8);
      }

      ++v4;
    }

    while (v4 < *(a1 + 48));
  }
}

uint64_t RB::XML::Value::Stroke::to_string(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v5 = a3;
  return [*(a1 + 8) applyFunction:RB::XML::Value::Stroke::to_string(std::string & info:{unsigned int)const::$_0::__invoke, &v4}];
}

std::string *RB::XML::Value::StrokeType::to_string(std::string *result, std::string *this)
{
  v2 = result->__r_.__value_.__r.__words[1];
  if (v2 == 1)
  {
    return std::string::append(this, "particles", 9uLL);
  }

  if (!v2)
  {
    return std::string::append(this, "lines", 5uLL);
  }

  return result;
}

RB::XML::Value::Gradient *RB::XML::Value::Gradient::Gradient(RB::XML::Value::Gradient *this, const RB::Fill::Gradient *a2)
{
  *(this + 1) = 0;
  v4 = this + 8;
  *this = &unk_1F0A38A10;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = *(a2 + 13);
  v5 = *a2;
  if (v5)
  {
    RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(this + 8, v5);
    if (*a2)
    {
      v7 = 0;
      v8 = 0;
      v9 = *(this + 2);
      do
      {
        v10 = *(a2 + 1);
        if (*(this + 3) < (v9 + 1))
        {
          RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow(v4, v9 + 1);
          v9 = *(this + 2);
        }

        *(*(this + 1) + 16 * v9) = *(v10 + v7);
        v9 = *(this + 2) + 1;
        *(this + 2) = v9;
        ++v8;
        v7 += 16;
      }

      while (v8 < *a2);
    }
  }

  return this;
}

void sub_195E275E0(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *RB::XML::Value::Gradient::to_string(std::string *result, std::string *this, int a3)
{
  v5 = result;
  v21 = *MEMORY[0x1E69E9840];
  if ((LODWORD(result[1].__r_.__value_.__r.__words[1]) >> 6) > 1u)
  {
    if (LODWORD(result[1].__r_.__value_.__r.__words[1]) >> 6 == 2)
    {
      v6 = "[non-linear] ";
    }

    else
    {
      v6 = "[perceptual] ";
    }

    v7 = this;
    v8 = 13;
  }

  else
  {
    if (!(LODWORD(result[1].__r_.__value_.__r.__words[1]) >> 6))
    {
      goto LABEL_9;
    }

    v6 = "[linear] ";
    v7 = this;
    v8 = 9;
  }

  result = std::string::append(v7, v6, v8);
LABEL_9:
  v9 = *(v5 + 16);
  if (v9)
  {
    v10 = 0;
    for (i = 24; ; i += 16)
    {
      if (v10)
      {
        std::string::push_back(this, 32);
      }

      v12 = *(v5 + 32);
      if ((v12 & 0x10000) != 0)
      {
        if ((v12 & 4) != 0)
        {
          snprintf_l(__s, 0x80uLL, 0, "%a: ");
        }

        else
        {
          snprintf_l(__s, 0x80uLL, 0, "%g: ");
        }

        v13 = strlen(__s);
        std::string::append(this, __s, v13);
      }

      v14 = *(*(v5 + 8) + i - 24);
      v17 = &unk_1F0A38B50;
      v18 = vcvtq_f32_f16(v14);
      v19 = rb_color_space(0);
      result = RB::XML::Value::Color::to_string(&v17, this, a3);
      if (++v10 >= *(v5 + 16))
      {
        goto LABEL_28;
      }

      v15 = *(v5 + 32);
      if ((v15 & 0xF00) == 0x200)
      {
        break;
      }

      if ((v15 & 0xF00) == 0x100)
      {
        if ((v15 & 4) != 0)
        {
          snprintf_l(__s, 0x80uLL, 0, " midpoint(%a)");
        }

        else
        {
          snprintf_l(__s, 0x80uLL, 0, " midpoint(%g)");
        }

LABEL_27:
        v16 = strlen(__s);
        result = std::string::append(this, __s, v16);
      }

LABEL_28:
      if (v9 == v10)
      {
        return result;
      }
    }

    if ((v15 & 4) != 0)
    {
      snprintf_l(__s, 0x80uLL, 0, " cubic-bezier(%a, %a, %a, %a)");
    }

    else
    {
      snprintf_l(__s, 0x80uLL, 0, " cubic-bezier(%g, %g, %g, %g)");
    }

    goto LABEL_27;
  }

  return result;
}

void RB::XML::Value::Shader::to_string(uint64_t a1, std::string *a2, int a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [(RBShader *)*(a1 + 8) rb_closure];
  if (*v5)
  {
    v6 = v5;
    v7 = [*(*v5 + 24) UTF8String];
    v8 = strlen(v7);
    std::string::append(a2, v7, v8);
    std::string::push_back(a2, 40);
    v9 = *(v6 + 144);
    if (*(v6 + 136))
    {
      v10 = *(v6 + 136);
    }

    else
    {
      v10 = (v6 + 8);
    }

    if (v9)
    {
      v36 = &v10[8 * v9];
      if ((a3 & 4) != 0)
      {
        v11 = "%a";
      }

      else
      {
        v11 = "%g";
      }

      v12 = 1;
      do
      {
        if ((v12 & 1) == 0)
        {
          std::string::append(a2, ", ", 2uLL);
        }

        if (*(v10 + 9))
        {
          std::string::push_back(a2, 42);
          if ((*(v10 + 9) & 2) != 0)
          {
            std::string::push_back(a2, 35);
          }
        }

        if (!*v10)
        {
          goto LABEL_64;
        }

        v13 = *(v10 + 6);
        if (*(v10 + 6) > 5u)
        {
          if (*(v10 + 6) > 7u)
          {
            if (v13 != 8)
            {
              if (v13 == 9)
              {
                v14 = RB::CustomShader::Value::data_ptr(v10);
                if (*v10)
                {
                  v15 = v14;
                  v16 = 0;
                  do
                  {
                    if (v16)
                    {
                      std::string::append(a2, "; ", 2uLL);
                    }

                    snprintf_l(__s, 0x40uLL, 0, "%d", *(v15 + v16));
                    v17 = strlen(__s);
                    std::string::append(a2, __s, v17);
                    ++v16;
                  }

                  while (v16 < *v10);
                }
              }

              goto LABEL_64;
            }

            std::string::append(a2, "mipmapped-image", 0xFuLL);
            goto LABEL_58;
          }

          if (v13 == 6)
          {
            std::string::append(a2, "bounds()", 8uLL);
          }

          else if (v13 == 7)
          {
            std::string::append(a2, "image", 5uLL);
LABEL_58:
            std::string::push_back(a2, 40);
            v33 = RB::CustomShader::Value::image(v10);
            if (v33)
            {
              v34 = *(v33 + 8);
              v35 = *v33;
              *__s = &unk_1F0A38B00;
              LODWORD(cf[0]) = v34;
              if (v35)
              {
                CFRetain(v35);
              }

              cf[1] = v35;
              RB::XML::Value::Image::to_string(__s, a2);
              *__s = &unk_1F0A38B00;
              if (cf[1])
              {
                CFRelease(cf[1]);
              }
            }

            std::string::push_back(a2, 41);
          }
        }

        else
        {
          if (*(v10 + 6) > 2u)
          {
            if ((v13 - 3) >= 2)
            {
              if (v13 == 5)
              {
                v28 = RB::CustomShader::Value::data_ptr(v10);
                if (*v10)
                {
                  v29 = v28;
                  v30 = 0;
                  do
                  {
                    if (v30)
                    {
                      std::string::push_back(a2, 32);
                    }

                    v31 = *(v10 + 7);
                    v32 = vcvt_f16_f32(*&v29[2 * v30]);
                    *__s = &unk_1F0A38B50;
                    *cf = vcvtq_f32_f16(v32);
                    v39 = rb_color_space(v31);
                    RB::XML::Value::Color::to_string(__s, a2, a3);
                    ++v30;
                  }

                  while (v30 < *v10);
                }
              }

              goto LABEL_64;
            }

            if (v13 == 3)
            {
              v13 = 3;
            }

            else
            {
              v13 = 4;
            }

            goto LABEL_37;
          }

          if (v13 == 1)
          {
            goto LABEL_37;
          }

          if (v13 == 2)
          {
            v13 = 2;
LABEL_37:
            v18 = RB::CustomShader::Value::data_ptr(v10);
            if (*v10)
            {
              v19 = v18;
              v20 = 0;
              v21 = 0;
              v22 = -v13;
              do
              {
                if (v20)
                {
                  std::string::append(a2, "; ", 2uLL);
                }

                v23 = 0;
                v24 = v19 + v21;
                do
                {
                  if (v23)
                  {
                    std::string::push_back(a2, 32);
                  }

                  v25 = *v24;
                  v26 = roundf(*v24 * 32.0) * 0.03125;
                  if ((a3 & 2) != 0)
                  {
                    v25 = v26;
                  }

                  snprintf_l(__s, 0x40uLL, 0, v11, v25);
                  v27 = strlen(__s);
                  std::string::append(a2, __s, v27);
                  --v23;
                  ++v24;
                }

                while (v22 != v23);
                ++v20;
                v21 -= v23;
              }

              while (v20 < *v10);
            }
          }
        }

LABEL_64:
        v12 = 0;
        v10 += 8;
      }

      while (v10 != v36);
    }

    std::string::push_back(a2, 41);
  }
}

void sub_195E27DA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

void RB::XML::Value::Image::~Image(RB::XML::Value::Image *this)
{
  *this = &unk_1F0A38B00;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F0A38B00;
  v1 = *(this + 2);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

std::string *RB::XML::Value::UUID::to_string(uint64_t a1, std::string *this, char a3)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a3)
  {

    return std::string::append(this, "redacted", 8uLL);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    uuid_unparse((a1 + 8), v6);
    v4 = strlen(v6);
    return std::string::append(this, v6, v4);
  }
}

std::string *RB::XML::Value::TransitionEffectType::to_string(std::string *result, std::string *a2)
{
  v3 = LODWORD(result->__r_.__value_.__r.__words[1]);
  if (v3 <= 0x18)
  {
    v5 = off_1E744DF30[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

std::string *RB::XML::Value::TransitionMethod::to_string(std::string *result, std::string *a2)
{
  v3 = LODWORD(result->__r_.__value_.__r.__words[1]);
  if (v3 <= 8)
  {
    v5 = off_1E744DFF8[v3];
    v6 = strlen(v5);

    return std::string::append(a2, v5, v6);
  }

  return result;
}

void RB::XML::Value::ColorArray::~ColorArray(RB::XML::Value::ColorArray *this)
{
  *this = &unk_1F0A3FA00;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }
}

{
  *this = &unk_1F0A3FA00;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::Path::~Path(RB::XML::Value::Path *this)
{
  *this = &unk_1F0A38C40;
  RBPathRelease(*(this + 1), *(this + 2));
}

{
  *this = &unk_1F0A38C40;
  RBPathRelease(*(this + 1), *(this + 2));

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::Font::~Font(RB::XML::Value::Font *this)
{
  *this = &unk_1F0A38C68;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F0A38C68;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::IntArray::~IntArray(RB::XML::Value::IntArray *this)
{
  *this = &unk_1F0A389E8;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }
}

{
  *this = &unk_1F0A389E8;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::Stroke::~Stroke(id *this)
{
  *this = &unk_1F0A38AB0;
}

{
  *this = &unk_1F0A38AB0;

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::Shader::~Shader(id *this)
{
  *this = &unk_1F0A38AD8;
}

{
  *this = &unk_1F0A38AD8;

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::FloatArray::~FloatArray(RB::XML::Value::FloatArray *this)
{
  *this = &unk_1F0A38E48;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }
}

{
  *this = &unk_1F0A38E48;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::Gradient::~Gradient(RB::XML::Value::Gradient *this)
{
  *this = &unk_1F0A38A10;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }
}

{
  *this = &unk_1F0A38A10;
  v1 = *(this + 1);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x19A8C09E0);
}

void RB::XML::Value::Stroke::to_string(std::string &,unsigned int)const::$_0::__invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v7 = 0;
    while (1)
    {
      v8 = *a4;
      if ((*(*a4 + 23) & 0x8000000000000000) != 0)
      {
        break;
      }

      if (*(*a4 + 23))
      {
        goto LABEL_5;
      }

LABEL_6:
      v9 = 109;
      v10 = 2;
      switch(*(a2 + v7))
      {
        case 0:
          goto LABEL_25;
        case 1:
          v9 = 108;
          v10 = 2;
          goto LABEL_25;
        case 2:
          v9 = 113;
          v10 = 4;
          goto LABEL_25;
        case 3:
          v9 = 99;
          v10 = 6;
          goto LABEL_25;
        case 4:
          v10 = 0;
          v9 = 104;
          break;
        case 5:
          v9 = 119;
          goto LABEL_24;
        case 6:
          v9 = 100;
          goto LABEL_24;
        case 7:
          v9 = 120;
          goto LABEL_24;
        case 8:
          v9 = 115;
          goto LABEL_24;
        case 9:
          v9 = 83;
          goto LABEL_24;
        case 0xA:
          v9 = 114;
          goto LABEL_24;
        case 0xB:
          v9 = 82;
          goto LABEL_24;
        case 0xC:
          v9 = 111;
          goto LABEL_24;
        case 0xD:
          v9 = 79;
          goto LABEL_24;
        case 0xE:
          v9 = 97;
          goto LABEL_24;
        case 0xF:
          v9 = 65;
LABEL_24:
          v10 = 1;
LABEL_25:
          for (i = 0; i != v10; ++i)
          {
            if (i)
            {
              std::string::push_back(*a4, 32);
            }

            if ((*(a4 + 8) & 4) != 0)
            {
              snprintf_l(__s, 0x40uLL, 0, "%a");
            }

            else
            {
              snprintf_l(__s, 0x40uLL, 0, "%g");
            }

            v12 = strlen(__s);
            std::string::append(*a4, __s, v12);
          }

          break;
        default:
          v10 = 0;
          v9 = 0;
          break;
      }

      std::string::push_back(*a4, 32);
      std::string::push_back(*a4, v9);
      a3 += 4 * v10;
      if (++v7 == a1)
      {
        return;
      }
    }

    if (!v8->__r_.__value_.__l.__size_)
    {
      goto LABEL_6;
    }

LABEL_5:
    std::string::push_back(v8, 32);
    goto LABEL_6;
  }
}

BOOL RB::RenderState::set_color_conversion(int *a1, unsigned __int8 a2, unsigned __int8 a3, uint64_t a4, float32x4_t a5)
{
  v7 = a2;
  if (a2 == a3)
  {
    v25 = 0;
  }

  else
  {
    a5.i64[0] = 0;
    RB::ColorSpace::Conversion::Conversion(v27, a2, a3, a5, 0.0);
    v9 = LOBYTE(v27[0]);
    if ((LOBYTE(v27[0]) & 7) == 2)
    {
      _S0 = v27[1];
      _S1 = v27[2];
      _S2 = v27[3];
      __asm { FCVT            H0, S0 }

      *a4 = LOWORD(_S0);
      __asm { FCVT            H0, S1 }

      *(a4 + 2) = LOWORD(_S0);
      __asm { FCVT            H0, S2 }

      *(a4 + 4) = LOWORD(_S0);
    }

    v17 = v9 & 0x3F;
    if ((v9 & 0x38) == 0x10)
    {
      _S0 = v27[4];
      _S1 = v27[5];
      _S2 = v27[6];
      __asm { FCVT            H0, S0 }

      *(a4 + 6) = LOWORD(_S0);
      __asm { FCVT            H0, S1 }

      *(a4 + 8) = LOWORD(_S0);
      __asm { FCVT            H0, S2 }

      *(a4 + 10) = LOWORD(_S0);
    }

    if (v9 < 0)
    {
      *&v21 = vcvt_f16_f32(v28);
      v22 = vcvt_f16_f32(v29);
      v23 = vcvt_f16_f32(v30);
      v24 = vext_s8(v22, *&v21, 2uLL).u32[0];
      WORD3(v21) = v22.i16[0];
      *(&v21 + 1) = __PAIR64__(v23.u32[0], v24);
      *(a4 + 12) = v21;
      *(a4 + 28) = v23.i16[2];
      v17 |= 0x40u;
    }

    v25 = v17 << 18;
  }

  result = v7 != a3;
  *a1 = *a1 & 0x3003F | v25;
  return result;
}

uint64_t RB::RenderState::disable_ignore_alpha_blend(uint64_t this)
{
  v1 = (*(this + 4) & 0x3F) - 48;
  if (v1 <= 2)
  {
    *(this + 4) = *(this + 4) & 0xFFFFFFC0 | dword_195E484C8[v1];
  }

  return this;
}

uint64_t RB::FormattedRenderState::ID::ID(uint64_t this, char *a2)
{
  *(this + 8) = 0;
  *this = 0;
  v2 = *a2;
  if (*a2)
  {
    v3 = 0;
    while (1)
    {
      v5 = *++a2;
      v4 = v5;
      v6 = v2 - 97;
      v7 = v2 - 65;
      if ((v7 & 0xF0) != 0)
      {
        v7 = 0;
      }

      if ((v6 & 0xF0) == 0)
      {
        v7 = v6;
      }

      if ((v4 - 48) > 9)
      {
        break;
      }

      v8 = 0;
      do
      {
        v9 = *++a2;
        v8 = 10 * v8 + (v4 - 48);
        LOBYTE(v4) = v9;
      }

      while ((v9 - 48) < 0xA);
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_18:
      v2 = *a2;
      if (!*a2)
      {
        return this;
      }
    }

    v8 = 1;
LABEL_13:
    if (v3 <= 0x18)
    {
      v10 = 24;
    }

    else
    {
      v10 = v3;
    }

    while (v10 != v3)
    {
      *(this + (v3 >> 1)) |= v7 << (4 * (v3 & 1));
      ++v3;
      if (!--v8)
      {
        goto LABEL_18;
      }
    }
  }

  return this;
}

void RB::FormattedRenderState::description(RB::FormattedRenderState *this@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_new();
  v5 = MEMORY[0x1E696AEC0];
  v16 = *this;
  v17 = *(this + 2);
  RB::FormattedRenderState::ID::formatted(&v16, v6, v18);
  [v4 setObject:objc_msgSend(v5 forKeyedSubscript:{"stringWithUTF8String:", v18), @"id"}];
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", RB::RenderState::name(this)), @"function"}];
  v8 = RB::pixel_format_name((*(this + 2) & 0x3FFLL), v7);
  if (v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(this + 2) & 0x3FF];
  }

  [v4 setObject:v9 forKeyedSubscript:@"color_format"];
  v10 = *(this + 1);
  if (v10 >= 0x40)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v10 >> 6), @"custom_id"}];
    v10 = *(this + 1);
  }

  if ((v10 & 0x3F) != 0)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AEC0] forKeyedSubscript:{"stringWithUTF8String:", RB::blend_name(v10 & 0x3F)), @"blend_mode"}];
  }

  v11 = *this;
  if (*this >> 6)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:"), @"coverage_state"}];
    v11 = *this;
  }

  if (v11 >= 0x40000)
  {
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", v11 >> 18), @"fill_state"}];
  }

  v12 = objc_opt_new();
  v13 = v12;
  v14 = *this;
  if ((*this & 0x10000) != 0)
  {
    [v12 addObject:@"has_clip_coverage"];
    v14 = *this;
  }

  if ((v14 & 0x20000) != 0)
  {
    [v13 addObject:@"layer_attachment"];
  }

  v15 = *(this + 2);
  if ((v15 & 0x1000) != 0)
  {
    [v13 addObject:@"has_coverage"];
    v15 = *(this + 2);
  }

  if ((v15 & 0x2000) != 0)
  {
    [v13 addObject:@"has_layer"];
    v15 = *(this + 2);
  }

  if ((v15 & 0x4000) != 0)
  {
    [v13 addObject:@"has_fb_read"];
    v15 = *(this + 2);
  }

  if ((v15 & 0x8000) != 0)
  {
    [v13 addObject:@"has_fn_table"];
    v15 = *(this + 2);
  }

  if ((v15 & 0x10000) != 0)
  {
    [v13 addObject:@"fill_alpha_only"];
    v15 = *(this + 2);
  }

  if ((v15 & 0x20000) != 0)
  {
    [v13 addObject:@"shape_alpha_only"];
    v15 = *(this + 2);
  }

  if ((v15 & 0x40000) != 0)
  {
    [v13 addObject:@"linear_color"];
    v15 = *(this + 2);
  }

  if ((v15 & 0x80000) != 0)
  {
    [v13 addObject:@"dest_alpha_only"];
  }

  if ([v13 count])
  {
    [v13 sortUsingSelector:sel_compare_];
    [v4 setObject:v13 forKeyedSubscript:@"flags"];
  }

  *a2 = v4;
}

void RB::SurfacePool::notifier_callback(os_unfair_lock_s *this, void *a2)
{
  v2 = a2;
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(this);
  v5 = *&this[8]._os_unfair_lock_opaque;
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = *&this[6]._os_unfair_lock_opaque;
  while (*(*v6 + 44) != v2)
  {
    ++v6;
    if (!--v5)
    {
      goto LABEL_7;
    }
  }

  if (!*(*v6 + 128))
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = CACurrentMediaTime();
      v9 = *v6;
      v10 = 134218240;
      v11 = v8;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_195CE8000, v7, OS_LOG_TYPE_INFO, "%f: notified about %p\n", &v10, 0x16u);
    }

    os_unfair_lock_unlock(this);
    RB::SurfacePool::collect(this, 0);
  }

  else
  {
LABEL_7:

    os_unfair_lock_unlock(this);
  }
}

uint64_t RB::vector<std::pair<RB::cf_ptr<_CAImageQueue *>,double>,2ul,unsigned long>::~vector(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = a1;
  }

  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      if (*v4)
      {
        CFRelease(*v4);
        v3 = *(a1 + 40);
      }

      v4 += 2;
    }

    v2 = *(a1 + 32);
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::vector<RB::refcounted_ptr<RB::Surface>,0ul,unsigned long>::~vector(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      v4 = v2[v3];
      if (v4 && atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_release) == 1)
      {
        [RBImageQueueContents .cxx_destruct];
      }

      ++v3;
    }

    while (v3 < *(a1 + 8));
    v2 = *a1;
  }

  if (v2)
  {
    free(v2);
  }

  return a1;
}

uint64_t RB::SurfacePool::alloc(os_unfair_lock_t lock, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned int a5, __CFString *a6, int a7, _CAImageQueue *a8, int32x2_t a9, float a10, int8x8_t a11)
{
  v63 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((a3 & 0x80000000) != 0)
    {
      if (RB::Device::valid_texture_size_nonnative(a2, a3, a9))
      {
        goto LABEL_4;
      }
    }

    else
    {
      v21 = (a2 + 336);
      v22 = vld1_dup_f32(v21);
      v23 = vand_s8(vcge_s32(v22, a9), vcgtz_s32(a9));
      if ((vpmin_u32(v23, v23).u32[0] & 0x80000000) != 0)
      {
        goto LABEL_4;
      }
    }

    return 0;
  }

LABEL_4:
  if (a8)
  {
    v24 = RB::allocating_pool();
    v25 = *v24;
    *v24 = lock;
    v26 = RB::SurfacePool::wait_image_queue(lock, a8);
    *v24 = v25;
    if (!v26)
    {
      return 0;
    }
  }

  v50 = a5;
  if (a2)
  {
    v27 = *(a2 + 12);
  }

  else
  {
    v27 = 0;
  }

  locka = lock;
  os_unfair_lock_lock(lock);
  v28 = *&lock[8]._os_unfair_lock_opaque;
  if (!v28)
  {
    goto LABEL_41;
  }

  v48 = 0;
  v46 = 0;
  v47 = a6;
  v49 = 0;
  v29 = 0;
  v30 = v28 - 1;
  while (1)
  {
    v31 = *&lock[6]._os_unfair_lock_opaque;
    v32 = *(v31 + 8 * v30);
    if (*(v32 + 128))
    {
      goto LABEL_27;
    }

    v33 = vceq_s32(*(v32 + 24), a9);
    if ((vpmin_u32(v33, v33).u32[0] & 0x80000000) != 0 && *(v32 + 32) == a3 && *(v32 + 160) == a4 && *(v32 + 40) == a7 && *(v32 + 16) == v27)
    {
      break;
    }

LABEL_20:
    if ((*(v32 + 163) & 1) == 0)
    {
      if (*(v32 + 164) == 1)
      {
        if (IOSurfaceIsInUse(*(v32 + 48)))
        {
          if (*(v32 + 164))
          {
            goto LABEL_27;
          }
        }

        else
        {
          *(v32 + 164) = 0;
        }
      }

      RB::SurfacePool::set_surface_volatile(lock, *(v31 + 8 * v30), 1u);
    }

LABEL_27:
    if (--v30 == -1)
    {
      if (!(v48 & 1 | ((v49 & 1) == 0)))
      {
        RB::SurfacePool::set_surface_volatile(lock, *(*&lock[6]._os_unfair_lock_opaque + 8 * v29), 0);
        v36 = v47;
        goto LABEL_43;
      }

      v29 = v46;
      v36 = v47;
      if (v48)
      {
        goto LABEL_43;
      }

LABEL_41:
      os_unfair_lock_unlock(lock);
      operator new();
    }
  }

  if (*(v32 + 164) != 1)
  {
    goto LABEL_30;
  }

  if (IOSurfaceIsInUse(*(v32 + 48)))
  {
    v34 = *(v32 + 164);
    v32 = *(v31 + 8 * v30);
    if ((v34 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  *(v32 + 164) = 0;
  v32 = *(v31 + 8 * v30);
LABEL_30:
  if (*(v32 + 163) == 1)
  {
    if ((v49 & 1) == 0)
    {
      v29 = v30;
    }

    v49 = 1;
    goto LABEL_27;
  }

  if (a8 && !RB::Surface::has_queue_id(v32, a8))
  {
    v35 = v46;
    if ((v48 & 1) == 0)
    {
      v35 = v30;
    }

    v46 = v35;
    v48 = 1;
    goto LABEL_27;
  }

  v29 = v30;
  v36 = v47;
LABEL_43:
  v37 = *&lock[6]._os_unfair_lock_opaque;
  RB::Surface::set_padding(*(v37 + 8 * v29), a11);
  RB::Surface::set_headroom(*(v37 + 8 * v29), a10);
  RB::Surface::set_usage(*(v37 + 8 * v29), v50, v36);
  v39 = CACurrentMediaTime();
  v40 = v39;
  if (a8)
  {
    v41 = a8;
  }

  else
  {
    v41 = 1;
  }

  *(*(v37 + 8 * v29) + 128) = v41;
  *(*(v37 + 8 * v29) + 144) = v39;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = *(v37 + 8 * v29);
    *buf = 134219008;
    v54 = v40;
    v55 = 2048;
    v56 = a8;
    v57 = 1024;
    v58 = a9.i32[0];
    v59 = 1024;
    v60 = a9.i32[1];
    v61 = 2048;
    v62 = v43;
    _os_log_impl(&dword_195CE8000, v42, OS_LOG_TYPE_INFO, "%f: alloc %p: [%d %d] -> %p\n", buf, 0x2Cu);
  }

  v44 = *(v37 + 8 * v29);
  atomic_fetch_add_explicit((v44 + 8), 1u, memory_order_relaxed);
  os_unfair_lock_unlock(locka);
  return v44;
}

void sub_195E297B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_unfair_lock_t lock, char a16)
{
  if (a16 == 1)
  {
    os_unfair_lock_unlock(lock);
  }

  _Unwind_Resume(exception_object);
}

BOOL RB::Surface::has_queue_id(os_unfair_lock_s *this, _CAImageQueue *a2)
{
  os_unfair_lock_lock(this + 3);
  v4 = &this[18];
  v5 = *&this[28]._os_unfair_lock_opaque;
  if (*&this[26]._os_unfair_lock_opaque)
  {
    v4 = *&this[26]._os_unfair_lock_opaque;
  }

  if (v5)
  {
    v6 = 16 * v5 - 16;
    do
    {
      v7 = *v4;
      v4 += 2;
      v8 = v7 == a2;
      v9 = v7 == a2 || v6 == 0;
      v6 -= 16;
    }

    while (!v9);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(this + 3);
  return v8;
}

void RB::Surface::set_usage(uint64_t a1, unsigned int a2, __CFString *a3)
{
  if (!os_variant_has_internal_diagnostics())
  {
    return;
  }

  if (*(a1 + 162) == a2)
  {
    v6 = *(a1 + 136);
    if (a3 && v6)
    {
      if (([(__CFString *)v6 isEqualToString:a3]& 1) != 0)
      {
        return;
      }
    }

    else if (v6 == a3)
    {
      return;
    }
  }

  *(a1 + 162) = a2;
  v7 = *(a1 + 136);
  if (v7 != a3)
  {

    *(a1 + 136) = a3;
  }

  if (a2 > 3)
  {
    v8 = 0;
    if (a3)
    {
LABEL_12:
      v9 = CFStringCreateWithFormat(0, 0, @"%@(%@)", v8, a3);
      v10 = *(a1 + 48);
      v11 = *MEMORY[0x1E696CF98];
      v12 = v9 == 0;
      if (v9)
      {
        a3 = v9;
      }

      else
      {
        a3 = 0;
      }

      if (v9)
      {
        v8 = v9;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v8 = *(&off_1E744E178 + a2);
    if (a3)
    {
      goto LABEL_12;
    }
  }

  v10 = *(a1 + 48);
  v11 = *MEMORY[0x1E696CF98];
  v12 = 1;
LABEL_20:
  IOSurfaceSetValue(v10, v11, v8);
  if (!v12)
  {

    CFRelease(a3);
  }
}

void sub_195E299F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void RB::SurfacePool::collect(RB::SurfacePool *this, char a2)
{
  v102 = *MEMORY[0x1E69E9840];
  v3 = CACurrentMediaTime();
  v99 = 0;
  v100 = 0;
  v101 = 8;
  os_unfair_lock_lock(this);
  v5 = *(this + 11);
  if (v5)
  {
    v6 = 0;
    v7 = INFINITY;
    do
    {
      v8 = *(this + 10);
      if (!v8)
      {
        v8 = this + 48;
      }

      v9 = &v8[16 * v6];
      v10 = *(v9 + 1);
      if (v3 >= v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = *v9;
          *buf = 134218240;
          v90 = v3;
          v91 = 2048;
          v92 = v12;
          _os_log_impl(&dword_195CE8000, v11, OS_LOG_TYPE_INFO, "%f: collect erasing %p\n", buf, 0x16u);
        }

        v13 = *v9;
        *v9 = 0;
        v14 = *(this + 10);
        v15 = *(this + 11);
        if (!v14)
        {
          v14 = this + 48;
        }

        v16 = &v14[16 * v15];
        *v9 = *(v16 - 2);
        *(v16 - 2) = 0;
        v17 = *(v9 + 1);
        *(v9 + 1) = *(v16 - 1);
        *(v16 - 1) = v17;
        v18 = v15 - 1;
        *(this + 11) = v15 - 1;
        v19 = *(this + 10);
        if (!v19)
        {
          v19 = this + 48;
        }

        v4 = *&v19[16 * v18];
        if (v4)
        {
          CFRelease(v4);
        }

        v20 = *(this + 4);
        if (v20)
        {
          v21 = *(this + 3);
          v22 = 8 * v20;
          do
          {
            v23 = *v21++;
            RB::Surface::remove_queue_id(v23, v13);
            v22 -= 8;
          }

          while (v22);
        }

        v24 = v100;
        v25 = v100 + 1;
        if (v101 < v100 + 1)
        {
          v4 = RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(__dst, v25);
          v24 = v100;
          v25 = v100 + 1;
        }

        v26 = v99;
        if (!v99)
        {
          v26 = __dst;
        }

        v26[v24] = 0;
        v100 = v25;
        v26[v25 - 1] = v13;
        v5 = *(this + 11);
      }

      else
      {
        if (v10 < v7)
        {
          v7 = *(v9 + 1);
        }

        ++v6;
      }
    }

    while (v6 < v5);
  }

  else
  {
    v7 = INFINITY;
  }

  os_unfair_lock_unlock(this);
  v27 = v99;
  if (v99)
  {
    v28 = v99;
  }

  else
  {
    v28 = __dst;
  }

  if (v100)
  {
    v29 = 8 * v100;
    do
    {
      CAImageQueueInvalidate();
      v28 += 8;
      v29 -= 8;
    }

    while (v29);
    v27 = v99;
    v30 = v100;
    v31 = v99 ? v99 : __dst;
    if (v100)
    {
      v32 = 0;
      do
      {
        v33 = v31[v32];
        if (v33)
        {
          CFRelease(v33);
          v30 = v100;
        }

        ++v32;
      }

      while (v32 < v30);
      v27 = v99;
    }
  }

  if (v27)
  {
    free(v27);
  }

  v99 = 0;
  v100 = 0;
  v101 = 8;
  os_unfair_lock_lock(this);
  v34 = *(this + 4);
  v35 = &qword_195E44FE0[4];
  if (v34)
  {
    v36 = *(this + 3);
    v37 = v36 + 8 * v34;
    do
    {
      v38 = *(*v36 + 128);
      if (v38 >= 2)
      {
        v39 = v99;
        if (!v99)
        {
          v39 = __dst;
        }

        if (v100)
        {
          v40 = 8 * v100;
          while (*v39 != v38)
          {
            ++v39;
            v40 -= 8;
            if (!v40)
            {
              goto LABEL_54;
            }
          }

          if (v3 - *(*v36 + 144) < 1.0 && v3 + 0.1 < v7)
          {
            v7 = v3 + 0.1;
          }
        }

        else
        {
LABEL_54:
          CFRetain(*(*v36 + 128));
          v41 = v100;
          v42 = v100 + 1;
          if (v101 < v100 + 1)
          {
            RB::vector<RBDevice *,8ul,unsigned long>::reserve_slow(__dst, v42);
            v41 = v100;
            v42 = v100 + 1;
          }

          v43 = v99;
          if (!v99)
          {
            v43 = __dst;
          }

          v43[v41] = v38;
          v100 = v42;
        }
      }

      v36 += 8;
    }

    while (v36 != v37);
  }

  os_unfair_lock_unlock(this);
  v44 = v99;
  if (v99)
  {
    v45 = v99;
  }

  else
  {
    v45 = __dst;
  }

  if (v100)
  {
    v46 = 8 * v100;
    do
    {
      LastUpdateHostTime = CAImageQueueGetLastUpdateHostTime();
      v48 = CACurrentMediaTime();
      if (v48 - RB::time_seconds(LastUpdateHostTime) > 1.0)
      {
        CAImageQueueConsumeUnconsumedInRange();
      }

      CAImageQueueCollect();
      v45 += 8;
      v46 -= 8;
    }

    while (v46);
    v44 = v99;
    v49 = v100;
    if (v99)
    {
      v50 = v99;
    }

    else
    {
      v50 = __dst;
    }

    if (v100)
    {
      v51 = 0;
      do
      {
        v52 = v50[v51];
        if (v52)
        {
          CFRelease(v52);
          v49 = v100;
        }

        ++v51;
      }

      while (v51 < v49);
      v44 = v99;
    }
  }

  if (v44)
  {
    free(v44);
  }

  os_unfair_lock_lock(this);
  v54 = *(this + 4);
  if (v54)
  {
    v55 = 0;
    v56 = *(this + 3);
    v57 = 8 * v54;
    do
    {
      v58 = *v56++;
      if (*(v58 + 128))
      {
        ++v55;
      }

      v57 -= 8;
    }

    while (v57);
    *(this + 9) = 0u;
    v59 = 0;
    v60 = (this + 152);
    v61 = 3 * v55;
    v62 = 6 * v55;
    while (1)
    {
      v63 = *(this + 3);
      v64 = *(v63 + 8 * v59);
      if (!*(v64 + 128))
      {
        if (a2)
        {
          goto LABEL_112;
        }

        v66 = v54 - v55;
        v67 = 0.0;
        if (v62 >= v66 && *v60 <= 0x4000000uLL)
        {
          if (v61 >= v66)
          {
            v67 = 10.0;
          }

          else
          {
            v67 = 0.2;
          }
        }

        if (*(v64 + 144) + v67 + 0.01 <= v3)
        {
LABEL_112:
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = *(v63 + 8 * v59);
            v71 = *(*&v70 + 144);
            *__dst = 134218496;
            v94 = v3;
            v95 = 2048;
            v96 = v70;
            v97 = 2048;
            v98 = v71;
            _os_log_impl(&dword_195CE8000, v69, OS_LOG_TYPE_INFO, "%f: collect destroy %p (%f)\n", __dst, 0x20u);
          }

          v72 = (*(this + 3) + 8 * v59);
          v53 = *v72;
          if (*v72 && atomic_fetch_add_explicit((v53 + 8), 0xFFFFFFFF, memory_order_release) == 1)
          {
            v53 = RB::SurfacePool::alloc();
          }

          v73 = *(this + 4) - 1;
          *(this + 4) = v73;
          v74 = v73 - v59;
          if (v74)
          {
            v53 = memmove(v72, v72 + 1, 8 * v74);
          }

          goto LABEL_95;
        }

        if (*(v64 + 164) != 1)
        {
          goto LABEL_120;
        }

        v53 = IOSurfaceIsInUse(*(v64 + 48));
        if (!v53)
        {
          *(v64 + 164) = 0;
          v64 = *(v63 + 8 * v59);
LABEL_120:
          if ((*(v64 + 163) & 1) == 0)
          {
            if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
            {
              v76 = *(v63 + 8 * v59);
              v77 = *(*&v76 + 144);
              *__dst = 134218496;
              v94 = v3;
              v95 = 2048;
              v96 = v76;
              v97 = 2048;
              v98 = v77;
              _os_log_impl(&dword_195CE8000, v75, OS_LOG_TYPE_INFO, "%f: collect volatile %p (%f)\n", __dst, 0x20u);
            }

            v53 = RB::Surface::set_volatile(*(v63 + 8 * v59), 1u);
            v64 = *(v63 + 8 * v59);
          }

          v78 = *(this + 4) - v55;
          v79 = 0.0;
          if (v62 >= v78 && *v60 <= 0x4000000uLL)
          {
            if (v61 >= v78)
            {
              v79 = 10.0;
            }

            else
            {
              v79 = 0.2;
            }
          }

          v80 = v79 + *(v64 + 144);
          if (v80 < v7)
          {
            v7 = v80;
          }

          goto LABEL_91;
        }

        v68 = *(v64 + 164);
        v64 = *(v63 + 8 * v59);
        if ((v68 & 1) == 0)
        {
          goto LABEL_120;
        }

        if (!*(this + 2) && v3 - *(v64 + 144) < 1.0 && v3 + 0.1 < v7)
        {
          v7 = v3 + 0.1;
        }
      }

LABEL_91:
      if (*(v64 + 163))
      {
        v65 = this + 152;
      }

      else
      {
        v65 = this + 144;
      }

      *v65 += *(v64 + 24) * HIDWORD(*(v64 + 24)) * *(v64 + 161);
      ++v59;
LABEL_95:
      v54 = *(this + 4);
      if (v59 >= v54)
      {
        v81 = *(this + 9);
        v35 = (qword_195E44FE0 + 32);
        goto LABEL_133;
      }
    }
  }

  v81 = 0uLL;
  *(this + 9) = 0u;
LABEL_133:
  *(this + 10) = vbslq_s8(vcgtq_u64(*(this + 10), v81), *(this + 10), v81);
  if (v7 < *(this + 16))
  {
    v82 = v7 - v3;
    if (v7 - v3 < v35[14])
    {
      v82 = v35[14];
    }

    v83 = dispatch_time(0, (v82 * 1000000000.0));
    v84 = *(this + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___ZN2RB11SurfacePool7collectEb_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = this;
    dispatch_after(v83, v84, block);
    *(this + 16) = v7;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *__dst = 134218240;
      v94 = v3;
      v95 = 2048;
      v96 = v7;
      _os_log_impl(&dword_195CE8000, v86, OS_LOG_TYPE_INFO, "%f: next collection %f\n", __dst, 0x16u);
    }
  }

  if (RB::verbose_mode(4))
  {
    RB::SurfacePool::print_locked(this, 0);
  }

  os_unfair_lock_unlock(this);
}