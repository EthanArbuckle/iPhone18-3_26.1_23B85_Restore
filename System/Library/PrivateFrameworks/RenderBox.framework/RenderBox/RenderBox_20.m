uint64_t RB::Symbol::Animator::set_priority_by_id(os_unfair_lock_s *this, int a2, float a3)
{
  os_unfair_lock_lock(this);
  v6 = *&this[6]._os_unfair_lock_opaque;
  if (!v6)
  {
    goto LABEL_22;
  }

  v7 = *&this[4]._os_unfair_lock_opaque;
  v8 = *&this[6]._os_unfair_lock_opaque;
  while (*v7 != a2)
  {
    v7 += 88;
    if (!--v8)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 8) == a3)
  {
    goto LABEL_22;
  }

  v9 = *&this[4]._os_unfair_lock_opaque;
  v10 = *&this[6]._os_unfair_lock_opaque;
  do
  {
    v11 = v10 >> 1;
    v12 = v9 + 88 * (v10 >> 1);
    v13 = *(v12 + 8);
    v14 = v12 + 88;
    v10 += ~(v10 >> 1);
    if (v13 < a3)
    {
      v9 = v14;
    }

    else
    {
      v10 = v11;
    }
  }

  while (v10);
  v15 = *&this[4]._os_unfair_lock_opaque + 88 * v6;
  if (v9 != v15)
  {
    while (*(v9 + 8) == a3)
    {
      v9 += 88;
      if (v9 == v15)
      {
        v9 = v15;
        break;
      }
    }
  }

  *(v7 + 8) = a3;
  if (v9 >= v7)
  {
    if (v9 > v7)
    {
      if (v7 + 88 != v9)
      {
        std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Animation *>(v7, (v7 + 88), v9);
      }

      goto LABEL_21;
    }

LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Animation *>(v9, v7, (v7 + 88));
LABEL_21:
  v16 = 1;
LABEL_23:
  os_unfair_lock_unlock(this);
  return v16;
}

__int128 *std::__rotate_forward[abi:nn200100]<std::_ClassicAlgPolicy,RB::Symbol::Animation *>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v4 = a2;
  std::swap[abi:nn200100]<RB::Symbol::Animation>(a1, a2);
  v6 = (a1 + 88);
  for (i = (v4 + 88); i != a3; i = (i + 88))
  {
    if (v6 == v4)
    {
      v4 = i;
    }

    std::swap[abi:nn200100]<RB::Symbol::Animation>(v6, i);
    v6 = (v6 + 88);
  }

  if (v6 != v4)
  {
    v8 = v6;
    v9 = v4;
    do
    {
      while (1)
      {
        std::swap[abi:nn200100]<RB::Symbol::Animation>(v8, v4);
        v8 = (v8 + 88);
        v4 = (v4 + 88);
        if (v4 == a3)
        {
          break;
        }

        if (v8 == v9)
        {
          v9 = v4;
        }
      }

      v4 = v9;
    }

    while (v8 != v9);
  }

  return v6;
}

void std::swap[abi:nn200100]<RB::Symbol::Animation>(__int128 *a1, __int128 *a2)
{
  v18 = *a1;
  v19 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v4 = a1[4];
  a1[4] = 0u;
  v5 = *(a1 + 10);
  *(a1 + 10) = 0;
  v6 = a2[3];
  v8 = *a2;
  v7 = a2[1];
  a1[2] = a2[2];
  a1[3] = v6;
  *a1 = v8;
  a1[1] = v7;
  *(a1 + 8) = *(a2 + 8);
  v10 = a2 + 72;
  v9 = *(a2 + 9);
  a2[4] = 0u;
  v13 = *(a1 + 9);
  v11 = a1 + 9;
  v12 = v13;
  v24 = v5;
  *v11 = v9;
  if (v13)
  {
    v17 = v4;
    std::default_delete<RB::Symbol::Animation::Timing>::operator()[abi:nn200100](v11, v12);
    v4 = v17;
  }

  v14 = *(a1 + 10);
  *(a1 + 10) = *(a2 + 10);
  *(a2 + 10) = v14;
  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  v15 = *(a2 + 9);
  v22 = *(a2 + 8);
  v23 = 0;
  a2[4] = v4;
  if (v15)
  {
    std::default_delete<RB::Symbol::Animation::Timing>::operator()[abi:nn200100](v10, v15);
    v14 = *(a2 + 10);
  }

  *(a2 + 10) = v5;
  v24 = v14;
  if (v14 && atomic_fetch_add_explicit((v14 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Symbol::Model::copy_on_write(v14);
  }

  v16 = v23;
  v23 = 0;
  if (v16)
  {
    std::default_delete<RB::Symbol::Animation::Timing>::operator()[abi:nn200100](&v23, v16);
  }
}

void RB::DisplayList::Layer::make_cgimage(uint64_t a1@<X0>, uint64_t a2@<X1>, float32x2_t *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, CGImageRef *a7@<X8>, double a8@<D2>, int32x2_t a9@<D3>)
{
  v115 = *MEMORY[0x1E69E9840];
  v16 = a3[1];
  v103 = *a3->f32;
  v15 = *&v103;
  RB::Bounds::Bounds(&v104, *&v103, v16, a8, a9);
  v17 = v104;
  v99[0] = v104;
  v102 = 0;
  v101[0] = 0;
  v101[1] = 0;
  if ((*(a1 + 76) & 0x1001) != 0)
  {
    Width = CGBitmapContextGetWidth(*a2);
    Height = CGBitmapContextGetHeight(*a2);
    v20 = *(a2 + 80);
    if (v20)
    {
      *v21.i64 = RB::operator*(v20, (a2 + 32));
    }

    else
    {
      v21 = *(a2 + 32);
      v22 = *(a2 + 48);
      v23 = *(a2 + 64);
    }

    v90 = v21;
    v93 = v23;
    v96 = v22;
    *c = v21;
    v108 = v22;
    v109[0] = v23;
    if (RB::AffineTransform::invert(c))
    {
      v26 = -1;
    }

    else
    {
      v26 = 0;
    }

    v27 = vdupq_n_s64(v26);
    *c = vbslq_s8(v27, *c, v90);
    v108 = vbslq_s8(v27, v108, v96);
    v109[0] = vbslq_s8(v27, v109[0], v93);
    v25.f32[1] = Height;
    v25.f32[0] = Width;
    v28 = RB::operator*(c, 0, v25);
    RB::Bounds::Bounds(cf, v28, v29, v30, v31);
    v17 = *cf;
    *v101 = *cf;
    v24 = v101;
  }

  else
  {
    v24 = 0;
  }

  if (!RB::DisplayList::Layer::compute_roi(a1, a4, &v104, v99, &v102, v24, v17))
  {
    goto LABEL_51;
  }

  v32.i32[0] = 0;
  v33 = vceq_s32(*&v104.n128_i8[8], 0x8000000080000000);
  v34 = vdup_lane_s32(vcgt_s32(v32, vpmin_u32(v33, v33)), 0);
  v35 = vneg_f32(0x80000000800000);
  v36 = vbsl_s8(v34, v35, vcvt_f32_s32(*&v104.n128_i8[8]));
  *a3 = vbsl_s8(v34, 0x100000001000000, vcvt_f32_s32(v104.n128_u64[0]));
  a3[1] = v36;
  v37 = *&v99[0].f64[0];
  v38 = vceq_s32(*&v99[0].f64[1], 0x8000000080000000);
  v39 = vdup_lane_s32(vcgt_s32(v32, vpmin_u32(v38, v38)), 0);
  v40 = vbsl_s8(v39, v35, vcvt_f32_s32(*&v99[0].f64[1]));
  v41 = vbsl_s8(v39, 0x100000001000000, vcvt_f32_s32(*&v99[0].f64[0]));
  *&v103 = v41;
  *(&v103 + 1) = v40;
  v97 = a4 & 3;
  if ((a4 & 3) != 0)
  {
    v42 = *(a1 + 64);
    if (v42 == 0.0)
    {
      v42 = 1.0;
    }

    v43 = v42;
    v44 = vrecpe_f32(LODWORD(v42));
    v45 = vmul_f32(vrecps_f32(LODWORD(v43), v44), v44);
    v45.i32[0] = vmul_f32(v45, vrecps_f32(LODWORD(v43), v45)).u32[0];
    v46 = COERCE_DOUBLE(vmul_n_f32(v41, v45.f32[0]));
    v47 = vmul_n_f32(v40, v45.f32[0]);
    *&v103 = v46;
    *(&v103 + 1) = v47;
    if (v97 == 2)
    {
      (*(*(a4 & 0xFFFFFFFFFFFFFFFCLL) + 40))(a4 & 0xFFFFFFFFFFFFFFFCLL, &v103);
    }

    else if (v97 == 1)
    {
      *&v103 = RB::operator*(a4 & 0xFFFFFFFFFFFFFFFCLL, v46, v47);
      *(&v103 + 1) = v48;
    }

    RB::Rect::intersect(&v103, v15, v16);
    v49 = 1.0;
    if (*(a1 + 64) != 0.0)
    {
      v49 = *(a1 + 64);
    }

    *&v103 = vmul_n_f32(*&v103, v49);
    *(&v103 + 1) = vmul_n_f32(*(&v103 + 8), v49);
    RB::Rect::Union(a3, *&v103, *(&v103 + 8));
  }

  if (a5)
  {
    v50 = 0x100000000;
    v51 = 2;
  }

  else
  {
    v52 = *(a1 + 32);
    if (v52)
    {
      v51 = 2;
      while ((*(*v52 + 40))(v52) != 6 || fabsf(vsub_f32(vdup_lane_s32(*v53, 1), *v53).f32[0]) < 64.0)
      {
        v52 = v52[1];
        if (!v52)
        {
          goto LABEL_28;
        }
      }

      v50 = 0x100000000;
    }

    else
    {
LABEL_28:
      v50 = 0;
      v51 = 0;
    }
  }

  v54 = (*(a1 + 76) & 4) != 0 ? 257 : ((*(a1 + 76) << 28) >> 31) & 0x11 | ((((*(a1 + 76) & 8u) >> 3) & 1) << 8);
  v55 = v54 >= 0x100 ? v54 : *(a2 + 8);
  RB::CGContext::begin_bitmap(a2, a3, v51 | v50, v55 | 0x100, v101, v37);
  if (!v101[0])
  {
LABEL_51:
    *a7 = 0;
    return;
  }

  cf[0] = 0;
  RB::CGContext::CGContext(c, v101[0], v55, *(a2 + 16));
  if ((*(a1 + 76) & 1) != 0 && *(a1 + 16) == a6)
  {
    Image = CGBitmapContextCreateImage(*a2);
    v91 = CGImageGetWidth(Image);
    v56 = CGImageGetHeight(Image);
    v57 = *(a1 + 64);
    if (v57 == 0.0)
    {
      v58 = 1.0;
    }

    else
    {
      v58 = 1.0 / v57;
    }

    v59 = v58;
    v60 = *(a2 + 64);
    v86 = vmulq_n_f64(*(a2 + 48), v59);
    v87 = vmulq_n_f64(*(a2 + 32), v59);
    v104 = v87;
    v105 = v86;
    v88 = v60;
    v106 = v60;
    if (RB::AffineTransform::invert(&v104))
    {
      v62 = -1;
    }

    else
    {
      v62 = 0;
    }

    v63 = vdupq_n_s64(v62);
    v99[0] = vbslq_s8(v63, v104, v87);
    v99[1] = vbslq_s8(v63, v105, v86);
    v99[2] = vbslq_s8(v63, v106, v88);
    v61.f32[1] = v56;
    v61.f32[0] = v91;
    v89 = RB::operator*(v99, 0, v61);
    v92 = v64;
    RB::Bounds::Bounds(&v104, v89, v64, v65, v66);
    if (v111 || !RB::Bounds::contains(v112, v104.n128_u64[0], *&v104.n128_i8[8]))
    {
      v67 = 0;
    }

    else
    {
      v67 = 1;
      if (!v110 && v113 == 1.0 && !v114)
      {
LABEL_54:
        v116.origin.x = v89.f32[0];
        v116.origin.y = v89.f32[1];
        v116.size.width = v92.f32[0];
        v116.size.height = v92.f32[1];
        CGContextDrawImage(c[0], v116, Image);
        if (Image)
        {
          CFRelease(Image);
        }

        goto LABEL_56;
      }
    }

    RB::CGContext::update_state_slow(c, 0, 0, 0, &v104, v67, 1.0);
    goto LABEL_54;
  }

LABEL_56:
  RB::DisplayList::Layer::render_items(a1, c, a6);
  if (!*(a1 + 32))
  {
    goto LABEL_67;
  }

  RB::Bounds::Bounds(&v104, *a3, a3[1], v68, v69);
  if (v111 || !RB::Bounds::contains(v112, v104.n128_u64[0], *&v104.n128_i8[8]))
  {
    v71 = 0;
LABEL_64:
    RB::CGContext::update_state_slow(c, 0, 0, 0, &v104, v71, 1.0);
    goto LABEL_65;
  }

  v71 = 1;
  if (v110)
  {
    goto LABEL_64;
  }

  v70.n128_f32[0] = v113;
  if (v113 != 1.0 || v114)
  {
    goto LABEL_64;
  }

LABEL_65:
  for (i = *(a1 + 32); i; i = i[1])
  {
    (*(*i + 112))(i, c, cf, v70);
  }

LABEL_67:
  v73 = *(a1 + 64);
  if (v73 == 0.0)
  {
    v73 = 1.0;
  }

  if (v73 != 1.0)
  {
    *&v68 = 1.0 / v73;
    v74 = vmul_n_f32(*a3, 1.0 / v73);
    v75 = vmul_n_f32(a3[1], 1.0 / v73);
    *a3 = v74;
    a3[1] = v75;
    v95 = *&v68;
    *&v103 = vmul_n_f32(*&v103, *&v68);
    *(&v103 + 1) = vmul_n_f32(*(&v103 + 8), *&v68);
    RB::CGContext::begin_bitmap(a2, a3, v51 | v50, v55 | 0x100, &v104, v69);
    v76 = cf[0];
    v77 = v104.n128_u64[0];
    cf[0] = v104.n128_u64[0];
    v104.n128_u64[0] = v76;
    if (v76)
    {
      CFRelease(v76);
      v77 = cf[0];
    }

    if (!v77)
    {
      goto LABEL_89;
    }

    RB::CGContext::apply_scale(c, v77, COERCE_DOUBLE(vdup_lane_s32(v95, 0)));
    RB::CGContext::reset(c, cf[0], v55, *(a2 + 16));
  }

  if ((a4 & 3) != 0)
  {
    RB::Bounds::Bounds(&v104, *a3, a3[1], v68, v69);
    if (v111 || !RB::Bounds::contains(v112, v104.n128_u64[0], *&v104.n128_i8[8]))
    {
      v79 = 0;
    }

    else
    {
      v79 = 1;
      if (!v110)
      {
        v78.n128_f32[0] = v113;
        if (v113 == 1.0 && !v114)
        {
LABEL_83:
          if (v97 == 1)
          {
            RB::CGContext::apply_projection_matrix(c, a3, (a4 & 0xFFFFFFFFFFFFFFFCLL));
          }

          else if (v97 == 2)
          {
            (*(*(a4 & 0xFFFFFFFFFFFFFFFCLL) + 128))(a4 & 0xFFFFFFFFFFFFFFFCLL, c, v78);
          }

          goto LABEL_87;
        }
      }
    }

    RB::CGContext::update_state_slow(c, 0, 0, 0, &v104, v79, 1.0);
    goto LABEL_83;
  }

LABEL_87:
  v80 = CGBitmapContextCreateImage(c[0]);
  v81 = RB::AffineTransform::scale2(v109);
  if (!v80)
  {
LABEL_89:
    *a7 = 0;
    goto LABEL_90;
  }

  v82 = *a3;
  v83.i32[0] = v103;
  v83.f32[1] = a3[1].f32[1] + COERCE_FLOAT(HIDWORD(*a3));
  v82.i32[1] = vadd_f32(*(&v103 + 8), *&v103).i32[1];
  v84 = vmul_f32(vsub_f32(v83, v82), v81);
  v85 = vmul_f32(*(&v103 + 8), v81);
  *a3->f32 = v103;
  v117.origin.x = v84.f32[0];
  v117.origin.y = v84.f32[1];
  v117.size.width = v85.f32[0];
  v117.size.height = v85.f32[1];
  *a7 = CGImageCreateWithImageInRect(v80, v117);
  CFRelease(v80);
LABEL_90:
  RB::CGContext::~CGContext(c);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  if (v101[0])
  {
    CFRelease(v101[0]);
  }
}

void sub_195E0FE7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, CFTypeRef cf, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, CFTypeRef a29, uint64_t a30, CFTypeRef a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  if (cf)
  {
    CFRelease(cf);
  }

  RB::CGContext::~CGContext(&a43);
  if (a29)
  {
    CFRelease(a29);
  }

  if (a31)
  {
    CFRelease(a31);
  }

  _Unwind_Resume(a1);
}

void RB::DisplayList::Layer::render(float32x2_t *a1, RB::CGContext *a2, uint64_t a3, char a4)
{
  v20 = a3;
  if (a1[4])
  {
    v8 = 0;
  }

  else
  {
    v8 = (a3 & 3) == 0;
  }

  if (v8 && (v9 = a1[9].i32[1], (v9 & 1) == 0) && RB::CGContext::compatible_layer_flags(a2, v9))
  {
    v18 = RB::DisplayList::Layer::bounds(a1);
    v19 = v10;
    RB::DisplayList::Layer::Effect::apply_to_bounds(&v20, &v18);
    if (a1[8].f32[0] == 0.0)
    {
      v13 = 1.0;
    }

    else
    {
      v13 = a1[8].f32[0];
    }

    RB::Bounds::Bounds(image, v18, v19, v11, v12);
    RB::CGContext::begin_layer(a2, v13, image[0], image[1]);
    RB::DisplayList::Layer::render_items(a1, a2, 0);
    RB::CGContext::end_layer(a2);
  }

  else
  {
    RB::CGContext::reset_ctm(a2);
    ClipBoundingBox = CGContextGetClipBoundingBox(*a2);
    y = ClipBoundingBox.origin.y;
    height = ClipBoundingBox.size.height;
    v18 = vcvt_f32_f64(ClipBoundingBox.origin);
    v19 = vcvt_f32_f64(ClipBoundingBox.size);
    RB::DisplayList::Layer::make_cgimage(a1, a2, &v18, a3, a4, 0, image, ClipBoundingBox.size.width, *&ClipBoundingBox.size.height);
    v16 = image[0];
    if (image[0])
    {
      v22.origin.x = v18.f32[0];
      v22.origin.y = v18.f32[1];
      v22.size.width = v19.f32[0];
      v22.size.height = v19.f32[1];
      CGContextDrawImage(*a2, v22, image[0]);
      CFRelease(v16);
    }
  }
}

void RB::DisplayList::DetachedLayerItem::render(RB::DisplayList::DetachedLayerItem *this, int32x2_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3);
  _H8 = *(this + 22);
  v6 = *(this + 23);
  v7 = RB::DisplayList::DetachedLayerItem::bounds(this);
  RB::Bounds::Bounds(v20, *&v7, v8, v9, v10);
  __asm { FCVT            S8, H8 }

  v15 = v6 & 0x3F;
  if (a2[11] != v4 || !RB::Bounds::contains(a2 + 12, *&v20[0], *(v20 + 8)))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, 0, v4, v15, v20, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (a2[10])
  {
    goto LABEL_10;
  }

  if (*&a2[17].i32[1] != _S8 || a2[18].i32[0] != v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  v18 = *(this + 7);
  if (v18 && (*(v18 + 424) & 1) != 0 || (v19 = vandq_s8(vandq_s8(vceqq_f64(*(*(this + 8) + 16), xmmword_195E42770), vceqq_f64(**(this + 8), xmmword_195E42760)), vceqzq_f64(*(*(this + 8) + 32))), (vandq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0] & 0x8000000000000000) == 0))
  {
    RB::DisplayList::Builder::Builder(v21);
    RB::DisplayList::Builder::set_optimized(v21, 1);
    RB::DisplayList::Builder::reset_contents(v21);
  }

  RB::DisplayList::Layer::render(*(this + 6), a2, *(this + 9), 0);
}

void sub_195E10290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  RB::DisplayList::CachedTransform::~CachedTransform(&a9);
  RB::DisplayList::Builder::~Builder(&STACK[0x590]);
  _Unwind_Resume(a1);
}

double RB::DisplayList::Clip::fill(RB::DisplayList::Clip *this, RB::CGContext *a2, const RB::Fill::Color *a3)
{
  RB::CGContext::save(a2);
  if (*(this + 45))
  {
    if (*(a2 + 148) != 1)
    {
      RB::CGContext::set_aliasing_mode_slow(a2, 1);
    }

    v14.origin.x = COERCE_FLOAT(*(this + 2));
    v14.origin.y = COERCE_FLOAT(HIDWORD(*(this + 2)));
    v14.size.width = COERCE_FLOAT(*(this + 3));
    v14.size.height = COERCE_FLOAT(HIDWORD(*(this + 3)));
    CGContextClipToRect(*a2, v14);
  }

  else
  {
    (*(*this + 88))(this, a2);
  }

  v8 = *(a2 + 125);
  v9 = *(a3 + 13);
  if (v8 != v9 || v8 == 0)
  {
    if (v8 == v9 || v8 == 0)
    {
      goto LABEL_19;
    }
  }

  else if (*(a2 + 124) == *(a3 + 12))
  {
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_25:
    RB::CGContext::set_fill_color_slow(a2, a3, v6, v7);
    goto LABEL_26;
  }

LABEL_19:
  v6.i16[0] = *(a2 + 56);
  v7.i16[0] = *a3;
  if (*v6.i16 != *a3)
  {
    goto LABEL_25;
  }

  v6.i16[0] = *(a2 + 57);
  v7.i16[0] = *(a3 + 1);
  if (*v6.i16 != *v7.i16)
  {
    goto LABEL_25;
  }

  v6.i16[0] = *(a2 + 58);
  v7.i16[0] = *(a3 + 2);
  if (*v6.i16 != *v7.i16)
  {
    goto LABEL_25;
  }

  v6.i16[0] = *(a2 + 59);
  v7.i16[0] = *(a3 + 3);
  if (*v6.i16 != *v7.i16)
  {
    goto LABEL_25;
  }

  v6.i16[0] = *(a2 + 60);
  v7.i16[0] = *(a3 + 4);
  if (*v6.i16 != *v7.i16)
  {
    goto LABEL_25;
  }

  v6.i16[0] = *(a2 + 61);
  v7.i16[0] = *(a3 + 5);
  if (*v6.i16 != *v7.i16)
  {
    goto LABEL_25;
  }

LABEL_26:
  v15.origin.x = COERCE_FLOAT(*(this + 2));
  v15.origin.y = COERCE_FLOAT(HIDWORD(*(this + 2)));
  v15.size.width = COERCE_FLOAT(*(this + 3));
  v15.size.height = COERCE_FLOAT(HIDWORD(*(this + 3)));
  CGContextFillRect(*a2, v15);

  *&result = RB::CGContext::restore(a2).n128_u64[0];
  return result;
}

void RB::DisplayList::LayerClip::clip(RB::DisplayList::LayerClip *this, CGContextRef *a2)
{
  RB::CGContext::reset_ctm(a2);
  ClipBoundingBox = CGContextGetClipBoundingBox(*a2);
  y = ClipBoundingBox.origin.y;
  height = ClipBoundingBox.size.height;
  v17 = vcvt_f32_f64(ClipBoundingBox.origin);
  v18 = vcvt_f32_f64(ClipBoundingBox.size);
  RB::Rect::intersect(&v17, *(this + 2), *(this + 24));
  v8 = vceqz_f32(v18);
  if ((vpmax_u32(v8, v8).u32[0] & 0x80000000) != 0)
  {
    CGContextClipToRect(*a2, *MEMORY[0x1E695F050]);
    return;
  }

  v9 = *(this + 6);
  v10 = *(v9 + 32);
  if (v10)
  {
    if (v10[1])
    {
      goto LABEL_14;
    }

    if ((*(*v10 + 40))(v10) != 1)
    {
      goto LABEL_14;
    }

    v12 = *(v11 + 1);
    if (!v12)
    {
      goto LABEL_14;
    }

    (*(*v12 + 8))(v12, v16, 0, *v11, 0.0);
    if (!RB::ColorMatrix::is_luminance_to_alpha(v16))
    {
      goto LABEL_14;
    }

    v9 = *(this + 6);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v9 + 76);
  if ((v14 & 1) == 0 && (*(this + 56) & 3) == 0 && RB::CGContext::compatible_layer_flags(a2, v14))
  {
    v16[0] = this;
    RB::CGContext::add_soft_mask(a2, v13, v16, RB::CGContext::add_soft_mask<RB::DisplayList::LayerClip::clip(RB::CGContext&)::$_0>(RB::CGContext::SoftMaskMode,RB::Rect,RB::DisplayList::LayerClip::clip(RB::CGContext&)::$_0 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke, v17, v18);
    return;
  }

LABEL_14:
  RB::DisplayList::Layer::make_cgimage(*(this + 6), a2, &v17, *(this + 7), 0, 0, v16, v6, v7);
  v15 = v16[0];
  if (v16[0])
  {
    RB::CGContext::add_alpha_mask(a2, v16[0], &v17);
    CFRelease(v15);
  }
}

void RB::DisplayList::ItemClip::clip(RB::DisplayList::ItemClip *this, CGContextRef *a2)
{
  RB::CGContext::reset_ctm(a2);
  ClipBoundingBox = CGContextGetClipBoundingBox(*a2);
  y = ClipBoundingBox.origin.y;
  height = ClipBoundingBox.size.height;
  v8 = vcvt_f32_f64(ClipBoundingBox.origin);
  v9 = vcvt_f32_f64(ClipBoundingBox.size);
  RB::Rect::intersect(&v8, *(this + 2), *(this + 24));
  v6 = vceqz_f32(v9);
  if ((vpmax_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    CGContextClipToRect(*a2, *MEMORY[0x1E695F050]);
  }

  else
  {
    v7 = this;
    RB::CGContext::add_soft_mask(a2, 0, &v7, RB::CGContext::add_soft_mask<RB::DisplayList::ItemClip::clip(RB::CGContext&)::$_0>(RB::CGContext::SoftMaskMode,RB::Rect,RB::DisplayList::ItemClip::clip(RB::CGContext&)::$_0 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke, v8, v9);
  }
}

void RB::DisplayList::BackdropColorMatrixItem::render(RB::DisplayList::BackdropColorMatrixItem *this, RB::CGContext *a2, double a3, double a4, double a5, int32x2_t a6)
{
  v53 = *MEMORY[0x1E69E9840];
  v8 = *(this + 3);
  _H8 = *(this + 22);
  v10 = *(this + 23);
  RB::Bounds::Bounds(c, 0xFEFFFFFFFEFFFFFFLL, 0x7F7FFFFF7F7FFFFFLL, a5, a6);
  __asm { FCVT            S8, H8 }

  v15 = v10 & 0x3F;
  if (*(a2 + 11) != v8 || !RB::Bounds::contains(a2 + 12, c[0], c[1]))
  {
    v16 = 0;
LABEL_10:
    RB::CGContext::update_state_slow(a2, 0, v8, v15, c, v16, _S8);
    goto LABEL_11;
  }

  v16 = 1;
  if (*(a2 + 10))
  {
    goto LABEL_10;
  }

  if (*(a2 + 35) != _S8 || *(a2 + 36) != v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  ClipBoundingBox = CGContextGetClipBoundingBox(*a2);
  y = ClipBoundingBox.origin.y;
  height = ClipBoundingBox.size.height;
  v48 = vcvt_f32_f64(ClipBoundingBox.origin);
  v49 = vcvt_f32_f64(ClipBoundingBox.size);
  v20 = RB::DisplayList::Item::styled_bounds(this, 0);
  RB::Rect::intersect(&v48, v20, v21);
  v22 = vceqz_f32(v49);
  if ((vpmax_u32(v22, v22).u32[0] & 0x80000000) == 0)
  {
    Image = CGBitmapContextCreateImage(*a2);
    v24 = Image;
    if (Image)
    {
      Width = CGImageGetWidth(Image);
      v26 = CGImageGetHeight(v24);
      v27 = *(a2 + 3);
      *c = *(a2 + 2);
      v51 = v27;
      v52 = *(a2 + 4);
      v28 = RB::AffineTransform::invert(c);
      v30 = (a2 + 32);
      if (v28)
      {
        v30 = c;
      }

      v31 = *v30;
      v32 = &v51;
      if (!v28)
      {
        v32 = (a2 + 48);
      }

      v33 = *v32;
      v34 = &v52;
      if (!v28)
      {
        v34 = (a2 + 64);
      }

      v35 = *v34;
      v47[0] = v31;
      v47[1] = v33;
      v47[2] = v35;
      v29.f32[1] = v26;
      v29.f32[0] = Width;
      v44 = RB::operator*(v47, 0, v29);
      v45 = v36;
      v37 = *(this + 6);
      if (v37 && *(v37 + 8))
      {
        v38 = RB::CGContext::color_format(a2);
        RB::CGContext::begin_bitmap(a2, &v48, v38 | 0x100000000, 0, &cf, v39);
        if (!cf)
        {
LABEL_27:
          v43 = v24;
LABEL_28:
          CFRelease(v43);
          return;
        }

        RB::CGContext::CGContext(c, cf, *(a2 + 8), *(a2 + 2));
        v55.origin.x = v44.f32[0];
        v55.origin.y = v44.f32[1];
        v55.size.width = v45.f32[0];
        v55.size.height = v45.f32[1];
        CGContextDrawImage(c[0], v55, v24);
        v40 = *(*(this + 6) + 8);
        v41 = *(a2 + 8);
        RB::CGContext::target_headroom(a2);
        (*(*v40 + 8))(v40, v47, v41 | 0x100, **(this + 6));
        RB::CGContext::apply_color_matrix(c, v47, (**(this + 6) >> 2) & 1);
        v42 = CGBitmapContextCreateImage(c[0]);
        CFRelease(v24);
        if (!v42)
        {
          RB::CGContext::~CGContext(c);
          v43 = cf;
          if (!cf)
          {
            return;
          }

          goto LABEL_28;
        }

        v44 = v48;
        v45 = v49;
        RB::CGContext::~CGContext(c);
        if (cf)
        {
          CFRelease(cf);
        }
      }

      else
      {
        v42 = v24;
      }

      v56.origin.x = v44.f32[0];
      v56.origin.y = v44.f32[1];
      v56.size.width = v45.f32[0];
      v56.size.height = v45.f32[1];
      v24 = v42;
      CGContextDrawImage(*a2, v56, v42);
      goto LABEL_27;
    }
  }
}

void sub_195E10A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef cf, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  RB::CGContext::~CGContext(&a23);
  if (cf)
  {
    CFRelease(cf);
  }

  CFRelease(v23);
  _Unwind_Resume(a1);
}

void RB::CGContext::add_soft_mask<RB::DisplayList::LayerClip::clip(RB::CGContext&)::$_0>(RB::CGContext::SoftMaskMode,RB::Rect,RB::DisplayList::LayerClip::clip(RB::CGContext&)::$_0 const&)::{lambda(RB::CGContext&,void const*)#1}::__invoke(RB::CGContext *a1, uint64_t *a2)
{
  v3 = *a2;
  v10 = RB::DisplayList::Layer::bounds(*(*a2 + 48));
  v11 = v4;
  RB::DisplayList::Layer::Effect::apply_to_bounds((v3 + 56), &v10);
  v7 = *(v3 + 48);
  if (*(v7 + 64) == 0.0)
  {
    v8 = 1.0;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  RB::Bounds::Bounds(v9, v10, v11, v5, v6);
  RB::CGContext::begin_layer(a1, v8, v9[0], v9[1]);
  RB::DisplayList::Layer::render_items(*(v3 + 48), a1, 0);
  RB::CGContext::end_layer(a1);
}

void RB::render_mesh_gradient(RB::RenderPass *a1, float64x2_t *a2, RB::Fill::MeshGradient *this, __int16 a4, int a5, char a6, int32x2_t *a7, float a8)
{
  v72 = *MEMORY[0x1E69E9840];
  if (*(a1 + 33) == 2)
  {
    v15 = 131092;
  }

  else
  {
    v15 = 20;
  }

  v66 = (v15 & 0xFFFF003F | ((a4 & 0x3FF) << 6));
  RB::Fill::MeshGradient::set_fill_state(this, &v66, a1, a8, 0);
  HIDWORD(v66) = HIDWORD(v66) & 0xFFFFFFC0 | a6 & 0x3F;
  if (a5)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  LODWORD(v66) = v66 & 0xFFFEFFFF | v16;
  v17 = a2[1];
  v63 = *a2;
  v64 = v17;
  v65 = a2[2];
  v18 = *(this + 2);
  if (v18)
  {
    v19.f64[0] = RB::operator*(v18, &v63);
    v63 = v19;
    v64 = v20;
    v65 = v21;
  }

  v62 = *a7->i8;
  RB::Bounds::intersect(&v62, *(a1 + 168), *(a1 + 176));
  v22 = *(a1 + 112);
  v22.i32[1] = vneg_f32(v22).i32[1];
  *&v59 = vmul_f32(v22, vcvt_f32_f64(v63));
  *(&v59 + 1) = vmul_f32(v22, vcvt_f32_f64(v64));
  __asm { FMOV            V2.2S, #-1.0 }

  *&v60[0] = vmla_f32(COERCE_FLOAT32X2_T(-_D2), vcvt_f32_f64(v65), v22);
  DWORD2(v60[0]) = *(a1 + 30);
  v70 = 0;
  v71 = 0x400000000;
  v28.i64[0] = LODWORD(a8) | 0x400000000;
  buffers = RB::Fill::MeshGradient::make_buffers(this, v69, v60 + 12, a1, &v63, a7, v28);
  if (v71)
  {
    v31 = buffers;
    v32 = RB::Fill::MeshGradient::primitive_type(this);
    if (v33)
    {
      if (v70)
      {
        v34 = v70;
      }

      else
      {
        v34 = v69;
      }

      if (v71)
      {
        v35 = v32;
        v36 = &v34[32 * v71];
        v37 = v31 - 1;
        do
        {
          HIDWORD(v60[0]) = v37;
          RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x34, 4uLL, 0, v58);
          v38 = v58[0];
          if (v58[0])
          {
            v39 = v58[1] + *(v58[0] + 7);
            v40 = v59;
            v41 = v60[0];
            v42 = v60[1];
            *(v39 + 12) = v61;
            *(v39 + 1) = v41;
            *(v39 + 2) = v42;
            *v39 = v40;
          }

          else
          {
            memset(v58, 0, 24);
          }

          *(a1 + 48) = RB::RenderFrame::buffer_id(*(*a1 + 16), v38);
          *(a1 + 196) = vmovn_s64(*&v58[1]);
          *(a1 + 51) = RB::RenderFrame::buffer_id(*(*a1 + 16), *v34);
          *(a1 + 26) = vmovn_s64(*(v34 + 8));
          *(a1 + 57) = RB::RenderFrame::buffer_id(*(*a1 + 16), *v34);
          *(a1 + 29) = vmovn_s64(*(v34 + 8));
          RB::RenderPass::draw_primitives(a1, v66, v35, 0, *(v34 + 7), 1uLL, *&v62, *(&v62 + 8));
          v34 += 32;
        }

        while (v34 != v36);
      }
    }

    else
    {
      v58[0] = &v59;
      v58[1] = v69;
      v58[2] = a1;
      v58[3] = &v62;
      if (*(a1 + 33) == 2)
      {
        v43 = 131099;
      }

      else
      {
        v43 = 27;
      }

      v67 = v43;
      RB::Fill::MeshGradient::set_fill_state(this, &v67, a1, a8, 1);
      *(a1 + 92) = 517;
      *(a1 + 47) = 0;
      RB::render_mesh_gradient(RB::RenderPass &,RB::AffineTransform const&,RB::Fill::MeshGradient const&,RB::Shader::AccumulatorCoverageState,BOOL,float,RB::BlendMode,RB::Bounds const&)::$_0::operator()(v58, &v67, 0);
      *(a1 + 92) = 262;
      *(a1 + 47) = 0;
      RB::render_mesh_gradient(RB::RenderPass &,RB::AffineTransform const&,RB::Fill::MeshGradient const&,RB::Shader::AccumulatorCoverageState,BOOL,float,RB::BlendMode,RB::Bounds const&)::$_0::operator()(v58, &v66, 1);
      *(a1 + 185) = 0;
      *(a1 + 30) = *(a1 + 30) + v31;
    }

    v30.i32[1] = 0;
    *(a1 + 204) = 0;
    *(a1 + 53) = 0;
    *(a1 + 228) = 0;
    *(a1 + 59) = 0;
  }

  v30.i32[0] = 0;
  v44 = vceq_s32(*(&v62 + 8), 0x8000000080000000);
  v45 = vdup_lane_s32(vcgt_s32(v30, vpmin_u32(v44, v44)), 0);
  RB::Coverage::set_plane(v58, a1, vbsl_s8(v45, 0x100000001000000, vcvt_f32_s32(*&v62)), COERCE_DOUBLE(vbsl_s8(v45, vneg_f32(0x80000000800000), vcvt_f32_s32(*(&v62 + 8)))));
  v57[0] = *(this + 28);
  *(v57 + 6) = *(this + 34);
  _H0 = HIWORD(v57[0]);
  __asm { FCVT            S0, H0 }

  _S0 = _S0 * a8;
  __asm { FCVT            H0, S0 }

  HIWORD(v57[0]) = LOWORD(_S0);
  v49.i32[0] = *(a1 + 31);
  RB::Fill::Color::prepare(v57, *(a1 + 128), v49, v50, v51);
  *(&v58[3] + 4) = v52;
  RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x24, 4uLL, 0, &v67);
  v53 = v67;
  if (v67)
  {
    v54 = *(v67 + 7) + v68.i64[0];
    v55 = *v58;
    v56 = *&v58[2];
    *(v54 + 32) = v58[4];
    *v54 = v55;
    *(v54 + 16) = v56;
  }

  else
  {
    v67 = 0;
    v68 = 0uLL;
  }

  *(a1 + 48) = RB::RenderFrame::buffer_id(*(*a1 + 16), v53);
  *(a1 + 196) = vmovn_s64(v68);
  LODWORD(v66) = v66 & 0x3FFC0 | 0x12;
  RB::RenderPass::draw_indexed_primitives(a1, v66, 4, **(*a1 + 16) + 136, 4uLL, 1uLL, *&v62, *(&v62 + 8));
  if (v70)
  {
    free(v70);
  }
}

void sub_195E10FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52)
{
  if (a52)
  {
    free(a52);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t *RB::render_mesh_gradient(RB::RenderPass &,RB::AffineTransform const&,RB::Fill::MeshGradient const&,RB::Shader::AccumulatorCoverageState,BOOL,float,RB::BlendMode,RB::Bounds const&)::$_0::operator()(int32x2_t *result, const char **a2, int a3)
{
  v3 = *(*&result[1] + 136);
  if (v3)
  {
    v6 = result;
    v7 = *(*result + 36) + 1;
    v8 = 32 * v3;
    do
    {
      v9 = v6[1];
      if (*(*&v9 + 128))
      {
        v10 = *(*&v9 + 128);
      }

      else
      {
        v10 = v6[1];
      }

      if (!a3 || *(*&v9 + 136) != 1)
      {
        v11 = *&v10 + v8;
        v12 = v6[2];
        v13 = *(*&v10 + v8 - 8);
        v14 = *(*&v10 + v8 - 4);
        v15 = *v6;
        *(*&v15 + 24) = *(*&v12 + 120) + v13;
        *(*&v15 + 28) = (v14 + v13) * v7 - 1;
        *(*&v15 + 40) = v13;
        RB::RenderFrame::alloc_buffer_region(*(**&v12 + 16), 0x34, 4uLL, 0, &v23);
        v16 = v23;
        if (v23)
        {
          v17 = *(v23 + 7) + v24.i64[0];
          v18 = **&v15;
          v19 = *(*&v15 + 16);
          v20 = *(*&v15 + 32);
          *(v17 + 48) = *(*&v15 + 48);
          *(v17 + 16) = v19;
          *(v17 + 32) = v20;
          *v17 = v18;
        }

        else
        {
          v23 = 0;
          v24 = 0uLL;
        }

        *(*&v12 + 192) = RB::RenderFrame::buffer_id(*(**&v12 + 16), v16);
        *(*&v12 + 196) = vmovn_s64(v24);
        v21 = v6[2];
        v21[25].i32[1] = RB::RenderFrame::buffer_id(*(*v21 + 16), *(v11 - 32));
        v21[26] = vmovn_s64(*(*&v10 + v8 - 24));
        v22 = v6[2];
        v22[28].i32[1] = RB::RenderFrame::buffer_id(*(*v22 + 16), *(v11 - 32));
        v22[29] = vmovn_s64(*(*&v10 + v8 - 24));
      }

      result = RB::RenderPass::draw_indexed_primitives(*&v6[2], *a2, 4, **(**&v6[2] + 16) + 136, 4uLL, (*(*&v10 + v8 - 4) * v7), *v6[3], *(*&v6[3] + 8));
      v8 -= 32;
    }

    while (v8);
  }

  return result;
}

uint64_t RB::should_emit_signposts(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5450, memory_order_acquire) & 1) == 0)
  {
    RB::should_emit_signposts();
  }

  if (dword_1ED6D5424 < 1)
  {
    return 0;
  }

  if (dword_1ED6D5424 != 1)
  {
    return 1;
  }

  return MEMORY[0x1EEE726C8](835321856);
}

uint64_t RB::should_emit_signposts(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v2 = RB::debug_int("RB_SIGNPOSTS", a2);
  LODWORD(result) = os_variant_has_internal_diagnostics();
  if ((v2 & 0x100000000) != 0)
  {
    return v2;
  }

  else
  {
    return result;
  }
}

uint64_t RB::signposts_log(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5460, memory_order_acquire) & 1) == 0)
  {
    RB::signposts_log();
  }

  if (RB::should_emit_signposts(this))
  {
    return qword_1ED6D5458;
  }

  else
  {
    return 0;
  }
}

const char *RB::parse_byte_size(RB *this, const char *a2, unint64_t a3, unint64_t a4)
{
  if (!this)
  {
    return a2;
  }

  v12 = 0;
  v8 = strtod(this, &v12);
  if (v12 == this)
  {
    return a2;
  }

  v9 = *v12 - 71;
  if (v9 <= 0x26)
  {
    if (((1 << v9) & 0x100000001) != 0)
    {
      v8 = v8 * 1024.0;
    }

    else
    {
      if (((1 << v9) & 0x1000000010) != 0)
      {
LABEL_10:
        v8 = v8 * 1024.0;
        goto LABEL_11;
      }

      if (((1 << v9) & 0x4000000040) == 0)
      {
        goto LABEL_11;
      }
    }

    v8 = v8 * 1024.0;
    goto LABEL_10;
  }

LABEL_11:
  v10 = v8;
  if (v8 >= a4)
  {
    v10 = a4;
  }

  if (v10 <= a3)
  {
    return a3;
  }

  else
  {
    return v10;
  }
}

const char *RB::blend_name(unsigned int a1)
{
  if (a1 > 0x35)
  {
    return "unknown";
  }

  else
  {
    return (&off_1E744D760)[a1];
  }
}

uint64_t RB::linear_srgb_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D54C0, memory_order_acquire) & 1) == 0)
  {
    RB::linear_srgb_colorspace();
  }

  return qword_1ED6D54B8;
}

uint64_t RB::extended_linear_srgb_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D54D0, memory_order_acquire) & 1) == 0)
  {
    RB::extended_linear_srgb_colorspace();
  }

  return qword_1ED6D54C8;
}

uint64_t RB::display_p3_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D54E0, memory_order_acquire) & 1) == 0)
  {
    RB::display_p3_colorspace();
  }

  return qword_1ED6D54D8;
}

uint64_t RB::extended_linear_display_p3_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5500, memory_order_acquire) & 1) == 0)
  {
    RB::extended_linear_display_p3_colorspace();
  }

  return qword_1ED6D54F8;
}

uint64_t RB::linear_display_p3_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5510, memory_order_acquire) & 1) == 0)
  {
    RB::linear_display_p3_colorspace();
  }

  return qword_1ED6D5508;
}

uint64_t RB::extended_gray_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5530, memory_order_acquire) & 1) == 0)
  {
    RB::extended_gray_colorspace();
  }

  return qword_1ED6D5528;
}

uint64_t RB::linear_gray_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5540, memory_order_acquire) & 1) == 0)
  {
    RB::linear_gray_colorspace();
  }

  return qword_1ED6D5538;
}

uint64_t RB::extended_linear_gray_colorspace(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5550, memory_order_acquire) & 1) == 0)
  {
    RB::extended_linear_gray_colorspace();
  }

  return qword_1ED6D5548;
}

RB *RB::cg_image_alpha_mask(RB *this, CGImage *a2)
{
  if (CGImageIsMask(this))
  {
    return this;
  }

  Property = CGImageGetProperty();
  if (!Property)
  {
    Width = CGImageGetWidth(this);
    Height = CGImageGetHeight(this);
    v6 = CGBitmapContextCreate(0, Width, Height, 8uLL, 0, 0, 7u);
    if (v6)
    {
      v7 = v6;
      v9.origin.x = 0.0;
      v9.origin.y = 0.0;
      v9.size.width = Width;
      v9.size.height = Height;
      CGContextClearRect(v6, v9);
      CGContextSetBlendMode(v7, kCGBlendModeCopy);
      v10.origin.x = 0.0;
      v10.origin.y = 0.0;
      v10.size.width = Width;
      v10.size.height = Height;
      CGContextDrawImage(v7, v10, this);
      Property = CGBitmapContextCreateImage(v7);
      if (Property)
      {
        CGImageSetProperty();
        CFRelease(Property);
      }

      CFRelease(v7);
    }

    else
    {
      return 0;
    }
  }

  return Property;
}

uint64_t RB::cg_image_create_placeholder(unsigned long,unsigned long,unsigned long,BOOL)::$_0::__invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 48))
  {
    v3 = malloc_type_malloc(*(a1 + 40), 0x100004077774924uLL);
    if (v3)
    {
      v18 = v3;
      v4 = 0;
      v19[0] = *a1;
      v19[1] = 33 * v19[0];
      v19[2] = 1089 * v19[0];
      do
      {
        v20[v4++] = (erand48(v19) * 255.0 + 0.5);
      }

      while (v4 != 6);
      v22 = v21;
      if (*(a1 + 24))
      {
        v5 = 127;
      }

      else
      {
        v5 = -1;
      }

      v6 = *(a1 + 8);
      v7 = *(a1 + 16);
      if (v6 <= v7)
      {
        v8 = *(a1 + 16);
      }

      else
      {
        v8 = *(a1 + 8);
      }

      v21 = -1;
      v23 = v5;
      v9 = 64;
      v10 = 6;
      while (v9 >= v8 >> 1)
      {
        v9 = 1 << --v10;
        if (v10 <= 2)
        {
          LOBYTE(v10) = 2;
          break;
        }
      }

      v11 = v18;
      if (v7)
      {
        for (i = 0; i < v7; i += v9)
        {
          if (v6)
          {
            v13 = 0;
            v14 = 0;
            v15 = (i >> v10) & 1;
            v16 = &v11[*(a1 + 32) * i];
            do
            {
              CGBlt_fillBytes();
              v14 += v9;
              v15 ^= 1uLL;
              v6 = *(a1 + 8);
              v16 += 4 * v9;
              v13 -= v9;
            }

            while (v14 < v6);
            v7 = *(a1 + 16);
            v11 = v18;
          }
        }
      }

      v17 = 0;
      atomic_compare_exchange_strong((a1 + 48), &v17, v11);
      if (v17)
      {
        free(v11);
      }
    }
  }

  return *(a1 + 48);
}

uint64_t RB::cg_image_create_placeholder(unsigned long,unsigned long,unsigned long,BOOL)::$_1::__invoke(uint64_t result)
{
  if (result)
  {
    free(*(result + 48));

    JUMPOUT(0x19A8C09E0);
  }

  return result;
}

void RB::cg_draw_9_slice_image(CGContextRef c, CGImageRef image, float32x4_t *a3, float32x2_t *a4, int a5, int a6)
{
  v83 = *MEMORY[0x1E69E9840];
  __asm { FMOV            V8.2S, #1.0 }

  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqzq_f32(*a3)))) & 1) == 0 && (v16 = a4[1], v17 = vceq_f32(v16, _D8), (vpmin_u32(v17, v17).u32[0] & 0x80000000) != 0))
  {
    v52 = COERCE_FLOAT(*a4);
    v53 = COERCE_FLOAT(HIDWORD(*a4));
    v54 = v16.f32[0];
    v55 = v16.f32[1];

    CGContextDrawImage(c, *&v52, image);
  }

  else
  {
    CGContextSaveGState(c);
    CGContextBeginTransparencyLayer(c, 0);
    CGContextSetBlendMode(c, kCGBlendModeCopy);
    CGContextSetShouldAntialias(c, 0);
    Width = CGImageGetWidth(image);
    Height = CGImageGetHeight(image);
    *&v23 = Height;
    v24.f32[0] = Width;
    v56 = v23;
    v81[0] = 0;
    v82 = Width;
    LODWORD(v23) = a3->i32[0];
    LODWORD(v28) = a3->i32[1];
    *&v81[1] = a3->f32[0] * Width;
    *&v81[2] = v82 - (*&v28 * v82);
    v25 = *a4;
    v26 = vadd_f32(a4[1], *a4);
    v27 = COERCE_FLOAT(*a4) + *&v23;
    *&v28 = v26.f32[0] - *&v28;
    if (v27 < COERCE_FLOAT(*a4))
    {
      LODWORD(v27) = *a4->f32;
    }

    if (v27 > v26.f32[0])
    {
      v27 = v26.f32[0];
    }

    v76 = *a4;
    v77 = v27;
    v58 = v25;
    if (*&v28 < v25.f32[0])
    {
      *&v28 = v25.f32[0];
    }

    if (*&v28 > v26.f32[0])
    {
      *&v28 = v26.f32[0];
    }

    v78 = *&v28;
    v79 = v26.i32[0];
    if (v27 > *&v28)
    {
      v77 = (*&v28 + v27) * 0.5;
      v78 = v77;
    }

    v80[0] = 0;
    v29 = v56;
    v80[3] = v56;
    v30 = a3->f32[2];
    v31 = a3->f32[3];
    *&v80[1] = v30 * *&v56;
    *&v80[2] = *&v29 - (v31 * *&v29);
    v72 = v58.i32[1];
    v32 = v58.f32[1];
    v75 = v26.i32[1];
    v26.f32[0] = v30 + v58.f32[1];
    v33 = v26.f32[1] - v31;
    if (v26.f32[0] < v58.f32[1])
    {
      v26.f32[0] = v58.f32[1];
    }

    if (v26.f32[0] > v26.f32[1])
    {
      v26.f32[0] = v26.f32[1];
    }

    if (v33 < v58.f32[1])
    {
      v33 = v58.f32[1];
    }

    if (v33 > v26.f32[1])
    {
      v33 = v26.f32[1];
    }

    v73 = v26.f32[0];
    v74 = v33;
    if (v26.f32[0] > v33)
    {
      v73 = (v33 + v26.f32[0]) * 0.5;
      v74 = v73;
    }

    v34 = 0;
    v24.f32[1] = Height;
    v59 = vdiv_f32(_D8, v24);
    v35 = 1.0;
    v36 = 0;
    do
    {
      LODWORD(v29) = 0;
      DWORD1(v29) = v36.i32[0];
      v37 = v34 + 1;
      v60 = *&v80[v34 + 1];
      LODWORD(v20) = 0;
      *(&v20 + 1) = v60 - v36.f32[0];
      if ((v60 - v36.f32[0]) <= 0.0)
      {
        *(&v20 + 1) = v35;
        *(&v29 + 1) = v36.f32[0] + -0.5;
      }

      v38 = *(&v72 + v37);
      if ((v38 - v32) > 0.0)
      {
        if (a6)
        {
          *(&v28 + 1) = *(&v56 + 1);
          *(&v29 + 1) = *&v56 - COERCE_FLOAT(vadd_f32(*&v29, *&v20).i32[1]);
        }

        v39 = 0;
        LODWORD(v40) = 0;
        *(&v40 + 1) = v32;
        LODWORD(v28) = 0;
        *(&v28 + 1) = v38 - v32;
        v41 = 0.0;
        v42 = v58.f32[0];
        do
        {
          *&v22 = v40;
          *&v21 = v42;
          *&v29 = v41;
          v43 = v39 + 1;
          v41 = *&v81[v39 + 1];
          v36.f32[0] = v41 - *&v29;
          *&v20 = v41 - *&v29;
          v36 = vdup_lane_s32(vcgt_f32(v36, 0), 0);
          v44.i32[1] = DWORD1(v29);
          *v44.i32 = *&v29 + -0.5;
          *&v29 = vbsl_s8(v36, *&v29, v44);
          *&v20 = vbsl_s8(v36, *&v20, __PAIR64__(DWORD1(v20), LODWORD(v35)));
          v40 = v22;
          *&v40 = v42;
          v42 = *(&v76 + v39 + 1);
          *&v19 = v42 - *&v40;
          if ((v42 - *&v40) > 0.0)
          {
            v61 = v40;
            v62 = v19;
            v63 = v29;
            v64 = v20;
            v65 = v28;
            if (a5 && ((v39 | v34) & 1) != 0)
            {
              v85.origin.x = *&v29;
              v85.origin.y = *(&v29 + 1);
              v85.size.width = *&v20;
              v85.size.height = *(&v20 + 1);
              v66 = v21;
              v71 = *(&v22 + 1);
              v45 = CGImageCreateWithImageInRect(image, v85);
              CGContextSaveGState(c);
              v86.origin.x = *&v66;
              v86.origin.y = v71;
              v86.size.width = *&v62;
              v86.size.height = *(&v65 + 1);
              CGContextClipToRect(c, v86);
              v46 = v71 + *(&v65 + 1);
              if (v71 < (v71 + *(&v65 + 1)))
              {
                v47 = v61;
                v48 = vmul_f32(*&v64, v59);
                v49 = v48.f32[0];
                v50 = v48.f32[1];
                v67 = v48;
                do
                {
                  v51 = v66;
                  LODWORD(v47) = v66;
                  if (*&v66 < v42)
                  {
                    do
                    {
                      v68 = v47;
                      v70 = v51;
                      v87.origin.x = *&v51;
                      v87.origin.y = *(&v47 + 1);
                      v87.size.width = v49;
                      v87.size.height = v50;
                      CGContextDrawImage(c, v87, v45);
                      v47 = v68;
                      v51 = v70;
                      v48 = v67;
                      *&v51 = *&v70 + v67.f32[0];
                      *&v47 = *&v70 + v67.f32[0];
                    }

                    while ((*&v70 + v67.f32[0]) < v42);
                  }

                  DWORD1(v47) = vadd_f32(*&v47, v48).i32[1];
                }

                while (*(&v47 + 1) < v46);
              }

              CGContextRestoreGState(c);
              CGImageRelease(v45);
              v35 = 1.0;
              v29 = v63;
              v20 = v64;
              v28 = v65;
              *&v40 = v61;
              v19 = v62;
            }

            else
            {
              CGContextDrawImageFromRect();
              v19 = v62;
              v29 = v63;
              v20 = v64;
              v28 = v65;
              v35 = 1.0;
              *&v40 = v61;
            }
          }

          LODWORD(v28) = v19;
          v39 = v43;
        }

        while (v43 != 3);
      }

      v32 = v38;
      v36.f32[0] = v60;
      ++v34;
    }

    while (v37 != 3);
    CGContextEndTransparencyLayer(c);

    CGContextRestoreGState(c);
  }
}

void RB::cg_font_create_with_name(const __CFString *this@<X0>, CGFontRef *a2@<X8>)
{
  v3 = this;
  if (CFStringHasPrefix(this, @".SFNS"))
  {
    Length = CFStringGetLength(@".SFNS");
    v12.length = CFStringGetLength(v3) - Length;
    v12.location = Length;
    v6 = CFStringCreateWithSubstring(0, v3, v12);
    v7 = CFStringCreateWithFormat(0, 0, @"%@%@", @".SFUI", v6);
    if (v6)
    {
      CFRelease(v6);
    }

    v3 = v7;
  }

  else
  {
    v7 = 0;
  }

  v8 = CTFontCreateWithNameAndOptions(v3, 0.0, 0, 0x20000uLL);
  if (v8)
  {
    v9 = v8;
    v10 = CTFontCopyGraphicsFont(v8, 0);
    CFRelease(v9);
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  if (v7)
  {

    CFRelease(v7);
  }
}

void *RB::cg_font_get_normalized_path_cache(RB *this, CGFont *a2)
{
  AssociatedObject = objc_getAssociatedObject(this, "com.apple.RenderBox.normalizedGlyphPaths");
  if (!AssociatedObject)
  {
    AssociatedObject = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x1E695E9E8]);
    objc_setAssociatedObject(this, "com.apple.RenderBox.normalizedGlyphPaths", AssociatedObject, 1);
    CFRelease(AssociatedObject);
  }

  return AssociatedObject;
}

vImage_Error RB::cg_mask_apply_transfer(vImage_Error this, CGContext *a2, CGFunction *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    this = CGFunctionIsIdentity();
    if ((this & 1) == 0)
    {
      for (i = 0; i != 256; ++i)
      {
        *&v5.data = i * 0.00392156863;
        v6 = 0;
        CGFunctionEvaluate();
        table[i] = 0;
      }

      v5.data = CGBitmapContextGetData(v3);
      v5.height = CGBitmapContextGetHeight(v3);
      v5.width = CGBitmapContextGetWidth(v3);
      v5.rowBytes = CGBitmapContextGetBytesPerRow(v3);
      return vImageTableLookUp_Planar8(&v5, &v5, table, 0);
    }
  }

  return this;
}

uint64_t RB::error_log(RB *this)
{
  if ((atomic_load_explicit(&qword_1ED6D5570, memory_order_acquire) & 1) == 0)
  {
    RB::error_log();
  }

  return qword_1ED6D5568;
}

void RB::non_fatal_precondition_failure(RB *this, const char *a2, ...)
{
  va_start(va, a2);
  v4[0] = 0;
  va_copy(&v4[1], va);
  v2 = vasprintf(v4, this, va);
  if (v4[0])
  {
    v3 = RB::error_log(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      RB::non_fatal_precondition_failure(v4, v3);
    }

    free(v4[0]);
  }
}

void RB::anonymous namespace::cg_path_create_copy_by_jittering_points(CGPath const*,double)::$_0::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2 <= 1)
  {
    if (!v4)
    {
      v43 = *(a2 + 8);
      v44 = *v43;
      v45 = v43[1];
      v46 = erand48((a1 + 64));
      v47 = *(a1 + 8);
      v48 = *(a1 + 16);
      v49 = v48 + v45 + v47 * erand48((a1 + 64));
      *&v50 = v48 + v44 + v47 * v46;
      *(&v50 + 1) = v49;
      v54 = v50;
      CGPathMoveToPoint(*a1, 0, *&v50, v49);
      v5 = v54;
      *(a1 + 48) = v54;
      goto LABEL_13;
    }

    if (v4 != 1)
    {
      return;
    }

    v6 = *(a2 + 8);
    v7 = *v6;
    v8 = v6[1];
    v9 = erand48((a1 + 64));
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v12 = v11 + v8 + v10 * erand48((a1 + 64));
    *&v13 = v11 + v7 + v10 * v9;
    *(&v13 + 1) = v12;
    v53 = v13;
    CGPathAddLineToPoint(*a1, 0, *&v13, v12);
  }

  else
  {
    switch(v4)
    {
      case 2:
        v14 = *(a2 + 8);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(a1 + 16) + v15 + *(a1 + 8) * erand48((a1 + 64));
        v18 = *(a1 + 16) + v16 + *(a1 + 8) * erand48((a1 + 64));
        v19 = *(a2 + 8);
        v20 = *(v19 + 16);
        v21 = *(v19 + 24);
        v22 = erand48((a1 + 64));
        v23 = *(a1 + 8);
        v24 = *(a1 + 16);
        v25 = v24 + v21 + v23 * erand48((a1 + 64));
        *&v26 = v24 + v20 + v23 * v22;
        *(&v26 + 1) = v25;
        v53 = v26;
        CGPathAddQuadCurveToPoint(*a1, 0, v17, v18, *&v26, v25);
        break;
      case 3:
        v27 = *(a2 + 8);
        v28 = *v27;
        v29 = v27[1];
        v30 = *(a1 + 16) + v28 + *(a1 + 8) * erand48((a1 + 64));
        v31 = *(a1 + 16) + v29 + *(a1 + 8) * erand48((a1 + 64));
        v32 = *(a2 + 8);
        v33 = *(v32 + 16);
        v34 = *(v32 + 24);
        v51 = *(a1 + 16) + v33 + *(a1 + 8) * erand48((a1 + 64));
        v52 = *(a1 + 16) + v34 + *(a1 + 8) * erand48((a1 + 64));
        *&v35 = v51;
        *(&v35 + 1) = v52;
        v53 = v35;
        v36 = *(a2 + 8);
        v37 = *(v36 + 32);
        v38 = *(v36 + 40);
        v39 = erand48((a1 + 64));
        v40 = *(a1 + 8);
        v41 = *(a1 + 16);
        v42 = erand48((a1 + 64));
        CGPathAddCurveToPoint(*a1, 0, v30, v31, v51, v52, v41 + v37 + v40 * v39, *(a1 + 16) + v38 + *(a1 + 8) * v42);
        break;
      case 4:
        CGPathCloseSubpath(*a1);
        v5 = *(a1 + 48);
        goto LABEL_13;
      default:
        return;
    }
  }

  v5 = v53;
LABEL_13:
  *(a1 + 32) = v5;
}

uint64_t RB::ImageTexture::decode(uint64_t result, __n128 *this, __n128 *a3)
{
  v4 = result;
  v5 = a3[1].n128_u64[0];
  if (v5)
  {
    v7 = *this;
    *this = *a3;
    result = RB::Decoder::image_field(this, v5);
    if (v6)
    {
      *(v4 + 8) = result;
      *v4 = v6;
      result = RB::ImageTexture::update_image(v4, v6);
    }

    *this = v7;
  }

  if (!*v4)
  {
    this[3].n128_u8[8] = 1;
    this->n128_u64[0] = this->n128_u64[1];
  }

  return result;
}

void RB::ImageTexture::attributes(CFTypeRef *this, RB::XML::Element *a2)
{
  if (*this)
  {
    CFRetain(*this);
  }

  RB::XML::Element::set<RB::XML::Value::Image>();
}

void sub_195E126D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

RB::ImageDescription *RB::ImageDescription::ImageDescription(RB::ImageDescription *this, const void *a2, RB *a3)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 24) = 0;
  *(this + 2) = 0;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      *this = a3;
      [(RB *)a3 size];
      *(this + 1) = v10;
      [(RB *)a3 size];
      *(this + 2) = v11;
      return this;
    }

    if (a2 == 4)
    {
      *this = RB::pointer_hash(a3, a2);
      *(this + 1) = [(RB *)a3 width];
      *(this + 2) = [(RB *)a3 height];
      v7 = [(RB *)a3 pixelFormat];
      v6 = RB::pixel_format_traits(v7, v8)[1] & 1;
      goto LABEL_9;
    }
  }

  else
  {
    if (!a2)
    {
      *this = CGImageGetIdentifier();
      *(this + 1) = CGImageGetWidth(a3);
      *(this + 2) = CGImageGetHeight(a3);
      *(this + 24) = RB::cg_image_has_alpha(a3, v9);
      return this;
    }

    if (a2 == 1)
    {
      *this = IOSurfaceGetID(a3);
      *(this + 1) = IOSurfaceGetWidth(a3);
      *(this + 2) = IOSurfaceGetHeight(a3);
      PixelFormat = IOSurfaceGetPixelFormat(a3);
      if (PixelFormat)
      {
        v15 = 0;
        v13 = 0;
        RB::pixel_format_from_four_cc(PixelFormat, MTLPixelFormatInvalid, &v15, &v14, &v13);
        v6 = v15 ^ 1;
LABEL_9:
        *(this + 24) = v6;
      }
    }
  }

  return this;
}

CGImageRef RBImageCopyCGImage(char a1, CGImageRef image)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return CGImageRetain(image);
  }
}

uint64_t RB::Stroke::Dasher::prepare_pattern(uint64_t this, char *a2, float *a3)
{
  if (this)
  {
    RB::Stroke::Dasher::prepare_pattern(this, a2);
  }

  if (this)
  {
    v3 = 0.0;
    do
    {
      v4 = fabsf(*a2);
      if ((*a2 & 0x7FFFFFFFu) >= 0x7F800000)
      {
        v5 = 0.0;
      }

      else
      {
        v5 = v4;
      }

      *a2 = v5;
      a2 += 4;
      v3 = v5 + v3;
      --this;
    }

    while (this);
    return v3 > 0.00000011921;
  }

  return this;
}

BOOL RB::Stroke::Dasher::validate_pattern(RB::Stroke::Dasher *this, int *a2, float *a3)
{
  if (this)
  {
    return 0;
  }

  if (!this)
  {
    return 1;
  }

  v3 = this - 1;
  do
  {
    v5 = *a2++;
    v4 = v5;
    v6 = v5 & 0x7FFFFFFF;
    v7 = (v5 & 0x7FFFFFFF) == 0;
    if ((v5 - 1) < 0x7FFFFF)
    {
      v7 = 1;
    }

    result = (v6 - 0x800000) >> 24 < 0x7F && v4 >= 0 || v7;
  }

  while (result && v3-- != 0);
  return result;
}

uint64_t RB::Stroke::Dasher::Dasher(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, float a5, float32x2_t a6, float32x2_t a7)
{
  *a1 = &unk_1F0A384D8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = a4;
  *(a1 + 32) = 0;
  *(a1 + 40) = *&a6;
  *(a1 + 48) = vadd_f32(a7, a6);
  *(a1 + 80) = 0;
  *(a1 + 112) = 0x3F80000000000000;
  *(a1 + 152) = 0x3F80000000000000;
  v10 = 0.0;
  if (a3)
  {
    v11 = a4;
    v12 = a3;
    do
    {
      v13 = *v11++;
      v10 = v10 + v13;
      *(a1 + 32) = v10;
      --v12;
    }

    while (v12);
  }

  v14 = fmodf(a5, v10);
  if ((LODWORD(v14) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v14 = 0.0;
  }

  while (v14 < 0.0)
  {
    v14 = v14 + v10;
  }

  *(a1 + 88) = 0;
  *(a1 + 81) = 1;
  v15 = *a4;
  if (v14 >= *a4)
  {
    v16 = 0;
    v17 = 1;
    do
    {
      if (v14 == 0.0 && v15 == 0.0)
      {
        break;
      }

      v14 = v14 - v15;
      v17 ^= 1u;
      *(a1 + 81) = v17 & 1;
      if (v16 < a3 - 1)
      {
        ++v16;
      }

      else
      {
        v16 = 0;
      }

      *(a1 + 88) = v16;
      v15 = a4[v16];
    }

    while (v14 >= v15);
  }

  *(a1 + 96) = v15 - v14;
  return a1;
}

uint64_t RB::Stroke::Dasher::add_dash_segment(uint64_t a1, uint64_t a2, __n128 a3, float32_t a4, float32_t a5, float a6, __n128 a7)
{
  v8.f32[0] = a4;
  v9 = a3.n128_f64[0];
  v11 = vmla_n_f32(*(a1 + 144), a3.n128_u64[0], a6);
  v12 = vmla_n_f32(*(a1 + 144), a3.n128_u64[0], a7.n128_f32[0]);
  if (*(a1 + 160) == 1)
  {
    v17 = a5;
    if (a6 < 0.00001 && (*(a1 + 80) & 1) != 0)
    {
      a3.n128_u64[0] = *(a1 + 56);
    }

    (*(**(a1 + 8) + 32))(*(a1 + 8), 0, a3);
    v20 = vmla_n_f32(*(a1 + 152), __PAIR64__(LODWORD(v17), LODWORD(a4)), a6);
    (*(**(a1 + 8) + 8))(*(a1 + 8), &v20, *&v11);
    a5 = v17;
    v8.f32[0] = a4;
  }

  v8.f32[1] = a5;
  v20 = vmla_n_f32(*(a1 + 152), v8, a7.n128_f32[0]);
  v13 = vcgt_f32(vminnm_f32(v11, v12), *(a1 + 48));
  if ((vpmax_u32(v13, v13).u32[0] & 0x80000000) != 0 || (v14 = vcgt_f32(*(a1 + 40), vmaxnm_f32(v11, v12)), (vpmax_u32(v14, v14).u32[0] & 0x80000000) != 0))
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8), &v20, *&v12);
  }

  else
  {
    (*(**(a1 + 8) + 16))(*(a1 + 8), &v20, a2, *&v12);
  }

  if (a7.n128_f32[0] > 0.99999 && (*(a1 + 80) & 2) != 0)
  {
    v9 = *(a1 + 64);
  }

  return (*(**(a1 + 8) + 32))(*(a1 + 8), 1, v9, a7);
}

double RB::Stroke::Dasher::closepath(uint64_t a1)
{
  if ((*(a1 + 160) & 1) == 0)
  {
    if ((*(a1 + 80) & 4) != 0)
    {
      (*(**(a1 + 8) + 32))(*(a1 + 8), 1, *(a1 + 72));
    }

    *(a1 + 80) = 0;
  }

  *(a1 + 128) = *(a1 + 88);
  *(a1 + 120) = *(a1 + 81);
  *(a1 + 160) = 1;
  *(a1 + 136) = *(a1 + 96);
  result = *(a1 + 104);
  *(a1 + 144) = result;
  *(a1 + 152) = *(a1 + 112);
  return result;
}

uint64_t RB::Stroke::Dasher::moveto(uint64_t result, uint64_t *a2, double a3)
{
  *(result + 104) = a3;
  v3 = *a2;
  *(result + 112) = *a2;
  *(result + 128) = *(result + 88);
  *(result + 120) = *(result + 81);
  *(result + 160) = 1;
  *(result + 136) = *(result + 96);
  *(result + 144) = a3;
  *(result + 152) = v3;
  return result;
}

float32x2_t *RB::Stroke::Dasher::lineto(float32x2_t *result, float32x2_t *a2, uint64_t a3, __n128 a4, double a5, double a6, double a7, __n128 a8)
{
  v10 = a4.n128_u64[0];
  v11 = result;
  v12 = vsub_f32(a4.n128_u64[0], result[18]);
  v24 = vsub_f32(*a2, result[19]);
  v13 = sqrtf(vaddv_f32(vmul_f32(v12, v12)));
  v14 = result[17].f32[0];
  if (v13 <= v14)
  {
    if (result[15].i8[0] == 1)
    {
      a8.n128_u32[0] = 1.0;
      a4.n128_u64[0] = v12;
      result = RB::Stroke::Dasher::add_dash_segment(result, a3, a4, v24.f32[0], v24.f32[1], 0.0, a8);
      *(v11 + 160) = 0;
      v14 = *(v11 + 136);
    }

    v23 = v14 - v13;
    goto LABEL_19;
  }

  if (v13 < (result[4].f32[0] * 8192.0))
  {
    v15 = 0.0;
    v16 = 1.0 / v13;
    if (v14 >= v13)
    {
      v22 = result[17].f32[0];
    }

    else
    {
      v17 = result[15].i8[0];
      v18 = 0.0;
      do
      {
        v15 = v14;
        if (v17)
        {
          a8.n128_f32[0] = v14 * v16;
          if (v14 == v13)
          {
            v19 = a3;
          }

          else
          {
            v19 = 1;
          }

          a4.n128_u64[0] = v12;
          result = RB::Stroke::Dasher::add_dash_segment(v11, v19, a4, v24.f32[0], v24.f32[1], v18 * v16, a8);
          v17 = *(v11 + 120) ^ 1;
        }

        else
        {
          v17 = 1;
        }

        *(v11 + 120) = v17 & 1;
        v20 = *(v11 + 128);
        if (v20 == *(v11 + 16) - 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20 + 1;
        }

        v22 = *(*(v11 + 24) + 4 * v21);
        *(v11 + 128) = v21;
        *(v11 + 136) = v22;
        *(v11 + 160) = 1;
        v14 = v22 + v15;
        v18 = v15;
      }

      while ((v22 + v15) < v13);
    }

    if (v15 < v13)
    {
      if (*(v11 + 120) == 1)
      {
        a8.n128_u32[0] = 1.0;
        a4.n128_u64[0] = v12;
        result = RB::Stroke::Dasher::add_dash_segment(v11, a3, a4, v24.f32[0], v24.f32[1], v15 * v16, a8);
        *(v11 + 160) = 0;
        v22 = *(v11 + 136);
      }

      v23 = (v15 - v13) + v22;
LABEL_19:
      *(v11 + 136) = v23;
    }
  }

  *(v11 + 144) = v10;
  *(v11 + 152) = *a2;
  return result;
}

uint64_t RB::Stroke::Dasher::tangent(uint64_t result, int a2, double a3)
{
  if (a2 == 1)
  {
    v3 = 2;
    v4 = 64;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    *(result + 56) = a3;
    v3 = 5;
    v4 = 72;
  }

  *(result + v4) = a3;
  *(result + 80) |= v3;
  return result;
}

uint64_t anonymous namespace::make_rect(_OWORD *a1, double a2, double a3, double a4, double a5)
{
  if (!CGRectIsNull(*&a2))
  {
    if (!a1 || (v7 = a1[1], *&v8.a = *a1, *&v8.c = v7, *&v8.tx = a1[2], CGAffineTransformIsIdentity(&v8)))
    {
      operator new();
    }

    operator new();
  }

  return 0;
}

uint64_t RBPathMakeUnevenRoundedRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, _OWORD *a10)
{
  if (a5 == 0.0 && a6 == 0.0 && a7 == 0.0 && a8 == 0.0)
  {
  }

  if (!CGRectIsNull(*&a1))
  {
    if (a10)
    {
      v12 = a10[1];
      *&v13.a = *a10;
      *&v13.c = v12;
      *&v13.tx = a10[2];
      if (!CGAffineTransformIsIdentity(&v13))
      {
        operator new();
      }
    }

    operator new();
  }

  return 0;
}

uint64_t RBPathApplyLines($_13 *a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v10.f64[0] = &unk_1F0A3F7D0;
  *&v10.f64[1] = a3;
  v11 = a4;
  *&v5 = a5;
  v6 = *&v5;
  v7 = vrecpe_f32(v5);
  v8 = vmul_f32(vrecps_f32(LODWORD(v6), v7), v7);
  v12 = 0u;
  v13 = 0u;
  v14 = 0.75 * vmul_f32(v8, vrecps_f32(LODWORD(v6), v8)).f32[0];
  v15 = 1;
  RBPathMap(a1, a2, &v10, 0);
  return v15;
}

uint64_t RBPathContainsPoint(RBPath a1, int a2, double a3, double a4)
{
  *v5 = a3;
  *&v5[1] = a4;
  return RBPathContainsPoints(a1, 1uLL, v5, a2, 0) & 1;
}

uint64_t RBPathContainsPoints(RBPath a1, unint64_t a2, uint64_t a3, int a4, float64x2_t *a5)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  var1 = a1.var1;
  var0 = a1.var0;
  v9 = 0;
  v10 = MEMORY[0x1E695EFD0];
  if (a2 >= 0x40)
  {
    v11 = 64;
  }

  else
  {
    v11 = a2;
  }

  if (a5)
  {
    v10 = a5;
  }

  v49 = v10[1];
  v50 = *v10;
  v48 = v10[2];
  *&v52.f64[0] = &unk_1F0A37BA0;
  v58 = 0;
  v60 = 16;
  *v62 = 0u;
  v63 = 16;
  v64 = vneg_f32(0x7F0000007FLL);
  v65 = 0x7F0000007FLL;
  v12 = v11 + 3;
  v13 = (v11 + 3) >> 2;
  v66 = 0u;
  v56 = 16;
  v54 = 0;
  v55 = v13;
  v59 = v13;
  if (v13 >= 0x11)
  {
    RB::vector<RB::Fill::Gradient::Stop,16ul,unsigned long>::reserve_slow(v61, (v11 + 3) >> 2);
    v9 = v62[1];
  }

  if (v13 > v9)
  {
    v14 = v62[0];
    if (!v62[0])
    {
      v14 = v61;
    }

    bzero(&v14[16 * v9], 16 * (v13 - v9));
  }

  v62[1] = ((v11 + 3) >> 2);
  v15 = (a3 + 8);
  v16 = v53;
  v17 = v57;
  v18 = v11;
  do
  {
    v19 = vcvt_f32_f64(vmlaq_n_f64(vmlaq_n_f64(v48, v50, *(v15 - 1)), v49, *v15));
    v64 = vminnm_f32(v64, v19);
    v65 = vmaxnm_f32(v65, v19);
    *v16++ = v19.i32[0];
    *v17++ = v19.i32[1];
    v15 += 2;
    --v18;
  }

  while (v18);
  v20 = v11 - (v12 & 0xFC);
  if (v11 < (v12 & 0xFCu))
  {
    v21 = &v57[v11];
    v22 = &v53[v11];
    do
    {
      *v22++ = 0;
      *v21++ = 0;
    }

    while (!__CFADD__(v20++, 1));
  }

  v68.var0 = var0;
  v68.var1 = var1;
  *&v24.f64[0] = *&RBPathBoundingRect(v68, 0);
  v24.f64[1] = v25;
  v27.f64[1] = v26;
  v51[0] = vcvt_f32_f64(v24);
  v51[1] = vcvt_f32_f64(v27);
  *&v27.f64[0] = vceq_f32(v64, v65);
  if ((vpmin_u32(*&v27.f64[0], *&v27.f64[0]).u32[0] & 0x80000000) != 0)
  {
    v30 = RB::Rect::contains(v51, v64);
  }

  else
  {
    v28 = RB::Rect::from_bounds(v64, v65);
    v30 = RB::Rect::intersects(v51, *&v28, v29);
  }

  if ((v30 & 1) == 0)
  {
    v31 = 0;
    v33 = v62[0];
    if (!v62[0])
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  RBPathMap(var0, var1, &v52, 0);
  v32 = 0;
  v31 = 0;
  v33 = v62[0];
  if (v62[0])
  {
    v34 = v62[0];
  }

  else
  {
    v34 = v61;
  }

  v35 = 1;
  v36.i64[0] = 0x100000001;
  v36.i64[1] = 0x100000001;
  do
  {
    v37 = *v34++;
    v38 = v37;
    v39 = vtstq_s32(v38, v38);
    if (a4)
    {
      v40 = -1;
    }

    else
    {
      v40 = 0;
    }

    v41 = vdupq_n_s32(v40);
    v42 = vceqzq_s32(vorrq_s8(vandq_s8(vandq_s8(v38, v36), v41), vbicq_s8(v39, v41)));
    v43.i64[0] = v42.i32[0];
    v43.i64[1] = v42.i32[1];
    v44 = v43;
    v43.i64[0] = v42.i32[2];
    v43.i64[1] = v42.i32[3];
    v45.i64[0] = v35;
    v45.i64[1] = 2 * v35;
    v46 = vorrq_s8(vbicq_s8(v45, v44), vbicq_s8(vshlq_u64(vdupq_n_s64(v35), xmmword_195E45750), v43));
    v31 |= *&vorr_s8(*v46.i8, *&vextq_s8(v46, v46, 8uLL));
    v32 += 4;
    v35 *= 16;
  }

  while (v32 < v11);
  if (v62[0])
  {
LABEL_33:
    free(v33);
  }

LABEL_34:
  if (v58)
  {
    free(v58);
  }

  if (v54)
  {
    free(v54);
  }

  return v31;
}

void sub_195E136B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  if (STACK[0x390])
  {
    free(STACK[0x390]);
  }

  if (STACK[0x270])
  {
    free(STACK[0x270]);
  }

  if (a51)
  {
    free(a51);
  }

  _Unwind_Resume(a1);
}

void RBPathContainsPoints::Winding::~Winding(RBPathContainsPoints::Winding *this)
{
  v2 = *(this + 106);
  if (v2)
  {
    free(v2);
  }

  v3 = *(this + 70);
  if (v3)
  {
    free(v3);
  }

  v4 = *(this + 34);
  if (v4)
  {
    free(v4);
  }
}

double RBPathGetLength($_13 *a1, void *a2, _OWORD *a3, float64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  *&v9[0].f64[0] = &unk_1F0A3F810;
  v9[0].f64[1] = a4;
  memset(&v9[1], 0, 32);
  v10 = 0.0;
  if (a3)
  {
    v4 = a3[1];
    v5 = a3[2];
    v8[0] = *a3;
    v8[1] = v4;
    v8[2] = v5;
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  RBPathMap(a1, a2, v9, v6);
  return v10;
}

uint64_t RBPathCopyStrokedPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if ((RBPathIsEmpty(a1, a2) & 1) == 0)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    if (a6)
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = v9 + 1;
        if (v15 < v9 + 1)
        {
          RB::vector<unsigned long,0ul,unsigned long>::reserve_slow(&v13, v10);
          v8 = v13;
          v9 = v14;
          v10 = v14 + 1;
        }

        v11 = *a5++;
        *(v8 + 8 * v9) = v11;
        v14 = v10;
        v9 = v10;
        --a6;
      }

      while (a6);
    }

    operator new();
  }

  return 0;
}

void sub_195E13998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  if (*v15)
  {
    free(*v15);
  }

  v17 = *(*(v14 + 24) + 16);
  if (v17)
  {
    v17(*(v14 + 16));
  }

  MEMORY[0x19A8C09E0](v14, 0x10E1C4000811C3ELL);
  if (a14)
  {
    free(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t RBPathCopyTrimmedPath(uint64_t a1, uint64_t a2)
{
  if ((RBPathIsEmpty(a1, a2) & 1) == 0)
  {
    operator new();
  }

  return 0;
}

uint64_t RBPathCanMix(RBPath a1, RBPath a2)
{
  var1 = a2.var1;
  var0 = a2.var0;
  v4 = a1.var1;
  v5 = a1.var0;
  v28 = *MEMORY[0x1E69E9840];
  if (RBPathEqualToPath(a1.var0, a1.var1, a2.var0, a2.var1))
  {
    return 4;
  }

  v15 = 0;
  v16 = 0;
  memset(v14, 0, 24);
  v17 = 128;
  v19 = 0;
  v20 = 0;
  v21 = 16;
  v22 = 0;
  v23 = 0;
  v24 = 8;
  v25 = 0;
  v26 = 0;
  v27 = 4;
  v7 = *(v4 + 3);
  if (*(v4 + 2))
  {
    if (v7)
    {
      v7(v5, v14, RBPathCanMix(RBPath,RBPath)::$_0::__invoke<void *,RBPathElement,double const*,void const*>, v4);
    }
  }

  else if (v7)
  {
    (v7)(v5, v14, RBPathCanMix(RBPath,RBPath)::$_0::__invoke<void *,RBPathElement,double const*,void const*>);
  }

  v8 = v20;
  v9 = v20 + 1;
  if (v21 < v20 + 1)
  {
    RB::vector<BOOL,16ul,unsigned long>::reserve_slow(v18, v9);
    v8 = v20;
    v9 = v20 + 1;
  }

  v10 = v19;
  if (!v19)
  {
    v10 = v18;
  }

  v10[v8] = 0;
  v20 = v9;
  v11 = *(var1 + 3);
  if (*(var1 + 2))
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = (v11)(var0, v14, RBPathCanMix(RBPath,RBPath)::$_1::__invoke<void *,RBPathElement,double const*,void const*>, var1);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_18;
    }

    v12 = v11(var0, v14, RBPathCanMix(RBPath,RBPath)::$_1::__invoke<void *,RBPathElement,double const*,void const*>);
  }

  if (!v12)
  {
    v6 = 0;
    goto LABEL_20;
  }

LABEL_18:
  v6 = v14[0] == v16;
LABEL_20:
  if (v25)
  {
    free(v25);
  }

  if (v22)
  {
    free(v22);
  }

  if (v19)
  {
    free(v19);
  }

  if (v15)
  {
    free(v15);
  }

  return v6;
}

void *RBPathCanMix(RBPath,RBPath)::Info::~Info(void *a1)
{
  v2 = a1[40];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[29];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[24];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[19];
  if (v5)
  {
    free(v5);
  }

  return a1;
}

void *RBPathMix(RBPath,RBPath,float,RB::AffineTransform const&,RB::AffineTransform const&,RB::AffineTransform const&)::Info::~Info(void *a1)
{
  v2 = a1[284];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[281];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[22];
  if (v4)
  {
    free(v4);
  }

  v5 = a1[5];
  if (v5 && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    RB::Refcount<RB::Path::Object,std::atomic<unsigned int>>::release(v5);
  }

  return a1;
}

void RBPathEncode(RBPath a1, RB::ProtobufEncoder *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1.var1 == &empty_path_callbacks)
  {
    return;
  }

  v9 = this;
  *v11 = 0u;
  v12 = 64;
  v14 = 0u;
  v15 = 384;
  v17 = 0u;
  v18 = 32;
  v3 = *(a1.var1 + 3);
  if (*(a1.var1 + 2))
  {
    if (v3)
    {
LABEL_6:
      v3(a1.var0, &v9, RBPathEncode(RBPath,RB::ProtobufEncoder &)::$_0::__invoke<void *,RBPathElement,double const*,void const*>, a1.var1);
    }
  }

  else if (v3)
  {
    goto LABEL_6;
  }

  v4 = v11[1];
  if (v11[0])
  {
    v5 = v11[0];
  }

  else
  {
    v5 = &v10;
  }

  if (v11[1])
  {
    RB::ProtobufEncoder::encode_varint(this, 0x1AuLL);
    RB::ProtobufEncoder::encode_data(this, v5, v4);
  }

  if (*(&v14 + 1))
  {
    if (v14)
    {
      v6 = v14;
    }

    else
    {
      v6 = &v13;
    }

    RB::ProtobufEncoder::packed_fixed32_field(this, 2, v6, *(&v14 + 1));
  }

  v7 = v17;
  if (*(&v17 + 1))
  {
    if (v17)
    {
      v8 = v17;
    }

    else
    {
      v8 = &v16;
    }

    RB::ProtobufEncoder::packed_fixed64_field(this, 5, v8, *(&v17 + 1));
    v7 = v17;
  }

  if (v7)
  {
    free(v7);
  }

  if (v14)
  {
    free(v14);
  }

  if (v11[0])
  {
    free(v11[0]);
  }
}

void sub_195E13F58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  RBPathEncode(RBPath,RB::ProtobufEncoder &)::Context::~Context(va);
  _Unwind_Resume(a1);
}

void *RBPathEncode(RBPath,RB::ProtobufEncoder &)::Context::~Context(void *a1)
{
  v2 = a1[239];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[204];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    free(v4);
  }

  return a1;
}

uint64_t RBPathXMLDescription(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v6 = a4;
  v4 = *(a2 + 24);
  if (*(a2 + 2))
  {
    if (v4)
    {
      return v4(result, &v5, RBPathXMLDescription(RBPath,std::string &,unsigned int)::$_0::__invoke<void *,RBPathElement,double const*,void const*>, a2);
    }
  }

  else if (v4)
  {
    return (v4)(result, &v5, RBPathXMLDescription(RBPath,std::string &,unsigned int)::$_0::__invoke<void *,RBPathElement,double const*,void const*>);
  }

  return result;
}

void RBPathCopyData(RBPath a1)
{
  v4 = 0;
  *v2 = 0u;
  v3 = 0u;
  *v1 = 0u;
  RBPathEncode(a1, v1);
  operator new();
}

void sub_195E14108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    CFRelease(v19);
  }

  RB::ProtobufEncoder::~ProtobufEncoder(&a19);
  _Unwind_Resume(a1);
}

__CFString *RBPathCopyDebugDescription(uint64_t a1, uint64_t a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendCString(Mutable, "RBPath:", 0x8000100u);
  v5 = *(a2 + 24);
  if (*(a2 + 2))
  {
    if (v5)
    {
      v5(a1, Mutable, RBPathCopyDebugDescription::$_0::__invoke<void *,RBPathElement,double const*,void const*>, a2);
    }
  }

  else if (v5)
  {
    (v5)(a1, Mutable, RBPathCopyDebugDescription::$_0::__invoke<void *,RBPathElement,double const*,void const*>);
  }

  CFStringAppendCString(Mutable, "\n", 0x8000100u);
  return Mutable;
}

uint64_t RB::Refcount<anonymous namespace::CachedCGPathInfo,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
    return $_7::__invoke(result);
  }

  return result;
}

uint64_t anonymous namespace::make_single_element_path<anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs>(anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs &&,CGAffineTransform const*)::{lambda(void const*)#2}::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t anonymous namespace::make_single_element_path<anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs>(anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs &&,CGAffineTransform const*)::{lambda(void const*,void *,BOOL (*)(void const*,RBPathElement,double const*,void const))#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t, uint64_t))
{
  if (*(a1 + 56))
  {
    v3 = a1 + 64;
  }

  else
  {
    v3 = 0;
  }

  return a3(a2, *(a1 + 48), a1 + 16, v3);
}

BOOL anonymous namespace::make_single_element_path<anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs>(anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs &&,CGAffineTransform const*)::{lambda(void const*,void const)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  if (v2 != *(a2 + 56) || memcmp((a1 + 16), (a2 + 16), 0x28uLL))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v6 = *(a1 + 80);
  *&t1.a = *(a1 + 64);
  *&t1.c = v6;
  *&t1.tx = *(a1 + 96);
  v7 = *(a2 + 80);
  *&v8.a = *(a2 + 64);
  *&v8.c = v7;
  *&v8.tx = *(a2 + 96);
  result = CGAffineTransformEqualToTransform(&t1, &v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs>(anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs>(anonymous namespace::make_rect(CGRect,CGAffineTransform const*,RBPathElement)::RectArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t RBPathEqualToPath::$_0::__invoke<void *,RBPathElement,double const*,void const*>(uint64_t a1, int a2, double *a3, unsigned __int8 *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = 0x400000000;
  v7 = RB::Path::Storage::Iterator::next((a1 + 1088), a1, __dst);
  if (a2 != __dst[64] || !v7)
  {
    goto LABEL_72;
  }

  if (a2 <= 0x18 && __RBPathElementArgumentCount[a2])
  {
    v9 = 8 * __RBPathElementArgumentCount[a2];
    v10 = __dst;
    while (*a3 == *v10)
    {
      ++a3;
      ++v10;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_72;
  }

LABEL_10:
  if (a4 || v38 == 1)
  {
    if (a2 > 19)
    {
      if ((a2 - 22) >= 2)
      {
        if (a2 == 20)
        {
          v26 = &default_BOOL_transform;
          if (a4)
          {
            v26 = a4;
          }

          v27 = v39;
          if (!v38)
          {
            v27 = 0;
          }

          if (*v26 == v27)
          {
            v28 = v38 ? BYTE1(v39) : 0;
            if (v26[1] == v28)
            {
              goto LABEL_80;
            }
          }

          goto LABEL_72;
        }

        if (a2 != 24)
        {
          goto LABEL_73;
        }

        if (a4)
        {
          v11 = a4;
        }

        else
        {
          v11 = &default_clip_stroke_transform;
        }

        v12 = v39;
        if (!v38)
        {
          v12 = 0;
        }

        if (v12 != *v11)
        {
          goto LABEL_72;
        }

        v13 = v40;
        if (!v38)
        {
          v13 = 1;
        }

        if (v13 != v11[1])
        {
          goto LABEL_72;
        }

        v14 = v41;
        if (!v38)
        {
          v14 = 0;
        }

        if (v14 != *(v11 + 1))
        {
          goto LABEL_72;
        }

        if (v14)
        {
          if (v38)
          {
            v15 = v42;
          }

          else
          {
            v15 = 0;
          }

          v16 = *(v11 + 2);
          v17 = (v15 + 1);
          v18 = (v16 + 8);
          while (*(v17 - 2) == *(v18 - 2) && *(v17 - 1) == *(v18 - 1) && *v17 == *v18 && v17[1] == v18[1])
          {
            v17 += 4;
            v18 += 4;
            if (!--v14)
            {
              goto LABEL_80;
            }
          }

          goto LABEL_72;
        }
      }
    }

    else if (a2 > 17)
    {
      if (a2 != 18)
      {
        v19 = &default_stroke_transform;
        if (a4)
        {
          v19 = a4;
        }

        v20 = v39;
        if (!v38)
        {
          v20 = 0;
        }

        if (v20 == *v19)
        {
          v21 = v40;
          if (!v38)
          {
            v21 = 0;
          }

          if (v21 == *(v19 + 1))
          {
            v22 = v41;
            if (!v38)
            {
              v22 = 0;
            }

            if (v22 == *(v19 + 1))
            {
              if (v38)
              {
                v23 = v42;
              }

              else
              {
                v23 = 0;
              }

              if (!v22)
              {
                goto LABEL_80;
              }

              v24 = *(v19 + 2);
              v25 = 8 * v22;
              while (*v23 == *v24)
              {
                ++v23;
                ++v24;
                v25 -= 8;
                if (!v25)
                {
                  goto LABEL_80;
                }
              }
            }
          }
        }

        goto LABEL_72;
      }
    }

    else if (a2 != 4 && a2 != 16)
    {
LABEL_73:
      if (v38)
      {
        v30 = &v39;
      }

      else
      {
        v30 = MEMORY[0x1E695EFD0];
      }

      if (a4)
      {
        v31 = a4;
      }

      else
      {
        v31 = MEMORY[0x1E695EFD0];
      }

      v32 = *(v30 + 1);
      *&t1.a = *v30;
      *&t1.c = v32;
      *&t1.tx = *(v30 + 2);
      v33 = v31[1];
      *&v35.a = *v31;
      *&v35.c = v33;
      *&v35.tx = v31[2];
      if (CGAffineTransformEqualToTransform(&t1, &v35))
      {
        goto LABEL_80;
      }

LABEL_72:
      v29 = 0;
      goto LABEL_81;
    }
  }

LABEL_80:
  v29 = 1;
LABEL_81:
  if (v43)
  {
    free(v43);
  }

  return v29;
}

void sub_195E14770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40)
{
  if (a40)
  {
    free(a40);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RBPathApply::Context::closepath(uint64_t this)
{
  if (*(this + 24) == 1)
  {
    v5 = v1;
    v6 = v2;
    v3 = this;
    v4 = xmmword_195E478F0;
    this = (*(this + 16))(*(this + 8), &v4);
    *(v3 + 24) = this;
  }

  return this;
}

uint64_t RBPathApply::Context::lineto(uint64_t result, __n128 a2)
{
  v4 = *(result + 24);
  if (v4 == 1)
  {
    v8 = v2;
    v9 = v3;
    v5 = result;
    v7 = a2;
    v6[1] = &v7;
    v6[0] = v4;
    result = (*(result + 16))(*(result + 8), v6);
    *(v5 + 24) = result;
  }

  return result;
}

uint64_t RBPathApply::Context::quadto(uint64_t result, __n128 a2, __n128 a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 24) == 1)
  {
    v3 = result;
    v5[0] = a2;
    v5[1] = a3;
    v4[1] = v5;
    v4[0] = 2;
    result = (*(result + 16))(*(result + 8), v4);
    *(v3 + 24) = result;
  }

  return result;
}

__n128 RBPathApplyLines::Flattener::closepath(__n128 *this)
{
  if (this[4].n128_u8[4] == 1)
  {
    v3 = 0;
    this[4].n128_u8[4] = (this[1].n128_u64[0])(this->n128_u64[1], 2, &v3);
  }

  result = this[2];
  this[3] = result;
  return result;
}

uint64_t RBPathApplyLines::Flattener::moveto(uint64_t result, __n128 a2)
{
  v2 = result;
  v5 = *MEMORY[0x1E69E9840];
  if (*(result + 68) == 1)
  {
    v3 = a2;
    v4 = a2;
    result = (*(result + 16))(*(result + 8), 0, &v4);
    a2 = v3;
    v2[4].n128_u8[4] = result;
  }

  v2[2] = a2;
  v2[3] = a2;
  return result;
}

uint64_t RBPathApplyLines::Flattener::lineto(uint64_t result, __n128 a2)
{
  v2 = result;
  v5 = *MEMORY[0x1E69E9840];
  if (*(result + 68) == 1)
  {
    v3 = a2;
    v4 = a2;
    result = (*(result + 16))(*(result + 8), 1, &v4);
    a2 = v3;
    v2[4].n128_u8[4] = result;
  }

  v2[3] = a2;
  return result;
}

uint64_t RBPathApplyLines::Flattener::quadto(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v4 = vaddq_f64(a2, a2);
  v5 = vdupq_n_s64(0x3FD5555555555555uLL);
  return RBPathApplyLines::Flattener::cubeto(a1, vmulq_f64(vaddq_f64(a1[3], v4), v5), vmulq_f64(vaddq_f64(v4, a3), v5), a3);
}

uint64_t RBPathApplyLines::Flattener::cubeto(uint64_t result, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  v5 = result;
  v21 = *MEMORY[0x1E69E9840];
  if (*(result + 68) != 1)
  {
    goto LABEL_14;
  }

  v8 = *(result + 48);
  v9 = vmaxnmq_f64(vabsq_f64(vaddq_f64(vsubq_f64(a3, vaddq_f64(a2, a2)), v8)), vabsq_f64(vaddq_f64(vsubq_f64(a2, vaddq_f64(a3, a3)), a4)));
  v10 = ceil(sqrt(sqrt(vaddvq_f64(vmulq_f64(v9, v9)))) * *(result + 64));
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_14;
  }

  v14 = a4;
  if (v10 < 1.0)
  {
    v11 = vceqq_f64(v8, a4);
    if ((vandq_s8(vdupq_laneq_s64(v11, 1), v11).u64[0] & 0x8000000000000000) != 0)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v10 > 1024.0)
  {
    v10 = 1024.0;
  }

  v12 = v10;
  if (v12 < 2)
  {
    goto LABEL_13;
  }

  _ZN2RB13CubicIteratorIDv2_dEC1ES1_S1_S1_S1_i(&v16, v12);
  result = *(v5 + 68);
  if (result == 1)
  {
    do
    {
      v15 = vaddq_f64(v16, v17);
      v16 = v15;
      v17 = vaddq_f64(v18, v17);
      v18 = vaddq_f64(v19, v18);
      v20 = v15;
      result = (*(v5 + 16))(*(v5 + 8), 1, &v20);
      *(v5 + 68) = result;
      *(v5 + 48) = v15;
      if (!result)
      {
        break;
      }

      v13 = v12 > 2;
      LODWORD(v12) = v12 - 1;
    }

    while (v13);
  }

  a4 = v14;
  if (result)
  {
LABEL_13:
    v16 = a4;
    result = (*(v5 + 16))(*(v5 + 8), 1, &v16);
    a4 = v14;
    *(v5 + 68) = result;
LABEL_14:
    *(v5 + 48) = a4;
  }

  return result;
}

float32x2_t *RBPathContainsPoints::Winding::endpath(float32x2_t *this)
{
  v1 = this[112];
  v2 = vmvn_s8(vceq_f32(v1, this[113]));
  if ((vpmax_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return RBPathContainsPoints::Winding::lineto_float(this, v1);
  }

  return this;
}

float32x2_t *RBPathContainsPoints::Winding::closepath(float32x2_t *this)
{
  v1 = this[112];
  v2 = vmvn_s8(vceq_f32(v1, this[113]));
  if ((vpmax_u32(v2, v2).u32[0] & 0x80000000) != 0)
  {
    return RBPathContainsPoints::Winding::lineto_float(this, v1);
  }

  return this;
}

float32x2_t RBPathContainsPoints::Winding::moveto(float32x2_t *a1, float64x2_t a2)
{
  v4 = a1[112];
  v5 = vmvn_s8(vceq_f32(v4, a1[113]));
  if ((vpmax_u32(v5, v5).u32[0] & 0x80000000) != 0)
  {
    v7 = a2;
    RBPathContainsPoints::Winding::lineto_float(a1, v4);
    a2 = v7;
  }

  result = vcvt_f32_f64(a2);
  a1[113] = result;
  a1[112] = result;
  return result;
}

float32x2_t *RBPathContainsPoints::Winding::quadto(float32x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v4 = vaddq_f64(a2, a2);
  v5 = vdupq_n_s64(0x3FD5555555555555uLL);
  return RBPathContainsPoints::Winding::cubeto(a1, vmulq_f64(vaddq_f64(v4, vcvtq_f64_f32(a1[113])), v5), vmulq_f64(vaddq_f64(v4, a3), v5), a3);
}

float32x2_t *RBPathContainsPoints::Winding::cubeto(float32x2_t *result, __n128 a2, float64x2_t a3, float64x2_t a4)
{
  v6 = a2;
  v7 = result;
  a2.n128_u64[0] = result[113];
  v8 = vcvt_f32_f64(v6);
  v9 = vcvt_f32_f64(a3);
  v10 = vcvt_f32_f64(a4);
  v11 = vcgt_f32(vminnm_f32(vminnm_f32(a2.n128_u64[0], v8), vminnm_f32(v9, v10)), result[111]);
  if (v11.i8[4])
  {
    goto LABEL_8;
  }

  v12 = vcgt_f32(result[110], vmaxnm_f32(vmaxnm_f32(a2.n128_u64[0], v8), vmaxnm_f32(v9, v10)));
  if ((vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  if ((v11.i8[0] & 1) == 0)
  {
    v13 = vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(v9, vadd_f32(v8, v8)), a2.n128_u64[0])), vabs_f32(vadd_f32(vsub_f32(v8, vadd_f32(v9, v9)), v10)));
    v14 = ceilf(sqrtf(sqrtf(vaddv_f32(vmul_f32(v13, v13)))));
    if ((LODWORD(v14) & 0x7FFFFFFFu) < 0x7F800000)
    {
      if (v14 >= 1.0)
      {
        if (v14 > 1024.0)
        {
          v14 = 1024.0;
        }

        v16 = v14;
        if (v14 >= 2)
        {
          _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v44, v14, a2);
          __asm { FMOV            V1.4S, #1.0 }

          do
          {
            v22 = vadd_f32(v44, v45);
            v44 = v22;
            v45 = vadd_f32(v46, v45);
            v46 = vadd_f32(v47, v46);
            v23 = v7[113];
            v7[113] = v22;
            if (COERCE_FLOAT(vminnm_f32(v23, v22).i32[1]) <= v7[111].f32[1])
            {
              v24 = vcgt_f32(v7[110], vmaxnm_f32(v23, v22));
              if ((vpmax_u32(v24, v24).u32[0] & 0x80000000) == 0)
              {
                v25 = vsub_f32(v22, v23);
                if (fabsf(*&v25.i32[1]) >= 0.0001)
                {
                  v26 = v7[35];
                  if (v26)
                  {
                    v27 = 0;
                    if (*&v25.i32[1] > 0.0)
                    {
                      v28 = 1;
                    }

                    else
                    {
                      v28 = -1;
                    }

                    v29 = vrecpe_f32(v25.u32[1]);
                    v30 = vmul_f32(vrecps_f32(v25.u32[1], v29), v29);
                    LODWORD(v31) = vmul_f32(v30, vrecps_f32(v25.u32[1], v30)).u32[0];
                    v32 = vdupq_lane_s32(v23, 1);
                    v33 = vdupq_lane_s32(v23, 0);
                    v34 = vdupq_lane_s32(v25, 0);
                    v35 = vdupq_n_s32(v28);
                    do
                    {
                      v36 = v7[34];
                      if (!v36)
                      {
                        v36 = v7 + 2;
                      }

                      v37 = *v36[2 * v27].f32;
                      v38 = v7[70];
                      if (!v38)
                      {
                        v38 = v7 + 38;
                      }

                      v39 = vmulq_n_f32(vsubq_f32(*v38[2 * v27].f32, v32), v31);
                      v40 = vcgtq_f32(vmlaq_f32(v33, v34, v39), v37);
                      v41 = vandq_s8(v35, vandq_s8(vcgezq_f32(v39), vcgeq_f32(_Q1, v39)));
                      v42 = v7[106];
                      if (!v42)
                      {
                        v42 = v7 + 74;
                      }

                      *v42[2 * v27].f32 = vaddq_s32(vandq_s8(v41, v40), *v42[2 * v27].f32);
                      ++v27;
                    }

                    while (*&v26 != v27);
                  }
                }
              }
            }
          }

          while (v16-- > 2);
        }
      }

      else
      {
        v15 = vceq_f32(a2.n128_u64[0], v10);
        if ((vpmin_u32(v15, v15).u32[0] & 0x80000000) != 0)
        {
          return result;
        }
      }

      return RBPathContainsPoints::Winding::lineto_float(v7, v10);
    }

LABEL_8:
    result[113] = v10;
    return result;
  }

  return RBPathContainsPoints::Winding::lineto_float(result, v10);
}

float32x2_t *RBPathContainsPoints::Winding::lineto_float(float32x2_t *result, float32x2_t a2)
{
  v2 = result[113];
  result[113] = a2;
  if (COERCE_FLOAT(vminnm_f32(v2, a2).i32[1]) <= result[111].f32[1])
  {
    v3 = vcgt_f32(result[110], vmaxnm_f32(v2, a2));
    if ((vpmax_u32(v3, v3).u32[0] & 0x80000000) == 0)
    {
      v4 = vsub_f32(a2, v2);
      if (fabsf(*&v4.i32[1]) >= 0.0001)
      {
        v5 = result[35];
        if (v5)
        {
          v6 = 0;
          if (*&v4.i32[1] > 0.0)
          {
            v7 = 1;
          }

          else
          {
            v7 = -1;
          }

          v8 = vrecpe_f32(v4.u32[1]);
          v9 = vmul_f32(vrecps_f32(v4.u32[1], v8), v8);
          LODWORD(v10) = vmul_f32(v9, vrecps_f32(v4.u32[1], v9)).u32[0];
          v11 = vdupq_lane_s32(v2, 1);
          v12 = vdupq_lane_s32(v2, 0);
          v13 = vdupq_lane_s32(v4, 0);
          v14 = vdupq_n_s32(v7);
          __asm { FMOV            V5.4S, #1.0 }

          do
          {
            v20 = result[34];
            if (!v20)
            {
              v20 = result + 2;
            }

            v21 = *v20[2 * v6].f32;
            v22 = result[70];
            if (!v22)
            {
              v22 = result + 38;
            }

            v23 = vmulq_n_f32(vsubq_f32(*v22[2 * v6].f32, v11), v10);
            v24 = vcgtq_f32(vmlaq_f32(v12, v13, v23), v21);
            v25 = vandq_s8(v14, vandq_s8(vcgezq_f32(v23), vcgeq_f32(_Q5, v23)));
            v26 = result[106];
            if (!v26)
            {
              v26 = result + 74;
            }

            *v26[2 * v6].f32 = vaddq_s32(vandq_s8(v25, v24), *v26[2 * v6].f32);
            ++v6;
          }

          while (*&v5 != v6);
        }
      }
    }
  }

  return result;
}

float64x2_t RBPathGetLength::Accumulator::closepath(float64x2_t *this)
{
  result = this[1];
  v2 = vsubq_f64(result, this[2]);
  this[3].f64[0] = sqrt(vaddvq_f64(vmulq_f64(v2, v2))) + this[3].f64[0];
  this[2] = result;
  return result;
}

__n128 *RBPathGetLength::Accumulator::moveto(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2] = a2;
  return result;
}

float64x2_t *RBPathGetLength::Accumulator::lineto(float64x2_t *result, float64x2_t a2)
{
  v2 = vsubq_f64(a2, result[2]);
  result[3].f64[0] = sqrt(vaddvq_f64(vmulq_f64(v2, v2))) + result[3].f64[0];
  result[2] = a2;
  return result;
}

__n128 RBPathGetLength::Accumulator::quadto(float64x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v4 = vaddq_f64(a2, a2);
  v5 = vdupq_n_s64(0x3FD5555555555555uLL);
  a1[3].f64[0] = a1[3].f64[0] + RB::cubic_length<double>(a1[2], vmulq_f64(vaddq_f64(a1[2], v4), v5), vmulq_f64(vaddq_f64(v4, a3), v5), a3, a1->f64[1]);
  result = a3;
  a1[2] = a3;
  return result;
}

__n128 RBPathGetLength::Accumulator::cubeto(float64x2_t *a1, float64x2_t a2, float64x2_t a3, float64x2_t a4)
{
  a1[3].f64[0] = a1[3].f64[0] + RB::cubic_length<double>(a1[2], a2, a3, a4, a1->f64[1]);
  result = a4;
  a1[2] = a4;
  return result;
}

uint64_t RBPathCanMix(RBPath,RBPath)::$_0::__invoke<void *,RBPathElement,double const*,void const*>(void *a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v8 = a1 + 3;
  v9 = a1[20];
  v10 = v9 + 1;
  if (a1[21] < (v9 + 1))
  {
    RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(a1 + 3, v10);
    v9 = a1[20];
    v10 = v9 + 1;
  }

  v11 = a1[19];
  if (!v11)
  {
    v11 = v8;
  }

  *(v11 + v9) = a2;
  a1[20] = v10;
  if (a2 == 24)
  {
    v15 = &default_clip_stroke_transform;
    if (a4)
    {
      v15 = a4;
    }

    v16 = *a3;
    v17 = *v15;
    v18 = a1[41];
    v19 = v18 + 1;
    if (a1[42] < (v18 + 1))
    {
      RB::vector<std::pair<RB::objc_ptr<RBSymbolAnimator *>,RB::objc_ptr<objc_object  {objcproto24RBSymbolAnimatorObserver}*>>,4ul,unsigned long>::reserve_slow(a1 + 32, v19);
      v18 = a1[41];
      v19 = v18 + 1;
    }

    v20 = a1[40];
    if (!v20)
    {
      v20 = a1 + 32;
    }

    v21 = &v20[2 * v18];
    *v21 = v16;
    v21[1] = v17;
    a1[41] = v19;
  }

  else if (a2 == 20)
  {
    if (a4)
    {
      v12 = a4;
    }

    else
    {
      v12 = &default_BOOL_transform;
    }

    v13 = a1[30];
    if (a1[31] < (v13 + 1))
    {
      RB::vector<RBPathBooleanTransform,8ul,unsigned long>::reserve_slow(a1 + 27, v13 + 1);
      v13 = a1[30];
    }

    v14 = a1[29];
    if (!v14)
    {
      v14 = a1 + 27;
    }

    *(v14 + v13) = *v12;
    ++a1[30];
  }

  return 1;
}

void *RB::vector<RBPathBooleanTransform,8ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 4) + (*(__dst + 4) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 4) + (*(__dst + 4) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,2ul>(*(__dst + 2), __dst, 8uLL, __dst + 4, v3);
  *(__dst + 2) = result;
  return result;
}

void *RB::details::realloc_vector<unsigned long,2ul>(void *__src, void *__dst, size_t a3, size_t *a4, size_t a5)
{
  v7 = __src;
  if (a5 <= a3)
  {
    if (__src)
    {
      v9 = a3;
      memcpy(__dst, __src, 2 * a5);
      free(v7);
      v12 = 0;
LABEL_8:
      *a4 = v9;
      return v12;
    }
  }

  else
  {
    v8 = malloc_good_size(2 * a5);
    v9 = v8 >> 1;
    if (v8 >> 1 != *a4)
    {
      v10 = malloc_type_realloc(v7, v8, 0x58CA92B9uLL);
      if (!v10)
      {
        RB::precondition_failure("allocation failure", v11);
      }

      v12 = v10;
      if (!v7)
      {
        memcpy(v10, __dst, 2 * *a4);
      }

      goto LABEL_8;
    }
  }

  return v7;
}

uint64_t RBPathCanMix(RBPath,RBPath)::$_1::__invoke<void *,RBPathElement,double const*,void const*>(uint64_t *a1, unsigned int a2, double *a3, int *a4)
{
  if (a2 <= 0x18)
  {
    if (((1 << a2) & 0x1DE0000) != 0)
    {
      v8 = a1[24];
      v9 = a1[25];
      if (v8)
      {
        v10 = a1[24];
      }

      else
      {
        v10 = a1 + 22;
      }

      v11 = (a2 == 18) | *(v10 + v9 - 1) & 1;
      v12 = v9 + 1;
      if (a1[26] < (v9 + 1))
      {
        RB::vector<BOOL,16ul,unsigned long>::reserve_slow(a1 + 22, v12);
        v8 = a1[24];
        v9 = a1[25];
        v12 = v9 + 1;
      }

      if (!v8)
      {
        v8 = a1 + 22;
      }

      *(v8 + v9) = v11;
      a1[25] = v12;
    }

    else if (a2 == 16)
    {
      v27 = a1[25];
      if (v27 >= 2)
      {
        a1[25] = v27 - 1;
      }
    }
  }

  v13 = *a1;
  if (*a1 >= a1[20])
  {
    return 0;
  }

  v14 = a1 + 3;
  v15 = v13 + 1;
  if (a1[19])
  {
    v14 = a1[19];
  }

  v16 = *(v14 + v13);
  *a1 = v15;
  v17 = a1 + 22;
  if (a1[24])
  {
    v17 = a1[24];
  }

  if (v16 == a2)
  {
LABEL_17:
    if (a2 == 24)
    {
      v29 = a1 + 32;
      v30 = a1[2];
      a1[2] = v30 + 1;
      if (a1[40])
      {
        v29 = a1[40];
      }

      v31 = &v29[2 * v30];
      if (a4)
      {
        v32 = a4;
      }

      else
      {
        v32 = &default_clip_stroke_transform;
      }

      v33 = *(v31 + 2);
      v34 = *v32;
      if ((*v32 ^ v33))
      {
        v35 = *v31;
        if ((*v31 < 0.0001 || v35 > 0.9999) && fabs(v35 + *a3 + -1.0) < 0.0001)
        {
          v33 &= ~1u;
          v34 &= ~1u;
        }
      }

      if (v33 == v34)
      {
        v22 = *(v31 + 3);
        v23 = v32[1];
        return v22 == v23;
      }

      return 0;
    }

    if (a2 == 20)
    {
      v18 = a1 + 27;
      v19 = a1[1];
      a1[1] = v19 + 1;
      if (a1[29])
      {
        v18 = a1[29];
      }

      v20 = v18 + 2 * v19;
      if (a4)
      {
        v21 = a4;
      }

      else
      {
        v21 = &default_BOOL_transform;
      }

      if (*v20 == *v21)
      {
        v22 = v20[1];
        v23 = v21[1];
        return v22 == v23;
      }

      return 0;
    }

    return 1;
  }

  v24 = *(v17 + a1[25] - 1);
  if (v16 == 5)
  {
    v25 = v24;
  }

  else
  {
    v25 = 1;
  }

  if (v16 == 6 || (v25 & 1) == 0)
  {
    if (a2 == 5)
    {
      v28 = v24;
    }

    else
    {
      v28 = 1;
    }

    if ((a2 & 0xFC) == 8 || a2 == 6 || (v28 & 1) == 0)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if ((v16 & 0xFC) != 8)
  {
    return 0;
  }

  if (a2 == 6)
  {
    return 1;
  }

  if (a2 == 5)
  {
    return v24 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t RBPathMix(RBPath,RBPath,float,RB::AffineTransform const&,RB::AffineTransform const&,RB::AffineTransform const&)::$_0::__invoke<void *,RBPathElement,double const*,void const*>(void *a1, unsigned int a2, uint64_t *a3, _OWORD *a4)
{
  v6 = a2;
  if (a2 > 0x18)
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = __RBPathElementArgumentCount[a2];
    if (!a4)
    {
      goto LABEL_7;
    }
  }

  if (a2 > 0x18 || ((1 << a2) & 0x1DD0010) == 0)
  {
    v17 = a4[1];
    *&v22.a = *a4;
    *&v22.c = v17;
    *&v22.tx = a4[2];
    if (!CGAffineTransformIsIdentity(&v22))
    {
      v18 = a1[285];
      if (a1[286] < (v18 + 1))
      {
        RB::vector<RB::CustomShader::Closure::marshal_args(RB::RenderPass &,RB::Function &,RB::ColorSpace,RB::Rect const*,unsigned char *,RB::BufferRegion &,std::array<RB::Texture *,3ul> &)::PendingArg,0ul,unsigned long>::reserve_slow((a1 + 284), v18 + 1);
        v18 = a1[285];
      }

      v19 = (a1[284] + 48 * v18);
      v20 = *a4;
      v21 = a4[2];
      v19[1] = a4[1];
      v19[2] = v21;
      *v19 = v20;
      ++a1[285];
      v6 |= 0x80u;
    }
  }

LABEL_7:
  v9 = a1[23];
  if (a1[24] < (v9 + 1))
  {
    RB::vector<unsigned char,128ul,unsigned long>::reserve_slow(a1 + 6, v9 + 1);
    v9 = a1[23];
  }

  v10 = a1[22];
  if (!v10)
  {
    v10 = a1 + 6;
  }

  *(v10 + v9) = v6;
  ++a1[23];
  if (v8)
  {
    v11 = a1[282];
    do
    {
      v12 = v11 + 1;
      if (a1[283] < v11 + 1)
      {
        RB::vector<double,256ul,unsigned long>::reserve_slow(a1 + 25, v12);
        v11 = a1[282];
        v12 = v11 + 1;
      }

      v13 = a1[281];
      v14 = *a3++;
      v15 = v14;
      if (!v13)
      {
        v13 = a1 + 25;
      }

      v13[v11] = v15;
      a1[282] = v12;
      v11 = v12;
      --v8;
    }

    while (v8);
  }

  return 1;
}

void *RB::vector<double,256ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 258) + (*(__dst + 258) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 258) + (*(__dst + 258) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,8ul>(*(__dst + 256), __dst, 0x100uLL, __dst + 258, v3);
  *(__dst + 256) = result;
  return result;
}

uint64_t RBPathMix(RBPath,RBPath,float,RB::AffineTransform const&,RB::AffineTransform const&,RB::AffineTransform const&)::$_1::operator()<void *,RBPathElement,double const*,void const*>(uint64_t result, const char *a2, const RB::AffineTransform *__src, __n128 *a4)
{
  v4 = a4;
  v5 = __src;
  v6 = a2;
  v7 = result;
  v68 = *MEMORY[0x1E69E9840];
  v8 = result + 48;
  v9 = *(result + 16);
  *(result + 16) = v9 + 1;
  if (*(result + 176))
  {
    v8 = *(result + 176);
  }

  v10 = *(v8 + v9);
  if (a2 > 0x18 || ((1 << a2) & 0x1DD0010) == 0)
  {
    if (a4)
    {
      v48 = a4[1];
      *&v67.a = *a4;
      *&v67.c = v48;
      *&v67.tx = a4[2];
      result = CGAffineTransformIsIdentity(&v67);
      if (result)
      {
        v49 = 0;
      }

      else
      {
        v49 = v4;
      }

      if ((v10 & 0x80) == 0)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v49 = 0;
      if ((v10 & 0x80) == 0)
      {
        goto LABEL_48;
      }
    }

    v51 = *(v7 + 32);
    if (v51 < *(v7 + 2280))
    {
      *(v7 + 32) = v51 + 1;
      v52 = *(v7 + 2272) + 48 * v51;
      goto LABEL_49;
    }

LABEL_48:
    v52 = 0;
LABEL_49:
    if (v49 | v52)
    {
      v53 = xmmword_195E42770;
      v54 = xmmword_195E42760;
      v55 = 0uLL;
      v56 = xmmword_195E42760;
      v57 = xmmword_195E42770;
      v58 = 0uLL;
      if (v52)
      {
        v56 = *v52;
        v57 = *(v52 + 16);
        v58 = *(v52 + 32);
      }

      *&v67.a = v56;
      *&v67.c = v57;
      *&v67.tx = v58;
      if (v49)
      {
        v54 = *v49;
        v53 = v49[1];
        v55 = v49[2];
      }

      v66[0] = v54;
      v66[1] = v53;
      v66[2] = v55;
      v59 = RB::mix(&v67, v66, __src, *v7);
      v4 = &v63;
      v63 = MEMORY[0x1EEE9AC00](v59, v60);
      v64 = v61;
      v65 = v62;
    }
  }

  v11 = v10 & 0x7F;
  if ((v10 & 0x7Fu) > 0x18)
  {
    v12 = 0;
  }

  else
  {
    v12 = __RBPathElementArgumentCount[v11];
  }

  v13 = *(v7 + 24);
  if (v13 + v12 > *(v7 + 2256))
  {
LABEL_28:
    RB::Path::Storage::append_element((*(v7 + 40) + 16), v6, v5->f64, v4);
    return 1;
  }

  v14 = v7 + 200;
  if (*(v7 + 2248))
  {
    v14 = *(v7 + 2248);
  }

  v15 = (v14 + 8 * v13);
  *(v7 + 24) = v13 + v12;
  if (v11 == v6)
  {
    goto LABEL_16;
  }

  if ((v10 - 133) < 2 || (v10 - 5) <= 1)
  {
    if ((v6 & 0xFC) == 8)
    {
      MEMORY[0x1EEE9AC00](result, a2);
      v16 = v15[1];
      v66[-4] = *v15;
      v63 = v16;
      v64 = 0u;
      v65 = 0u;
      v12 = __RBPathElementArgumentCount[v6];
      v15 = &v66[-4];
LABEL_16:
      v11 = v6;
LABEL_17:
      MEMORY[0x1EEE9AC00](result, 8 * v12);
      v18 = (v66 - v17);
      bzero(v66 - v17, v19);
      v20 = 2 * path_element_leading_vec2s[v11];
      if (v20)
      {
        v21 = 0;
        v22 = *(v7 + 4);
        v23 = vdupq_lane_s64(COERCE__INT64(*(v7 + 8)), 0);
        v24 = vdupq_lane_s64(COERCE__INT64(*v7), 0);
        v25 = *(v7 + 12);
        v26 = v15;
        v27 = v5;
        v28 = v18;
        do
        {
          v29 = *v26++;
          v30 = v29;
          v31 = *v27++;
          v32 = vmulq_n_f64(v30, v22);
          v33 = vmulq_n_f64(vmlaq_f64(v32, v24, vmlaq_f64(vnegq_f64(v32), v31, v23)), v25);
          *v28++ = vbslq_s8(vceqq_f64(v33, v33), v33, v30);
          v21 += 2;
        }

        while (v21 < v20);
      }

      else
      {
        v21 = 0;
      }

      if ((v11 & 0xFE) == 0xA)
      {
        v34 = (v15 + 8 * v21);
        v36 = *v34;
        v35 = v34[1];
        v37 = (v5 + 8 * v21);
        v38 = *(v7 + 4);
        v39 = vmulq_n_f64(v36, v38);
        v40 = vmulq_n_f64(v35, v38);
        v41 = *(v7 + 12);
        v42 = *(v7 + 8);
        v43 = *v7;
        v44 = vmulq_n_f64(vmlaq_n_f64(v40, vmlaq_n_f64(vnegq_f64(v40), v37[1], v42), v43), v41);
        v45 = vmulq_n_f64(vmlaq_n_f64(v39, vmlaq_n_f64(vnegq_f64(v39), *v37, v42), v43), v41);
        v46 = (v18 + 8 * v21);
        *v46 = vbslq_s8(vceqq_f64(v45, v45), v45, v36);
        v46[1] = vbslq_s8(vceqq_f64(v44, v44), v44, v35);
        v21 += 4;
      }

      if (v21 < v12)
      {
        v47 = *v7;
        do
        {
          *&v18->i64[v21] = v15->f64[v21] + (v5->f64[v21] - v15->f64[v21]) * v47;
          ++v21;
        }

        while (v12 != v21);
      }

      v5 = v18;
      v6 = v11;
      goto LABEL_28;
    }

    if ((v10 & 0x7C) != 8)
    {
      if (((v10 - 5) < 2 || (v10 - 133) < 2) && (v6 - 5) <= 1u)
      {
        goto LABEL_17;
      }

      return 0;
    }

LABEL_42:
    if ((v6 - 5) <= 1u)
    {
      MEMORY[0x1EEE9AC00](result, a2);
      v50 = v5[1];
      v66[-4] = *v5;
      v63 = v50;
      v64 = 0u;
      v65 = 0u;
      v5 = &v66[-4];
      goto LABEL_17;
    }

    return 0;
  }

  if ((v10 & 0x7C) == 8)
  {
    goto LABEL_42;
  }

  result = 0;
  if ((v6 - 5) <= 1u && v11 == 5)
  {
    v11 = 5;
    goto LABEL_17;
  }

  return result;
}

uint64_t RBPathEncode(RBPath,RB::ProtobufEncoder &)::$_0::__invoke<void *,RBPathElement,double const*,void const*>(void **a1, int a2, double *a3, unsigned __int8 *a4)
{
  v6 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (a2 > 0x18)
  {
    v8 = 0;
    if (!a4)
    {
      goto LABEL_77;
    }
  }

  else
  {
    v8 = __RBPathElementArgumentCount[a2];
    if (!a4)
    {
      goto LABEL_77;
    }
  }

  if (a2 > 19)
  {
    if ((a2 - 22) < 2)
    {
      goto LABEL_77;
    }

    if (a2 == 20)
    {
      if (*a4 || a4[1] == 1)
      {
        v31 = *a1;
        RB::ProtobufEncoder::encode_varint(*a1, 0x22uLL);
        RB::ProtobufEncoder::begin_length_delimited(v31);
        RB::ProtobufEncoder::encode_varint(v31, 0x1AuLL);
        RB::ProtobufEncoder::begin_length_delimited(v31);
        v32 = *a4;
        if (*a4)
        {
          RB::ProtobufEncoder::encode_varint(v31, 8uLL);
          RB::ProtobufEncoder::encode_varint(v31, v32);
        }

        if (a4[1] == 1)
        {
          RB::ProtobufEncoder::encode_varint(v31, 0x10uLL);
          RB::ProtobufEncoder::encode_varint(v31, 1uLL);
        }

        RB::ProtobufEncoder::end_length_delimited(v31);
        RB::ProtobufEncoder::end_length_delimited(v31);
        v6 = -108;
      }

      else
      {
        v6 = 20;
      }

      goto LABEL_77;
    }

    if (a2 != 24)
    {
LABEL_64:
      v33 = *(a4 + 1);
      *&v54.a = *a4;
      *&v54.c = v33;
      *&v54.tx = *(a4 + 2);
      if (!CGAffineTransformIsIdentity(&v54))
      {
        v34 = *(a4 + 1);
        v35 = *(a4 + 2);
        *&v54.a = *a4;
        *&v54.c = v34;
        *&v54.tx = v35;
        v36 = *a1;
        RB::ProtobufEncoder::encode_varint(*a1, 0x22uLL);
        RB::ProtobufEncoder::begin_length_delimited(v36);
        RB::ProtobufEncoder::encode_varint(v36, 0xAuLL);
        RB::ProtobufEncoder::begin_length_delimited(v36);
        RB::AffineTransform::encode(&v54.a, v36);
        RB::ProtobufEncoder::end_length_delimited(v36);
        RB::ProtobufEncoder::end_length_delimited(v36);
        v6 |= 0x80u;
      }

      goto LABEL_77;
    }

    if (*(a4 + 1) == 1 && !*(a4 + 1))
    {
      v6 = 24;
      goto LABEL_77;
    }

    v9 = *a1;
    RB::ProtobufEncoder::encode_varint(*a1, 0x22uLL);
    RB::ProtobufEncoder::begin_length_delimited(v9);
    RB::ProtobufEncoder::encode_varint(v9, 0x22uLL);
    RB::ProtobufEncoder::begin_length_delimited(v9);
    v10 = *(a4 + 1);
    if (v10 != 1)
    {
      RB::ProtobufEncoder::encode_varint(v9, 8uLL);
      RB::ProtobufEncoder::encode_varint(v9, v10);
    }

    v11 = *a4;
    if ((*a4 & 4) != 0)
    {
      RB::ProtobufEncoder::encode_varint(v9, 0x10uLL);
      RB::ProtobufEncoder::encode_varint(v9, 1uLL);
      v11 = *a4;
      if ((*a4 & 1) == 0)
      {
LABEL_19:
        if ((v11 & 2) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }
    }

    else if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    RB::ProtobufEncoder::encode_varint(v9, 0x18uLL);
    RB::ProtobufEncoder::encode_varint(v9, 1uLL);
    if ((*a4 & 2) == 0)
    {
LABEL_21:
      if (!*(a4 + 1) || !*(a4 + 2))
      {
LABEL_66:
        v37 = *a4;
        if ((*a4 & 8) != 0)
        {
          RB::ProtobufEncoder::encode_varint(v9, 0x30uLL);
          RB::ProtobufEncoder::encode_varint(v9, 1uLL);
          v37 = *a4;
        }

        if ((v37 & 0x10) != 0)
        {
          RB::ProtobufEncoder::encode_varint(v9, 0x38uLL);
          RB::ProtobufEncoder::encode_varint(v9, 1uLL);
        }

        RB::ProtobufEncoder::end_length_delimited(v9);
        RB::ProtobufEncoder::end_length_delimited(v9);
        v6 = -104;
        goto LABEL_77;
      }

      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = *(a4 + 2);
        v15 = (v14 + v12);
        RB::ProtobufEncoder::encode_varint(v9, 0x2AuLL);
        RB::ProtobufEncoder::begin_length_delimited(v9);
        v16 = *(v14 + v12 + 4);
        if (*&v16 != 0.0)
        {
          RB::ProtobufEncoder::encode_varint(v9, 0xDuLL);
          RB::ProtobufEncoder::encode_fixed32(v9, v16);
        }

        v17 = v15[2];
        if (*&v17 != 0.0)
        {
          RB::ProtobufEncoder::encode_varint(v9, 0x15uLL);
          RB::ProtobufEncoder::encode_fixed32(v9, v17);
        }

        v18 = *(v14 + v12 + 12);
        if (*&v18 != 0.0)
        {
          RB::ProtobufEncoder::encode_varint(v9, 0x1DuLL);
          RB::ProtobufEncoder::encode_fixed32(v9, v18);
        }

        v19 = *v15;
        if (*v15)
        {
          RB::ProtobufEncoder::encode_varint(v9, 0x20uLL);
          RB::ProtobufEncoder::encode_varint(v9, 1uLL);
          v19 = *v15;
          if ((*v15 & 2) != 0)
          {
LABEL_37:
            RB::ProtobufEncoder::encode_varint(v9, 0x28uLL);
            RB::ProtobufEncoder::encode_varint(v9, 1uLL);
            if ((*v15 & 8) == 0)
            {
              goto LABEL_34;
            }

LABEL_33:
            RB::ProtobufEncoder::encode_varint(v9, 0x30uLL);
            RB::ProtobufEncoder::encode_varint(v9, 1uLL);
            goto LABEL_34;
          }
        }

        else if ((v19 & 2) != 0)
        {
          goto LABEL_37;
        }

        if ((v19 & 8) != 0)
        {
          goto LABEL_33;
        }

LABEL_34:
        RB::ProtobufEncoder::end_length_delimited(v9);
        ++v13;
        v12 += 16;
        if (v13 >= *(a4 + 1))
        {
          goto LABEL_66;
        }
      }
    }

LABEL_20:
    RB::ProtobufEncoder::encode_varint(v9, 0x20uLL);
    RB::ProtobufEncoder::encode_varint(v9, 1uLL);
    goto LABEL_21;
  }

  if (a2 <= 17)
  {
    if (a2 == 4 || a2 == 16)
    {
      goto LABEL_77;
    }

    goto LABEL_64;
  }

  if (a2 != 18)
  {
    if (*a4 || *(a4 + 1) || *(a4 + 1))
    {
      v20 = *a1;
      RB::ProtobufEncoder::encode_varint(*a1, 0x22uLL);
      RB::ProtobufEncoder::begin_length_delimited(v20);
      RB::ProtobufEncoder::encode_varint(v20, 0x12uLL);
      RB::ProtobufEncoder::begin_length_delimited(v20);
      v21 = *a4;
      if (v21)
      {
        RB::ProtobufEncoder::encode_varint(v20, 8uLL);
        RB::ProtobufEncoder::encode_varint(v20, v21);
      }

      v22 = *(a4 + 1);
      if (v22)
      {
        RB::ProtobufEncoder::encode_varint(v20, 0x10uLL);
        RB::ProtobufEncoder::encode_varint(v20, v22);
      }

      v23 = *(a4 + 1);
      if (v23 && *(a4 + 2))
      {
        tx = 0.0;
        ty = 0.0;
        v26 = 0;
        v54.tx = 0.0;
        v54.ty = 0.0;
        v55 = 8;
        do
        {
          v27 = *(a4 + 2);
          *&v28 = *&ty + 1;
          if (v55 < *&ty + 1)
          {
            RB::vector<unsigned int,8ul,unsigned long>::reserve_slow(&v54, *&ty + 1);
            tx = v54.tx;
            ty = v54.ty;
            *&v28 = *&v54.ty + 1;
            v23 = *(a4 + 1);
          }

          if (tx == 0.0)
          {
            v29 = &v54;
          }

          else
          {
            v29 = *&tx;
          }

          *&v30 = *(v27 + 8 * v26);
          v29[*&ty] = v30;
          v54.ty = v28;
          ++v26;
          ty = v28;
        }

        while (v26 < v23);
        RB::ProtobufEncoder::packed_fixed32_field(v20, 3, v29, *&v28);
        if (*&v54.tx)
        {
          free(*&v54.tx);
        }
      }

      RB::ProtobufEncoder::end_length_delimited(v20);
      RB::ProtobufEncoder::end_length_delimited(v20);
      v6 = -109;
    }

    else
    {
      v6 = 19;
    }
  }

LABEL_77:
  if (v8)
  {
    v38 = a3;
    v39 = v8;
    while (fabs(*v38) <= 32767.0)
    {
      ++v38;
      if (!--v39)
      {
        goto LABEL_83;
      }
    }

    v6 |= 0x40u;
  }

LABEL_83:
  v40 = a1[10];
  if (a1[11] < (v40 + 1))
  {
    RB::vector<unsigned char,64ul,unsigned long>::reserve_slow(a1 + 1, v40 + 1);
    v40 = a1[10];
  }

  v41 = a1[9];
  if (!v41)
  {
    v41 = a1 + 1;
  }

  *(v40 + v41) = v6;
  a1[10] = (a1[10] + 1);
  if ((v6 & 0x40) != 0)
  {
    v42 = a1 + 240;
    v43 = a1[240];
    if (a1[241] < (v43 + v8))
    {
      RB::vector<RB::DisplayList::Item const*,32ul,unsigned long>::reserve_slow(a1 + 207, v43 + v8);
      v43 = *v42;
      if (!v8)
      {
        goto LABEL_101;
      }
    }

    else if (!v8)
    {
      goto LABEL_101;
    }

    v49 = a1[239];
    if (!v49)
    {
      v49 = a1 + 207;
    }

    v50 = &v49[v43];
    v51 = v8;
    do
    {
      v52 = *a3++;
      *v50++ = v52;
      --v51;
    }

    while (v51);
  }

  else
  {
    v42 = a1 + 205;
    v43 = a1[205];
    if (a1[206] < (v43 + v8))
    {
      RB::vector<float,384ul,unsigned long>::reserve_slow(a1 + 12, v43 + v8);
      v43 = *v42;
      if (!v8)
      {
        goto LABEL_101;
      }
    }

    else if (!v8)
    {
      goto LABEL_101;
    }

    v44 = a1[204];
    if (!v44)
    {
      v44 = a1 + 12;
    }

    v45 = v44 + v43;
    v46 = v8;
    do
    {
      v47 = *a3++;
      v48 = v47;
      *v45++ = v48;
      --v46;
    }

    while (v46);
  }

LABEL_101:
  *v42 = v43 + v8;
  return 1;
}

void sub_195E16420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    free(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t RBPathXMLDescription(RBPath,std::string &,unsigned int)::$_0::__invoke<void *,RBPathElement,double const*,void const*>(_DWORD *a1, int a2, uint64_t a3, int *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a2 > 0x18)
  {
    return 1;
  }

  v9 = a1[2];
  if (!a4)
  {
    goto LABEL_56;
  }

  if (a2 <= 19)
  {
    if (a2 <= 17)
    {
      if (a2 == 4 || a2 == 16)
      {
        goto LABEL_56;
      }

      goto LABEL_47;
    }

    if (a2 != 18)
    {
      if (*a4 > 6 || a4[1] > 2)
      {
        v33 = 3;
        goto LABEL_58;
      }

      v19 = *a1;
      size = *(*a1 + 23);
      if ((size & 0x8000000000000000) != 0)
      {
        size = v19->__r_.__value_.__l.__size_;
      }

      if (size)
      {
        std::string::push_back(v19, 32);
        v19 = *a1;
      }

      std::string::append(v19, "{s ", 3uLL);
      std::string::push_back(*a1, 32);
      if (*(a4 + 1))
      {
        v23 = 0;
        do
        {
          if ((a1[2] & 4) != 0)
          {
            snprintf_l(__s, 0x40uLL, 0, " %a");
          }

          else
          {
            snprintf_l(__s, 0x40uLL, 0, " %g");
          }

          v24 = strlen(__s);
          std::string::append(*a1, __s, v24);
          ++v23;
        }

        while (v23 < *(a4 + 1));
      }

      std::string::push_back(*a1, 125);
      v8 = "[s";
    }

LABEL_56:
    v33 = __RBPathElementArgumentCount[a2];
    if (a2 != 19)
    {
      goto LABEL_62;
    }

    if (!a4)
    {
LABEL_59:
      if (*(a3 + 8) == 10.0)
      {
        v33 -= 2;
      }

      else
      {
        --v33;
      }

LABEL_62:
      if (v33)
      {
LABEL_63:
        v34 = 0;
        while (1)
        {
          if ((a1[2] & 4) != 0)
          {
            snprintf_l(__s, 0x40uLL, 0, "%a");
          }

          else
          {
            snprintf_l(__s, 0x40uLL, 0, "%g");
          }

          v35 = *a1;
          if (v34)
          {
            goto LABEL_70;
          }

          if ((SHIBYTE(v35->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            break;
          }

          if (*(&v35->__r_.__value_.__s + 23))
          {
            goto LABEL_70;
          }

LABEL_71:
          v36 = strlen(__s);
          std::string::append(v35, __s, v36);
          if (v33 == ++v34)
          {
            goto LABEL_95;
          }
        }

        if (!v35->__r_.__value_.__l.__size_)
        {
          goto LABEL_71;
        }

LABEL_70:
        std::string::push_back(*a1, 32);
        v35 = *a1;
        goto LABEL_71;
      }

      goto LABEL_95;
    }

LABEL_58:
    if (*(a3 + 16) != 0.0)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  if ((a2 - 22) < 2)
  {
    goto LABEL_56;
  }

  if (a2 != 20)
  {
    if (a2 != 24)
    {
LABEL_47:
      v29 = *(a4 + 1);
      *&__s[0].a = *a4;
      *&__s[0].c = v29;
      *&__s[0].tx = *(a4 + 2);
      if (!CGAffineTransformIsIdentity(__s))
      {
        if ((v9 & 4) != 0)
        {
          snprintf_l(__s, 0x100uLL, 0, "%a %a %a %a %a %a t");
        }

        else
        {
          snprintf_l(__s, 0x100uLL, 0, "%g %g %g %g %g %g t");
        }

        v30 = *a1;
        v31 = *(*a1 + 23);
        if ((v31 & 0x8000000000000000) != 0)
        {
          v31 = v30->__r_.__value_.__l.__size_;
        }

        if (v31)
        {
          std::string::push_back(*a1, 32);
          v30 = *a1;
        }

        v32 = strlen(__s);
        std::string::append(v30, __s, v32);
      }

      goto LABEL_56;
    }

    std::string::append(*a1, "{k ", 3uLL);
    v11 = *a4;
    if (*a4)
    {
      std::string::append(*a1, " inverse", 8uLL);
      v11 = *a4;
      if ((*a4 & 2) == 0)
      {
LABEL_13:
        if ((v11 & 4) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_78;
      }
    }

    else if ((v11 & 2) == 0)
    {
      goto LABEL_13;
    }

    std::string::append(*a1, " no-extend", 0xAuLL);
    v11 = *a4;
    if ((*a4 & 4) == 0)
    {
LABEL_14:
      if ((v11 & 8) == 0)
      {
LABEL_16:
        if ((v11 & 0x10) != 0)
        {
          std::string::append(*a1, " remove-other-subpaths", 0x16uLL);
        }

        if (*(a4 + 1))
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v14 = *(a4 + 2) + v12;
            v15 = "^";
            if ((*v14 & 1) == 0)
            {
              v15 = "";
            }

            v16 = "*";
            if ((*v14 & 2) == 0)
            {
              v16 = "";
            }

            v17 = "|";
            if ((*v14 & 8) == 0)
            {
              v17 = "";
            }

            snprintf_l(__s, 0x40uLL, 0, " %s%s%s%g:%g,%g", v15, v16, v17, *(v14 + 4), *(v14 + 8), *(v14 + 12));
            v18 = strlen(__s);
            std::string::append(*a1, __s, v18);
            ++v13;
            v12 += 16;
          }

          while (v13 < *(a4 + 1));
        }

        std::string::push_back(*a1, 125);
        goto LABEL_56;
      }

LABEL_15:
      std::string::append(*a1, " no-end-caps", 0xCuLL);
      v11 = *a4;
      goto LABEL_16;
    }

LABEL_78:
    std::string::append(*a1, " no-remove", 0xAuLL);
    v11 = *a4;
    if ((*a4 & 8) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v25 = *a4;
  if (v25 <= 2)
  {
    if (*a4)
    {
      if (v25 == 1)
      {
        v26 = *(a4 + 1);
        v27 = "[i";
        v28 = "[I";
      }

      else
      {
        if (v25 != 2)
        {
          goto LABEL_94;
        }

        v26 = *(a4 + 1);
        v27 = "[u";
        v28 = "[U";
      }
    }

    else
    {
      v26 = *(a4 + 1);
      v27 = "[n";
      v28 = "[N";
    }
  }

  else if (*a4 > 4u)
  {
    if (v25 == 5)
    {
      v26 = *(a4 + 1);
      v27 = "[li";
      v28 = "[lI";
    }

    else
    {
      if (v25 != 6)
      {
        goto LABEL_94;
      }

      v26 = *(a4 + 1);
      v27 = "[lr";
      v28 = "[lR";
    }
  }

  else if (v25 == 3)
  {
    v26 = *(a4 + 1);
    v27 = "[r";
    v28 = "[R";
  }

  else
  {
    if (v25 != 4)
    {
      goto LABEL_94;
    }

    v26 = *(a4 + 1);
    v27 = "[x";
    v28 = "[X";
  }

  if (v26)
  {
    v8 = v28;
  }

  else
  {
    v8 = v27;
  }

LABEL_94:
  v33 = byte_195E47914[0];
  if (byte_195E47914[0])
  {
    goto LABEL_63;
  }

LABEL_95:
  v37 = *a1;
  v38 = *(*a1 + 23);
  if ((v38 & 0x8000000000000000) != 0)
  {
    v38 = v37->__r_.__value_.__l.__size_;
  }

  if (a2 != 16 && v38)
  {
    std::string::push_back(*a1, 32);
    v37 = *a1;
  }

  v39 = strlen(v8);
  std::string::append(v37, v8, v39);
  return 1;
}

void RBPathCopyData::$_0::__invoke(RBPathCopyData::$_0 *this, void **a2, void *a3)
{
  if (a2)
  {
    if (*a2)
    {
      free(*a2);
    }

    JUMPOUT(0x19A8C09E0);
  }
}

uint64_t RBPathCopyDebugDescription::$_0::__invoke<void *,RBPathElement,double const*,void const*>(__CFString *a1, int a2, uint64_t *a3, unsigned __int8 *a4)
{
  CFStringAppendCString(a1, "\n  ", 0x8000100u);
  if (a2 > 0x18)
  {
    v8 = 0;
  }

  else
  {
    v8 = __RBPathElementArgumentCount[a2];
  }

  for (; v8; --v8)
  {
    v9 = *a3++;
    CFStringAppendFormat(a1, 0, @" %g", v9);
  }

  if (!a4)
  {
    return 1;
  }

  if (a2 > 19)
  {
    if ((a2 - 22) < 2)
    {
      return 1;
    }

    if (a2 == 20)
    {
      if (a4[1])
      {
        v14 = "even-odd";
      }

      else
      {
        v14 = "non-zero";
      }

      return 1;
    }

    if (a2 != 24)
    {
LABEL_24:
      CFStringAppendFormat(a1, 0, @" affine(%g %g; %g %g; %g %g)", *a4, *(a4 + 1), *(a4 + 2), *(a4 + 3), *(a4 + 4), *(a4 + 5));
      return 1;
    }

    v10 = *(a4 + 1);
    if (v10 > 6)
    {
      v11 = "unknown";
    }

    else
    {
    }

    CFStringAppendFormat(a1, 0, @" %s [", v11);
    if (*(a4 + 1))
    {
      v19 = 0;
      v20 = 0;
      do
      {
        v21 = (*(a4 + 2) + v19);
        v22 = *v21;
        if (v20)
        {
          v23 = ", ";
        }

        else
        {
          v23 = "";
        }

        if (LOBYTE(v22))
        {
          v24 = "^";
        }

        else
        {
          v24 = "";
        }

        if ((LOBYTE(v22) & 2) != 0)
        {
          v25 = "*";
        }

        else
        {
          v25 = "";
        }

        if ((LOBYTE(v22) & 8) != 0)
        {
          v26 = "|";
        }

        else
        {
          v26 = "";
        }

        CFStringAppendFormat(a1, 0, @"%s%s%s%s%g:%g,%g", v23, v24, v25, v26, v21[1], v21[2], v21[3]);
        ++v20;
        v19 += 16;
      }

      while (v20 < *(a4 + 1));
    }

LABEL_52:
    CFStringAppendCString(a1, "]", 0x8000100u);
    return 1;
  }

  if (a2 > 17)
  {
    if (a2 == 18)
    {
      return 1;
    }

    v12 = *a4;
    if (v12 > 6)
    {
      v13 = "unknown";
    }

    else
    {
    }

    v15 = *(a4 + 1);
    if (v15 > 2)
    {
      v16 = "unknown";
    }

    else
    {
    }

    CFStringAppendFormat(a1, 0, @" %s %s [", v13, v16);
    if (*(a4 + 1))
    {
      v17 = 0;
      do
      {
        if (v17)
        {
          v18 = ", ";
        }

        else
        {
          v18 = "";
        }

        CFStringAppendFormat(a1, 0, @"%s%g", v18, *(*(a4 + 2) + 8 * v17++));
      }

      while (v17 < *(a4 + 1));
    }

    goto LABEL_52;
  }

  if (a2 != 4 && a2 != 16)
  {
    goto LABEL_24;
  }

  return 1;
}

uint64_t anonymous namespace::make_single_element_path<RBPathMakeEllipse::EllipseArgs>(RBPathMakeEllipse::EllipseArgs &&,CGAffineTransform const*)::{lambda(void const*,void *,BOOL (*)(void const*,RBPathElement,double const*,void const))#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 48))
  {
    v3 = a1 + 56;
  }

  else
  {
    v3 = 0;
  }

  return a3(a2, 7, a1 + 16, v3);
}

BOOL anonymous namespace::make_single_element_path<RBPathMakeEllipse::EllipseArgs>(RBPathMakeEllipse::EllipseArgs &&,CGAffineTransform const*)::{lambda(void const*,void const)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  v5 = v4 && *(a1 + 32) == *(a2 + 32);
  if (!v5 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if (!*(a1 + 48))
  {
    return 1;
  }

  v12 = v2;
  v13 = v3;
  v8 = *(a1 + 72);
  *&t1.a = *(a1 + 56);
  *&t1.c = v8;
  *&t1.tx = *(a1 + 88);
  v9 = *(a2 + 72);
  *&v10.a = *(a2 + 56);
  *&v10.c = v9;
  *&v10.tx = *(a2 + 88);
  result = CGAffineTransformEqualToTransform(&t1, &v10);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<RBPathMakeEllipse::EllipseArgs>(RBPathMakeEllipse::EllipseArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t anonymous namespace::make_single_element_path<RBPathMakeRoundedRect::RoundedRectArgs>(RBPathMakeRoundedRect::RoundedRectArgs &&,CGAffineTransform const*)::{lambda(void const*,void *,BOOL (*)(void const*,RBPathElement,double const*,void const))#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 72))
  {
    v4 = a1 + 80;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 64))
  {
    v5 = 9;
  }

  else
  {
    v5 = 8;
  }

  return a3(a2, v5, a1 + 16, v4);
}

BOOL anonymous namespace::make_single_element_path<RBPathMakeRoundedRect::RoundedRectArgs>(RBPathMakeRoundedRect::RoundedRectArgs &&,CGAffineTransform const*)::{lambda(void const*,void const)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  if (v2 != *(a2 + 72) || memcmp((a1 + 16), (a2 + 16), 0x38uLL))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v6 = *(a1 + 96);
  *&t1.a = *(a1 + 80);
  *&t1.c = v6;
  *&t1.tx = *(a1 + 112);
  v7 = *(a2 + 96);
  *&v8.a = *(a2 + 80);
  *&v8.c = v7;
  *&v8.tx = *(a2 + 112);
  result = CGAffineTransformEqualToTransform(&t1, &v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<RBPathMakeRoundedRect::RoundedRectArgs>(RBPathMakeRoundedRect::RoundedRectArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t anonymous namespace::make_single_element_path<RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs>(RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs &&,CGAffineTransform const*)::{lambda(void const*)#2}::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t anonymous namespace::make_single_element_path<RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs>(RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs &&,CGAffineTransform const*)::{lambda(void const*,void *,BOOL (*)(void const*,RBPathElement,double const*,void const))#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (*(a1 + 88))
  {
    v4 = a1 + 96;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 80))
  {
    v5 = 11;
  }

  else
  {
    v5 = 10;
  }

  return a3(a2, v5, a1 + 16, v4);
}

BOOL anonymous namespace::make_single_element_path<RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs>(RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs &&,CGAffineTransform const*)::{lambda(void const*,void const)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 88);
  if (v2 != *(a2 + 88) || memcmp((a1 + 16), (a2 + 16), 0x48uLL))
  {
    return 0;
  }

  if (!v2)
  {
    return 1;
  }

  v6 = *(a1 + 112);
  *&t1.a = *(a1 + 96);
  *&t1.c = v6;
  *&t1.tx = *(a1 + 128);
  v7 = *(a2 + 112);
  *&v8.a = *(a2 + 96);
  *&v8.c = v7;
  *&v8.tx = *(a2 + 128);
  result = CGAffineTransformEqualToTransform(&t1, &v8);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs>(RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_single_element_path<RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs>(RBPathMakeUnevenRoundedRect::UnevenRoundedRectArgs &&,CGAffineTransform const*)::Info,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyTransformedPath::TransformArgs>(RBPath,RBPathCopyTransformedPath::TransformArgs &&)::{lambda(void const*,void const)#1}::__invoke(void *a1, void *a2)
{
  if (memcmp(a1 + 4, a2 + 4, 0x30uLL))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[2];
  v8 = a2[3];

  return RBPathEqualToPath(v5, v6, v7, v8);
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_wrapped_path<RBPathCopyTransformedPath::TransformArgs>(RBPath,RBPathCopyTransformedPath::TransformArgs &&)::Info,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

void *anonymous namespace::make_wrapped_path<RBPathCopyTransformedPath::TransformArgs>(RBPath,RBPathCopyTransformedPath::TransformArgs &&)::Info::~Info(void *a1)
{
  *a1 = &unk_1F0A37B10;
  v2 = *(a1[3] + 16);
  if (v2)
  {
    v2(a1[2]);
  }

  return a1;
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyStrokedPath::StrokeArgs>(RBPath,RBPathCopyStrokedPath::StrokeArgs &&)::{lambda(void const*)#2}::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyStrokedPath::StrokeArgs>(RBPath,RBPathCopyStrokedPath::StrokeArgs &&)::{lambda(void const*,void *,BOOL (*)(void const*,RBPathElement,double const*,void const))#1}::__invoke(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void *, void *))
{
  v11[0] = a1[7];
  v6 = a1[8];
  v11[1] = a1[9];
  v11[2] = v6;
  result = a3(a2, 19, a1 + 4, v11);
  if (result)
  {
    v8 = a1[2];
    v9 = a1[3];
    v10 = *(v9 + 24);
    if (*(v9 + 2))
    {
      if (v10 && (v10(v8, a2, a3) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v10)
    {
      result = v10(v8, a2, a3);
      if (!result)
      {
        return result;
      }
    }

    return a3(a2, 16, a1 + 4, 0);
  }

  return result;
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyStrokedPath::StrokeArgs>(RBPath,RBPathCopyStrokedPath::StrokeArgs &&)::{lambda(void const*,void const)#1}::__invoke(void *a1, void *a2)
{
  if (memcmp(a1 + 4, a2 + 4, 0x38uLL))
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[2];
  v8 = a2[3];

  return RBPathEqualToPath(v5, v6, v7, v8);
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_wrapped_path<RBPathCopyStrokedPath::StrokeArgs>(RBPath,RBPathCopyStrokedPath::StrokeArgs &&)::Info,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_wrapped_path<RBPathCopyStrokedPath::StrokeArgs>(RBPath,RBPathCopyStrokedPath::StrokeArgs &&)::Info,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void *anonymous namespace::make_wrapped_path<RBPathCopyStrokedPath::StrokeArgs>(RBPath,RBPathCopyStrokedPath::StrokeArgs &&)::Info::~Info(void *a1)
{
  *a1 = &unk_1F0A37B70;
  v2 = a1[8];
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1[3] + 16);
  if (v3)
  {
    v3(a1[2]);
  }

  return a1;
}

void anonymous namespace::make_wrapped_path<RBPathCopyStrokedPath::StrokeArgs>(RBPath,RBPathCopyStrokedPath::StrokeArgs &&)::Info::~Info(void *a1)
{
  *a1 = &unk_1F0A37B70;
  v2 = a1[8];
  if (v2)
  {
    free(v2);
  }

  v3 = *(a1[3] + 16);
  if (v3)
  {
    v3(a1[2]);
  }

  JUMPOUT(0x19A8C09E0);
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyTrimmedPath::TrimArgs>(RBPath,RBPathCopyTrimmedPath::TrimArgs &&)::{lambda(void const*)#2}::__invoke(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyTrimmedPath::TrimArgs>(RBPath,RBPathCopyTrimmedPath::TrimArgs &&)::{lambda(void const*,void *,BOOL (*)(void const*,RBPathElement,double const*,void const))#1}::__invoke(uint64_t a1, uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!a3(a2, 18, a1 + 32, 0))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 24);
  if (*(v6 + 2))
  {
    if (v7 && (v7(v5, a2, a3) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7 && !v7(v5, a2, a3))
  {
    return 0;
  }

  return (a3)(a2, 16, a1 + 32, 0);
}

uint64_t anonymous namespace::make_wrapped_path<RBPathCopyTrimmedPath::TrimArgs>(RBPath,RBPathCopyTrimmedPath::TrimArgs &&)::{lambda(void const*,void const)#1}::__invoke(uint64_t *a1, uint64_t a2)
{
  if (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40))
  {
    return RBPathEqualToPath(a1[2], a1[3], *(a2 + 16), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_wrapped_path<RBPathCopyTrimmedPath::TrimArgs>(RBPath,RBPathCopyTrimmedPath::TrimArgs &&)::Info,std::atomic<unsigned int>>::release(uint64_t result)
{
  if (atomic_fetch_add_explicit((result + 8), 0xFFFFFFFF, memory_order_release) == 1)
  {
  }

  return result;
}

uint64_t RB::Refcount<RBPath anonymous namespace::make_wrapped_path<RBPathCopyTrimmedPath::TrimArgs>(RBPath,RBPathCopyTrimmedPath::TrimArgs &&)::Info,std::atomic<unsigned int>>::finalize(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void *anonymous namespace::make_wrapped_path<RBPathCopyTrimmedPath::TrimArgs>(RBPath,RBPathCopyTrimmedPath::TrimArgs &&)::Info::~Info(void *a1)
{
  *a1 = &unk_1F0A37B40;
  v2 = *(a1[3] + 16);
  if (v2)
  {
    v2(a1[2]);
  }

  return a1;
}

void anonymous namespace::make_wrapped_path<RBPathCopyTrimmedPath::TrimArgs>(RBPath,RBPathCopyTrimmedPath::TrimArgs &&)::Info::~Info(void *a1)
{
  *a1 = &unk_1F0A37B40;
  v1 = *(a1[3] + 16);
  if (v1)
  {
    v1(a1[2]);
  }

  JUMPOUT(0x19A8C09E0);
}

void *RB::vector<BOOL,16ul,unsigned long>::reserve_slow(void *__dst, size_t a2)
{
  if (*(__dst + 4) + (*(__dst + 4) >> 1) <= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(__dst + 4) + (*(__dst + 4) >> 1);
  }

  result = RB::details::realloc_vector<unsigned long,1ul>(*(__dst + 2), __dst, 0x10uLL, __dst + 4, v3);
  *(__dst + 2) = result;
  return result;
}

uint64_t RB::RenderPass::RenderPass(uint64_t a1, uint64_t a2, int32x2_t *a3, unsigned int a4, unsigned __int8 a5, __int16 a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 21) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 45) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 69) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 93) = 0;
  v11 = vshl_s32(vadd_s32(a3[8], vdup_n_s32(~(-1 << a4))), vneg_s32(vdup_n_s32(a4)));
  *(a1 + 104) = v11;
  *(a1 + 112) = vdiv_f32(0x4000000040000000, vcvt_f32_s32(v11));
  *(a1 + 120) = 1065353216;
  v12 = a3 + 10;
  if ((a3[10].i8[1] & 1) == 0)
  {
    v12 = (a2 + 10);
  }

  *(a1 + 128) = v12->i8[0];
  *(a1 + 129) = a5 | (a6 << 8);
  *(a1 + 131) = 0;
  *(a1 + 132) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = objc_opt_new();
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  v13 = *(a1 + 104);
  *(a1 + 168) = 0;
  *(a1 + 176) = v13;
  *(a1 + 184) = 0;
  *(a1 + 186) = 0;
  *(a1 + 188) = 0;
  *(a1 + 264) = 0;
  RB::RenderPass::set_attachment(a1, 0, a3, a4, a7, 0);
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  return a1;
}

void sub_195E17B2C(_Unwind_Exception *a1)
{
  v5 = *(v2 + 152);
  *(v2 + 152) = 0;
  if (v5)
  {
    RB::RenderFrame::QueueDeleter::operator()(v3, v5);
  }

  std::array<RB::RenderPass::AttachmentData,4ul>::~array(v1);
  _Unwind_Resume(a1);
}

uint64_t RB::RenderPass::set_attachment(uint64_t a1, const char *a2, RB::Resource *this, unsigned int a4, uint64_t a5, char a6)
{
  v7 = a5;
  v10 = a2;
  if (!a5)
  {
    v7 = *(this + 7);
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v20 = [objc_msgSend(*(a1 + 144) "colorAttachments")];
      [v20 setTexture:*(this + 2)];
      [v20 setLevel:a4];
      [v20 setLoadAction:2];
      [v20 setStoreAction:0];
      [v20 setClearColor:{0.0, 0.0, 0.0, 0.0}];
      v13 = *(a1 + 131) | 4;
      goto LABEL_19;
    }

    if (a2 != 3)
    {
      goto LABEL_25;
    }

    v14 = *(this + 7);
    if (v14 == 252)
    {
      *(a1 + 186) = 2;
      v22 = a4;
    }

    else
    {
      if (v14 == 253)
      {
        v15 = 0;
        v16 = 1;
      }

      else
      {
        if (v14 != 260)
        {
          RB::precondition_failure("invalid depth stencil format: %u\n", a2, *(this + 7));
        }

        v15 = 1;
        v16 = 3;
      }

      *(a1 + 186) = v16;
      v21 = [*(a1 + 144) stencilAttachment];
      [v21 setTexture:*(this + 2)];
      v22 = a4;
      [v21 setLevel:a4];
      [v21 setLoadAction:2];
      [v21 setStoreAction:(*(**(*a1 + 16) + 340) >> 2) & 1];
      [v21 setClearStencil:0];
      *(a1 + 131) |= 1u;
      if (!v15)
      {
        goto LABEL_25;
      }
    }

    v23 = [*(a1 + 144) depthAttachment];
    [v23 setTexture:*(this + 2)];
    [v23 setLevel:v22];
    [v23 setLoadAction:2];
    [v23 setStoreAction:(*(**(*a1 + 16) + 340) >> 2) & 1];
    [v23 setClearDepth:0.0];
    goto LABEL_25;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_25;
    }

    v12 = [objc_msgSend(*(a1 + 144) "colorAttachments")];
    [v12 setTexture:*(this + 2)];
    [v12 setLevel:a4];
    [v12 setLoadAction:2];
    [v12 setStoreAction:(*(**(*a1 + 16) + 340) >> 2) & 1];
    [v12 setClearColor:{0.0, 0.0, 0.0, 0.0}];
    v13 = *(a1 + 131) | 0x18;
    goto LABEL_19;
  }

  v17 = [objc_msgSend(*(a1 + 144) "colorAttachments")];
  [v17 setTexture:*(this + 2)];
  [v17 setLevel:a4];
  v18 = (*(a1 + 129) << 8) & 0xFF00;
  if (v18 == 512)
  {
    v19 = 2;
  }

  else
  {
    v19 = v18 != 0;
  }

  [v17 setLoadAction:v19];
  [v17 setStoreAction:*(this + 78) != 2];
  if (*(a1 + 129) == 2)
  {
    v13 = *(a1 + 131) | 2;
LABEL_19:
    *(a1 + 131) = v13;
  }

LABEL_25:
  v24 = a1 + 24 * v10;
  v27 = *(v24 + 8);
  v26 = v24 + 8;
  v25 = v27;
  if (v27 != this)
  {
    if (v25)
    {
      v28 = *(v25 + 2) - 1;
      *(v25 + 2) = v28;
      if (!v28)
      {
        (*(*v25 + 8))(v25);
      }
    }

    if (this)
    {
      ++*(this + 2);
    }

    *v26 = this;
  }

  *(v26 + 8) = v7;
  *(v26 + 16) = a4;
  *(v26 + 20) = a6;
  v29 = *(*a1 + 16);
  v30 = *(v29 + 96);
  v31 = *(v29 + 100);

  return RB::Resource::set_frame_id(this, v30, v31);
}

uint64_t std::array<RB::RenderPass::AttachmentData,4ul>::~array(uint64_t a1)
{
  for (i = 72; i != -24; i -= 24)
  {
    v3 = *(a1 + i);
    if (v3)
    {
      v4 = v3[2] - 1;
      v3[2] = v4;
      if (!v4)
      {
        (*(*v3 + 8))(v3);
      }
    }
  }

  return a1;
}

void RB::RenderPass::set_color_space(uint64_t a1, unsigned __int8 a2)
{
  if (*(a1 + 128) != a2)
  {
    if (*(a1 + 152))
    {
      RB::RenderFrame::flush_pass(*(*a1 + 16), a1, 0);
    }

    *(a1 + 128) = a2;
  }
}

uint64_t RB::RenderPass::set_texture(uint64_t a1, uint64_t a2, RB::Texture *a3, MTLPixelFormat a4)
{
  v7 = a1 + 8 * a2;
  *(v7 + 240) = RB::RenderFrame::texture_id(*(*a1 + 16), a3);
  v8 = v7 + 240;
  if (a4)
  {
    result = RB::Device::resolve_sampler_state(**(*a1 + 16), a4, a3);
  }

  else
  {
    result = 0;
  }

  *(v8 + 4) = result;
  return result;
}

int32x2_t *RB::RenderPass::draw_primitives(int32x2_t *result, const char *a2, uint64_t a3, __int32 a4, unint64_t a5, unint64_t a6, int32x2_t a7, int32x2_t a8)
{
  v15 = a7;
  v16 = a8;
  if (a5 && a6)
  {
    if (HIDWORD(a5) || HIDWORD(a6))
    {
      RB::RenderPass::draw_primitives(result, a2);
    }

    v13 = result;
    result = RB::Bounds::intersect(&v15, result[21], result[22]);
    v14 = vclez_s32(v16);
    if ((vpmax_u32(v14, v14).u32[0] & 0x80000000) == 0)
    {
      result = RB::RenderPass::draw(v13, a2, &v15, 0);
      result[5].i8[2] = a3;
      result[3].i32[0] = a4;
      result[3].i32[1] = a5;
      result[4].i32[0] = a6;
      result[4].i32[1] = 0;
      if (a3 == 4)
      {
        *(*(*v13 + 16) + 48) += (a5 - 2) * a6;
      }
    }
  }

  return result;
}

unsigned __int8 *RB::RenderPass::draw_custom(int32x2_t *a1, const char *a2, uint64_t a3, _OWORD *a4, int a5, int32x2_t a6, int32x2_t a7, float a8)
{
  v24 = *MEMORY[0x1E69E9840];
  v21 = a6;
  v22 = a7;
  result = RB::Bounds::intersect(&v21, a1[21], a1[22]);
  v15 = vclez_s32(v22);
  if ((vpmax_u32(v15, v15).u32[0] & 0x80000000) == 0)
  {
    v16 = a4[1];
    *&v23[8] = *a4;
    *&v23[24] = v16;
    *&v23[40] = a4[2];
    result = RB::RenderPass::draw(a1, a2, &v21, 80);
    v17 = (result + 48);
    if ((result[47] & 0x10) != 0)
    {
      v17 = ((result + 55) & 0xFFFFFFFFFFFFFFF8) + 16;
    }

    v18 = *&v23[16];
    v19 = v17 + 12 * result[46] + 8 * result[45];
    *(v19 + 40) = *&v23[32];
    v20 = *v23;
    *(v19 + 24) = v18;
    *v19 = a3;
    *(v19 + 56) = *&v23[48];
    *(v19 + 8) = v20;
    *(v19 + 64) = a8;
    *(v19 + 68) = a5;
  }

  return result;
}

float RB::RenderPass::color_convert(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, int a4, int32x2_t a5)
{
  v9.f32[0] = RB::Coverage::set_plane(&v19, a1, a5);
  if (*(a1 + 132) == 2)
  {
    v10 = 131106;
  }

  else
  {
    v10 = 34;
  }

  v18 = v10;
  if (RB::RenderState::set_color_conversion(&v18, a2, a3, &v20 + 12, v9))
  {
    RB::RenderFrame::alloc_buffer_region(*(*a1 + 16), 0x3C, 4uLL, 0, &v22);
    v12 = v22;
    if (v22)
    {
      v13 = (*(v22 + 7) + v23.i64[0]);
      v14 = v19;
      v15 = v20;
      v16 = *v21;
      *(v13 + 44) = *&v21[12];
      v13[1] = v15;
      v13[2] = v16;
      *v13 = v14;
    }

    else
    {
      v22 = 0;
      v23 = 0uLL;
    }

    *(a1 + 192) = RB::RenderFrame::buffer_id(*(*a1 + 16), v12);
    *(a1 + 196) = vmovn_s64(v23);
    if (!a4 || (RB::pixel_format_traits(*(a1 + 16), v17)[1] & 1) == 0)
    {
      LODWORD(v18) = v18 | 0x4000000;
    }

    RB::RenderPass::draw_indexed_primitives(a1, v18, 4, **(*a1 + 16) + 136, 4uLL, 1uLL, 0, *(a1 + 104));
    result = *(a1 + 120) + 1.0;
    *(a1 + 120) = result;
  }

  return result;
}

float RB::RenderPass::resolve_srgb_alpha(RB::RenderPass *this, int32x2_t a2)
{
  RB::Coverage::set_plane(v10, this, a2);
  RB::RenderFrame::alloc_buffer_region(*(*this + 16), 0x3C, 4uLL, 0, &v12);
  v3 = v12;
  if (v12)
  {
    v4 = (*(v12 + 7) + v13.i64[0]);
    v5 = v10[0];
    v6 = v10[1];
    v7 = *v11;
    *(v4 + 44) = *&v11[12];
    v4[1] = v6;
    v4[2] = v7;
    *v4 = v5;
  }

  else
  {
    v12 = 0;
    v13 = 0uLL;
  }

  *(this + 48) = RB::RenderFrame::buffer_id(*(*this + 16), v3);
  *(this + 196) = vmovn_s64(v13);
  if (*(this + 33) == 2)
  {
    v8 = 131170;
  }

  else
  {
    v8 = 98;
  }

  RB::RenderPass::draw_indexed_primitives(this, v8, 4, **(*this + 16) + 136, 4uLL, 1uLL, 0, *(this + 104));
  result = *(this + 30) + 1.0;
  *(this + 30) = result;
  return result;
}

uint64_t RB::RenderPass::WorkingSpace::WorkingSpace(uint64_t a1, MTLPixelFormat a2, __int16 a3, char a4, unsigned __int8 a5)
{
  *a1 = a2;
  *(a1 + 8) = 0;
  v6 = *(a2 + 128);
  *(a1 + 16) = v6;
  *(a1 + 17) = a4;
  *(a1 + 18) = 0;
  if ((*(*a2 + 11) & 8) == 0)
  {
    v8 = (a3 & 0x100) != 0 ? a3 : v6;
    *(a1 + 16) = v8;
    v9 = *(a2 + 128);
    if (v9 != v8)
    {
      v12 = *(a2 + 8);
      v13 = RB::pixel_format_traits(*(v12 + 56), a2);
      v16 = (v13 + 18);
      if ((v8 & 0xF0) != 0)
      {
        v16 = v13 + 6;
      }

      if (*v16)
      {
        RB::Device::alloc_shared_texture_view(**(*a2 + 16), v12, *v16, v8, &v29);
        v18 = v29;
        if (v29)
        {
          if ((a4 & 1) == 0)
          {
            v19 = RB::BaseRenderParams::srgb_alpha(*a2, v17);
            if (v19 != (RB::pixel_format_traits(*(v18 + 56), v20)[1] & 0x10) >> 4)
            {
              RB::RenderPass::resolve_srgb_alpha(a2, v21);
              *(a1 + 18) = 1;
            }
          }

          v22 = RB::RenderPass::RenderPass(a1 + 24, *a2, v18, 0, 1u, 5, 0);
          v24 = *(a1 + 8);
          *(a1 + 8) = v22;
          if (v24)
          {
            RB::RenderPass::~RenderPass(v24);
            v22 = *(a1 + 8);
          }

          RB::RenderPass::set_extra_attachments(v22, a5, v23);
          v25 = *(a1 + 8);
          v26 = *(a2 + 176);
          *(v25 + 168) = *(a2 + 168);
          *(v25 + 176) = v26;
          LODWORD(v25) = *(v18 + 8) - 1;
          *(v18 + 8) = v25;
          if (!v25)
          {
            (*(*v18 + 8))(v18);
          }
        }
      }

      else
      {
        if (a4)
        {
          v27 = 0;
        }

        else
        {
          v27 = RB::BaseRenderParams::srgb_alpha(*a2, v14);
          v8 = *(a1 + 16);
        }

        RB::RenderPass::color_convert(a2, v9, v8, v27, v15);
      }
    }
  }

  return a1;
}

{
  return RB::RenderPass::WorkingSpace::WorkingSpace(a1, a2, a3, a4, a5);
}

void sub_195E18628(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  *(v1 + 8) = 0;
  if (v3)
  {
    RB::RenderPass::~RenderPass(v3);
  }

  _Unwind_Resume(exception_object);
}

float RB::RenderPass::WorkingSpace::commit(RB::RenderPass::WorkingSpace *this, double a2)
{
  v3 = *(this + 1);
  if (v3)
  {
    if (*(this + 18) == 1)
    {
      RB::RenderPass::resolve_srgb_alpha(*(this + 1), *&a2);
      v3 = *(this + 1);
    }

    v4 = *(*v3 + 16);

    RB::RenderFrame::flush_pass(v4, v3, 1);
  }

  else
  {
    v5 = *this;
    v6 = *(*this + 128);
    v7 = *(this + 16);
    if (v6 != v7)
    {
      if (*(this + 17))
      {
        v8 = 0;
      }

      else
      {
        v8 = *(*v5 + 11);
      }

      *&a2 = RB::RenderPass::color_convert(v5, v7, v6, v8 & 1, *&a2);
    }
  }

  return *&a2;
}

__n128 RB::Stroke::ParticleGenerator::moveto(uint64_t a1, uint64_t a2, double a3)
{
  *(a1 + 48) = a3;
  result = *a2;
  v4 = *(a2 + 16);
  *(a1 + 88) = *(a2 + 32);
  *(a1 + 72) = v4;
  *(a1 + 56) = result;
  return result;
}

__n128 RB::Stroke::ParticleGenerator::lineto(uint64_t a1, float32x2_t *a2, unsigned int *a3, double a4, double a5, __n128 a6)
{
  v14 = *(a1 + 48);
  v15 = vsub_f32(*&a4, v14);
  v16 = sqrtf(vaddv_f32(vmul_f32(v15, v15)));
  if (v16 <= 0.0001)
  {
    *(a1 + 48) = a4;
    v21 = a1 + 56;
  }

  else
  {
    v17 = vrecpe_f32(LODWORD(v16));
    v18 = vmul_f32(vrecps_f32(LODWORD(v16), v17), v17);
    LODWORD(v19) = vmul_f32(v18, vrecps_f32(LODWORD(v16), v18)).u32[0];
    v20 = vmul_n_f32(v15, v19);
    v21 = a1 + 56;
    *&v6 = *(a1 + 56);
    if (*(a1 + 40))
    {
      v22 = -1;
    }

    else
    {
      v22 = 0;
    }

    LODWORD(v11) = *(a1 + 100);
    *&v7 = *(a1 + 64);
    *&v8 = *(a1 + 72);
    *&v9 = *(a1 + 80);
    *&v10 = *(a1 + 88);
    v23 = vmul_n_f32(vsub_f32(*a2, *&v6), v19);
    v24 = vmul_n_f32(vsub_f32(a2[1], *&v7), v19);
    v25 = vmul_n_f32(vsub_f32(a2[2], *&v8), v19);
    v26 = vmul_n_f32(vsub_f32(a2[3], *&v9), v19);
    v27 = vmul_n_f32(vsub_f32(a2[4], *&v10), v19);
    if (*&v11 != 0.0)
    {
      v14 = vmla_n_f32(v14, v20, *&v11);
      *&v6 = vmla_n_f32(*&v6, v23, *&v11);
      *&v7 = vmla_n_f32(*&v7, v24, *&v11);
      *&v8 = vmla_n_f32(*&v8, v25, *&v11);
      *&v9 = vmla_n_f32(*&v9, v26, *&v11);
      *&v10 = vmla_n_f32(*&v10, v27, *&v11);
    }

    v47 = a4;
    if (*&v11 < v16)
    {
      *&a4 = -v20.f32[1];
      v52 = v16;
      v53 = vbsl_s8(vdup_n_s32(v22), vzip1_s32(*&a4, v20), 0x3F80000000000000);
      a6.n128_u64[0] = vdup_lane_s32(v53, 0);
      v48 = a6.n128_u64[0];
      v49 = v25;
      v28 = fmaxf((v16 - *&v11) * 0.00097656, 1.0);
      v29 = 0.5 * v23.f32[0];
      v50 = v23;
      v51 = v20;
      do
      {
        if (*&v6 >= v28)
        {
          a6.n128_f32[0] = *&v6;
        }

        else
        {
          a6.n128_f32[0] = v28;
        }

        v30 = vcgt_f32(v14, *(a1 + 32));
        if ((vpmax_u32(v30, v30).u32[0] & 0x80000000) == 0)
        {
          v31 = vcgt_f32(*(a1 + 24), v14);
          if ((vpmax_u32(v31, v31).u32[0] & 0x80000000) == 0)
          {
            v57 = a6;
            v58 = v11;
            v61 = v6;
            v64 = *(a1 + 96);
            v62 = v7;
            v60 = v9;
            v63 = v10;
            v59 = v8;
            if (*(&v8 + 1) == 0.0)
            {
              v32 = *&v8;
            }

            else
            {
              *&v7 = v62;
              *&v10 = v63;
              *&v9 = v60;
            }

            v33 = v53;
            if (fabsf(v32) > 0.005)
            {
              v34 = __sincosf_stret(v32);
              *&v7 = v62;
              *&v10 = v63;
              *&v9 = v60;
              v35.f32[0] = -v34.__sinval;
              v35.i32[1] = LODWORD(v34.__cosval);
              v33 = vmla_f32(vmul_lane_f32(v35, v53, 1), v48, __PAIR64__(LODWORD(v34.__sinval), LODWORD(v34.__cosval)));
            }

            if (*(&v9 + 1) == 0.0)
            {
              v56 = *&v9;
            }

            else
            {
              *&v7 = v62;
              *&v10 = v63;
              v56 = v36;
            }

            if (*(&v7 + 1) != 0.0)
            {
              *&v10 = v63;
              *&v7 = v37;
            }

            if (*(&v10 + 1) == 0.0)
            {
              v38 = *&v10;
            }

            else
            {
              v54 = v7;
              LODWORD(v7) = v54;
              v38 = v39;
            }

            v40 = *(a1 + 16);
            if (v40 == 1)
            {
              v41 = 0;
            }

            else
            {
              v55 = v7;
              LODWORD(v7) = v55;
              v41 = v42;
            }

            (***(a1 + 8))(*(a1 + 8), v41, COERCE_DOUBLE(vmla_n_f32(v14, v33, v56)), COERCE_DOUBLE(vmul_n_f32(v33, *&v7)), v38, *(&v61 + 1));
            v9 = v60;
            v6 = v61;
            v20 = v51;
            v16 = v52;
            v7 = v62;
            v10 = v63;
            v11 = v58;
            v8 = v59;
            v23 = v50;
            v25 = v49;
            a6 = v57;
          }
        }

        v43 = a6.n128_f32[0] + v29;
        v44 = *&v11 + (a6.n128_f32[0] + v29);
        if (v44 == *&v11)
        {
          break;
        }

        v14 = vmla_n_f32(v14, v20, v43);
        LODWORD(v6) = a6.n128_u32[0];
        *&v6 = vmla_n_f32(*&v6, v23, v43);
        *&v7 = vmla_n_f32(*&v7, v24, v43);
        *&v8 = vmla_n_f32(*&v8, v25, v43);
        *&v9 = vmla_n_f32(*&v9, v26, v43);
        *&v10 = vmla_n_f32(*&v10, v27, v43);
        *(a1 + 96) = 1664525 * *(a1 + 96) + 1013904223;
        *&v11 = *&v11 + (a6.n128_f32[0] + v29);
      }

      while (v44 < v16);
    }

    *(a1 + 100) = *&v11 - v16;
    *(a1 + 48) = v47;
  }

  result = *a2->f32;
  v46 = *a2[2].f32;
  *(v21 + 32) = a2[4];
  *v21 = result;
  *(v21 + 16) = v46;
  return result;
}

float RB::Stroke::anonymous namespace::sample_slow(unsigned int *a1, double _D0)
{
  v2 = 73189 * *a1 + 101513;
  *a1 = v2;
  _S1 = (HIWORD(v2) * 0.000015259) + -0.5;
  __asm { FMLA            S0, S1, V0.S[1] }

  return result;
}

uint64_t RB::Stroke::anonymous namespace::sample_index_slow(RB::Stroke::_anonymous_namespace_ *this, unsigned int *a2, unsigned int *a3)
{
  v3 = 73189 * *a2 + 101513;
  v4 = (this * 0.000015259) * HIWORD(v3);
  *a2 = v3;
  if (this - 1 >= v4)
  {
    return v4;
  }

  else
  {
    return this - 1;
  }
}

uint64_t RB::ColorMatrix::operator==(float16x4_t *a1, float16x4_t *a2)
{
  v2 = vand_s8(vand_s8(vand_s8(vceq_f16(a1[1], a2[1]), vceq_f16(*a1, *a2)), vand_s8(vceq_f16(a1[2], a2[2]), vceq_f16(a1[3], a2[3]))), vceq_f16(a1[4], a2[4]));
  v2.i16[0] = vminv_u16(v2);
  return (v2.i32[0] >> 15) & 1;
}

double RB::ColorMatrix::set_identity(RB::ColorMatrix *this)
{
  *this = 15360;
  *(this + 1) = 1006632960;
  *(this + 2) = 0x3C0000000000;
  *(this + 3) = 0x3C00000000000000;
  result = 0.0;
  *(this + 4) = 0;
  return result;
}

uint64_t RB::ColorMatrix::set_inverse_alpha_multiply(uint64_t result, char a2, float16x4_t a3)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2)
  {
    LODWORD(v3) = vmul_n_f16(a3, -*&a3.i16[3]).u32[0];
    WORD2(v3) = vmulh_lane_f16(-*&a3.i16[3], a3, 2);
    *(&v3 + 3) = -*&a3.i16[3];
    LODWORD(v4) = vmul_lane_f16(a3, a3, 3).u32[0];
    WORD2(v4) = vmulh_lane_f16(*&a3.i16[2], a3, 3);
    HIWORD(v4) = a3.i16[3];
    *&a3 = v4;
  }

  else
  {
    v3 = 0;
    HIWORD(v3) = vneg_f16(a3).i16[3];
  }

  *(result + 24) = v3;
  *(result + 32) = *&a3;
  return result;
}

__n64 RB::ColorMatrix::alpha_multiply_color(RB::ColorMatrix *this, char a2)
{
  if (a2)
  {
    return *(this + 24);
  }

  else
  {
    result.n64_u64[0] = *(this + 32);
    result.n64_u16[3] = HIWORD(*(this + 3));
  }

  return result;
}

__int16 RB::ColorMatrix::set_hue_rotate@<H0>(float32x2_t *this@<X0>, float a2@<S0>)
{
  this[3] = 0x3C00000000000000;
  this[4] = 0;
  v3 = __sincosf_stret(a2);
  _S2 = ((v3.__cosval * 0.7873) + 0.2126) + (v3.__sinval * -0.2126);
  __asm { FCVT            H2, S2 }

  v9.f32[0] = 0.0722 - (v3.__cosval * 0.0722);
  v10 = (v3.__cosval * -0.2126) + 0.2126;
  v11.i32[0] = 1060575065;
  _D6 = vmul_n_f32(0x3E91D14E3F371759, v3.__cosval);
  v13 = vsub_f32(v11, _D6);
  v14 = vmul_n_f32(0x3E0F5C293F371759, v3.__sinval);
  v15.i32[0] = vsub_f32(v13, v14).u32[0];
  v13.i32[1] = vadd_f32(_D6, vdup_n_s32(0x3F371759u)).i32[1];
  _D6.f32[0] = v10 + (v3.__sinval * 0.143);
  _D16 = vadd_f32(v13, v14);
  v15.i32[1] = _D16.i32[1];
  v13.i32[0] = vcvt_f16_f32(v15).u32[0];
  __asm { FCVT            H16, S16 }

  v13.i32[1] = _D16.u16[0];
  v17 = vmul_n_f32(0x3E90E5603F6D844DLL, v3.__sinval);
  *v15.f32 = vdup_lane_s32(*v9.f32, 0);
  v9.i32[0] = vadd_f32(*v9.f32, v17).u32[0];
  v9.i32[1] = vsub_f32(*&v15, v17).i32[1];
  v9.i32[0] = vcvt_f16_f32(v9).u32[0];
  _S1 = ((v3.__cosval * 0.9278) + 0.0722) + (v3.__sinval * 0.0722);
  __asm { FCVT            H1, S1 }

  v9.i32[1] = LOWORD(_S1);
  __asm { FCVT            H1, S6 }

  _S0 = v10 - (v3.__sinval * 0.7873);
  v20.i16[3] = 0;
  v20.i16[0] = LOWORD(_S2);
  v20.i16[1] = LOWORD(_S1);
  __asm { FCVT            H0, S0 }

  v20.i16[2] = result;
  *this = v20;
  this[1] = v13;
  this[2] = *v9.f32;
  return result;
}

__int16 RB::ColorMatrix::set_saturate@<H0>(float32x2_t *this@<X0>, float a2@<S0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, float32x4_t a7@<Q5>, float32x4_t a8@<Q6>)
{
  v8.i16[3] = 0;
  this[4] = 0;
  if (a2 < 0.0)
  {
    a2 = 0.0;
  }

  v9 = vmul_n_f32(0x3E59B3D03F498C7ELL, a2);
  a7.i32[0] = 1046066128;
  *a8.f32 = vdup_n_s32(0x3E59B3D0u);
  a7.i32[0] = vadd_f32(v9, *a7.f32).u32[0];
  a7.i32[1] = vsub_f32(*&a8, v9).i32[1];
  v10 = vmul_n_f32(0x3E91D14E3F371759, a2);
  a8.i32[0] = 1060575065;
  a8.i32[0] = vsub_f32(*a8.f32, v10).u32[0];
  _S7 = 0.0722 - (a2 * 0.0722);
  v12.i32[0] = vcvt_f16_f32(a7).u32[0];
  __asm { FCVT            H7, S7 }

  v12.i32[1] = v12.u16[1];
  a8.i32[1] = vadd_f32(v10, vdup_n_s32(0x3F371759u)).i32[1];
  v10.i32[0] = vcvt_f16_f32(a8).u32[0];
  v10.i32[1] = v10.u16[0];
  *this = v12;
  this[1] = v10;
  _S0 = (a2 * 0.9278) + 0.0722;
  __asm { FCVT            H0, S0 }

  v8.i16[0] = LOWORD(_S7);
  v8.i16[1] = LOWORD(_S7);
  v8.i16[2] = result;
  this[2] = v8;
  this[3] = 0x3C00000000000000;
  return result;
}

__n64 RB::ColorMatrix::set_brightness(__n64 *this, int16x4_t _D0)
{
  this->n64_u64[0] = 15360;
  this[1].n64_u64[0] = 1006632960;
  this[2].n64_u64[0] = 0x3C0000000000;
  this[3].n64_u64[0] = 0x3C00000000000000;
  __asm { FCVT            H0, S0 }

  result.n64_u64[0] = vdup_lane_s16(_D0, 0);
  result.n64_u16[3] = 0;
  this[4].n64_u64[0] = result.n64_u64[0];
  return result;
}

__n64 RB::ColorMatrix::set_contrast(__n64 *this, float _S0)
{
  _S1 = 0.5 - (_S0 * 0.5);
  __asm { FCVT            H0, S0 }

  v8 = 0;
  LOWORD(v9) = 0;
  HIWORD(v9) = _H0;
  this->n64_u64[0] = _H0;
  this[1].n64_u64[0] = v9;
  WORD2(v8) = _H0;
  _D0 = 0x3C00000000000000;
  this[2].n64_u64[0] = v8;
  this[3].n64_u64[0] = 0x3C00000000000000;
  __asm { FCVT            H0, S1 }

  result.n64_u64[0] = vdup_lane_s16(_D0, 0);
  result.n64_u16[3] = 0;
  this[4].n64_u64[0] = result.n64_u64[0];
  return result;
}

double RB::ColorMatrix::set_luminance_to_alpha(RB::ColorMatrix *this)
{
  *this = 0x32CE000000000000;
  *(this + 1) = 0x39B9000000000000;
  *(this + 2) = 0x2C9F000000000000;
  result = 0.0;
  *(this + 24) = 0u;
  return result;
}

uint64_t RB::ColorMatrix::is_luminance_to_alpha(float16x4_t *this)
{
  v1 = vand_s8(vand_s8(vand_s8(vceq_f16(this[1], 0x39B9000000000000), vceq_f16(*this, 0x32CE000000000000)), vand_s8(vceq_f16(this[2], 0x2C9F000000000000), vceqz_f16(this[3]))), vceqz_f16(this[4]));
  v1.i16[0] = vminv_u16(v1);
  return (v1.i32[0] >> 15) & 1;
}

__int16 RB::ColorMatrix::set_color_monochrome@<H0>(void *a1@<X0>, double a2@<D0>, int8x8_t _D1@<D1>, float a4@<S2>)
{
  __asm { FCVT            S3, H1 }

  _H4 = _D1.i16[3];
  __asm { FCVT            S4, H4 }

  v12 = _S3 * *&a2;
  _S3 = (1.0 - *&a2) + ((_S3 * *&a2) * 0.2126);
  __asm { FCVT            H5, S3 }

  _S3 = v12 * 0.7152;
  __asm { FCVT            H3, S3 }

  _Q1 = vcvtq_f32_f16(vext_s8(_D1, *&a2, 2uLL));
  _D16 = vmul_n_f32(*_Q1.f32, *&a2);
  _Q1.f32[0] = (1.0 - *&a2) + (_D16.f32[0] * 0.7152);
  *v4.f32 = vdup_lane_s32(_D16, 0);
  v4.f32[0] = v12;
  __asm { FCVT            H17, S1 }

  *_Q1.f32 = vmul_f32(*v4.f32, vdup_n_s32(0x3D93DD98u));
  LODWORD(v19) = vcvt_f16_f32(_Q1).u32[0];
  *_Q1.f32 = vmul_n_f32(*v4.f32, a4);
  _Q1.i32[0] = vcvt_f16_f32(_Q1).u32[0];
  *v4.f32 = vmul_f32(_D16, vdup_n_s32(0x3E59B3D0u));
  _S18 = vmuls_lane_f32(0.7152, _D16, 1);
  __asm { FCVT            H18, S18 }

  _S20 = 1033100696;
  _S0 = (1.0 - *&a2) + (_S4 * *&a2);
  __asm
  {
    FMLA            S6, S20, V16.S[1]
    FCVT            H4, S6
  }

  _S2 = vmuls_lane_f32(a4, _D16, 1);
  __asm { FCVT            H2, S2 }

  HIWORD(_D6) = 0;
  LOWORD(_D6) = _H5;
  *(&_D6 + 2) = vcvt_f16_f32(v4).u32[0];
  v25 = 0;
  _D16.i16[0] = LOWORD(_S3);
  _D16.i16[1] = _H17;
  _D16.i32[1] = LOWORD(_S18);
  *a1 = _D6;
  a1[1] = _D16;
  HIDWORD(v19) = LOWORD(_S4);
  __asm { FCVT            H0, S0 }

  HIWORD(v25) = result;
  a1[2] = v19;
  a1[3] = v25;
  _Q1.i32[1] = LOWORD(_S2);
  a1[4] = _Q1.i64[0];
  return result;
}

__n64 RB::ColorMatrix::set_color_invert(__n64 *this, double _D0)
{
  _S1 = (*&_D0 * -2.0) + 1.0;
  __asm { FCVT            H1, S1 }

  v7 = 0;
  LOWORD(v8) = 0;
  HIWORD(v8) = LOWORD(_S1);
  this->n64_u64[0] = LOWORD(_S1);
  this[1].n64_u64[0] = v8;
  WORD2(v7) = LOWORD(_S1);
  this[2].n64_u64[0] = v7;
  this[3].n64_u64[0] = 0x3C00000000000000;
  __asm { FCVT            H0, S0 }

  result.n64_u64[0] = vdup_lane_s16(*&_D0, 0);
  result.n64_u16[3] = 0;
  this[4].n64_u64[0] = result.n64_u64[0];
  return result;
}

__int16 RB::ColorMatrix::multiply_alpha@<H0>(float16x4_t *this@<X0>, float _S0@<S0>, int a3@<W1>)
{
  if (a3)
  {
    __asm { FCVT            H0, S0 }

    v8 = vmul_n_f16(this[1], _H0);
    *this = vmul_n_f16(*this, _H0);
    this[1] = v8;
    v9 = vmul_n_f16(this[3], _H0);
    this[2] = vmul_n_f16(this[2], _H0);
    this[3] = v9;
    _D0 = vmul_n_f16(this[4], _H0);
    this[4] = _D0;
  }

  else
  {
    _H1 = this->i16[3];
    __asm { FCVT            S1, H1 }

    _S1 = _S1 * _S0;
    __asm { FCVT            H1, S1 }

    this->i16[3] = LOWORD(_S1);
    LOWORD(_S1) = this[1].i16[3];
    __asm { FCVT            S1, H1 }

    _S1 = _S1 * _S0;
    __asm { FCVT            H1, S1 }

    this[1].i16[3] = LOWORD(_S1);
    LOWORD(_S1) = this[2].i16[3];
    __asm { FCVT            S1, H1 }

    _S1 = _S1 * _S0;
    __asm { FCVT            H1, S1 }

    this[2].i16[3] = LOWORD(_S1);
    LOWORD(_S1) = this[3].i16[3];
    __asm { FCVT            S1, H1 }

    _S1 = _S1 * _S0;
    __asm { FCVT            H1, S1 }

    this[3].i16[3] = LOWORD(_S1);
    LOWORD(_S1) = this[4].i16[3];
    __asm { FCVT            S1, H1 }

    *_D0.i32 = _S1 * _S0;
    __asm { FCVT            H0, S0 }

    this[4].i16[3] = _D0.i16[0];
  }

  return _D0.i16[0];
}

float16x4_t RB::operator*@<D0>(float16x4_t *a1@<X0>, float16x4_t *a2@<X1>, float16x4_t *a3@<X8>)
{
  result = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = vmla_lane_f16(vmla_lane_f16(vmla_n_f16(vmul_lane_f16(v4, a2[1], 1), *a1, COERCE_SHORT_FLOAT(*&a2[1])), v5, a2[1], 2), v6, a2[1], 3);
  v8 = a2[3];
  v9 = vmla_lane_f16(vmla_lane_f16(vmla_n_f16(vmul_lane_f16(v4, a2[2], 1), *a1, COERCE_SHORT_FLOAT(*&a2[2])), v5, a2[2], 2), v6, a2[2], 3);
  *a3 = vmla_lane_f16(vmla_lane_f16(vmla_n_f16(vmul_lane_f16(v4, *a2, 1), *a1, COERCE_SHORT_FLOAT(*a2)), v5, *a2, 2), v6, *a2, 3);
  a3[1] = v7;
  a3[2] = v9;
  a3[3] = vmla_lane_f16(vmla_lane_f16(vmla_n_f16(vmul_lane_f16(v4, v8, 1), result, *v8.i16), v5, v8, 2), v6, v8, 3);
  a3[4] = vmla_lane_f16(vmla_lane_f16(vmla_n_f16(vmla_lane_f16(a1[4], v4, a2[4], 1), result, COERCE_SHORT_FLOAT(*&a2[4])), v5, a2[4], 2), v6, a2[4], 3);
  return result;
}

void *RB::ColorMatrix::encode(void *this, RB::ProtobufEncoder *a2)
{
  v3 = this;
  v4 = 0;
  v12[0] = 15360;
  v12[1] = 1006632960;
  v12[2] = 0x3C0000000000;
  v12[3] = 0x3C00000000000000;
  v12[4] = 0;
  v5 = 13;
  do
  {
    _H0 = *(v3 + v4);
    if (_H0 != *(v12 + v4))
    {
      __asm { FCVT            S8, H0 }

      RB::ProtobufEncoder::encode_varint(a2, v5);
      this = RB::ProtobufEncoder::encode_fixed32(a2, _S8);
    }

    v4 += 2;
    v5 += 8;
  }

  while (v4 != 40);
  return this;
}

unint64_t RB::ColorMatrix::decode(RB::ColorMatrix *this, RB::ProtobufDecoder *a2)
{
  *this = 15360;
  *(this + 1) = 1006632960;
  *(this + 2) = 0x3C0000000000;
  *(this + 3) = 0x3C00000000000000;
  *(this + 4) = 0;
  result = RB::ProtobufDecoder::next_field(a2);
  if (result)
  {
    v5 = result;
    do
    {
      v6 = v5 >> 3;
      if ((v5 >> 3) - 1 > 0x13)
      {
        RB::ProtobufDecoder::skip_field(a2, v5);
      }

      else
      {
        _S0 = RB::ProtobufDecoder::float_field(a2, v5);
        __asm { FCVT            H0, S0 }

        *(this + (v6 - 1)) = LOWORD(_S0);
      }

      result = RB::ProtobufDecoder::next_field(a2);
      v5 = result;
    }

    while (result);
  }

  return result;
}

void RB::ColorMatrix::print(float16x4_t *this, RB::SexpString *a2)
{
  if (RB::ColorMatrix::is_diagonal(this))
  {
    RB::SexpString::push(a2, "color-multiply");
    _D0 = *this;
    __asm { FCVT            D0, H0 }

    _H1 = this[1].i16[1];
    __asm { FCVT            D1, H1 }

    _H2 = this[2].i16[2];
    __asm { FCVT            D2, H2 }

    _H3 = this[3].i16[3];
    __asm { FCVT            D3, H3 }

LABEL_8:
    RB::SexpString::printf(a2, 0, "[%g %g %g %g]");
    goto LABEL_9;
  }

  if (RB::ColorMatrix::is_alpha_multiply(this, 0))
  {
    v16 = "alpha-multiply";
LABEL_7:
    RB::SexpString::push(a2, v16);
    _D0 = this[4];
    __asm { FCVT            D1, H0 }

    _H2 = _D0.i16[1];
    __asm { FCVT            D2, H2 }

    _D0.i16[0] = _D0.i16[2];
    __asm { FCVT            D0, H0 }

    _H3 = this[3].i16[3];
    __asm { FCVT            D3, H3 }

    goto LABEL_8;
  }

  if (RB::ColorMatrix::is_alpha_multiply(this, 1))
  {
    v16 = "alpha-multiply*";
    goto LABEL_7;
  }

  RB::SexpString::push(a2, "color-matrix");
  _D0 = *this;
  _D1 = this[1];
  __asm
  {
    FCVT            D0, H0
    FCVT            D1, H1
  }

  _D2 = this[2];
  _D3 = this[3];
  __asm
  {
    FCVT            D2, H2
    FCVT            D3, H3
  }

  _D4 = this[4];
  __asm { FCVT            D4, H4 }

  RB::SexpString::printf(a2, 1, "(row0 %g %g %g %g; %g)", _D0, _D1, _D2, _D3, _D4);
  _H0 = this->i16[1];
  __asm { FCVT            D0, H0 }

  _H1 = this[1].i16[1];
  __asm { FCVT            D1, H1 }

  _H2 = this[2].i16[1];
  __asm { FCVT            D2, H2 }

  _H3 = this[3].i16[1];
  __asm { FCVT            D3, H3 }

  _H4 = this[4].i16[1];
  __asm { FCVT            D4, H4 }

  RB::SexpString::printf(a2, 1, "(row1 %g %g %g %g; %g)", _D0, _D1, _D2, _D3, _D4);
  _H0 = this->i16[2];
  __asm { FCVT            D0, H0 }

  _H1 = this[1].i16[2];
  __asm { FCVT            D1, H1 }

  _H2 = this[2].i16[2];
  __asm { FCVT            D2, H2 }

  _H3 = this[3].i16[2];
  __asm { FCVT            D3, H3 }

  _H4 = this[4].i16[2];
  __asm { FCVT            D4, H4 }

  RB::SexpString::printf(a2, 1, "(row2 %g %g %g %g; %g)", _D0, _D1, _D2, _D3, _D4);
  _H0 = this->i16[3];
  __asm { FCVT            D0, H0 }

  _H1 = this[1].i16[3];
  __asm { FCVT            D1, H1 }

  _H2 = this[2].i16[3];
  __asm { FCVT            D2, H2 }

  _H3 = this[3].i16[3];
  __asm { FCVT            D3, H3 }

  _H4 = this[4].i16[3];
  __asm { FCVT            D4, H4 }

  RB::SexpString::printf(a2, 1, "(row3 %g %g %g %g; %g)");
LABEL_9:

  RB::SexpString::pop(a2);
}

float RB::ColorMatrixFn::content_headroom(RB::ColorMatrixFn *this)
{
  v7[0] = 0;
  v8 = 0;
  (*(*this + 16))(this, v7);
  _H0 = v8;
  __asm { FCVT            S0, H0 }

  return result;
}

RB::ColorMatrixFn *RB::ColorMatrixFn::append(RB::ColorMatrixFn *this, RB::ColorMatrixFn *a2)
{
  if (!a2)
  {
    return this;
  }

  v2 = a2;
  do
  {
    v3 = v2;
    v2 = *(v2 + 1);
  }

  while (v2);
  *(v3 + 1) = this;
  return a2;
}

uint64_t RB::color_flags_space(char a1, unint64_t a2)
{
  v2 = a2 >> 8;
  if ((a2 & 0x100) != 0)
  {
    v3 = a2 & 0xF | 0x10;
  }

  else
  {
    v3 = 17;
  }

  if ((a1 & 2) != 0)
  {
    LODWORD(v2) = 1;
  }

  else
  {
    v3 = a2;
  }

  v4 = a2 & 0xF;
  if (((a2 >> 8) & 1) == 0)
  {
    v4 = 1;
  }

  v5 = (a1 & 1) == 0;
  if (a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (!v5)
  {
    LODWORD(v2) = 1;
  }

  return v6 | (v2 << 8);
}

RB::vImageBuffer *RB::vImageBuffer::vImageBuffer(RB::vImageBuffer *this)
{
  *(this + 32) = 0;
  if (MEMORY[0x19A8C13E0]())
  {
    v2 = 0;
    *this = 0;
  }

  else
  {
    v2 = 1;
  }

  *(this + 32) = v2;
  return this;
}

uint64_t RB::vImageBuffer::operator=(uint64_t a1, _OWORD *a2)
{
  if (*(a1 + 32) == 1)
  {
    free(*a1);
  }

  *(a1 + 32) = 0;
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  return a1;
}

void RB::separable_convolve(vImage_Buffer *src, vImage_Buffer *dest, const float *kernelX, uint32_t kernelY_width)
{
  width = src->width;
  if (width != dest->width || (v6 = dest, dest = src->height, dest != v6->height) || !src->data || (kernelY_width & 1) == 0 || !v6->data)
  {
    _ZN2RB18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS6_PKfjT0__cold_1(src, dest);
  }

  if (width && dest)
  {
    if (src->data == v6->data)
    {
      v10 = 0;
      if (!MEMORY[0x19A8C13E0](&desta))
      {
        v10 = 1;
        if (!desta.data || (vImageCopyBuffer(src, &desta, 1uLL, 0), vImageSepConvolve_Planar8(&desta, v6, 0, 0, 0, kernelX, kernelY_width, kernelX, kernelY_width, 0.0, 0, 4u), (v10 & 1) != 0))
        {
          free(desta.data);
        }
      }
    }

    else
    {
      vImageSepConvolve_Planar8(src, v6, 0, 0, 0, kernelX, kernelY_width, kernelX, kernelY_width, 0.0, 0, 4u);
    }
  }
}

{
  width = src->width;
  if (width != dest->width || (kernelY_width & 1) == 0 || ((v7 = dest, data = src->data, dest = src->height, v10 = v7->data, dest == v7->height) ? (v11 = data == 0) : (v11 = 1), !v11 ? (v12 = v10 == 0) : (v12 = 1), v12))
  {
    _ZN2RB18separable_convolveIDv4_DF16_NS_15ConvolveSampler13clamp_to_zeroEEEvRKNS_18Typed_vImageBufferIT_EERS6_PKfjT0__cold_1(src, dest);
  }

  if (width && dest)
  {
    *backgroundColor = 0;
    if (data == v10)
    {
      v14 = 0;
      if (!MEMORY[0x19A8C13E0](&desta))
      {
        v14 = 1;
        if (!desta.data || (vImageCopyBuffer(src, &desta, 4uLL, 0), vImageSepConvolve_ARGB8888(&desta, v7, 0, 0, 0, kernelX, kernelY_width, kernelX, kernelY_width, 0.0, backgroundColor, 4u), (v14 & 1) != 0))
        {
          free(desta.data);
        }
      }
    }

    else
    {
      vImageSepConvolve_ARGB8888(src, v7, 0, 0, 0, kernelX, kernelY_width, kernelX, kernelY_width, 0.0, backgroundColor, 4u);
    }
  }
}

uint64_t RB::Stroke::flatten_points(void *a1, uint64_t (**a2)(void), char a3, char a4, float64x2_t a5, double a6, float32x2_t a7, float a8, float a9, float a10)
{
  v15[0] = &unk_1F0A38498;
  v15[1] = a2;
  v15[2] = *&a6;
  v15[3] = vadd_f32(a7, *&a6);
  v16 = a3;
  v17 = a4;
  v10 = a8 * a8;
  v11 = vcge_f32(vabs_f32(a7), vneg_f32(0x80000000800000));
  v21 = vpmax_u32(v11, v11).i32[0] >= 0;
  v22 = 0;
  v23 = 0x3F80000000000000;
  v24 = 1;
  v25 = 0;
  v26 = 0x3F80000000000000;
  v27 = 0x3F80000000000000;
  v20 = a9;
  v12 = vrecpe_f32(LODWORD(a9));
  v13 = vmul_f32(vrecps_f32(LODWORD(a9), v12), v12);
  v18 = v10;
  v19 = (fmaxf(a10 * 0.05, 1.0) * 0.75) * vmul_f32(v13, vrecps_f32(LODWORD(a9), v13)).f32[0];
  return RB::Stroke::stroke_points(a1, v15, a5);
}

uint64_t RB::Stroke::flatten_particles(void *a1, uint64_t (**a2)(void), float64x2_t a3, double a4, float32x2_t a5, float a6, float a7)
{
  v17[2] = *&a4;
  v17[3] = vadd_f32(a5, *&a4);
  v7 = vcge_f32(vabs_f32(a5), vneg_f32(0x80000000800000));
  v8 = vpmax_u32(v7, v7).u32[0];
  __asm { FMOV            V1.2S, #1.0 }

  v24 = _D1;
  v25 = 1065353216;
  v28 = 1065353216;
  v31 = _D1;
  v32 = 1065353216;
  v35 = 1065353216;
  v36 = _D1;
  v37 = 1065353216;
  v40 = 1065353216;
  v14 = vrecpe_f32(LODWORD(a6));
  v15 = vmul_f32(vrecps_f32(LODWORD(a6), v14), v14);
  v17[0] = &unk_1F0A38458;
  v17[1] = a2;
  v18 = 256;
  v19 = 1120403456;
  v22 = v8 >= 0;
  v23 = 0;
  v26 = 0;
  v27 = 0;
  v29 = 1;
  v30 = 0;
  v33 = 0;
  v34 = 0;
  v38 = 0;
  v39 = 0;
  v20 = (fmaxf(a7 * 0.05, 1.0) * 0.75) * vmul_f32(v15, vrecps_f32(LODWORD(a6), v15)).f32[0];
  v21 = a6;
  return RB::Stroke::stroke_particles(a1, v17, a3);
}

void RB::Stroke::LineBounds::quadto(float32x2_t *a1, int8x16_t a2, double a3, int8x16_t a4, double a5, double a6, double a7, int32x4_t a8, int8x16_t a9)
{
  v9 = *a4.i32;
  *a4.i64 = a3;
  v10 = vadd_f32(*a2.i8, *a2.i8);
  v11 = vdup_n_s32(0x3EAAAAABu);
  *a2.i8 = vmul_f32(vadd_f32(a1[3], v10), v11);
  v12 = vadd_f32(v10, *a4.i8);
  RB::Stroke::LineBounds::cubeto(a1, a2, vmul_f32(v12, v11), a4, v9, *&v12, a7, a8, a9);
}

double RB::Stroke::flatten_points(RBPath,RB::AffineTransform const&,RB::Stroke::LineConsumer<RB::Stroke::Point> &,RB::Rect,float,RB::LineCap,RB::LineJoin,float,unsigned long,float const*,float,float)::Adaptor::quadto(float32x2_t *a1, float64x2_t a2, float64x2_t a3)
{
  v3 = vcvt_f32_f64(a2);
  v4 = vcvt_f32_f64(a3);
  v5 = vadd_f32(v3, v3);
  v6 = vdup_n_s32(0x3EAAAAABu);
  RB::Stroke::Flattener<RB::Stroke::Point>::cubeto(&a1[1], a1 + 17, vmul_f32(vadd_f32(a1[15], v5), v6), vmul_f32(vadd_f32(v5, v4), v6), *&v4);
  return result;
}

void RB::Stroke::Flattener<RB::Stroke::Point>::quadto(float32x2_t *a1, float32x2_t *a2, float32x2_t a3, double a4)
{
  v5 = vadd_f32(a3, a3);
  v6 = vdup_n_s32(0x3EAAAAABu);
  RB::Stroke::Flattener<RB::Stroke::Point>::cubeto(a1, a2, vmul_f32(vadd_f32(a1[14], v5), v6), vmul_f32(vadd_f32(v5, *&a4), v6), a4);
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Particle>::endpath(uint64_t a1)
{
  result = RB::Stroke::Flattener<RB::Stroke::Particle>::flush_lineto(a1, 1);
  if (*(a1 + 104) == 1 && *(a1 + 108) == 1)
  {
    result = (*(**(a1 + 8) + 32))(*(a1 + 8), 1, *(a1 + 112));
    *(a1 + 104) = 0;
  }

  return result;
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Particle>::closepath(uint64_t a1)
{
  RB::Stroke::Flattener<RB::Stroke::Particle>::lineto(a1, (a1 + 136), *(a1 + 120));
  RB::Stroke::Flattener<RB::Stroke::Particle>::flush_lineto(a1, 0, *(a1 + 128));
  v2 = ***(a1 + 8);

  return v2();
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Particle>::moveto(uint64_t a1, uint64_t a2, double a3)
{
  RB::Stroke::Flattener<RB::Stroke::Particle>::flush_lineto(a1, 1);
  if (*(a1 + 104) == 1 && *(a1 + 108) == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8), 1, *(a1 + 112));
  }

  *(a1 + 120) = a3;
  v6 = *a2;
  v7 = *(a2 + 16);
  *(a1 + 168) = *(a2 + 32);
  *(a1 + 152) = v7;
  *(a1 + 136) = v6;
  *(a1 + 128) = 0;
  *(a1 + 176) = a3;
  v10 = *a2;
  v8 = *(a2 + 16);
  *(a1 + 216) = *(a2 + 32);
  *(a1 + 200) = v8;
  *(a1 + 184) = v10;
  *(a1 + 50) = 1;
  *(a1 + 52) = 0;
  *(a1 + 104) = 1;
  *(a1 + 108) = 0;
  v9 = *(**(a1 + 8) + 8);
  v10.n128_f64[0] = a3;

  return v9(v10);
}

float32x2_t *RB::Stroke::Flattener<RB::Stroke::Particle>::lineto(float32x2_t *result, __int128 *a2, double a3)
{
  v4 = result;
  v5 = result[22];
  v6 = vceq_f32(v5, *&a3);
  if ((vpmin_u32(v6, v6).u32[0] & 0x80000000) != 0)
  {
    if (result[6].i8[2] == 1 && !result[4].i8[0])
    {
      result[6].i8[3] = 1;
    }
  }

  else
  {
    *&result[22] = a3;
    v8 = *a2;
    v9 = a2[1];
    result[27] = a2[2];
    *result[25].f32 = v9;
    *result[23].f32 = v8;
    result[6].i8[2] = 0;
    v10 = vsub_f32(*&a3, v5);
    result = RB::Stroke::Flattener<RB::Stroke::Particle>::flush_lineto(result, 0, v10);
    if (v4[6].i8[0] == 1 && ((v12 = vcgt_f32(vminnm_f32(v5, *&a3), v4[3]), (vpmax_u32(v12, v12).u32[0] & 0x80000000) != 0) || (v13 = vcgt_f32(v4[2], vmaxnm_f32(v5, *&a3)), (vpmax_u32(v13, v13).u32[0] & 0x80000000) != 0)))
    {
      v4[13].i8[0] = 0;
      v17 = *(**&v4[1] + 24);
      v11.n128_f64[0] = a3;

      return v17(v11);
    }

    else
    {
      if (v4[13].i8[0] == 1 && !v4[13].i32[1])
      {
        v4[16] = v10;
        result = (*(**&v4[1] + 32))(*&v4[1], 0, *&v10);
        v4[13].i8[0] = 0;
      }

      v14 = v4[4].i8[1];
      v4[6].i8[3] = 0;
      v4[6].i8[1] = 1;
      v4[6].i8[5] = v14;
      *&v4[7] = a3;
      v16 = *a2;
      v15 = a2[1];
      v4[12] = a2[2];
      *v4[8].f32 = v16;
      *v4[10].f32 = v15;
      v4[13].i8[0] = 1;
      v4[13].i32[1] = 1;
      v4[14] = v10;
    }
  }

  return result;
}

void RB::Stroke::Flattener<RB::Stroke::Particle>::quadto(float32x2_t *a1, uint64_t a2, float32x2_t a3, double a4)
{
  v5 = vadd_f32(a3, a3);
  v6 = vdup_n_s32(0x3EAAAAABu);
  RB::Stroke::Flattener<RB::Stroke::Particle>::cubeto(a1, a2, vmul_f32(vadd_f32(a1[22], v5), v6), vmul_f32(vadd_f32(v5, *&a4), v6), a4);
}

void RB::Stroke::Flattener<RB::Stroke::Particle>::cubeto(uint64_t a1, uint64_t a2, float32x2_t a3, float32x2_t a4, double a5)
{
  v9 = *(a1 + 184);
  v10 = *(a1 + 176);
  v12 = *(a1 + 192);
  v11 = *(a1 + 200);
  v14 = *(a1 + 208);
  v13 = *(a1 + 216);
  v15 = vceq_f32(v10, a3);
  if ((vpmin_u32(v15, v15).u32[0] & 0x80000000) != 0 && (v16 = vceq_f32(a3, a4), (vpmin_u32(v16, v16).u32[0] & 0x80000000) != 0) && (v17 = vceq_f32(a4, *&a5), (vpmin_u32(v17, v17).u32[0] & 0x80000000) != 0))
  {

    RB::Stroke::Flattener<RB::Stroke::Particle>::lineto(a1, a2, a5);
  }

  else
  {
    v18 = COERCE_DOUBLE(vsub_f32(a3, v10));
    if (vaddv_f32(vmul_f32(*&v18, *&v18)) < 0.00001)
    {
      v19 = COERCE_DOUBLE(vsub_f32(a4, v10));
      v20 = COERCE_DOUBLE(vsub_f32(*&a5, v10));
      if (vaddv_f32(vmul_f32(*&v19, *&v19)) < 0.00001)
      {
        v18 = v20;
      }

      else
      {
        v18 = v19;
      }
    }

    v21 = COERCE_DOUBLE(vsub_f32(*&a5, a4));
    if (vaddv_f32(vmul_f32(*&v21, *&v21)) < 0.00001)
    {
      v22 = COERCE_DOUBLE(vsub_f32(*&a5, a3));
      v21 = COERCE_DOUBLE(vsub_f32(*&a5, v10));
      if (vaddv_f32(vmul_f32(*&v22, *&v22)) >= 0.00001)
      {
        v21 = v22;
      }
    }

    v70 = v21;
    v71 = v18;
    *(a1 + 176) = a5;
    v24 = *a2;
    v23 = *(a2 + 16);
    *(a1 + 216) = *(a2 + 32);
    *(a1 + 184) = v24;
    *(a1 + 200) = v23;
    *(a1 + 50) = 0;
    RB::Stroke::Flattener<RB::Stroke::Particle>::flush_lineto(a1, 0, *&v18);
    *&v29 = a5;
    v30 = 0;
    if (*(a1 + 48) == 1)
    {
      v25.n128_u64[0] = vminnm_f32(v10, *&a5);
      v31 = vmaxnm_f32(v10, *&a5);
      v32 = vminnm_f32(a3, a4);
      v33 = vmaxnm_f32(a3, a4);
      v35 = *(a1 + 16);
      v34 = *(a1 + 24);
      *v28.i8 = vcgt_f32(v35, vmaxnm_f32(v31, v33));
      v36 = vorr_s8(*v28.i8, vcgt_f32(vminnm_f32(v25.n128_u64[0], v32), v34));
      *v27.i8 = vpmax_u32(v36, v36);
      if (v27.i32[0] < 0)
      {
        goto LABEL_23;
      }

      v37 = vcge_f32(v31, v33);
      v38 = vand_s8(v37, vcge_f32(v32, v25.n128_u64[0]));
      v39 = COERCE_DOUBLE(vpmin_u32(v38, v38));
      if ((LODWORD(v39) & 0x80000000) == 0)
      {
        v25.n128_u64[0] = v10;
        *v26.i8 = a4;
        v25.n128_f64[0] = RB::Path::cubic_bounds_slow(v25, a3, v26, *&a5, v39, *&v37, v27, v28);
        *&v29 = a5;
        v35 = *(a1 + 16);
        v34 = *(a1 + 24);
      }

      v40 = vorr_s8(vcgt_f32(v35, v31), vcgt_f32(v25.n128_u64[0], v34));
      if ((vpmax_u32(v40, v40).u32[0] & 0x80000000) != 0)
      {
LABEL_23:
        *(a1 + 104) = 0;
        v49 = *(**(a1 + 8) + 24);
        v25.n128_u64[0] = v29;

        v49(v25);
        return;
      }

      v41 = vcge_f32(v25.n128_u64[0], v35);
      v42 = vpmin_u32(v41, v41).u32[0];
      v43 = vcge_f32(v34, v31);
      v44 = vpmin_u32(v43, v43).i32[0] >= 0;
      v30 = v42 >= 0 || v44;
    }

    v45 = vmaxnm_f32(vabs_f32(vadd_f32(vsub_f32(a4, vadd_f32(a3, a3)), v10)), vabs_f32(vadd_f32(vsub_f32(a3, vadd_f32(a4, a4)), v29)));
    v46 = ceilf(sqrtf(sqrtf(vaddv_f32(vmul_f32(v45, v45))) * *(a1 + 40)));
    if ((LODWORD(v46) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      return;
    }

    if (v46 >= 1.0)
    {
      if (v46 > 1024.0)
      {
        v46 = 1024.0;
      }

      v48 = v46;
    }

    else
    {
      v47 = vceq_f32(v10, v29);
      if ((vpmin_u32(v47, v47).u32[0] & 0x80000000) != 0)
      {
        return;
      }

      v48 = 1;
    }

    __asm { FMOV            V1.2S, #1.0 }

    *&v80 = _D1;
    *(&v80 + 1) = 1065353216;
    v81 = 0uLL;
    v82 = 1065353216;
    v83 = 0;
    if (v48 >= 2)
    {
      v25.n128_u64[0] = v10;
      _ZN2RB13CubicIteratorIDv2_fEC1ES1_S1_S1_S1_i(&v76, v48, v25);
      v55 = vrecpe_f32(COERCE_UNSIGNED_INT(v48));
      v56 = vmul_f32(vrecps_f32(COERCE_UNSIGNED_INT(v48), v55), v55);
      v56.i32[0] = vmul_f32(v56, vrecps_f32(COERCE_UNSIGNED_INT(v48), v56)).u32[0];
      v74 = vmul_n_f32(vsub_f32(*(a2 + 8), v12), v56.f32[0]);
      v75 = vmul_n_f32(vsub_f32(*a2, v9), v56.f32[0]);
      v73 = vmul_n_f32(vsub_f32(*(a2 + 16), v11), v56.f32[0]);
      v57 = vmul_n_f32(vsub_f32(*(a2 + 24), v14), v56.f32[0]);
      v58 = vmul_n_f32(vsub_f32(*(a2 + 32), v13), v56.f32[0]);
      v59 = v48 - 1;
      do
      {
        v60 = v76;
        v10 = vadd_f32(*(&v76 + 8), *&v76);
        *&v76 = v10;
        *(&v76 + 1) = vadd_f32(*&v77, *(&v76 + 8));
        *&v77 = vadd_f32(*(&v77 + 8), *&v77);
        v9 = vadd_f32(v9, v75);
        v12 = vadd_f32(v12, v74);
        v11 = vadd_f32(v11, v73);
        v14 = vadd_f32(v14, v57);
        v13 = vadd_f32(v13, v58);
        if (v30 && ((v61 = vcgt_f32(vminnm_f32(v60, v10), *(a1 + 24)), (vpmax_u32(v61, v61).u32[0] & 0x80000000) != 0) || (v62 = vcgt_f32(*(a1 + 16), vmaxnm_f32(v60, v10)), (vpmax_u32(v62, v62).u32[0] & 0x80000000) != 0)))
        {
          v83 = 1;
          v79 = *&v10;
          *&v80 = v9;
          *(&v80 + 1) = v12;
          *&v81 = v11;
          *(&v81 + 1) = v14;
          v82 = v13;
          *(a1 + 104) = 0;
        }

        else
        {
          if (*(a1 + 49) == 1)
          {
            (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 64, *(a1 + 53), *(a1 + 56));
            *(a1 + 49) = 0;
            *(a1 + 52) = 1;
          }

          if (v83 == 1)
          {
            *(a1 + 104) = 0;
            (*(**(a1 + 8) + 24))(*(a1 + 8), &v80, v79);
            v83 = 0;
          }

          if (*(a1 + 104) == 1 && !*(a1 + 108))
          {
            *(a1 + 128) = v71;
            (*(**(a1 + 8) + 32))(*(a1 + 8), 0);
            *(a1 + 104) = 0;
          }

          *(a1 + 51) = 0;
          *(a1 + 49) = 1;
          *(a1 + 53) = 1;
          *(a1 + 56) = *&v10;
          *(a1 + 64) = v9;
          *(a1 + 72) = v12;
          *(a1 + 80) = v11;
          *(a1 + 88) = v14;
          *(a1 + 96) = v13;
        }

        --v59;
      }

      while (v59);
      *&v29 = a5;
    }

    v63 = *(a2 + 16);
    v76 = *a2;
    v77 = v63;
    v78 = *(a2 + 32);
    if (v30 && ((v64 = vcgt_f32(vminnm_f32(v10, v29), *(a1 + 24)), (vpmax_u32(v64, v64).u32[0] & 0x80000000) != 0) || (v65 = vcgt_f32(*(a1 + 16), vmaxnm_f32(v10, v29)), (vpmax_u32(v65, v65).u32[0] & 0x80000000) != 0)))
    {
      v83 = 1;
      v79 = *&v29;
      v69 = *(a2 + 16);
      v80 = *a2;
      v81 = v69;
      v82 = *(a2 + 32);
      *(a1 + 104) = 0;
    }

    else
    {
      if (*(a1 + 49) == 1)
      {
        (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 64, *(a1 + 53), *(a1 + 56));
        *&v29 = a5;
        *(a1 + 49) = 0;
        *(a1 + 52) = 1;
      }

      v66 = v83;
      if (v83 == 1)
      {
        *(a1 + 104) = 0;
        (*(**(a1 + 8) + 24))(*(a1 + 8), &v80, v79);
        *&v29 = a5;
        v66 = 0;
        v83 = 0;
      }

      if (*(a1 + 104) == 1 && !*(a1 + 108))
      {
        *(a1 + 128) = v71;
        (*(**(a1 + 8) + 32))(*(a1 + 8), 0);
        *&v29 = a5;
        *(a1 + 104) = 0;
        v66 = v83;
      }

      v67 = *(a1 + 33);
      *(a1 + 51) = 0;
      *(a1 + 49) = 1;
      *(a1 + 53) = v67;
      *(a1 + 56) = *&v29;
      v68 = v77;
      *(a1 + 64) = v76;
      *(a1 + 80) = v68;
      *(a1 + 96) = v78;
      if ((v66 & 1) == 0)
      {
        *(a1 + 104) = 1;
        *(a1 + 108) = 1;
        *(a1 + 112) = v70;
        return;
      }
    }

    if (*(a1 + 49) == 1)
    {
      (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 64, *(a1 + 53), *(a1 + 56));
      *(a1 + 49) = 0;
      *(a1 + 52) = 1;
    }

    (*(**(a1 + 8) + 24))(*(a1 + 8), &v80, v79);
  }
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Particle>::flush_lineto(uint64_t result, int a2)
{
  v2 = result;
  if (!a2)
  {
    if (*(result + 49) != 1)
    {
      return result;
    }

    v3 = *(result + 53);
    goto LABEL_7;
  }

  result = RB::Stroke::Flattener<RB::Stroke::Particle>::flush_empty_line(result);
  if (result & 1) == 0 && (*(v2 + 49))
  {
    v3 = 1;
LABEL_7:
    result = (*(**(v2 + 8) + 16))(*(v2 + 8), v2 + 64, v3, *(v2 + 56));
    *(v2 + 49) = 0;
    *(v2 + 52) = 1;
  }

  return result;
}

uint64_t RB::Stroke::Flattener<RB::Stroke::Particle>::flush_empty_line(uint64_t a1)
{
  if (*(a1 + 50) != 1 || *(a1 + 51) != 1)
  {
    return 0;
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8), 0, COERCE_DOUBLE(1065353216));
  v2 = 1;
  (*(**(a1 + 8) + 16))(*(a1 + 8), a1 + 136, 1, *(a1 + 120));
  (*(**(a1 + 8) + 32))(*(a1 + 8), 1, COERCE_DOUBLE(1065353216));
  *(a1 + 104) = 0;
  *(a1 + 51) = 256;
  return v2;
}

float32x2_t *RB::Stroke::Flattener<RB::Stroke::Particle>::flush_lineto(float32x2_t *result, int a2, float32x2_t a3)
{
  v3 = result;
  if (!a2)
  {
    if (result[6].i8[1] != 1)
    {
      return result;
    }

    v4 = result[6].u8[5];
    if (!result[6].i8[5])
    {
      if (result[13].i8[0] == 1 && result[13].i32[1] == 1)
      {
      }

      else
      {
        v4 = 0;
      }
    }

    goto LABEL_11;
  }

  result = RB::Stroke::Flattener<RB::Stroke::Particle>::flush_empty_line(result);
  if (result & 1) == 0 && (v3[6].i8[1])
  {
    v4 = 1;
LABEL_11:
    result = (*(**&v3[1] + 16))(*&v3[1], v3 + 8, v4, *&v3[7]);
    v3[6].i8[1] = 0;
    v3[6].i8[4] = 1;
  }

  return result;
}

uint64_t RB::Path::ClipStroke::KeyframeConsumer::moveto(void *a1, Point a2, __n128 a3)
{
  if (a1[42])
  {
    v5 = a3;
    (*(*a1 + 8))(a1);
    a3 = v5;
  }

  return RB::Path::Subpath::reset((a1 + 5), a2, a3.n128_f64[0], a3.n128_f64[1]);
}

uint64_t RB::Path::ClipStroke::KeyframeConsumer::closepath(RB::Path::ClipStroke::KeyframeConsumer *this)
{
  v2 = *(this + 42);
  if (v2)
  {
    v3 = *(this + 3);
    v4 = this + 72;
    if (*(this + 41))
    {
      v4 = *(this + 41);
    }

    v5 = &v4[8 * v2];
    if (v3.f64[0] != *(v5 - 2) || v3.f64[1] != *(v5 - 1))
    {
      RB::Path::Subpath::add_lineto(this + 40, v3, INFINITY);
    }
  }

  v7 = *(this + 2);
  v6 = *(this + 3);
  if (v6 > v7)
  {
    v7 = *(this + 3);
  }

  v8 = v7 - v6;
  v9 = v6 - 1;
  v10 = (16 * v6) | 8;
  while (v8)
  {
    v11 = vcvtms_u32_f32(*(*(this + 1) + v10));
    --v8;
    ++v9;
    v10 += 16;
    if (*(this + 4) < v11)
    {
      goto LABEL_14;
    }
  }

  v9 = v7;
LABEL_14:
  if (v9 == v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(this + 1) + 16 * v6;
  }

  (*(*this + 48))(this, v12, v9 - v6);
  result = RB::Path::Subpath::reset(this + 40, v15, 0.0, 0.0);
  v14 = *(this + 4) + 1;
  *(this + 3) = v9;
  *(this + 4) = v14;
  return result;
}

uint64_t RB::Path::ClipStroke::Transform::Transform(uint64_t result, uint64_t a2, int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float32_t a9, float32_t a10, double a11, uint64_t a12)
{
  *(result + 8) = a5;
  *(result + 16) = a6;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = a11;
  *(result + 328) = 0;
  *(result + 336) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
  *(result + 48) = 0;
  *(result + 344) = 32;
  *(result + 352) = 2;
  *(result + 356) = 0;
  *result = &unk_1F0A3F850;
  *(result + 360) = a2;
  *(result + 368) = a7;
  *(result + 376) = a8;
  *(result + 384) = a12;
  *(result + 392) = a3;
  if (a10 >= a9)
  {
    v12.f32[0] = a9;
  }

  else
  {
    v12.f32[0] = a10;
  }

  if (a9 < a10)
  {
    a9 = a10;
  }

  v12.f32[1] = a9;
  *(result + 400) = v12;
  *(result + 408) = a4;
  if ((a3 & 2) != 0)
  {
    __asm { FMOV            V1.2S, #1.0 }

    v12 = vminnm_f32(vmaxnm_f32(v12, 0), _D1);
    *(result + 400) = v12;
  }

  v18 = 0;
  v19 = vceq_f32(v12, 0x3F80000000000000);
  if ((vpmin_u32(v19, v19).u32[0] & 0x80000000) != 0 && !a8)
  {
    v18 = (a3 & 0x10) == 0;
  }

  *(result + 409) = v18;
  if ((a3 & 4) != 0)
  {
    v20 = 0;
  }

  else
  {
    v20 = v12.f32[0] >= v12.f32[1];
    if (v12.f32[0] >= 1.0)
    {
      v20 = 1;
    }

    if (v12.f32[1] <= 0.0)
    {
      v20 = 1;
    }

    if (a8)
    {
      v20 = 0;
    }
  }

  *(result + 410) = v20;
  return result;
}

{
  return RB::Path::ClipStroke::Transform::Transform(result, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t RB::Path::ClipStroke::Transform::moveto(uint64_t result, Point a2, __n128 a3)
{
  if (*(result + 409) == 1)
  {
    return (*(**(result + 360) + 16))();
  }

  if ((*(result + 410) & 1) == 0)
  {
    return RB::Path::ClipStroke::KeyframeConsumer::moveto(result, a2, a3);
  }

  return result;
}

float64_t RB::Path::ClipStroke::Transform::lineto(uint64_t a1, float64x2_t a2)
{
  if (*(a1 + 409) == 1)
  {
    (*(**(a1 + 360) + 24))();
  }

  else if ((*(a1 + 410) & 1) == 0)
  {
    a2.f64[0] = RB::Path::Subpath::add_lineto(a1 + 40, a2, INFINITY);
  }

  return a2.f64[0];
}

double RB::Path::ClipStroke::Transform::quadto(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  if (*(a1 + 409) == 1)
  {
    (*(**(a1 + 360) + 32))();
  }

  else if ((*(a1 + 410) & 1) == 0)
  {
    *a2.i64 = RB::Path::Subpath::add_quadto(a1 + 40, a2, a3, INFINITY);
  }

  return *a2.i64;
}

double RB::Path::ClipStroke::Transform::cubeto(uint64_t a1, int8x16_t a2, int8x16_t a3, int8x16_t a4)
{
  if (*(a1 + 409) == 1)
  {
    (*(**(a1 + 360) + 40))();
  }

  else if ((*(a1 + 410) & 1) == 0)
  {
    *a2.i64 = RB::Path::Subpath::add_cubeto(a1 + 40, a2, a3, a4, INFINITY);
  }

  return *a2.i64;
}

uint64_t RB::Path::ClipStroke::Transform::closepath(uint64_t this)
{
  if (*(this + 409) == 1)
  {
    return (*(**(this + 360) + 8))();
  }

  if ((*(this + 410) & 1) == 0)
  {
    return RB::Path::ClipStroke::KeyframeConsumer::closepath(this);
  }

  return this;
}

void RB::Path::ClipStroke::Transform::subpath_keyframes(uint64_t a1, char *a2, unint64_t a3, __n128 a4, double a5, double a6)
{
  v6 = a1;
  v72[3] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = (a2 + 4);
    v13 = INFINITY;
    v14 = -INFINITY;
    do
    {
      v15 = *(v12 - 1);
      if ((v15 & 2) != 0)
      {
        if (*v12 < v13)
        {
          v13 = *v12;
        }

        if (*v12 > v14)
        {
          v11 = v10;
          v14 = *v12;
        }
      }

      v9 |= v15;
      ++v10;
      v12 += 4;
    }

    while (a3 != v10);
    v16 = 0;
    v17 = *(a1 + 400);
    if (*&v17 != 0.0 && (v13 < INFINITY || v13 > INFINITY))
    {
      MEMORY[0x1EEE9AC00](a1, a2);
      v16 = v53;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v70 = 0u;
      v53[0] = *(v6 + 40);
      v70 = 0uLL;
      memset(&v53[1], 0, 24);
      *&v71 = 32;
      BYTE8(v71) = 2;
      v19 = &a2[16 * v18];
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v20 >= v21)
      {
        v22 = *(v19 + 2);
      }

      else
      {
        v22 = *(v19 + 3);
      }

      if (v21 >= v20)
      {
        v20 = *(v19 + 2);
      }

      v23 = (a2 + 12);
      v24 = a3;
      while (1)
      {
        if (v18)
        {
          v25 = *(v23 - 1);
          if (v22 <= v25 && v20 > v25)
          {
            break;
          }

          if (v22 <= *v23 && v20 > *v23)
          {
            break;
          }
        }

        v23 += 4;
        --v18;
        if (!--v24)
        {
          v28 = v20;
          v20 = v22;
          goto LABEL_43;
        }
      }

      v28 = v22;
LABEL_43:
      RB::Path::Subpath::append_logical_range(v53, (v6 + 40), (v20 - floor(v20)) * *(v6 + 64), (v28 - floor(v28)) * *(v6 + 64), 0);
      if (!*(&v70 + 1))
      {
        a1 = v70;
        if (v70)
        {
          free(v70);
        }

        v16 = 0;
      }
    }

    v37 = 0;
    a4.n128_u32[0] = *(v6 + 404);
    LODWORD(v17) = 1.0;
    if (a4.n128_f32[0] != 1.0)
    {
      a4.n128_u32[0] = -8388608;
      if (v14 != -INFINITY)
      {
        MEMORY[0x1EEE9AC00](a1, a2);
        v37 = &v53[-40];
        *&v53[-2] = 0u;
        *&v53[-8] = 0u;
        *&v53[-6] = 0u;
        *&v53[-12] = 0u;
        *&v53[-10] = 0u;
        *&v53[-16] = 0u;
        *&v53[-14] = 0u;
        *&v53[-20] = 0u;
        *&v53[-18] = 0u;
        *&v53[-24] = 0u;
        *&v53[-22] = 0u;
        *&v53[-28] = 0u;
        *&v53[-26] = 0u;
        *&v53[-32] = 0u;
        *&v53[-30] = 0u;
        *(v37 + 2) = 0u;
        *(v37 + 3) = 0u;
        *&v53[-4] = 0u;
        v38 = &v53[-4];
        *v37 = *(v6 + 40);
        v53[-4] = 0;
        v37[2] = 0;
        v37[3] = 0;
        v37[1] = 0;
        v53[-3] = 0;
        v53[-2] = 32;
        LOBYTE(v53[-1]) = 2;
        v39 = &a2[16 * v11];
        v41 = *(v39 + 2);
        v40 = *(v39 + 3);
        if (v40 >= v41)
        {
          v42 = *(v39 + 2);
        }

        else
        {
          v42 = *(v39 + 3);
        }

        if (v41 >= v40)
        {
          v40 = *(v39 + 2);
        }

        v43 = (a2 + 12);
        v44 = a3;
        while (1)
        {
          if (v11)
          {
            v45 = *(v43 - 1);
            if (v42 <= v45 && v40 > v45)
            {
              break;
            }

            if (v42 <= *v43 && v40 > *v43)
            {
              break;
            }
          }

          v43 += 4;
          --v11;
          if (!--v44)
          {
            v48 = v40;
            v40 = v42;
            goto LABEL_69;
          }
        }

        v48 = v42;
LABEL_69:
        RB::Path::Subpath::append_logical_range(&v53[-40], (v6 + 40), (v40 - floor(v40)) * *(v6 + 64), (v48 - floor(v48)) * *(v6 + 64), 0);
        if (!v53[-3])
        {
          if (*v38)
          {
            free(*v38);
          }

          v37 = 0;
        }
      }
    }

    memset(v72, 0, 24);
    RB::Path::ClipStroke::Transform::emit(v6, (v6 + 40), a2, a3, v9, v72, v16, v37, a4, v17, a6);
    if (v72[0])
    {
      free(v72[0]);
    }

    if (v37)
    {
      v49 = v37[36];
      if (v49)
      {
        free(v49);
      }
    }

    if (v16)
    {
      v50 = v16[36];
      if (v50)
      {
        free(v50);
      }
    }
  }

  else
  {
    if ((*(a1 + 392) & 0x10) != 0)
    {
      return;
    }

    v29 = *(a1 + 376);
    if (!v29)
    {
      goto LABEL_82;
    }

    v30 = *(a1 + 368);
    v31 = &v30[8 * v29];
    do
    {
      v32 = v29 >> 1;
      v33 = &v30[8 * (v29 >> 1)];
      v35 = *v33;
      v34 = v33 + 8;
      v29 += ~(v29 >> 1);
      if (v35 < *(a1 + 32))
      {
        v30 = v34;
      }

      else
      {
        v29 = v32;
      }
    }

    while (v29);
    if (v30 != v31 && *v30 == *(a1 + 32))
    {
      if (v30[7])
      {
        return;
      }

      v36 = (v30 + 1);
    }

    else
    {
LABEL_82:
      v36 = 0;
    }

    v51 = *(a1 + 360);
    v52 = a1 + 40;

    RB::Path::Subpath::replay(v52, v51, 1, v36);
  }
}

void RB::Path::ClipStroke::Transform::emit(uint64_t a1, double *a2, char *a3, unint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, double a10, double a11)
{
  v33 = *MEMORY[0x1E69E9840];
  if ((a5 & 8) != 0)
  {

    RB::Path::ClipStroke::Transform::emit_bisections(a1, a2, a3, a4, a6, a7, a8);
  }

  else if (a5)
  {

    RB::Path::ClipStroke::Transform::emit_corners(a1, a2, a3, a4, a6, a7, a8, a9.n128_f64[0], a10, a11);
  }

  else
  {
    v28 = 0.0;
    v29 = 0.0;
    if (RB::Path::ClipStroke::Transform::make_keyframes(a1, a3, a4, a2, a6, &v29, &v28, a9))
    {
      v16.i32[0] = *(a1 + 400);
      v16.i32[1] = HIDWORD(v29);
      v17.i32[0] = LODWORD(v29);
      v17.i32[1] = HIDWORD(*(a1 + 400));
      v18 = vbsl_s8(vcgt_f32(v17, v16), *&v29, *(a1 + 400));
      if ((*(a1 + 392) & 4) != 0)
      {
        v19 = *v18.i32 <= *&v18.i32[1];
      }

      else
      {
        v19 = *v18.i32 < *&v18.i32[1];
      }

      if (v19)
      {
        RB::Path::ClipStroke::Transform::Clipper::Clipper(v30, a1, a2, a7, a8, *a6, *(a6 + 8), v29, v28);
        RB::Path::ClipStroke::Transform::Clipper::run(v30, v20, v21, v22, v23, v24, v25, v26);
        if (v32)
        {
          free(v32);
        }

        if (v31)
        {
          free(v31);
        }
      }
    }

    else
    {
      v27 = *(a1 + 360);

      RB::Path::Subpath::replay(a2, v27, 1, 0);
    }
  }
}

void RB::Path::ClipStroke::Transform::emit_bisections(uint64_t a1, double *a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  v37 = *MEMORY[0x1E69E9840];
  *v25 = *a2;
  v26 = 0;
  v27 = 0;
  memset(&v25[1], 0, 24);
  v28 = 32;
  v29 = 2;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 4;
  v34 = 1;
  memset(v35, 0, sizeof(v35));
  v36 = 0u;
  v14 = 0;
  if (a4)
  {
    v15 = 0;
    do
    {
      v16 = &a3[16 * v15];
      if ((*v16 & 8) != 0)
      {
        v17 = v16[3] - v16[2];
        v18 = v17;
        if (v17 < -0.5)
        {
          v18 = v18 + 1.0;
        }

        if (v17 <= 0.5)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17 + -1.0;
        }

        if (v19 >= 0.0)
        {
          v20 = v16[2];
        }

        else
        {
          v20 = v16[3];
        }

        if (v19 >= 0.0)
        {
          v21 = v16[3];
        }

        else
        {
          v21 = v16[2];
        }

        RB::Path::ClipStroke::Transform::emit(a1, v25, v35[0], v35[1], v22, a5, a6, a7);
        a3 = v35[0];
        v35[0] = v35[3];
        v35[3] = a3;
        v24 = v35[1];
        v23 = *&v35[1];
        *&v35[1] = v36;
        v36 = v23;
        std::swap[abi:nn200100]<RB::Path::Subpath>(a2, v25);
        v10 = v24;
        if ((v14 & 8) == 0)
        {
          break;
        }

        v14 = 0;
        v15 = 1;
      }

      else
      {
        v14 = *v16 | v14;
        ++v15;
      }
    }

    while (v15 < v10);
  }

  RB::Path::ClipStroke::Transform::emit(a1, a2, a3, v10, v14, a5, a6, a7);
  if (v35[3])
  {
    free(v35[3]);
  }

  if (v35[0])
  {
    free(v35[0]);
  }

  if (v31)
  {
    free(v31);
  }

  if (v26)
  {
    free(v26);
  }
}

void RB::Path::ClipStroke::Transform::emit_corners(float32x2_t *a1, double *a2, char *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  v13 = a4;
  v77 = *MEMORY[0x1E69E9840];
  *v65 = *a2;
  v66 = 0;
  v67 = 0;
  memset(&v65[1], 0, 24);
  v68 = 32;
  v69 = 2;
  v70 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 4;
  v74 = 1;
  HIDWORD(v17) = 0;
  memset(v75, 0, sizeof(v75));
  v76 = 0u;
  if (a4)
  {
    v18 = 0;
    __asm
    {
      FMOV            V18.2D, #-1.0
      FMOV            V19.2D, #1.0
    }

    v61 = _Q19;
    v62 = _Q18;
    do
    {
      if (v18)
      {
        v24 = &a3[16 * v18];
        if ((*v24 & 1) != 0 && v18 + 1 != v13)
        {
          LODWORD(v17) = *(v24 + 5);
          v26 = *(v24 - 3);
          if (*&v17 >= v26)
          {
            LODWORD(a10) = *(v24 - 3);
          }

          else
          {
            LODWORD(a10) = *(v24 + 5);
          }

          if (v26 >= *&v17)
          {
            LODWORD(v17) = *(v24 - 3);
          }

          v27 = a1[50];
          a10 = COERCE_DOUBLE(vcge_f32(v27, vdup_lane_s32(*&a10, 0)));
          v28 = vand_s8(*&a10, vcge_f32(vdup_lane_s32(*&v17, 0), v27));
          v17 = COERCE_DOUBLE(vpmax_u32(v28, v28));
          if ((LODWORD(v17) & 0x80000000) != 0)
          {
            v29 = 0;
            v30 = *(v24 + 2);
            v31 = *(v24 + 3);
            a10 = INFINITY;
            v32 = (v31 - v30);
            v33 = v32 + 1.0;
            if ((v31 - v30) >= -0.5)
            {
              v33 = (v31 - v30);
            }

            v34 = v32 + -1.0;
            if ((v31 - v30) <= 0.5)
            {
              v35 = v33;
            }

            else
            {
              v35 = v34;
            }

            if (v35 >= 0.0)
            {
              v36 = *(v24 + 2);
            }

            else
            {
              v36 = *(v24 + 3);
            }

            if (v35 < 0.0)
            {
              v31 = *(v24 + 2);
            }

            v17 = 0.0;
            v37 = 0.0;
            v38 = INFINITY;
            do
            {
              if (v18 != v29)
              {
                v39 = &a3[16 * v29];
                v40 = (v39 + 8);
                v41 = (v39 + 12);
                v42 = 1;
                do
                {
                  v43 = v42 & 1;
                  if (v42)
                  {
                    v44 = v40;
                  }

                  else
                  {
                    v44 = v41;
                  }

                  v46.i32[0] = *v44;
                  v45.f32[0] = v31;
                  v45.i32[1] = *v44;
                  v46.f32[1] = v36;
                  if (v43)
                  {
                    v47 = v41;
                  }

                  else
                  {
                    v47 = v40;
                  }

                  v48 = vsub_f32(v46, v45);
                  v49 = vcvtq_f64_f32(v48);
                  v50 = vcgt_f32(v48, 0x3F0000003F000000);
                  v51.i64[0] = v50.i32[0];
                  v51.i64[1] = v50.i32[1];
                  v52 = v51;
                  v53 = vcgt_f32(0xBF000000BF000000, v48);
                  v51.i64[0] = v53.i32[0];
                  v51.i64[1] = v53.i32[1];
                  v54 = vbslq_s8(v52, vaddq_f64(v49, _Q18), vbslq_s8(v51, vaddq_f64(v49, _Q19), v49));
                  v55 = vmovn_s64(vmvnq_s8(vcltzq_f64(v54)));
                  if ((v55.i8[4] & (v54.f64[1] < a10)) != 0)
                  {
                    a10 = v54.f64[1];
                    v17 = *v47;
                  }

                  if ((v55.i8[0] & (v54.f64[0] < v38)) != 0)
                  {
                    v38 = v54.f64[0];
                    v37 = *v47;
                  }

                  v42 = 0;
                }

                while (v43);
              }

              ++v29;
            }

            while (v29 != v13);
            if (a10 != INFINITY)
            {
              HIDWORD(a10) = 2146435072;
              if (v38 < INFINITY || v38 > INFINITY)
              {
                v56 = v17;
                v63 = v36;
                RB::Path::ClipStroke::Transform::emit(a1, v65, v75[0], v75[1], v57, a5, a6, a7);
                v58 = v37;
                a3 = v75[0];
                v75[0] = v75[3];
                v75[3] = a3;
                v64 = v75[1];
                v60 = *&v75[1];
                *&v75[1] = v76;
                v76 = v60;
                std::swap[abi:nn200100]<RB::Path::Subpath>(a2, v65);
                HIDWORD(v17) = HIDWORD(v64);
                v13 = v64;
                if ((v59 & 1) == 0)
                {
                  break;
                }

                v18 = 0;
                _Q19 = v61;
                _Q18 = v62;
              }
            }
          }
        }
      }

      ++v18;
    }

    while (v18 < v13);
  }

  RB::Path::ClipStroke::Transform::emit(a1, a2, a3, v13, 0, a5, a6, a7);
  if (v75[3])
  {
    free(v75[3]);
  }

  if (v75[0])
  {
    free(v75[0]);
  }

  if (v71)
  {
    free(v71);
  }

  if (v66)
  {
    free(v66);
  }
}

BOOL RB::Path::ClipStroke::Transform::make_keyframes(float32x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, unint64_t *a6, double *a7, __n128 a8)
{
  a8.n128_u64[0] = 0xFF8000007F800000;
  v29 = 0xFF8000007F800000;
  v30 = 0.0;
  v31 = 0.0;
  result = 0;
  if (single_keyframes)
  {
    v16 = a5[1];
    v17 = v16 >= 2;
    v18 = v16 - 2;
    if (v17 && v18)
    {
      v19 = *(*a5 + 32);
      v13.i32[0] = *(*a5 + 8);
      v20 = v29;
      v21 = (*a5 + 56);
      do
      {
        v22 = v19;
        v19 = *v21;
        if (v22 > *&v20 && v22 < *(&v20 + 1))
        {
          if (v22 >= *v13.i32)
          {
            v14.i32[0] = v13.i32[0];
          }

          else
          {
            *v14.i32 = v22;
          }

          if (v19 < *v14.i32)
          {
            v14.i32[0] = *v21;
          }

          if (*v13.i32 < v22)
          {
            *v13.i32 = v22;
          }

          if (*v13.i32 < v19)
          {
            v13.i32[0] = *v21;
          }

          v24 = a1[50];
          v14 = vcgt_f32(vdup_lane_s32(v14, 0), v24);
          v25 = vorr_s8(v14, vcgt_f32(v24, vdup_lane_s32(v13, 0)));
          v13 = vpmin_u32(v25, v25);
          if (v13.i32[0] < 0)
          {
            *(v21 - 6) = INFINITY;
          }
        }

        v21 += 6;
        *v13.i32 = v22;
        --v18;
      }

      while (v18);
    }

    *a6 = v29;
    v26 = 0.0;
    if (v31 > 0.0)
    {
      v27 = vrecpe_f32(LODWORD(v31));
      v28 = vmul_f32(vrecps_f32(LODWORD(v31), v27), v27);
      v26 = v30 * vmul_f32(v28, vrecps_f32(LODWORD(v31), v28)).f32[0];
    }

    *a7 = v26;
    return a5[1] != 0;
  }

  return result;
}

void RB::Path::ClipStroke::Transform::Clipper::run(RB::Path::ClipStroke::Transform::Clipper *this, double a2, double a3, double a4, double a5, double a6, float64x2_t a7, float64x2_t a8)
{
  v9 = *(this + 14);
  v10 = *(this + 11);
  v11 = *(this + 2);
  v12 = *(v11 + 8);
  *&v43[0].v = v12;
  if (*(v11 + 296) >= 1)
  {
    if (*(v11 + 288))
    {
      v13 = *(v11 + 288);
    }

    else
    {
      v13 = v11 + 32;
    }

    do
    {
      v14 = *v13;
      switch(v14)
      {
        case 4:
          v19 = *(v13 + 16);
          *&v41[0].v = *(v13 + 32);
          *&v42[0].v = v19;
          *&v40[0].v = *(v13 + 48);
          CG::Cubic::Cubic(&v33, v43, v42, v41, v40);
          if (v9 <= v10)
          {
            RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Cubic>(this, &v33);
          }

          else
          {
            v20 = *(v13 + 8);
            v48 = v37;
            v49 = v38;
            v50 = v39;
            *&v44[0].v = v33;
            v45 = v34;
            v46 = v35;
            v47 = v36;
            RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Cubic>(this, v44, v20);
          }

          v12.f64[1] = *&v40[2].v;
          *&v43[0].v = *&v40[0].v;
          v13 += 64;
          break;
        case 3:
          v17 = *(v13 + 16);
          *&v41[0].v = *(v13 + 32);
          *&v42[0].v = v17;
          CG::Quadratic::Quadratic(&v33, v43, v42, v41);
          if (v9 <= v10)
          {
            RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::Quadratic>(this, &v33);
          }

          else
          {
            v18 = *(v13 + 8);
            v46 = v35;
            v47 = v36;
            v48 = v37;
            *&v44[0].v = v33;
            v45 = v34;
            RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::Quadratic>(this, v44, v18);
          }

          v12.f64[1] = *&v41[2].v;
          *&v43[0].v = *&v41[0].v;
          v13 += 48;
          break;
        case 2:
          v15 = *(v13 + 16);
          v16 = *(v13 + 8);
          *&v44[0].v = *&v43[0].v;
          v45 = v15;
          v32 = v15;
          if (v9 <= v10)
          {
            RB::Path::ClipStroke::Transform::Clipper::emit_segment<CG::LineSegment>(this, v44, *&v43[0].v, a3, *&v15, a5, v16, a7, a8);
          }

          else
          {
            RB::Path::ClipStroke::Transform::Clipper::split_segment<CG::LineSegment>(this, *&v43[0].v, *&v43[2].v, *&v15, *(&v15 + 1), v16, a7, a8);
          }

          v12.f64[1] = *(&v32 + 1);
          *&v43[0].v = v32;
          v13 += 32;
          break;
      }

      v21 = *(v11 + 288);
      if (!v21)
      {
        v21 = v11 + 32;
      }
    }

    while (v13 < v21 + 8 * *(v11 + 296));
  }

  if (*(this + 140) == 1)
  {
    v12.f64[0] = *(this + 28);
    if ((*&v12.f64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v22 = *(this + 29);
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v23 = *(this + 23);
        if (v12.f64[0] != v23 || (v12.f64[0] = *(this + 24), v22 != v12.f64[0]))
        {
          if (*(this + 141))
          {
            *(this + 141) = 1;
            LODWORD(v12.f64[0]) = *(this + 66);
          }

          else
          {
            LODWORD(v12.f64[0]) = *(this + 66);
            v22 = *(this + 1);
            v23 = 0.0;
            if (*&v22 >= 0.0)
            {
              LODWORD(v23) = *(this + 1);
            }

            LODWORD(v22) = HIDWORD(*(this + 1));
            LODWORD(a5) = 1.0;
            if (*(&v22 + 1) > 1.0)
            {
              *&v22 = 1.0;
            }

            v24 = *&v23 >= *v12.f64;
            if (*&v22 <= *v12.f64)
            {
              v24 = 1;
            }

            *(this + 141) = v24;
            if (!v24)
            {
              goto LABEL_48;
            }
          }

          *(this + 34) = LODWORD(v12.f64[0]);
          v25 = *(this + 37);
          if (*(this + 36))
          {
            v26 = *(this + 36);
          }

          else
          {
            v26 = (this + 272);
          }

          if (v25)
          {
            v27 = *(this + 21);
            v28 = 4 * v25;
            do
            {
              v29 = *v26;
              v30 = v27 + 1;
              if (*(this + 22) < v27 + 1)
              {
                RB::vector<unsigned int,4ul,unsigned long>::reserve_slow(this + 144, v30);
                v27 = *(this + 21);
                v30 = v27 + 1;
              }

              v31 = *(this + 20);
              if (!v31)
              {
                v31 = this + 144;
              }

              *&v31[4 * v27] = v29;
              *(this + 21) = v30;
              ++v26;
              v27 = v30;
              v28 -= 4;
            }

            while (v28);
          }

          v12 = RB::Path::ClipStroke::Transform::Clipper::emit_cap(this, this + 14, this + 15, *(this + 268), *(this + 32), v22, v23, a5, a6, a7, a8);
        }
      }
    }

LABEL_48:
    (*(**(*this + 360) + 8))(*(*this + 360), v12);
  }
}

uint64_t RB::Path::ClipStroke::anonymous namespace::BisectState::cut_range(void *a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float a7, float a8)
{
  RB::Path::Subpath::reset(a1, a2, 0.0, 0.0);
  a1[53] = 0;
  v16 = a2[3];
  v17 = v16 * (a7 - floor(a7));
  v18 = a8 - floor(a8);
  if (v18 != 0.0)
  {
    v16 = v16 * v18;
  }

  RB::Path::Subpath::append_range(a1, a2, v17, v16, (a1 + 40));
  RB::Path::Subpath::close(a1, v19);
  v20.n128_u64[0] = a1[3];
  a1[57] = 0;
  v21 = 0;
  if (a4)
  {
    v22 = ~a6;
    v23 = (a3 + 8);
    v38 = 1.0 / v20.n128_f64[0];
    do
    {
      v24 = *(v23 - 2);
      v25 = *(v23 - 1);
      if (a5)
      {
        v26 = -1;
      }

      else
      {
        v26 = v22;
      }

      v27 = a2[3];
      v28 = (*v23 - floor(*v23)) * v27;
      v29 = (v23[1] - floor(v23[1])) * v27;
      v20.n128_f64[0] = v28;
      RB::Path::Subpath::DistanceMap::operator()((a1 + 40), v20);
      v41 = v30;
      v31.n128_f64[0] = v29;
      RB::Path::Subpath::DistanceMap::operator()((a1 + 40), v31);
      v32.f64[0] = v41;
      if (v41 >= INFINITY && v41 <= INFINITY && v28 == 0.0)
      {
        v39 = v20;
        v20.n128_f64[0] = a2[3];
        RB::Path::Subpath::DistanceMap::operator()((a1 + 40), v20);
        v32.f64[0] = v33;
        v20 = v39;
      }

      if (v20.n128_f64[0] >= INFINITY && v20.n128_f64[0] <= INFINITY && v29 == 0.0)
      {
        v20.n128_f64[0] = a2[3];
        v42 = v32.f64[0];
        RB::Path::Subpath::DistanceMap::operator()((a1 + 40), v20);
        v32.f64[0] = v42;
      }

      if (v32.f64[0] != INFINITY && v20.n128_f64[0] != INFINITY)
      {
        v34 = a1[57];
        v35 = v34 + 1;
        if (a1[58] < (v34 + 1))
        {
          v40 = v20.n128_u64[0];
          v43 = v32.f64[0];
          RB::vector<std::pair<unsigned long,unsigned long>,0ul,unsigned long>::reserve_slow((a1 + 56), v35);
          v20.n128_u64[0] = v40;
          v32.f64[0] = v43;
          v34 = a1[57];
          v35 = v34 + 1;
        }

        *&v32.f64[1] = v20.n128_u64[0];
        v20 = vmulq_n_f64(v32, v38);
        v36 = (a1[56] + 16 * v34);
        v36->i32[0] = v26 & v24;
        v36->i32[1] = v25;
        v36[1] = vcvt_f32_f64(v20);
        a1[57] = v35;
        v21 = v26 & v24 | v21;
      }

      --a5;
      v23 += 4;
      --a4;
    }

    while (a4);
  }

  return v21;
}