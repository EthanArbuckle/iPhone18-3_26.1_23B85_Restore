void sub_25FB06D8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

CGColorSpace **TXTextLayout::buildHGNodeForOutline(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, _OWORD *a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  v14 = MEMORY[0x28223BE20](a1);
  v16 = v15;
  v88 = v18;
  v89 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = v14;
  v90 = v28;
  v110 = *MEMORY[0x277D85DE8];
  RequestedColorDescription = LiAgent::getRequestedColorDescription(v21);
  OZEaseInInterpolator::~OZEaseInInterpolator(RequestedColorDescription);
  v31 = v30;
  DynamicRange = FxColorDescription::getDynamicRange(RequestedColorDescription);
  ToneMapMethod = FxColorDescription::getToneMapMethod(RequestedColorDescription);
  PCWorkingColor::PCWorkingColor(&v107, v31, DynamicRange, ToneMapMethod);
  v106 = 0;
  v34 = *v26;
  *&v109.var0.var0 = *v24;
  v109.var0.var3 = v24[2];
  if (TXTextObject::isOutlineVisible(v34, &v109, &v107, &v106))
  {
    if (OZChannel::getValueAsInt((v27 + 20464), MEMORY[0x277CC08F0], 0.0) != 3 && OZChannel::getValueAsInt((v27 + 20464), MEMORY[0x277CC08F0], 0.0) != 4 && LiAgent::haveROI(v22))
    {
      if (OZRenderParams::getTextRenderQuality(v24))
      {
        v35 = a10[5];
        v105[4] = a10[4];
        v105[5] = v35;
        v36 = a10[7];
        v105[6] = a10[6];
        v105[7] = v36;
        v37 = a10[1];
        v105[0] = *a10;
        v105[1] = v37;
        v38 = a10[3];
        v105[2] = a10[2];
        v105[3] = v38;
      }

      else
      {
        LiAgent::getObjectToPixelTransform(v22, v105);
      }

      OZRenderState::OZRenderState(&v109, v24);
      v109.var4 = 1;
      TXTextObject::getImageBounds(*v26, &v109, &v103);
      v92 = 0.0;
      v102 = 0.0;
      v39 = *v26;
      v101 = *v24;
      TXTextObject::getOutlineBlur(v39, &v101, &v92, &v102);
      v40.f64[0] = v92;
      v40.f64[1] = v102;
      __asm { FMOV            V2.2D, #3.0 }

      v46 = vaddq_f64(vdupq_lane_s64(v106, 0), vmulq_f64(v40, _Q2));
      __asm { FMOV            V1.2D, #2.0 }

      v48 = vaddq_f64(v46, _Q1);
      v103 = vsubq_f64(v103, v48);
      v104 = vsubq_f64(v104, vsubq_f64(vnegq_f64(v48), v48));
      PCMatrix44Tmpl<double>::operator*(v105, a9, v99);
      PCMatrix44Tmpl<double>::operator*(v99, v16, &v101);
      LiAgent::getROI(v22, v99);
      v49.i64[0] = v99[0].n128_i32[0];
      v49.i64[1] = v99[0].n128_i32[1];
      v96 = vcvtq_f64_s64(v49);
      v97 = v99[0].n128_i32[2];
      v98 = v99[0].n128_i32[3];
      if ((v99[0].n128_u32[2] & 0x80000000) == 0 && (v99[0].n128_u32[3] & 0x80000000) == 0)
      {
        LiImagePolygon::LiImagePolygon(v99);
        LiImagePolygon::set(v99, v103.f64, 0);
        liTransformAndClip(v96.f64, &v101.value, v99);
        if (((v100[1] - *v100) & 0x1FFFFFFFE0) == 0)
        {
          *v90 = 0.0;
          LiImagePolygon::~LiImagePolygon(v99);
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v108);
        }

        LiImagePolygon::~LiImagePolygon(v99);
      }
    }

    v50 = *(*v26 + 264);
    if (v50)
    {
      v52 = *(v50 + 8);
      v51 = *(v50 + 16);
      if (v51)
      {
        v87 = v51;
        atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      v87 = 0;
      v52 = 0;
    }

    ValueAsInt = OZChannel::getValueAsInt((v52 + 22760), MEMORY[0x277CC08F0], 0.0);
    isColorAnimated = TXTextLayout::isColorAnimated(v27, (v52 + 23016), (v52 + 26824), ValueAsInt, 1012, 1013);
    v102 = 0.0;
    PCWorkingColorVector::PCWorkingColorVector(&v103);
    v96 = xmmword_260343AA0;
    v94 = 1.0;
    v95 = 1.0;
    v92 = 0.0;
    v93 = 0;
    v91 = 0;
    LOBYTE(v86) = a14;
    if (TXTextLayout::getCachedTextureOrImage(v27, *v26, v24, v22, 1u, isColorAnimated, a9, a10, &v103, &v95, &v94, &v96, v86, &v92, &v91, 1))
    {
      TXTextLayout::makeHGTextureOrBitmapNode(v24, &v92, &v91, &v96, v22, a14, &v109);
      var0 = v109.var0.var0;
      if (*&v102 == v109.var0.var0)
      {
        if (v102 != 0.0)
        {
          (*(*v109.var0.var0 + 24))(v109.var0.var0);
        }
      }

      else
      {
        if (v102 != 0.0)
        {
          (*(**&v102 + 24))();
        }

        v102 = *&var0;
        v109.var0.var0 = 0;
      }

      v56 = a11;
      *a11 = 1.0 / v95;
      *(a11 + 40) = 1.0 / v94;
      v109.var7.var0[1][2] = 1.0;
      v109.var7.var0[0][1] = 1.0;
      v109.var3 = 1.0;
      v109.var0.var0 = 0x3FF0000000000000;
      memset(&v109.var0.var1, 0, 32);
      memset(&v109.var4, 0, 32);
      memset(&v109.var7.var0[0][2], 0, 32);
      if (!*v20)
      {
        PCMatrix44Tmpl<double>::operator*(a10, a9, v99);
        PCMatrix44Tmpl<double>::operator*(v99, v16, &v101);
        PCMatrix44Tmpl<double>::operator*(&v101, a11, v105);
        for (i = 0; i != 8; i += 2)
        {
          v58 = (&v109.var0.var0 + i * 16);
          v59 = v105[i + 1];
          *v58 = v105[i];
          v58[1] = v59;
        }
      }

      if (!PCMatrix44Tmpl<double>::isIdentity(&v109.var0.var0))
      {
        v60.i64[0] = SLODWORD(v96.f64[1]);
        v60.i64[1] = SHIDWORD(v96.f64[1]);
        __asm { FMOV            V2.2D, #0.5 }

        v62 = vmulq_f64(vcvtq_f64_s64(v60), _Q2);
        v60.i64[0] = SLODWORD(v96.f64[0]);
        v60.i64[1] = SHIDWORD(v96.f64[0]);
        v101.value = vcvt_f32_f64(vaddq_f64(v62, vcvtq_f64_s64(v60)));
        LiAgent::makeHeliumXForm(v22, &v109, &v102, v105);
        v63 = *v105;
        if (*&v102 == *&v105[0])
        {
          if (v102 != 0.0)
          {
            (*(**&v105[0] + 24))(*&v105[0]);
          }
        }

        else
        {
          if (v102 != 0.0)
          {
            (*(**&v102 + 24))();
            v63 = *v105;
          }

          v102 = v63;
        }
      }

      if (v91)
      {
        (*(*v91 + 24))(v91);
      }

      if (v93)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v93);
      }

      if (*v20)
      {
        v64 = *(*v26 + 264);
        if (v64)
        {
          v65 = *(v64 + 8);
          v66 = *(v64 + 16);
          if (v66)
          {
            atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        else
        {
          v66 = 0;
          v65 = 0;
        }

        if (OZChannel::getValueAsInt((v65 + 22760), MEMORY[0x277CC08F0], 0.0) == 2)
        {
          v67 = TXTextStyle::hasTexture(v65, (v65 + 25232));
        }

        else
        {
          v67 = 0;
        }

        **v20 = v89;
        LiAgent::getObjectToPixelTransform(v22, v105);
        PCMatrix44Tmpl<double>::operator*(v105, a9, &v109);
        v68 = *v20;
        v69 = (*v20 + 8);
        if (&v109 != v69)
        {
          v70 = 0;
          v71 = &v109;
          do
          {
            for (j = 0; j != 32; j += 8)
            {
              *(&v69->var0.var0 + j) = *(&v71->var0.var0 + j);
            }

            ++v70;
            v69 = (v69 + 32);
            v71 = (v71 + 32);
          }

          while (v70 != 4);
        }

        v73 = v68 + 34;
        if (v68 + 34 != v16)
        {
          for (k = 0; k != 4; ++k)
          {
            for (m = 0; m != 8; m += 2)
            {
              *&v73[m] = *(v16 + m * 4);
            }

            v73 += 8;
            v16 += 2;
          }
        }

        *(v68 + 465) = 1;
        v76 = v68 + 66;
        if (v68 + 66 != a11)
        {
          for (n = 0; n != 4; ++n)
          {
            for (ii = 0; ii != 8; ii += 2)
            {
              *&v76[ii] = *(v56 + ii * 4);
            }

            v76 += 8;
            v56 += 32;
          }
        }

        if (v88)
        {
          *(v68 + 98) = v103;
        }

        else
        {
          PCHashWriteStream::PCHashWriteStream(&v109);
          PCHashWriteStream::writeValue(&v109, v89);
          PCHashWriteStream::close(&v109);
          PCWorkingColorVector::PCWorkingColorVector(v105);
          Hash = PCHashWriteStream::getHash(&v109);
          v105[0] = *Hash->i8;
          *(*v20 + 392) = *Hash->i8;
          PCHashWriteStream::~PCHashWriteStream(&v109);
        }

        v80 = *v20;
        *(*v20 + 456) = 1;
        v82 = *v26;
        v81 = *(v26 + 8);
        if (v81)
        {
          atomic_fetch_add_explicit((v81 + 8), 1uLL, memory_order_relaxed);
        }

        v83 = *(v80 + 480);
        *(v80 + 472) = v82;
        *(v80 + 480) = v81;
        if (v83)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v83);
        }

        PCWorkingColor::operator=((*v20 + 408), &v107);
        v84 = *v20;
        *(v84 + 460) = 1;
        *(v84 + 464) = v67;
        if (v66)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v66);
        }
      }

      *v90 = v102;
    }

    else
    {
      memset(&v109.var0.var1, 0, 32);
      *&v109.var0.var0 = v95;
      v109.var3 = v94;
      memset(&v109.var4, 0, 32);
      memset(&v109.var7.var0[0][2], 0, 32);
      v109.var7.var0[0][1] = 1.0;
      v109.var7.var0[1][2] = 1.0;
      if (fabs(v95) >= 0.0000001 && fabs(v94) >= 0.0000001)
      {
        TXTextLayout::outlineNodeFromTextObject(v27, v26, v24, v22, a12, isColorAnimated, &v107, &v109, &v96);
      }

      *v90 = 0.0;
      if (v91)
      {
        (*(*v91 + 24))(v91);
      }

      if (v93)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v93);
      }

      if (v102 != 0.0)
      {
        (*(**&v102 + 24))(COERCE_FLOAT64_T(*&v102));
      }
    }

    if (v87)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v87);
    }
  }

  else
  {
    *v90 = 0.0;
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v108);
}

void sub_25FB07B04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void TXTextLayout::buildHGNodeForFace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 *a9, uint64_t a10, uint64_t a11, unsigned __int8 *a12, uint64_t a13, unsigned __int8 a14, char a15)
{
  v15 = MEMORY[0x28223BE20](a1);
  v17 = v16;
  v19 = v18;
  v80 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v81 = v27;
  v28 = v15;
  v30 = v29;
  v113 = *MEMORY[0x277D85DE8];
  OZRenderParams::OZRenderParams(v103, v25);
  RequestedColorDescription = LiAgent::getRequestedColorDescription(v24);
  OZEaseInInterpolator::~OZEaseInInterpolator(RequestedColorDescription);
  v33 = v32;
  DynamicRange = FxColorDescription::getDynamicRange(RequestedColorDescription);
  ToneMapMethod = FxColorDescription::getToneMapMethod(RequestedColorDescription);
  PCWorkingColor::PCWorkingColor(&v101, v33, DynamicRange, ToneMapMethod);
  v36 = *v81;
  v104 = v103[0];
  if ((TXTextObject::isFaceVisible(v36, &v104, &v101, (a12 + 8), *(a12 + 17), *(a12 + 16)) & 1) == 0)
  {
    *v30 = 0;
    goto LABEL_74;
  }

  hasParameter = OZRenderParams::hasParameter(v26, kTXIsBestModeUnitTest);
  v37 = *(*v81 + 264);
  v38 = *(v37 + 8);
  v39 = *(v37 + 16);
  if (v39)
  {
    atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v78 = v39;
  OZChannel::getValueAsInt((v38 + 6088), MEMORY[0x277CC08F0], 0.0);
  v77 = v30;
  v40 = *a12;
  PCWorkingColorVector::PCWorkingColorVector(&v100);
  v41 = a11;
  v99 = xmmword_260343AA0;
  v98 = 1.0;
  v97 = 1.0;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  if (hasParameter)
  {
    v85 = 0;
    TXTextLayout::getLiImageSourceForFace(v28, v103, RequestedColorDescription, v81, &v101, &v85);
  }

  LOBYTE(v76) = a14;
  if ((TXTextLayout::getCachedTextureOrImage(v28, *v81, v103, v24, 0, v40, a9, a10, &v100, &v98, &v97, &v99, v76, &v95, &v94, a15) & 1) == 0)
  {
    memset(&v86[8], 0, 32);
    *v86 = v98;
    v87 = v97;
    v88 = 0u;
    v89 = 0u;
    v91 = 0u;
    v92 = 0u;
    v90 = 0x3FF0000000000000;
    v93 = 0x3FF0000000000000;
    if (fabs(v98) >= 0.0000001 && fabs(v97) >= 0.0000001)
    {
      v85 = 0;
      TXTextLayout::getLiImageSourceForFace(v28, v103, RequestedColorDescription, v81, &v101, &v85);
    }

    *v77 = 0;
    goto LABEL_68;
  }

  TXTextLayout::makeHGTextureOrBitmapNode(v103, &v95, &v94, &v99, v24, a14, &v104);
  value = v104.value;
  *a11 = 1.0 / v98;
  *(a11 + 40) = 1.0 / v97;
  v112 = 0x3FF0000000000000;
  v109 = 0x3FF0000000000000;
  v106 = 0x3FF0000000000000;
  v104.value = 0x3FF0000000000000;
  *&v104.timescale = 0u;
  v105 = 0u;
  v107 = 0u;
  v108 = 0u;
  v110 = 0u;
  v111 = 0u;
  if (!*v22)
  {
    PCMatrix44Tmpl<double>::operator*(a10, a9, v86);
    PCMatrix44Tmpl<double>::operator*(v86, a11, &v83);
    for (i = 0; i != 128; i += 32)
    {
      v44 = (&v104.value + i);
      v45 = *(&v83 + i + 16);
      *v44 = *(&v83 + i);
      v44[1] = v45;
    }
  }

  if (!PCMatrix44Tmpl<double>::isIdentity(&v104.value))
  {
    *&v83 = value;
    if (value)
    {
      (*(*value + 16))(value);
    }

    v46.i64[0] = SDWORD2(v99);
    v46.i64[1] = SHIDWORD(v99);
    __asm { FMOV            V2.2D, #0.5 }

    v52 = vmulq_f64(vcvtq_f64_s64(v46), _Q2);
    v46.i64[0] = v99;
    v46.i64[1] = SDWORD1(v99);
    *v86 = vcvt_f32_f64(vaddq_f64(v52, vcvtq_f64_s64(v46)));
    LiAgent::makeHeliumXForm(v24, &v104, &v83, lpsrc);
    v53 = lpsrc[0];
    if (value == lpsrc[0])
    {
      if (!value)
      {
        v53 = 0;
LABEL_29:
        if (v83)
        {
          (*(*v83 + 24))(v83);
        }

        value = v53;
        goto LABEL_32;
      }

      (*(*lpsrc[0] + 24))(lpsrc[0]);
      v53 = value;
    }

    else if (value)
    {
      (*(*value + 24))(value);
      v53 = lpsrc[0];
    }

    if (*(*(v24 + 48) + 144))
    {
      if (v53)
      {
        if (v54)
        {
          (*(*v54 + 648))(v54, 0.001);
        }
      }
    }

    goto LABEL_29;
  }

LABEL_32:
  TXTextObject::isEmoji(*v81);
  if (*v22)
  {
    v55 = *(*v81 + 264);
    if (v55)
    {
      v56 = *(v55 + 8);
      v57 = *(v55 + 16);
      if (v57)
      {
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v56 = 0;
      v57 = 0;
    }

    if (OZChannel::getValueAsInt((v56 + 6088), MEMORY[0x277CC08F0], 0.0) == 2)
    {
      v58 = TXTextStyle::hasTexture(v56, (v56 + 8560));
    }

    else
    {
      v58 = 0;
    }

    **v22 = v80;
    LiAgent::getObjectToPixelTransform(v24, &v83);
    PCMatrix44Tmpl<double>::operator*(&v83, a9, &v104);
    v59 = (*v22 + 8);
    if (&v104 != v59)
    {
      v60 = 0;
      v61 = &v104;
      do
      {
        for (j = 0; j != 32; j += 8)
        {
          *(&v59->value + j) = *(&v61->value + j);
        }

        ++v60;
        v59 = (v59 + 32);
        v61 = (v61 + 32);
      }

      while (v60 != 4);
    }

    v83 = 0uLL;
    v84 = 0.0;
    getScale(*(v24 + 160), &v83);
    PCMatrix44Tmpl<double>::rightScale((*v22 + 8), 1.0 / *&v83, 1.0 / *(&v83 + 1), 1.0 / v84);
    v63 = *v22;
    *(v63 + 465) = 1;
    v64 = v63 + 136;
    if (v63 + 136 != v17)
    {
      for (k = 0; k != 4; ++k)
      {
        for (m = 0; m != 32; m += 8)
        {
          *(v64 + m) = *(v17 + m);
        }

        v64 += 32;
        v17 += 32;
      }
    }

    v67 = v63 + 264;
    if (v63 + 264 != a11)
    {
      for (n = 0; n != 4; ++n)
      {
        for (ii = 0; ii != 32; ii += 8)
        {
          *(v67 + ii) = *(v41 + ii);
        }

        v67 += 32;
        v41 += 32;
      }
    }

    if (v19)
    {
      if (hasParameter)
      {
        TXTextObject::getCacheHash(*v81, v103);
        v63 = *v22;
      }

      else
      {
        *&v104.value = v100;
      }

      *(v63 + 392) = *&v104.value;
    }

    else
    {
      PCHashWriteStream::PCHashWriteStream(&v104);
      PCHashWriteStream::reset(&v104);
      PCHashWriteStream::writeValue(&v104, v80);
      PCHashWriteStream::close(&v104);
      PCWorkingColorVector::PCWorkingColorVector(v86);
      Hash = PCHashWriteStream::getHash(&v104);
      *v86 = *Hash->i8;
      *(*v22 + 392) = *Hash->i8;
      PCHashWriteStream::~PCHashWriteStream(&v104);
    }

    v71 = *v22;
    *(*v22 + 456) = 1;
    v73 = *v81;
    v72 = *(v81 + 8);
    if (v72)
    {
      atomic_fetch_add_explicit((v72 + 8), 1uLL, memory_order_relaxed);
    }

    v74 = *(v71 + 480);
    *(v71 + 472) = v73;
    *(v71 + 480) = v72;
    if (v74)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v74);
    }

    PCWorkingColor::operator=((*v22 + 408), &v101);
    v75 = *v22;
    *(v75 + 460) = 0;
    *(v75 + 464) = v58;
    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v57);
    }
  }

  *v77 = value;
LABEL_68:
  if (v94)
  {
    (*(*v94 + 24))(v94);
  }

  if (v96)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v96);
  }

  if (v78)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v78);
  }

LABEL_74:
  PCCFRef<CGColorSpace *>::~PCCFRef(&v102);
  OZRenderParams::~OZRenderParams(v103);
}

void sub_25FB08A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27)
  {
    (*(*a27 + 24))(a27);
  }

  if (STACK[0x208])
  {
    (*(*STACK[0x208] + 24))(STACK[0x208]);
  }

  if (STACK[0x218])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x218]);
  }

  if (v27)
  {
    (*(*v27 + 24))(v27);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&STACK[0x268]);
  OZRenderParams::~OZRenderParams(&STACK[0x280]);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::shouldCacheTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*a4 + 8) == 1)
  {
    {
      v5 = *(a4 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }

  return 0;
}

uint64_t TXTextLayout::getCachedImage(Li3DEngineScene *a1, TXTextObject *a2, OZRenderParams *this, const FxColorDescription *a4, unsigned int a5, int a6, __int128 *a7, uint64_t a8, uint64_t a9, int32x4_t *a10, double *a11, double *a12, int32x4_t *a13)
{
  if (OZRenderParams::getTextRenderQuality(this) == 6)
  {
    PCMatrix44Tmpl<double>::operator*(a8, a7, &v37);
    TXTextObject::getTextureCacheHashForAttribute(a2, this, a4, a5, a11, a12);
    *a10 = v36;
    v19 = a13;
    TXTextObject::getScaleAndHashForPixelTransform(a2);
    PCHash128::operator+=(a10->i32, v36.i32);
  }

  else
  {
    TXTextObject::getTextureCacheHashForAttribute(a2, this, a4, a5, a11, a12);
    *a10 = v37;
    v19 = a13;
  }

  v20 = Li3DEngineScene::sceneManager(a1);
  RenderNodeList = OZLockingGroup::WriteSentry::WriteSentry(v35, v20);
  for (i = *(a1 + 7585); ; i = *(i + 8))
  {
    if (i == (a1 + 60672))
    {
      v24 = OZCacheManager::Instance(RenderNodeList);
      if (*(*HGRenderJob::GetRenderNodeList(this) + 8))
      {
        OZRenderParams::getRenderGPU(this, &v36);
        OZCacheManager::getTextureForKey(v24, &v36, a10, 0, &v37);
        v25 = v37;
        v37 = 0uLL;
        v26 = *(a9 + 8);
        *a9 = v25;
        if (v26)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          if (v37.i64[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37.i64[1]);
          }
        }

        if (v36.i64[1])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v36.i64[1]);
        }

        if (!*a9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        OZCacheManager::getImageForKey(a10, &v37);
        v27 = v37;
        v37 = 0uLL;
        v28 = *(a9 + 8);
        *a9 = v27;
        if (v28)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          if (v37.i64[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v37.i64[1]);
          }

          if (!*a9)
          {
            goto LABEL_28;
          }
        }

        else if (!v27.i64[0])
        {
          goto LABEL_28;
        }
      }

      v29 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 60696, a10);
      if ((a1 + 60704) != v29)
      {
        *v19 = vuzp1q_s32(vcvtq_s64_f64(v29[3]), vcvtq_s64_f64(v29[4]));
        goto LABEL_33;
      }

LABEL_28:
      v30 = 0;
      goto LABEL_34;
    }

    if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(i + 80), *a10)))))
    {
      continue;
    }

    *v19 = vuzp1q_s32(vcvtq_s64_f64(*(i + 48)), vcvtq_s64_f64(*(i + 64)));
    RenderNodeList = HGRenderJob::GetRenderNodeList(this);
    if (!*(*RenderNodeList + 8))
    {
      break;
    }

    v23 = *(i + 16);
    if (v23)
    {
      v31 = *(i + 24);
      if (v31)
      {
        goto LABEL_30;
      }

      goto LABEL_31;
    }

LABEL_11:
    ;
  }

  v23 = *(i + 32);
  if (!v23)
  {
    goto LABEL_11;
  }

  v31 = *(i + 40);
  if (!v31)
  {
    goto LABEL_31;
  }

LABEL_30:
  atomic_fetch_add_explicit((v31 + 8), 1uLL, memory_order_relaxed);
LABEL_31:
  v32 = *(a9 + 8);
  *a9 = v23;
  *(a9 + 8) = v31;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

LABEL_33:
  v30 = 1;
LABEL_34:
  OZLockingGroup::WriteSentry::~WriteSentry(v35);
  return v30;
}

void sub_25FB09048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void *PCDynamicCast<PGTexture,PCImage>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  {
    v5 = *(a1 + 8);
    *a2 = result;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

BOOL TXTextLayout::getCachedMetalTexture(uint64_t a1, TXTextObject *a2, OZRenderParams *this, LiAgent *a4, unsigned int a5, int a6, __int128 *a7, uint64_t a8, int32x4_t *a9, double *a10, double *a11, int32x4_t *a12, void *a13, char a14)
{
  if (OZRenderParams::getTextRenderQuality(this) == 6)
  {
    RequestedColorDescription = LiAgent::getRequestedColorDescription(a4);
    TXTextObject::getTextureCacheHashForAttribute(a2, this, RequestedColorDescription, a5, a10, a11);
    *a9 = v42[0];
    v19 = a12;
  }

  else
  {
    HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
    v21 = OZHostApplicationDelegateHandler::wantsToImproveQualityOfDraftQualityText(HostApplicationDelegate);
    v22 = LiAgent::getRequestedColorDescription(a4);
    TXTextObject::getTextureCacheHashForAttribute(a2, this, v22, a5, a10, a11);
    *a9 = v42[0];
    v19 = a12;
    if ((v21 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  PCMatrix44Tmpl<double>::operator*(a8, a7, v42);
  TXTextObject::getScaleAndHashForPixelTransform(a2);
  PCHash128::operator+=(a9->i32, v41);
LABEL_5:
  HeliumRenderer = LiAgent::getHeliumRenderer(a4);
  v24 = *(*(HGGPURenderer::GetMetalContext(HeliumRenderer) + 16) + 16);
  v25 = OZMetalUtils::registryID(v24);
  PCSharedMutex::lock_shared((a1 + 60768));
  v26 = *(a1 + 60880);
  if (v26 == a1 + 60872)
  {
LABEL_12:
    v29 = 1;
    goto LABEL_13;
  }

  while (1)
  {
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v26 + 56), *a9)))) & 1) == 0)
    {
      v27 = *(v26 + 16);
      if (v27 && *(v26 + 72) == v25)
      {
        break;
      }
    }

    v26 = *(v26 + 8);
    if (v26 == a1 + 60872)
    {
      goto LABEL_12;
    }
  }

  *v19 = vuzp1q_s32(vcvtq_s64_f64(*(v26 + 24)), vcvtq_s64_f64(*(v26 + 40)));
  v37 = *a13;
  if (*a13 != v27)
  {
    if (v37)
    {
      (*(*v37 + 24))(*a13);
      v27 = *(v26 + 16);
      *a13 = v27;
      if (!v27)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *a13 = v27;
    }

    (*(*v27 + 16))(v27);
  }

LABEL_33:
  v29 = 0;
LABEL_13:
  PCSharedMutex::unlock_shared((a1 + 60768));
  if ((v29 & 1) == 0)
  {
    return 1;
  }

  v31 = OZCacheManager::Instance(v30);
  OZCacheManager::getMetalTextureForKey(v31, v24, a9, v42);
  v32 = *a13;
  v33 = *&v42[0];
  if (*a13 == *&v42[0])
  {
    if (!v32)
    {
      return 0;
    }

    (*(**&v42[0] + 24))();
    if (!*a13)
    {
      return 0;
    }
  }

  else
  {
    if (v32)
    {
      (*(*v32 + 24))(*a13);
      v33 = *&v42[0];
    }

    *a13 = v33;
    if (!v33)
    {
      return 0;
    }
  }

  PCSharedMutex::lock_shared((a1 + 60768));
  v35 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(a1 + 60896, a9);
  v34 = a1 + 60904 != v35;
  if ((a1 + 60904) != v35)
  {
    *v19 = vuzp1q_s32(vcvtq_s64_f64(v35[3]), vcvtq_s64_f64(v35[4]));
  }

  PCSharedMutex::unlock_shared((a1 + 60768));
  return v34;
}

uint64_t TXTextLayout::getCachedTextureOrImage(Li3DEngineScene *a1, TXTextObject *a2, OZRenderParams *this, LiAgent *a4, unsigned int a5, int a6, __int128 *a7, uint64_t a8, int32x4_t *a9, double *a10, double *a11, int32x4_t *a12, uint64_t a13, uint64_t a14, void *a15, char a16)
{
  if (a13)
  {

    return TXTextLayout::getCachedMetalTexture(a1, a2, this, a4, a5, a6, a7, a8, a9, a10, a11, a12, a15, a16);
  }

  else
  {
    RequestedColorDescription = LiAgent::getRequestedColorDescription(a4);

    return TXTextLayout::getCachedImage(a1, a2, this, RequestedColorDescription, a5, a6, a7, a8, a14, a9, a10, a11, a12);
  }
}

void TXTextLayout::makeHGTextureOrBitmapNode(HGRenderJob *this@<X3>, uint64_t a2@<X1>, HGBitmap **a3@<X2>, uint64_t *a4@<X4>, LiRenderParameters **a5@<X5>, int a6@<W6>, HGBitmapLoader **a7@<X8>)
{
  *a7 = 0;
  if (a6)
  {
    v8 = *a3;
    v9 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v9, v8);
    if (v9)
    {
      *a7 = v9;
    }
  }

  else
  {
    if (*(*HGRenderJob::GetRenderNodeList(this) + 8))
    {
      HeliumRenderer = LiAgent::getHeliumRenderer(a5);
      if (HeliumRenderer)
      {
      }

      else
      {
        v14 = 0;
      }

      v15 = *a4;
      PGHelium::createTextureNode(a2, v14, &v15, 1, 0, &v16);
    }

    else
    {
      v15 = *a4;
      PGHelium::createBitmapNode(a2, &v15, 1, 0, &v16);
    }

    if (v16)
    {
      *a7 = v16;
    }
  }
}

BOOL OZRenderParams::hasParameter(OZRenderParams *this, const char *a2)
{
  v7 = a2;
  v3 = *(this + 155);
  if (!v3)
  {
    throw_PCNullPointerException(1);
  }

  v4 = std::__tree<std::__value_type<char const*,void *>,std::__map_value_compare<char const*,std::__value_type<char const*,void *>,OZRenderParams::LessThanStringFunctor,true>,std::allocator<std::__value_type<char const*,void *>>>::find<char const*>(v3 + 8, &v7);
  v5 = *(this + 155);
  if (!v5)
  {
    throw_PCNullPointerException(1);
  }

  return v5 + 16 != v4;
}

void LiRenderParameters::~LiRenderParameters(LiRenderParameters *this)
{
  v2 = *(this + 26);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 20);
  *(this + 4) = &unk_2871F2660;
  if (*(this + 10) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 10);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(this + 32, 0, v3);
  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(this + 6) = 0;
  *(this + 10) = 0;
  PCSharedCount::~PCSharedCount(this + 3);
}

uint64_t OZRenderParams::setParameter(OZRenderParams *this, const char *a2, void *a3)
{
  v6[0] = a2;
  v4 = *(this + 155);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  v6[2] = v6;
  result = std::__tree<std::__value_type<char const*,void *>,std::__map_value_compare<char const*,std::__value_type<char const*,void *>,OZRenderParams::LessThanStringFunctor,true>,std::allocator<std::__value_type<char const*,void *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(v4 + 8, v6);
  *(result + 40) = a3;
  return result;
}

void TXTextLayout::outlineNodeFromTextObject(uint64_t a1, TXTextObject **a2, uint64_t a3, LiAgent *this, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(this);
  v15[0] = 0;
  TXTextLayout::getLiImageSourceForOutline(a1, a3, RequestedColorDescription, a2, a5, a7, v15);
}

void sub_25FB09CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(*v73 + 24))(v73);
  if (v72)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v72);
  }

  if (*v71)
  {
    (*(**v71 + 24))(*v71);
  }

  LiAgent::~LiAgent(&a13);
  LiRenderParameters::~LiRenderParameters(&a71);
  PCSharedCount::~PCSharedCount((v74 - 128));
  _Unwind_Resume(a1);
}

TXTextLayout *TXTextLayout::notify(TXTextLayout *this, char a2)
{
  if ((a2 & 0xC) != 0)
  {
    return TXTextLayout::updateTextStyles(this);
  }

  return this;
}

void *TXTextLayout::updateTextStyles(TXTextLayout *this)
{
  result = (*(*(this + 25) + 272))();
  if (!result)
  {
    return result;
  }

  v3 = result[198];
  if (!v3)
  {
    return result;
  }

  v4 = theApp && *(theApp + 81) == 1 ? *(v3 + 184) ^ 1 : 0;
  v5 = *(this + 2419);
  if (v5 == (this + 19344))
  {
    return result;
  }

  do
  {
    v13 = &v13;
    v14 = &v13;
    v15 = 0;
    OZBehavior::GetBehaviorsAffectingChannel((*(v5 + 16) + 1304), &v13, 1);
    for (i = v14; i != &v13; i = i[1])
    {
      v7 = i[2];
      if (v7)
      {
        if (v8)
        {
          v9 = v8;
          if (OZRigBehavior::getWidget(v8))
          {
            v10 = *(OZRigBehavior::getWidget(v9) + 136);
            if (!v10)
            {
              if ((v4 & 1) == 0)
              {
                continue;
              }

LABEL_19:
              (*(**(v5 + 16) + 288))(*(v5 + 16), v9);
              continue;
            }

            v11 = *(v3 + 168);
            if (v11)
            {
              LODWORD(v11) = OZNotificationManager::wasChannelModified(v11, v10);
            }

            if ((v11 | v4))
            {
              goto LABEL_19;
            }
          }
        }
      }
    }

    v12 = *(v3 + 168);
    if (v12 && OZNotificationManager::wasChannelModified(v12, (*(v5 + 16) + 1304)))
    {
      TXTextStyle::updateFont(*(v5 + 16));
    }

    result = std::__list_imp<unsigned int>::clear(&v13);
    v5 = *(v5 + 8);
  }

  while (v5 != (this + 19344));
  return result;
}

void sub_25FB09F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void *non-virtual thunk toTXTextLayout::notify(void *this, char a2)
{
  if ((a2 & 0xC) != 0)
  {
    return TXTextLayout::updateTextStyles((this - 2372));
  }

  return this;
}

OZChannelBase *TXTextLayout::didCreateCopyForCopyOnWrite(TXTextLayout *this)
{
  result = OZChannelBase::updateIDGenerator(*(this + 70));
  v3 = this + 19344;
  for (i = *(this + 2419); i != v3; i = *(i + 8))
  {
    v5 = *(i + 16);
    NextUniqueID = OZChannelBase::getNextUniqueID(result);
    OZChannelBase::setID((v5 + 72), NextUniqueID);
    result = OZStyle::assignUniqueIDsToAllMaterials(*(i + 16));
  }

  return result;
}

uint64_t TXTextLayout::openMedia(TXTextLayout *this)
{
  TXTextLayout::getCurrentStyleForInsertion(this, &v23);
  v2 = (*(*(this + 25) + 272))(this + 200);
  v3 = v2;
  if (v23)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    if ((*(*this + 296))(this))
    {
      v20 = &v20;
      v21 = &v20;
      v22 = 0;
      v5 = *(v23 + 480);
      v6 = *(v23 + 488);
      if (v5 != v6)
      {
        do
        {
          v7 = *v5;
          {
            (*(v8 + 344))();
          }

          ++v5;
        }

        while (v5 != v6);
        for (i = v21; i != &v20; i = i[1])
        {
          Node = OZScene::getNode(v3, *(i + 4));
          if (Node)
          {
            (*(*Node + 104))(Node);
          }
        }
      }

      std::__list_imp<unsigned int>::clear(&v20);
    }

    else
    {
      ValueAsUint = OZChannel::getValueAsUint((v23 + 8696), MEMORY[0x277CC08F0], 0.0);
      v12 = OZScene::getNode(v3, ValueAsUint);
      if (v12)
      {
        (*(*v12 + 104))(v12);
      }

      v13 = OZChannel::getValueAsUint((v23 + 16584), MEMORY[0x277CC08F0], 0.0);
      v14 = OZScene::getNode(v3, v13);
      if (v14)
      {
        (*(*v14 + 104))(v14);
      }

      v15 = OZChannel::getValueAsUint((v23 + 25368), MEMORY[0x277CC08F0], 0.0);
      v16 = OZScene::getNode(v3, v15);
      if (v16)
      {
        (*(*v16 + 104))(v16);
      }

      v17 = OZChannel::getValueAsUint((v23 + 33816), MEMORY[0x277CC08F0], 0.0);
      v18 = OZScene::getNode(v3, v17);
      if (v18)
      {
        (*(*v18 + 104))(v18);
      }
    }
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return 0;
}

void sub_25FB0A394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextLayout::prerollBegin(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  OZSceneNode::prerollBegin(a1 + 200, a2, a3, a4, a5);
  v10 = a1 + 19344;
  for (i = *(a1 + 19352); i != v10; i = *(i + 8))
  {
    (*(**(i + 16) + 304))(*(i + 16), a2, a3, a4, a5);
  }

  return 0;
}

uint64_t TXTextLayout::prerollEnd(TXTextLayout *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  OZSceneNode::prerollEnd(this + 200, a2, a3);
  v6 = this + 19344;
  for (i = *(this + 2419); i != v6; i = *(i + 8))
  {
    (*(**(i + 16) + 312))(*(i + 16), a2, a3);
  }

  return 0;
}

uint64_t TXTextLayout::setRate(TXTextLayout *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  OZSceneNode::setRate(this + 200, a2, a3, a4);
  v8 = this + 19344;
  for (i = *(this + 2419); i != v8; i = *(i + 8))
  {
    (*(**(i + 16) + 320))(*(i + 16), a2, a3, a4);
  }

  return 0;
}

uint64_t TXTextLayout::scheduleTokens(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  memset(v12, 0, sizeof(v12));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v12, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*(a1 + 200) + 184))(a1 + 200, a2, v12, a4);
  OZSceneNode::scheduleTokens(a1 + 200, a2, v12, a4, a5);
  v9 = a1 + 19344;
  for (i = *(a1 + 19352); i != v9; i = *(i + 8))
  {
    (*(**(i + 16) + 328))(*(i + 16), a2, v12, a4, a5);
  }

  v13 = v12;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v13);
  return 0;
}

void sub_25FB0A750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::hintTokensWillImage(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  memset(v10, 0, sizeof(v10));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*(a1 + 200) + 184))(a1 + 200, a2, v10, a4);
  OZSceneNode::hintTokensWillImage(a1 + 200, a2, v10, a4);
  v7 = a1 + 19344;
  for (i = *(a1 + 19352); i != v7; i = *(i + 8))
  {
    (*(**(i + 16) + 336))(*(i + 16), a2, v10, a4);
  }

  v11 = v10;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  return 0;
}

void sub_25FB0A8A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::getTokensImage(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  memset(v10, 0, sizeof(v10));
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 4));
  (*(*(a1 + 200) + 184))(a1 + 200, a2, v10, a4);
  OZSceneNode::getTokensImage(a1 + 200, a2, v10, a4);
  v7 = a1 + 19344;
  for (i = *(a1 + 19352); i != v7; i = *(i + 8))
  {
    (*(**(i + 16) + 344))(*(i + 16), a2, v10, a4);
  }

  v11 = v10;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v11);
  return 0;
}

void sub_25FB0AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t TXTextLayout::pruneTokensAtTime(TXTextLayout *this, CMTime *a2, const char *a3)
{
  v10 = *a2;
  result = OZSceneNode::pruneTokensAtTime(this + 200, &v10, a3);
  v7 = this + 19344;
  for (i = *(this + 2419); i != v7; i = *(i + 8))
  {
    v9 = *(i + 16);
    v10 = *a2;
    result = (*(*v9 + 352))(v9, &v10, a3);
  }

  return result;
}

uint64_t TXTextLayout::pruneTokensExceptAtTime(TXTextLayout *this, CMTime *a2, const char *a3)
{
  v10 = *a2;
  result = OZSceneNode::pruneTokensExceptAtTime(this + 200, &v10, a3);
  v7 = this + 19344;
  for (i = *(this + 2419); i != v7; i = *(i + 8))
  {
    v9 = *(i + 16);
    v10 = *a2;
    result = (*(*v9 + 360))(v9, &v10, a3);
  }

  return result;
}

uint64_t TXTextLayout::pruneAllTokens(TXTextLayout *this, const char *a2)
{
  result = OZSceneNode::pruneAllTokens(this + 200, a2);
  v5 = this + 19344;
  for (i = *(this + 2419); i != v5; i = *(i + 8))
  {
    result = (*(**(i + 16) + 368))(*(i + 16), a2);
  }

  return result;
}

BOOL TXTextLayout::hasCustomGradientChannels(TXTextLayout *this)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  (*(*this + 376))(this, &v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v2 != v1;
}

void sub_25FB0ACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *TXTextLayout::getCustomGradientChannels(void *a1, uint64_t a2)
{
  result = (*(*a1 + 296))(a1);
  if (result)
  {
    for (i = a1[2419]; i != a1 + 2418; i = i[1])
    {
      v6 = i[2];
      v7 = *(v6 + 480);
      v8 = *(v6 + 488);
      while (v7 != v8)
      {
        result = *v7;
        if (*v7)
        {
          if (result)
          {
            v9 = result[178];
            if (v9)
            {
              v11 = *v9;
              v10 = v9[1];
              while (v11 != v10)
              {
                result = *v11;
                if (*v11)
                {
                  if (result)
                  {
                    result = (*(*result + 848))(result, a2);
                  }
                }

                ++v11;
              }
            }
          }
        }

        ++v7;
      }
    }
  }

  return result;
}

void TXTextLayout::getLineOffset(TXTextLayout *this, unsigned int a2)
{
  v2 = *(this + 2378);
  if (a2 >= ((*(this + 2379) - v2) >> 3))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v3 = *(v2 + 8 * a2);
  if (v3)
  {
    v5 = MEMORY[0x277CC08F0];
    v6 = **&MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((v3 + 680), &v6, 0.0);
    (*(*this + 712))(this, v5);
  }
}

CGColorSpace **TXTextLayout::getSequencedColor@<X0>(TXTextLayout *this@<X0>, const CMTime *a2@<X1>, PCColor *a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  v10 = *&a3->var0.var1[1];
  *a5 = *&a3->var0.var0;
  *(a5 + 16) = v10;
  *(a5 + 32) = *&a3->var0.var1[3];
  obj = a3->var1._obj;
  *(a5 + 48) = obj;
  if (obj)
  {
    PCCFRefTraits<CGColorSpace *>::retain(obj);
  }

  result = OZChannelBase::isEnabled((this + 28720), 0, 1);
  if (result)
  {
    v13 = *a2;
    OZChannelColorNoAlpha::setColor((this + 28720), &v13, a3, 1);
    v13 = *a2;
    return OZChannelColorNoAlpha::getColor((this + 28720), &v13, a5, a4);
  }

  return result;
}

double TXTextLayout::getSequencedOpacity(TXTextLayout *this, OZChannel *a2, OZChannel *a3, const CMTime *a4, double a5, double a6)
{
  (*(a3->var0 + 89))(a3, a4, 1, a5);
  OZChannel::getValueAsDouble(a3, a4, a6);
  v11 = v10;
  OZChannel::getValueAsDouble(a2, a4, a6);
  return v11 * v12;
}

uint64_t TXTextLayout::TXTextLayout_oldTrackingInfo::getInstance(TXTextLayout::TXTextLayout_oldTrackingInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_oldTrackingInfo::getInstance(void)::TXTextLayout_oldTrackingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_oldTrackingInfo::getInstance(void)::TXTextLayout_oldTrackingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_oldTrackingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_oldTrackingInfo::_TXTextLayout_oldTrackingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_oldTrackingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_oldTrackingInfo::_TXTextLayout_oldTrackingInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_oldTrackingInfo *TXTextLayout::TXTextLayout_oldTrackingInfo::TXTextLayout_oldTrackingInfo(TXTextLayout::TXTextLayout_oldTrackingInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -100.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F14A8;
  *(this + 10) = &unk_2871F14C8;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_trackingImpl::getInstance(TXTextLayout::TXTextLayout_trackingImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_trackingImpl::getInstance(void)::TXTextLayout_trackingImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_trackingImpl::getInstance(void)::TXTextLayout_trackingImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_trackingImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_trackingImpl::_TXTextLayout_tracking;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_trackingImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_trackingImpl::_TXTextLayout_tracking)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_trackingInfo::getInstance(TXTextLayout::TXTextLayout_trackingInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_trackingInfo::getInstance(void)::TXTextLayout_trackingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_trackingInfo::getInstance(void)::TXTextLayout_trackingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_trackingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_trackingInfo::_TXTextLayout_trackingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_trackingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_trackingInfo::_TXTextLayout_trackingInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_trackingInfo *TXTextLayout::TXTextLayout_trackingInfo::TXTextLayout_trackingInfo(TXTextLayout::TXTextLayout_trackingInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F1598;
  *(this + 10) = &unk_2871F15B8;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::getInstance(TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::getInstance(void)::TXTextLayout_lineSpacingObsoleteInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::getInstance(void)::TXTextLayout_lineSpacingObsoleteInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::_TXTextLayout_lineSpacingObsoleteInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::_TXTextLayout_lineSpacingObsoleteInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo *TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo::TXTextLayout_lineSpacingObsoleteInfo(TXTextLayout::TXTextLayout_lineSpacingObsoleteInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -100.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F1610;
  *(this + 10) = &unk_2871F1630;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_leftMarginImpl::getInstance(TXTextLayout::TXTextLayout_leftMarginImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_leftMarginImpl::getInstance(void)::TXTextLayout_leftMarginImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_leftMarginImpl::getInstance(void)::TXTextLayout_leftMarginImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_leftMarginImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_leftMarginImpl::_TXTextLayout_leftMargin;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_leftMarginImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_leftMarginImpl::_TXTextLayout_leftMargin)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_rightMarginImpl::getInstance(TXTextLayout::TXTextLayout_rightMarginImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_rightMarginImpl::getInstance(void)::TXTextLayout_rightMarginImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_rightMarginImpl::getInstance(void)::TXTextLayout_rightMarginImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_rightMarginImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_rightMarginImpl::_TXTextLayout_rightMargin;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_rightMarginImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_rightMarginImpl::_TXTextLayout_rightMargin)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_topMarginImpl::getInstance(TXTextLayout::TXTextLayout_topMarginImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_topMarginImpl::getInstance(void)::TXTextLayout_topMarginImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_topMarginImpl::getInstance(void)::TXTextLayout_topMarginImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_topMarginImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_topMarginImpl::_TXTextLayout_topMargin;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_topMarginImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_topMarginImpl::_TXTextLayout_topMargin)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_bottomMarginImpl::getInstance(TXTextLayout::TXTextLayout_bottomMarginImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_bottomMarginImpl::getInstance(void)::TXTextLayout_bottomMarginImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_bottomMarginImpl::getInstance(void)::TXTextLayout_bottomMarginImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_bottomMarginImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_bottomMarginImpl::_TXTextLayout_bottomMargin;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_bottomMarginImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_bottomMarginImpl::_TXTextLayout_bottomMargin)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_radiusImpl::getInstance(TXTextLayout::TXTextLayout_radiusImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_radiusImpl::getInstance(void)::TXTextLayout_radiusImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_radiusImpl::getInstance(void)::TXTextLayout_radiusImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_radiusImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_radiusImpl::_TXTextLayout_radius;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_radiusImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_radiusImpl::_TXTextLayout_radius)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_radiusInfo::getInstance(TXTextLayout::TXTextLayout_radiusInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_radiusInfo::getInstance(void)::TXTextLayout_radiusInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_radiusInfo::getInstance(void)::TXTextLayout_radiusInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_radiusInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_radiusInfo::_TXTextLayout_radiusInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_radiusInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_radiusInfo::_TXTextLayout_radiusInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_radiusInfo *TXTextLayout::TXTextLayout_radiusInfo::TXTextLayout_radiusInfo(TXTextLayout::TXTextLayout_radiusInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 400.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F18E0;
  *(this + 10) = &unk_2871F1900;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_rectSizeImpl::getInstance(TXTextLayout::TXTextLayout_rectSizeImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_rectSizeImpl::getInstance(void)::TXTextLayout_rectSizeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_rectSizeImpl::getInstance(void)::TXTextLayout_rectSizeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_rectSizeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_rectSizeImpl::_TXTextLayout_rectSize;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_rectSizeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_rectSizeImpl::_TXTextLayout_rectSize)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_rectSizeInfo::getInstance(TXTextLayout::TXTextLayout_rectSizeInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_rectSizeInfo::getInstance(void)::TXTextLayout_rectSizeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_rectSizeInfo::getInstance(void)::TXTextLayout_rectSizeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_rectSizeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_rectSizeInfo::_TXTextLayout_rectSizeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_rectSizeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_rectSizeInfo::_TXTextLayout_rectSizeInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_rectSizeInfo *TXTextLayout::TXTextLayout_rectSizeInfo::TXTextLayout_rectSizeInfo(TXTextLayout::TXTextLayout_rectSizeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 800.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F19D0;
  *(this + 10) = &unk_2871F19F0;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_waveAmplitudeImpl::getInstance(TXTextLayout::TXTextLayout_waveAmplitudeImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_waveAmplitudeImpl::getInstance(void)::TXTextLayout_waveAmplitudeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_waveAmplitudeImpl::getInstance(void)::TXTextLayout_waveAmplitudeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveAmplitudeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_waveAmplitudeImpl::_TXTextLayout_waveAmplitude;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveAmplitudeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_waveAmplitudeImpl::_TXTextLayout_waveAmplitude)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_waveAmplitudeInfo::getInstance(TXTextLayout::TXTextLayout_waveAmplitudeInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_waveAmplitudeInfo::getInstance(void)::TXTextLayout_waveAmplitudeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_waveAmplitudeInfo::getInstance(void)::TXTextLayout_waveAmplitudeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveAmplitudeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_waveAmplitudeInfo::_TXTextLayout_waveAmplitudeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveAmplitudeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_waveAmplitudeInfo::_TXTextLayout_waveAmplitudeInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_waveAmplitudeInfo *TXTextLayout::TXTextLayout_waveAmplitudeInfo::TXTextLayout_waveAmplitudeInfo(TXTextLayout::TXTextLayout_waveAmplitudeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 500.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F1AC0;
  *(this + 10) = &unk_2871F1AE0;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_waveFrequencyImpl::getInstance(TXTextLayout::TXTextLayout_waveFrequencyImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_waveFrequencyImpl::getInstance(void)::TXTextLayout_waveFrequencyImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_waveFrequencyImpl::getInstance(void)::TXTextLayout_waveFrequencyImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveFrequencyImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_waveFrequencyImpl::_TXTextLayout_waveFrequency;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveFrequencyImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_waveFrequencyImpl::_TXTextLayout_waveFrequency)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_waveFrequencyInfo::getInstance(TXTextLayout::TXTextLayout_waveFrequencyInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_waveFrequencyInfo::getInstance(void)::TXTextLayout_waveFrequencyInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_waveFrequencyInfo::getInstance(void)::TXTextLayout_waveFrequencyInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveFrequencyInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_waveFrequencyInfo::_TXTextLayout_waveFrequencyInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveFrequencyInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_waveFrequencyInfo::_TXTextLayout_waveFrequencyInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_waveFrequencyInfo *TXTextLayout::TXTextLayout_waveFrequencyInfo::TXTextLayout_waveFrequencyInfo(TXTextLayout::TXTextLayout_waveFrequencyInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F1BB0;
  *(this + 10) = &unk_2871F1BD0;
  return this;
}

void OZChannelAngle::OZChannelAngle(OZChannelAngle *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelAngle_FactoryBase = getOZChannelAngle_FactoryBase();
  OZChannel::OZChannel(this, OZChannelAngle_FactoryBase, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_287246030;
  this->var2 = &unk_287246390;
  OZChannelAngleInfo = OZChannelAngle::createOZChannelAngleInfo(v17);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelAngle::_OZChannelAngleInfo;
    this->var17 = OZChannelAngle::_OZChannelAngleInfo;
  }

  this->var16 = var17;
  OZChannelAngle::createOZChannelAngleImpl(OZChannelAngleInfo);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelAngle::_OZChannelAngleImpl;
    this->var15 = OZChannelAngle::_OZChannelAngleImpl;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

uint64_t TXTextLayout::TXTextLayout_waveDampingImpl::getInstance(TXTextLayout::TXTextLayout_waveDampingImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_waveDampingImpl::getInstance(void)::TXTextLayout_waveDampingImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_waveDampingImpl::getInstance(void)::TXTextLayout_waveDampingImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveDampingImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_waveDampingImpl::_TXTextLayout_waveDamping;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveDampingImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_waveDampingImpl::_TXTextLayout_waveDamping)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_waveDampingInfo::getInstance(TXTextLayout::TXTextLayout_waveDampingInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_waveDampingInfo::getInstance(void)::TXTextLayout_waveDampingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_waveDampingInfo::getInstance(void)::TXTextLayout_waveDampingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveDampingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_waveDampingInfo::_TXTextLayout_waveDampingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_waveDampingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_waveDampingInfo::_TXTextLayout_waveDampingInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_waveDampingInfo *TXTextLayout::TXTextLayout_waveDampingInfo::TXTextLayout_waveDampingInfo(TXTextLayout::TXTextLayout_waveDampingInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -20.0, 20.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F1CA0;
  *(this + 10) = &unk_2871F1CC0;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_pathOffsetImpl::getInstance(TXTextLayout::TXTextLayout_pathOffsetImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_pathOffsetImpl::getInstance(void)::TXTextLayout_pathOffsetImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_pathOffsetImpl::getInstance(void)::TXTextLayout_pathOffsetImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_pathOffsetImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_pathOffsetImpl::_TXTextLayout_pathOffset;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_pathOffsetImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_pathOffsetImpl::_TXTextLayout_pathOffset)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_pathOffsetInfo::getInstance(TXTextLayout::TXTextLayout_pathOffsetInfo *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_pathOffsetInfo::getInstance(void)::TXTextLayout_pathOffsetInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_pathOffsetInfo::getInstance(void)::TXTextLayout_pathOffsetInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_pathOffsetInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_pathOffsetInfo::_TXTextLayout_pathOffsetInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_pathOffsetInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_pathOffsetInfo::_TXTextLayout_pathOffsetInfo)
  {
    operator new();
  }
}

TXTextLayout::TXTextLayout_pathOffsetInfo *TXTextLayout::TXTextLayout_pathOffsetInfo::TXTextLayout_pathOffsetInfo(TXTextLayout::TXTextLayout_pathOffsetInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F1D90;
  *(this + 10) = &unk_2871F1DB0;
  return this;
}

uint64_t TXTextLayout::TXTextLayout_showScrollBarsImpl::getInstance(TXTextLayout::TXTextLayout_showScrollBarsImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_showScrollBarsImpl::getInstance(void)::TXTextLayout_showScrollBarsImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_showScrollBarsImpl::getInstance(void)::TXTextLayout_showScrollBarsImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_showScrollBarsImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_showScrollBarsImpl::_TXTextLayout_showScrollBars;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_showScrollBarsImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_showScrollBarsImpl::_TXTextLayout_showScrollBars)
  {
    operator new();
  }
}

uint64_t OZCurveBoolSplineState::getInstance(OZCurveBoolSplineState *this)
{
  if (atomic_load_explicit(&OZCurveBoolSplineState::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZCurveBoolSplineState::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZCurveBoolSplineState::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZCurveBoolSplineState::_instance;
}

double OZCurveBool::getValue(OZCurve *this, const CMTime *a2, void *a3, __n128 a4, __n128 a5)
{
  OZCurve::getValue(this, a2, a3, a4, a5);
  v6 = fabs(v5) < 0.0000001;
  result = 0.0;
  if (!v6)
  {
    return 1.0;
  }

  return result;
}

double OZCurveBool::getValue(OZCurve *this, const CMTime *a2, double a3)
{
  OZCurve::getValue(this, a2, a3);
  v4 = fabs(v3) < 0.0000001;
  result = 0.0;
  if (!v4)
  {
    return 1.0;
  }

  return result;
}

uint64_t TXTextLayout::TXTextLayout_showRulersImpl::getInstance(TXTextLayout::TXTextLayout_showRulersImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_showRulersImpl::getInstance(void)::TXTextLayout_showRulersImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_showRulersImpl::getInstance(void)::TXTextLayout_showRulersImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_showRulersImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_showRulersImpl::_TXTextLayout_showRulers;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_showRulersImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_showRulersImpl::_TXTextLayout_showRulers)
  {
    operator new();
  }
}

uint64_t TXTextLayout::TXTextLayout_versionImpl::getInstance(TXTextLayout::TXTextLayout_versionImpl *this)
{
  if (atomic_load_explicit(&TXTextLayout::TXTextLayout_versionImpl::getInstance(void)::TXTextLayout_versionImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout::TXTextLayout_versionImpl::getInstance(void)::TXTextLayout_versionImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_versionImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout::TXTextLayout_versionImpl::_TXTextLayout_version;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout::TXTextLayout_versionImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextLayout::TXTextLayout_versionImpl::_TXTextLayout_version)
  {
    operator new();
  }
}

void OZChannelDouble::OZChannelDouble(OZChannelDouble *this, int a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelDouble_FactoryBase = getOZChannelDouble_FactoryBase();
  OZChannel::OZChannel(this, OZChannelDouble_FactoryBase, a3, a4, a5, a6, a7, a8);
  *this = &unk_287245C60;
  *(this + 2) = &unk_287245FC0;
  OZChannelDoubleInfo = OZChannelDouble::createOZChannelDoubleInfo(v17);
  if (a8)
  {
    v19 = *(this + 17);
  }

  else
  {
    v19 = OZChannelDouble::_OZChannelDoubleInfo;
    *(this + 17) = OZChannelDouble::_OZChannelDoubleInfo;
  }

  *(this + 16) = v19;
  OZChannelDouble::createOZChannelDoubleImpl(OZChannelDoubleInfo);
  if (a7)
  {
    v20 = *(this + 15);
  }

  else
  {
    v20 = OZChannelDouble::_OZChannelDoubleImpl;
    *(this + 15) = OZChannelDouble::_OZChannelDoubleImpl;
  }

  *(this + 14) = v20;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void std::__list_imp<TXTextLayout::HGMetalNodeCacheEntry>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<TXTextLayout::HGMetalNodeCacheEntry,0>(v2 + 2);
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::__destroy_at[abi:ne200100]<TXTextLayout::HGMetalNodeCacheEntry,0>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void PCSharedMutex::~PCSharedMutex(std::mutex *this)
{
  v2 = *&this[1].__m_.__opaque[8];
  if (v2)
  {
    *&this[1].__m_.__opaque[16] = v2;
    operator delete(v2);
  }

  std::mutex::~mutex(this);
}

void std::__list_imp<TXTextLayout::HGNodeCacheEntry>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        std::__destroy_at[abi:ne200100]<TXTextLayout::HGNodeCacheEntry,0>((v2 + 2));
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

void std::__destroy_at[abi:ne200100]<TXTextLayout::HGNodeCacheEntry,0>(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void TXChannelAlignment::~TXChannelAlignment(TXChannelAlignment *this)
{
  *this = &unk_2871F8D78;
  *(this + 2) = &unk_2871F90C0;
  OZChannelEnum::~OZChannelEnum((this + 392));
  OZChannelEnum::~OZChannelEnum((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  TXChannelAlignment::~TXChannelAlignment(this);

  JUMPOUT(0x2666E9F00);
}

void std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t std::deque<CMTime>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 85;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 170;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((a2 + 7), a2[8]);

    operator delete(a2);
  }
}

char *std::vector<TXLineMetrics>::__assign_with_size[abi:ne200100]<TXLineMetrics*,TXLineMetrics*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 6)
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

    if (!(a4 >> 58))
    {
      v9 = v7 >> 5;
      if (v7 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<TXLineMetrics>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 6)
  {
    while (v5 != a3)
    {
      v22 = *v5;
      v23 = v5[1];
      v24 = v5[3];
      *(result + 2) = v5[2];
      *(result + 3) = v24;
      *result = v22;
      *(result + 1) = v23;
      result += 64;
      v5 += 4;
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
        v15 = v5[1];
        v16 = v5[3];
        *(result + 2) = v5[2];
        *(result + 3) = v16;
        *result = v14;
        *(result + 1) = v15;
        result += 64;
        v5 += 4;
        v12 -= 64;
      }

      while (v12);
      v11 = a1[1];
    }

    v17 = v11;
    if (v13 != a3)
    {
      v17 = v11;
      v18 = v11;
      do
      {
        v19 = *v13;
        v20 = v13[1];
        v21 = v13[3];
        *(v18 + 2) = v13[2];
        *(v18 + 3) = v21;
        *v18 = v19;
        *(v18 + 1) = v20;
        v18 += 64;
        v13 += 4;
        v17 += 64;
      }

      while (v13 != a3);
    }

    a1[1] = v17;
  }

  return result;
}

void OZChannelScale3D::getValue(OZChannelScale3D *this, const CMTime *a2, double *a3, double *a4, double *a5, double a6)
{
  if (a3)
  {
    OZChannel::getValueAsDouble((this + 136), a2, a6);
    *a3 = v12;
  }

  if (a4)
  {
    OZChannel::getValueAsDouble((this + 288), a2, a6);
    *a4 = v13;
  }

  if (a5)
  {
    OZChannel::getValueAsDouble((this + 440), a2, a6);
    *a5 = v14;
  }
}

void OZCurrentThread::OZCurrentThread(OZCurrentThread *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v1 = &unk_2871F2560;
  operator new();
}

void sub_25FB0E500(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x20C4093837F09);
  PCSingleton::~PCSingleton(v1);
  _Unwind_Resume(a1);
}

void OZCurrentThread::~OZCurrentThread(OZCurrentThread *this, const PCString *a2)
{
  OZCurrentThread::~OZCurrentThread(this, a2);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2871F2560;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = OZChannelBase::setRangeName(v3, a2);
    MEMORY[0x2666E9F00](v4, 0x20C4093837F09);
  }

  *(this + 1) = 0;

  PCSingleton::~PCSingleton(this);
}

uint64_t std::vector<TXGlyphRender>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TXGlyphRender>::__emplace_back_slow_path<TXGlyphRender>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v4 = *(a2 + 104);
    v5 = *(a2 + 120);
    v6 = *(a2 + 136);
    *(v3 + 88) = *(a2 + 88);
    *(v3 + 136) = v6;
    *(v3 + 120) = v5;
    *(v3 + 104) = v4;
    v7 = *(a2 + 24);
    v8 = *(a2 + 40);
    v9 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = v9;
    *(v3 + 40) = v8;
    *(v3 + 24) = v7;
    result = v3 + 152;
  }

  a1[1] = result;
  return result;
}

uint64_t std::vector<TXGlyphRender>::__emplace_back_slow_path<TXGlyphRender>(uint64_t *a1, uint64_t a2)
{
  v2 = 0x86BCA1AF286BCA1BLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1AF286BCA1AF286)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0xD79435E50D79436 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xD79435E50D79436 * ((a1[2] - *a1) >> 3);
  }

  if (0x86BCA1AF286BCA1BLL * ((a1[2] - *a1) >> 3) >= 0xD79435E50D7943)
  {
    v6 = 0x1AF286BCA1AF286;
  }

  else
  {
    v6 = v3;
  }

  v23 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TXGlyphRender>>(a1, v6);
  }

  v7 = 152 * v2;
  v20 = 0;
  v21 = v7;
  *(&v22 + 1) = 0;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(a2 + 56);
  v9 = *(a2 + 72);
  v10 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 24) = v10;
  v11 = *(a2 + 104);
  v12 = *(a2 + 120);
  v13 = *(a2 + 136);
  *(v7 + 88) = *(a2 + 88);
  *(v7 + 136) = v13;
  *(v7 + 120) = v12;
  *(v7 + 104) = v11;
  *(v7 + 72) = v9;
  *(v7 + 56) = v8;
  *&v22 = 152 * v2 + 152;
  v14 = a1[1];
  v15 = 152 * v2 + *a1 - v14;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TXGlyphRender>,TXGlyphRender*>(a1, *a1, v14, v15);
  v16 = *a1;
  *a1 = v15;
  v17 = a1[2];
  v19 = v22;
  *(a1 + 1) = v22;
  *&v22 = v16;
  *(&v22 + 1) = v17;
  v20 = v16;
  v21 = v16;
  std::__split_buffer<TXGlyphRender>::~__split_buffer(&v20);
  return v19;
}

void sub_25FB0E7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<TXGlyphRender>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TXGlyphRender>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1AF286BCA1AF287)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<TXGlyphRender>,TXGlyphRender*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v17 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      *(a4 + 8) = *(v6 + 8);
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      v7 = *(v6 + 104);
      v8 = *(v6 + 120);
      v9 = *(v6 + 136);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 136) = v9;
      *(a4 + 120) = v8;
      *(a4 + 104) = v7;
      v10 = *(v6 + 24);
      v11 = *(v6 + 40);
      v12 = *(v6 + 56);
      *(a4 + 72) = *(v6 + 72);
      *(a4 + 56) = v12;
      *(a4 + 40) = v11;
      *(a4 + 24) = v10;
      v6 += 152;
      a4 += 152;
    }

    while (v6 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      v13 = *(v5 + 16);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      v5 += 152;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TXGlyphRender>,TXGlyphRender*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<TXGlyphRender>,TXGlyphRender*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<TXGlyphRender>,TXGlyphRender*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<TXGlyphRender>,TXGlyphRender*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 136);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    v1 -= 152;
  }
}

void **std::__split_buffer<TXGlyphRender>::~__split_buffer(void **a1)
{
  std::__split_buffer<TXGlyphRender>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<TXGlyphRender>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 152;
    v4 = *(v1 - 136);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 152;
    }
  }
}

void LiImageFilter::LiImageFilter(LiImageFilter *this, uint64_t *a2)
{
  LiImageSource::LiImageSource(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 8) = 0;
}

void LiImageFilter::~LiImageFilter(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[5].var0;
  PCSharedCount::~PCSharedCount(this + 3);

  OZChannelBase::setRangeName(this, a2 + 1);
}

void PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(uint64_t a1, int a2, int a3)
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
    PCString::PCString(&v21, "PCArray::resize");
    PCException::PCException(exception, &v21);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        v9 = 16 * v6;
        v10 = a2 - v6;
        do
        {
          v11 = *(a1 + 16);
          *(v11 + v9) = 0;
          PCSharedCount::PCSharedCount((v11 + v9 + 8));
          v9 += 16;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = (16 * a2) | 8;
      v8 = a2;
      do
      {
        PCSharedCount::~PCSharedCount((*(a1 + 16) + v7));
        v7 += 16;
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

    v12 = *(a1 + 12);
    if (a2 >= v12)
    {
      v13 = *(a1 + 12);
    }

    else
    {
      v13 = a2;
    }

    if (v13 < 1)
    {
      v13 = 0;
    }

    else
    {
      v14 = 0;
      do
      {
        v15 = (v14 + *(a1 + 16));
        v14->var0 = v15->var0;
        PCSharedCount::PCSharedCount(v14 + 1, v15 + 1);
        PCSharedCount::~PCSharedCount((v14 + *(a1 + 16) + 8));
        v14 += 2;
      }

      while ((16 * v13) != v14);
      v12 = *(a1 + 12);
    }

    if (v13 < v12)
    {
      v16 = (16 * v13) | 8;
      do
      {
        PCSharedCount::~PCSharedCount((*(a1 + 16) + v16));
        v16 += 16;
        ++v13;
      }

      while (*(a1 + 12) > v13);
    }

    if (v13 < a2)
    {
      v17 = (16 * v13 + 8);
      do
      {
        v17[-1].var0 = 0;
        PCSharedCount::PCSharedCount(v17);
        v17 = v18 + 2;
        ++v13;
      }

      while (v13 < a2);
    }

    v19 = *(a1 + 16);
    if (v19)
    {
      MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void OZRenderGraphState::OZRenderGraphState(OZRenderGraphState *this, const OZRenderGraphState *a2)
{
  v4 = *a2;
  v5 = *(a2 + 1);
  v6 = *(a2 + 3);
  *(this + 2) = *(a2 + 2);
  *(this + 3) = v6;
  *this = v4;
  *(this + 1) = v5;
  std::list<OZEffect *>::list(this + 8, a2 + 64);
  *(this + 88) = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  *(this + 152) = *(a2 + 152);
  *(this + 136) = v9;
  *(this + 120) = v8;
  *(this + 104) = v7;
  v10 = *(a2 + 168);
  v11 = *(a2 + 184);
  v12 = *(a2 + 27);
  *(this + 200) = *(a2 + 200);
  *(this + 184) = v11;
  *(this + 168) = v10;
  *(this + 27) = v12;
  *(this + 28) = &unk_2871F25A8;
  *(this + 29) = 0;
  *(this + 30) = 0;
  v13 = *(a2 + 59);
  if (v13 > 0)
  {
    v14 = 2 * v13 + 1;
  }

  else
  {
    v14 = 0;
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(this + 224, v13, v14);
  if (*(a2 + 59) >= 1)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      LiLight::operator=(*(this + 30) + v15, *(a2 + 30) + v15);
      ++v16;
      v15 += 944;
    }

    while (v16 < *(a2 + 59));
  }

  *(this + 248) = *(a2 + 248);
  v17 = *(a2 + 16);
  v18 = *(a2 + 18);
  *(this + 17) = *(a2 + 17);
  *(this + 18) = v18;
  *(this + 16) = v17;
}

uint64_t PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F25A8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F25A8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<LiLight,PCArray_Traits<LiLight>>::resize(uint64_t a1, int a2, int a3)
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
        v9 = 944 * v6;
        v10 = a2 - v6;
        do
        {
          LiLight::LiLight((*(a1 + 16) + v9));
          v9 += 944;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v7 = 944 * a2;
      v8 = a2;
      do
      {
        LiLight::~LiLight((*(a1 + 16) + v7));
        v7 += 944;
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
        LiLight::LiLight(v13, (v13 + *(a1 + 16)));
        LiLight::~LiLight((v13 + *(a1 + 16)));
        v13 = (v13 + 944);
      }

      while ((944 * v12) != v13);
      v11 = *(a1 + 12);
    }

    if (v12 < v11)
    {
      v14 = 944 * v12;
      do
      {
        LiLight::~LiLight((*(a1 + 16) + v14));
        v14 += 944;
        ++v12;
      }

      while (*(a1 + 12) > v12);
    }

    if (v12 < a2)
    {
      v15 = (944 * v12);
      do
      {
        LiLight::LiLight(v15);
        v15 = (v16 + 944);
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

void LiString::dec(LiString *this)
{
  if (*this && atomic_fetch_add((*this - 12), 0xFFFFFFFF) == 1)
  {
    **this = 0;
    if (*this)
    {
      v2 = (*this - 12);
    }

    else
    {
      v2 = 0;
    }

    free(v2);
    *this = 0;
  }
}

void LiString::LiString(LiString *this, const char *a2)
{
  if (a2 && *a2)
  {
    v4 = 0;
      ;
    }

    v6 = malloc_type_malloc(v4 + 13, 0x10000403E1C8BA9uLL);
    v6[2] = v4 + 1;
    atomic_store(1u, v6);
    *this = v6 + 3;
    v6[1] = v4;
    memcpy(v6 + 3, a2, v4 + 1);
  }

  else
  {
    *this = 0;
  }
}

PCSharedCount *PCPtr<LiImageSource>::PCPtr<OZGradientSource>(PCSharedCount *a1, const PCSharedCount *a2)
{
  a1->var0 = a2->var0;
  PCSharedCount::PCSharedCount(a1 + 1);
  if (a1->var0)
  {
    PCSharedCount::PCSharedCount(&v5, a2 + 1);
    PCSharedCount::operator=(&a1[1], &v5);
    PCSharedCount::~PCSharedCount(&v5);
  }

  return a1;
}

void sub_25FB0F478(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  PCSharedCount::~PCSharedCount(&a10);
  PCSharedCount::~PCSharedCount(v10 + 1);
  _Unwind_Resume(a1);
}

void LiClipSet::~LiClipSet(LiClipSet *this)
{
  *(this + 3) = &unk_2871F25E0;
  v2 = *(this + 8);
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
    v4 = *(this + 9);
    v5 = *(this + 5);
    if ((v4 & 0x80000000) != 0)
    {
      bzero((v5 + 4 * v4), 4 * ~v4 + 4);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(this + 5);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(this + 5) = 0;
  }

  *(this + 8) = v3;
  *(this + 9) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(this + 5) = 0;
  *(this + 8) = 0;
  *this = &unk_2871F2618;
  v7 = *(this + 2);
  if (v7 < 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7 & ~(v7 >> 31);
  }

  if (v8 == v7)
  {
    v9 = *(this + 3);
    if ((v9 & 0x80000000) != 0)
    {
      v10 = 32 * v9;
      do
      {
        v11 = (*(this + 2) + v10);
        *v11 = 0uLL;
        v11[1] = 0uLL;
        v10 += 32;
      }

      while (!__CFADD__(v9++, 1));
    }
  }

  else
  {
    if (v8)
    {
      operator new[]();
    }

    v13 = *(this + 2);
    if (v13)
    {
      MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
    }

    *(this + 2) = 0;
  }

  *(this + 2) = v8;
  *(this + 3) = 0;
  v14 = *(this + 2);
  if (v14)
  {
    MEMORY[0x2666E9ED0](v14, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 2) = 0;
}

uint64_t PCArray<int,PCArray_Traits<int>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F25E0;
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
      bzero((v5 + 4 * v4), 4 * ~v4 + 4);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

{
  *a1 = &unk_2871F25E0;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<int,PCArray_Traits<int>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t PCArray<PCVector4<double>,PCArray_Traits<PCVector4<double>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F2618;
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
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 32 * v4;
      do
      {
        v6 = (*(a1 + 16) + v5);
        *v6 = 0uLL;
        v6[1] = 0uLL;
        v5 += 32;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<int,PCArray_Traits<int>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F25E0;
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
      bzero((v5 + 4 * v4), 4 * ~v4 + 4);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<PCVector4<double>,PCArray_Traits<PCVector4<double>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F2618;
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
    if ((v4 & 0x80000000) != 0)
    {
      v5 = 32 * v4;
      do
      {
        v6 = (*(a1 + 16) + v5);
        *v6 = 0uLL;
        v6[1] = 0uLL;
        v5 += 32;
      }

      while (!__CFADD__(v4++, 1));
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      MEMORY[0x2666E9ED0](v8, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v9 = *(a1 + 16);
  if (v9)
  {
    MEMORY[0x2666E9ED0](v9, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void LiCachedGaussianBlur::~LiCachedGaussianBlur(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[9].var0;
  OZRenderParams::~OZRenderParams(&this[12]);
  v5 = this[11].var0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = a2[2].var0;
  this->var0 = v6;
  *(this + v6[-1].info) = a2[7].var0;
  PCSharedCount::~PCSharedCount(this + 3);

  OZChannelBase::setRangeName(this, a2 + 3);
}

void std::vector<LiPolygon::PosEdge>::resize(void *a1, unint64_t a2)
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
    std::vector<LiPolygon::PosEdge>::__append(a1, a2 - v2);
  }
}

void std::vector<LiPolygon::PosEdge>::__append(uint64_t a1, unint64_t a2)
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
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<LiPolygon::PosEdge>>(a1, v10);
    }

    __p = 0;
    v12 = 32 * v8;
    v14 = 0;
    bzero((32 * v8), 32 * a2);
    v13 = 32 * v8 + 32 * a2;
    std::vector<LiPolygon::PosEdge>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 31) & 0xFFFFFFFFFFFFFFE0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25FB0FD6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<LiPolygon::PosEdge>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      *(v6 + 24) = *(v5 + 24);
      v5 += 32;
      v6 += 32;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<LiPolygon::PosEdge>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double *PCMatrix44Tmpl<double>::transform_row<double>(double *a1, double *a2, double *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  *a3 = *a2 * *a1 + v4 * a1[4] + v5 * a1[8] + v6 * a1[12];
  a3[1] = v3 * a1[1] + v4 * a1[5] + v5 * a1[9] + v6 * a1[13];
  a3[2] = v3 * a1[2] + v4 * a1[6] + v5 * a1[10] + v6 * a1[14];
  a3[3] = v3 * a1[3] + v4 * a1[7] + v5 * a1[11] + v6 * a1[15];
  return a3;
}

{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a1[15] + *a2 * a1[3] + v4 * a1[7] + v5 * a1[11];
  *a3 = (a1[12] + *a2 * *a1 + v4 * a1[4] + v5 * a1[8]) / v6;
  a3[1] = (a1[13] + v3 * a1[1] + v4 * a1[5] + v5 * a1[9]) / v6;
  a3[2] = (a1[14] + v3 * a1[2] + v4 * a1[6] + v5 * a1[10]) / v6;
  return a3;
}

uint64_t std::__tree<std::__value_type<char const*,void *>,std::__map_value_compare<char const*,std::__value_type<char const*,void *>,OZRenderParams::LessThanStringFunctor,true>,std::allocator<std::__value_type<char const*,void *>>>::find<char const*>(uint64_t a1, const char **a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  v5 = a1 + 8;
  do
  {
    v6 = strcmp(*(v3 + 32), v4);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || strcmp(v4, *(v5 + 32)) < 0)
  {
    return v2;
  }

  return v5;
}

void LiImageFilterChain::~LiImageFilterChain(PCSharedCount *this)
{
  v2 = this + 2;
  this[2].var0 = &unk_2871F2660;
  if (SLODWORD(this[3].var0) < 0)
  {
    var0 = 1;
  }

  else
  {
    var0 = this[3].var0;
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(v2, 0, var0);
  v4 = this[4].var0;
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  this[4].var0 = 0;
  LODWORD(this[3].var0) = 0;
  PCSharedCount::~PCSharedCount(this + 1);
}

uint64_t PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F2660;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F2660;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__tree<std::__value_type<char const*,void *>,std::__map_value_compare<char const*,std::__value_type<char const*,void *>,OZRenderParams::LessThanStringFunctor,true>,std::allocator<std::__value_type<char const*,void *>>>::__emplace_unique_key_args<char const*,std::piecewise_construct_t const&,std::tuple<char const* const&>,std::tuple<>>(uint64_t a1, const char **a2)
{
  v2 = *std::__tree<std::__value_type<char const*,void *>,std::__map_value_compare<char const*,std::__value_type<char const*,void *>,OZRenderParams::LessThanStringFunctor,true>,std::allocator<std::__value_type<char const*,void *>>>::__find_equal<char const*>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<char const*,void *>,std::__map_value_compare<char const*,std::__value_type<char const*,void *>,OZRenderParams::LessThanStringFunctor,true>,std::allocator<std::__value_type<char const*,void *>>>::__find_equal<char const*>(uint64_t a1, void *a2, const char **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *a3;
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *(v4 + 32);
        if ((strcmp(v6, v8) & 0x80000000) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_10;
        }
      }

      if ((strcmp(v8, v6) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_10:
  *a2 = v7;
  return v5;
}

void PCArray<unsigned long,PCArray_Traits<unsigned long>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_2871F2698;
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
      bzero((v5 + 8 * v4), 8 * ~v4 + 8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v5 = 0;
    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  if (v5)
  {
    MEMORY[0x2666E9ED0](v5, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t OZValueCache<OZBoundsCacheItem>::OZValueCache(uint64_t a1)
{
  *a1 = &unk_2871F26D0;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = xmmword_260347AE0;
  PCSharedMutex::PCSharedMutex((a1 + 40));
  return a1;
}

void OZValueCache<OZBoundsCacheItem>::~OZValueCache(uint64_t a1)
{
  OZValueCache<OZBoundsCacheItem>::~OZValueCache(a1);

  JUMPOUT(0x2666E9F00);
}

void std::__list_imp<OZBoundsCacheItem>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        (*v2[2])();
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t OZValueCache<OZProjectedBoundsCacheItem>::OZValueCache(uint64_t a1)
{
  *a1 = &unk_2871F2700;
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = xmmword_260347AE0;
  PCSharedMutex::PCSharedMutex((a1 + 40));
  return a1;
}

void OZValueCache<OZProjectedBoundsCacheItem>::~OZValueCache(uint64_t a1)
{
  OZValueCache<OZProjectedBoundsCacheItem>::~OZValueCache(a1);

  JUMPOUT(0x2666E9F00);
}

void std::vector<TXTabStop>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 69;
      v7 = v4 - 69;
      do
      {
        (**v7)(v7);
        v6 -= 69;
        v8 = v7 == v2;
        v7 -= 69;
      }

      while (!v8);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::deque<PCHash128>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 128;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 256;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy(uint64_t a1, PCString *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::destroy(a1, a2[1].var0);
    PCString::~PCString(a2 + 4);

    operator delete(a2);
  }
}

uint64_t OZValueCache<OZBoundsCacheItem>::~OZValueCache(uint64_t a1)
{
  *a1 = &unk_2871F26D0;
  OZValueCache<OZBoundsCacheItem>::flush(a1);
  PCSharedMutex::~PCSharedMutex((a1 + 40));
  std::__list_imp<OZBoundsCacheItem>::clear((a1 + 8));
  return a1;
}

uint64_t OZValueCache<OZProjectedBoundsCacheItem>::~OZValueCache(uint64_t a1)
{
  *a1 = &unk_2871F2700;
  OZValueCache<OZBoundsCacheItem>::flush(a1);
  PCSharedMutex::~PCSharedMutex((a1 + 40));
  std::__list_imp<OZBoundsCacheItem>::clear((a1 + 8));
  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[4];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::destroy(uint64_t a1, PCString *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::destroy(a1, a2[1].var0);
    PCString::~PCString(a2 + 5);

    operator delete(a2);
  }
}

void std::vector<TXParagraphStyle *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
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

void *std::map<long,double>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<long,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long,double>,std::__tree_node<std::__value_type<long,double>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<long,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long,double>,std::__tree_node<std::__value_type<long,double>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_hint_unique_key_args<long,std::pair<long const,double> const&>(v5, v5 + 1, v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_hint_unique_key_args<long,std::pair<long const,double> const&>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__find_equal<long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__find_equal<long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (v10[4] < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = v16[4];
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

char *std::vector<PCVector3<double>>::__assign_with_size[abi:ne200100]<PCVector3<double>*,PCVector3<double>*>(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result) >> 3) < a4)
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

      std::vector<PCVector3<double>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      v18 = *v5;
      *(result + 2) = *(v5 + 2);
      *result = v18;
      result += 24;
      v5 = (v5 + 24);
    }

    a1[1] = result;
  }

  else
  {
    v14 = a2 + v13;
    if (v12 != result)
    {
      do
      {
        v15 = *v5;
        *(result + 2) = *(v5 + 2);
        *result = v15;
        result += 24;
        v5 = (v5 + 24);
        v13 -= 24;
      }

      while (v13);
      v12 = a1[1];
    }

    v16 = v12;
    if (v14 != a3)
    {
      v16 = v12;
      v17 = v12;
      do
      {
        *v17 = *v14;
        *(v17 + 2) = *(v14 + 16);
        v14 += 24;
        v17 += 24;
        v16 += 24;
      }

      while (v14 != a3);
    }

    a1[1] = v16;
  }

  return result;
}

void std::vector<PCVector3<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<PCVector2<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *PCCache<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::~PCCache(uint64_t *a1)
{
  v2 = *a1 + 32;
  std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::destroy(*a1 + 24, *v2);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  *(v2 + 24) = *(v2 + 16);
  *(v2 + 48) = 0;
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::~PCCacheImpl(v3);
    MEMORY[0x2666E9F00](v4, 0x1020C4058232694);
  }

  return a1;
}

void std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::destroy(a1, a2[1]);
    v4 = a2[9];
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    operator delete(a2);
  }
}

uint64_t PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<long,double>,std::__tree_node<std::__value_type<long,double>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          v8[5] = v9[5];
          std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_multi<std::pair<long const,double> const&>();
  }

  return result;
}

void sub_25FB112A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__shared_ptr_emplace<TXTextStyle>::__shared_ptr_emplace[abi:ne200100]<TXTextStyle&,decltype(nullptr),std::allocator<TXTextStyle>,0>(void *a1, const TXTextStyle *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2871EE448;
  TXTextStyle::TXTextStyle((a1 + 3), a2, 0, 0);
  return a1;
}

uint64_t std::list<std::shared_ptr<TXTextStyle>>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__erase_unique<long>(uint64_t **a1, uint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    if (v2[4] >= v3)
    {
      v4 = v2;
    }

    v2 = v2[v2[4] < v3];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

void *std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
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

uint64_t std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_hint_unique_key_args<long,std::pair<long,double>>(void *a1, void *a2, uint64_t *a3)
{
  v3 = *std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__find_equal<long>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void std::list<OZProjectedBoundsCacheItem>::remove_if<OZ_VC_SameKey<OZProjectedBoundsCacheItem>>(uint64_t a1, double a2)
{
  v8[0] = v8;
  v8[1] = v8;
  v8[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v5 = *(v2 + 8);
      if (*(v2 + 24) == a2)
      {
        if (v5 == a1)
        {
          v7 = 1;
        }

        else
        {
          do
          {
            v6 = *(v5 + 24);
            v7 = v6 == a2;
            if (v6 != a2)
            {
              break;
            }

            v5 = *(v5 + 8);
          }

          while (v5 != a1);
        }

        std::list<std::shared_ptr<TXTextStyle>>::splice(v8, v8, a1, v2, v5);
        if (!v7)
        {
          v5 = *(v5 + 8);
        }
      }

      v2 = v5;
    }

    while (v5 != a1);
  }

  std::__list_imp<OZBoundsCacheItem>::clear(v8);
}

void sub_25FB11864(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<OZBoundsCacheItem>::clear(va);
  _Unwind_Resume(a1);
}

void std::list<OZProjectedBoundsCacheItem>::pop_front(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v4 = *v2;
  v3 = v2[1];
  *(v4 + 8) = v3;
  *v3 = v4;
  *(a1 + 16) = v1 - 1;
  (*v2[2])();

  operator delete(v2);
}

void PCArray<unsigned long,PCArray_Traits<unsigned long>>::resize(uint64_t a1, int a2, int a3)
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
    PCString::PCString(&v15, "PCArray::resize");
    PCException::PCException(exception, &v15);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (v6 < a2)
    {
      bzero((*(a1 + 16) + 8 * v6), 8 * (~v6 + a2) + 8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v7 = *(a1 + 12);
    if (a2 >= v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a2;
    }

    if (v8 < 1)
    {
      LODWORD(v8) = 0;
    }

    else
    {
      v9 = *(a1 + 16);
      v10 = v8;
      v11 = 0;
      do
      {
        v12 = *v9++;
        *v11++ = v12;
        --v10;
      }

      while (v10);
    }

    if (v8 > v7)
    {
      v7 = v8;
    }

    if (v7 < a2)
    {
      bzero((8 * v7), 8 * (~v7 + a2) + 8);
    }

    v13 = *(a1 + 16);
    if (v13)
    {
      MEMORY[0x2666E9ED0](v13, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

uint64_t *std::__tree<std::__value_type<int,PCRect<double>>,std::__map_value_compare<int,std::__value_type<int,PCRect<double>>,std::less<int>,true>,std::allocator<std::__value_type<int,PCRect<double>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
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

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<CTParagraphStyleSetting>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

const void **PCCFRef<__CTLine const*>::~PCCFRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t std::vector<std::vector<unsigned long>>::__construct_one_at_end[abi:ne200100]<std::vector<unsigned long> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v3, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<unsigned long>>::__emplace_back_slow_path<std::vector<unsigned long> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(&v14);
  return v8;
}

void sub_25FB11EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB11F5C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<unsigned long>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::__shared_ptr_emplace<TXTextObject>::__shared_ptr_emplace[abi:ne200100]<TXTextLayout *,unsigned int,std::allocator<TXTextObject>,0>(void *a1, TXTextLayout **a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2871F2730;
  TXTextObject::TXTextObject((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<TXTextObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2871F2730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void *std::vector<std::shared_ptr<TXTextObject>>::__move_range(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v9 = v7;
    v8 = *(a1 + 8);
    do
    {
      *v8++ = *v9;
      *v9 = 0;
      v9[1] = 0;
      v9 += 2;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *>(&v11, a2, v7, v6);
}

__int128 *std::__split_buffer<std::shared_ptr<TXTextObject>>::emplace_back<std::shared_ptr<TXTextObject> const&>(__int128 *result, void *a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (v4 == *(result + 3))
  {
    v5 = *(result + 1);
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v8 = 1;
      }

      else
      {
        v8 = (v4 - *result) >> 3;
      }

      v9 = *(result + 4);
      v11[4] = *(v3 + 4);
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(v9, v8);
    }

    v6 = (((v5 - *result) >> 4) + 1 + ((((v5 - *result) >> 4) + 1) >> 63)) >> 1;
    result = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *>(v11, v5, v4, &v5[-v6]);
    v4 = v7;
    *(v3 + 1) -= 16 * v6;
    *(v3 + 2) = v7;
  }

  *v4 = *a2;
  v10 = a2[1];
  *(v4 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v4 = *(v3 + 2);
  }

  *(v3 + 2) = v4 + 16;
  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = *(v7 - 1);
      v7 -= 2;
      *v7 = 0;
      v7[1] = 0;
      v9 = *(a4 - 8);
      *(a4 - 16) = v8;
      a4 -= 16;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__int128 *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *,std::shared_ptr<TXTextObject> *>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v8 = *(a4 + 8);
      *a4 = v7;
      if (v8)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      ++v5;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::__split_buffer<std::shared_ptr<TXTextObject>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<TXTextObject>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<TXTextObject>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_25FB1282C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<OZFontFace>::shared_ptr[abi:ne200100]<TXCoreTextTypeface,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<TXCoreTextTypeface *,std::shared_ptr<OZCoreTextTypeface>::__shared_ptr_default_delete<OZCoreTextTypeface,TXCoreTextTypeface>,std::allocator<TXCoreTextTypeface>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TXCoreTextTypeface *,std::shared_ptr<OZCoreTextTypeface>::__shared_ptr_default_delete<OZCoreTextTypeface,TXCoreTextTypeface>,std::allocator<TXCoreTextTypeface>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::__tree<std::__value_type<int,BOOL>,std::__map_value_compare<int,std::__value_type<int,BOOL>,std::less<int>,true>,std::allocator<std::__value_type<int,BOOL>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

char *std::vector<unsigned long>::__insert_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
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

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
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
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<int,TXDirectionalRun>,std::__map_value_compare<int,std::__value_type<int,TXDirectionalRun>,std::less<int>,true>,std::allocator<std::__value_type<int,TXDirectionalRun>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int &&>,std::tuple<>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::__erase_unique<unsigned int>(void *a1, unsigned int *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::find<unsigned int>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,void *>>>::operator()[abi:ne200100](&v6, v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::shared_ptr<TXTextObject>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,TXComposedCharacter>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,TXComposedCharacter>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,TXComposedCharacter>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
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

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,TXComposedCharacter>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,TXComposedCharacter>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCString::~PCString(v2 + 5);
    }

    operator delete(v2);
  }

  return a1;
}

__int128 **std::vector<PCVector2<double>>::__swap_out_circular_buffer(__int128 **result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = (a2[1] + *result - v3);
  if (v3 != *result)
  {
    v5 = *result;
    v6 = (a2[1] + *result - v3);
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v8 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

uint64_t std::vector<PCVector3<double>>::__emplace_back_slow_path<PCVector3<double> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v14 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a1, v6);
  }

  v7 = 24 * v2;
  __p = 0;
  v11 = v7;
  *v7 = *a2;
  *(v7 + 16) = *(a2 + 16);
  v12 = 24 * v2 + 24;
  v13 = 0;
  std::vector<PCVector3<double>>::__swap_out_circular_buffer(a1, &__p);
  v8 = a1[1];
  if (v12 != v11)
  {
    v12 = (v12 - v11 - 24) % 0x18uLL + v11;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_25FB131C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<PCVector3<double>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 16) = *(v5 + 16);
      v5 += 24;
      v6 += 24;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

uint64_t std::__tree<OZSnap>::__emplace_unique_key_args<OZSnap,OZSnap>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<OZSnap>::__find_equal<OZSnap>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<OZSnap>::__construct_node<OZSnap>();
  }

  return result;
}

void *std::__tree<OZSnap>::__find_equal<OZSnap>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!OZSnap::operator<(a3, v4 + 28))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!OZSnap::operator<(v7 + 28, a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void sub_25FB13404(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t std::__shared_ptr_emplace<PCWorkingColor>::__shared_ptr_emplace[abi:ne200100]<PCWorkingColor const&,std::allocator<PCWorkingColor>,0>(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2871F27E8;
  *(a1 + 24) = *a2;
  v4 = *(a2 + 16);
  *(a1 + 40) = v4;
  if (v4)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v4);
  }

  v5 = *(a2 + 24);
  *(a1 + 56) = *(a2 + 32);
  *(a1 + 48) = v5;
  return a1;
}

void std::__shared_ptr_emplace<PCWorkingColor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2871F27E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::addValue(uint64_t a1, __int128 *a2, uint64_t *a3, unint64_t a4)
{
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v8 = std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::find<ColorConversionKey>(a1 + 24, a2);
    v36 = v8;
    if (a1 + 32 == v8)
    {
      v19 = *(a1 + 72) + 1;
      *(a1 + 72) = v19;
      v20 = *a3;
      v21 = a3[1];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        v22 = a2[1];
        v27 = *a2;
        v28 = v22;
        v29 = v20;
        v30 = v21;
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v23 = a2[1];
        v27 = *a2;
        v28 = v23;
        v29 = v20;
        v30 = 0;
      }

      v31 = a4;
      v32 = v19;
      v33 = 0;
      v34 = std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::__emplace_unique_key_args<ColorConversionKey,std::pair<ColorConversionKey const,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>(a1 + 24, &v27);
      v35 = v24;
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::add(a1 + 48, &v34);
      *(a1 + 80) += a4;
      if (!*(a1 + 104))
      {
        while (*(a1 + 80) > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v26 = *(a1 + 48);
          if (v26 == *(a1 + 56))
          {
            break;
          }

          *&v27 = *v26;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::remove((a1 + 48), &v27);
          v25 = v27;
          *(a1 + 80) -= *(v27 + 80);
          std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::erase((a1 + 24), v25);
        }
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }

    else
    {
      v9 = v8;
      v11 = *a3;
      v10 = a3[1];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = *(v8 + 72);
      v9[8] = v11;
      v9[9] = v10;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = *(a1 + 72) + 1;
      *(a1 + 72) = v13;
      v9[11] = v13;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v36);
      v14 = v36;
      v15 = a4 - *(v36 + 80);
      if (v15)
      {
        v16 = *(a1 + 80) + v15;
        *(a1 + 80) = v16;
        *(v14 + 80) = a4;
        if (!*(a1 + 104))
        {
          while (v16 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v18 = *(a1 + 48);
            if (v18 == *(a1 + 56))
            {
              break;
            }

            *&v27 = *v18;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::remove((a1 + 48), &v27);
            v17 = v27;
            *(a1 + 80) -= *(v27 + 80);
            std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::erase((a1 + 24), v17);
            v16 = *(a1 + 80);
          }
        }
      }
    }
  }
}

void sub_25FB137C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(exception_object);
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 96) = v6;
  v8 = *(a1 + 16);
  if (v5 >= v8)
  {
    if ((v6 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 - v4;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v6 + 1))
    {
      v11 = v6 + 1;
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v12);
    }

    *(8 * v6) = v7;
    v9 = 8 * v6 + 8;
    v13 = *(a1 + 8) - *a1;
    v14 = (8 * v6 - v13);
    memcpy(v14, *a1, v13);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v5 = v7;
    v9 = (v5 + 1);
  }

  *(a1 + 8) = v9;
  v16 = *(*a2 + 96);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 88) <= *(v18 + 88))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 96) = v16;
      v18 = v17[v20];
      *(v18 + 96) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

uint64_t std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::find<ColorConversionKey>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = ColorConversionKey::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || ColorConversionKey::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

BOOL ColorConversionKey::operator<(uint64_t a1, uint64_t a2)
{
  v2 = *a1 < *a2;
  if (*a1 != *a2)
  {
    return v2;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  v2 = v3 < v4;
  if (v3 != v4)
  {
    return v2;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  v2 = v5 < v6;
  if (v5 != v6)
  {
    return v2;
  }

  v8 = *(a1 + 12);
  v9 = *(a2 + 12);
  v10 = v8 < v9;
  if (v8 != v9)
  {
    return v10;
  }

  v11 = *(a1 + 16);
  v12 = *(a2 + 16);
  v10 = v11 < v12;
  if (v11 != v12)
  {
    return v10;
  }

  v13 = *(a1 + 20);
  v14 = *(a2 + 20);
  v10 = v13 < v14;
  if (v13 != v14)
  {
    return v10;
  }

  return operator<((a1 + 24), a2 + 24);
}

uint64_t std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::__emplace_unique_key_args<ColorConversionKey,std::pair<ColorConversionKey const,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::__find_equal<ColorConversionKey>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::__find_equal<ColorConversionKey>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!ColorConversionKey::operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!ColorConversionKey::operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 96);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 96) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

void std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::__append(a1, a2 - v2);
  }
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 96);
  v5 = (2 * v4) | 1;
  if (v5 >= v3 >> 3)
  {
LABEL_24:
    if (v4)
    {
      v17 = *(v2 + 8 * v4);
      do
      {
        v18 = v4 - 1;
        v19 = (v4 - 1) >> 1;
        v20 = *(v2 + 8 * v19);
        if (*(v20 + 88) <= *(v17 + 88))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 96) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 96) = v19;
        v4 = (v4 - 1) >> 1;
      }

      while (v18 > 1);
    }

    return result;
  }

  v6 = 0;
  v7 = v3 >> 3;
  v8 = 2 * v4;
  v9 = *(v2 + 8 * v4);
  while (1)
  {
    v10 = v8 + 2;
    v11 = *(v9 + 88);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 88);
    v13 = *(*(v2 + 8 * v5) + 88);
    if (v11 <= v13 && !v12)
    {
      break;
    }

    v15 = v11 > v13 && v12;
    if (v12)
    {
      v16 = v10;
    }

    else
    {
      v16 = v5;
    }

    if (v15)
    {
      if (v13 <= *(*(v2 + 8 * v10) + 88))
      {
        v16 = v5;
      }

      else
      {
        v16 = v10;
      }
    }

    *(v2 + 8 * v4) = *(v2 + 8 * v16);
    *(v2 + 8 * v16) = v9;
    v2 = *result;
    *(*(*result + 8 * v4) + 96) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 96) = v16;
    v8 = 2 * v16;
    v6 = 1;
    v5 = (2 * v16) | 1;
    v4 = v16;
    if (v5 >= v7)
    {
      return result;
    }
  }

  if ((v6 & 1) == 0)
  {
    v4 = *(*a2 + 96);
    goto LABEL_24;
  }

  return result;
}

void std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t *std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, a2);
  v4 = a2[9];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(a2);
  return v3;
}

void *PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::findValue@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  result = std::__tree<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__map_value_compare<ColorConversionKey,std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::less<ColorConversionKey>,true>,std::allocator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>>>::find<ColorConversionKey>((a1 + 3), a2);
  v10 = result;
  if (a1 + 4 == result)
  {
    *a3 = 0;
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = result[9];
    *a4 = result[8];
    a4[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = a1[9] + 1;
    a1[9] = v9;
    result[11] = v9;
    result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::bubble(a1 + 6, &v10);
    *a3 = 1;
  }

  return result;
}

void sub_25FB13F74(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FB1400C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<TXTextStyle>::shared_ptr[abi:ne200100]<TXTextStyle,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<TXTextStyle *,std::shared_ptr<TXTextStyle>::__shared_ptr_default_delete<TXTextStyle,TXTextStyle>,std::allocator<TXTextStyle>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TXTextStyle *,std::shared_ptr<TXTextStyle>::__shared_ptr_default_delete<TXTextStyle,TXTextStyle>,std::allocator<TXTextStyle>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL PCMatrix44Tmpl<double>::getPartialTransformation(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[5];
  v99 = a1[4];
  v100 = v3;
  v4 = a1[7];
  v101 = a1[6];
  v102 = v4;
  v5 = a1[1];
  v95 = *a1;
  v96 = v5;
  v6 = a1[3];
  v97 = a1[2];
  v98 = v6;
  if (*(&v4 + 1) == 0.0)
  {
    return 0;
  }

  v11 = 0;
  v12 = &v95;
  do
  {
    for (i = 0; i != 32; i += 8)
    {
      *(v12 + i) = *(v12 + i) / *(&v102 + 1);
    }

    ++v11;
    v12 += 2;
  }

  while (v11 != 4);
  v14 = 0;
  v94 = 0x3FF0000000000000;
  v86[5] = 0x3FF0000000000000;
  v85 = 0x3FF0000000000000;
  v86[0] = 0x3FF0000000000000;
  memset(&v86[1], 0, 32);
  v87 = 0u;
  v88 = 0u;
  v89 = 0x3FF0000000000000;
  v90 = 0;
  v82 = 0x3FF0000000000000;
  v79 = 0x3FF0000000000000;
  v76 = 1.0;
  v77 = 0u;
  v78 = 0u;
  v80 = 0u;
  v81 = 0u;
  v83 = 0u;
  v84 = 0u;
  v74 = 0u;
  v75 = 0u;
  do
  {
    v15 = &v86[v14];
    v16 = *(&v95 + v14 * 8 + 16);
    *v15 = *(&v95 + v14 * 8);
    v15[1] = v16;
    v14 += 4;
  }

  while (v14 != 16);
  v91 = 0;
  v92 = 0;
  v93 = 0;
  v94 = 0x3FF0000000000000;
  v17 = PCMatrix44Tmpl<double>::determinant(v86);
  v7 = v17 != 0.0;
  if (v17 != 0.0)
  {
    v18 = v101;
    v19 = v102;
    if (*&v101 != 0.0 || *(&v101 + 1) != 0.0 || *&v102 != 0.0)
    {
      v20 = 0;
      v21 = *(&v102 + 1);
      do
      {
        v22 = (&v76 + v20 * 8);
        v23 = *&v86[v20 + 2];
        *v22 = *&v86[v20];
        v22[1] = v23;
        v20 += 4;
      }

      while (v20 != 16);
      PCMatrix44Tmpl<double>::invert(&v76, &v76, 0.0);
      v24 = v77;
      v25 = v78;
      v26 = *(&v81 + 1);
      *&v77 = *(&v78 + 1);
      *(&v77 + 1) = v81;
      *&v78 = *(&v83 + 1);
      v27 = v83;
      *(&v78 + 1) = v24;
      v28 = *(&v80 + 1);
      *&v81 = *(&v24 + 1);
      *(&v81 + 1) = v80;
      *&v80 = v26;
      *&v83 = *(&v84 + 1);
      *(&v80 + 1) = v84;
      *(&v83 + 1) = v25;
      *&v84 = v28;
      *(&v84 + 1) = v27;
      v74 = v18;
      *&v75 = v19;
      *(&v75 + 1) = v21;
      PCMatrix44Tmpl<double>::transform<double>(&v76, &v74, &v74);
    }

    v29 = *(&v98 + 1);
    *a2 = *(&v96 + 1);
    *(a2 + 8) = v29;
    *(a2 + 16) = *(&v100 + 1);
    *a3 = v95;
    *(a3 + 16) = v96;
    *(a3 + 32) = v97;
    v30.f64[1] = *(&v99 + 1);
    *(a3 + 64) = v99;
    v31 = *(a3 + 24);
    v32 = *a3 * *a3 + *(a3 + 8) * *(a3 + 8) + *(a3 + 16) * *(a3 + 16);
    v33 = (a3 + 64);
    *(a3 + 48) = v98;
    *(a3 + 80) = v100;
    *(a2 + 24) = sqrt(v32 + v31 * v31);
    v30.f64[0] = 1.0;
    v34 = PCVector4<double>::scale(a3, v30);
    v35 = *(a3 + 8);
    v36 = *(a3 + 32);
    v37 = *(a3 + 40);
    v38 = *(a3 + 16);
    v39 = *(a3 + 24);
    v40 = *(a3 + 48);
    v41 = *(a3 + 56);
    v42 = *a3 * v36 + v35 * v37 + v38 * v40 + v39 * v41;
    v34.f64[0] = v36 - *a3 * v42;
    v43 = v37 - v35 * v42;
    v44 = v40 - v38 * v42;
    v45 = v41 - v39 * v42;
    *(a3 + 32) = v34.f64[0];
    *(a3 + 40) = v43;
    *(a3 + 48) = v44;
    *(a3 + 56) = v45;
    *(a2 + 32) = sqrt(v45 * v45 + v44 * v44 + v34.f64[0] * v34.f64[0] + v43 * v43);
    v34.f64[0] = 1.0;
    v46 = PCVector4<double>::scale((a3 + 32), v34);
    v47 = *(a3 + 8);
    v48 = *(a3 + 64);
    v49 = *(a3 + 72);
    v50 = *(a3 + 16);
    v51 = *(a3 + 24);
    v52 = *(a3 + 80);
    v53 = *(a3 + 88);
    v54 = *a3 * v48 + v47 * v49 + v50 * v52 + v51 * v53;
    v46.f64[0] = v48 - *a3 * v54;
    v55 = v49 - v47 * v54;
    v56 = v52 - v50 * v54;
    v57 = v53 - v51 * v54;
    v58 = *(a3 + 32);
    v59 = *(a3 + 40);
    v60 = *(a3 + 48);
    v61 = *(a3 + 56);
    v62 = v46.f64[0] * v58 + v55 * v59 + v56 * v60 + v57 * v61;
    *(a2 + 80) = v54;
    *(a2 + 88) = v62;
    v46.f64[0] = v46.f64[0] - v58 * v62;
    v63 = v55 - v59 * v62;
    v64 = v56 - v60 * v62;
    v65 = v57 - v61 * v62;
    *(a3 + 64) = v46.f64[0];
    *(a3 + 72) = v63;
    *(a3 + 80) = v64;
    *(a3 + 88) = v65;
    *(a2 + 40) = sqrt(v65 * v65 + v64 * v64 + v46.f64[0] * v46.f64[0] + v63 * v63);
    v46.f64[0] = 1.0;
    PCVector4<double>::scale((a3 + 64), v46);
    v66 = *(a2 + 40);
    *(a2 + 80) = vdivq_f64(*(a2 + 80), vdupq_lane_s64(v66, 0));
    v67 = *(a3 + 40);
    v68 = *(a3 + 72);
    *&v69.f64[0] = vdupq_laneq_s64(v68, 1).u64[0];
    v69.f64[1] = *(a3 + 64);
    *&v70.f64[0] = vdupq_laneq_s64(v67, 1).u64[0];
    v70.f64[1] = *(a3 + 32);
    v71 = vmulq_f64(vsubq_f64(vmulq_f64(v67, v69), vmulq_f64(v68, v70)), *a3);
    v72 = vmulq_f64(COERCE_UNSIGNED_INT64(v70.f64[1] * v68.f64[0] - v69.f64[1] * v67.f64[0]), *(a3 + 16));
    if (vaddq_f64(vaddq_f64(vaddq_f64(v71, vdupq_laneq_s64(v71, 1)), v72), vdupq_laneq_s64(v72, 1)).f64[0] < 0.0)
    {
      *(a2 + 24) = vnegq_f64(*(a2 + 24));
      *(a2 + 40) = -*&v66;
      v73 = 3;
      do
      {
        *(v33 - 8) = -*(v33 - 8);
        *(v33 - 4) = -*(v33 - 4);
        *v33 = -*v33;
        ++v33;
        --v73;
      }

      while (v73);
    }
  }

  return v7;
}

double PCMatrix44Tmpl<double>::determinant(uint64_t a1)
{
  v2 = *(a1 + 64);
  v1 = *(a1 + 72);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a1 + 112);
  v6 = *(a1 + 80);
  v7 = vmulq_f64(vextq_s8(v5, v5, 8uLL), v6);
  v8 = v3 * v2 - v1 * v4;
  v9 = vsubq_f64(vmulq_n_f64(v5, v1), vmulq_n_f64(v6, v3));
  v10 = vsubq_f64(vmulq_n_f64(v5, v2), vmulq_n_f64(v6, v4));
  v12 = *(a1 + 32);
  v11 = *(a1 + 48);
  v13 = vmulq_n_f64(v11, v8);
  v14 = vmulq_n_f64(v12, vsubq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0]);
  v15 = vaddq_f64(vsubq_f64(vextq_s8(v14, v14, 8uLL), vmulq_n_f64(vzip2q_s64(v9, v10), v11.f64[0])), vmulq_laneq_f64(vzip1q_s64(v9, v10), v11, 1));
  v16 = vaddq_f64(v13, vsubq_f64(vmulq_n_f64(v9, v12.f64[0]), vmulq_laneq_f64(v10, v12, 1)));
  v17 = vmulq_f64(v15, *a1);
  v18 = vmulq_f64(v16, vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL));
  *&result = *&vsubq_f64(vaddq_f64(vdupq_laneq_s64(v18, 1), vsubq_f64(v17, vdupq_laneq_s64(v17, 1))), v18);
  return result;
}

const PCString *std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::find<PCString>(const PCString *a1, PCString *a2)
{
  v2 = a1 + 1;
  var0 = a1[1].var0;
  if (!var0)
  {
    return v2;
  }

  v5 = a1 + 1;
  do
  {
    v6 = PCString::compare(var0 + 4, a2);
    if (v6 >= 0)
    {
      v5 = var0;
    }

    var0 = *(&var0->var0 + ((v6 >> 28) & 8));
  }

  while (var0);
  if (v5 == v2 || (PCString::compare(a2, v5 + 4) & 0x80000000) != 0)
  {
    return v2;
  }

  return v5;
}

__CFString *std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__emplace_unique_key_args<PCString,std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>(PCString *a1, PCString *this)
{
  var0 = std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__find_equal<PCString>(a1, &v4, this)->var0;
  if (!var0)
  {
    std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<PCString const&>,std::tuple<>>();
  }

  return var0;
}

PCString *std::__tree<std::__value_type<PCString,TXFont *>,std::__map_value_compare<PCString,std::__value_type<PCString,TXFont *>,std::less<PCString>,true>,std::allocator<std::__value_type<PCString,TXFont *>>>::__find_equal<PCString>(PCString *a1, PCString **a2, PCString *this)
{
  v5 = a1 + 1;
  var0 = a1[1].var0;
  if (var0)
  {
    do
    {
      while (1)
      {
        v7 = var0;
        if ((PCString::compare(this, var0 + 4) & 0x80000000) == 0)
        {
          break;
        }

        var0 = v7->var0;
        v5 = v7;
        if (!v7->var0)
        {
          goto LABEL_9;
        }
      }

      if ((PCString::compare(v7 + 4, this) & 0x80000000) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      var0 = v7[1].var0;
    }

    while (var0);
  }

  else
  {
    v7 = a1 + 1;
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCString,TXFont *>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCString,TXFont *>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PCString::~PCString(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::__value_type<unsigned int,PCBox<double>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCBox<double>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCBox<double>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(uint64_t a1, const PCHash128 *a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = operator<((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || operator<(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(uint64_t a1, void *a2, const PCHash128 *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        if (!operator<(a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      if (!operator<((v7 + 4), a3))
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

uint64_t std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<CMTime,std::vector<CMTime>>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB14B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<CMTime,std::vector<CMTime>>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,std::vector<CMTime>>>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<CMTime,std::vector<CMTime>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::pair<CMTime,std::vector<CMTime>>>,std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 16) = *(v6 + 2);
      *v4 = v7;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      std::vector<CMTime>::__init_with_size[abi:ne200100]<CMTime*,CMTime*>(v4 + 24, *(v6 + 3), *(v6 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(v6 + 4) - *(v6 + 3)) >> 3));
      v6 += 3;
      v4 = v12 + 48;
      v12 += 48;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<CMTime,std::vector<CMTime>>>,std::pair<CMTime,std::vector<CMTime>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::vector<CMTime>::__init_with_size[abi:ne200100]<CMTime*,CMTime*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<PCVector3<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FB14D3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<CMTime,std::vector<CMTime>>>,std::pair<CMTime,std::vector<CMTime>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<CMTime,std::vector<CMTime>>>,std::pair<CMTime,std::vector<CMTime>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<CMTime,std::vector<CMTime>>>,std::pair<CMTime,std::vector<CMTime>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 48;
  }
}

void std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<CMTime,std::vector<CMTime>>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::pair<CMTime,std::vector<CMTime>>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 48)
  {
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

uint64_t TXTextLayout_Factory::getInstance(TXTextLayout_Factory *this)
{
  if (atomic_load_explicit(&TXTextLayout_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextLayout_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextLayout_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextLayout_Factory::_instance;
}

uint64_t TXTextInput_Factory::getInstance(TXTextInput_Factory *this)
{
  if (atomic_load_explicit(&TXTextInput_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextInput_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextInput_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextInput_Factory::_instance;
}

uint64_t TXTextBehavior_Factory::getInstance(TXTextBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXTextBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextBehavior_Factory::_instance;
}

uint64_t TXTextTrackingBehavior_Factory::getInstance(TXTextTrackingBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXTextTrackingBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextTrackingBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextTrackingBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextTrackingBehavior_Factory::_instance;
}

uint64_t TXTypeOnBehavior_Factory::getInstance(TXTypeOnBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXTypeOnBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTypeOnBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTypeOnBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTypeOnBehavior_Factory::_instance;
}

uint64_t TXCrawlLeftBehavior_Factory::getInstance(TXCrawlLeftBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXCrawlLeftBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXCrawlLeftBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXCrawlLeftBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXCrawlLeftBehavior_Factory::_instance;
}

uint64_t TXCrawlRightBehavior_Factory::getInstance(TXCrawlRightBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXCrawlRightBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXCrawlRightBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXCrawlRightBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXCrawlRightBehavior_Factory::_instance;
}

uint64_t TXScrollUpBehavior_Factory::getInstance(TXScrollUpBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXScrollUpBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXScrollUpBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXScrollUpBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXScrollUpBehavior_Factory::_instance;
}

uint64_t TXScrollDownBehavior_Factory::getInstance(TXScrollDownBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXScrollDownBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXScrollDownBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXScrollDownBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXScrollDownBehavior_Factory::_instance;
}

uint64_t TXTextSequenceBehavior_Factory::getInstance(TXTextSequenceBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXTextSequenceBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextSequenceBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextSequenceBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextSequenceBehavior_Factory::_instance;
}

uint64_t TXSequenceBehavior_Factory::getInstance(TXSequenceBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXSequenceBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXSequenceBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXSequenceBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXSequenceBehavior_Factory::_instance;
}

uint64_t TXTextScrollBehavior_Factory::getInstance(TXTextScrollBehavior_Factory *this)
{
  if (atomic_load_explicit(&TXTextScrollBehavior_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextScrollBehavior_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextScrollBehavior_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextScrollBehavior_Factory::_instance;
}

uint64_t TXTextStyle_Factory::getInstance(TXTextStyle_Factory *this)
{
  if (atomic_load_explicit(&TXTextStyle_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle_Factory::_instance;
}

uint64_t TXNumberGenerator_Factory::getInstance(TXNumberGenerator_Factory *this)
{
  if (!TXNumberGenerator_Factory::_instance)
  {
    operator new();
  }

  return TXNumberGenerator_Factory::_instance;
}

uint64_t TXTimecodeGenerator_Factory::getInstance(TXTimecodeGenerator_Factory *this)
{
  if (!TXTimecodeGenerator_Factory::_instance)
  {
    operator new();
  }

  return TXTimecodeGenerator_Factory::_instance;
}

uint64_t TXTimeDateGenerator_Factory::getInstance(TXTimeDateGenerator_Factory *this)
{
  if (!TXTimeDateGenerator_Factory::_instance)
  {
    operator new();
  }

  return TXTimeDateGenerator_Factory::_instance;
}

uint64_t TXTextFromFileGenerator_Factory::getInstance(TXTextFromFileGenerator_Factory *this)
{
  if (!TXTextFromFileGenerator_Factory::_instance)
  {
    operator new();
  }

  return TXTextFromFileGenerator_Factory::_instance;
}

uint64_t TXTranscriptionGenerator_Factory::getInstance(TXTranscriptionGenerator_Factory *this)
{
  if (!TXTranscriptionGenerator_Factory::_instance)
  {
    operator new();
  }

  return TXTranscriptionGenerator_Factory::_instance;
}

uint64_t TXTextGenerator_Factory::getInstance(TXTextGenerator_Factory *this)
{
  if (!TXTextGenerator_Factory::_instance)
  {
    operator new();
  }

  return TXTextGenerator_Factory::_instance;
}

uint64_t TXChannelString_Factory::getInstance(TXChannelString_Factory *this)
{
  if (atomic_load_explicit(&TXChannelString_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXChannelString_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXChannelString_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXChannelString_Factory::_instance;
}

uint64_t TXChannelFont_Factory::getInstance(TXChannelFont_Factory *this)
{
  if (atomic_load_explicit(&TXChannelFont_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXChannelFont_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXChannelFont_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXChannelFont_Factory::_instance;
}

uint64_t TXChannelAlignment_Factory::getInstance(TXChannelAlignment_Factory *this)
{
  if (atomic_load_explicit(&TXChannelAlignment_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXChannelAlignment_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXChannelAlignment_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXChannelAlignment_Factory::_instance;
}

void TXTextLayout_Factory::TXTextLayout_Factory(TXTextLayout_Factory *this)
{
  v3 = xmmword_260348380;
  v4 = xmmword_260347A50;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871F28D0;
  *(this + 16) = &unk_2871F29A0;
  *(this + 17) = 0;
}

void TXTextLayout_Factory::~TXTextLayout_Factory(TXTextLayout_Factory *this)
{
  TXTextLayout_Factory::~TXTextLayout_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2871F28D0;
  v2 = (this + 128);
  *(this + 16) = &unk_2871F29A0;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 72))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *TXTextLayout_Factory::create(TXTextLayout_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v14, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v13, @"Motion Effect");
  v6 = *(this + 17);
  if (v6)
  {
    v7 = v6 + 200;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*this + 24))(this, v7, 40);
  v9 = v8;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v8);
  }

  OZChannelBase::setID(&v9->var7, NextUniqueID);
  v10 = (*(v9->var0 + 80))(v9);
  OZChannelBase::setName(v10, a2, 0);
  (*(v9->var0 + 115))(v9);
  OZChannelBase::setRangeName(&v13, v11);
  return v9;
}

void sub_25FB15DF4(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C4058E05BFCLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toTXTextLayout_Factory::~TXTextLayout_Factory(TXTextLayout_Factory *this)
{
  TXTextLayout_Factory::~TXTextLayout_Factory((this - 128));
}

{
  TXTextLayout_Factory::~TXTextLayout_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void TXTextInput_Factory::TXTextInput_Factory(TXTextInput_Factory *this)
{
  v3 = xmmword_260347A50;
  v4 = xmmword_2603473A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F2A10;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871F2AE0;
  *(this + 16) = &unk_2871F2BB0;
  *(this + 17) = 0;
}

void TXTextInput_Factory::~TXTextInput_Factory(TXTextInput_Factory *this)
{
  TXTextInput_Factory::~TXTextInput_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2871F2AE0;
  v2 = (this + 128);
  *(this + 16) = &unk_2871F2BB0;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 72))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *TXTextInput_Factory::create(TXTextInput_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v14, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v13, @"Motion Effect");
  v6 = *(this + 17);
  if (v6)
  {
    v7 = v6 + 200;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(*this + 24))(this, v7, 40);
  v9 = v8;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v8);
  }

  OZChannelBase::setID(&v9->var7, NextUniqueID);
  v10 = (*(v9->var0 + 80))(v9);
  OZChannelBase::setName(v10, a2, 0);
  (*(v9->var0 + 115))(v9);
  OZChannelBase::setRangeName(&v13, v11);
  return v9;
}

void sub_25FB164D8(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C404D45619FLL, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toTXTextInput_Factory::~TXTextInput_Factory(TXTextInput_Factory *this)
{
  TXTextInput_Factory::~TXTextInput_Factory((this - 128));
}

{
  TXTextInput_Factory::~TXTextInput_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void TXTextBehavior_Factory::TXTextBehavior_Factory(TXTextBehavior_Factory *this)
{
  v3 = xmmword_2603483A0;
  v4 = xmmword_260348390;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 128), 0);
  *this = &unk_2871F2C08;
  *(this + 16) = &unk_2871F2CC0;
}

void TXTextTrackingBehavior_Factory::TXTextTrackingBehavior_Factory(TXTextTrackingBehavior_Factory *this)
{
  v4 = xmmword_260348390;
  v5 = xmmword_2603483B0;
  v3 = xmmword_260347A50;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F2D18;
  *(this + 18) = &unk_2871F2DF8;
}

__n128 OZBehaviorFactory::OZBehaviorFactory(uint64_t a1, __int128 *a2, __int128 *a3, __n128 *a4, int a5)
{
  v6 = *a2;
  v9 = *a3;
  v10 = v6;
  v7 = OZFactory::OZFactory(a1, &v10, &v9, a5);
  *v7 = &unk_2871F2E68;
  result = *a4;
  *(v7 + 128) = *a4;
  return result;
}

void TXTextTrackingBehavior_Factory::~TXTextTrackingBehavior_Factory(TXTextTrackingBehavior_Factory *this)
{
  PCSingleton::~PCSingleton((this + 144));

  OZFactory::~OZFactory(this);
}

{
  PCSingleton::~PCSingleton((this + 144));
  OZFactory::~OZFactory(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTextTrackingBehavior_Factory::~TXTextTrackingBehavior_Factory(TXTextTrackingBehavior_Factory *this)
{
  v1 = (this - 144);
  PCSingleton::~PCSingleton(this);

  OZFactory::~OZFactory(v1);
}

{
  TXTextTrackingBehavior_Factory::~TXTextTrackingBehavior_Factory((this - 144));
}

void TXTypeOnBehavior_Factory::TXTypeOnBehavior_Factory(TXTypeOnBehavior_Factory *this)
{
  v4 = xmmword_260348390;
  v5 = xmmword_2603483C0;
  v3 = xmmword_260347A50;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F2F48;
  *(this + 18) = &unk_2871F3028;
}

void TXCrawlLeftBehavior_Factory::TXCrawlLeftBehavior_Factory(TXCrawlLeftBehavior_Factory *this)
{
  v4 = xmmword_260348390;
  v5 = xmmword_2603483D0;
  v3 = xmmword_260347A50;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F3080;
  *(this + 18) = &unk_2871F3160;
}

void TXCrawlRightBehavior_Factory::TXCrawlRightBehavior_Factory(TXCrawlRightBehavior_Factory *this)
{
  v4 = xmmword_260348390;
  v5 = xmmword_2603483E0;
  v3 = xmmword_260347A50;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F31B8;
  *(this + 18) = &unk_2871F3298;
}

void TXScrollUpBehavior_Factory::TXScrollUpBehavior_Factory(TXScrollUpBehavior_Factory *this)
{
  v4 = xmmword_260348390;
  v5 = xmmword_2603483F0;
  v3 = xmmword_260347A50;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F32F0;
  *(this + 18) = &unk_2871F33D0;
}

void TXScrollDownBehavior_Factory::TXScrollDownBehavior_Factory(TXScrollDownBehavior_Factory *this)
{
  v4 = xmmword_260348390;
  v5 = xmmword_260348400;
  v3 = xmmword_260347A50;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F3428;
  *(this + 18) = &unk_2871F3508;
}

void TXTextSequenceBehavior_Factory::TXTextSequenceBehavior_Factory(TXTextSequenceBehavior_Factory *this)
{
  v3 = xmmword_260348390;
  v4 = xmmword_260347AD0;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 1);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F3560;
  *(this + 18) = &unk_2871F3640;
}

void OZChannelBehaviorFactory::OZChannelBehaviorFactory(uint64_t a1, __int128 *a2, __int128 *a3, int a4)
{
  v7 = *a2;
  v6 = *a3;
  v5 = 0uLL;
  OZBehaviorFactory::OZBehaviorFactory(a1, &v7, &v6, &v5, a4);
  *v4 = &unk_2871F36B0;
}

void TXSequenceBehavior_Factory::TXSequenceBehavior_Factory(TXSequenceBehavior_Factory *this)
{
  v3 = xmmword_260348390;
  v4 = xmmword_260347A60;
  OZChannelBehaviorFactory::OZChannelBehaviorFactory(this, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F3790;
  *(this + 18) = &unk_2871F3870;
}

void TXTextScrollBehavior_Factory::TXTextScrollBehavior_Factory(TXTextScrollBehavior_Factory *this)
{
  v4 = xmmword_2603483A0;
  v5 = xmmword_260348410;
  v3 = xmmword_260348420;
  OZBehaviorFactory::OZBehaviorFactory(this, &v5, &v4, &v3, 0);
  PCSingleton::PCSingleton((v2 + 144), 0);
  *this = &unk_2871F38C8;
  *(this + 18) = &unk_2871F39A8;
}

void TXTextStyle_Factory::TXTextStyle_Factory(TXTextStyle_Factory *this)
{
  v3 = xmmword_260348430;
  v4 = xmmword_260347AB0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F3B28;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871F3A00;
  *(this + 16) = &unk_2871F3AD0;
  *(this + 17) = 0;
}

void TXTextStyle_Factory::~TXTextStyle_Factory(TXTextStyle_Factory *this)
{
  TXTextStyle_Factory::~TXTextStyle_Factory(this);

  JUMPOUT(0x2666E9F00);
}

{
  *this = &unk_2871F3A00;
  v2 = (this + 128);
  *(this + 16) = &unk_2871F3AD0;
  v3 = *(this + 17);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 17) = 0;
  PCSingleton::~PCSingleton(v2);

  OZFactory::~OZFactory(this);
}

OZChannelBase *TXTextStyle_Factory::create(TXTextStyle_Factory *this, const PCString *a2, unsigned int NextUniqueID)
{
  if (!*(this + 17))
  {
    OZChannelBase::setRangeName(&v12, @"Motion Effect");
    operator new();
  }

  OZChannelBase::setRangeName(&v11, @"Motion Effect");
  v6 = (*(*this + 24))(this, *(this + 17), 40);
  v7 = v6;
  if (!NextUniqueID)
  {
    NextUniqueID = OZChannelBase::getNextUniqueID(v6);
  }

  OZChannelBase::setID(&v7->var9, NextUniqueID);
  v8 = (*(v7->var0 + 14))(v7);
  OZChannelBase::setName(v8, a2, 0);
  OZChannelBase::setRangeName(&v11, v9);
  return v7;
}

void sub_25FB18DE4(_Unwind_Exception *a1, int a2, uint64_t a3, OZChannelBase *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  MEMORY[0x2666E9F00](v13, 0x10F1C4053870830, a3, a4);
  OZChannelBase::setRangeName(&a13, v15);
  _Unwind_Resume(a1);
}

void non-virtual thunk toTXTextStyle_Factory::~TXTextStyle_Factory(TXTextStyle_Factory *this)
{
  TXTextStyle_Factory::~TXTextStyle_Factory((this - 128));
}

{
  TXTextStyle_Factory::~TXTextStyle_Factory((this - 128));

  JUMPOUT(0x2666E9F00);
}

void TXNumberGenerator_Factory::TXNumberGenerator_Factory(TXNumberGenerator_Factory *this)
{
  v1 = xmmword_260347A90;
  v2 = xmmword_260348440;
  *OZFactory::OZFactory(this, &v2, &v1, 0) = &unk_2871F3BF8;
}

void TXNumberGenerator_Factory::~TXNumberGenerator_Factory(OZFactory *this)
{
  OZFactory::~OZFactory(this);

  JUMPOUT(0x2666E9F00);
}

void TXTimecodeGenerator_Factory::TXTimecodeGenerator_Factory(TXTimecodeGenerator_Factory *this)
{
  v1 = xmmword_260347A90;
  v2 = xmmword_260348450;
  *OZFactory::OZFactory(this, &v2, &v1, 0) = &unk_2871F3D00;
}

void TXTimeDateGenerator_Factory::TXTimeDateGenerator_Factory(TXTimeDateGenerator_Factory *this)
{
  v1 = xmmword_260347A90;
  v2 = xmmword_260348460;
  *OZFactory::OZFactory(this, &v2, &v1, 0) = &unk_2871F3DF0;
}

void TXTextFromFileGenerator_Factory::TXTextFromFileGenerator_Factory(TXTextFromFileGenerator_Factory *this)
{
  v1 = xmmword_260347A90;
  v2 = xmmword_260348470;
  *OZFactory::OZFactory(this, &v2, &v1, 0) = &unk_2871F3EE0;
}

void TXTranscriptionGenerator_Factory::TXTranscriptionGenerator_Factory(TXTranscriptionGenerator_Factory *this)
{
  v1 = xmmword_260347A90;
  v2 = xmmword_260347A80;
  *OZFactory::OZFactory(this, &v2, &v1, 0) = &unk_2871F3FD0;
}

void TXTextGenerator_Factory::TXTextGenerator_Factory(TXTextGenerator_Factory *this)
{
  v1 = xmmword_260347A50;
  v2 = xmmword_260347A90;
  *OZFactory::OZFactory(this, &v2, &v1, 1) = &unk_2871F40C0;
}

void TXChannelString_Factory::TXChannelString_Factory(TXChannelString_Factory *this)
{
  v3 = xmmword_260348490;
  v4 = xmmword_260348480;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871F41B0;
  *(this + 16) = &unk_2871F4280;
}

void TXChannelFont_Factory::TXChannelFont_Factory(TXChannelFont_Factory *this)
{
  v3 = xmmword_2603484B0;
  v4 = xmmword_2603484A0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871F42D8;
  *(this + 16) = &unk_2871F43A8;
}

void TXChannelAlignment_Factory::TXChannelAlignment_Factory(TXChannelAlignment_Factory *this)
{
  v3 = xmmword_2603484D0;
  v4 = xmmword_2603484C0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871F4400;
  *(this + 16) = &unk_2871F44D0;
}

uint64_t TXTextLayout::isExtraLineSpacingForDiacriticsEnabled(TXTextLayout *this)
{
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v2 = OZHostApplicationDelegateHandler::wantsExtraLineSpacingForDiacritics(HostApplicationDelegate);
  return ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] | v2) & 1;
}

uint64_t TXTextLayout::dynamicLineSpacingForDiacriticsEnabled(TXTextLayout *this)
{
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v3 = OZHostApplicationDelegateHandler::wantsDynamicLineSpacingForDiacritics(HostApplicationDelegate);
  if (*(this + 64392))
  {
    v4 = 1;
  }

  else
  {
    v4 = (OZChannel::getValueAsInt((this + 63416), MEMORY[0x277CC08F0], 0.0) == 1) | v3;
  }

  return v4 & 1;
}

uint64_t TXTextLayout::scaleEmojiToCapHeight(TXTextLayout *this)
{
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);

  return OZHostApplicationDelegateHandler::wantsToScaleEmojiToCapHeight(HostApplicationDelegate);
}

uint64_t TXTextLayout::createTextStyleFromAttributedString(uint64_t a1, OZChannel **a2, void *a3, unsigned int a4, unsigned int a5, unsigned int *a6, _DWORD *a7)
{
  v106.var5 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = a4;
  v78 = [a3 attribute:*MEMORY[0x277D740A8] atIndex:a4 longestEffectiveRange:v105 inRange:{0, a5}];
  v82 = [a3 attribute:*MEMORY[0x277D740C0] atIndex:v9 longestEffectiveRange:v104 inRange:{0, v8}];
  v93 = [a3 attribute:*MEMORY[0x277D74138] atIndex:v9 longestEffectiveRange:v103 inRange:{0, v8}];
  v79 = [a3 attribute:*MEMORY[0x277D74078] atIndex:v9 longestEffectiveRange:v102 inRange:{0, v8}];
  v92 = [a3 attribute:*MEMORY[0x277D74160] atIndex:v9 longestEffectiveRange:v101 inRange:{0, v8}];
  v83 = [a3 attribute:*MEMORY[0x277D74158] atIndex:v9 longestEffectiveRange:v100 inRange:{0, v8}];
  font = [a3 attribute:*MEMORY[0x277CC4838] atIndex:v9 longestEffectiveRange:v99 inRange:{0, v8}];
  color = [a3 attribute:*MEMORY[0x277CC49C0] atIndex:v9 longestEffectiveRange:v98 inRange:{0, v8}];
  v94 = [a3 attribute:*MEMORY[0x277CC4A10] atIndex:v9 longestEffectiveRange:&v96.var13 inRange:{0, v8}];
  v80 = [a3 attribute:*MEMORY[0x277CC4A08] atIndex:v9 longestEffectiveRange:&v96.var11 inRange:{0, v8}];
  v10 = [a3 attribute:@"InvertBlack" atIndex:v9 longestEffectiveRange:0 inRange:{0, v8}];
  if (v10)
  {
    v90 = [v10 BOOLValue];
  }

  else
  {
    v90 = 1;
  }

  v81 = [a3 attribute:MotionTextStyleAllCapsAttributeName atIndex:v9 longestEffectiveRange:&v96.var9 inRange:{0, v8}];
  v85 = MEMORY[0x277CBEA60];
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v104[1] + v104[0]];
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v105[1] + v105[0]];
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v103[1] + v103[0]];
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v102[1] + v102[0]];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v101[1] + v101[0]];
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v100[1] + v100[0]];
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v99[1] + v99[0]];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v98[1] + v98[0]];
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v96.var13 + v97];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v96.var12 + v96.var11];
  *a7 = [objc_msgSend(objc_msgSend(objc_msgSend(v85 arrayWithObjects:{v84, v11, v12, v13, v14, v15, v16, v17, v18, v19, objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLong:", v96.var10 + v96.var9), 0), "sortedArrayUsingComparator:", &__block_literal_global_50), "objectAtIndex:", 0), "unsignedIntValue"}] - a4;
  *a6 = a4;
  if (font)
  {
    v20 = CTFontCopyPostScriptName(font);
    v21 = *a2;
    v96.var1 = 0;
    PCString::set(&v96.var1, v20);
    (*(v21->var0 + 21))(v21, &v96.var1, 1);
    PCString::~PCString(&v96.var1);

    v22 = *a2;
    Size = CTFontGetSize(font);
  }

  else
  {
    v24 = *a2;
    PCURL::PCURL(&v96.var1, [v78 fontName]);
    (*(v24->var0 + 21))(v24, &v96.var1, 1);
    PCString::~PCString(&v96.var1);
    v22 = *a2;
    [v78 pointSize];
  }

  *&v96.var1 = *MEMORY[0x277CC08F0];
  *&v96.var3 = *(MEMORY[0x277CC08F0] + 16);
  OZChannel::setValue(v22 + 13, &v96.var1, Size, 0);
  if (v81 && [v81 BOOLValue])
  {
    v25 = *a2;
    *&v96.var1 = *MEMORY[0x277CC08F0];
    *&v96.var3 = *(MEMORY[0x277CC08F0] + 16);
    OZChannel::setValue((v25 + 5504), &v96.var1, 1.0, 0);
  }

  OZChannel::setValue((*a2 + 6088), MEMORY[0x277CC08F0], 0.0, 0);
  ((*a2)[39].var4.var0[3].info)(&(*a2)[39].var4, 1, 0);
  if (v94 && ([v94 floatValue], v26 > 0.0) || v92 && (objc_msgSend(v92, "floatValue"), v27 > 0.0))
  {
    ((*a2)[39].var4.var0[3].info)(&(*a2)[39].var4, 0, 0);
  }

  if (v94)
  {
    _ZF = v80 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v29 = !_ZF;
  if (v92)
  {
    v30 = v83 == 0;
  }

  else
  {
    v30 = 1;
  }

  if (!v30 || v29)
  {
    if (v29)
    {
      [objc_msgSend(MEMORY[0x277D75348] "colorWithCGColor:{"getRed:green:blue:alpha:", &v106, &v106.var1, &v106.var2, &v106.var3}")];
      ColorSpace = CGColorGetColorSpace(color);
    }

    else
    {
      [v83 getRed:&v106 green:&v106.var1 blue:&v106.var2 alpha:&v106.var3];
      ColorSpace = CGColorSpaceCreateDeviceRGB();
      v94 = v92;
    }

    *&_Q0 = v106.var0;
    if (*&v106.var0 == 0.0)
    {
      v33 = v90;
    }

    else
    {
      v33 = 0;
    }

    if (v33 == 1)
    {
      *&_Q0 = v106.var1;
      if (*&v106.var1 == 0.0)
      {
        *&_Q0 = v106.var2;
        if (*&v106.var2 == 0.0)
        {
          __asm { FMOV            V0.2D, #1.0 }

          *&v106.var0 = _Q0;
          v106.var2 = 0x3FF0000000000000;
        }
      }
    }

    [v94 floatValue];
    v38 = v37;
    (*((*a2)[148].var17 + 13))(&(*a2)[148].var17, 1, 0);
    (*((*a2)[149].var14 + 89))(&(*a2)[149].var14, MEMORY[0x277CC08F0], 0, 0.0);
    (*((*a2)[181].var7 + 712))(&(*a2)[181].var7, MEMORY[0x277CC08F0], 0, fmaxf(ceilf(fabsf(v38)), 1.0));
    v39 = *a2;
    v40 = *&v106.var0;
    v41 = *&v106.var1;
    v42 = *&v106.var2;
    PCColor::PCColor(&v96.var1, v40, v41, v42, 1.0, ColorSpace);
    (*(v39[151].var8 + 840))(&v39[151].var8, MEMORY[0x277CC08F0], &v96.var1, 0);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v96.var7);
  }

  else
  {
    (*((*a2)[148].var17 + 13))(&(*a2)[148].var17, 0, 0);
  }

  v43 = v82;
  if (v82 | color)
  {
    if (color)
    {
      v43 = [MEMORY[0x277D75348] colorWithCGColor:?];
    }

    [v43 getRed:&v106 green:&v106.var1 blue:&v106.var2 alpha:&v106.var3];
    v44 = *&v106.var0;
    v45 = v90;
    if (*&v106.var0 != 0.0)
    {
      v45 = 0;
    }

    v46 = *&v106.var1;
    v47 = *&v106.var2;
    if (v45 == 1 && *&v106.var1 == 0.0 && *&v106.var2 == 0.0)
    {
      __asm { FMOV            V0.2D, #1.0 }

      *&v106.var0 = _Q0;
      v106.var2 = 0x3FF0000000000000;
      v47 = 1.0;
      v46 = 1.0;
      v44 = 1.0;
    }

    p_var14 = &(*a2)[41].var14;
    OZChannelColorNoAlpha::getPCColorSpace(p_var14, &v96);
    v50 = v44;
    v51 = v46;
    v52 = v47;
    PCColor::PCColor(&v96.var1, v50, v51, v52, 1.0, &v96);
    (*(*p_var14 + 840))(p_var14, MEMORY[0x277CC08F0], &v96.var1, 0);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v96.var7);
    v53 = &v96;
  }

  else
  {
    v54 = &(*a2)[41].var14;
    OZChannelColorNoAlpha::getPCColorSpace(v54, &v106);
    PCColor::PCColor(&v96.var1, 1.0, 1.0, 1.0, 1.0, &v106);
    (*(*v54 + 840))(v54, MEMORY[0x277CC08F0], &v96.var1, 0);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v96.var7);
    v53 = &v106;
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(v53);
  if (v93)
  {
    [objc_msgSend(v93 "shadowColor")];
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    *&_Q0 = v106.var0;
    if (*&v106.var0 == 0.0)
    {
      v57 = v90;
    }

    else
    {
      v57 = 0;
    }

    if (v57 == 1)
    {
      *&_Q0 = v106.var1;
      if (*&v106.var1 == 0.0)
      {
        *&_Q0 = v106.var2;
        if (*&v106.var2 == 0.0)
        {
          __asm { FMOV            V0.2D, #1.0 }

          *&v106.var0 = _Q0;
          v106.var2 = 0x3FF0000000000000;
        }
      }
    }

    [v93 shadowOffset];
    v59 = v58;
    v61 = v60;
    if (v59 == 0.0)
    {
      v62 = 4.71238898;
      if (v61 >= 0.0)
      {
        v62 = 0.0;
      }

      if (v61 <= 0.0)
      {
        v63 = v62;
      }

      else
      {
        v63 = 1.57079633;
      }

      v64 = fabsf(v61);
      v65 = v93;
    }

    else
    {
      v62 = atanf(v61 / v59);
      if ((v59 >= 0.0 || v61 <= 0.0) && (v59 >= 0.0 || v61 >= 0.0))
      {
        if (v61 >= 0.0 || v59 <= 0.0)
        {
          v63 = v62;
        }

        else
        {
          v63 = v62 + 6.28318531;
        }
      }

      else
      {
        v63 = v62 + 3.14159265;
      }

      v65 = v93;
      if (v61 == 0.0)
      {
        v64 = fabsf(v59);
      }

      else
      {
        *&v62 = (v59 * v59) + (v61 * v61);
        v64 = sqrtf(*&v62);
      }
    }

    v67 = *a2;
    [v65 shadowBlurRadius];
    v69 = v68;
    [v93 shadowBlurRadius];
    OZChannel2D::setValue(&v67[119].var13, MEMORY[0x277CC08F0], v69 * 0.5, v70 * 0.5, 0);
    v71 = *a2;
    v72 = *&v106.var0;
    v73 = *&v106.var1;
    v74 = *&v106.var2;
    PCColor::PCColor(&v96.var1, v72, v73, v74, 1.0, DeviceRGB);
    (v71[93].var12[26].info)(&v71[93].var12, MEMORY[0x277CC08F0], &v96.var1, 0);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v96.var7);
    (*((*a2)[118].var13 + 89))(&(*a2)[118].var13, MEMORY[0x277CC08F0], 0, *&v106.var3);
    (*((*a2)[127].var9 + 89))(&(*a2)[127].var9, MEMORY[0x277CC08F0], 0, v63);
    (*((*a2)[126].var9 + 89))(&(*a2)[126].var9, MEMORY[0x277CC08F0], 0, v64);
    (*((*a2)[91].var2 + 13))(&(*a2)[91].var2, 1, 0);
  }

  else
  {
    (*((*a2)[91].var2 + 13))(&(*a2)[91].var2, 0, 0);
  }

  v75 = *a2;
  [v79 floatValue];
  return (*(v75[16].var16 + 89))(&v75[16].var16, MEMORY[0x277CC08F0], 0, v76);
}

uint64_t TXTextLayout::createAttributedString(TXTextLayout *this, CMTime *a2, int a3)
{
  v6 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v15, v6);
  PCSharedCount::PCSharedCount(&v14);
  TXTextLayout::getString(this, &v14);
  v7 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:PCString::ns_str(&v14)];
  v8 = PCString::size(&v14);
  TXTextLayout::applyTextStylesToAttributedString(this, v7, a2, 0, v8, a3);
  v9 = PCString::size(&v14);
  v16.location = 0;
  v16.length = v9;
  TXTextLayout::applyKerningAndTrackingToAttributedString(this, v7, a2, &v16);
  v10 = PCString::size(&v14);
  TXTextLayout::applyParagraphStylesToAttributedString(this, v7, a2, 0, v10);
  TXTextLayout::applyCustomLayoutInformationToAttributedString(this, v7, a2);
  v11 = [(NSMutableAttributedString *)v7 length];
  v16.location = MEMORY[0x277D85DD0];
  v16.length = *"";
  v17 = ___ZN12TXTextLayout45applySimpleValuesDictionaryToAttributedStringEP25NSMutableAttributedString_block_invoke;
  v18 = &unk_279AA8100;
  v19 = v7;
  [(NSMutableAttributedString *)v7 enumerateAttributesInRange:0 options:v11 usingBlock:0, &v16];
  v12 = [objc_alloc(MEMORY[0x277CCA898]) initWithAttributedString:v7];

  PCString::~PCString(&v14);
  OZLockingGroup::WriteSentry::~WriteSentry(v15);
  return v12;
}

void sub_25FB1BD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11)
{
  PCString::~PCString(&a10);
  OZLockingGroup::WriteSentry::~WriteSentry(&a11);
  _Unwind_Resume(a1);
}

void TXTextLayout::applyTextStylesToAttributedString(TXTextLayout *this, NSMutableAttributedString *a2, CMTime *a3, unsigned int a4, unsigned int a5, int a6)
{
  v117 = a4;
  v118 = a5;
  v114.var13 = &v114.var13;
  p_var13 = &v114.var13;
  v116 = 0;
  TXTextLayout::getStylesInRange(this, &v114.var13, &v117);
  v8 = p_var13;
  v100 = *MEMORY[0x277D740D8];
  if (p_var13 == &v114.var13)
  {
    v104 = 1;
  }

  else
  {
    v111 = *MEMORY[0x277D740C0];
    v98 = *MEMORY[0x277D740A8];
    v110 = *MEMORY[0x277D74138];
    v106 = *MEMORY[0x277D74158];
    v107 = *MEMORY[0x277D74160];
    v99 = *MEMORY[0x277D74078];
    v9 = v117;
    v104 = 1;
    do
    {
      v11 = v8[2];
      v10 = v8[3];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v102 = v8;
      v109 = v10;
      StyleRunAtCharOffset = TXTextLayout::getStyleRunAtCharOffset(this, v9);
      v13 = *(StyleRunAtCharOffset + 24);
      v101 = StyleRunAtCharOffset;
      if (v9 >= v13)
      {
        v15 = v9;
      }

      else
      {
        v15 = v13;
      }

      v14 = *(StyleRunAtCharOffset + 28);
      v16 = v117;
      if ((v14 + v13) <= (v118 + v117))
      {
        v17 = (v14 + v13);
      }

      else
      {
        v17 = (v118 + v117);
      }

      PCColor::PCColor(&v114.var6);
      v114.var4.var0 = 0;
      v114.var5 = 0;
      (*(*(v11 + 793) + 832))(v11 + 6344, a3, &v114.var6);
      isEnabled = OZChannelBase::isEnabled((this + 28720), 0, 1);
      v19 = isEnabled;
      v20 = (v15 - v16);
      v21 = (v17 - v16);
      v105 = v20;
      v22 = v21 - v20;
      if (isEnabled)
      {
        v23 = v21 - v20;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        v24 = (v15 - v16);
        v25 = v23 + v20;
        do
        {
          if (v19)
          {
            TXTextLayout::getTextObjectWithCharOffset(v130, this, v24, 1, 0);
            if (v130[0].var0)
            {
              v26 = *(v130[0].var0 + 185);
              PCColor::getColorSpace(&v114.var6, &v129);
              PCWorkingColor::PCWorkingColor(&v130[0].var8, &v129);
              PCCFRef<CGColorSpace *>::~PCCFRef(&v129);
              LODWORD(v27) = *(v130[0].var0 + 184);
              TXTextObject::getFaceColor(v130[0].var0, a3, v27, &v130[0].var8);
              PCWorkingColor::getRGBA(&v130[0].var8, &v114.var5 + 1, &v114.var5, &v114.var4.var0 + 1, &v114.var4);
              PCCFRef<CGColorSpace *>::~PCCFRef(&v130[0].var10);
            }

            else
            {
              v26 = 1;
            }

            if (v130[0].var1)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v130[0].var1);
            }

            v29 = v26;
          }

          else
          {
            PCColor::getColorSpace(&v114.var6, &v130[0].var8);
            PCColor::getRGB(&v114.var6, &v114.var5 + 1, &v114.var5, &v114.var4.var0 + 1, &v130[0].var8);
            PCCFRef<CGColorSpace *>::~PCCFRef(&v130[0].var8);
            *&v130[0].var8 = *&a3->value;
            v130[0].var10 = a3->epoch;
            OZChannel::getValueAsDouble((v11 + 10152), &v130[0].var8, 0.0);
            *&v28 = v28;
            LODWORD(v114.var4.var0) = LODWORD(v28);
            v26 = v22;
            v29 = 1;
          }

          v30 = *(&v114.var5 + 1);
          v31 = *&v114.var5;
          v32 = *(&v114.var4.var0 + 1);
          if (a6)
          {
            v33 = *(&v114.var5 + 1) == 1.0 && *&v114.var5 == 1.0;
            if (v33 && *(&v114.var4.var0 + 1) == 1.0)
            {
              v114.var5 = 0;
              v32 = 0.0;
              v31 = 0.0;
              v30 = 0.0;
              HIDWORD(v114.var4.var0) = 0;
            }
          }

          -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", v111, [MEMORY[0x277D75348] colorWithRed:v30 green:v31 blue:v32 alpha:*&v114.var4.var0], v24, v26);
          v24 += v29;
        }

        while (v24 < v25);
      }

      v35 = *(v11 + 65);
      v36 = *(v11 + 66);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v103 = v36;
      v37 = (*(*v35 + 16))(v35);
      PCString::PCString(&v114.var3, v37);
      *&v130[0].var8 = *&a3->value;
      v130[0].var10 = a3->epoch;
      Size = TXTextStyle::getSize(v11, &v130[0].var8, 0.0);
      v39 = PCString::cf_str(&v114.var3);
      v40 = Size;
      v41 = OZCreateFontWithName(v39, v40, 0);
      if (v41)
      {
        [(NSMutableAttributedString *)a2 addAttribute:v98 value:v41 range:v105, v22];
      }

      if (OZChannel::getValueAsInt((v11 + 5504), MEMORY[0x277CC08F0], 0.0))
      {
        -[NSMutableAttributedString replaceCharactersInRange:withString:](a2, "replaceCharactersInRange:withString:", v105, v22, [objc_msgSend(-[NSMutableAttributedString string](a2 "string")]);
      }

      if (OZChannel::getValueAsInt((v11 + 5504), MEMORY[0x277CC08F0], 0.0))
      {
        [(NSMutableAttributedString *)a2 addAttribute:MotionTextStyleAllCapsAttributeName value:&unk_28732D580 range:v105, v22];
      }

      else
      {
        [(NSMutableAttributedString *)a2 removeAttribute:MotionTextStyleAllCapsAttributeName range:v105, v22];
      }

      [(NSMutableAttributedString *)a2 addAttribute:v100 value:&unk_28732D598 range:v105, v22];
      v42 = OZChannelBase::isEnabled((this + 45048), 0, 1);
      if ((OZChannelBase::isEnabled((v11 + 13848), 0, 1) | v42))
      {
        v43 = v42 ? v22 : 1;
        if (v43)
        {
          v44 = v105;
          v108 = v43 + v105;
          do
          {
            if (v42)
            {
              TXTextLayout::getTextObject(this, v44, &v114.var1);
              PCColor::getColorSpace(&v114.var6, &v114);
              if (v114.var1 && (*&v130[0].var8 = *&a3->value, v130[0].var10 = a3->epoch, TXTextObject::isDropShadowEnabled(v114.var1, &v130[0].var8)))
              {
                PCWorkingColor::PCWorkingColor(&v127, &v114);
                *&v130[0].var8 = *&a3->value;
                v130[0].var10 = a3->epoch;
                if (TXTextObject::isDropShadowVisible(v114.var1, &v130[0].var8, &v127))
                {
                  v125 = 0;
                  v126 = 0;
                  PCWorkingColor::getRGBA(&v127, &v126 + 1, &v126, &v125 + 1, &v125);
                  PCColor::PCColor(v130);
                  PCColor::setRGBA(v130, *(&v126 + 1), *&v126, *(&v125 + 1), *&v125, &v114);
                  *&v130[0].var8 = *&a3->value;
                  v130[0].var10 = a3->epoch;
                  DropShadowDistance = TXTextObject::getDropShadowDistance(v114.var1, &v130[0].var8);
                  *&v130[0].var8 = *&a3->value;
                  v130[0].var10 = a3->epoch;
                  DropShadowAngle = TXTextObject::getDropShadowAngle(v114.var1, &v130[0].var8);
                  v128 = 0.0;
                  v124 = 0.0;
                  *&v130[0].var8 = *&a3->value;
                  v130[0].var10 = a3->epoch;
                  TXTextObject::getDropShadowBlur(v114.var1, &v130[0].var8, &v128, &v124);
                  OZRenderState::OZRenderState(&v130[0].var8);
                  *&v130[0].var8 = *&a3->value;
                  v130[0].var10 = a3->epoch;
                  v122 = 0.0;
                  v123 = 0.0;
                  v121[1] = 0.0;
                  (*(*(*(v114.var1 + 68) + 200) + 1312))();
                  if (v123 > 0.0)
                  {
                    if (TXTextObject::isDropShadowFixedSource(v114.var1, a3))
                    {
                      DropShadowDistance = DropShadowDistance / v123;
                    }

                    v128 = v128 / v123;
                    v124 = v124 / v122;
                  }

                  v120 = 0.0;
                  v121[0] = 0.0;
                  v119 = *a3;
                  TXTextObject::getDropShadowScale(v114.var1, &v119, v121, &v120, 1);
                  v47 = v128;
                  v48 = v124;
                  v50 = v120;
                  v49 = v121[0];
                  *&v129.var0.var0 = *&v130[0].var0;
                  *&v129.var0.var1[1] = *&v130[0].var2;
                  *&v129.var0.var1[3] = *&v130[0].var4.var0;
                  v129.var1._obj = v130[0].var6;
                  if (v130[0].var6)
                  {
                    PCCFRefTraits<CGColorSpace *>::retain(v130[0].var6);
                  }

                  v51 = newNSShadow(DropShadowDistance, DropShadowAngle, v47, v48, v49, v50, &v129);
                  PCCFRef<CGColorSpace *>::~PCCFRef(&v129.var1._obj);
                  PCCFRef<CGColorSpace *>::~PCCFRef(&v130[0].var6);
                }

                else
                {
                  v51 = 0;
                }

                PCCFRef<CGColorSpace *>::~PCCFRef(&v127.epoch);
              }

              else
              {
                v51 = 0;
              }

              PCCFRef<CGColorSpace *>::~PCCFRef(&v114);
              isDropShadowFixedSource = TXTextObject::isDropShadowFixedSource(v114.var1, a3);
              if (v114.var2)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v114.var2);
              }

              v67 = 1;
            }

            else
            {
              if (v109)
              {
                atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (OZChannelBase::isEnabled((v11 + 13848), 0, 1))
              {
                *&v130[0].var8 = *&a3->value;
                v130[0].var10 = a3->epoch;
                OZChannel::getValueAsDouble((v11 + 19224), &v130[0].var8, 0.0);
                v53 = v52;
                *&v130[0].var8 = *&a3->value;
                v130[0].var10 = a3->epoch;
                OZChannel::getValueAsDouble((v11 + 19376), &v130[0].var8, 0.0);
                v55 = v54;
                *&v130[0].var8 = *&a3->value;
                v130[0].var10 = a3->epoch;
                OZChannel::getValueAsDouble((v11 + 18328), &v130[0].var8, 0.0);
                v57 = v56;
                OZChannel::getValueAsDouble((v11 + 18480), &v130[0].var8, 0.0);
                v59 = v58;
                OZRenderState::OZRenderState(&v130[0].var8);
                *&v130[0].var8 = *&a3->value;
                v130[0].var10 = a3->epoch;
                v119.value = 0;
                v114.var1 = 0;
                v128 = 0.0;
                (*(*(*(v11 + 6118) + 200) + 1312))();
                if (*&v119.value > 0.0)
                {
                  if (OZChannel::getValueAsInt((v11 + 19528), MEMORY[0x277CC08F0], 0.0))
                  {
                    v53 = v53 / *&v119.value;
                  }

                  v57 = v57 / *&v119.value;
                  v59 = v59 / *&v114.var1;
                }

                *&v130[0].var0 = *&a3->value;
                v130[0].var2 = a3->epoch;
                OZChannel::getValueAsDouble((v11 + 18920), v130, 0.0);
                v61 = v60;
                OZChannel::getValueAsDouble((v11 + 19072), v130, 0.0);
                v63 = v62;
                PCColor::PCColor(v130);
                v127 = *a3;
                OZChannelColorNoAlpha::getColor((v11 + 14232), &v127, v130, 0.0);
                v127 = *a3;
                OZChannel::getValueAsDouble((v11 + 18040), &v127, 0.0);
                v65 = v64 * PCColor::getAlpha(v130);
                PCColor::setAlpha(v130, v65);
                *&v129.var0.var0 = *&v130[0].var0;
                *&v129.var0.var1[1] = *&v130[0].var2;
                *&v129.var0.var1[3] = *&v130[0].var4.var0;
                v129.var1._obj = v130[0].var6;
                if (v130[0].var6)
                {
                  PCCFRefTraits<CGColorSpace *>::retain(v130[0].var6);
                }

                v51 = newNSShadow(v53, v55, v57, v59, v61, v63, &v129);
                PCCFRef<CGColorSpace *>::~PCCFRef(&v129.var1._obj);
                PCCFRef<CGColorSpace *>::~PCCFRef(&v130[0].var6);
              }

              else
              {
                v51 = 0;
              }

              if (v109)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v109);
              }

              isDropShadowFixedSource = OZChannel::getValueAsInt((v11 + 19528), MEMORY[0x277CC08F0], 0.0) != 0;
              v67 = v22;
            }

            [(NSMutableAttributedString *)a2 removeAttribute:v110 range:v44, v67];
            [(NSMutableAttributedString *)a2 removeAttribute:@"TXTextDropShadowIsFixedSource" range:v44, v67];
            if (v51)
            {
              [(NSMutableAttributedString *)a2 addAttribute:v110 value:v51 range:v44, v67];
              -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXTextDropShadowIsFixedSource", [MEMORY[0x277CCABB0] numberWithBool:isDropShadowFixedSource], v44, v67);

              v104 = 0;
            }

            v44 = (v44 + 1);
          }

          while (v44 < v108);
        }
      }

      v68 = OZChannelBase::isEnabled((this + 33424), 0, 1);
      if ((OZChannelBase::isEnabled((v11 + 22632), 0, 1) | v68))
      {
        v69 = v68 ? v22 : 1;
        v127.value = 0;
        if (v69)
        {
          v70 = v105;
          v71 = v69 + v105;
          if (v68)
          {
            v72 = 1;
          }

          else
          {
            v72 = v22;
          }

          do
          {
            if (v68)
            {
              TXTextLayout::getTextObject(this, v70, &v129);
              PCColor::getColorSpace(&v114.var6, v130);
              PCWorkingColor::PCWorkingColor(&v130[0].var8, v130);
              PCCFRef<CGColorSpace *>::~PCCFRef(v130);
              *&v130[0].var0 = *&a3->value;
              v130[0].var2 = a3->epoch;
              TXTextObject::isOutlineVisible(*&v129.var0.var0, v130, &v130[0].var8, &v127.value);
              PCWorkingColor::getRGBA(&v130[0].var8, &v114.var5 + 1, &v114.var5, &v114.var4.var0 + 1, &v114.var4);
              PCCFRef<CGColorSpace *>::~PCCFRef(&v130[0].var10);
              if (*&v129.var0.var1[0])
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](*&v129.var0.var1[0]);
              }
            }

            else
            {
              *&v130[0].var8 = *&a3->value;
              v130[0].var10 = a3->epoch;
              OZChannel::getValueAsDouble((v11 + 27568), &v130[0].var8, 0.0);
              v127.value = v73;
              *&v130[0].var8 = *&a3->value;
              v130[0].var10 = a3->epoch;
              OZChannelColorNoAlpha::getColor((v11 + 23016), &v130[0].var8, &v114.var6, 0.0);
              PCColor::getColorSpace(&v114.var6, &v130[0].var8);
              PCColor::getRGB(&v114.var6, &v114.var5 + 1, &v114.var5, &v114.var4.var0 + 1, &v130[0].var8);
              PCCFRef<CGColorSpace *>::~PCCFRef(&v130[0].var8);
              *&v130[0].var8 = *&a3->value;
              v130[0].var10 = a3->epoch;
              OZChannel::getValueAsDouble((v11 + 26824), &v130[0].var8, 0.0);
              *&v74 = v74;
              LODWORD(v114.var4.var0) = LODWORD(v74);
            }

            *&v75 = fmax(*&v127.value * v40 * 0.01, 1.0);
            v127.value = v75;
            v76 = OZChannelBase::isEnabled((v11 + 5960), 0, 1);
            v77 = 0.0 - *&v75;
            if (!v76)
            {
              v77 = *&v127.value;
            }

            -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", v107, [MEMORY[0x277CCABB0] numberWithDouble:v77], v70, v72);
            -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", v106, [MEMORY[0x277D75348] colorWithRed:*(&v114.var5 + 1) green:*&v114.var5 blue:*(&v114.var4.var0 + 1) alpha:*&v114.var4.var0], v70, v72);
            v70 = (v70 + 1);
          }

          while (v70 < v71);
        }
      }

      v78 = MEMORY[0x277CCABB0];
      *&v130[0].var8 = *&a3->value;
      v130[0].var10 = a3->epoch;
      OZChannel::getValueAsDouble((v11 + 2560), &v130[0].var8, 0.0);
      *&v79 = v79;
      -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", v99, [v78 numberWithFloat:v79], v105, v22);
      v80 = *(v101 + 24);
      v81 = *(v101 + 28);
      PCString::~PCString(&v114.var3);
      if (v103)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v103);
      }

      PCCFRef<CGColorSpace *>::~PCCFRef(&v114.var12);
      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v109);
      }

      v9 = v81 + v80;
      v8 = v102[1];
    }

    while (v8 != &v114.var13);
  }

  [(NSMutableAttributedString *)a2 removeAttribute:v100 range:a4, a5];
  [(NSMutableAttributedString *)a2 addAttribute:v100 value:MEMORY[0x277CBEC28] range:a4, a5];
  if (v104)
  {
    v82 = *(this + 145);
    if (v82)
    {
      if (v83)
      {
        v84 = v83;
        v85 = *MEMORY[0x277D74138];
        [(NSMutableAttributedString *)a2 removeAttribute:*MEMORY[0x277D74138] range:a4, a5];
        [(NSMutableAttributedString *)a2 removeAttribute:@"TXTextDropShadowIsFixedSource" range:a4, a5];
        if ((*(*v84 + 1624))(v84))
        {
          OZElement::getDropShadowDistance(v84, a3);
          v87 = v86;
          OZElement::getDropShadowAngle(v84, a3);
          v89 = v88;
          OZElement::getDropShadowBlur(v84, a3);
          v91 = v90;
          OZRenderState::OZRenderState(&v130[0].var8);
          *&v130[0].var8 = *&a3->value;
          v130[0].var10 = a3->epoch;
          v114.var6 = 0;
          v127.value = 0;
          v119.value = 0;
          (*(*v84 + 1312))(v84, &v114.var6, &v127, &v119, &v130[0].var8, 1);
          if (*&v114.var6 > 0.0)
          {
            if (OZElement::isDropShadowFixedSource(v84, a3))
            {
              v87 = v87 / *&v114.var6;
            }

            v91 = v91 / *&v114.var6;
          }

          OZElement::getDropShadowColor(v84, a3, v130);
          OZElement::getDropShadowOpacity(v84, a3);
          v93 = v92 * PCColor::getAlpha(v130);
          PCColor::setAlpha(v130, v93);
          *&v129.var0.var0 = *&v130[0].var0;
          *&v129.var0.var1[1] = *&v130[0].var2;
          *&v129.var0.var1[3] = *&v130[0].var4.var0;
          v129.var1._obj = v130[0].var6;
          if (v130[0].var6)
          {
            PCCFRefTraits<CGColorSpace *>::retain(v130[0].var6);
          }

          v94 = newNSShadow(v87, v89, v91, v91, 1.0, 1.0, &v129);
          PCCFRef<CGColorSpace *>::~PCCFRef(&v129.var1._obj);
          PCCFRef<CGColorSpace *>::~PCCFRef(&v130[0].var6);
          if (v94)
          {
            v95 = OZElement::isDropShadowFixedSource(v84, a3);
            [(NSMutableAttributedString *)a2 addAttribute:v85 value:v94 range:a4, a5];
            -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXTextDropShadowIsFixedSource", [MEMORY[0x277CCABB0] numberWithBool:v95], a4, a5);
          }
        }
      }
    }
  }

  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(&v114.var13);
}

void sub_25FB1CED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, PCString a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v41 + 48));
  PCCFRef<CGColorSpace *>::~PCCFRef(&STACK[0x220]);
  std::__list_imp<std::shared_ptr<TXTextStyle>>::clear(&a41);
  _Unwind_Resume(a1);
}

void TXTextLayout::applyParagraphStylesToAttributedString(TXTextLayout *this, NSMutableAttributedString *a2, const CMTime *a3, unsigned int a4, int a5)
{
  v5 = a5 + a4;
  if (a5 + a4 > a4)
  {
    v6 = a4;
    v10 = a4;
    v11 = *MEMORY[0x277D74118];
    v12 = MEMORY[0x277CC08F0];
    do
    {
      ParagraphStyleContainingOffset = TXTextLayout::getParagraphStyleContainingOffset(this, v6);
      v14 = objc_alloc_init(MEMORY[0x277D74240]);
      v15 = *(ParagraphStyleContainingOffset + 856);
      if (v6 >= v15)
      {
        v16 = v6;
      }

      else
      {
        v16 = v15;
      }

      v17 = *(ParagraphStyleContainingOffset + 864) + v15;
      if (v17 <= v5)
      {
        v18 = v17;
      }

      else
      {
        v18 = v5;
      }

      if (TXParagraphStyle::getAlignment(ParagraphStyleContainingOffset) <= 2)
      {
        Alignment = TXParagraphStyle::getAlignment(ParagraphStyleContainingOffset);
        if (Alignment == 2)
        {
          v19 = 2;
        }

        else
        {
          v19 = Alignment == 1;
        }
      }

      else
      {
        v19 = 3;
      }

      [v14 setAlignment:v19];
      v22 = *v12;
      OZChannel::getValueAsDouble((ParagraphStyleContainingOffset + 680), &v22, 0.0);
      [v14 setLineSpacing:{v21 * (*(*this + 712))(this, a3) + *(this + 8050)}];
      [(NSMutableAttributedString *)a2 addAttribute:v11 value:v14 range:(v16 - v10), (v18 - v10) - (v16 - v10)];

      v6 = *(ParagraphStyleContainingOffset + 864) + *(ParagraphStyleContainingOffset + 856);
    }

    while (v5 > v6);
  }
}

void TXTextLayout::applyCustomLayoutInformationToAttributedString(TXTextLayout *this, NSMutableAttributedString *a2, const CMTime *a3)
{
  v44[1] = *MEMORY[0x277D85DE8];
  v6 = [(NSMutableAttributedString *)a2 length];
  ValueAsInt = OZChannel::getValueAsInt((this + 21368), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt)
  {
    OZRenderState::OZRenderState(&v38);
    *&v38.var0.var0 = *&a3->value;
    v38.var0.var3 = a3->epoch;
    TXTextLayout::doLayout(this, &v38, 0);
    v36[0] = 0;
    v36[1] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v37 = _Q0;
    TXTextLayout::getTypographicBounds(this, v36, &v38, 1, 1);
    v13 = *(&v37 + 1);
    if (TXTextLayout::_computeTypographicHeightWithoutLastLineLeading(this))
    {
      v13 = v13 - TXTextLayout::_lastLineLeading(this);
    }

    if (v13 > 0.0)
    {
      v43 = @"TXTextHeight";
      v44[0] = [MEMORY[0x277CCABB0] numberWithDouble:v13];
      -[NSMutableAttributedString addAttributes:range:](a2, "addAttributes:range:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:&v43 count:1], 0, v6);
    }

    v41 = @"TXTextHeightWithLastLineLeading";
    v42 = [MEMORY[0x277CCABB0] numberWithDouble:v13 + TXTextLayout::_lastLineLeading(this)];
    -[NSMutableAttributedString addAttributes:range:](a2, "addAttributes:range:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1], 0, v6);
  }

  v14 = OZChannel::getValueAsInt((this + 61208), MEMORY[0x277CC08F0], 0.0);
  XMarginScale = TXTextLayout::getXMarginScale(this);
  YMarginScale = TXTextLayout::getYMarginScale(this);
  v17 = (*(*this + 712))(this, MEMORY[0x277CC08F0]);
  v18 = *(this + 8050);
  v39[0] = @"TXTextVerticalAlignment";
  v19 = [MEMORY[0x277CCABB0] numberWithInt:ValueAsInt];
  v39[1] = @"TXTextMarginScaleOption";
  v40[0] = v19;
  v40[1] = [MEMORY[0x277CCABB0] numberWithInt:v14];
  -[NSMutableAttributedString addAttributes:range:](a2, "addAttributes:range:", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2], 0, v6);
  if (XMarginScale != 1.0)
  {
    -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXTextHorizontalScaleFactor", [MEMORY[0x277CCABB0] numberWithDouble:XMarginScale], 0, v6);
  }

  if (YMarginScale != 1.0)
  {
    -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXTextVerticalScaleFactor", [MEMORY[0x277CCABB0] numberWithDouble:YMarginScale], 0, v6);
  }

  if (v17 != 1.0)
  {
    -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXTextBothMarginScaleFactor", [MEMORY[0x277CCABB0] numberWithDouble:v17], 0, v6);
  }

  if (v18 != 0.0)
  {
    -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXTextDynamicLineSpacing", [MEMORY[0x277CCABB0] numberWithDouble:v18], 0, v6);
  }

  -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXNumSoftLines", [MEMORY[0x277CCABB0] numberWithUnsignedInt:NumLinesInParagraphs(this)], 0, v6);
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v21 = OZHostApplicationDelegateHandler::wantsToIncludeSubstituteFontNameInAttributedString(HostApplicationDelegate);
  v22 = OZHostApplicationDelegateHandler::wantsToIncludeTrackingValueInAttributedString(HostApplicationDelegate);
  if (((v21 | v22) & 1) != 0 && ((*(this + 7354) - *(this + 7353)) & 0xFFFFFFFF0) != 0)
  {
    v23 = 0;
    while (1)
    {
      TXTextLayout::getTextObject(this, v23, &v38);
      if ((TXTextObject::isEmoji(v38.var0.var0) & 1) == 0)
      {
        break;
      }

      if (*&v38.var0.var1)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v38.var0.var1);
      }

      v23 = (v23 + 1);
      if (v23 >= ((*(this + 7354) - *(this + 7353)) >> 4))
      {
        return;
      }
    }

    var0 = v38.var0.var0;
    v24 = *&v38.var0.var1;
    if (*&v38.var0.var1)
    {
      atomic_fetch_add_explicit((*&v38.var0.var1 + 8), 1uLL, memory_order_relaxed);
      if (*&v38.var0.var1)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v38.var0.var1);
      }
    }

    if (v21)
    {
      if (!var0)
      {
LABEL_48:
        if (v24)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v24);
        }

        return;
      }

      v26 = var0[66];
      v27 = var0[67];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v26)
      {
        v29 = 0;
        if (v27 && v28)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = v27;
        }

        [(NSMutableAttributedString *)a2 addAttribute:@"TXSubstituteFont" value:*(v28[5] + 120) range:0, v6];
        if (v29)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }
      }

      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }
    }

    if (var0)
    {
      v30 = v22;
    }

    else
    {
      v30 = 0;
    }

    if (v30 == 1)
    {
      v31 = var0[33];
      if (v31)
      {
        v33 = *(v31 + 8);
        v32 = *(v31 + 16);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v33 = 0;
        v32 = 0;
      }

      *&v38.var0.var0 = *&a3->value;
      v38.var0.var3 = a3->epoch;
      Size = TXTextStyle::getSize(v33, &v38, 0.0);
      *&v38.var0.var0 = *&a3->value;
      v38.var0.var3 = a3->epoch;
      OZChannel::getValueAsDouble((v33 + 49416), &v38, 0.0);
      -[NSMutableAttributedString addAttribute:value:range:](a2, "addAttribute:value:range:", @"TXTrackingValue", [MEMORY[0x277CCABB0] numberWithDouble:v35 * Size * TXTextLayout::getXMarginScale(this)], 0, v6);
      if (v32)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v32);
      }
    }

    goto LABEL_48;
  }
}