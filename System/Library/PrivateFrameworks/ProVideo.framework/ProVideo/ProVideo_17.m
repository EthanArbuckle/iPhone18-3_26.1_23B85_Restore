void sub_25FB2EAE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL TXTextObject::isDropShadowFixedSource(TXTextObject *this, const CMTime *a2)
{
  v2 = *(this + 33);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    v5 = OZChannel::getValueAsInt((v3 + 19528), MEMORY[0x277CC08F0], 0.0) != 0;
    if (!v4)
    {
      return v5;
    }

    goto LABEL_9;
  }

  v5 = 0;
  if (v4)
  {
LABEL_9:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v5;
}

void sub_25FB2EB80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXCachedGlyphRender::TXCachedGlyphRender(uint64_t a1, uint64_t a2, uint64_t *a3, const OZRenderParams *a4, int a5)
{
  *(a1 + 1496) = &unk_2872DEA38;
  *(a1 + 1504) = 0;
  *(a1 + 1512) = 1;
  LiImageSource::LiImageSource(a1, &off_2871F4D48);
  *a1 = &unk_2871F4C60;
  *(a1 + 1496) = &unk_2871F4D28;
  v11 = *a3;
  v10 = a3[1];
  *(a1 + 16) = a2;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  OZRenderParams::OZRenderParams((a1 + 40), a4);
  *(a1 + 1464) = a5;
  *(a1 + 1472) = 0;
  PCSharedCount::PCSharedCount((a1 + 1480));
  return a1;
}

void sub_25FB2EC90(_Unwind_Exception *a1)
{
  OZRenderParams::~OZRenderParams((v1 + 40));
  v4 = *(v1 + 32);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  OZChannelBase::setRangeName(v1, &off_2871F4D48);
  *(v1 + 1496) = v2;
  *(v1 + 1512) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1504));
  _Unwind_Resume(a1);
}

uint64_t TXCachedGlyphRender::getBoundary(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v3 = *(*(a1 + 24) + 440);
  *a3 = *(*(a1 + 24) + 424);
  a3[1] = v3;
  return 1;
}

CGColorSpace **TXCachedGlyphRender::getHelium@<X0>(TXCachedGlyphRender *this@<X0>, LiAgent *a2@<X1>, float *a3@<X2>, char a4@<W3>, HGNode **a5@<X8>)
{
  v86 = 0x3FF0000000000000;
  v83 = 0x3FF0000000000000;
  v80 = 0x3FF0000000000000;
  v77 = 0x3FF0000000000000;
  v78 = 0u;
  v79 = 0u;
  v81 = 0u;
  v82 = 0u;
  v84 = 0u;
  v85 = 0u;
  v66 = 0x3FF0000000000000;
  v63 = 0x3FF0000000000000;
  v60 = 0x3FF0000000000000;
  v56 = 0x3FF0000000000000;
  v57 = 0x3FF0000000000000;
  v58 = 0u;
  v59 = 0u;
  v61 = 0u;
  v62 = 0u;
  v64 = 0u;
  v65 = 0u;
  v53 = 0x3FF0000000000000;
  v50 = 0x3FF0000000000000;
  v47 = 0x3FF0000000000000;
  v48 = 0u;
  v49 = 0u;
  v51 = 0u;
  v52 = 0u;
  v54 = 0u;
  v55 = 0u;
  v76 = 0x3FF0000000000000;
  v73 = 0x3FF0000000000000;
  v70 = 0x3FF0000000000000;
  v67 = 0x3FF0000000000000;
  v69 = 0u;
  v68 = 0u;
  v71 = 0u;
  v72 = 0u;
  v75 = 0u;
  v74 = 0u;
  v10 = *(a2 + 20);
  if (v10 != &v57)
  {
    v11 = 0;
    v12 = &v57;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        v12[i] = v10[i];
      }

      ++v11;
      v12 += 4;
      v10 += 4;
    }

    while (v11 != 4);
  }

  HeliumRenderer = LiAgent::getHeliumRenderer(a2);
  v15 = (*(*HeliumRenderer + 128))(HeliumRenderer, 43);
  *a5 = 0;
  PCColor::PCColor(&v45);
  v16 = *(this + 366);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v25 = *(this + 2);
      v32 = 0;
      v33 = 0;
      TXTextLayout::buildHGNodeForGlow(v25, this + 24, this + 40, a2, &v32, 0, 0, &v67, &v77, &v57, &v47, a3, v15 == 1);
      if (v43)
      {
        *a5 = v43;
        v43 = 0;
      }

      v18 = v33;
      if (v33)
      {
        goto LABEL_41;
      }
    }

    else
    {
      if (v16 != 3)
      {
LABEL_19:
        v20 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v20);
        if (v20)
        {
          *a5 = v20;
        }

        return PCCFRef<CGColorSpace *>::~PCCFRef(&v45.var1._obj);
      }

      v19 = *(this + 2);
      v30 = 0;
      v31 = 0;
      TXTextLayout::buildHGNodeForDropShadow(v19, this + 24, this + 40, a2, &v30, 0, 0, &v67, &v77, &v57, &v47, a3, v15 == 1, a4);
      if (v43)
      {
        *a5 = v43;
        v43 = 0;
      }

      v18 = v31;
      if (v31)
      {
        goto LABEL_41;
      }
    }
  }

  else
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v17 = *(this + 2);
        v34 = 0;
        v35 = 0;
        TXTextLayout::buildHGNodeForOutline(v17, this + 24, this + 40, a2, &v34, 0, 0, &v67, &v77, &v57, &v47, *(this + 186), a3, v15 == 1);
        if (v43)
        {
          *a5 = v43;
          v43 = 0;
        }

        v18 = v35;
        if (!v35)
        {
          return PCCFRef<CGColorSpace *>::~PCCFRef(&v45.var1._obj);
        }

LABEL_41:
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        return PCCFRef<CGColorSpace *>::~PCCFRef(&v45.var1._obj);
      }

      goto LABEL_19;
    }

    v21 = *(this + 3);
    v22 = *(v21 + 33);
    if (v22)
    {
      v24 = *(v22 + 8);
      v23 = *(v22 + 16);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *(this + 3);
      }
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }

    isColorAnimated = TXTextObject::isColorAnimated(v21, 0);
    (*(*(v24 + 6344) + 832))(v24 + 6344, this + 40, &v45);
    v26 = *(this + 2);
    v41 = 0;
    v42 = 0;
    v36[0] = isColorAnimated;
    v37 = *&v45.var0.var0;
    v38 = *&v45.var0.var1[1];
    v39 = *&v45.var0.var1[3];
    v40[0] = v45.var1._obj;
    if (v45.var1._obj)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v45.var1._obj);
    }

    v40[1] = v46;
    TXTextLayout::buildHGNodeForFace(v26, this + 24, this + 40, a2, &v41, 0, 0, &v67, &v77, &v57, &v47, v36, a3, v15 == 1, a4);
    v27 = *a5;
    v28 = v43;
    if (*a5 == v43)
    {
      if (v27)
      {
        (*(*v43 + 24))(v43);
      }
    }

    else
    {
      if (v27)
      {
        (*(*v27 + 24))(v27);
        v28 = v43;
      }

      *a5 = v28;
      v43 = 0;
    }

    PCCFRef<CGColorSpace *>::~PCCFRef(v40);
    if (v42)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v42);
    }

    if (v23)
    {
      v18 = v23;
      goto LABEL_41;
    }
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v45.var1._obj);
}

void sub_25FB2F1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, CGColorSpace *a41)
{
  if (a33)
  {
    (*(*a33 + 24))(a33);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef((v43 + 56));
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v42);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a41);
  if (*v41)
  {
    (*(**v41 + 24))(*v41);
  }

  _Unwind_Resume(a1);
}

uint64_t TXCachedGlyphRender::pixelTransformSupport(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144))
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

uint64_t TXTextObjectRender::TXTextObjectRender(uint64_t a1, void *a2, const OZRenderParams *a3, uint64_t a4)
{
  *(a1 + 1544) = &unk_2872DEA38;
  *(a1 + 1552) = 0;
  *(a1 + 1560) = 1;
  LiImageSource::LiImageSource(a1, &off_2871F4E70);
  *a1 = &unk_2871F4D88;
  *(a1 + 1544) = &unk_2871F4E50;
  *(a1 + 13) = 0;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 0;
  *(a1 + 26) = 0;
  OZRenderParams::OZRenderParams((a1 + 32), a3);
  *(a1 + 1456) = *a4;
  v8 = *(a4 + 16);
  *(a1 + 1472) = v8;
  if (v8)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v8);
  }

  v9 = *(a4 + 24);
  *(a1 + 1488) = *(a4 + 32);
  *(a1 + 1480) = v9;
  v10 = a2[1];
  *(a1 + 1496) = *a2;
  *(a1 + 1504) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 1520) = 0x3FF0000000000000;
  return a1;
}

void sub_25FB2F3EC(_Unwind_Exception *a1)
{
  OZRenderParams::~OZRenderParams((v1 + 32));
  OZChannelBase::setRangeName(v1, &off_2871F4E70);
  *(v1 + 1544) = v2;
  *(v1 + 1560) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1552));
  _Unwind_Resume(a1);
}

void TXTextObjectRender::~TXTextObjectRender(TXTextObjectRender *this, const PCString *a2)
{
  var0 = a2->var0;
  *this = a2->var0;
  *(this + var0[-1].info) = a2[5];
  v5 = *(this + 188);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 184);
  OZRenderParams::~OZRenderParams((this + 32));

  OZChannelBase::setRangeName(this, a2 + 1);
}

void TXTextObjectRender::~TXTextObjectRender(TXTextObjectRender *this)
{
  *(v1 + 1544) = &unk_2872DEA38;
  *(v1 + 1560) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1552));
}

{
  *(v1 + 1544) = &unk_2872DEA38;
  *(v1 + 1560) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1552));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toTXTextObjectRender::~TXTextObjectRender(TXTextObjectRender *this)
{
  *(v1 + 1544) = &unk_2872DEA38;
  *(v1 + 1560) = 0;
  v2 = (v1 + 1552);

  PCWeakCount::~PCWeakCount(v2);
}

{
  TXTextObjectRender::~TXTextObjectRender((this + *(*this - 24)));
}

void TXTextObjectRender::getHeliumBestMode(TXTextObjectRender *this, LiAgent *a2)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v4, "not implemented yet");
  PCString::PCString(&v3, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Text/TXTextObject.cpp");
  PCException::PCException(exception, &v4, &v3, 5001);
  *exception = &unk_2871F6178;
}

void sub_25FB2F718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

CGColorSpace *TXTextObjectRender::getHelium@<X0>(TXTextObjectRender *this@<X0>, LiAgent *a2@<X1>, HGCrop **a3@<X8>)
{
  v104 = *MEMORY[0x277D85DE8];
  if (LiRenderingTechnology::getSharpText((this + 1348)))
  {
    TextRenderQuality = OZRenderParams::getTextRenderQuality((this + 32));
    if (TextRenderQuality == 6 && (*(*(this + 187) + 568) & 1) == 0 && (*(this + 26) & 1) == 0)
    {
      TXTextObjectRender::getHeliumBestMode(TextRenderQuality, v7);
    }
  }

  v8 = *(a2 + 20);
  v9 = *v8;
  v10 = *(v8 + 24);
  v102 = *(v8 + 8);
  v103 = v10;
  v11 = *(v8 + 40);
  v12 = *(v8 + 96);
  v99 = *(v8 + 80);
  v100 = v12;
  v101 = *(v8 + 112);
  v13 = *(v8 + 64);
  v97 = *(v8 + 48);
  v98 = v13;
  v79 = v102;
  v80 = v103;
  v78 = v9;
  v81 = v11;
  v84 = v99;
  v85 = v12;
  v86 = v101;
  v82 = v97;
  v83 = v13;
  v76 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v60 = _Q0;
  v77 = _Q0;
  v75 = 0;
  v74 = 0;
  HeliumRenderer = LiAgent::getHeliumRenderer(a2);
  if (HeliumRenderer)
  {
    if (v20)
    {
      v21 = v20;
      if ((*(*v20 + 128))(v20, 43) == 1)
      {
        TXTextObject::getMetalTexture(*(this + 187), (this + 32), *(this + 14), &v78, v21, &v76, &v87, *(this + 2));
        v22 = v87;
        v23 = HGObject::operator new(0x1F0uLL);
        HGBitmapLoader::HGBitmapLoader(v23, v22);
        if (v74 == v23)
        {
          if (v23)
          {
            (*(*v23 + 24))(v23);
          }
        }

        else
        {
          v74 = v23;
        }

        if (v22)
        {
          (*(*v22 + 24))(v22);
        }

        goto LABEL_53;
      }
    }
  }

  if (*(*HGRenderJob::GetRenderNodeList((this + 32)) + 8))
  {
    v24 = *(this + 14);
    v25 = 0.0;
    if (v24 == 1)
    {
      v25 = *(this + 2);
    }

    TXTextObject::getTexture(*(this + 187), (this + 32), v24, &v78, &v76, &v75, &v87, v25);
    v26 = v87;
    if (*&v87 == 0.0)
    {
      *a3 = 0;
      v34 = v88;
    }

    else
    {
      v27 = LiAgent::getHeliumRenderer(a2);
      if (v27)
      {
      }

      else
      {
        v28 = 0;
      }

      v34 = v88;
      v63 = *&v26;
      *&v64 = v88;
      if (v88)
      {
        atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
      }

      v73 = 0;
      PGHelium::createTextureNode(&v63, v28, &v73, 1, 0, &v62._pcColorDesc._colorSpaceRef._obj);
      obj = v62._pcColorDesc._colorSpaceRef._obj;
      if (v74 == v62._pcColorDesc._colorSpaceRef._obj)
      {
        if (v74)
        {
          (*(*v62._pcColorDesc._colorSpaceRef._obj + 24))(v62._pcColorDesc._colorSpaceRef._obj);
        }
      }

      else
      {
        if (v74)
        {
          (*(*v74 + 24))();
          obj = v62._pcColorDesc._colorSpaceRef._obj;
        }

        v74 = obj;
        v62._pcColorDesc._colorSpaceRef._obj = 0;
      }

      if (v64)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v64);
      }
    }

    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    if (*&v26 == 0.0)
    {
      goto LABEL_94;
    }

LABEL_53:
    v72 = 1.0;
    v69 = 0x3FF0000000000000;
    v66 = 1.0;
    v63 = 1.0;
    v64 = 0u;
    v65 = 0u;
    v67 = 0u;
    v68 = 0u;
    v70 = 0u;
    v71 = 0u;
    HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
    if (OZHostApplicationDelegateHandler::wantsToImproveQualityOfDraftQualityText(HostApplicationDelegate) && (v9 != v78 || v11 != v81))
    {
      v38 = v9 / v78;
      v39 = v11 / v81;
      if (v9 / v78 != 1.0)
      {
        v63 = v38 * v63;
        *(&v65 + 1) = v38 * *(&v65 + 1);
        *&v68 = v38 * *&v68;
        *(&v70 + 1) = v38 * *(&v70 + 1);
      }

      if (v39 != 1.0)
      {
        *&v64 = v39 * *&v64;
        v66 = v39 * v66;
        *(&v68 + 1) = v39 * *(&v68 + 1);
        *&v71 = v39 * *&v71;
      }
    }

    isVerticalLayout = TXTextLayout::isVerticalLayout(*(*(this + 187) + 544));
    *&v64 = -*&v64;
    v66 = -v66;
    *(&v68 + 1) = -*(&v68 + 1);
    *&v71 = -*&v71;
    if (isVerticalLayout)
    {
      TXTextObject::getImageBounds(*(this + 187), (this + 32), &v87);
      v62._pcColorDesc._colorSpaceRef._obj = 0;
      *&v62._pcColorDesc._dynamicRange = 0;
      *&v62._pcColorDesc._toneMapMethod._gain = v60;
      PCMatrix44Tmpl<double>::transformRect<double>(&v78, &v87, &v62);
      v41 = -2.0 - (*&v62._pcColorDesc._dynamicRange + *&v62._isPremultiplied);
      if (v41 != 0.0)
      {
        *&v65 = *&v65 + v41 * *&v64;
        *(&v67 + 1) = *(&v67 + 1) + v41 * v66;
        *&v70 = *&v70 + v41 * *(&v68 + 1);
        v72 = v72 + v41 * *&v71;
      }

      v42 = *&v62._pcColorDesc._colorSpaceRef._obj + *&v62._pcColorDesc._toneMapMethod._gain - (*&v76 + *&v77);
      if (v42 != 0.0)
      {
        *&v65 = *&v65 + v42 * v63;
        *(&v67 + 1) = *(&v67 + 1) + v42 * *(&v65 + 1);
        *&v70 = *&v70 + v42 * *&v68;
        v72 = v72 + v42 * *(&v70 + 1);
      }
    }

    else
    {
      PCMatrix44Tmpl<double>::rightTranslate(&v63, *&v76, -(*(&v76 + 1) + *(&v77 + 1)), 0.0);
    }

    v43 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v43);
    (*(*v43 + 120))(v43, 0, v74);
    PGHelium::convertPCMatrix44(&v63, &v73);
    (*(*v43 + 576))(v43, v73);
    if (v74 != v43)
    {
      if (v74)
      {
        (*(*v74 + 24))();
      }

      v74 = v43;
      (*(*v43 + 16))(v43);
    }

    if (*(*(this + 187) + 568) == 1)
    {
      RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
      v45 = *RequestedColorDescription;
      v87 = v45;
      if (v45)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v45);
      }

      v46 = *(RequestedColorDescription + 8);
      DWORD2(v88) = *(RequestedColorDescription + 16);
      *&v88 = v46;
      LOBYTE(v89) = *(RequestedColorDescription + 24);
      FxColorDescription::FxColorDescription(&v62, &v87, 0);
      FxApplyColorConform(&v74, &v62, &v87, &v61);
      v47 = v61;
      if (v74 == v61)
      {
        if (v74)
        {
          (*(*v61 + 24))(v61);
        }
      }

      else
      {
        if (v74)
        {
          (*(*v74 + 24))();
          v47 = v61;
        }

        v74 = v47;
      }

      PCCFRef<CGColorSpace *>::~PCCFRef(&v62._pcColorDesc._colorSpaceRef._obj);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v87);
    }

    v48 = *(this + 190);
    if (v48 >= 1.0)
    {
      v58 = v74;
      if (!v74)
      {
LABEL_91:
        *a3 = v58;
        v74 = 0;
        if (v73)
        {
          (*(*v73 + 24))(v73);
        }

        (*(*v43 + 24))(v43);
        goto LABEL_94;
      }

      (*(*v74 + 16))(v74);
    }

    else
    {
      v96 = 1.0;
      v93 = 0x3FF0000000000000;
      v90 = 0x3FF0000000000000;
      *&v87 = 1.0;
      v88 = 0u;
      v89 = 0u;
      v91 = 0u;
      v92 = 0u;
      v94 = 0u;
      v95 = 0u;
      v49 = -((*(&v76 + 1) + *(&v77 + 1) - *(&v76 + 1)) * (1.0 - v48));
      if (v49 != 0.0)
      {
        *&v89 = v49 * 0.0 + 0.0;
        *(&v91 + 1) = v49;
        *&v94 = *&v89;
        v96 = v49 * 0.0 + 1.0;
      }

      LiAgent::makeHeliumXForm(a2, &v87, &v74, &v62);
      v50 = *&v76;
      v51 = *(&v76 + 1);
      v52 = *&v76 + *&v77;
      v53 = *(&v76 + 1) + *(&v77 + 1);
      v55 = HGRectMake4f(v54, v50, v51, v52, v53);
      v57 = v56;
      v58 = HGObject::operator new(0x1A0uLL);
      HGCrop::HGCrop(v58);
      (*(*v58 + 96))(v58, 0, v55, SHIDWORD(v55), v57, SHIDWORD(v57));
      (*(*v58 + 120))(v58, 0, v62._pcColorDesc._colorSpaceRef._obj);
      if (v62._pcColorDesc._colorSpaceRef._obj)
      {
        (*(*v62._pcColorDesc._colorSpaceRef._obj + 24))(v62._pcColorDesc._colorSpaceRef._obj);
      }
    }

    if (v74 == v58)
    {
      (*(*v58 + 24))(v58);
      v58 = v74;
    }

    else if (v74)
    {
      (*(*v74 + 24))();
    }

    goto LABEL_91;
  }

  v29 = *(this + 14);
  v30 = 0.0;
  if (v29 == 1)
  {
    v30 = *(this + 2);
  }

  TXTextObject::getBitmap(this + 1, *(this + 187), v29, &v78, &v76, &v87, v30);
  v31 = fmin(*&v77, *(&v77 + 1));
  v32 = v31 < 0.0;
  if (v31 >= 0.0)
  {
    v33 = v88;
    v63 = *&v87;
    *&v64 = v88;
    if (v88)
    {
      atomic_fetch_add_explicit((v88 + 8), 1uLL, memory_order_relaxed);
    }

    v73 = 0;
    PGHelium::createBitmapNode(&v63, &v73, 1, 0, &v62._pcColorDesc._colorSpaceRef._obj);
    v35 = v62._pcColorDesc._colorSpaceRef._obj;
    if (v74 == v62._pcColorDesc._colorSpaceRef._obj)
    {
      if (v74)
      {
        (*(*v62._pcColorDesc._colorSpaceRef._obj + 24))(v62._pcColorDesc._colorSpaceRef._obj);
      }
    }

    else
    {
      if (v74)
      {
        (*(*v74 + 24))();
        v35 = v62._pcColorDesc._colorSpaceRef._obj;
      }

      v74 = v35;
      v62._pcColorDesc._colorSpaceRef._obj = 0;
    }

    if (v64)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v64);
    }
  }

  else
  {
    *a3 = 0;
    v33 = v88;
  }

  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (!v32)
  {
    goto LABEL_53;
  }

LABEL_94:
  result = v74;
  if (v74)
  {
    return (*(*v74 + 24))(v74);
  }

  return result;
}

void sub_25FB302F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t TXTextObjectRender::pixelTransformSupport(TXTextObjectRender *this, const LiRenderParameters *a2)
{
  if (*(a2 + 144))
  {
    return 0;
  }

  if (OZRenderParams::getTextRenderQuality((this + 32)) == 6)
  {
    if (LiRenderingTechnology::getSharpText((this + 1348)) && *(this + 26) != 1)
    {
      return 6;
    }

    return 1;
  }

  if (OZRenderParams::getTextRenderQuality((this + 32)) == 2)
  {
    return 1;
  }

  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  return OZHostApplicationDelegateHandler::wantsToImproveQualityOfDraftQualityText(HostApplicationDelegate);
}

double TXTextObjectRender::fixPixelTransform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TextRenderQuality = OZRenderParams::getTextRenderQuality((a1 + 32));
  if (TextRenderQuality == 6)
  {
    if (LiRenderingTechnology::getSharpText((a1 + 1348)) && *(a1 + 26) != 1)
    {
      return result;
    }

    v23 = *(a3 + 80);
    v40 = *(a3 + 64);
    v41 = v23;
    v24 = *(a3 + 112);
    v42 = *(a3 + 96);
    v43 = v24;
    v25 = *(a3 + 16);
    v37[0] = *a3;
    v37[1] = v25;
    v26 = *(a3 + 48);
    v38 = *(a3 + 32);
    v39 = v26;
    TXTextObject::getTextureBounds(*(a1 + 1496), (a1 + 32), *(a1 + 14), v37, 0, 0, &v30, *(a1 + 16));
    *(a3 + 120) = 0x3FF0000000000000;
    *(a3 + 80) = 0x3FF0000000000000;
    *(a3 + 40) = 0x3FF0000000000000;
    *a3 = 0x3FF0000000000000;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    v19 = v37[0].f64[0];
    v20 = *(&v38 + 1);
    v21 = 1.0;
    return PCMatrix44Tmpl<double>::rightScale(a3, v19, v20, v21);
  }

  if (TextRenderQuality == 2)
  {
    v37[0].f64[0] = 0.0;
    v29 = 0.0;
    *&v30 = 0;
    TXTextObject::getScale(*(a1 + 1496), (a1 + 32), v37[0].f64, &v30, &v29, 1, 1, 1, *(a1 + 24), SHIBYTE(*(a1 + 24)), 1);
    if (*(a4 + 144))
    {
      v22 = *(a4 + 152);
    }

    else
    {
      v22 = 1.0;
    }

    *(a3 + 120) = 0x3FF0000000000000;
    *(a3 + 80) = 0x3FF0000000000000;
    *(a3 + 40) = 0x3FF0000000000000;
    *a3 = 0x3FF0000000000000;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    v19 = v22 * fabs(v37[0].f64[0]);
    v20 = v22 * fabs(*&v30);
    v21 = v22 * fabs(v29);
    return PCMatrix44Tmpl<double>::rightScale(a3, v19, v20, v21);
  }

  if (TextRenderQuality)
  {
    return result;
  }

  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  v11 = OZHostApplicationDelegateHandler::wantsToImproveQualityOfDraftQualityText(HostApplicationDelegate);
  v12 = OZHostApplicationDelegateHandler::wantsToDownscaleGlyphsToOutputSize(HostApplicationDelegate);
  if (v11)
  {
    if (v12)
    {
      OZRenderParams::getPixelTransform((a1 + 32), v37);
      v31 = 0u;
      v32 = 0u;
      v30 = 0u;
      v33 = 4;
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      Transformation = PCMatrix44Tmpl<double>::getTransformation(v37, &v30);
      if (!Transformation)
      {
        _pcCheckGetTransformation(Transformation, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Text/TXTextObject.cpp", 5627, v14, v15, v16, v17, v18);
        return LiImageSource::fixPixelTransform(a1, a2, a3, a4);
      }

      *(a3 + 120) = 0x3FF0000000000000;
      *(a3 + 80) = 0x3FF0000000000000;
      *(a3 + 40) = 0x3FF0000000000000;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      v19 = fabs(*(&v31 + 1));
      v20 = fabs(*&v32);
      v21 = fabs(*(&v32 + 1));
      *a3 = 0x3FF0000000000000;
      return PCMatrix44Tmpl<double>::rightScale(a3, v19, v20, v21);
    }

    v27 = *a3;
    v28 = *(a3 + 40);
    *(a3 + 120) = 0x3FF0000000000000;
    *(a3 + 80) = 0x3FF0000000000000;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 40) = 0x3FF0000000000000;
    *a3 = 0x3FF0000000000000;

    return PCMatrix44Tmpl<double>::rightScale(a3, v27, v28, 1.0);
  }

  else
  {

    return LiImageSource::fixPixelTransform(a1, a2, a3, a4);
  }
}

uint64_t TXTextureDecal::TXTextureDecal(uint64_t a1, const PCSharedCount *a2)
{
  *(a1 + 368) = &unk_2872DEA38;
  *(a1 + 376) = 0;
  *(a1 + 384) = 1;
  LiImageFilter::LiImageFilter(a1, &off_2871F4FD0);
  *a1 = &unk_2871F4EC8;
  *(a1 + 368) = &unk_2871F4FB0;
  *(a1 + 40) = a2->var0;
  PCSharedCount::PCSharedCount((a1 + 48), a2 + 1);
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 152) = 0x3FF0000000000000;
  *(a1 + 112) = 0x3FF0000000000000;
  *(a1 + 72) = 0x3FF0000000000000;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 280) = 0x3FF0000000000000;
  *(a1 + 240) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(a1 + 192) = _Q1;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = _Q1;
  *(a1 + 357) = 0;
  *(a1 + 336) = 0x3FF0000000000000;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  return a1;
}

void sub_25FB30B08(_Unwind_Exception *a1)
{
  LiImageFilter::~LiImageFilter(v1, &off_2871F4FD0);
  *(v1 + 368) = v2;
  *(v1 + 384) = 0;
  PCWeakCount::~PCWeakCount((v1 + 376));
  _Unwind_Resume(a1);
}

CGColorSpace **TXTextureDecal::getHelium@<X0>(LiImageSource **this@<X0>, LiAgent *a2@<X1>, HGNode **a3@<X8>)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  LiAgent::getHelium(a2, this[2], &v17);
  result = LiAgent::setActualColorDescription(a2, RequestedColorDescription);
  if (v17)
  {
    result = this[5];
    if (result)
    {
      v15[0] = 0;
      v15[1] = 0;
      __asm { FMOV            V0.2D, #-1.0 }

      v16 = _Q0;
      if ((*(*result + 3))(result, a2, v15))
      {
        operator new();
      }

      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v14, "TXTextureDecal::getHelium: _texture->getBoundary failed");
      PCException::PCException(exception, &v14);
    }
  }

  *a3 = v17;
  return result;
}

void sub_25FB31048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  PCString::~PCString(&a10);
  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t TXTextureDecal::estimateRenderMemory(uint64_t a1, uint64_t a2)
{
  v4 = LiImageFilter::estimateRenderMemory(a1);
  v5 = *(a1 + 40);
  if (v5)
  {
    v4 += (*(*v5 + 112))(v5, a2);
  }

  return v4;
}

uint64_t LiCachedGaussianBlur::LiCachedGaussianBlur(uint64_t a1, uint64_t *a2, void *a3, const OZRenderParams *a4)
{
  LiImageFilter::LiImageFilter(a1, a2 + 2);
  v8 = a2[1];
  *v9 = v8;
  *(a1 + *(v8 - 24)) = a2[8];
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v10 = *a2;
  *a1 = *a2;
  *(a1 + *(v10 - 24)) = a2[9];
  PCWorkingColorVector::PCWorkingColorVector((a1 + 60));
  v11 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 88) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  OZRenderParams::OZRenderParams((a1 + 96), a4);
  return a1;
}

void sub_25FB313C0(_Unwind_Exception *a1)
{
  var0 = v1[11].var0;
  if (var0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](var0);
  }

  LiCachedImageFilter::~LiCachedImageFilter(v1, v2);
  _Unwind_Resume(a1);
}

uint64_t LiCachedGaussianBlur::LiCachedGaussianBlur(uint64_t a1, void *a2, const OZRenderParams *a3)
{
  *(a1 + 1520) = &unk_2872DEA38;
  *(a1 + 1528) = 0;
  *(a1 + 1536) = 1;
  LiImageFilter::LiImageFilter(a1, &off_2871F5138);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *a1 = &unk_2871F5020;
  *(a1 + 1520) = &unk_2871F5110;
  PCWorkingColorVector::PCWorkingColorVector((a1 + 60));
  v6 = a2[1];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  OZRenderParams::OZRenderParams((a1 + 96), a3);
  return a1;
}

void sub_25FB314D0(_Unwind_Exception *a1)
{
  v4 = *(v1 + 88);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  LiCachedImageFilter::~LiCachedImageFilter(v1, &off_2871F5130);
  *(v1 + 1520) = v2;
  *(v1 + 1536) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1528));
  _Unwind_Resume(a1);
}

void sub_25FB31620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

double LiCachedGaussianBlur::fixPixelTransform(uint64_t a1, __n128 *a2, uint64_t a3)
{
  TextRenderQuality = OZRenderParams::getTextRenderQuality((a1 + 96));
  if (TextRenderQuality)
  {
    if (TextRenderQuality == 6)
    {
      v21 = 1.0;
      v22 = 1.0;
      v20 = 1.0;
      TXTextObject::getScale(*(a1 + 80), (a1 + 96), &v22, &v21, &v20, 1, 1, 1, 0, 0, 1);
      v10 = *(a1 + 80);
      LiAgent::getROI(a2, &v18);
      v11.i64[0] = v18.n128_i32[0];
      v11.i64[1] = v18.n128_i32[1];
      v12 = vcvtq_f64_s64(v11);
      v11.i64[0] = v18.n128_i32[2];
      v11.i64[1] = v18.n128_i32[3];
      v19[0] = v12;
      v19[1] = vcvtq_f64_s64(v11);
      TXTextObject::getRenderedGlyphTransform(v10, (a1 + 96), a3, v19, v23, *(a1 + 40), *(a1 + 48));
      v13 = v23[0];
      if (v23[0] < v24)
      {
        v13 = v24;
      }

      v15 = v21;
      v14 = v22;
      v16 = v13 / v22;
      v17 = v13 / v21;
      if (v16 < v17)
      {
        v16 = v17;
      }

      *(a3 + 120) = 0x3FF0000000000000;
      *(a3 + 80) = 0x3FF0000000000000;
      *(a3 + 40) = 0x3FF0000000000000;
      *a3 = 0x3FF0000000000000;
      *(a3 + 8) = 0u;
      *(a3 + 24) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 104) = 0u;
      v8 = v14 * v16;
      v9 = v15 * v16;
      return PCMatrix44Tmpl<double>::rightScale(a3, v8, v9, 1.0);
    }

    if (TextRenderQuality != 2)
    {
      return result;
    }
  }

  v23[0] = 0.0;
  *&v19[0] = 0;
  v18.n128_u64[0] = 0;
  TXTextObject::getScale(*(a1 + 80), (a1 + 96), v23, v19, v18.n128_f64, 1, 1, 1, 0, 0, 1);
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  v8 = v23[0];
  v9 = *v19;
  return PCMatrix44Tmpl<double>::rightScale(a3, v8, v9, 1.0);
}

CGColorSpace **LiCachedGaussianBlur::getHelium@<X0>(LiCachedGaussianBlur *this@<X0>, double **a2@<X1>, HGBlur **a3@<X8>)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  LiAgent::getHelium(a2, *(this + 2), &v24);
  result = LiAgent::setActualColorDescription(a2, RequestedColorDescription);
  if (v24)
  {
    v22 = 1.0;
    v23 = 1.0;
    v21 = 1.0;
    v8 = 1.0;
    v9 = 1.0;
    if (OZRenderParams::getTextRenderQuality((this + 96)) == 6)
    {
      TXTextObject::getScale(*(this + 10), this + 4, &v23, &v22, &v21, 1, 1, 1, 0, 0, 1);
      v10 = a2[20];
      v11 = fabs(v10[5] / v22);
      v9 = pow(fabs(*v10 / v23), 1.53846154);
      v23 = v9;
      v8 = pow(v11, 1.53846154);
      v22 = v8;
    }

    v12 = *(this + 5);
    v13 = *(this + 6);
    v14 = HGObject::operator new(0x220uLL);
    HGBlur::HGBlur(v14);
    *a3 = v14;
    v15 = v12 * v9 / 1675.0;
    v16 = powf(v15, 0.65) * 575.0;
    v17 = v13 * v8 / 1675.0;
    v18 = *(this + 16) * (powf(v17, 0.65) * 575.0);
    v19 = *(this + 15) * v16;
    v20 = v18;
    (*(*v14 + 96))(v14, 0, v19, v20, 0.0, 0.0);
    (*(*v14 + 120))(v14, 0, v24);
    result = v24;
    if (v24)
    {
      return (*(*v24 + 24))(v24);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_25FB31A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HGObject::operator delete(v14);
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  _Unwind_Resume(a1);
}

void LiCachedGaussianBlur::getCacheHash(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v4 = v3;
  v16[520] = *MEMORY[0x277D85DE8];
  v5 = v1[15];
  v6 = v1[16];
  v7 = v1 + 15;
  v8 = v1[17];
  v9 = v1[18];
  if (v6 | v5 | v8 | v9)
  {
    v13 = 0.0;
    v14 = 0.0;
    v15 = 0;
    v11 = 0uLL;
    v12 = 0;
    getScaleTranslate(v2, &v13, &v11);
    PCHashWriteStream::PCHashWriteStream(v16);
    PCHashWriteStream::writeValue(v16, v13);
    PCHashWriteStream::writeValue(v16, v14);
    PCHashWriteStream::close(v16);
    Hash = PCHashWriteStream::getHash(v16);
    PCHash128::operator+=(v7, Hash);
    *v4 = *v7;
    PCHashWriteStream::~PCHashWriteStream(v16);
  }

  else
  {
    *v4 = v5;
    *(v4 + 4) = v6;
    *(v4 + 8) = v8;
    *(v4 + 12) = v9;
  }
}

void sub_25FB31D08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

CGColorSpace **TXGlowFilter::getHelium@<X0>(TXGlowFilter *this@<X0>, double **a2@<X1>, HgcTXGlowMix **a3@<X8>)
{
  result = LiCachedGaussianBlur::getHelium(this, a2, &v9);
  v6 = v9;
  if (v9)
  {
    v7 = HGObject::operator new(0x1A0uLL);
    HgcTXGlowMix::HgcTXGlowMix(v7);
    *a3 = v7;
    v8 = *(this + 190) * 0.1 + 1.0;
    (*(*v7 + 96))(v7, 0, v8, 0.0, 0.0, 0.0);
    (*(*v7 + 96))(v7, 1, *(this + 382), *(this + 383), *(this + 384), 1.0);
    (*(*v7 + 120))(v7, 0, v6);
    return (*(*v6 + 24))(v6);
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_25FB31E8C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t TXTextObject::buildLighting(TXTextObject *this, LiGeode *a2, const LiLightSet *a3, CMTime *a4, int a5)
{
  result = *(this + 68);
  if (result)
  {
    (*(*result + 976))(result);
    result = LiGeode::needsLights(a2);
    if ((result & 1) != 0 || *(a3 + 3) && (result = (*(*(*(this + 68) + 200) + 1840))(), result))
    {
      LightFilter = LiGeode::getLightFilter(a2);
      PCMatrix44Tmpl<double>::operator*(LightFilter + 472, (a2 + 8), v35);
      v12 = LiGeode::getLightFilter(a2);
      v13 = v12;
      v14 = (v12 + 472);
      if ((v12 + 472) != v35)
      {
        for (i = 0; i != 16; i += 4)
        {
          v16 = &v14[i];
          v17 = *&v35[i * 8 + 16];
          *v16 = *&v35[i * 8];
          *(v16 + 1) = v17;
        }
      }

      if (fabs(PCMatrix44Tmpl<double>::determinant(v12 + 472)) < 0.0000001)
      {
        v36 = 0uLL;
        v37 = xmmword_2603426F0;
        liFindMatrixPlane(v14, &v36);
        v18 = *(&v36 + 1);
        v13[61] = v36;
        v13[65] = v18;
        v19 = *(&v37 + 1);
        v13[69] = v37;
        v13[73] = v19;
      }

      LiGeode::setLit(a2, 1);
      v20 = LiGeode::getLightFilter(a2);
      *(v20 + 184) = (*(**(this + 68) + 984))();
      if (*(LiGeode::getLightFilter(a2) + 174) == 1)
      {
        v36 = 0uLL;
        __asm { FMOV            V0.2D, #-1.0 }

        v37 = _Q0;
        TXTextObject::getImageBoundsOfAttribute(this, &v36, a4, a5, 0, 0, 1u, 0, 0.0, 0.0, 0.0, 0.0);
        v26 = LiGeode::getLightFilter(a2);
        v27 = v37;
        *(v26 + 200) = v36;
        *(v26 + 216) = v27;
        result = LiGeode::getLightFilter(a2);
        if ((result + 344) != v35)
        {
          for (j = 0; j != 128; j += 32)
          {
            v29 = (result + 344 + j);
            v30 = *&v35[j + 16];
            *v29 = *&v35[j];
            v29[1] = v30;
          }
        }
      }

      else
      {
        result = LiGeode::getLightFilter(a2);
        if (*(result + 173) == 1)
        {
          v36 = 0uLL;
          __asm { FMOV            V0.2D, #-1.0 }

          v37 = _Q0;
          TXTextObject::getImageBoundsOfAttribute(this, &v36, a4, a5, 0, 0, 1u, 0, 0.0, 0.0, 0.0, 0.0);
          v32 = LiGeode::getLightFilter(a2);
          v33 = v37;
          *(v32 + 200) = v36;
          *(v32 + 216) = v33;
          v34 = LiGeode::getLightFilter(a2);
          result = OZRenderParams::getTextRenderQuality(a4);
          *(v34 + 176) = result == 6;
        }
      }
    }
  }

  return result;
}

void LiGaussianBlur::~LiGaussianBlur(PCSharedCount *this)
{
  *(v1 + 64) = &unk_2872DEA38;
  *(v1 + 80) = 0;
  PCWeakCount::~PCWeakCount((v1 + 72));
}

{
  LiGaussianBlur::~LiGaussianBlur(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiGaussianBlur::~LiGaussianBlur(LiGaussianBlur *this)
{
  *(v1 + 64) = &unk_2872DEA38;
  *(v1 + 80) = 0;
  v2 = (v1 + 72);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  v1[8].var0 = &unk_2872DEA38;
  LOBYTE(v1[10].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[9].var0);

  JUMPOUT(0x2666E9F00);
}

void LiCachedGaussianBlur::~LiCachedGaussianBlur(PCSharedCount *this)
{
  *(v1 + 1520) = &unk_2872DEA38;
  *(v1 + 1536) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1528));
}

{
  LiCachedGaussianBlur::~LiCachedGaussianBlur(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiCachedGaussianBlur::~LiCachedGaussianBlur(LiCachedGaussianBlur *this)
{
  *(v1 + 1520) = &unk_2872DEA38;
  *(v1 + 1536) = 0;
  v2 = (v1 + 1528);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  v1[190].var0 = &unk_2872DEA38;
  LOBYTE(v1[192].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[191].var0);

  JUMPOUT(0x2666E9F00);
}

void TXGlowFilter::~TXGlowFilter(PCSharedCount *this)
{
  LiCachedGaussianBlur::~LiCachedGaussianBlur(this, off_2871F5640);
  *(v1 + 1544) = &unk_2872DEA38;
  *(v1 + 1560) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1552));
}

{
  TXGlowFilter::~TXGlowFilter(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toTXGlowFilter::~TXGlowFilter(TXGlowFilter *this)
{
  LiCachedGaussianBlur::~LiCachedGaussianBlur((this + *(*this - 24)), off_2871F5640);
  *(v1 + 1544) = &unk_2872DEA38;
  *(v1 + 1560) = 0;
  v2 = (v1 + 1552);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  LiCachedGaussianBlur::~LiCachedGaussianBlur(v1, off_2871F5640);
  v1[193].var0 = &unk_2872DEA38;
  LOBYTE(v1[195].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[194].var0);

  JUMPOUT(0x2666E9F00);
}

void TXCachedGlyphRender::~TXCachedGlyphRender(PCSharedCount *this)
{
  this->var0 = &unk_2871F4C60;
  this[187].var0 = &unk_2871F4D28;
  PCSharedCount::~PCSharedCount(this + 185);
  OZRenderParams::~OZRenderParams(&this[5]);
  var0 = this[4].var0;
  if (var0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](var0);
  }

  OZChannelBase::setRangeName(this, &off_2871F4D48);
  this[187].var0 = &unk_2872DEA38;
  LOBYTE(this[189].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[188].var0);
}

{
  this->var0 = &unk_2871F4C60;
  this[187].var0 = &unk_2871F4D28;
  PCSharedCount::~PCSharedCount(this + 185);
  OZRenderParams::~OZRenderParams(&this[5]);
  var0 = this[4].var0;
  if (var0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](var0);
  }

  OZChannelBase::setRangeName(this, &off_2871F4D48);
  this[187].var0 = &unk_2872DEA38;
  LOBYTE(this[189].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[188].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toTXCachedGlyphRender::~TXCachedGlyphRender(TXCachedGlyphRender *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F4C60;
  *(v1 + 187) = &unk_2871F4D28;
  PCSharedCount::~PCSharedCount(v1 + 185);
  OZRenderParams::~OZRenderParams((v1 + 40));
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  OZChannelBase::setRangeName(v1, &off_2871F4D48);
  *(v1 + 187) = &unk_2872DEA38;
  v1[1512] = 0;

  PCWeakCount::~PCWeakCount(v1 + 188);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_2871F4C60;
  *(v1 + 187) = &unk_2871F4D28;
  PCSharedCount::~PCSharedCount(v1 + 185);
  OZRenderParams::~OZRenderParams((v1 + 40));
  v2 = *(v1 + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  OZChannelBase::setRangeName(v1, &off_2871F4D48);
  *(v1 + 187) = &unk_2872DEA38;
  v1[1512] = 0;
  PCWeakCount::~PCWeakCount(v1 + 188);

  JUMPOUT(0x2666E9F00);
}

void TXTextureDecal::~TXTextureDecal(PCSharedCount *this)
{
  this->var0 = &unk_2871F4EC8;
  this[46].var0 = &unk_2871F4FB0;
  PCSharedCount::~PCSharedCount(this + 6);
  this->var0 = off_2871F5EF8;
  this[46].var0 = off_2871F5FE0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2871F4FD8);
  this[46].var0 = &unk_2872DEA38;
  LOBYTE(this[48].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[47].var0);
}

{
  this->var0 = &unk_2871F4EC8;
  this[46].var0 = &unk_2871F4FB0;
  PCSharedCount::~PCSharedCount(this + 6);
  this->var0 = off_2871F5EF8;
  this[46].var0 = off_2871F5FE0;
  PCSharedCount::~PCSharedCount(this + 3);
  OZChannelBase::setRangeName(this, &off_2871F4FD8);
  this[46].var0 = &unk_2872DEA38;
  LOBYTE(this[48].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[47].var0);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toTXTextureDecal::~TXTextureDecal(TXTextureDecal *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2871F4EC8;
  v1[46].var0 = &unk_2871F4FB0;
  PCSharedCount::~PCSharedCount(v1 + 6);
  v1->var0 = off_2871F5EF8;
  v1[46].var0 = off_2871F5FE0;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_2871F4FD8);
  v1[46].var0 = &unk_2872DEA38;
  LOBYTE(v1[48].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[47].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_2871F4EC8;
  v1[46].var0 = &unk_2871F4FB0;
  PCSharedCount::~PCSharedCount(v1 + 6);
  v1->var0 = off_2871F5EF8;
  v1[46].var0 = off_2871F5FE0;
  PCSharedCount::~PCSharedCount(v1 + 3);
  OZChannelBase::setRangeName(v1, &off_2871F4FD8);
  v1[46].var0 = &unk_2872DEA38;
  LOBYTE(v1[48].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[47].var0);

  JUMPOUT(0x2666E9F00);
}

void PCMatrix44Tmpl<double>::rightRotate(double *a1, int a2, double a3)
{
  if (a3 != 0.0)
  {
    v5 = 1.0;
    cosval = 0.0;
    if (vabdd_f64(-1.57079633, a3) >= 0.0000001 && vabdd_f64(4.71238898, a3) >= 0.0000001)
    {
      v5 = -1.0;
      if (vabdd_f64(1.57079633, a3) >= 0.0000001 && vabdd_f64(-4.71238898, a3) >= 0.0000001)
      {
        v5 = 0.0;
        cosval = -1.0;
        if (vabdd_f64(-3.14159265, a3) >= 0.0000001 && vabdd_f64(3.14159265, a3) >= 0.0000001)
        {
          v7 = __sincos_stret(a3);
          cosval = v7.__cosval;
          v5 = -v7.__sinval;
        }
      }
    }

    if (a2)
    {
      if (a2 != 1)
      {
        if (a2 == 2)
        {
          v8 = a1[1];
          v9 = a1[4];
          v10 = a1[5];
          v11 = a1[8];
          v12 = a1[9];
          v13 = a1[12];
          v14 = a1[13];
          v15 = v5 * *a1 + cosval * v8;
          *a1 = cosval * *a1 - v5 * v8;
          a1[1] = v15;
          a1[4] = cosval * v9 - v5 * v10;
          a1[5] = v5 * v9 + cosval * v10;
          a1[8] = cosval * v11 - v5 * v12;
          a1[9] = v5 * v11 + cosval * v12;
          a1[12] = cosval * v13 - v5 * v14;
          a1[13] = v5 * v13 + cosval * v14;
        }

        return;
      }

      v16 = a1[2];
      v17 = a1[4];
      v18 = a1[6];
      v19 = a1[8];
      v20 = a1[10];
      v21 = a1[12];
      v22 = a1[14];
      v23 = cosval * v16 - v5 * *a1;
      *a1 = cosval * *a1 + v5 * v16;
      a1[4] = cosval * v17 + v5 * v18;
      a1[8] = cosval * v19 + v5 * v20;
      a1[12] = cosval * v21 + v5 * v22;
      a1[2] = v23;
      a1[6] = cosval * v18 - v5 * v17;
      v24 = cosval * v22 - v5 * v21;
      a1[10] = cosval * v20 - v5 * v19;
    }

    else
    {
      v25 = a1[1];
      v26 = a1[2];
      v27 = a1[5];
      v28 = a1[6];
      v29 = a1[9];
      v30 = a1[10];
      v31 = a1[13];
      v32 = a1[14];
      a1[1] = cosval * v25 - v5 * v26;
      a1[2] = v5 * v25 + cosval * v26;
      a1[5] = cosval * v27 - v5 * v28;
      a1[6] = v5 * v27 + cosval * v28;
      a1[9] = cosval * v29 - v5 * v30;
      a1[10] = v5 * v29 + cosval * v30;
      v24 = v5 * v31 + cosval * v32;
      a1[13] = cosval * v31 - v5 * v32;
    }

    a1[14] = v24;
  }
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_25FB3313C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::findValue@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (a1 + 16);
  v26[1] = a1 + 16;
  PCMutex::lock((a1 + 16));
  v27 = 1;
  v9 = std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::find<std::pair<HGMTLDeviceType,PCHash128>>(a1 + 88, a2);
  v10 = v9;
  v26[0] = v9;
  if ((a1 + 96) == v9)
  {
    *a3 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *(a4 + 24) = _Q0;
    *(a4 + 160) = 0x3FF0000000000000;
    *(a4 + 120) = 0x3FF0000000000000;
    *(a4 + 80) = 0x3FF0000000000000;
    *(a4 + 40) = 0x3FF0000000000000;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 88) = 0u;
    *(a4 + 104) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
  }

  else
  {
    v11 = v9[7];
    *a4 = v11;
    if (v11)
    {
      (*(*v11 + 16))(v11);
    }

    v12 = *(v10 + 4);
    *(a4 + 24) = *(v10 + 5);
    *(a4 + 8) = v12;
    v13 = *(v10 + 6);
    v14 = *(v10 + 7);
    v15 = *(v10 + 8);
    *(a4 + 88) = *(v10 + 9);
    *(a4 + 72) = v15;
    *(a4 + 56) = v14;
    *(a4 + 40) = v13;
    v16 = *(v10 + 10);
    v17 = *(v10 + 11);
    v18 = *(v10 + 12);
    *(a4 + 152) = *(v10 + 13);
    *(a4 + 136) = v18;
    *(a4 + 120) = v17;
    *(a4 + 104) = v16;
    v19 = *(a1 + 136) + 1;
    *(a1 + 136) = v19;
    v10[29] = v19;
    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::bubble((a1 + 112), v26);
    *a3 = 1;
  }

  return PCMutex::unlock(v8);
}

void sub_25FB33788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(v11);
  PCLockSentry<PCMutex>::~PCLockSentry(&a11);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::find<std::pair<HGMTLDeviceType,PCHash128>>(uint64_t a1, unint64_t *a2)
{
  v3 = (a1 + 8);
  v4 = std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::__lower_bound<std::pair<HGMTLDeviceType,PCHash128>>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = v4[4];
  if (*a2 < v6 || v6 >= *a2 && operator<((a2 + 1), (v4 + 5)))
  {
    return v3;
  }

  return v5;
}

void *std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::__lower_bound<std::pair<HGMTLDeviceType,PCHash128>>(uint64_t a1, unint64_t *a2, void *a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = v5[4];
      if (v7 >= *a2)
      {
        if (*a2 >= v7)
        {
          v8 = operator<((v5 + 5), (a2 + 1));
          if (v8)
          {
            v9 = 8;
          }

          else
          {
            v9 = 0;
          }

          if (!v8)
          {
            a4 = v5;
          }

          v5 = (v5 + v9);
        }

        else
        {
          a4 = v5;
        }
      }

      else
      {
        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

uint64_t *PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::bubble(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1] - *result;
  v4 = *(*a2 + 240);
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
        if (*(v20 + 232) <= *(v17 + 232))
        {
          break;
        }

        *(v2 + 8 * v4) = v20;
        *(v2 + 8 * v19) = v17;
        v2 = *result;
        *(*(*result + 8 * v4) + 240) = v4;
        v17 = *(v2 + 8 * v19);
        *(v17 + 240) = v19;
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
    v11 = *(v9 + 232);
    v12 = v10 < v7 && v11 > *(*(v2 + 8 * v10) + 232);
    v13 = *(*(v2 + 8 * v5) + 232);
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
      if (v13 <= *(*(v2 + 8 * v10) + 232))
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
    *(*(*result + 8 * v4) + 240) = v4;
    v9 = *(v2 + 8 * v16);
    *(v9 + 240) = v16;
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
    v4 = *(*a2 + 240);
    goto LABEL_24;
  }

  return result;
}

uint64_t PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::addValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = (a1 + 16);
  v62[1] = a1 + 16;
  PCMutex::lock((a1 + 16));
  v63 = 1;
  if (*(a1 + 152) >= a4 || *(a1 + 168))
  {
    v9 = std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::find<std::pair<HGMTLDeviceType,PCHash128>>(a1 + 88, a2);
    v10 = v9;
    v62[0] = v9;
    if ((a1 + 96) == v9)
    {
      v25 = *(a1 + 136) + 1;
      *(a1 + 136) = v25;
      v26 = *a3;
      v49 = v26;
      if (v26)
      {
        (*(*v26 + 16))(v26);
      }

      v56 = *(a3 + 13);
      v57 = *(a3 + 15);
      v58 = *(a3 + 17);
      v59 = *(a3 + 19);
      v52 = *(a3 + 5);
      v53 = *(a3 + 7);
      v54 = *(a3 + 9);
      v55 = *(a3 + 11);
      v50 = *(a3 + 1);
      v51 = *(a3 + 3);
      *&v60 = a4;
      *(&v60 + 1) = v25;
      v61 = 0;
      v32 = *a2;
      v33 = *(a2 + 8);
      v34 = v26;
      if (v26)
      {
        (*(*v26 + 16))(v26);
      }

      v41 = v56;
      v42 = v57;
      v43 = v58;
      v44 = v59;
      v37 = v52;
      v38 = v53;
      v39 = v54;
      v40 = v55;
      v35 = v50;
      v36 = v51;
      v45 = v60;
      v46 = v61;
      v47 = std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::__emplace_unique_key_args<std::pair<HGMTLDeviceType,PCHash128>,std::pair<std::pair<HGMTLDeviceType,PCHash128> const,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>(a1 + 88, &v32);
      v48 = v27;
      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&v34);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::add(a1 + 112, &v47);
      v28 = *(a1 + 144) + a4;
      *(a1 + 144) = v28;
      if (!*(a1 + 168))
      {
        while (v28 > *(a1 + 152) || *(a1 + 104) > *(a1 + 160))
        {
          v30 = *(a1 + 112);
          if (v30 == *(a1 + 120))
          {
            break;
          }

          v32 = *v30;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::remove((a1 + 112), &v32);
          v29 = v32;
          *(a1 + 144) -= v32[28];
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 88), v29);
          PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v29 + 7));
          operator delete(v29);
          v28 = *(a1 + 144);
        }
      }

      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&v49);
    }

    else
    {
      v12 = v9 + 7;
      v11 = v9[7];
      v13 = *a3;
      if (v11 != *a3)
      {
        if (v11)
        {
          (*(*v11 + 24))(v10[7]);
          v13 = *a3;
        }

        *v12 = v13;
        if (v13)
        {
          (*(*v13 + 16))(v13);
        }
      }

      v14 = *(a3 + 3);
      *(v10 + 4) = *(a3 + 1);
      *(v10 + 5) = v14;
      if (v12 != a3)
      {
        v15 = 0;
        v16 = v10 + 12;
        v17 = a3 + 5;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            v16[i] = v17[i];
          }

          ++v15;
          v16 += 4;
          v17 += 4;
        }

        while (v15 != 4);
      }

      v19 = *(a1 + 136) + 1;
      *(a1 + 136) = v19;
      v10[29] = v19;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::bubble((a1 + 112), v62);
      v20 = v62[0];
      v21 = a4 - *(v62[0] + 224);
      if (v21)
      {
        v22 = v21 + *(a1 + 144);
        *(a1 + 144) = v22;
        *(v20 + 224) = a4;
        if (!*(a1 + 168))
        {
          while (v22 > *(a1 + 152) || *(a1 + 104) > *(a1 + 160))
          {
            v24 = *(a1 + 112);
            if (v24 == *(a1 + 120))
            {
              break;
            }

            v32 = *v24;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::remove((a1 + 112), &v32);
            v23 = v32;
            *(a1 + 144) -= v32[28];
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 88), v23);
            PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v23 + 7));
            operator delete(v23);
            v22 = *(a1 + 144);
          }
        }
      }
    }
  }

  return PCMutex::unlock(v8);
}

void sub_25FB33DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry(&a38);
  PCLockSentry<PCMutex>::~PCLockSentry(v38 - 80);
  _Unwind_Resume(a1);
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = (v5 - *a1) >> 3;
  v7 = *a2;
  *(*a2 + 240) = v6;
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
  v16 = *(*a2 + 240);
  if (v16)
  {
    v17 = *a1;
    v18 = *(*a1 + 8 * v16);
    do
    {
      v19 = v16 - 1;
      v20 = (v16 - 1) >> 1;
      v21 = v17[v20];
      if (*(v21 + 232) <= *(v18 + 232))
      {
        break;
      }

      v17[v16] = v21;
      v17[v20] = v18;
      v17 = *a1;
      *(*(*a1 + 8 * v16) + 240) = v16;
      v18 = v17[v20];
      *(v18 + 240) = v20;
      v16 = (v16 - 1) >> 1;
    }

    while (v19 > 1);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::__emplace_unique_key_args<std::pair<HGMTLDeviceType,PCHash128>,std::pair<std::pair<HGMTLDeviceType,PCHash128> const,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>(uint64_t a1, unint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::__find_equal<std::pair<HGMTLDeviceType,PCHash128>>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::__construct_node<std::pair<std::pair<HGMTLDeviceType,PCHash128> const,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__map_value_compare<std::pair<HGMTLDeviceType,PCHash128>,std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::less<std::pair<HGMTLDeviceType,PCHash128>>,true>,std::allocator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>>>::__find_equal<std::pair<HGMTLDeviceType,PCHash128>>(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      while (1)
      {
        v7 = v4;
        v8 = *a3;
        v9 = v4[4];
        if (*a3 >= v9)
        {
          break;
        }

LABEL_3:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_14;
        }
      }

      if (v9 >= v8)
      {
        if (operator<((a3 + 1), (v7 + 5)))
        {
          goto LABEL_3;
        }

        v9 = v7[4];
        v8 = *a3;
      }

      if (v9 < v8 || v8 >= v9 && operator<((v7 + 5), (a3 + 1)))
      {
        v5 = v7 + 1;
        v4 = v7[1];
        if (v4)
        {
          continue;
        }
      }

      goto LABEL_14;
    }
  }

  v7 = (a1 + 8);
LABEL_14:
  *a2 = v7;
  return v5;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      PGHelium::MetalTextureCacheEntry::~MetalTextureCacheEntry((v2 + 56));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<std::pair<HGMTLDeviceType,PCHash128> const,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 64);
  v7 = *(a2 + 80);
  v8 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  v9 = *(a2 + 128);
  v10 = *(a2 + 144);
  v11 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v11;
  *(a1 + 128) = v9;
  *(a1 + 144) = v10;
  v12 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 192) = v12;
  return a1;
}

void PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::remove(uint64_t *a1, uint64_t a2)
{
  v3 = *(*a2 + 240);
  v4 = ((a1[1] - *a1) >> 3) - 1;
  if (v3 == v4)
  {

    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v3);
  }

  else
  {
    *(*a1 + 8 * v3) = *(*a1 + 8 * v4);
    *(*(*a1 + 8 * v3) + 240) = v3;
    std::vector<std::__map_iterator<std::__tree_iterator<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,std::__tree_node<std::__value_type<ColorConversionKey,PCCacheImpl<ColorConversionKey,std::shared_ptr<PCWorkingColor>,PCNoLock,std::less<ColorConversionKey>>::Data>,void *> *,long>>>::resize(a1, v4);
    v5 = *a1 + 8 * v3;

    PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,std::__tree_node<std::__value_type<std::pair<HGMTLDeviceType,PCHash128>,PCCacheImpl<std::pair<HGMTLDeviceType,PCHash128>,PGHelium::MetalTextureCacheEntry,PCMutex,std::less<std::pair<HGMTLDeviceType,PCHash128>>>::Data>,void *> *,long>>>::bubble(a1, v5);
  }
}

void TX3DExtrusionPropertiesChannelResetCallback(OZChannelBase *a1, void *a2)
{
  ObjectManipulator = OZChannelBase::getObjectManipulator(a1);
  TXTextStylePtrFromObjectManipulator(ObjectManipulator, &v4);
  v3 = (*(*v4 + 120))(v4);
  if (v3)
  {
  }

  TXTextLayout::doReset3DExtrusionProperties(v3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void sub_25FB34370(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXTextStylePtrFromObjectManipulator(OZObjectManipulator *a1@<X0>, void *a2@<X8>)
{
  {
    std::shared_ptr<OZStyle>::shared_ptr[abi:ne200100]<OZStyle,0>(&lpsrc, v3 + 7);
    {
      v5 = v7;
      *a2 = v4;
      a2[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a2 = 0;
      a2[1] = 0;
    }

    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_25FB344D4(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10F1C40C76692BFLL);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

void TXKerningResetCallback(OZChannelBase *a1, void *a2)
{
  (*(a1->var0 + 35))(a1, 0);
  ObjectManipulator = OZChannelBase::getObjectManipulator(a1);
  TXTextStylePtrFromObjectManipulator(ObjectManipulator, &v5);
  v4 = (*(*v5 + 120))(v5);
  if (v4)
  {
  }

  TXTextLayout::resetKernings(v4);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_25FB345EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void TXTextStyle::create(void *a1@<X8>)
{
  v5 = xmmword_260347AB0;
  Style = OZApplication::createStyle(theApp, &v5);
  std::shared_ptr<TXTextStyle>::shared_ptr[abi:ne200100]<TXTextStyle,0>(a1, Style);
}

void TXTextStyle::TXTextStyle(TXTextStyle *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZTextStyle::OZTextStyle(this, a2, a3, a4);
  *v5 = &unk_2871F61B8;
  *(v5 + 16) = &unk_2871F6378;
  *(v5 + 48) = &unk_2871F65D0;
  *(v5 + 520) = 0u;
  PCSharedCount::PCSharedCount(&v68);
  PCURL::PCURL(&v67, @"Text Format Collection");
  TXCollectionEnum::TXCollectionEnum((this + 536), 0, &v68, &v67, (this + 72), 0x30u, 8, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCSharedCount::PCSharedCount(&v68);
  PCURL::PCURL(&v67, @"Text Format Family");
  OZChannelEnum::OZChannelEnum((this + 792), &v68, &v67, (this + 72), 1u, 8u, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCSharedCount::PCSharedCount(&v68);
  PCURL::PCURL(&v67, @"Text Format Typeface");
  OZChannelEnum::OZChannelEnum((this + 1048), &v68, &v67, (this + 72), 2u, 8u, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Font Folder");
  TXChannelFont::TXChannelFont((this + 1304), &v68, (this + 72), 0x53u, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Size");
  Instance = TXTextStyle::TXTextStyle_sizeInfo::getInstance(v6);
  OZChannelDouble::OZChannelDouble((this + 1976), &v68, (this + 72), 3u, 0, 0, Instance);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Spacing Folder");
  OZChannelFolder::OZChannelFolder((this + 2128), &v68, (this + 72), 0x51u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Tracking");
  v9 = TXTextStyle::TXTextStyle_oldTrackingInfo::getInstance(v8);
  OZChannelDouble::OZChannelDouble((this + 2256), 0.0, &v68, (this + 72), 4u, 0, 0, v9);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Kerning");
  v11 = TXTextStyle::TXTextStyle_kerningImpl::getInstance(v10);
  v12 = TXTextStyle::TXTextStyle_kerningInfo::getInstance(v11);
  OZChannelDouble::OZChannelDouble((this + 2408), 0.0, &v68, (this + 2128), 5u, 136, v11, v12);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Baseline");
  v14 = TXTextStyle::TXTextStyle_baselineInfo::getInstance(v13);
  OZChannelDouble::OZChannelDouble((this + 2560), 0.0, &v68, (this + 72), 6u, 0, 0, v14);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Slant");
  v16 = TXTextStyle::TXTextStyle_slantImpl::getInstance(v15);
  v17 = TXTextStyle::TXTextStyle_slantInfo::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 2712), 0.0, &v68, (this + 72), 7u, 0, v16, v17);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Scale");
  OZChannelScale3D::OZChannelScale3D((this + 2864), &v68, (this + 72), 8u, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Offset");
  OZChannelPosition3D::OZChannelPosition3D((this + 3456), &v68, (this + 72), 9u, 0, 3u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Rotation");
  OZChannelRotation3D::OZChannelRotation3D((this + 4344), &v68, (this + 72), 0x41u, 0, 4u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Rotation");
  OZChannelAngle::OZChannelAngle((this + 5200), &v68, (this + 72), 0xAu, 0, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Monospace");
  OZChannelBool::OZChannelBool((this + 5352), &v68, (this + 72), 0xBu, 0, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format All Caps");
  OZChannelBool::OZChannelBool((this + 5504), &v68, (this + 72), 0xCu, 0, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format All Caps Size");
  v19 = TXTextStyle::TXTextStyle_allCapsSizeImpl::getInstance(v18);
  OZChannelPercent::OZChannelPercent((this + 5656), 0.8, &v68, (this + 72), 0xDu, 0, v19, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Style Preview");
  OZChannelDouble::OZChannelDouble((this + 5808), &v68, (this + 72), 0x3Fu, 2, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face");
  OZChannelFolder::OZChannelFolder((this + 5960), &v68, (this + 72), 0xEu, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face Color Source Enum");
  PCURL::PCURL(&v67, @"Text Face Color Source");
  OZChannelEnum::OZChannelEnum((this + 6088), &v68, &v67, (this + 5960), 0xFu, 0, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 6344), 1.0, 1.0, 1.0, &v68, (this + 5960), 0x10u, 0, 5u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face Gradient");
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 7352), &v68, (this + 5960), 0x11u, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face Texture");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 8560), &v68, (this + 5960), 0x12u, 0);
  PCString::~PCString(&v68);
  *(this + 1268) = 0;
  PCURL::PCURL(&v68, @"Text Face Opacity");
  OZChannelPercent::OZChannelPercent((this + 10152), 1.0, &v68, (this + 5960), 0x13u, 0, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face Blur");
  v21 = TXTextStyle::TXTextStyle_faceBlurImpl::getInstance(v20);
  v22 = TXTextStyle::TXTextStyle_faceBlurInfo::getInstance(v21);
  OZChannel2D::OZChannel2D((this + 10304), &v68, (this + 5960), 0x4Au, 0, 2u, v21, v22);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face Blur");
  OZChannelDouble::OZChannelDouble((this + 10744), &v68, (this + 5960), 0x14u, 2, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Face Four Corner");
  OZChannelQuad::OZChannelQuad((this + 10896), &v68, (this + 5960), 0x43u, 0, 4u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow");
  OZChannelFolder::OZChannelFolder((this + 13848), &v68, (this + 72), 0x15u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Color Source Enum");
  PCURL::PCURL(&v67, @"Text Drop Shadow Color Source");
  OZChannelEnum::OZChannelEnum((this + 13976), &v68, &v67, (this + 13848), 0x16u, 0, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 14232), 0.0, 0.0, 0.0, &v68, (this + 13848), 0x17u, 0, 5u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Gradient");
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 15240), &v68, (this + 13848), 0x18u, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Texture");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 16448), &v68, (this + 13848), 0x19u, 0);
  PCString::~PCString(&v68);
  *(this + 2254) = 0;
  PCURL::PCURL(&v68, @"Text Drop Shadow Opacity");
  v24 = TXTextStyle::TXTextStyle_dropShadowOpacityImpl::getInstance(v23);
  OZChannelPercent::OZChannelPercent((this + 18040), 0.75, &v68, (this + 13848), 0x1Au, 0, v24, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Blur");
  v26 = TXTextStyle::TXTextStyle_dropShadowBlurImpl::getInstance(v25);
  v27 = TXTextStyle::TXTextStyle_dropShadowBlurInfo::getInstance(v26);
  OZChannel2D::OZChannel2D((this + 18192), 0.0, 0.0, &v68, (this + 13848), 0x4Bu, 0, 2u, v26, v27);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Blur");
  OZChannelDouble::OZChannelDouble((this + 18632), 0.0, &v68, (this + 13848), 0x1Cu, 2, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Scale");
  OZChannelScale::OZChannelScale((this + 18784), &v68, (this + 13848), 0x31u, 0, 2u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Distance");
  v29 = TXTextStyle::TXTextStyle_dropShadowDistanceImpl::getInstance(v28);
  v30 = TXTextStyle::TXTextStyle_dropShadowDistanceInfo::getInstance(v29);
  OZChannelDouble::OZChannelDouble((this + 19224), 5.0, &v68, (this + 13848), 0x1Bu, 0, v29, v30);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Angle");
  v32 = TXTextStyle::TXTextStyle_dropShadowAngleImpl::getInstance(v31);
  OZChannelAngle::OZChannelAngle((this + 19376), 5.49778714, &v68, (this + 13848), 0x1Du, 0, v32, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Fixed Source");
  OZChannelBool::OZChannelBool((this + 19528), &v68, (this + 13848), 0x42u, 0, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Drop Shadow Four Corner");
  OZChannelQuad::OZChannelQuad((this + 19680), &v68, (this + 13848), 0x44u, 0, 4u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline");
  OZChannelFolder::OZChannelFolder((this + 22632), &v68, (this + 72), 0x1Eu, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Color Source Enum");
  PCURL::PCURL(&v67, @"Text Outline Color Source");
  OZChannelEnum::OZChannelEnum((this + 22760), &v68, &v67, (this + 22632), 0x1Fu, 0, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 23016), 1.0, 0.0, 0.0, &v68, (this + 22632), 0x20u, 0, 5u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Gradient");
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 24024), &v68, (this + 22632), 0x21u, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Texture");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 25232), &v68, (this + 22632), 0x22u, 0);
  PCString::~PCString(&v68);
  *(this + 3352) = 0;
  PCURL::PCURL(&v68, @"Text Outline Opacity");
  OZChannelPercent::OZChannelPercent((this + 26824), 1.0, &v68, (this + 22632), 0x23u, 0, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Blur");
  v34 = TXTextStyle::TXTextStyle_outlineBlurImpl::getInstance(v33);
  v35 = TXTextStyle::TXTextStyle_outlineBlurInfo::getInstance(v34);
  OZChannel2D::OZChannel2D((this + 26976), &v68, (this + 22632), 0x4Cu, 0, 2u, v34, v35);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Blur");
  OZChannelDouble::OZChannelDouble((this + 27416), &v68, (this + 22632), 0x25u, 2, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Width");
  v37 = TXTextStyle::TXTextStyle_outlineWidthImpl::getInstance(v36);
  v38 = TXTextStyle::TXTextStyle_outlineWidthInfo::getInstance(v37);
  OZChannelDouble::OZChannelDouble((this + 27568), 1.0, &v68, (this + 22632), 0x24u, 0, v37, v38);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Layer Order Enum");
  PCURL::PCURL(&v67, @"Text Outline Layer Order");
  OZChannelEnum::OZChannelEnum((this + 27720), &v68, &v67, (this + 22632), 0x32u, 0, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Four Corner");
  OZChannelQuad::OZChannelQuad((this + 27976), &v68, (this + 22632), 0x45u, 0, 4u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Outline Method");
  OZChannelBool::OZChannelBool((this + 30928), &v68, (this + 22632), 0x54u, 2u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow");
  OZChannelFolder::OZChannelFolder((this + 31080), &v68, (this + 72), 0x26u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Color Source Enum");
  PCURL::PCURL(&v67, @"Text Glow Color Source");
  OZChannelEnum::OZChannelEnum((this + 31208), &v68, &v67, (this + 31080), 0x27u, 0, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Color");
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 31464), 1.0, 0.878431373, 0.262745098, &v68, (this + 31080), 0x28u, 0, 5u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Gradient");
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 32472), &v68, (this + 31080), 0x29u, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Texture");
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 33680), &v68, (this + 31080), 0x2Au, 0);
  PCString::~PCString(&v68);
  *(this + 4408) = 0;
  PCURL::PCURL(&v68, @"Text Glow Opacity");
  OZChannelPercent::OZChannelPercent((this + 35272), 1.0, &v68, (this + 31080), 0x2Bu, 0, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Blur");
  v40 = TXTextStyle::TXTextStyle_glowBlurImpl::getInstance(v39);
  v41 = TXTextStyle::TXTextStyle_glowBlurInfo::getInstance(v40);
  OZChannel2D::OZChannel2D((this + 35424), 1.0, 1.0, &v68, (this + 31080), 0x4Du, 0, 2u, v40, v41);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Blur");
  v43 = TXTextStyle::TXTextStyle_glowBlurImpl::getInstance(v42);
  OZChannelDouble::OZChannelDouble((this + 35864), 1.0, &v68, (this + 31080), 0x2Cu, 2, v43, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Radius");
  v45 = TXTextStyle::TXTextStyle_glowRadiusImpl::getInstance(v44);
  v46 = TXTextStyle::TXTextStyle_glowRadiusInfo::getInstance(v45);
  OZChannelDouble::OZChannelDouble((this + 36016), &v68, (this + 31080), 0x2Du, 0, v45, v46);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Scale");
  OZChannelScale::OZChannelScale((this + 36168), &v68, (this + 31080), 0x2Eu, 0, 2u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Offset");
  OZChannelPosition::OZChannelPosition((this + 36608), &v68, (this + 31080), 0x2Fu, 0, 2u, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Layer Order Enum");
  PCURL::PCURL(&v67, @"Text Glow Layer Order");
  OZChannelEnum::OZChannelEnum((this + 37312), &v68, &v67, (this + 31080), 0x33u, 0, 0, 0);
  PCString::~PCString(&v67);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Glow Four Corner");
  OZChannelQuad::OZChannelQuad((this + 37568), &v68, (this + 31080), 0x46u, 0, 4u);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Style 3D Extrusion Properties");
  OZ3DExtrusionProperties::OZ3DExtrusionProperties((this + 40520), &v68, (this + 72), 0x59u, 0, 0);
  PCString::~PCString(&v68);
  *(this + 6118) = 0;
  *(this + 48904) = 0u;
  *(this + 48920) = 0u;
  *(this + 12234) = 0;
  *(this + 12238) = 0xFFFF;
  PCURL::PCURL(&v68, @"Text Link Drop Shadow Four Corner To Face");
  OZChannelBool::OZChannelBool((this + 48960), &v68, (this + 13848), 0x47u, 0xAu, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Link Outline Four Corner To Face");
  OZChannelBool::OZChannelBool((this + 49112), &v68, (this + 22632), 0x48u, 0xAu, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Link Glow Four Corner To Face");
  OZChannelBool::OZChannelBool((this + 49264), &v68, (this + 31080), 0x49u, 0xAu, 0, 0);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Tracking");
  v48 = TXTextStyle::TXTextStyle_trackingImpl::getInstance(v47);
  v49 = TXTextStyle::TXTextStyle_trackingInfo::getInstance(v48);
  OZChannelPercent::OZChannelPercent((this + 49416), 0.0, &v68, (this + 2128), 0x4Fu, 0, v48, v49);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Format Tracking");
  v51 = TXTextStyle::TXTextStyle_V4TrackingImpl::getInstance(v50);
  v52 = TXTextStyle::TXTextStyle_V4TrackingInfo::getInstance(v51);
  OZChannelPercent::OZChannelPercent((this + 49568), 0.0, &v68, (this + 72), 0x4Fu, 2u, v51, v52);
  PCString::~PCString(&v68);
  PCURL::PCURL(&v68, @"Text Advanced Formatting");
  OZChannelFolder::OZChannelFolder((this + 49720), &v68, (this + 72), 0x5Au, 2u, 0);
  PCString::~PCString(&v68);
  *(this + 49855) = 0;
  *(this + 6231) = 0;
  PCURL::PCURL((this + 49864), @"Text Style Preview Default Text");
  *(this + 3117) = 0u;
  PCMutex::PCMutex((this + 49888));
  OZChannelBase::setFlag((this + 72), 0x4000000, 0);
  OZChannelFolder::saveStateAsDefault((this + 72));
  OZChannelFolder::setFoldFlag((this + 72), 0x80000);
  v53 = OZChannelFolder::saveStateAsDefault((this + 72));
  v54 = TXFontManager::getInstance(v53);
  OZFontManagerBase::getDefaultSystemFontFace(v54, &v65);
  TXTextStyle::setFont(this, &v65);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  v55 = OZChannelBase::setFlag((this + 1304), 0x100000000, 0);
  v56 = TXFontManager::getInstance(v55);
  DefaultFontSize = OZFontManagerBase::getDefaultFontSize(v56);
  OZChannel::setDefaultValue(this + 13, DefaultFontSize);
  OZChannelBase::reset((this + 1976), 0);
  OZChannel::setMin(this + 13, 6.0);
  OZChannel::setMax(this + 13, 4096.0);
  OZChannelBase::setResetCallback((this + 2408), TXKerningResetCallback, 0, 0);
  OZChannelFolder::resetFoldFlag((this + 8560), 15);
  OZChannel::setValue((this + 9888), MEMORY[0x277CC08F0], 1.0, 0);
  v58 = OZChannelFolder::saveStateAsDefault((this + 8560));
  v59 = PCColor::WHITE(v58);
  OZChannelColorNoAlpha::setDefaultColor((this + 6344), v59);
  OZChannelFolder::resetFoldFlag((this + 16448), 15);
  OZChannel::setValue((this + 17776), MEMORY[0x277CC08F0], 1.0, 0);
  OZChannelFolder::saveStateAsDefault((this + 16448));
  OZChannelFolder::resetFoldFlag((this + 25232), 15);
  OZChannel::setValue((this + 26560), MEMORY[0x277CC08F0], 1.0, 0);
  OZChannelFolder::saveStateAsDefault((this + 25232));
  v60 = OZChannelBase::enable((this + 22632), 0, 0);
  v61 = PCColor::RED(v60);
  OZChannelColorNoAlpha::setDefaultColor((this + 23016), v61);
  OZChannel::setValue((this + 30928), MEMORY[0x277CC08F0], 1.0, 0);
  OZChannelFolder::resetFoldFlag((this + 33680), 15);
  OZChannel::setValue((this + 35008), MEMORY[0x277CC08F0], 1.0, 0);
  OZChannelFolder::saveStateAsDefault((this + 33680));
  OZChannelBase::enable((this + 31080), 0, 0);
  OZChannelBase::setFlag((this + 31080), 2048, 0);
  OZChannelFolder::saveStateAsDefault((this + 31080));
  v62 = OZChannelBase::enable((this + 13848), 0, 0);
  v63 = PCColor::BLACK(v62);
  OZChannelColorNoAlpha::setDefaultColor((this + 14232), v63);
  OZChannelFolder::setFoldFlag((this + 5960), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 5960));
  OZChannelFolder::setFoldFlag((this + 13848), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 13848));
  OZChannelFolder::setFoldFlag((this + 22632), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 22632));
  OZChannelFolder::setFoldFlag((this + 31080), 0x20000);
  OZChannelFolder::saveStateAsDefault((this + 31080));
  OZChannelFolder::setFoldFlag((this + 40520), 0x20000);
  OZChannelFolder::resetFoldFlag((this + 40520), 4);
  OZChannelBase::setLabelCtlrClassName((this + 40520), @"TX3DExtrusionPropsLabelController");
  OZChannelBase::setParameterCtlrClassName((this + 536), @"TXCollectionPopUpController");
  OZChannelBase::setInspectorCtlrClassName((this + 5808), @"TXStylePreviewController");
  OZChannelBase::setParameterCtlrClassName((this + 1304), @"TXFontController");
  OZChannelBase::setParameterCtlrClassName(this + 19, @"TXSpacingController");
  OZChannelBase::setParameterCtlrClassName((this + 2408), @"TXKerningController");
  OZChannelBase::setInspectorCtlrClassName((this + 5960), @"OZTXStyleAttributeFolderGroupController");
  OZChannelBase::setInspectorCtlrClassName((this + 22632), @"OZTXStyleAttributeFolderGroupController");
  OZChannelBase::setInspectorCtlrClassName((this + 31080), @"OZTXStyleAttributeFolderGroupController");
  OZChannelBase::setInspectorCtlrClassName((this + 13848), @"OZTXStyleAttributeFolderGroupController");
  OZChannelBase::setResetCallback((this + 40520), TX3DExtrusionPropertiesChannelResetCallback, 0, 0);
  OZChannelFolder::setFoldFlag((this + 49720), 8388612);
  if (*(theApp + 80))
  {
    v64 = @"OZChanLabelController";
  }

  else
  {
    v64 = @"OZMoChanLabelCltr";
  }

  OZChannelBase::setLabelCtlrClassName((this + 1304), v64);
  OZChannelFolder::setFoldFlag((this + 72), 0x40000);
}

void sub_25FB36158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, PCString a13, PCString a14)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  PCMutex::~PCMutex((v14 + v22));
  v24 = *(v17 + 936);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  PCString::~PCString((v14 + 49864));
  OZChannelFolder::~OZChannelFolder((v14 + v15));
  OZChannelPercent::~OZChannelPercent((v14 + 49568));
  OZChannelPercent::~OZChannelPercent((v14 + 49416));
  OZChannelBool::~OZChannelBool((v14 + 49264));
  OZChannelBool::~OZChannelBool((v14 + 49112));
  OZChannelBool::~OZChannelBool((v14 + 48960));
  OZ3DExtrusionProperties::~OZ3DExtrusionProperties((v14 + v18));
  OZChannelQuad::~OZChannelQuad((v14 + 37568));
  OZChannelEnum::~OZChannelEnum((v14 + 37312));
  OZChannelPosition::~OZChannelPosition((v14 + 36608));
  OZChannel2D::~OZChannel2D((v14 + 36168));
  OZChannel::~OZChannel((v14 + 36016));
  OZChannel::~OZChannel((v14 + 35864));
  OZChannel2D::~OZChannel2D((v14 + 35424));
  OZChannelPercent::~OZChannelPercent((v14 + 35272));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v14 + 33680));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v14 + 32472));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v14 + 31464));
  OZChannelEnum::~OZChannelEnum((v14 + 31208));
  OZChannelFolder::~OZChannelFolder((v14 + v16));
  OZChannelBool::~OZChannelBool((v14 + 30928));
  OZChannelQuad::~OZChannelQuad((v14 + 27976));
  OZChannelEnum::~OZChannelEnum((v14 + 27720));
  OZChannel::~OZChannel((v14 + 27568));
  OZChannel::~OZChannel((v14 + 27416));
  OZChannel2D::~OZChannel2D((v14 + 26976));
  OZChannelPercent::~OZChannelPercent((v14 + 26824));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v14 + 25232));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v14 + 24024));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v14 + 23016));
  OZChannelEnum::~OZChannelEnum((v14 + 22760));
  OZChannelFolder::~OZChannelFolder((v14 + v20));
  OZChannelQuad::~OZChannelQuad((v14 + 19680));
  OZChannelBool::~OZChannelBool((v14 + 19528));
  OZChannel::~OZChannel((v14 + 19376));
  OZChannel::~OZChannel((v14 + 19224));
  OZChannel2D::~OZChannel2D((v14 + 18784));
  OZChannel::~OZChannel((v14 + 18632));
  OZChannel2D::~OZChannel2D((v14 + 18192));
  OZChannelPercent::~OZChannelPercent((v14 + 18040));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v14 + 16448));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v14 + 15240));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v14 + 14232));
  OZChannelEnum::~OZChannelEnum((v14 + 13976));
  OZChannelFolder::~OZChannelFolder((v14 + v19));
  OZChannelQuad::~OZChannelQuad((v14 + 10896));
  OZChannel::~OZChannel((v14 + 10744));
  OZChannel2D::~OZChannel2D((v14 + 10304));
  OZChannelPercent::~OZChannelPercent((v14 + 10152));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v14 + 8560));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v14 + 7352));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v14 + 6344));
  OZChannelEnum::~OZChannelEnum((v14 + 6088));
  OZChannelFolder::~OZChannelFolder((v14 + v21));
  OZChannel::~OZChannel((v14 + 5808));
  OZChannelPercent::~OZChannelPercent((v14 + 5656));
  OZChannelBool::~OZChannelBool((v14 + 5504));
  OZChannelBool::~OZChannelBool((v14 + 5352));
  OZChannel::~OZChannel((v14 + 5200));
  OZChannelRotation3D::~OZChannelRotation3D((v14 + 4344));
  OZChannelPosition3D::~OZChannelPosition3D((v14 + 3456));
  OZChannelScale3D::~OZChannelScale3D((v14 + 2864));
  OZChannel::~OZChannel((v14 + 2712));
  OZChannel::~OZChannel((v14 + 2560));
  OZChannel::~OZChannel((v14 + 2408));
  OZChannel::~OZChannel((v14 + 2256));
  OZChannelFolder::~OZChannelFolder((v14 + 2128));
  OZChannel::~OZChannel((v14 + 1976));
  OZChannelFontBase::~OZChannelFontBase((v14 + 1304));
  OZChannelEnum::~OZChannelEnum((v14 + 1048));
  OZChannelEnum::~OZChannelEnum((v14 + 792));
  TXCollectionEnum::~TXCollectionEnum((v14 + 536));
  v25 = *(v14 + 528);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  OZTextStyle::~OZTextStyle(v14);
  _Unwind_Resume(a1);
}

void TXTextStyle::setFont(TXTextStyle *this, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 65) = v5;
  v6 = *(this + 66);
  *(this + 66) = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  TXTextStyle::clearCachedFontFace(this);
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    *(this + 128) = *(v8 + 32);

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    *(this + 128) = *(v8 + 32);
  }
}

void TXTextStyle::TXTextStyle(TXTextStyle *this, const TXTextStyle *a2, OZSceneNode *a3, char a4)
{
  OZTextStyle::OZTextStyle(this, a2, a3, a4);
  *v6 = &unk_2871F61B8;
  *(v6 + 16) = &unk_2871F6378;
  *(v6 + 48) = &unk_2871F65D0;
  *(v6 + 512) = *(a2 + 128);
  *(v6 + 520) = *(a2 + 65);
  v7 = *(a2 + 66);
  *(v6 + 528) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  TXCollectionEnum::TXCollectionEnum((this + 536), (a2 + 536), (this + 72));
  OZChannelEnum::OZChannelEnum((this + 792), (a2 + 792), (this + 72));
  OZChannelEnum::OZChannelEnum((this + 1048), (a2 + 1048), (this + 72));
  TXChannelFont::TXChannelFont((this + 1304), (a2 + 1304), (this + 72));
  OZChannel::OZChannel(this + 13, (a2 + 1976), (this + 72));
  *(this + 247) = &unk_287245C60;
  *(this + 249) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 2128), (a2 + 2128), (this + 72));
  OZChannel::OZChannel((this + 2256), (a2 + 2256), (this + 72));
  *(this + 282) = &unk_287245C60;
  *(this + 284) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2408), (a2 + 2408), (this + 2128));
  *(this + 301) = &unk_287245C60;
  *(this + 303) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2560), (a2 + 2560), (this + 72));
  *(this + 320) = &unk_287245C60;
  *(this + 322) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2712), (a2 + 2712), (this + 72));
  *(this + 339) = &unk_287245C60;
  *(this + 341) = &unk_287245FC0;
  OZChannelScale3D::OZChannelScale3D((this + 2864), (a2 + 2864), (this + 72));
  OZChannelPosition3D::OZChannelPosition3D((this + 3456), (a2 + 3456), (this + 72));
  OZChannelRotation3D::OZChannelRotation3D((this + 4344), (a2 + 4344), (this + 72));
  OZChannel::OZChannel((this + 5200), (a2 + 5200), (this + 72));
  *(this + 650) = &unk_287246030;
  *(this + 652) = &unk_287246390;
  OZChannelBool::OZChannelBool((this + 5352), (a2 + 5352), (this + 72));
  OZChannelBool::OZChannelBool((this + 5504), (a2 + 5504), (this + 72));
  OZChannelPercent::OZChannelPercent((this + 5656), (a2 + 5656), (this + 72));
  OZChannel::OZChannel((this + 5808), (a2 + 5808), (this + 72));
  *(this + 726) = &unk_287245C60;
  *(this + 728) = &unk_287245FC0;
  OZChannelFolder::OZChannelFolder((this + 5960), (a2 + 5960), (this + 72));
  OZChannelEnum::OZChannelEnum((this + 6088), (a2 + 6088), (this + 5960));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 6344), (a2 + 6344), (this + 5960));
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 7352), (a2 + 7352), (this + 5960));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 8560), (a2 + 8560), (this + 5960));
  *(this + 1268) = 0;
  OZChannelPercent::OZChannelPercent((this + 10152), (a2 + 10152), (this + 5960));
  OZChannel2D::OZChannel2D((this + 10304), (a2 + 10304), (this + 5960));
  OZChannel::OZChannel((this + 10744), (a2 + 10744), (this + 5960));
  *(this + 1343) = &unk_287245C60;
  *(this + 1345) = &unk_287245FC0;
  OZChannelQuad::OZChannelQuad((this + 10896), (a2 + 10896), (this + 5960));
  OZChannelFolder::OZChannelFolder((this + 13848), (a2 + 13848), (this + 72));
  OZChannelEnum::OZChannelEnum((this + 13976), (a2 + 13976), (this + 13848));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 14232), (a2 + 14232), (this + 13848));
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 15240), (a2 + 15240), (this + 13848));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 16448), (a2 + 16448), (this + 13848));
  *(this + 2254) = 0;
  OZChannelPercent::OZChannelPercent((this + 18040), (a2 + 18040), (this + 13848));
  OZChannel2D::OZChannel2D((this + 18192), (a2 + 18192), (this + 13848));
  OZChannel::OZChannel((this + 18632), (a2 + 18632), (this + 13848));
  *(this + 2329) = &unk_287245C60;
  *(this + 2331) = &unk_287245FC0;
  OZChannelScale::OZChannelScale((this + 18784), (a2 + 18784), (this + 13848));
  OZChannel::OZChannel((this + 19224), (a2 + 19224), (this + 13848));
  *(this + 2403) = &unk_287245C60;
  *(this + 2405) = &unk_287245FC0;
  OZChannel::OZChannel((this + 19376), a2 + 173, (this + 13848));
  *(this + 2422) = &unk_287246030;
  *(this + 2424) = &unk_287246390;
  OZChannelBool::OZChannelBool((this + 19528), (a2 + 19528), (this + 13848));
  OZChannelQuad::OZChannelQuad((this + 19680), (a2 + 19680), (this + 13848));
  OZChannelFolder::OZChannelFolder((this + 22632), (a2 + 22632), (this + 72));
  OZChannelEnum::OZChannelEnum((this + 22760), (a2 + 22760), (this + 22632));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 23016), (a2 + 23016), (this + 22632));
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 24024), (a2 + 24024), (this + 22632));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 25232), (a2 + 25232), (this + 22632));
  *(this + 3352) = 0;
  OZChannelPercent::OZChannelPercent((this + 26824), (a2 + 26824), (this + 22632));
  OZChannel2D::OZChannel2D((this + 26976), (a2 + 26976), (this + 22632));
  OZChannel::OZChannel((this + 27416), (a2 + 27416), (this + 22632));
  *(this + 3427) = &unk_287245C60;
  *(this + 3429) = &unk_287245FC0;
  OZChannel::OZChannel((this + 27568), (a2 + 27568), (this + 22632));
  *(this + 3446) = &unk_287245C60;
  *(this + 3448) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 27720), (a2 + 27720), (this + 22632));
  OZChannelQuad::OZChannelQuad((this + 27976), (a2 + 27976), (this + 22632));
  OZChannelBool::OZChannelBool((this + 30928), (a2 + 30928), (this + 22632));
  OZChannelFolder::OZChannelFolder((this + 31080), (a2 + 31080), (this + 72));
  OZChannelEnum::OZChannelEnum((this + 31208), (a2 + 31208), (this + 31080));
  OZChannelColorNoAlpha::OZChannelColorNoAlpha((this + 31464), (a2 + 31464), (this + 31080));
  OZChannelGradientWithAngle::OZChannelGradientWithAngle((this + 32472), (a2 + 32472), (this + 31080));
  OZChannelImageWithOptions::OZChannelImageWithOptions((this + 33680), (a2 + 33680), (this + 31080));
  *(this + 4408) = 0;
  OZChannelPercent::OZChannelPercent((this + 35272), (a2 + 35272), (this + 31080));
  OZChannel2D::OZChannel2D((this + 35424), (a2 + 35424), (this + 31080));
  OZChannel::OZChannel((this + 35864), (a2 + 35864), (this + 31080));
  *(this + 4483) = &unk_287245C60;
  *(this + 4485) = &unk_287245FC0;
  OZChannel::OZChannel((this + 36016), (a2 + 36016), (this + 31080));
  *(this + 4502) = &unk_287245C60;
  *(this + 4504) = &unk_287245FC0;
  OZChannelScale::OZChannelScale((this + 36168), (a2 + 36168), (this + 31080));
  OZChannelPosition::OZChannelPosition((this + 36608), (a2 + 36608), (this + 31080));
  OZChannelEnum::OZChannelEnum((this + 37312), (a2 + 37312), (this + 31080));
  OZChannelQuad::OZChannelQuad((this + 37568), (a2 + 37568), (this + 31080));
  OZ3DExtrusionProperties::OZ3DExtrusionProperties((this + 40520), (a2 + 40520), (this + 72));
  *(this + 12234) = 0;
  *(this + 48904) = 0u;
  *(this + 48920) = 0u;
  *(this + 6118) = *(a2 + 6118);
  *(this + 12238) = *(a2 + 12238);
  OZChannelBool::OZChannelBool((this + 48960), (a2 + 48960), (this + 13848));
  OZChannelBool::OZChannelBool((this + 49112), (a2 + 49112), (this + 22632));
  OZChannelBool::OZChannelBool((this + 49264), (a2 + 49264), (this + 31080));
  OZChannelPercent::OZChannelPercent((this + 49416), (a2 + 49416), (this + 2128));
  OZChannelPercent::OZChannelPercent((this + 49568), (a2 + 49568), (this + 72));
  OZChannelFolder::OZChannelFolder((this + 49720), (a2 + 49720), (this + 72));
  *(this + 6231) = *(a2 + 6231);
  *(this + 24928) = *(a2 + 24928);
  *(this + 49858) = 0;
  PCString::PCString(this + 6233, a2 + 6233);
  *(this + 3117) = 0u;
  PCMutex::PCMutex((this + 49888));
  OZChannelBase::setResetCallback((this + 2408), TXKerningResetCallback, 0, 0);
  OZChannelBase::setResetCallback((this + 40520), TX3DExtrusionPropertiesChannelResetCallback, 0, 0);
}

void sub_25FB37858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, OZChannel *a10, OZChannel *a11, OZChannel *a12, OZChannel *a13, OZChannel *a14, OZChannel *a15, OZChannel *a16, OZChannel *a17, OZChannel *a18, OZChannel *a19, OZChannel *a20, OZChannel *a21, OZChannel *a22)
{
  v32 = *(v30 + 936);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  PCString::~PCString((v22 + v24));
  OZChannelFolder::~OZChannelFolder((v22 + v29));
  OZChannelPercent::~OZChannelPercent((v22 + v28));
  OZChannelPercent::~OZChannelPercent((v22 + v27));
  OZChannelBool::~OZChannelBool((v22 + v26));
  OZChannelBool::~OZChannelBool((v22 + 49112));
  OZChannelBool::~OZChannelBool((v22 + 48960));
  OZ3DExtrusionProperties::~OZ3DExtrusionProperties((v22 + 40520));
  OZChannelQuad::~OZChannelQuad((v22 + 37568));
  OZChannelEnum::~OZChannelEnum((v22 + 37312));
  OZChannelPosition::~OZChannelPosition((v22 + 36608));
  OZChannel2D::~OZChannel2D((v22 + 36168));
  OZChannel::~OZChannel(a10);
  OZChannel::~OZChannel(a11);
  OZChannel2D::~OZChannel2D((v22 + 35424));
  OZChannelPercent::~OZChannelPercent((v22 + 35272));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v22 + 33680));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v22 + 32472));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v22 + 31464));
  OZChannelEnum::~OZChannelEnum((v22 + 31208));
  OZChannelFolder::~OZChannelFolder((v22 + v25));
  OZChannelBool::~OZChannelBool((v22 + 30928));
  OZChannelQuad::~OZChannelQuad((v22 + 27976));
  OZChannelEnum::~OZChannelEnum((v22 + 27720));
  OZChannel::~OZChannel(a12);
  OZChannel::~OZChannel(a13);
  OZChannel2D::~OZChannel2D((v22 + 26976));
  OZChannelPercent::~OZChannelPercent((v22 + 26824));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v22 + 25232));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v22 + 24024));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v22 + 23016));
  OZChannelEnum::~OZChannelEnum((v22 + 22760));
  OZChannelFolder::~OZChannelFolder((v22 + v23));
  OZChannelQuad::~OZChannelQuad((v22 + 19680));
  OZChannelBool::~OZChannelBool((v22 + 19528));
  OZChannel::~OZChannel(a14);
  OZChannel::~OZChannel(a15);
  OZChannel2D::~OZChannel2D((v22 + 18784));
  OZChannel::~OZChannel(a16);
  OZChannel2D::~OZChannel2D((v22 + 18192));
  OZChannelPercent::~OZChannelPercent((v22 + 18040));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v22 + 16448));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v22 + 15240));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v22 + 14232));
  OZChannelEnum::~OZChannelEnum((v22 + 13976));
  OZChannelFolder::~OZChannelFolder((v22 + 13848));
  OZChannelQuad::~OZChannelQuad((v22 + 10896));
  OZChannel::~OZChannel(a17);
  OZChannel2D::~OZChannel2D((v22 + 10304));
  OZChannelPercent::~OZChannelPercent((v22 + 10152));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((v22 + 8560));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((v22 + 7352));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((v22 + 6344));
  OZChannelEnum::~OZChannelEnum((v22 + 6088));
  OZChannelFolder::~OZChannelFolder((v22 + 5960));
  OZChannel::~OZChannel(a18);
  OZChannelPercent::~OZChannelPercent((v22 + 5656));
  OZChannelBool::~OZChannelBool((v22 + 5504));
  OZChannelBool::~OZChannelBool((v22 + 5352));
  OZChannel::~OZChannel(a19);
  OZChannelRotation3D::~OZChannelRotation3D((v22 + 4344));
  OZChannelPosition3D::~OZChannelPosition3D((v22 + 3456));
  OZChannelScale3D::~OZChannelScale3D((v22 + 2864));
  OZChannel::~OZChannel(a20);
  OZChannel::~OZChannel(a21);
  OZChannel::~OZChannel(*(v31 - 88));
  OZChannel::~OZChannel(a22);
  OZChannelFolder::~OZChannelFolder((v22 + 2128));
  OZChannel::~OZChannel(*(v31 - 96));
  OZChannelFontBase::~OZChannelFontBase((v22 + 1304));
  OZChannelEnum::~OZChannelEnum((v22 + 1048));
  OZChannelEnum::~OZChannelEnum((v22 + 792));
  TXCollectionEnum::~TXCollectionEnum((v22 + 536));
  v33 = *(v22 + 528);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  OZTextStyle::~OZTextStyle(v22);
  _Unwind_Resume(a1);
}

uint64_t TXTextStyle::getIndexOfMaterial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 480);
  v3 = *(a1 + 488);
  if (v2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (*v2 != a2)
  {
    result = (result + 1);
    if (++v2 == v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t non-virtual thunk toTXTextStyle::getIndexOfMaterial(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 464);
  v3 = *(a1 + 472);
  if (v2 == v3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  while (*v2 != a2)
  {
    result = (result + 1);
    if (++v2 == v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t TXTextStyle::addDefaultMaterial(TXTextStyle *this)
{
  Instance = OZLayeredMaterial_Factory::getInstance(this);
  PCURL::PCURL(&v8, @"Material Default Name");
  NextUniqueID = OZChannelBase::getNextUniqueID(v3);
  v5 = (*(*Instance + 16))(Instance, &v8, NextUniqueID);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  PCString::~PCString(&v8);
  OZStyle::addMaterial(this, v6);
  return (*(*v6 + 160))(v6);
}

uint64_t OZLayeredMaterial_Factory::getInstance(OZLayeredMaterial_Factory *this)
{
  if (atomic_load_explicit(&OZLayeredMaterial_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZLayeredMaterial_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZLayeredMaterial_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZLayeredMaterial_Factory::_instance;
}

uint64_t TXTextStyle::materialChannelValueWillBeSet(uint64_t this, OZChannel *a2, const CMTime *a3, int a4)
{
  v7 = this;
  v8 = a2;
  while (1)
  {
    v8 = v8->var6;
    if (!v8)
    {
      break;
    }

    var1 = v8->var1;
    *&v12.value = xmmword_260348A00;
    this = OZFactory::isKindOfClass(var1, &v12);
    if (this)
    {
      if ((this + 2296) == a2)
      {
        v10 = this;
        v12 = *a3;
        Size = TXTextStyle::getSize(v7, &v12, 0.0);
        return OZChannelMaterialMapTransform::willSetScaleWithFontSize(v10, a3, a4, Size);
      }

      return this;
    }
  }

  return this;
}

float TXTextStyle::getSize(OZChannel *this, CMTime *a2, double a3)
{
  var0 = this[322].var0;
  if (var0)
  {
    v7 = (*(*var0 + 89))(var0, a2);
    v8 = v7;
  }

  else
  {
    v8 = 1.0;
  }

  OZChannel::getValueAsDouble(this + 13, a2, a3);
  return v8 * v9;
}

TXTextLayout *TXTextStyle::getSequenceChannelsForMaterialLayer(TXTextStyle *this, unsigned int a2, int a3)
{
  result = *(this + 6118);
  if (result)
  {
    return TXTextLayout::getSequenceChannelsForMaterialLayer(result, a2, a3);
  }

  return result;
}

uint64_t TXTextStyle::deleteThis(TXTextStyle *this, OZChannelBase *a2)
{
  {
    var6 = v4->var6;
    v6 = OZMaterialLayersFolder::indexOfDescendant(var6, v4);
    ObjectManipulator = OZChannelBase::getObjectManipulator(var6);
    v8 = ObjectManipulator - 16;
    if (!ObjectManipulator)
    {
      v8 = 0;
    }

    v9 = *(this + 60);
    v10 = *(this + 61);
    if (v9 == v10)
    {
LABEL_9:
      v11 = -1;
    }

    else
    {
      v11 = 0;
      while (*v9 != v8)
      {
        ++v9;
        ++v11;
        if (v9 == v10)
        {
          goto LABEL_9;
        }
      }
    }

    TXTextLayout::deleteMaterialLayer(*(this + 6118), v11, v6);
    return 1;
  }

  else
  {

    return OZStyle::deleteThis(this, a2);
  }
}

void TXTextStyle::~TXTextStyle(TXTextStyle *this)
{
  v2 = this + 48904;
  *this = &unk_2871F61B8;
  v3 = this + 16;
  *(this + 2) = &unk_2871F6378;
  *(this + 6) = &unk_2871F65D0;
  v4 = *(this + 6118);
  if (v4)
  {
    v5 = (*(*(v4 + 200) + 272))();
    v6 = v5;
    v7 = *(v2 + 5);
    v8 = v7 + 1200;
    for (i = *(v7 + 1208); i != v8; i = *(i + 8))
    {
      v5 = (*(**(i + 16) + 152))(*(i + 16), v3);
    }

    if (theApp && (*(theApp + 80) & 1) == 0)
    {
      Instance = OZCurrentThread::getInstance(v5);
      isSelf = PCThread::isSelf(*(Instance + 8));
      v12 = v6 && isSelf;
      if (v12 && !OZChannelBase::isObjectRef(v6) && (v2[952] & 1) == 0)
      {
        OZDocument::postNotification(*(v6 + 198), 0x200000);
      }
    }
  }

  if (*v2)
  {
    OZGradientGroupShader::~OZGradientGroupShader(*v2);
    MEMORY[0x2666E9F00]();
    *v2 = 0;
  }

  v13 = *(v2 + 1);
  if (v13)
  {
    OZGradientGroupShader::~OZGradientGroupShader(v13);
    MEMORY[0x2666E9F00]();
    *(v2 + 1) = 0;
  }

  v14 = *(v2 + 2);
  if (v14)
  {
    OZGradientGroupShader::~OZGradientGroupShader(v14);
    MEMORY[0x2666E9F00]();
    *(v2 + 2) = 0;
  }

  v15 = *(v2 + 3);
  if (v15)
  {
    OZGradientGroupShader::~OZGradientGroupShader(v15);
    MEMORY[0x2666E9F00]();
    *(v2 + 3) = 0;
  }

  PCMutex::~PCMutex((this + 49888));
  v16 = *(v2 + 122);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  PCString::~PCString(this + 6233);
  OZChannelFolder::~OZChannelFolder((this + 49720));
  OZChannelPercent::~OZChannelPercent((this + 49568));
  OZChannelPercent::~OZChannelPercent((this + 49416));
  OZChannelBool::~OZChannelBool((this + 49264));
  OZChannelBool::~OZChannelBool((this + 49112));
  OZChannelBool::~OZChannelBool((this + 48960));
  OZ3DExtrusionProperties::~OZ3DExtrusionProperties((this + 40520));
  OZChannelQuad::~OZChannelQuad((this + 37568));
  OZChannelEnum::~OZChannelEnum((this + 37312));
  OZChannelPosition::~OZChannelPosition((this + 36608));
  OZChannel2D::~OZChannel2D((this + 36168));
  OZChannel::~OZChannel((this + 36016));
  OZChannel::~OZChannel((this + 35864));
  OZChannel2D::~OZChannel2D((this + 35424));
  OZChannelPercent::~OZChannelPercent((this + 35272));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 33680));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((this + 32472));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 31464));
  OZChannelEnum::~OZChannelEnum((this + 31208));
  OZChannelFolder::~OZChannelFolder((this + 31080));
  OZChannelBool::~OZChannelBool((this + 30928));
  OZChannelQuad::~OZChannelQuad((this + 27976));
  OZChannelEnum::~OZChannelEnum((this + 27720));
  OZChannel::~OZChannel((this + 27568));
  OZChannel::~OZChannel((this + 27416));
  OZChannel2D::~OZChannel2D((this + 26976));
  OZChannelPercent::~OZChannelPercent((this + 26824));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 25232));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((this + 24024));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 23016));
  OZChannelEnum::~OZChannelEnum((this + 22760));
  OZChannelFolder::~OZChannelFolder((this + 22632));
  OZChannelQuad::~OZChannelQuad((this + 19680));
  OZChannelBool::~OZChannelBool((this + 19528));
  OZChannel::~OZChannel((this + 19376));
  OZChannel::~OZChannel((this + 19224));
  OZChannel2D::~OZChannel2D((this + 18784));
  OZChannel::~OZChannel((this + 18632));
  OZChannel2D::~OZChannel2D((this + 18192));
  OZChannelPercent::~OZChannelPercent((this + 18040));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 16448));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((this + 15240));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 14232));
  OZChannelEnum::~OZChannelEnum((this + 13976));
  OZChannelFolder::~OZChannelFolder((this + 13848));
  OZChannelQuad::~OZChannelQuad((this + 10896));
  OZChannel::~OZChannel((this + 10744));
  OZChannel2D::~OZChannel2D((this + 10304));
  OZChannelPercent::~OZChannelPercent((this + 10152));
  OZChannelImageWithOptions::~OZChannelImageWithOptions((this + 8560));
  OZChannelGradientWithAngle::~OZChannelGradientWithAngle((this + 7352));
  OZChannelColorNoAlpha::~OZChannelColorNoAlpha((this + 6344));
  OZChannelEnum::~OZChannelEnum((this + 6088));
  OZChannelFolder::~OZChannelFolder((this + 5960));
  OZChannel::~OZChannel((this + 5808));
  OZChannelPercent::~OZChannelPercent((this + 5656));
  OZChannelBool::~OZChannelBool((this + 5504));
  OZChannelBool::~OZChannelBool((this + 5352));
  OZChannel::~OZChannel((this + 5200));
  OZChannelRotation3D::~OZChannelRotation3D((this + 4344));
  OZChannelPosition3D::~OZChannelPosition3D((this + 3456));
  *(this + 358) = &unk_2872557A8;
  *(this + 360) = &unk_287255B00;
  OZChannel::~OZChannel((this + 3304));
  OZChannel2D::~OZChannel2D((this + 2864));
  OZChannel::~OZChannel((this + 2712));
  OZChannel::~OZChannel((this + 2560));
  OZChannel::~OZChannel((this + 2408));
  OZChannel::~OZChannel((this + 2256));
  OZChannelFolder::~OZChannelFolder((this + 2128));
  OZChannel::~OZChannel(this + 13);
  OZChannelFontBase::~OZChannelFontBase(this + 163);
  OZChannelEnum::~OZChannelEnum((this + 1048));
  OZChannelEnum::~OZChannelEnum((this + 792));
  TXCollectionEnum::~TXCollectionEnum((this + 536));
  v17 = *(this + 66);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  OZTextStyle::~OZTextStyle(this);
}

{
  TXTextStyle::~TXTextStyle(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTextStyle::~TXTextStyle(TXTextStyle *this)
{
  TXTextStyle::~TXTextStyle((this - 16));
}

{
  TXTextStyle::~TXTextStyle((this - 48));
}

{
  TXTextStyle::~TXTextStyle((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextStyle::~TXTextStyle((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t StyleWillReplaceMaterial(const TXTextStyle *a1, const TXTextStyle *a2)
{
  if ((*(a1 + 48953) & 0xF) == 0)
  {
    return 0;
  }

  v4 = 1;
  isEnabled = OZChannelBase::isEnabled((a1 + 40520), 1, 1);
  if (isEnabled == OZChannelBase::isEnabled((a2 + 40520), 1, 1))
  {
    return (*(*a2 + 248))(a2, a1) ^ 1;
  }

  return v4;
}

void TXTextStyle::copyStyle(Li3DEngineScene **this, const TXTextStyle *a2)
{
  v4 = a2 + 48952;
  v5 = (this + 6118);
  v6 = Li3DEngineScene::sceneManager(this[6118]);
  OZLockingGroup::WriteSentry::WriteSentry(v23, v6);
  v5[912] = v4[904];
  if (*v4)
  {
    v7 = *(a2 + 65);
    v8 = *(a2 + 66);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = (*(*v7 + 16))(v7);
    (*(*this + 21))(this, v9, 1);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }

  v10 = *v4;
  if ((*v4 & 2) != 0)
  {
    OZChannelBase::operator=((this + 247), a2 + 1976);
    v10 = *v4;
  }

  if ((v10 & 0xF) != 0)
  {
    if (((*(this[688] + 30))(this + 5504, a2 + 5504) & 1) == 0)
    {
      *(*v5 + 19321) = 1;
    }

    OZChannelBase::operator=((this + 282), a2 + 2256);
    OZChannelBase::operator=((this + 6177), a2 + 49416);
    OZChannelBase::operator=((this + 6196), a2 + 49568);
    OZChannelBase::operator=((this + 320), a2 + 2560);
    OZChannelBase::operator=((this + 339), a2 + 2712);
    OZChannelFolder::operator=((this + 358));
    OZChannelBase::operator=((this + 375), a2 + 3000);
    OZChannelBase::operator=((this + 394), a2 + 3152);
    OZChannelBase::operator=((this + 413), a2 + 3304);
    OZChannelPosition::operator=((this + 432), a2 + 3456);
    OZChannelPosition::operator=((this + 543), a2 + 4344);
    OZChannelBase::operator=((this + 650), a2 + 5200);
    OZChannelBase::operator=((this + 669), a2 + 5352);
    OZChannelBase::operator=((this + 688), a2 + 5504);
    OZChannelBase::operator=((this + 707), a2 + 5656);
    v10 = *v4;
  }

  if ((v10 & 0x100) != 0)
  {
    OZChannelFolder::operator=((this + 745));
    v10 = *v4;
  }

  if ((v10 & 0x200) != 0)
  {
    OZChannelFolder::operator=((this + 2829));
    v10 = *v4;
  }

  if ((v10 & 0x400) != 0)
  {
    OZChannelFolder::operator=((this + 3885));
    v10 = *v4;
  }

  if ((v10 & 0x800) != 0)
  {
    OZChannelFolder::operator=((this + 1731));
  }

  if (StyleWillReplaceMaterial(a2, this))
  {
    while (1)
    {
      v11 = this[60];
      if (this[61] == v11)
      {
        break;
      }

      OZStyle::unregisterMaterial(this, *v11);
      OZStyle::removeMaterialAtIndex(this, 0);
    }

    v19 = *(a2 + 60);
    for (i = *(a2 + 61); v19 != i; ++v19)
    {
      v21 = (*(**(*v19 + 8) + 24))(*(*v19 + 8), *v19, 0);
      if (v21)
      {
      }

      else
      {
        v22 = 0;
      }

      OZStyle::addMaterial(this, v22);
      OZStyle::registerMaterial(this, v22);
    }
  }

  else if ((v4[1] & 0xF) != 0)
  {
    v12 = this[61] - this[60];
    if (v12)
    {
      v13 = 0;
      v14 = v12 >> 3;
      v15 = 1;
      do
      {
        v16 = this[60];
        if (v13 >= (this[61] - v16) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v17 = *(a2 + 60);
        if (v13 >= (*(a2 + 61) - v17) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        (*(**(v16 + v13) + 184))(*(v16 + v13), *(v17 + 8 * v13));
        v13 = v15;
      }

      while (v14 > v15++);
    }
  }

  if ((v4[1] & 0xF) != 0)
  {
    OZ3DExtrusionProperties::operator=((this + 5065), a2 + 40520);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v23);
}

void sub_25FB38F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTextStyle::behaviorChangedState(TXTextStyle *this, OZBehavior *lpsrc)
{
  if (lpsrc)
  {
    if (v3)
    {
      v4 = v3;
      if (OZSingleChannelBehavior::getChanBase(v3) == (this + 1304))
      {
        v15 = 0.0;
        *v16 = 0;
        Widget = OZRigBehavior::getWidget(v4);
        v7 = (*(*this + 128))(this);
        OZScene::getCurrentTime(v7, &v14);
        OZRigWidget::getCurrentSnapshotIDs(Widget, &v14, &v16[1], v16, &v15);
        ChannelForSnapshot = OZRigBehavior::getChannelForSnapshot(v4, v16[1]);
        if (ChannelForSnapshot)
        {
          if (v9)
          {
            v10 = v9;
            LabelCtlrClassName = OZChannelBase::getLabelCtlrClassName((this + 1304));
            ParameterCtlrClassName = OZChannelBase::getParameterCtlrClassName((this + 1304));
            InspectorCtlrClassName = OZChannelBase::getInspectorCtlrClassName((this + 1304));
            OZChannelFolder::operator=(this + 1304);
            OZChannelBase::operator=(this + 1440, &v10[17]);
            OZChannelBase::operator=(this + 1696, &v10[49]);
            PCString::set(this + 244, v10 + 81);
            PCString::set(this + 245, v10 + 82);
            *(this + 492) = v10[83].var0;
            OZChannelBase::setLabelCtlrClassName((this + 1304), LabelCtlrClassName);
            OZChannelBase::setParameterCtlrClassName((this + 1304), ParameterCtlrClassName);
            OZChannelBase::setInspectorCtlrClassName((this + 1304), InspectorCtlrClassName);
            TXTextStyle::clearCachedFontFace(this);
            TXTextStyle::updateFont(this);
          }
        }
      }
    }
  }

  return 1;
}

uint64_t TXTextStyle::clearCachedFontFace(TXTextStyle *this)
{
  PCMutex::lock((this + 49888));
  v2 = *(this + 6235);
  *(this + 3117) = 0u;
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return PCMutex::unlock((this + 49888));
}

void TXTextStyle::updateFont(TXTextStyle *this)
{
  TXTextStyle::getFontFace(this, &v4);
  if (!v4)
  {
    v2 = *(&v4 + 1);
    if (!*(&v4 + 1))
    {
      return;
    }

    goto LABEL_7;
  }

  v2 = *(&v4 + 1);
  v3 = v4;
  if (*(&v4 + 1))
  {
    atomic_fetch_add_explicit((*(&v4 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  TXTextStyle::setFont(this, &v3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
LABEL_7:

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_25FB39240(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextStyle::getFontFace@<X0>(TXTextStyle *this@<X0>, _OWORD *a2@<X8>)
{
  v4 = this + 49152;
  PCMutex::lock((this + 49888));
  if (!*(v4 + 90))
  {
    OZChannelFontBase::getValidatedFontName((this + 1304), v16);
    v5 = PCString::compare(v16, (*(this + 65) + 8));
    PCString::~PCString(v16);
    if (v5)
    {
      Instance = TXFontManager::getInstance(v6);
      OZChannelFontBase::getValidatedFontName((this + 1304), &v15);
      (*(*Instance + 56))(v16, Instance, &v15);
      v8 = *&v16[0].var0;
      v16[0].var0 = 0;
      v16[1].var0 = 0;
      v9 = *(v4 + 91);
      *(this + 3117) = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        if (v16[1].var0)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16[1].var0);
        }
      }

      PCString::~PCString(&v15);
    }

    else
    {
      v10 = *(this + 65);
      v11 = *(this + 66);
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *(v4 + 90) = v10;
      v12 = *(v4 + 91);
      *(v4 + 91) = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }

  v13 = *(v4 + 45);
  *a2 = v13;
  if (*(&v13 + 1))
  {
    atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  return PCMutex::unlock((this + 49888));
}

void TXTextStyle::setFont(PCString *this, PCString *a2)
{
  OZChannelFontBase::validateAndSetFontName(this + 163, a2);
  Instance = TXFontManager::getInstance(v3);
  OZChannelFontBase::getValidatedFontName(&this[163], &v7);
  (*(*Instance + 56))(&v8, Instance, &v7);
  PCString::~PCString(&v7);
  if (v8)
  {
    v5 = v9;
    v6[0] = v8;
    v6[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    TXTextStyle::setFont(this, v6);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

void sub_25FB394A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t TXTextStyle::updateGradient(uint64_t this, CMTime *a2)
{
  v3 = this;
  v4 = (this + 45056);
  if (*(this + 48904))
  {
    this = OZChannel::getValueAsInt((this + 6088), MEMORY[0x277CC08F0], 0.0);
    if (this == 1)
    {
      v5 = v4[481];
      v9 = *a2;
      this = OZGradientGroupShader::update(v5, &v9);
    }
  }

  if (v4[482])
  {
    this = OZChannel::getValueAsInt((v3 + 22760), MEMORY[0x277CC08F0], 0.0);
    if (this == 1)
    {
      v6 = v4[482];
      v9 = *a2;
      this = OZGradientGroupShader::update(v6, &v9);
    }
  }

  if (v4[483])
  {
    this = OZChannel::getValueAsInt((v3 + 31208), MEMORY[0x277CC08F0], 0.0);
    if (this == 1)
    {
      v7 = v4[483];
      v9 = *a2;
      this = OZGradientGroupShader::update(v7, &v9);
    }
  }

  if (v4[484])
  {
    this = OZChannel::getValueAsInt((v3 + 13976), MEMORY[0x277CC08F0], 0.0);
    if (this == 1)
    {
      v8 = v4[484];
      v9 = *a2;
      return OZGradientGroupShader::update(v8, &v9);
    }
  }

  return this;
}

uint64_t TXTextStyle::getFaceGradient(TXTextStyle *this, CMTime *a2, const FxColorDescription *a3)
{
  v3 = *(this + 6113);
  if (!v3)
  {
    operator new();
  }

  return *(v3 + 24);
}

uint64_t TXTextStyle::getOutlineGradient(TXTextStyle *this, CMTime *a2, const FxColorDescription *a3)
{
  v3 = *(this + 6114);
  if (!v3)
  {
    operator new();
  }

  return *(v3 + 24);
}

uint64_t TXTextStyle::getGlowGradient(TXTextStyle *this, CMTime *a2, const FxColorDescription *a3)
{
  v3 = *(this + 6115);
  if (!v3)
  {
    operator new();
  }

  return *(v3 + 24);
}

uint64_t TXTextStyle::getDropShadowGradient(TXTextStyle *this, CMTime *a2, const FxColorDescription *a3)
{
  v3 = *(this + 6116);
  if (!v3)
  {
    operator new();
  }

  return *(v3 + 24);
}

void TXTextStyle::getTextureLiImageSource(TXTextStyle *this, CMTime *a2, OZChannelImageWithOptions *a3)
{
  v5 = (*(*this + 128))(this);
  ValueAsUint = OZChannel::getValueAsUint((a3 + 136), MEMORY[0x277CC08F0], 0.0);
  Node = OZScene::getNode(v5, ValueAsUint);
  if (Node)
  {
  }

  v12 = 0uLL;
  v13 = 0;
  v9 = *a2;
  OZChannelImageWithOptions::getFrame(a3, &v9, &v12);
  OZRenderParams::OZRenderParams(&v9, a2);
  OZRenderParams::setImageType(&v9, 2);
  *&v9.value = v12;
  v11 = 0;
  v9.epoch = v13;
  v10 = 0;
  OZChannelBase::setRangeName(a2, &v8);
  operator new();
}

void sub_25FB39BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  Render360GroupAsEquirectSentry::~Render360GroupAsEquirectSentry(&a10);
  OZRenderGraphState::~OZRenderGraphState(&a19);
  LiGraphBuilder::~LiGraphBuilder(&a57);
  OZRenderParams::~OZRenderParams(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void *TXTextStyle::hasTexture(TXTextStyle *this, OZChannelImageWithOptions *a2)
{
  v3 = (*(*this + 128))(this);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  result = OZScene::getNode(v3, ValueAsUint);
  if (result)
  {
  }

  return result;
}

void TXTextStyle::writeBody(PCString *this, PCSerializerWriteStream *a2, BOOL a3, BOOL a4, uint64_t a5)
{
  v10 = &this[6118];
  var0 = this[6118].var0;
  if (var0)
  {
    v12 = Li3DEngineScene::sceneManager(var0);
  }

  else
  {
    v12 = 0;
  }

  OZLockingGroup::WriteSentry::WriteSentry(v17, v12);
  PCSerializerWriteStream::pushScope(a2, &TXStyleScope);
  v13 = v10[2];
  (*(*a2 + 16))(a2, 1002);
  (*(*a2 + 56))(a2, v13);
  (*(*a2 + 24))(a2);
  v14 = v10[226];
  (*(*a2 + 16))(a2, 1003);
  (*(*a2 + 56))(a2, v14);
  (*(*a2 + 24))(a2);
  v15 = v10[227];
  (*(*a2 + 16))(a2, 1004);
  (*(*a2 + 56))(a2, v15);
  (*(*a2 + 24))(a2);
  PCString::PCString(&v16, this + 6233);
  (*(*a2 + 16))(a2, 1005);
  (*(*a2 + 104))(a2, &v16);
  (*(*a2 + 24))(a2);
  PCString::~PCString(&v16);
  PCSerializerWriteStream::popScope(a2);
  OZStyle::writeBody(this, a2, a3, a4, a5);
  OZLockingGroup::WriteSentry::~WriteSentry(v17);
}

void sub_25FB39FCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  PCString::~PCString(&a9);
  OZLockingGroup::WriteSentry::~WriteSentry(&a10);
  _Unwind_Resume(a1);
}

OZFactories *TXTextStyle::markFactoriesForSerialization(TXTextStyle *this, PCSerializerWriteStream *a2)
{
  OZStyle::markFactoriesForSerialization(this, a2);
  OZChannelGradient::markFactoriesForSerialization((this + 7352), a2, 0);
  OZChannelGradient::markFactoriesForSerialization((this + 24024), a2, 0);
  OZChannelGradient::markFactoriesForSerialization((this + 32472), a2, 0);

  return OZChannelGradient::markFactoriesForSerialization((this + 15240), a2, 0);
}

uint64_t TXTextStyle::parseBegin(TXTextStyle *this, PCSerializerReadStream *a2)
{
  OZStyle::unregisterAllMaterials(this);
  while (*(this + 61) != *(this + 60))
  {
    OZStyle::removeMaterialAtIndex(this, 0);
  }

  OZStyle::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &TXStyleScope);
  return 1;
}

uint64_t TXTextStyle::parseEnd(TXTextStyle *this, PCSerializerReadStream *a2)
{
  OZStyle::parseEnd(this, a2);
  v4 = *(a2 + 26);
  if (v4 <= 2)
  {
    OZChannel::scaleChannel((this + 10744), 2.0);
    OZChannel::scaleChannel((this + 27416), 2.0);
    OZChannel::scaleChannel((this + 35864), 2.0);
    OZChannel::scaleChannel((this + 18632), 2.0);
    v4 = *(a2 + 26);
  }

  if (v4 <= 3)
  {
    OZChannelBase::operator=(this + 10440, this + 10744);
    OZChannelBase::operator=(this + 10592, this + 10744);
    OZChannelBase::operator=(this + 18328, this + 18632);
    OZChannelBase::operator=(this + 18480, this + 18632);
    OZChannelBase::operator=(this + 27112, this + 27416);
    OZChannelBase::operator=(this + 27264, this + 27416);
    OZChannelBase::operator=(this + 35560, this + 35864);
    OZChannelBase::operator=(this + 35712, this + 35864);
    OZChannelBase::setFlag((this + 10744), 2, 0);
    OZChannelBase::setFlag((this + 18632), 2, 0);
    OZChannelBase::setFlag((this + 27416), 2, 0);
    OZChannelBase::setFlag((this + 35864), 2, 0);
  }

  OZChannelBase::setFlag((this + 30928), 2, 0);
  if (!OZChannelBase::testFlag((this + 49568), 2))
  {
    OZChannel::copy((this + 49416), (this + 49568), 1);
  }

  OZChannelBase::setFlag((this + 49568), 2, 0);
  OZChannelBase::setFlag((this + 2408), 128, 0);
  OZChannelBase::resetFlag((this + 6344), 2, 0);
  OZChannelBase::resetFlag((this + 23016), 2, 0);
  if (OZChannelBase::testFlag((this + 31208), 2))
  {
    OZChannelBase::resetFlag((this + 31208), 2, 0);
    OZChannelBase::setFlag((this + 31208), 0x400000, 0);
  }

  if (OZChannelBase::testFlag((this + 13976), 2))
  {
    OZChannelBase::resetFlag((this + 13976), 2, 0);
    OZChannelBase::setFlag((this + 13976), 0x400000, 0);
  }

  OZChannelFolder::setFoldFlag((this + 72), 0x40000);
  TXTextStyle::updateFont(this);
  return 1;
}

uint64_t TXTextStyle::parseElement(PCSerializer **this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  OZStyle::parseElement(this, a2, a3);
  v6 = *(a3 + 2);
  if (v6 <= 1002)
  {
    if (v6 == 81)
    {
      *v14 = 0;
      PCSharedCount::PCSharedCount(&v15);
      PCSharedCount::PCSharedCount(&v13);
      v12 = 0;
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 113, v14);
      PCSerializerReadStream::getAttributeAsString(a2, a3, 110, &v15);
      PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v14[1]);
      PCSerializerReadStream::getAttributeAsDouble(a2, a3, 116, &v12);
      if ((PCSerializerReadStream::getAttributeAsString(a2, a3, 118, &v13) & 1) == 0)
      {
        PCString::set(&v13, &v15);
      }

      v7 = OZFactories::lookupFactory(*(theApp + 32), v14[0]);
      if (v7)
      {
        if (v8)
        {
          v9 = (*(*v8 + 168))(v8, &v13, v14[1]);
          (*(v9[2] + 120))(v9 + 2);
          PCSerializerReadStream::pushHandler(a2, (v9 + 6));
          OZStyle::addMaterial(this, v9);
          OZStyle::registerMaterial(this, v9);
        }
      }

      PCString::~PCString(&v13);
    }

    else
    {
      if (v6 != 1000)
      {
        if (v6 == 1002)
        {
          (*(*a3 + 32))(a3, this + 48952);
        }

        return 1;
      }

      LODWORD(v13.var0) = 0;
      if (!PCSerializerReadStream::getAttributeAsInt32(a2, a3, 2, &v13))
      {
        return 1;
      }

      PCSharedCount::PCSharedCount(&v15);
      if (PCSerializerReadStream::getAsString(a2, a3, &v15))
      {
        (*(*this + 21))(this, &v15, 1);
      }
    }

    PCString::~PCString(&v15);
    return 1;
  }

  switch(v6)
  {
    case 1003:
      v10 = 49848;
LABEL_22:
      PCSerializerReadStream::getAsUInt32(a2, a3, this + v10);
      return 1;
    case 1004:
      v10 = 49852;
      goto LABEL_22;
    case 1005:
      PCSerializerReadStream::getAsString(a2, a3, (this + 6233));
      break;
  }

  return 1;
}

void TXTextStyle::calcStaticHash(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = Li3DEngineScene::sceneManager(*(a1 + 48944));
  OZLockingGroup::WriteSentry::WriteSentry(v21, v6);
  if (!v7)
  {
    __cxa_bad_cast();
  }

  v8 = v7;
  (*(*v7 + 40))(v7);
  (*(*a1 + 184))(a1, a2, 0, 0, 1);
  v20 = *PCHashWriteStream::getHash(v8)->i8;
  v9 = *(a1 + 504);
  if (v9 && (*(*v9 + 272))(v9))
  {
    v10 = (*(**(a1 + 504) + 272))(*(a1 + 504));
    v19[0] = 0;
    v19[1] = 0;
    v18 = v19;
    OZScene::getImmediatelyReferencedNodes(v10, *(a1 + 96), &v18);
    v11 = v18;
    if (v18 != v19)
    {
      do
      {
        Node = OZScene::getNode(v10, *(v11 + 7));
        if (Node && !OZObjectManipulator::isInObjectList(Node + 16, a3))
        {
          OZObjectManipulator::getStaticHash();
        }

        v13 = v11[1];
        if (v13)
        {
          do
          {
            v14 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v14 = v11[2];
            v15 = *v14 == v11;
            v11 = v14;
          }

          while (!v15);
        }

        v11 = v14;
      }

      while (v14 != v19);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v18, v19[0]);
  }

  if (OZChannel::getValueAsInt((a1 + 48752), MEMORY[0x277CC08F0], 0.0))
  {
    v17 = *(a1 + 480);
    v16 = *(a1 + 488);
    while (v17 != v16)
    {
      (*(*(*v17 + 16) + 440))(*v17 + 16, a2, a3);
      v17 += 8;
    }
  }

  PCHashWriteStream::setHash(v8, &v20);
  OZLockingGroup::WriteSentry::~WriteSentry(v21);
}

void sub_25FB3A99C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(va, v5);
  OZLockingGroup::WriteSentry::~WriteSentry(va1);
  _Unwind_Resume(a1);
}

void TXTextStyle::calcHashForState(uint64_t a1, void *a2, CMTime *a3, uint64_t a4)
{
  v8 = Li3DEngineScene::sceneManager(*(a1 + 48944));
  OZLockingGroup::WriteSentry::WriteSentry(v20, v8);
  if (!v9)
  {
    __cxa_bad_cast();
  }

  v10 = v9;
  v19 = *a3;
  OZChannelFolder::calcHashForState((a1 + 72), a2, &v19);
  v18 = *PCHashWriteStream::getHash(v10)->i8;
  v11 = *(a1 + 504);
  if (v11 && (*(*v11 + 272))(v11))
  {
    v12 = (*(**(a1 + 504) + 272))(*(a1 + 504));
    *&v19.timescale = 0;
    v19.epoch = 0;
    v19.value = &v19.timescale;
    OZScene::getImmediatelyReferencedNodes(v12, *(a1 + 96), &v19);
    value = v19.value;
    if (v19.value != &v19.timescale)
    {
      do
      {
        Node = OZScene::getNode(v12, *(value + 28));
        if (Node && !OZObjectManipulator::isInObjectList(Node + 16, a4))
        {
          OZObjectManipulator::getHashForState();
        }

        v15 = *(value + 8);
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = v15->value;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = *(value + 16);
            v17 = v16->value == value;
            value = v16;
          }

          while (!v17);
        }

        value = v16;
      }

      while (v16 != &v19.timescale);
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v19, *&v19.timescale);
  }

  PCHashWriteStream::setHash(v10, &v18);
  OZLockingGroup::WriteSentry::~WriteSentry(v20);
}

void sub_25FB3ABF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void *);
  v9 = va_arg(va1, void);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(va, v8);
  OZLockingGroup::WriteSentry::~WriteSentry(va1);
  _Unwind_Resume(a1);
}

uint64_t TXTextStyle::calcHashForStateAffectingLayout(TXTextStyle *this, PCSerializerWriteStream *a2, const CMTime *a3)
{
  OZChannelFontBase::getValidatedFontName((this + 1304), &v7);
  (*(*a2 + 104))(a2, &v7);
  PCString::~PCString(&v7);
  (*(*(this + 67) + 448))(this + 536, a2, a3);
  (*(*(this + 180) + 448))(this + 1440, a2, a3);
  (*(*(this + 212) + 448))(this + 1696, a2, a3);
  (*(*(this + 247) + 448))(this + 1976, a2, a3);
  (*(*(this + 282) + 448))(this + 2256, a2, a3);
  (*(*(this + 6177) + 448))(this + 49416, a2, a3);
  (*(*(this + 320) + 448))(this + 2560, a2, a3);
  (*(*(this + 301) + 448))(this + 2408, a2, a3);
  (*(*(this + 358) + 448))(this + 2864, a2, a3);
  (*(*(this + 669) + 448))(this + 5352, a2, a3);
  (*(*(this + 688) + 448))(this + 5504, a2, a3);
  (*(*(this + 707) + 448))(this + 5656, a2, a3);
  return (*(*(this + 5164) + 448))(this + 41312, a2, a3);
}

uint64_t TXTextStyle::getPreviewSceneNode(TXTextStyle *this)
{
  PCSharedCount::PCSharedCount(v6);
  NextUniqueID = OZChannelBase::getNextUniqueID(v1);
  v3 = TXTextInput::create(v6, NextUniqueID);
  PCString::~PCString(v6);
  *&v6[0].var0 = *MEMORY[0x277CC08F0];
  v7 = *(MEMORY[0x277CC08F0] + 16);
  PCURL::PCURL(&v5, @"Text Style Preview Text");
  (*(*v3 + 144))(v3, v6, &v5);
  PCString::~PCString(&v5);
  TXTextLayout::didFinishInitializing(v3, 1);
  return v3 + 200;
}

uint64_t TXTextStyle::getFillType(TXTextStyle *this, unsigned int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  else
  {
    return OZChannel::getValueAsInt((this + qword_260349010[a2]), MEMORY[0x277CC08F0], 0.0);
  }
}

void *TXTextStyle::hasTexture(TXTextStyle *this, unsigned int a2)
{
  if (a2 > 3)
  {
    return 0;
  }

  else
  {
    return TXTextStyle::hasTexture(this, (this + qword_260349030[a2]));
  }
}

char *TXTextStyle::getTextureChannel(TXTextStyle *this, int a2)
{
  v2 = this + 33680;
  v3 = this + 16448;
  if (a2 != 3)
  {
    v3 = 0;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v4 = this + 8560;
  v5 = this + 25232;
  if (a2 != 1)
  {
    v5 = 0;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 1)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

char *TXTextStyle::getGradientChannel(TXTextStyle *this, int a2)
{
  v2 = this + 32472;
  v3 = this + 15240;
  if (a2 != 3)
  {
    v3 = 0;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v4 = this + 7352;
  v5 = this + 24024;
  if (a2 != 1)
  {
    v5 = 0;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 1)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t TXTextStyle::getGradient(TXTextStyle *this, int a2, CMTime *a3, const FxColorDescription *a4)
{
  v4 = 0;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = *a3;
      return TXTextStyle::getGlowGradient(this, &v7, a4);
    }

    if (a2 == 3)
    {
      v7 = *a3;
      return TXTextStyle::getDropShadowGradient(this, &v7, a4);
    }
  }

  else
  {
    if (!a2)
    {
      v7 = *a3;
      return TXTextStyle::getFaceGradient(this, &v7, a4);
    }

    if (a2 == 1)
    {
      v7 = *a3;
      return TXTextStyle::getOutlineGradient(this, &v7, a4);
    }
  }

  return v4;
}

char *TXTextStyle::getColorChannel(TXTextStyle *this, int a2)
{
  v2 = this + 31464;
  v3 = this + 14232;
  if (a2 != 3)
  {
    v3 = 0;
  }

  if (a2 != 2)
  {
    v2 = v3;
  }

  v4 = this + 6344;
  v5 = this + 23016;
  if (a2 != 1)
  {
    v5 = 0;
  }

  if (a2)
  {
    v4 = v5;
  }

  if (a2 <= 1)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t TXTextStyle::prerollBeginForNode(uint64_t a1, uint64_t a2, const OZRenderParams *a3, uint64_t a4, uint64_t a5, double a6)
{
  v11 = (*(*a1 + 128))(a1);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  Node = OZScene::getNode(v11, ValueAsUint);
  if (!Node)
  {
    return 0;
  }

  v14 = Node;
  v20 = 0uLL;
  v21 = 0;
  v17[0] = *a3;
  OZChannelImageWithOptions::getFrame(a2, v17, &v20);
  OZRenderParams::OZRenderParams(v17, a3);
  *&v17[0].value = v20;
  v18 = 0;
  v19 = 0;
  v17[0].epoch = v21;
  v15 = (*(*v14 + 112))(v14, v17, a4, a5, a6);
  OZRenderParams::~OZRenderParams(v17);
  return v15;
}

uint64_t TXTextStyle::prerollBegin(uint64_t a1, const OZRenderParams *a2, uint64_t a3, uint64_t a4, double a5)
{
  TXTextStyle::prerollBeginForNode(a1, a1 + 8560, a2, a3, a4, a5);
  TXTextStyle::prerollBeginForNode(a1, a1 + 25232, a2, a3, a4, a5);
  TXTextStyle::prerollBeginForNode(a1, a1 + 33680, a2, a3, a4, a5);
  TXTextStyle::prerollBeginForNode(a1, a1 + 16448, a2, a3, a4, a5);
  return 0;
}

uint64_t TXTextStyle::prerollEndForNode(TXTextStyle *this, OZChannelImageWithOptions *a2, const OZRenderParams *a3, PMFrameRequest *a4)
{
  v7 = (*(*this + 128))(this);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  Node = OZScene::getNode(v7, ValueAsUint);
  if (!Node)
  {
    return 0;
  }

  v10 = Node;
  v16 = 0uLL;
  v17 = 0;
  v13[0] = *a3;
  OZChannelImageWithOptions::getFrame(a2, v13, &v16);
  OZRenderParams::OZRenderParams(v13, a3);
  *&v13[0].value = v16;
  v14 = 0;
  v15 = 0;
  v13[0].epoch = v17;
  v11 = (*(*v10 + 120))(v10, v13, a4);
  OZRenderParams::~OZRenderParams(v13);
  return v11;
}

uint64_t TXTextStyle::prerollEnd(TXTextStyle *this, const OZRenderParams *a2, PMFrameRequest *a3)
{
  TXTextStyle::prerollEndForNode(this, (this + 8560), a2, a3);
  TXTextStyle::prerollEndForNode(this, (this + 25232), a2, a3);
  TXTextStyle::prerollEndForNode(this, (this + 33680), a2, a3);
  TXTextStyle::prerollEndForNode(this, (this + 16448), a2, a3);
  return 0;
}

uint64_t TXTextStyle::setRateForNode(TXTextStyle *this, OZChannelImageWithOptions *a2, const OZRenderParams *a3, PMFrameRequest *a4, double a5)
{
  v9 = (*(*this + 128))(this);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  Node = OZScene::getNode(v9, ValueAsUint);
  if (!Node)
  {
    return 0;
  }

  v12 = Node;
  v18 = 0uLL;
  v19 = 0;
  v15[0] = *a3;
  OZChannelImageWithOptions::getFrame(a2, v15, &v18);
  OZRenderParams::OZRenderParams(v15, a3);
  *&v15[0].value = v18;
  v16 = 0;
  v17 = 0;
  v15[0].epoch = v19;
  v13 = (*(*v12 + 128))(v12, v15, a4, a5);
  OZRenderParams::~OZRenderParams(v15);
  return v13;
}

uint64_t TXTextStyle::setRate(TXTextStyle *this, const OZRenderParams *a2, PMFrameRequest *a3, double a4)
{
  TXTextStyle::setRateForNode(this, (this + 8560), a2, a3, a4);
  TXTextStyle::setRateForNode(this, (this + 25232), a2, a3, a4);
  TXTextStyle::setRateForNode(this, (this + 33680), a2, a3, a4);
  TXTextStyle::setRateForNode(this, (this + 16448), a2, a3, a4);
  return 0;
}

uint64_t TXTextStyle::scheduleTokensForNode(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(*a1 + 128))(a1);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  Node = OZScene::getNode(v11, ValueAsUint);
  if (!Node)
  {
    return 0;
  }

  v14 = Node;
  v32 = a5;
  v33 = a6;
  v43 = 0uLL;
  v44 = 0;
  v40 = *a3;
  OZChannelImageWithOptions::getFrame(a2, &v40, &v43);
  OZRenderParams::OZRenderParams(&v40, a3);
  *&v40.value = v43;
  v41 = 0;
  v42 = 0;
  v40.epoch = v44;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(&v37, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
  v16 = v37;
  v15 = v38;
  if (v38 != v37)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = v16 + 48 * v17;
      v20 = *(v19 + 24);
      v21 = *(v19 + 32);
      v22 = (v19 + 24);
      if (v21 != v20)
      {
        v23 = 0;
        v24 = 1;
        do
        {
          v25 = (v20 + 24 * v23);
          v26 = *v25;
          v36.epoch = *(v25 + 2);
          *&v36.value = v26;
          v34 = 0uLL;
          v35 = 0;
          OZChannelImageWithOptions::getFrame(a2, &v36, &v34);
          v27 = *(v37 + 48 * v17 + 24) + 24 * v23;
          v28 = v34;
          *(v27 + 16) = v35;
          *v27 = v28;
          v23 = v24;
          v20 = *v22;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v22[1] - *v22) >> 3) > v24++);
        v16 = v37;
        v15 = v38;
      }

      v17 = ++v18;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 4) > v18);
  }

  v30 = (*(*v14 + 136))(v14, &v40, &v37, v32, v33);
  v36.value = &v37;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v36);
  OZRenderParams::~OZRenderParams(&v40);
  return v30;
}

void sub_25FB3BBA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(v8, va1);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](va);
  OZRenderParams::~OZRenderParams(va2);
  _Unwind_Resume(a1);
}

uint64_t TXTextStyle::scheduleTokens(uint64_t a1, CMTime *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  TXTextStyle::scheduleTokensForNode(a1, a1 + 8560, a2, a3, a4, a5);
  TXTextStyle::scheduleTokensForNode(a1, a1 + 25232, a2, a3, a4, a5);
  TXTextStyle::scheduleTokensForNode(a1, a1 + 33680, a2, a3, a4, a5);
  TXTextStyle::scheduleTokensForNode(a1, a1 + 16448, a2, a3, a4, a5);
  return 0;
}

uint64_t TXTextStyle::hintTokensWillImageForNode(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t *a4, uint64_t a5)
{
  v9 = (*(*a1 + 128))(a1);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  Node = OZScene::getNode(v9, ValueAsUint);
  if (!Node)
  {
    return 0;
  }

  v12 = Node;
  v30 = a5;
  v40 = 0uLL;
  v41 = 0;
  v37 = *a3;
  OZChannelImageWithOptions::getFrame(a2, &v37, &v40);
  OZRenderParams::OZRenderParams(&v37, a3);
  *&v37.value = v40;
  v38 = 0;
  v39 = 0;
  v37.epoch = v41;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(&v34, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
  v14 = v34;
  v13 = v35;
  if (v35 != v34)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v14 + 48 * v15;
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = (v17 + 24);
      if (v19 != v18)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          v23 = (v18 + 24 * v21);
          v24 = *v23;
          v33.epoch = *(v23 + 2);
          *&v33.value = v24;
          v31 = 0uLL;
          v32 = 0;
          OZChannelImageWithOptions::getFrame(a2, &v33, &v31);
          v25 = *(v34 + 48 * v15 + 24) + 24 * v21;
          v26 = v31;
          *(v25 + 16) = v32;
          *v25 = v26;
          v21 = v22;
          v18 = *v20;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v20[1] - *v20) >> 3) > v22++);
        v14 = v34;
        v13 = v35;
      }

      v15 = ++v16;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 4) > v16);
  }

  v28 = (*(*v12 + 144))(v12, &v37, &v34, v30);
  v33.value = &v34;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v33);
  OZRenderParams::~OZRenderParams(&v37);
  return v28;
}

void sub_25FB3BED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(v6, va1);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](va);
  OZRenderParams::~OZRenderParams(va2);
  _Unwind_Resume(a1);
}

uint64_t TXTextStyle::hintTokensWillImage(uint64_t a1, CMTime *a2, uint64_t *a3, uint64_t a4)
{
  TXTextStyle::hintTokensWillImageForNode(a1, a1 + 8560, a2, a3, a4);
  TXTextStyle::hintTokensWillImageForNode(a1, a1 + 25232, a2, a3, a4);
  TXTextStyle::hintTokensWillImageForNode(a1, a1 + 33680, a2, a3, a4);
  TXTextStyle::hintTokensWillImageForNode(a1, a1 + 16448, a2, a3, a4);
  return 0;
}

uint64_t TXTextStyle::getTokensImageForNode(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t *a4, uint64_t a5)
{
  v9 = (*(*a1 + 128))(a1);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  Node = OZScene::getNode(v9, ValueAsUint);
  if (!Node)
  {
    return 0;
  }

  v12 = Node;
  v30 = a5;
  v40 = 0uLL;
  v41 = 0;
  v37 = *a3;
  OZChannelImageWithOptions::getFrame(a2, &v37, &v40);
  OZRenderParams::OZRenderParams(&v37, a3);
  *&v37.value = v40;
  v38 = 0;
  v39 = 0;
  v37.epoch = v41;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__init_with_size[abi:ne200100]<std::pair<CMTime,std::vector<CMTime>>*,std::pair<CMTime,std::vector<CMTime>>*>(&v34, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 4));
  v14 = v34;
  v13 = v35;
  if (v35 != v34)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = v14 + 48 * v15;
      v18 = *(v17 + 24);
      v19 = *(v17 + 32);
      v20 = (v17 + 24);
      if (v19 != v18)
      {
        v21 = 0;
        v22 = 1;
        do
        {
          v23 = (v18 + 24 * v21);
          v24 = *v23;
          v33.epoch = *(v23 + 2);
          *&v33.value = v24;
          v31 = 0uLL;
          v32 = 0;
          OZChannelImageWithOptions::getFrame(a2, &v33, &v31);
          v25 = *(v34 + 48 * v15 + 24) + 24 * v21;
          v26 = v31;
          *(v25 + 16) = v32;
          *v25 = v26;
          v21 = v22;
          v18 = *v20;
        }

        while (0xAAAAAAAAAAAAAAABLL * ((v20[1] - *v20) >> 3) > v22++);
        v14 = v34;
        v13 = v35;
      }

      v15 = ++v16;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v13 - v14) >> 4) > v16);
  }

  v28 = (*(*v12 + 152))(v12, &v37, &v34, v30);
  v33.value = &v34;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](&v33);
  OZRenderParams::~OZRenderParams(&v37);
  return v28;
}

void sub_25FB3C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(v6, va1);
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100](va);
  OZRenderParams::~OZRenderParams(va2);
  _Unwind_Resume(a1);
}

uint64_t TXTextStyle::getTokensImage(uint64_t a1, CMTime *a2, uint64_t *a3, uint64_t a4)
{
  TXTextStyle::getTokensImageForNode(a1, a1 + 8560, a2, a3, a4);
  TXTextStyle::getTokensImageForNode(a1, a1 + 25232, a2, a3, a4);
  TXTextStyle::getTokensImageForNode(a1, a1 + 33680, a2, a3, a4);
  TXTextStyle::getTokensImageForNode(a1, a1 + 16448, a2, a3, a4);
  return 0;
}

void *TXTextStyle::pruneTokensAtTimeForNode(TXTextStyle *this, OZChannelImageWithOptions *a2, CMTime *a3, const char *a4)
{
  v7 = (*(*this + 128))(this);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  result = OZScene::getNode(v7, ValueAsUint);
  if (result)
  {
    v10 = *&a3->value;
    epoch = a3->epoch;
    return (*(*result + 160))(result, &v10, a4);
  }

  return result;
}

void *TXTextStyle::pruneTokensAtTime(TXTextStyle *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  TXTextStyle::pruneTokensAtTimeForNode(this, (this + 8560), &v7, a3);
  v7 = *a2;
  TXTextStyle::pruneTokensAtTimeForNode(this, (this + 25232), &v7, a3);
  v7 = *a2;
  TXTextStyle::pruneTokensAtTimeForNode(this, (this + 33680), &v7, a3);
  v7 = *a2;
  return TXTextStyle::pruneTokensAtTimeForNode(this, (this + 16448), &v7, a3);
}

void *TXTextStyle::pruneTokensExceptAtTimeForNode(TXTextStyle *this, OZChannelImageWithOptions *a2, CMTime *a3, const char *a4)
{
  v7 = (*(*this + 128))(this);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  result = OZScene::getNode(v7, ValueAsUint);
  if (result)
  {
    v10 = *&a3->value;
    epoch = a3->epoch;
    return (*(*result + 168))(result, &v10, a4);
  }

  return result;
}

void *TXTextStyle::pruneTokensExceptAtTime(TXTextStyle *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  TXTextStyle::pruneTokensExceptAtTimeForNode(this, (this + 8560), &v7, a3);
  v7 = *a2;
  TXTextStyle::pruneTokensExceptAtTimeForNode(this, (this + 25232), &v7, a3);
  v7 = *a2;
  TXTextStyle::pruneTokensExceptAtTimeForNode(this, (this + 33680), &v7, a3);
  v7 = *a2;
  return TXTextStyle::pruneTokensExceptAtTimeForNode(this, (this + 16448), &v7, a3);
}

void *TXTextStyle::pruneAllTokensForNode(TXTextStyle *this, OZChannelImageWithOptions *a2, const char *a3)
{
  v4 = (*(*this + 128))(this);
  ValueAsUint = OZChannel::getValueAsUint((a2 + 136), MEMORY[0x277CC08F0], 0.0);
  result = OZScene::getNode(v4, ValueAsUint);
  if (result)
  {
    v7 = *(*result + 176);

    return v7();
  }

  return result;
}

void *TXTextStyle::pruneAllTokens(TXTextStyle *this, const char *a2)
{
  TXTextStyle::pruneAllTokensForNode(this, (this + 8560), a2);
  TXTextStyle::pruneAllTokensForNode(this, (this + 25232), a2);
  TXTextStyle::pruneAllTokensForNode(this, (this + 33680), a2);

  return TXTextStyle::pruneAllTokensForNode(this, (this + 16448), a2);
}

uint64_t TXTextStyle::TXTextStyle_sizeInfo::getInstance(TXTextStyle::TXTextStyle_sizeInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_sizeInfo::getInstance(void)::TXTextStyle_sizeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_sizeInfo::getInstance(void)::TXTextStyle_sizeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_sizeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_sizeInfo::_TXTextStyle_sizeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_sizeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_sizeInfo::_TXTextStyle_sizeInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_sizeInfo *TXTextStyle::TXTextStyle_sizeInfo::TXTextStyle_sizeInfo(TXTextStyle::TXTextStyle_sizeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 6.0, 288.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6658;
  *(this + 10) = &unk_2871F6678;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_oldTrackingInfo::getInstance(TXTextStyle::TXTextStyle_oldTrackingInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_oldTrackingInfo::getInstance(void)::TXTextStyle_oldTrackingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_oldTrackingInfo::getInstance(void)::TXTextStyle_oldTrackingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_oldTrackingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_oldTrackingInfo::_TXTextStyle_oldTrackingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_oldTrackingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_oldTrackingInfo::_TXTextStyle_oldTrackingInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_oldTrackingInfo *TXTextStyle::TXTextStyle_oldTrackingInfo::TXTextStyle_oldTrackingInfo(TXTextStyle::TXTextStyle_oldTrackingInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -10.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F66D0;
  *(this + 10) = &unk_2871F66F0;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_kerningImpl::getInstance(TXTextStyle::TXTextStyle_kerningImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_kerningImpl::getInstance(void)::TXTextStyle_kerningImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_kerningImpl::getInstance(void)::TXTextStyle_kerningImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_kerningImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_kerningImpl::_TXTextStyle_kerning;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_kerningImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_kerningImpl::_TXTextStyle_kerning)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_kerningInfo::getInstance(TXTextStyle::TXTextStyle_kerningInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_kerningInfo::getInstance(void)::TXTextStyle_kerningInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_kerningInfo::getInstance(void)::TXTextStyle_kerningInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_kerningInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_kerningInfo::_TXTextStyle_kerningInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_kerningInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_kerningInfo::_TXTextStyle_kerningInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_kerningInfo *TXTextStyle::TXTextStyle_kerningInfo::TXTextStyle_kerningInfo(TXTextStyle::TXTextStyle_kerningInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -100.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F67C0;
  *(this + 10) = &unk_2871F67E0;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_baselineInfo::getInstance(TXTextStyle::TXTextStyle_baselineInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_baselineInfo::getInstance(void)::TXTextStyle_baselineInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_baselineInfo::getInstance(void)::TXTextStyle_baselineInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_baselineInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_baselineInfo::_TXTextStyle_baselineInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_baselineInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_baselineInfo::_TXTextStyle_baselineInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_baselineInfo *TXTextStyle::TXTextStyle_baselineInfo::TXTextStyle_baselineInfo(TXTextStyle::TXTextStyle_baselineInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -100.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6838;
  *(this + 10) = &unk_2871F6858;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_slantImpl::getInstance(TXTextStyle::TXTextStyle_slantImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_slantImpl::getInstance(void)::TXTextStyle_slantImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_slantImpl::getInstance(void)::TXTextStyle_slantImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_slantImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_slantImpl::_TXTextStyle_slant;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_slantImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_slantImpl::_TXTextStyle_slant)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_slantInfo::getInstance(TXTextStyle::TXTextStyle_slantInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_slantInfo::getInstance(void)::TXTextStyle_slantInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_slantInfo::getInstance(void)::TXTextStyle_slantInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_slantInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_slantInfo::_TXTextStyle_slantInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_slantInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_slantInfo::_TXTextStyle_slantInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_slantInfo *TXTextStyle::TXTextStyle_slantInfo::TXTextStyle_slantInfo(TXTextStyle::TXTextStyle_slantInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -60.0, 60.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6928;
  *(this + 10) = &unk_2871F6948;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_allCapsSizeImpl::getInstance(TXTextStyle::TXTextStyle_allCapsSizeImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_allCapsSizeImpl::getInstance(void)::TXTextStyle_allCapsSizeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_allCapsSizeImpl::getInstance(void)::TXTextStyle_allCapsSizeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_allCapsSizeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_allCapsSizeImpl::_TXTextStyle_allCapsSize;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_allCapsSizeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_allCapsSizeImpl::_TXTextStyle_allCapsSize)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_faceBlurImpl::getInstance(TXTextStyle::TXTextStyle_faceBlurImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_faceBlurImpl::getInstance(void)::TXTextStyle_faceBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_faceBlurImpl::getInstance(void)::TXTextStyle_faceBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_faceBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_faceBlurImpl::_TXTextStyle_faceBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_faceBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_faceBlurImpl::_TXTextStyle_faceBlur)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_faceBlurInfo::getInstance(TXTextStyle::TXTextStyle_faceBlurInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_faceBlurInfo::getInstance(void)::TXTextStyle_faceBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_faceBlurInfo::getInstance(void)::TXTextStyle_faceBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_faceBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_faceBlurInfo::_TXTextStyle_faceBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_faceBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_faceBlurInfo::_TXTextStyle_faceBlurInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_faceBlurInfo *TXTextStyle::TXTextStyle_faceBlurInfo::TXTextStyle_faceBlurInfo(TXTextStyle::TXTextStyle_faceBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6A90;
  *(this + 10) = &unk_2871F6AB0;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_dropShadowOpacityImpl::getInstance(TXTextStyle::TXTextStyle_dropShadowOpacityImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_dropShadowOpacityImpl::getInstance(void)::TXTextStyle_dropShadowOpacityImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_dropShadowOpacityImpl::getInstance(void)::TXTextStyle_dropShadowOpacityImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowOpacityImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_dropShadowOpacityImpl::_TXTextStyle_dropShadowOpacity;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowOpacityImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_dropShadowOpacityImpl::_TXTextStyle_dropShadowOpacity)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_dropShadowBlurImpl::getInstance(TXTextStyle::TXTextStyle_dropShadowBlurImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_dropShadowBlurImpl::getInstance(void)::TXTextStyle_dropShadowBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_dropShadowBlurImpl::getInstance(void)::TXTextStyle_dropShadowBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_dropShadowBlurImpl::_TXTextStyle_dropShadowBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_dropShadowBlurImpl::_TXTextStyle_dropShadowBlur)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_dropShadowBlurInfo::getInstance(TXTextStyle::TXTextStyle_dropShadowBlurInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_dropShadowBlurInfo::getInstance(void)::TXTextStyle_dropShadowBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_dropShadowBlurInfo::getInstance(void)::TXTextStyle_dropShadowBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_dropShadowBlurInfo::_TXTextStyle_dropShadowBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_dropShadowBlurInfo::_TXTextStyle_dropShadowBlurInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_dropShadowBlurInfo *TXTextStyle::TXTextStyle_dropShadowBlurInfo::TXTextStyle_dropShadowBlurInfo(TXTextStyle::TXTextStyle_dropShadowBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6BF8;
  *(this + 10) = &unk_2871F6C18;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_dropShadowDistanceImpl::getInstance(TXTextStyle::TXTextStyle_dropShadowDistanceImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_dropShadowDistanceImpl::getInstance(void)::TXTextStyle_dropShadowDistanceImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_dropShadowDistanceImpl::getInstance(void)::TXTextStyle_dropShadowDistanceImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowDistanceImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_dropShadowDistanceImpl::_TXTextStyle_dropShadowDistance;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowDistanceImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_dropShadowDistanceImpl::_TXTextStyle_dropShadowDistance)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_dropShadowDistanceInfo::getInstance(TXTextStyle::TXTextStyle_dropShadowDistanceInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_dropShadowDistanceInfo::getInstance(void)::TXTextStyle_dropShadowDistanceInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_dropShadowDistanceInfo::getInstance(void)::TXTextStyle_dropShadowDistanceInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowDistanceInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_dropShadowDistanceInfo::_TXTextStyle_dropShadowDistanceInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowDistanceInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_dropShadowDistanceInfo::_TXTextStyle_dropShadowDistanceInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_dropShadowDistanceInfo *TXTextStyle::TXTextStyle_dropShadowDistanceInfo::TXTextStyle_dropShadowDistanceInfo(TXTextStyle::TXTextStyle_dropShadowDistanceInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6CE8;
  *(this + 10) = &unk_2871F6D08;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_dropShadowAngleImpl::getInstance(TXTextStyle::TXTextStyle_dropShadowAngleImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_dropShadowAngleImpl::getInstance(void)::TXTextStyle_dropShadowAngleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_dropShadowAngleImpl::getInstance(void)::TXTextStyle_dropShadowAngleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowAngleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_dropShadowAngleImpl::_TXTextStyle_dropShadowAngle;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_dropShadowAngleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_dropShadowAngleImpl::_TXTextStyle_dropShadowAngle)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_outlineBlurImpl::getInstance(TXTextStyle::TXTextStyle_outlineBlurImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_outlineBlurImpl::getInstance(void)::TXTextStyle_outlineBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_outlineBlurImpl::getInstance(void)::TXTextStyle_outlineBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_outlineBlurImpl::_TXTextStyle_outlineBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_outlineBlurImpl::_TXTextStyle_outlineBlur)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_outlineBlurInfo::getInstance(TXTextStyle::TXTextStyle_outlineBlurInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_outlineBlurInfo::getInstance(void)::TXTextStyle_outlineBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_outlineBlurInfo::getInstance(void)::TXTextStyle_outlineBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_outlineBlurInfo::_TXTextStyle_outlineBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_outlineBlurInfo::_TXTextStyle_outlineBlurInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_outlineBlurInfo *TXTextStyle::TXTextStyle_outlineBlurInfo::TXTextStyle_outlineBlurInfo(TXTextStyle::TXTextStyle_outlineBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6E50;
  *(this + 10) = &unk_2871F6E70;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_outlineWidthImpl::getInstance(TXTextStyle::TXTextStyle_outlineWidthImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_outlineWidthImpl::getInstance(void)::TXTextStyle_outlineWidthImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_outlineWidthImpl::getInstance(void)::TXTextStyle_outlineWidthImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineWidthImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_outlineWidthImpl::_TXTextStyle_outlineWidth;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineWidthImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_outlineWidthImpl::_TXTextStyle_outlineWidth)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_outlineWidthInfo::getInstance(TXTextStyle::TXTextStyle_outlineWidthInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_outlineWidthInfo::getInstance(void)::TXTextStyle_outlineWidthInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_outlineWidthInfo::getInstance(void)::TXTextStyle_outlineWidthInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineWidthInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_outlineWidthInfo::_TXTextStyle_outlineWidthInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_outlineWidthInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_outlineWidthInfo::_TXTextStyle_outlineWidthInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_outlineWidthInfo *TXTextStyle::TXTextStyle_outlineWidthInfo::TXTextStyle_outlineWidthInfo(TXTextStyle::TXTextStyle_outlineWidthInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 15.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F6F40;
  *(this + 10) = &unk_2871F6F60;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_glowBlurImpl::getInstance(TXTextStyle::TXTextStyle_glowBlurImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_glowBlurImpl::getInstance(void)::TXTextStyle_glowBlurImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_glowBlurImpl::getInstance(void)::TXTextStyle_glowBlurImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_glowBlurImpl::_TXTextStyle_glowBlur;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowBlurImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_glowBlurImpl::_TXTextStyle_glowBlur)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_glowBlurInfo::getInstance(TXTextStyle::TXTextStyle_glowBlurInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_glowBlurInfo::getInstance(void)::TXTextStyle_glowBlurInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_glowBlurInfo::getInstance(void)::TXTextStyle_glowBlurInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_glowBlurInfo::_TXTextStyle_glowBlurInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowBlurInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_glowBlurInfo::_TXTextStyle_glowBlurInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_glowBlurInfo *TXTextStyle::TXTextStyle_glowBlurInfo::TXTextStyle_glowBlurInfo(TXTextStyle::TXTextStyle_glowBlurInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F7030;
  *(this + 10) = &unk_2871F7050;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_glowRadiusImpl::getInstance(TXTextStyle::TXTextStyle_glowRadiusImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_glowRadiusImpl::getInstance(void)::TXTextStyle_glowRadiusImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_glowRadiusImpl::getInstance(void)::TXTextStyle_glowRadiusImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowRadiusImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_glowRadiusImpl::_TXTextStyle_glowRadius;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowRadiusImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_glowRadiusImpl::_TXTextStyle_glowRadius)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_glowRadiusInfo::getInstance(TXTextStyle::TXTextStyle_glowRadiusInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_glowRadiusInfo::getInstance(void)::TXTextStyle_glowRadiusInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_glowRadiusInfo::getInstance(void)::TXTextStyle_glowRadiusInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowRadiusInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_glowRadiusInfo::_TXTextStyle_glowRadiusInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_glowRadiusInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_glowRadiusInfo::_TXTextStyle_glowRadiusInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_glowRadiusInfo *TXTextStyle::TXTextStyle_glowRadiusInfo::TXTextStyle_glowRadiusInfo(TXTextStyle::TXTextStyle_glowRadiusInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F7120;
  *(this + 10) = &unk_2871F7140;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_trackingImpl::getInstance(TXTextStyle::TXTextStyle_trackingImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_trackingImpl::getInstance(void)::TXTextStyle_trackingImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_trackingImpl::getInstance(void)::TXTextStyle_trackingImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_trackingImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_trackingImpl::_TXTextStyle_tracking;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_trackingImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_trackingImpl::_TXTextStyle_tracking)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_trackingInfo::getInstance(TXTextStyle::TXTextStyle_trackingInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_trackingInfo::getInstance(void)::TXTextStyle_trackingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_trackingInfo::getInstance(void)::TXTextStyle_trackingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_trackingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_trackingInfo::_TXTextStyle_trackingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_trackingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_trackingInfo::_TXTextStyle_trackingInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_trackingInfo *TXTextStyle::TXTextStyle_trackingInfo::TXTextStyle_trackingInfo(TXTextStyle::TXTextStyle_trackingInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F7210;
  *(this + 10) = &unk_2871F7230;
  return this;
}

uint64_t TXTextStyle::TXTextStyle_V4TrackingImpl::getInstance(TXTextStyle::TXTextStyle_V4TrackingImpl *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_V4TrackingImpl::getInstance(void)::TXTextStyle_V4TrackingImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_V4TrackingImpl::getInstance(void)::TXTextStyle_V4TrackingImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_V4TrackingImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_V4TrackingImpl::_TXTextStyle_V4Tracking;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_V4TrackingImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_V4TrackingImpl::_TXTextStyle_V4Tracking)
  {
    operator new();
  }
}

uint64_t TXTextStyle::TXTextStyle_V4TrackingInfo::getInstance(TXTextStyle::TXTextStyle_V4TrackingInfo *this)
{
  if (atomic_load_explicit(&TXTextStyle::TXTextStyle_V4TrackingInfo::getInstance(void)::TXTextStyle_V4TrackingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXTextStyle::TXTextStyle_V4TrackingInfo::getInstance(void)::TXTextStyle_V4TrackingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_V4TrackingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXTextStyle::TXTextStyle_V4TrackingInfo::_TXTextStyle_V4TrackingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXTextStyle::TXTextStyle_V4TrackingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXTextStyle::TXTextStyle_V4TrackingInfo::_TXTextStyle_V4TrackingInfo)
  {
    operator new();
  }
}

TXTextStyle::TXTextStyle_V4TrackingInfo *TXTextStyle::TXTextStyle_V4TrackingInfo::TXTextStyle_V4TrackingInfo(TXTextStyle::TXTextStyle_V4TrackingInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, -1.0, 1.0, 0.01, 0.0001, 100.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871F7300;
  *(this + 10) = &unk_2871F7320;
  return this;
}

void OZChannelImageWithOptions::~OZChannelImageWithOptions(OZChannelImageWithOptions *this)
{
  *this = &unk_2872AF1E0;
  *(this + 2) = &unk_2872AF538;
  OZChannelEnum::~OZChannelEnum((this + 1328));
  OZChannelPosition::~OZChannelPosition((this + 624));
  OZChannelBool::~OZChannelBool((this + 472));
  OZChannel::~OZChannel((this + 320));
  OZChannelImageForImageWithOptions::~OZChannelImageForImageWithOptions((this + 136));

  OZCompoundChannel::~OZCompoundChannel(this);
}

{
  OZChannelImageWithOptions::~OZChannelImageWithOptions(this);

  JUMPOUT(0x2666E9F00);
}

void OZChannelFontBase::~OZChannelFontBase(PCString *this)
{
  this->var0 = &unk_2872B4868;
  this[2].var0 = &unk_2872B4BD8;
  PCString::~PCString(this + 82);
  PCString::~PCString(this + 81);
  OZChannelEnum::~OZChannelEnum(&this[49]);
  OZChannelEnum::~OZChannelEnum(&this[17]);

  OZCompoundChannel::~OZCompoundChannel(this);
}

void OZLayeredMaterial_Factory::OZLayeredMaterial_Factory(OZLayeredMaterial_Factory *this)
{
  v3 = xmmword_260348A20;
  v4 = xmmword_260348A10;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 0);
  *v2 = &unk_2871F74A8;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871F7378;
  *(this + 16) = &unk_2871F7450;
}

void OZLayeredMaterial_Factory::createMaterialCopy(OZLayeredMaterial_Factory *this, OZMaterialBase *a2)
{
  operator new();
}

{
  operator new();
}

void *std::shared_ptr<OZStyle>::shared_ptr[abi:ne200100]<OZStyle,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

uint64_t TXTextStyleManager::getInstance(TXTextStyleManager *this)
{
  if (TXTextStyleManager::getInstance(void)::once != -1)
  {
    TXTextStyleManager::getInstance();
  }

  return TXTextStyleManager::_instance;
}

void TXTextStyleManager::TXTextStyleManager(TXTextStyleManager *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v1 = &unk_2871F7598;
  v2 = v1 + 1;
  PCURL::PCURL(&v4, @"Text Style Name");
  OZChannelBase::getNextUniqueID(v3);
  TXTextStyle::create(v2);
}

void sub_25FB3FEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  v12 = *(v10 + 2);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  PCSingleton::~PCSingleton(v10);
  _Unwind_Resume(a1);
}

void TXTextStyleManager::~TXTextStyleManager(TXTextStyleManager *this)
{
  *this = &unk_2871F7598;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PCSingleton::~PCSingleton(this);
}

{
  *this = &unk_2871F7598;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  PCSingleton::~PCSingleton(this);

  JUMPOUT(0x2666E9F00);
}

void *TXTextStyleRun::TXTextStyleRun(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_2871F75D0;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = 0;
  return result;
}

double TXTextStyleRun::TXTextStyleRun(void *a1, uint64_t *a2, double *a3)
{
  v4 = *a2;
  v3 = a2[1];
  *a1 = &unk_2871F75D0;
  a1[1] = v4;
  a1[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  result = *a3;
  a1[3] = *a3;
  return result;
}

uint64_t TXTextStyleRun::TXTextStyleRun(uint64_t result, uint64_t *a2, int a3, int a4)
{
  v5 = *a2;
  v4 = a2[1];
  *result = &unk_2871F75D0;
  *(result + 8) = v5;
  *(result + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = a3;
  *(result + 28) = a4;
  return result;
}

double TXTextStyleRun::TXTextStyleRun(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2871F75D0;
  result = *(a2 + 24);
  *(a1 + 24) = result;
  return result;
}

uint64_t TXTextStyleRun::writeHeader(TXTextStyleRun *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &TXStyleRunScope);
  (*(*a2 + 16))(a2, 520);
  (*(*a2 + 144))(a2, 7, *(*(this + 1) + 96));
  (*(*a2 + 144))(a2, 9, *(this + 6));
  v4 = *(this + 7);
  v5 = *(*a2 + 144);

  return v5(a2, 10, v4);
}

void TXTextStyleRun::~TXTextStyleRun(TXTextStyleRun *this)
{
  *this = &unk_2871F75D0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_2871F75D0;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2666E9F00);
}

void TXTextureGlyph::TXTextureGlyph(TXTextureGlyph *this, __int16 a2, __int16 a3, TXFont *a4)
{
  TXGlyph::TXGlyph(this, a2, a3, a4);
  *v5 = &unk_2871F7640;
  v5[4] = 0;
  v5[3] = v5 + 4;
  v5[5] = 0;
  PCSharedMutex::PCSharedMutex((v5 + 6));
  *(this + 38) = 0;
}

void sub_25FB40350(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v2, &v1->var4.var0->isa);
  OZChannelBase::setRangeName(v1, v4);
  _Unwind_Resume(a1);
}

void TXTextureGlyph::~TXTextureGlyph(TXTextureGlyph *this)
{
  *this = &unk_2871F7640;
  v2 = (this + 48);
  PCSharedMutex::lock((this + 48));
  v3 = *(this + 3);
  v4 = this + 32;
  if (v3 != this + 32)
  {
    do
    {
      v5 = *(v3 + 6);
      if (v5)
      {
        MEMORY[0x2666E9F00](v5, 0x1000C40A735B7EELL);
      }

      *(v3 + 6) = 0;
      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 24, *(this + 4));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = v4;
  PCSharedMutex::unlock(v2);
  PCSharedMutex::~PCSharedMutex(v2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 24, *(this + 4));

  OZChannelBase::setRangeName(this, v9);
}

void TXTextureGlyph::cacheMetrics(uint64_t a1, const PCHash128 *a2, uint64_t a3)
{
  PCSharedMutex::lock((a1 + 48));
  v6 = *(a1 + 152);
  if (v6 >= 0x40)
  {
    v7 = *(a1 + 24);
    if (v7 != (a1 + 32))
    {
      do
      {
        v8 = *(v7 + 14);
        if (v8 > 0x1F)
        {
          *(v7 + 14) = v8 - 32;
          v11 = v7[1];
          if (v11)
          {
            do
            {
              v10 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              v10 = v7[2];
              v12 = *v10 == v7;
              v7 = v10;
            }

            while (!v12);
          }
        }

        else
        {
          v9 = v7[6];
          if (v9)
          {
            MEMORY[0x2666E9F00](v9, 0x1000C40A735B7EELL);
          }

          v7[6] = 0;
          v10 = std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v7);
          operator delete(v7);
        }

        v7 = v10;
      }

      while (v10 != (a1 + 32));
      v6 = *(a1 + 152);
    }

    v6 -= 32;
    *(a1 + 152) = v6;
  }

  *(a1 + 152) = v6 + 1;
  v13 = std::__tree<std::__value_type<PCHash128,TXTextureGlyph::CachedMetrics>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,TXTextureGlyph::CachedMetrics>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,TXTextureGlyph::CachedMetrics>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(a1 + 24, a2);
  *(v13 + 48) = a3;
  *(v13 + 56) = v6;
  *(v13 + 60) = 0;
  PCSharedMutex::unlock((a1 + 48));
}

uint64_t TXTextureGlyph::getCachedMetrics(TXTextureGlyph *this, const PCHash128 *a2)
{
  PCSharedMutex::lock_shared((this + 48));
  v4 = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(this + 24, a2);
  if ((this + 32) == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[6];
  }

  PCSharedMutex::unlock_shared((this + 48));
  return v5;
}

uint64_t std::__tree<std::__value_type<PCHash128,TXTextureGlyph::CachedMetrics>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,TXTextureGlyph::CachedMetrics>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,TXTextureGlyph::CachedMetrics>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_25FB40BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object, PCString a15, PCString a16)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v16 + 65880));
  PCString::~PCString((v16 + v23));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v19 + 1120, *(v19 + 1128));
  v24 = *(v19 + 1096);
  if (v24)
  {
    *(v19 + 1104) = v24;
    operator delete(v24);
  }

  a16.var0 = (v16 + 0x10000);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16.var0 = (v16 + 65512);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16.var0 = (v16 + 65488);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16.var0 = (v16 + 65464);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16.var0 = (v16 + 65440);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a16);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a16);
  OZChannel::~OZChannel((v16 + v22));
  OZChannelEnum::~OZChannelEnum((v16 + v21));
  OZChannel::~OZChannel((v16 + v20));
  OZChannelEnum::~OZChannelEnum((v16 + v18));
  OZChannelFolder::~OZChannelFolder((v16 + v17));
  TXFileLoadingGenerator::~TXFileLoadingGenerator(v16);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::TXTranscriptionGenerator(TXTranscriptionGenerator *this, const TXTranscriptionGenerator *a2, uint64_t a3)
{
  v5 = this + 64464;
  TXFileLoadingGenerator::TXFileLoadingGenerator(this, a2, a3);
  *v6 = &unk_2871F76B0;
  *(v6 + 200) = &unk_2871F7C00;
  *(v6 + 216) = &unk_2871F84D8;
  *(v6 + 248) = &unk_2871F8730;
  *(v6 + 6728) = &unk_2871F8788;
  *(v6 + 18976) = &unk_2871F8860;
  *v5 = &unk_2871F8888;
  OZChannelFolder::OZChannelFolder((v6 + 64472), (a2 + 64472), (this + 648));
  OZChannelEnum::OZChannelEnum((this + 64600), (a2 + 64600), (this + 64472));
  OZChannel::OZChannel((v5 + 392), (a2 + 64856), (this + 64472));
  *(v5 + 49) = &unk_287246400;
  *(v5 + 51) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 65008), (a2 + 65008), (this + 64472));
  OZChannel::OZChannel((v5 + 800), (a2 + 65264), (this + 64472));
  *(v5 + 100) = &unk_287245C60;
  *(v5 + 102) = &unk_287245FC0;
  *(this + 8178) = 0;
  *(this + 8179) = 0;
  *(this + 8177) = 0;
  std::vector<TXTranscriptionSegment>::__init_with_size[abi:ne200100]<TXTranscriptionSegment*,TXTranscriptionSegment*>(this + 65416, *(a2 + 8177), *(a2 + 8178), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8178) - *(a2 + 8177)) >> 4));
  *(this + 4090) = 0u;
  *(this + 8182) = 0;
  std::vector<TXTranscriptionSegment>::__init_with_size[abi:ne200100]<TXTranscriptionSegment*,TXTranscriptionSegment*>(this + 65440, *(a2 + 8180), *(a2 + 8181), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8181) - *(a2 + 8180)) >> 4));
  *(this + 65480) = 0u;
  *(this + 65496) = 0u;
  *(this + 65464) = 0u;
  std::vector<TXTranscriptionSegment>::__init_with_size[abi:ne200100]<TXTranscriptionSegment*,TXTranscriptionSegment*>(this + 65488, *(a2 + 8186), *(a2 + 8187), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8187) - *(a2 + 8186)) >> 4));
  *(this + 8197) = 0;
  *(this + 65544) = 0u;
  *(this + 65560) = 0u;
  *(this + 65512) = 0u;
  *(this + 65528) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((v5 + 1096), *(a2 + 8195), *(a2 + 8196), (*(a2 + 8196) - *(a2 + 8195)) >> 2);
  *(v5 + 1128) = 0u;
  *(v5 + 140) = v5 + 1128;
  *(v5 + 286) = -1;
  v7 = MEMORY[0x277CC0898];
  v8 = *MEMORY[0x277CC0898];
  *(this + 65612) = *MEMORY[0x277CC0898];
  v9 = *(v7 + 16);
  *(this + 65628) = v9;
  *(this + 65636) = v8;
  *(this + 65652) = v9;
  PCString::PCString(this + 8208, a2 + 8208);
  v5[1208] = *(a2 + 65672);
  v5[1209] = 1;
  *(v5 + 152) = 0x3FF0000000000000;
  *(this + 65688) = *v7;
  *(this + 8213) = *(v7 + 16);
  *(v5 + 156) = 0;
  v10 = *(a2 + 65720);
  *(this + 8217) = *(a2 + 8217);
  *(this + 65720) = v10;
  *(v5 + 165) = 0;
  *(v5 + 332) = 0;
  v5[1332] = 0;
  *(this + 4109) = 0u;
  *(this + 4110) = 0u;
  *(this + 65776) = 0;
  *(this + 65800) = *v7;
  *(this + 8227) = *(v7 + 16);
  *(v5 + 340) = 0;
  PCColor::PCColor((this + 65832));
  v5[1424] = 0;
  *(this + 65896) = *v7;
  *(this + 8239) = *(v7 + 16);
  *(v5 + 364) = 0;
  v5[1472] = 0;
  *(this + 65944) = *v7;
  *(this + 8245) = *(v7 + 16);
  *(v5 + 376) = 0;
  v5[1520] = 0;
  PCSharedCount::PCSharedCount(this + 8249);
  *(this + 4125) = 0u;
  *(this + 4126) = 0u;
  v5[1568] = 1;
  *(v5 + 393) = 0;
}

void sub_25FB411F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10, uint64_t a11, OZChannel *a12, OZChannel *a13, uint64_t a14)
{
  PCCFRef<CGColorSpace *>::~PCCFRef((v14 + 65880));
  PCString::~PCString((v14 + v15));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v17 + 1120, *v16);
  v19 = *a9;
  if (*a9)
  {
    *(v17 + 1104) = v19;
    operator delete(v19);
  }

  a14 = v14 + 0x10000;
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = a10;
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a14);
  a14 = a11;
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a14);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a14);
  OZChannel::~OZChannel(a12);
  OZChannelEnum::~OZChannelEnum((v14 + 65008));
  OZChannel::~OZChannel(a13);
  OZChannelEnum::~OZChannelEnum((v14 + 64600));
  OZChannelFolder::~OZChannelFolder((v14 + 64472));
  TXFileLoadingGenerator::~TXFileLoadingGenerator(v14);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::~TXTranscriptionGenerator(TXTranscriptionGenerator *this)
{
  v2 = this + 64464;
  *this = &unk_2871F76B0;
  *(this + 25) = &unk_2871F7C00;
  *(this + 27) = &unk_2871F84D8;
  *(this + 31) = &unk_2871F8730;
  *(this + 841) = &unk_2871F8788;
  *(this + 2372) = &unk_2871F8860;
  *(this + 8058) = &unk_2871F8888;
  PCString::~PCString(this + 8249);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 8235);
  PCString::~PCString(this + 8208);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 65584, *(v2 + 141));
  v3 = *(v2 + 137);
  if (v3)
  {
    *(v2 + 138) = v3;
    operator delete(v3);
  }

  v4 = (this + 0x10000);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 65512);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 65488);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 65464);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 65440);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (this + 65416);
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v4);
  OZChannel::~OZChannel((this + 65264));
  OZChannelEnum::~OZChannelEnum((this + 65008));
  OZChannel::~OZChannel((this + 64856));
  OZChannelEnum::~OZChannelEnum((this + 64600));
  OZChannelFolder::~OZChannelFolder((this + 64472));
  TXFileLoadingGenerator::~TXFileLoadingGenerator(this);
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXTranscriptionGenerator::~TXTranscriptionGenerator(TXTranscriptionGenerator *this)
{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 200));
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 216));
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 248));
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 6728));
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 18976));
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 6728));

  JUMPOUT(0x2666E9F00);
}

{
  TXTranscriptionGenerator::~TXTranscriptionGenerator((this - 18976));

  JUMPOUT(0x2666E9F00);
}

OZNotificationManager *TXTranscriptionGenerator::notify(TXTranscriptionGenerator *this, char a2)
{
  result = TXTextLayout::notify(this, a2);
  if ((a2 & 8) != 0)
  {
    v5 = *((*(*(this + 25) + 272))(this + 200) + 1584);
    result = *(v5 + 168);
    if (result)
    {
      if (OZNotificationManager::wasChannelModified(result, (this + 65008)) || (result = *(v5 + 168)) != 0 && (result = OZNotificationManager::wasChannelModified(result, (this + 65264)), result))
      {
        v6 = *(*this + 1240);

        return v6(this);
      }
    }
  }

  return result;
}

BOOL TXTranscriptionGenerator::isEmpty(TXTranscriptionGenerator *this)
{
  v1 = *(this + 8177);
  v2 = *(this + 8178);
  if (v1 == v2)
  {
    return 1;
  }

  do
  {
    v4 = [-[__CFString stringByTrimmingCharactersInSet:](PCString::ns_str(v1) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")), "length"}] == 0;
    result = v4;
    v1 += 6;
    v4 = !v4 || v1 == v2;
  }

  while (!v4);
  return result;
}

uint64_t TXTranscriptionGenerator::hitCheck(TXTranscriptionGenerator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (TXTranscriptionGenerator::isEmpty(a1))
  {
    return a1 + 200;
  }

  return TXTextLayout::hitCheck(a1, a2, a3, a4, a5, a6);
}

uint64_t non-virtual thunk toTXTranscriptionGenerator::hitCheck(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1 - 200;
  if (TXTranscriptionGenerator::isEmpty((a1 - 200)))
  {
    return a1;
  }

  return TXTextLayout::hitCheck(v12, a2, a3, a4, a5, a6);
}

double TXTranscriptionGenerator::generateString(TXTranscriptionGenerator *this, PCString *a2, CMTime *a3)
{
  v5 = this + 65416;
  v6 = this + 60976;
  v29 = *a3;
  v7 = (this + 65688);
  time1 = *a3;
  time2 = *(this + 2737);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    v9 = *v5;
    v8 = *(v5 + 1);
    if (*v5 != v8)
    {
      v10 = 0;
      v11 = v8 - v9 - 48;
      v12 = vdupq_n_s64(v11 / 0x30);
      do
      {
        v13 = vdupq_n_s64(v10);
        v14 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_260343E00)));
        if (vuzp1_s8(vuzp1_s16(v14, *v12.i8), *v12.i8).u8[0])
        {
          v9[40] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v14, *&v12), *&v12).i8[1])
        {
          v9[88] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_260343DF0)))), *&v12).i8[2])
        {
          v9[136] = 1;
          v9[184] = 1;
        }

        v15 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_2603490E0)));
        if (vuzp1_s8(*&v12, vuzp1_s16(v15, *&v12)).i32[1])
        {
          v9[232] = 1;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v15, *&v12)).i8[5])
        {
          v9[280] = 1;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_2603490D0))))).i8[6])
        {
          v9[328] = 1;
          v9[376] = 1;
        }

        v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_2603490C0)));
        if (vuzp1_s8(vuzp1_s16(v16, *v12.i8), *v12.i8).u8[0])
        {
          v9[424] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v16, *&v12), *&v12).i8[1])
        {
          v9[472] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_2603490B0)))), *&v12).i8[2])
        {
          v9[520] = 1;
          v9[568] = 1;
        }

        v17 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_2603490A0)));
        if (vuzp1_s8(*&v12, vuzp1_s16(v17, *&v12)).i32[1])
        {
          v9[616] = 1;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(v17, *&v12)).i8[5])
        {
          v9[664] = 1;
        }

        if (vuzp1_s8(*&v12, vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v13, xmmword_260349090))))).i8[6])
        {
          v9[712] = 1;
          v9[760] = 1;
        }

        v10 += 16;
        v9 += 768;
      }

      while (((v11 / 0x30 + 16) & 0xFFFFFFFFFFFFFF0) != v10);
    }

    v19 = *(v5 + 12);
    v18 = *(v5 + 13);
    if (v19 != v18)
    {
      v20 = 0;
      v21 = v18 - v19 - 48;
      v22 = vdupq_n_s64(v21 / 0x30);
      do
      {
        v23 = vdupq_n_s64(v20);
        v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_260343E00)));
        if (vuzp1_s8(vuzp1_s16(v24, *v22.i8), *v22.i8).u8[0])
        {
          v19[40] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v24, *&v22), *&v22).i8[1])
        {
          v19[88] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_260343DF0)))), *&v22).i8[2])
        {
          v19[136] = 1;
          v19[184] = 1;
        }

        v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_2603490E0)));
        if (vuzp1_s8(*&v22, vuzp1_s16(v25, *&v22)).i32[1])
        {
          v19[232] = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(v25, *&v22)).i8[5])
        {
          v19[280] = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_2603490D0))))).i8[6])
        {
          v19[328] = 1;
          v19[376] = 1;
        }

        v26 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_2603490C0)));
        if (vuzp1_s8(vuzp1_s16(v26, *v22.i8), *v22.i8).u8[0])
        {
          v19[424] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(v26, *&v22), *&v22).i8[1])
        {
          v19[472] = 1;
        }

        if (vuzp1_s8(vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_2603490B0)))), *&v22).i8[2])
        {
          v19[520] = 1;
          v19[568] = 1;
        }

        v27 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_2603490A0)));
        if (vuzp1_s8(*&v22, vuzp1_s16(v27, *&v22)).i32[1])
        {
          v19[616] = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(v27, *&v22)).i8[5])
        {
          v19[664] = 1;
        }

        if (vuzp1_s8(*&v22, vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v23, xmmword_260349090))))).i8[6])
        {
          v19[712] = 1;
          v19[760] = 1;
        }

        v20 += 16;
        v19 += 768;
      }

      while (((v21 / 0x30 + 16) & 0xFFFFFFFFFFFFFF0) != v20);
    }

    v5[257] = 1;
    *(v6 + 2828) = 0;
  }

  if (TXTranscriptionGenerator::hasBlockSequencing(this))
  {
    if (*(v5 + 12) == *(v5 + 13))
    {
      TXTranscriptionGenerator::computeTranscriptionBlocks(this, &v29);
    }

    TXTranscriptionGenerator::computeActiveTranscriptionFromBlocks(this, &v29);
    TXTranscriptionGenerator::generateStringByBlock(this, &v29, &time1);
    PCString::set(a2, &time1);
  }

  else
  {
    TXTranscriptionGenerator::computeActiveTranscriptionFromWordSegments(this, &v29);
    TXTranscriptionGenerator::generateStringByWord(this, &time1);
    PCString::set(a2, &time1);
  }

  PCString::~PCString(&time1);
  if (v5[257] == 1)
  {
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v6 + 3256), *(v6 + 408));
    *(v6 + 407) = v6 + 3264;
    *(v6 + 204) = 0u;
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v6, *(v6 + 1));
    *v6 = v6 + 8;
    *(v6 + 2) = 0;
    *(v6 + 1) = 0;
    TXTranscriptionGenerator::invalidateTranscriptionByLineCache(this);
    *(v6 + 2828) = (*(v6 + 707) + *(v6 + 708));
    v5[257] = 0;
  }

  result = *&v29.value;
  *v7 = v29;
  return result;
}

BOOL TXTranscriptionGenerator::hasBlockSequencing(TXTranscriptionGenerator *this)
{
  v1 = *(this + 16448);
  if (!v1)
  {
    v1 = 2;
    *(this + 16448) = 2;
    v3 = this + 1200;
    v4 = *(this + 151);
    if (v4 != this + 1200)
    {
      v5 = MEMORY[0x277CC08F0];
      while (1)
      {
        v6 = *(v4 + 2);
        v7 = *(v6 + 8);
        v9 = xmmword_260347A60;
        if (OZFactory::isKindOfClass(v7, &v9))
        {
          if (OZChannel::getValueAsInt((v6 + 29056), v5, 0.0) == 1 && (*(*(v6 + 16) + 24))(v6 + 16, 1, 1) && TXSequenceBehavior::getUnitSize(v6) == 6)
          {
            break;
          }
        }

        v4 = *(v4 + 1);
        if (v4 == v3)
        {
          v1 = *(this + 16448);
          return v1 == 1;
        }
      }

      v1 = 1;
      *(this + 16448) = 1;
    }
  }

  return v1 == 1;
}

void TXTranscriptionGenerator::computeTranscriptionBlocks(TXTranscriptionGenerator *this, const CMTime *a2)
{
  v4 = this + 65416;
  time = *(this + 65720);
  Seconds = CMTimeGetSeconds(&time);
  *(v4 + 48) = -1;
  for (i = *v4; i != *(v4 + 1); i += 48)
  {
    if (*(i + 40) == 1 && *(i + 8) >= Seconds)
    {
      *(v4 + 48) = *(i + 24);
      break;
    }
  }

  LineBreaksForEntireString = TXTranscriptionGenerator::getLineBreaksForEntireString(this, a2);
  v66 = 0;
  v67 = 0;
  v65 = &unk_2871F2698;
  v9 = *(LineBreaksForEntireString + 12);
  if (v9 > 0)
  {
    v10 = 2 * v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  PCArray<unsigned long,PCArray_Traits<unsigned long>>::resize(&v65, v9, v10);
  v11 = *(LineBreaksForEntireString + 12);
  if (v11 >= 1)
  {
    v12 = *(LineBreaksForEntireString + 16);
    v13 = v67;
    do
    {
      v14 = *v12++;
      *v13++ = v14;
      --v11;
    }

    while (v11);
  }

  v15 = HIDWORD(v66);
  NumLinesInParagraphBounds = TXTextLayout::getNumLinesInParagraphBounds(this);
  __src = 0;
  v63 = 0;
  v64 = 0;
  if (v15)
  {
    v17 = NumLinesInParagraphBounds;
    v18 = 0;
    for (j = 0; j != v15; ++j)
    {
      if (j < 0 || SHIDWORD(v66) <= j)
      {
        PCArray_base::badIndex(NumLinesInParagraphBounds);
      }

      v20 = v67[j];
      NumLinesInParagraphBounds = TXTranscriptionGenerator::isPhraseBreak(this, v20);
      if (++v18 == v17)
      {
        v21 = 1;
      }

      else
      {
        v21 = NumLinesInParagraphBounds;
      }

      if (v21 == 1)
      {
        v22 = v63;
        if (v63 >= v64)
        {
          v24 = __src;
          v25 = v63 - __src;
          v26 = (v63 - __src) >> 2;
          v27 = v26 + 1;
          if ((v26 + 1) >> 62)
          {
            std::vector<double>::__throw_length_error[abi:ne200100]();
          }

          v28 = v64 - __src;
          if ((v64 - __src) >> 1 > v27)
          {
            v27 = v28 >> 1;
          }

          if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v29 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v27;
          }

          if (v29)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v29);
          }

          *(4 * v26) = v20;
          v23 = 4 * v26 + 4;
          memcpy(0, v24, v25);
          NumLinesInParagraphBounds = __src;
          __src = 0;
          v63 = v23;
          v64 = 0;
          if (NumLinesInParagraphBounds)
          {
            operator delete(NumLinesInParagraphBounds);
          }
        }

        else
        {
          *v63 = v20;
          v23 = (v22 + 4);
        }

        v18 = 0;
        v63 = v23;
      }
    }
  }

  PCSharedCount::PCSharedCount(&time);
  v59 = 0u;
  *&time.timescale = 0u;
  v60 = 1;
  v61 = 0;
  v54 = (*(*this + 216))(this);
  v30 = v54;
  if (v63 != __src)
  {
    v30 = *__src;
  }

  v31 = *v4;
  v53 = *(v4 + 1);
  if (*v4 != v53)
  {
    v32 = 0;
    LODWORD(v33) = 0;
    v34 = 1;
    v35 = 1;
    do
    {
      if (*(v31 + 8) >= Seconds)
      {
        if (v34)
        {
          *&time.timescale = *(v31 + 8);
        }

        v36 = PCString::ns_str(v31);
        v37 = v36;
        if (v35)
        {
          v38 = [(__CFString *)v36 stringByTrimmingLeadingWhitespace];
          v39 = [(__CFString *)v37 length];
          v32 += v39 - [(__CFString *)v38 length];
        }

        else
        {
          v38 = v36;
        }

        v57.var0 = 0;
        PCString::set(&v57, v38);
        v41 = *(v31 + 8);
        v40 = *(v31 + 16);
        v42 = *&time.timescale;
        v43 = *&time.epoch;
        v44 = PCString::size(&v57);
        if (v44 >= 1)
        {
          v45 = 0;
          v46 = v41 + v40 - (v42 + v43);
          do
          {
            v47 = PCString::size(&v57);
            if (v47 + v32 <= v30)
            {
              PCString::append(&time, &v57);
              *&time.epoch = v46 + *&time.epoch;
              *(&v59 + 1) += v47;
              v45 += v47;
              v32 += v47;
            }

            else
            {
              v48 = v30 - v32;
              if (v30 <= v32)
              {
                v46 = *(v31 + 16);
              }

              else
              {
                PCString::substr(&v57, 0, v30 - v32, &v56.var0);
                PCString::append(&time, &v56);
                *(&v59 + 1) += v48;
                v49 = *&time.timescale + *&time.epoch;
                v50 = (*(v31 + 8) + *(v31 + 16) - (*&time.timescale + *&time.epoch)) * (v48 / *(v31 + 32));
                *&time.epoch = *&time.epoch + v50;
                PCString::substr(&v57, v30 - v32, v47 - v48, &v55.var0);
                PCString::set(&v57, &v55);
                PCString::~PCString(&v55);
                v41 = v49 + v50;
                v46 = v46 - v50;
                v45 += v48;
                PCString::~PCString(&v56);
                v32 = v30;
              }

              std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 65512, &time);
              PCString::set(&time, "");
              *&time.timescale = v41;
              time.epoch = 0;
              v59 = v32;
              v33 = (v33 + 1);
              v61 = v33;
              if (v33 >= (v63 - __src) >> 2)
              {
                v30 = v54;
              }

              else
              {
                v30 = *(__src + v33);
              }
            }
          }

          while (v45 < v44);
        }

        PCString::~PCString(&v57);
        v35 = 0;
        v34 = 0;
      }

      v31 += 48;
    }

    while (v31 != v53);
  }

  std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 65512, &time);
  PCString::~PCString(&time);
  if (__src)
  {
    v63 = __src;
    operator delete(__src);
  }

  v65 = &unk_2871F2698;
  if (v66 < 0)
  {
    v51 = 1;
  }

  else
  {
    v51 = v66 & ~(v66 >> 31);
  }

  if (v51 == v66)
  {
    v52 = v67;
    if (v66 < 0)
    {
      bzero(&v67[SHIDWORD(v66)], 8 * ~HIDWORD(v66) + 8);
    }
  }

  else
  {
    if (v51)
    {
      operator new[]();
    }

    v52 = 0;
    if (v67)
    {
      MEMORY[0x2666E9ED0](v67, 0x1000C8077774924);
    }

    v67 = 0;
  }

  v66 = v51;
  if (v52)
  {
    MEMORY[0x2666E9ED0](v52, 0x1000C8077774924);
  }
}

void sub_25FB42650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12, PCString a13, PCString a14, PCString a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  PCString::~PCString(&a15);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  PCArray<unsigned long,PCArray_Traits<unsigned long>>::~PCArray(&a25);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::computeActiveTranscriptionFromBlocks(PCString *this, CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v35, v4);
  PCSharedCount::PCSharedCount(&v31);
  v5 = this + 8177;
  v33 = 0u;
  v32 = 0u;
  LOBYTE(v34) = 1;
  HIDWORD(v34) = 0;
  var0 = this[8189].var0;
  v7 = this[8190].var0;
  while (var0 != v7)
  {
    if (TXTranscriptionGenerator::isBlockActiveAtTime(this, var0, a2))
    {
      PCString::set(&v31, var0);
      v8 = *(var0 + 8);
      v9 = *(var0 + 24);
      v34 = *(var0 + 40);
      v33 = v9;
      v32 = v8;
      break;
    }

    var0 += 48;
  }

  PCString::PCString(&v27, &v31);
  v10 = PCString::empty(&v27);
  PCString::~PCString(&v27);
  if (!v10 && !TXTranscriptionSegment::operator==(&v31, &this[8249]))
  {
    v12 = this[8180].var0;
      ;
    }

    this[8181].var0 = v12;
    v27.var0 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x2020000000;
    v26 = 1;
    v13 = v5->var0;
    v14 = this[8178].var0;
    if (v5->var0 != v14)
    {
      v15 = 0;
      do
      {
        v16 = LODWORD(this[8201].var0) + v33;
        length = v13->length;
        if (v16 <= length)
        {
          v18 = v13->length;
        }

        else
        {
          v18 = LODWORD(this[8201].var0) + v33;
        }

        if (v16 + DWORD2(v33) >= LODWORD(v13[1].isa) + length)
        {
          v19 = LODWORD(v13[1].isa) + length;
        }

        else
        {
          v19 = v16 + DWORD2(v33);
        }

        if (v19 >= v18)
        {
          v20 = [(__CFString *)PCString::ns_str(v13) substringWithRange:v18 - v13->length, v19 - v18];
          v21 = [v20 length];
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = *"";
          v23[2] = ___ZN24TXTranscriptionGenerator36computeActiveTranscriptionFromBlocksERK6CMTime_block_invoke;
          v23[3] = &unk_279AA8240;
          v23[7] = this;
          v23[8] = v13;
          v24 = v15;
          v23[4] = v20;
          v23[5] = &v27;
          v23[6] = v25;
          [v20 enumerateSubstringsInRange:0 options:v21 usingBlock:{3, v23}];
        }

        ++v15;
        v13 = (v13 + 48);
      }

      while (v13 != v14);
    }

    PCString::set(this + 8249, &v31);
    v22 = v33;
    *&this[8250].var0 = v32;
    *&this[8252].var0 = v22;
    this[8254].var0 = v34;
    _Block_object_dispose(v25, 8);
    _Block_object_dispose(&v27, 8);
  }

  PCString::~PCString(&v31);
  OZLockingGroup::WriteSentry::~WriteSentry(v35);
}

void sub_25FB42994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, PCString a23, uint64_t a24, uint64_t a25, uint64_t a26, PCString a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  PCString::~PCString(&a27);
  OZLockingGroup::WriteSentry::~WriteSentry((v27 - 112));
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::generateStringByBlock(TXTranscriptionGenerator *this@<X0>, CMTime *a2@<X1>, PCSharedCount *a3@<X8>)
{
  PCSharedCount::PCSharedCount(a3);
  v10 = *(this + 65720);
  Seconds = CMTimeGetSeconds(&v10);
  v7 = *(this + 8189);
  v8 = *(this + 8190);
  if (v7 != v8)
  {
    v9 = Seconds;
    do
    {
      if (*(v7 + 8) >= v9 && TXTranscriptionGenerator::isBlockActiveAtTime(this, v7, a2))
      {
        PCString::append(a3, v7);
      }

      v7 += 48;
    }

    while (v7 != v8);
  }
}

void TXTranscriptionGenerator::computeActiveTranscriptionFromWordSegments(TXTranscriptionGenerator *this, CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v23, v4);
  time = *(this + 65720);
  Seconds = CMTimeGetSeconds(&time);
  v6 = *(this + 8181);
  v7 = *(this + 8180);
  while (v6 != v7)
  {
    PCString::~PCString((v6 - 48));
  }

  *(this + 8181) = v7;
  v8 = *(this + 8177);
  v9 = *(this + 8178);
  if (v8 != v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      if (*(v8 + 40) == 1 && *(v8 + 8) >= Seconds)
      {
        if (!TXTranscriptionGenerator::isSegmentActiveAtTime(this, v8, a2))
        {
          break;
        }

        PCString::PCString(&time, v8);
        v14 = *(v8 + 8);
        v15 = *(v8 + 24);
        v21 = *(v8 + 40);
        v20 = *(&v15 + 1);
        *&time.timescale = v14;
        v22 = v10;
        v19 = v11;
        if ((v12 & 1) != 0 && [(__CFString *)PCString::ns_str(&time) hasPrefix:@" "])
        {
          v16 = [(__CFString *)PCString::ns_str(&time) stringByTrimmingLeadingWhitespace];
          v17.var0 = 0;
          PCString::set(&v17, v16);
          PCString::set(&time, &v17);
          PCString::~PCString(&v17);
          v20 = PCString::size(&time);
        }

        std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 65440, &time);
        v11 += v20;
        PCString::~PCString(&time);
        v12 = 0;
      }

      ++v10;
      v8 += 48;
    }

    while (v8 != v9);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v23);
}

void TXTranscriptionGenerator::generateStringByWord(TXTranscriptionGenerator *this@<X0>, PCSharedCount *a2@<X8>)
{
  v4 = this + 65440;
  PCSharedCount::PCSharedCount(a2);
  v5 = *v4;
  v6 = *(v4 + 1);
  if (*v4 != v6)
  {
    v7 = 1;
    do
    {
      if ((v4[232] & 1) == 0 && (v7 & 1) == 0)
      {
        PCString::append(a2, " ");
      }

      PCString::append(a2, v5);
      v7 = [(__CFString *)PCString::ns_str(v5) hasSuffix:@"\n"];
      v5 += 6;
    }

    while (v5 != v6);
  }
}

void TXTranscriptionGenerator::invalidateTranscriptionByLineCache(TXTranscriptionGenerator *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v4, v2);
  v3 = MEMORY[0x277CC0898];
  *(this + 65612) = *MEMORY[0x277CC0898];
  *(this + 65628) = *(v3 + 16);
  OZLockingGroup::WriteSentry::~WriteSentry(v4);
}

BOOL TXTranscriptionGenerator::isSegmentActiveAtTime(TXTranscriptionGenerator *a1, uint64_t a2, CMTime *a3)
{
  v12 = *a3;
  Seconds = CMTimeGetSeconds(&v12);
  if (!TXTranscriptionGenerator::hasBlockSequencing(a1))
  {
    return *(a2 + 8) <= Seconds;
  }

  ActiveTranscriptionByBlock = TXTranscriptionGenerator::getActiveTranscriptionByBlock(a1, a3);
  if (*(a2 + 40) != 1)
  {
    return 0;
  }

  v8 = ActiveTranscriptionByBlock[1];
  if (*ActiveTranscriptionByBlock == v8)
  {
    return 0;
  }

  v9 = *(a2 + 8);
  v10 = *(v8 - 40) + *(v8 - 32);
  return vabdd_f64(v9, v10) >= 0.0000001 && v9 < v10;
}

uint64_t std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](uint64_t a1, PCString *a2)
{
  v4 = *(a1 + 8);
  if (v4 >= *(a1 + 16))
  {
    result = std::vector<TXTranscriptionSegment>::__emplace_back_slow_path<TXTranscriptionSegment const&>(a1, a2);
  }

  else
  {
    PCString::PCString(*(a1 + 8), a2);
    v5 = *&a2[1].var0;
    v6 = *&a2[3].var0;
    *(v4 + 40) = a2[5];
    *(v4 + 24) = v6;
    *(v4 + 8) = v5;
    result = v4 + 48;
    *(a1 + 8) = v4 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

BOOL TXTranscriptionGenerator::isBlockActiveAtTime(uint64_t a1, uint64_t a2, CMTime *a3)
{
  v8 = *a3;
  Seconds = CMTimeGetSeconds(&v8);
  if (*(a2 + 40) == 1)
  {
    v6 = *(a2 + 8);
    if (Seconds >= v6 && Seconds < v6 + *(a2 + 16))
    {
      return 1;
    }
  }

  if (*(a1 + 65776) == 1)
  {
    return TXTranscriptionSegment::operator==(a2, *(a1 + 65520) - 48);
  }

  return 0;
}

void ___ZN24TXTranscriptionGenerator36computeActiveTranscriptionFromBlocksERK6CMTime_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 56);
  v9 = *(a1 + 64);
  PCString::PCString(&v15, v9);
  v11 = *(v9 + 8);
  v12 = *(v9 + 24);
  v18 = *(v9 + 40);
  v17 = v12;
  v16 = v11;
  v13 = [*(a1 + 32) substringWithRange:{a5, a6}];
  v14.var0 = 0;
  PCString::set(&v14, v13);
  PCString::set(&v15, &v14);
  PCString::~PCString(&v14);
  HIDWORD(v18) = *(a1 + 72);
  *&v17 = *(*(*(a1 + 40) + 8) + 24);
  *(&v17 + 1) = [(__CFString *)v13 length];
  if (*(*(*(a1 + 48) + 8) + 24) == 1 && [(__CFString *)v13 hasPrefix:@" "])
  {
    v13 = [(__CFString *)v13 stringByTrimmingLeadingWhitespace];
    v14.var0 = 0;
    PCString::set(&v14, v13);
    PCString::set(&v15, &v14);
    PCString::~PCString(&v14);
    *(&v17 + 1) = [(__CFString *)v13 length];
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](v10 + 65440, &v15);
  *(*(*(a1 + 40) + 8) + 24) += [(__CFString *)v13 length];
  PCString::~PCString(&v15);
}

void sub_25FB43128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::dirty(TXTranscriptionGenerator *this)
{
  v1 = this + 0x10000;
  TXTextLayout::dirty(this);
  *(v1 + 26) = 0;
  *(v1 + 64) = 0;
}

void non-virtual thunk toTXTranscriptionGenerator::dirty(TXTranscriptionGenerator *this)
{
  v1 = this + 0x10000;
  TXTextLayout::dirty((this - 200));
  *(v1 + 1) = 0;
  *(v1 + 14) = 0;
}

{
  v1 = this + 65528;
  TXTextLayout::dirty((this - 216));
  *v1 = 0;
  *(v1 + 12) = 0;
}

void TXTranscriptionGenerator::loadFile(TXTranscriptionGenerator *this)
{
  v2 = this + 64448;
  v3 = *(this + 8221);
  v4 = [MEMORY[0x277CCA8D8] mainBundle];
  if (v3)
  {
    v5 = [v4 pathForResource:v3 ofType:@"lproj"];
    if (v5 || (v6 = [v3 rangeOfString:@"-"], v6 != 0x7FFFFFFFFFFFFFFFLL) && ((v13 = v6, v14 = objc_msgSend(v3, "stringByReplacingOccurrencesOfString:withString:", @"-", @"_"), (v5 = objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "pathForResource:ofType:", v14, @"lproj")) != 0) || (v15 = objc_msgSend(v14, "substringToIndex:", v13), (v5 = objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "mainBundle"), "pathForResource:ofType:", v15, @"lproj")) != 0)))
    {
      v4 = [MEMORY[0x277CCA8D8] bundleWithPath:v5];
    }

    else
    {
      v4 = [MEMORY[0x277CCA8D8] mainBundle];
    }
  }

  v7 = [v4 localizedStringForKey:@"SiriTitle_DefaultTextCapture" value:0 table:0];
  if ([(__CFString *)v7 isEqualToString:@"SiriTitle_DefaultTextCapture"])
  {

    v17 = 0;
    v18.var0 = 0;
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    PCURL::getAsFileSystemString(this + 8054, &v16);
    v7 = [v8 initWithContentsOfFile:PCString::ns_str(&v16) usedEncoding:&v18 error:&v17];
    PCString::~PCString(&v16);
    if (!v7)
    {
      return;
    }

    v2[8] = 1;
  }

  v9 = *(v2 + 122);
  v10 = *(v2 + 121);
  while (v9 != v10)
  {
    PCString::~PCString((v9 - 48));
  }

  *(v2 + 122) = v10;
  *(v2 + 140) = *(v2 + 139);
  if ([(__CFString *)v7 hasPrefix:@"#siri\n"])
  {
    TXTranscriptionGenerator::loadTranscription(this, -[__CFString substringFromIndex:](v7, "substringFromIndex:", [@"#siri\n" length]));
  }

  else
  {
    TXTranscriptionGenerator::loadText(this, v7);
  }

  PCURL::getAsFileSystemString(this + 8054, &v18);
  v11 = PCString::ns_str(&v18);
  PCString::~PCString(&v18);
  v12 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")];
  if (*v2)
  {
  }

  *v2 = [v12 fileModificationDate];
}

uint64_t TXTranscriptionGenerator::loadTranscription(TXTranscriptionGenerator *this, __CFString *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(__CFString *)a2 componentsSeparatedByString:@"|"];
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  result = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
  v5 = result;
  if (result)
  {
    v6 = *v29;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v28 + 1) + 8 * v7) componentsSeparatedByString:@" "];
        v9 = [v8 objectAtIndexedSubscript:0];
        [objc_msgSend(v8 objectAtIndexedSubscript:{1), "doubleValue"}];
        v11 = v10;
        [objc_msgSend(v8 objectAtIndexedSubscript:{2), "doubleValue"}];
        v13 = v12;
        v14 = [objc_msgSend(v8 objectAtIndexedSubscript:{3), "intValue"}];
        LODWORD(v8) = [objc_msgSend(v8 objectAtIndexedSubscript:{4), "intValue"}];
        v23.var0 = 0;
        PCString::set(&v23, v9);
        PCString::PCString(&v24, &v23);
        *&v25 = v11;
        *(&v25 + 1) = v13;
        *&v26 = v14;
        *(&v26 + 1) = v8;
        LOBYTE(v27) = 1;
        HIDWORD(v27) = 0;
        v15 = *(this + 8178);
        if (v15 >= *(this + 8179))
        {
          v18 = std::vector<TXTranscriptionSegment>::__emplace_back_slow_path<TXTranscriptionSegment const&>(this + 65416, &v24);
        }

        else
        {
          PCString::PCString(*(this + 8178), &v24);
          v16 = v25;
          v17 = v26;
          *(v15 + 40) = v27;
          *(v15 + 24) = v17;
          *(v15 + 8) = v16;
          v18 = v15 + 48;
          *(this + 8178) = v15 + 48;
        }

        *(this + 8178) = v18;
        PCString::~PCString(&v24);
        PCString::~PCString(&v23);
        v19 = ++v32;
        v20 = [v3 count];
        v21 = [(__CFString *)v9 hasSuffix:@"\n"];
        if (v20 == v19)
        {
          v22 = 1;
        }

        else
        {
          v22 = v21;
        }

        if (v22 == 1)
        {
          std::vector<int>::push_back[abi:ne200100](this + 8195, &v32);
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v3 countByEnumeratingWithState:&v28 objects:v33 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_25FB436D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  *(v12 + 3984) = v11;
  PCString::~PCString(&a11);
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::loadText(TXTranscriptionGenerator *this, __CFString *a2)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 65008), MEMORY[0x277CC08F0], 0.0);
  v5 = [(__CFString *)a2 length];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = *"";
  v6[2] = ___ZN24TXTranscriptionGenerator8loadTextEPK10__CFString_block_invoke;
  v6[3] = &unk_279AA8268;
  v7 = ValueAsInt;
  v6[4] = v11;
  v6[5] = v8;
  v6[6] = v9;
  v6[7] = this;
  v6[8] = a2;
  v6[9] = v5;
  [(__CFString *)a2 enumerateSubstringsInRange:0 options:v5 usingBlock:1027, v6];
  *(this + 32836) = 257;
  _Block_object_dispose(v8, 8);
  _Block_object_dispose(v9, 8);
  _Block_object_dispose(v11, 8);
}

void sub_25FB43838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 96), 8);
  _Block_object_dispose((v13 - 64), 8);
  _Unwind_Resume(a1);
}

void ___ZN24TXTranscriptionGenerator8loadTextEPK10__CFString_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 56);
  v10 = [*(a1 + 64) substringWithRange:{a5, a6}];
  v11 = v10;
  v12 = *(a1 + 80);
  if (v12 == 1 || v12 == 2 && [v10 hasSuffix:@"."])
  {
    v11 = [v11 stringByAppendingString:@"\n"];
  }

  OZChannel::getValueAsDouble((v9 + 65264), MEMORY[0x277CC08F0], 0.0);
  v14 = v13;
  PCURL::PCURL(&v21, v11);
  v15 = *(*(*(a1 + 32) + 8) + 24);
  v16 = *(*(*(a1 + 40) + 8) + 24);
  v17 = [v11 length];
  PCString::PCString(&v22, &v21);
  v23 = v15;
  v24 = v14;
  v25 = v16;
  v26 = v17;
  v27 = 1;
  v28 = 0;
  PCString::~PCString(&v21);
  std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](v9 + 65416, &v22);
  *(*(*(a1 + 32) + 8) + 24) = v14 + *(*(*(a1 + 32) + 8) + 24);
  *(*(*(a1 + 40) + 8) + 24) += [v11 length];
  ++*(*(*(a1 + 48) + 8) + 24);
  v18 = *(a1 + 72);
  if (([v11 hasSuffix:@"."] & 1) != 0 || ((v19 = objc_msgSend(v11, "hasSuffix:", @".\n"), a5 + a6 == v18) ? (v20 = 1) : (v20 = v19), v20 == 1))
  {
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) + 0.5;
    std::vector<int>::push_back[abi:ne200100]((v9 + 65560), (*(*(a1 + 48) + 8) + 24));
  }

  PCString::~PCString(&v22);
}

__n128 TXTranscriptionGenerator::setMediaOffset(TXTranscriptionGenerator *this, const CMTime *a2)
{
  result = *&a2->value;
  *(this + 8217) = a2->epoch;
  *(this + 65720) = result;
  return result;
}

__n128 non-virtual thunk toTXTranscriptionGenerator::setMediaOffset(TXTranscriptionGenerator *this, const CMTime *a2)
{
  result = *&a2->value;
  *(this + 159) = a2->epoch;
  *(this + 1256) = result;
  return result;
}

void TXTranscriptionGenerator::transcriptionDuration(TXTranscriptionGenerator *this, int a2)
{
  v4 = *(this + 8177);
  v5 = *(this + 8178);
  if (v4 == v5)
  {
    v9 = -2.0;
  }

  else
  {
    v6 = 0.0;
    do
    {
      PCString::PCString(&v18, v4);
      v7 = *(v4 + 8);
      v8 = *(v4 + 24);
      v18.var3 = *(v4 + 40);
      *&v18.var1 = v8;
      *&v18.var0.var1 = v7;
      v6 = v6 + *(&v8 + 1);
      PCString::~PCString(&v18);
      v4 += 48;
    }

    while (v4 != v5);
    v9 = v6 + -2.0;
  }

  v19 = **&MEMORY[0x277CC08F0];
  v10 = (*(*(this + 25) + 272))(this + 200);
  if (v10)
  {
    OZSceneSettings::getFrameDuration((v10 + 336), &v18);
    operator*(300, &v18, &v19);
  }

  OZRenderState::OZRenderState(&v18);
  v18.var0 = v19;
  (*(*this + 1288))(this, &v18);
  v11 = this + 1200;
  v12 = *(this + 151);
  if (v12 != this + 1200)
  {
    v13 = 2.22507386e-308;
    v14 = MEMORY[0x277CC08F0];
    do
    {
      v15 = *(v12 + 2);
      v16 = *(v15 + 8);
      v20 = xmmword_260347A60;
      if (OZFactory::isKindOfClass(v16, &v20) && OZChannel::getValueAsInt((v15 + 29056), v14, 0.0) == 1 && (*(*(v15 + 16) + 24))(v15 + 16, 1, 1))
      {
        v17 = TXSequenceBehavior::computeEndTime(v15, v9, &v19, a2);
        if (v17 >= v13)
        {
          v13 = v17;
        }
      }

      v12 = *(v12 + 1);
    }

    while (v12 != v11);
  }
}

uint64_t TXTranscriptionGenerator::adjustTranscriptionLineShiftForCurrentFont(TXTranscriptionGenerator *this, OZChannelDouble *a2)
{
  result = TXTextLayout::getParagraphStyleAtIndex(this, 0);
  if (result)
  {
    TXTextLayout::getLineOffset(this, 0);
    v5 = *(*this + 1312);

    return v5(this, a2);
  }

  return result;
}

uint64_t TXTranscriptionGenerator::adjustTranscriptionLineShift(TXTranscriptionGenerator *this, OZChannelDouble *a2, double a3)
{
  v5 = (this + 0x10000);
  result = (*(*a2 + 712))(a2, MEMORY[0x277CC08F0], 0);
  v5[26] = a3;
  *(v5 + 27) = a2;
  return result;
}

uint64_t non-virtual thunk toTXTranscriptionGenerator::adjustTranscriptionLineShift(TXTranscriptionGenerator *this, OZChannelDouble *a2, double a3)
{
  result = (*(*a2 + 712))(a2, MEMORY[0x277CC08F0], 0);
  *(this + 160) = a3;
  *(this + 161) = a2;
  return result;
}

double TXTranscriptionGenerator::getLineShift(TXTranscriptionGenerator *this)
{
  v1 = (this + 0x10000);
  result = *(this + 8218);
  if (fabs(result) < 0.0000001)
  {
    TXTextLayout::getLineOffset(this, 0);
    v1[26] = result;
    v3 = *(v1 + 27);
    if (v3)
    {
      (*(*v3 + 712))(v3, MEMORY[0x277CC08F0], 0);
      return v1[26];
    }
  }

  return result;
}

unint64_t TXTranscriptionGenerator::updateTranscriptionText(TXTranscriptionGenerator *this, const OZRenderState *a2)
{
  v3 = (this + 65416);
  v4 = this + 60976;
  (*(*this + 1216))(this, a2);
  v5 = *v3;
  v6 = v3[1];
  if (*v3 != v6)
  {
    v7 = 0;
    v8 = v6 - v5 - 48;
    v9 = vdupq_n_s64(v8 / 0x30);
    do
    {
      v10 = vdupq_n_s64(v7);
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_260343E00)));
      if (vuzp1_s8(vuzp1_s16(v11, *v9.i8), *v9.i8).u8[0])
      {
        v5[40] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v11, *&v9), *&v9).i8[1])
      {
        v5[88] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_260343DF0)))), *&v9).i8[2])
      {
        v5[136] = 1;
        v5[184] = 1;
      }

      v12 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_2603490E0)));
      if (vuzp1_s8(*&v9, vuzp1_s16(v12, *&v9)).i32[1])
      {
        v5[232] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(v12, *&v9)).i8[5])
      {
        v5[280] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_2603490D0))))).i8[6])
      {
        v5[328] = 1;
        v5[376] = 1;
      }

      v13 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_2603490C0)));
      if (vuzp1_s8(vuzp1_s16(v13, *v9.i8), *v9.i8).u8[0])
      {
        v5[424] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(v13, *&v9), *&v9).i8[1])
      {
        v5[472] = 1;
      }

      if (vuzp1_s8(vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_2603490B0)))), *&v9).i8[2])
      {
        v5[520] = 1;
        v5[568] = 1;
      }

      v14 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_2603490A0)));
      if (vuzp1_s8(*&v9, vuzp1_s16(v14, *&v9)).i32[1])
      {
        v5[616] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(v14, *&v9)).i8[5])
      {
        v5[664] = 1;
      }

      if (vuzp1_s8(*&v9, vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v9, vorrq_s8(v10, xmmword_260349090))))).i8[6])
      {
        v5[712] = 1;
        v5[760] = 1;
      }

      v7 += 16;
      v5 += 768;
    }

    while (((v8 / 0x30 + 16) & 0xFFFFFFFFFFFFFF0) != v7);
  }

  TXTranscriptionGenerator::invalidateTranscriptionByLineCache(this);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy((v4 + 3256), *(v4 + 408));
  *(v4 + 407) = v4 + 3264;
  *(v4 + 204) = 0u;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v4, *(v4 + 1));
  *v4 = v4 + 8;
  *(v4 + 2) = 0;
  *(v4 + 1) = 0;

  return TXTranscriptionGenerator::invalidateSequenceBehaviorCache(this);
}

unint64_t TXTranscriptionGenerator::invalidateSequenceBehaviorCache(unint64_t this)
{
  v1 = this + 1200;
  v2 = *(this + 1208);
  if (v2 != this + 1200)
  {
    v3 = MEMORY[0x277CC08F0];
    do
    {
      v4 = *(v2 + 16);
      v5 = *(v4 + 8);
      v6 = xmmword_260347A60;
      this = OZFactory::isKindOfClass(v5, &v6);
      if (this)
      {
        this = OZChannel::getValueAsInt((v4 + 29056), v3, 0.0);
        if (this == 1)
        {
          this = (*(*(v4 + 16) + 24))(v4 + 16, 1, 1);
          if (this)
          {
            this = (*(*v4 + 352))(v4);
          }
        }
      }

      v2 = *(v2 + 8);
    }

    while (v2 != v1);
  }

  return this;
}

__n128 TXTranscriptionGenerator::resetTranscription(TXTranscriptionGenerator *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v16, v2);
  (*(*this + 544))(this);
  v4 = *(this + 8177);
    ;
  }

  *(this + 8178) = v4;
  v6 = *(this + 8183);
    ;
  }

  *(this + 8184) = v6;
  v8 = *(this + 8186);
    ;
  }

  *(this + 8187) = v8;
  v10 = *(this + 8189);
    ;
  }

  v11 = *(this + 8199);
  *(this + 8190) = v10;
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 65584, v11);
  *(this + 8199) = 0;
  *(this + 8200) = 0;
  *(this + 8198) = this + 65592;
  *(this + 8196) = *(this + 8195);
  v12 = MEMORY[0x277CC0898];
  v13 = *MEMORY[0x277CC0898];
  *(this + 65612) = *MEMORY[0x277CC0898];
  v14 = *(v12 + 16);
  *(this + 65628) = v14;
  *(this + 65636) = v13;
  *(this + 65652) = v14;
  *(this + 8214) = 0;
  *(this + 8223) = 0;
  OZLockingGroup::WriteSentry::~WriteSentry(v16);
  return result;
}

void sub_25FB44420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::resetToDefault(TXTranscriptionGenerator *this)
{
  v2 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v3, v2);
  (*(*this + 1248))(this);
  (*(*this + 1240))(this);
  OZLockingGroup::WriteSentry::~WriteSentry(v3);
}

void sub_25FB444EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

void TXTranscriptionGenerator::setText(TXTranscriptionGenerator *this, __CFString *a2)
{
  (*(*this + 1248))(this);

  TXTranscriptionGenerator::loadText(this, a2);
}

void non-virtual thunk toTXTranscriptionGenerator::setText(TXTranscriptionGenerator *this, __CFString *a2)
{
  v3 = (this - 64464);
  (*(*(this - 8058) + 1248))(this - 64464);

  TXTranscriptionGenerator::loadText(v3, a2);
}

void TXTranscriptionGenerator::setTranscription(PCString *this, void *a2, __CFString *theString, const CMTime *a4, int a5)
{
  PCString::set(this + 8208, theString);
  HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
  if (OZHostApplicationDelegateHandler::wantsToSetTranscriptionsUsingArray(HostApplicationDelegate))
  {

    TXTranscriptionGenerator::setTranscriptionArray(this, a2, theString, a5);
  }

  else
  {

    TXTranscriptionGenerator::setTranscriptionObject(this, a2, a4, a5);
  }
}

void TXTranscriptionGenerator::setTranscriptionArray(TXTranscriptionGenerator *this, void *a2, __CFString *a3, int a4)
{
  v8 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v9, v8);
  *(this + 65672) = 1;
  if (a4)
  {
    TXTranscriptionGenerator::setFinalTranscription(this, a2, a3);
  }

  else
  {
    TXTranscriptionGenerator::updateLiveTranscription(this, a2, a3);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v9);
}

void sub_25FB4472C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTranscriptionGenerator::setTranscriptionObject(TXTranscriptionGenerator *this, void *a2, const CMTime *a3, int a4)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = (this + 61440);
  if (a4)
  {
    v7 = *(this + 8178);
    v8 = v6[497];
    while (v7 != v8)
    {
      PCString::~PCString((v7 - 48));
    }

    v6[498] = v8;
    v26 = v6[507];
    v27 = v6[506];
    while (v26 != v27)
    {
      PCString::~PCString((v26 - 48));
    }

    v6[507] = v27;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v28 = [a2 segments];
    result = [v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
    v29 = result;
    if (result)
    {
      v30 = *v59;
      do
      {
        v31 = 0;
        do
        {
          if (*v59 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v58 + 1) + 8 * v31);
          v33 = [v32 substring];
          [v32 timestamp];
          v35 = v34;
          [v32 duration];
          v37 = v36;
          [v32 confidence];
          NSLog(&cfstr_SegmentTimesta.isa, v33, v35, v37, v38);
          PCURL::PCURL(&v48, [v32 substring]);
          [v32 timestamp];
          v40 = v39;
          [v32 duration];
          v42 = v41;
          v43 = [v32 substringRange];
          [v32 substringRange];
          v45 = v44;
          PCString::PCString(&time, &v48);
          *&time.timescale = v40;
          time.epoch = v42;
          v54 = v43;
          v55 = v45;
          v56 = 1;
          v57 = 0;
          PCString::~PCString(&v48);
          std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 65416, &time);
          PCString::~PCString(&time);
          ++v31;
        }

        while (v29 != v31);
        result = [v28 countByEnumeratingWithState:&v58 objects:v63 count:16];
        v29 = result;
      }

      while (result);
    }
  }

  else
  {
    v10 = *(this + 8177);
    v46 = this + 61440;
    v11 = *(this + 8178);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    obj = [a2 segments];
    result = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
    v13 = result;
    if (result)
    {
      v14 = *v50;
      do
      {
        v15 = 0;
        do
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(obj);
          }

          if (v10 == v11)
          {
            v16 = *(*(&v49 + 1) + 8 * v15);
            time = *a3;
            Seconds = CMTimeGetSeconds(&time);
            if (!OZChannel::getValueAsInt(this + 425, MEMORY[0x277CC08F0], 0.0))
            {
              v18 = *(v46 + 498);
              v19 = Seconds - *(v18 - 40);
              if (v19 < *(v18 - 32))
              {
                *(v18 - 32) = v19;
              }
            }

            v20 = (*(*(this + 25) + 272))(this + 200);
            OZSceneSettings::getFrameDuration((v20 + 336), &v48);
            ValueAsInt = OZChannel::getValueAsInt((this + 64856), MEMORY[0x277CC08F0], 0.0);
            operator*(&v48, ValueAsInt, &time);
            v22 = CMTimeGetSeconds(&time);
            PCURL::PCURL(&v48, [v16 substring]);
            v23 = [v16 substringRange];
            [v16 substringRange];
            v25 = v24;
            PCString::PCString(&time, &v48);
            *&time.timescale = Seconds;
            time.epoch = v22;
            v54 = v23;
            v55 = v25;
            v56 = 1;
            v57 = 0;
            PCString::~PCString(&v48);
            std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 65416, &time);
            PCString::~PCString(&time);
          }

          else
          {
            v10 += 48;
          }

          ++v15;
        }

        while (v13 != v15);
        result = [obj countByEnumeratingWithState:&v49 objects:v62 count:16];
        v13 = result;
      }

      while (result);
    }
  }

  return result;
}

uint64_t TXTranscriptionGenerator::setFinalTranscription(TXTranscriptionGenerator *this, void *a2, __CFString *a3)
{
  v25 = this;
  v50 = *MEMORY[0x277D85DE8];
  if (a3 && [(__CFString *)a3 length])
  {
    (*(*v25 + 1248))(v25);
    ValueAsInt = OZChannel::getValueAsInt((v25 + 65008), MEMORY[0x277CC08F0], 0.0);
    v48 = 0;
    v33 = a3;
    v35 = [(__CFString *)a3 length];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    result = [a2 countByEnumeratingWithState:&v44 objects:v49 count:16];
    v31 = result;
    v26 = v25 + 65416;
    if (result)
    {
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v32 = 0;
      v34 = 0;
      v29 = *v45;
      do
      {
        v8 = 0;
        do
        {
          if (*v45 != v29)
          {
            objc_enumerationMutation(a2);
          }

          v9 = *(*(&v44 + 1) + 8 * v8);
          v10 = [v9 objectForKeyedSubscript:{@"transcriptionSegmentSubstring", v25}];
          [objc_msgSend(v9 objectForKeyedSubscript:{@"transcriptionSegmentTimestamp", "doubleValue"}];
          v12 = v11;
          [objc_msgSend(v9 objectForKeyedSubscript:{@"transcriptionSegmentDuration", "doubleValue"}];
          v14 = v13;
          v15 = [(__CFString *)v33 rangeOfString:v10 options:0 range:v7, v35];
          if (v15 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v6 += v5;
            v7 = v15 + v16;
            v5 = v15 + v16 - v6;
            v17 = [(__CFString *)v33 substringWithRange:v6, v5];
            v18 = *(v26 + 8);
            if (*v26 == v18)
            {
              goto LABEL_22;
            }

            v19 = [-[__CFString stringByTrimmingCharactersInSet:](v17 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "punctuationCharacterSet")), "length"}];
            v20 = v19;
            v30 = (v18 - 48);
            if (v12 - *(v18 - 40) > 1.0 && v19 != 0)
            {
              LODWORD(v37.var0) = v34 + 1;
              std::__tree<int>::__emplace_unique_key_args<int,int>(v25 + 65584, &v37);
              std::vector<int>::push_back[abi:ne200100](v25 + 8195, &v48);
              if (ValueAsInt == 2)
              {
                PCString::append(v30, "\n");
                ++*(v18 - 16);
                ++v34;
              }
            }

            if ([(__CFString *)PCString::ns_str(v30) hasSuffix:@"\n"])
            {
              v17 = [v9 objectForKeyedSubscript:@"transcriptionSegmentSubstring"];
            }

            if ([a2 count] == v32 + 1)
            {
              LODWORD(v37.var0) = [(__CFString *)v17 length]+ v34 + 1;
              std::__tree<int>::__emplace_unique_key_args<int,int>(v25 + 65584, &v37);
              LODWORD(v37.var0) = v48 + 1;
              std::vector<int>::push_back[abi:ne200100](v25 + 8195, &v37);
              if (ValueAsInt == 2)
              {
                v17 = [(__CFString *)v17 stringByAppendingString:@"\n"];
              }
            }

            if (v20)
            {
LABEL_22:
              v22 = 1;
            }

            else
            {
              if ([(__CFString *)PCString::ns_str(v30) hasSuffix:@"\n"])
              {
                v23 = PCString::size(v30);
                PCString::erase(v30, v23 - 1, 1u);
                --*(v18 - 16);
              }

              v37.var0 = 0;
              PCString::set(&v37, v17);
              PCString::append(v30, &v37);
              PCString::~PCString(&v37);
              v22 = 0;
              *(v18 - 16) += [(__CFString *)v17 length];
            }

            if (ValueAsInt == 1)
            {
              v17 = [(__CFString *)v17 stringByAppendingString:@"\n"];
            }

            if (v22)
            {
              PCURL::PCURL(&v36, v17);
              v24 = [(__CFString *)v17 length];
              PCString::PCString(&v37, &v36);
              v38 = v12;
              v39 = v14;
              v40 = v34;
              v41 = v24;
              v42 = 1;
              v43 = 0;
              PCString::~PCString(&v36);
              std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](v26, &v37);
              ++v48;
              PCString::~PCString(&v37);
            }

            v34 += [(__CFString *)v17 length];
            v35 -= v5;
            ++v32;
          }

          ++v8;
        }

        while (v31 != v8);
        result = [a2 countByEnumeratingWithState:&v44 objects:v49 count:16];
        v31 = result;
      }

      while (result);
    }

    *(v26 + 257) = 1;
  }

  else
  {

    return TXTranscriptionGenerator::setFinalTranscription(v25, a2);
  }

  return result;
}

void TXTranscriptionGenerator::updateLiveTranscription(TXTranscriptionGenerator *this, void *a2, __CFString *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  if (a3 && [(__CFString *)a3 length])
  {
    v5 = Li3DEngineScene::sceneManager(this);
    OZLockingGroup::WriteSentry::WriteSentry(v37, v5);
    v6 = this + 65416;
    v7 = *(this + 8177);
    v31 = *(this + 8178);
    v36 = v7;
    v8 = [(__CFString *)a3 length];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [a2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v9)
    {
      v23 = this + 65416;
      v25 = this;
      v26 = a3;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      updated = 0;
      v27 = *v33;
      v29 = v31;
      v30 = v7;
      do
      {
        v28 = v9;
        for (i = 0; i != v28; ++i)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(a2);
          }

          v15 = *(*(&v32 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"transcriptionSegmentSubstring"];
          v17 = [(__CFString *)v26 rangeOfString:v16 options:0 range:v12, v8];
          v11 += v10;
          v12 = v17 + v18;
          v10 = v17 + v18 - v11;
          v19 = [(__CFString *)v26 substringWithRange:v11, v10];
          [objc_msgSend(v15 objectForKeyedSubscript:{@"transcriptionSegmentTimestamp", "doubleValue"}];
          v21 = v20;
          [objc_msgSend(v15 objectForKeyedSubscript:{@"transcriptionSegmentDuration", "doubleValue"}];
          if (v7 == v31)
          {
            updated = TXTranscriptionGenerator::addWordDuringLiveTranscription(v25, v19, v16, v21, updated);
            v7 = v31;
          }

          else
          {
            updated = TXTranscriptionGenerator::updateWordDuringLiveTranscription(v25, v19, v16, &v36, updated, v21, v22);
            if (v29 != v31)
            {
              *&v29[2].var0 = v21 - *&v29[1].var0;
            }

            v29 = v30;
            v7 = v30 + 6;
            v36 = v30 + 6;
            v30 += 6;
          }

          v8 -= v10;
        }

        v9 = [a2 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v9);
      v6 = v23;
      v7 = v30;
    }

    std::vector<TXTranscriptionSegment>::erase(v6, v7, v31);
    v6[257] = 1;
    OZLockingGroup::WriteSentry::~WriteSentry(v37);
  }
}

uint64_t TXTranscriptionGenerator::setFinalTranscription(TXTranscriptionGenerator *this, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  (*(*this + 1248))(this);
  ValueAsInt = OZChannel::getValueAsInt((this + 65008), MEMORY[0x277CC08F0], 0.0);
  v31 = 0;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  result = [a2 countByEnumeratingWithState:&v27 objects:v32 count:16];
  v6 = result;
  if (result)
  {
    v7 = 0;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v11 = [v10 objectForKeyedSubscript:@"transcriptionSegmentSubstring"];
        [objc_msgSend(v10 objectForKeyedSubscript:{@"transcriptionSegmentTimestamp", "doubleValue"}];
        v13 = v12;
        [objc_msgSend(v10 objectForKeyedSubscript:{@"transcriptionSegmentDuration", "doubleValue"}];
        v15 = v14;
        v16 = *(this + 8178);
        if (*(this + 8177) == v16)
        {
          goto LABEL_14;
        }

        if (v13 - *(v16 - 40) > 1.0)
        {
          std::vector<int>::push_back[abi:ne200100](this + 8195, &v31);
          if (ValueAsInt == 2)
          {
            PCString::append((*(this + 8178) - 48), "\n");
          }
        }

        v17 = v31;
        if ([a2 count] != v17 + 1)
        {
LABEL_14:
          if (ValueAsInt == 1)
          {
LABEL_15:
            v11 = [v11 stringByAppendingString:@"\n"];
            v18 = [v11 length] - 1;
            goto LABEL_17;
          }
        }

        else
        {
          LODWORD(v20.var0) = v31 + 1;
          std::vector<int>::push_back[abi:ne200100](this + 8195, &v20);
          if (ValueAsInt == 1)
          {
            goto LABEL_15;
          }

          if (ValueAsInt == 2)
          {
            v11 = [v11 stringByAppendingString:@"\n"];
          }
        }

        v18 = [v11 length];
LABEL_17:
        PCURL::PCURL(&v19, v11);
        PCString::PCString(&v20, &v19);
        v21 = v13;
        v22 = v15;
        v23 = v7;
        v24 = v18;
        v25 = 1;
        v26 = 0;
        PCString::~PCString(&v19);
        std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 65416, &v20);
        ++v31;
        v7 += v18 + 1;
        PCString::~PCString(&v20);
        ++v9;
      }

      while (v6 != v9);
      result = [a2 countByEnumeratingWithState:&v27 objects:v32 count:16];
      v6 = result;
    }

    while (result);
  }

  *(this + 32836) = 256;
  return result;
}

uint64_t TXTranscriptionGenerator::updateWordDuringLiveTranscription(uint64_t a1, __CFString *a2, __CFString *a3, uint64_t *a4, uint64_t a5, double a6, double a7)
{
  v11 = *a4;
  if (*a4 != *(a1 + 65416))
  {
    if ([(__CFString *)PCString::ns_str((v11 - 48)) hasSuffix:@"\n"])
    {
      a2 = a3;
    }

    v11 = *a4;
  }

  if ([(__CFString *)PCString::ns_str(v11) hasSuffix:@"\n"])
  {
    a2 = [(__CFString *)a2 stringByAppendingString:@"\n"];
  }

  v15.var0 = 0;
  PCString::set(&v15, a2);
  PCString::set(v11, &v15);
  PCString::~PCString(&v15);
  *(v11 + 24) = a5;
  *(v11 + 32) = [(__CFString *)a2 length];
  *(v11 + 8) = a6;
  *(v11 + 16) = a7;
  return [(__CFString *)a2 length]+ a5;
}

uint64_t TXTranscriptionGenerator::addWordDuringLiveTranscription(TXTranscriptionGenerator *this, __CFString *a2, const __CFString *a3, double a4, uint64_t a5)
{
  v10 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((this + 65008), MEMORY[0x277CC08F0], 0.0);
  v12 = (*(*(this + 25) + 272))(this + 200);
  OZSceneSettings::getFrameDuration((v12 + 336), &v26);
  v13 = OZChannel::getValueAsInt((this + 64856), v10, 0.0);
  operator*(&v26, v13, &time);
  Seconds = CMTimeGetSeconds(&time);
  v15 = *(this + 8178);
  if (*(this + 8177) != v15)
  {
    v16 = OZChannel::getValueAsInt(this + 425, MEMORY[0x277CC08F0], 0.0);
    v17 = a4 - *(v15 - 40);
    if (!v16 && v17 < *(v15 - 32))
    {
      *(v15 - 32) = v17;
    }

    if (v17 > 1.0)
    {
      LODWORD(time.value) = -1431655765 * ((*(this + 8178) - *(this + 8177)) >> 4);
      std::vector<int>::push_back[abi:ne200100](this + 8195, &time);
      if (ValueAsInt == 2)
      {
        PCString::append((v15 - 48), "\n");
        ++*(v15 - 16);
        ++a5;
      }
    }

    if ([(__CFString *)PCString::ns_str((v15 - 48)) hasSuffix:@"\n"])
    {
      a2 = a3;
    }
  }

  if (ValueAsInt == 1)
  {
    a2 = [(__CFString *)a2 stringByAppendingString:@"\n"];
  }

  PCURL::PCURL(&v26, a2);
  v18 = [(__CFString *)a2 length];
  PCString::PCString(&time, &v26);
  *&time.timescale = a4;
  time.epoch = Seconds;
  v22 = a5;
  v23 = v18;
  v24 = 1;
  v25 = 0;
  PCString::~PCString(&v26);
  std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 65416, &time);
  v19 = [(__CFString *)a2 length];
  PCString::~PCString(&time);
  return v19 + a5;
}

PCString *std::vector<TXTranscriptionSegment>::erase(uint64_t a1, PCString *this, PCString *a3)
{
  if (a3 != this)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = this;
    if (a3 != v6)
    {
      do
      {
        PCString::set(v7, v4);
        v8 = *&v4[1].var0;
        v9 = *&v4[3].var0;
        v7[5].var0 = v4[5].var0;
        *&v7[3].var0 = v9;
        *&v7[1].var0 = v8;
        v4 += 6;
        v7 += 6;
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      v6 -= 6;
      PCString::~PCString(v6);
    }

    *(a1 + 8) = v7;
  }

  return this;
}

void **TXTranscriptionGenerator::getTranscriptionByLine(TXTranscriptionGenerator *this)
{
  v1 = this + 61440;
  v2 = (this + 65464);
  if (*(this + 8183) == *(this + 8184))
  {
    TXTranscriptionGenerator::computeTranscriptionByLine(this, this + 8177, 0, &v4);
    std::vector<TXTranscriptionSegment>::__vdeallocate(v2);
    *v2 = v4;
    *(v1 + 505) = v5;
    v5 = 0;
    v4 = 0uLL;
    v6 = &v4;
    std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v6);
  }

  return v2;
}

void TXTranscriptionGenerator::computeTranscriptionByLine(Li3DEngineScene *a1@<X0>, uint64_t *a2@<X1>, CMTime *a3@<X2>, void *a4@<X8>)
{
  v7 = Li3DEngineScene::sceneManager(a1);
  OZLockingGroup::WriteSentry::WriteSentry(v43, v7);
  *a4 = 0;
  a4[1] = 0;
  v32 = a4;
  a4[2] = 0;
  v42 = 0;
  LineBreaks = TXTextLayout::getLineBreaks(a1, &v42);
  PCSharedCount::PCSharedCount(&v37);
  v38 = 0u;
  v39 = 0u;
  v40 = 1;
  v41 = 0;
  v9 = *a2;
  v28 = a2[1];
  if (*a2 != v28)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    do
    {
      if (a3 && !TXTranscriptionGenerator::isSegmentActiveAtTime(a1, v9, a3))
      {
        break;
      }

      if ((v12 & (*&v38 == 0.0)) == 1)
      {
        *&v38 = *(v9 + 8);
      }

      PCString::PCString(&v36, v9);
      v13 = PCString::size(&v36);
      v14 = *(v9 + 8);
      v15 = *(v9 + 16);
      v11 += v13;
      if (*(a1 + 65672))
      {
        v16 = 1;
      }

      else
      {
        v16 = [(__CFString *)PCString::ns_str(v9) hasSuffix:@"\n"];
        v11 += (v16 & 1) == 0;
      }

      LODWORD(v17) = -1;
      if (v42 && v10 < LineBreaks)
      {
        v17 = v42[v10];
      }

      PCString::PCString(&v35, &v36);
      v31 = v9;
      v18 = !v42 || v10 >= LineBreaks;
      v19 = !v18 && v11 >= v17;
      v20 = v19;
      v30 = v20;
      if (v20)
      {
        v21 = 8 * v10 + 8;
        do
        {
          if (v16 & 1 | (v11 == v17))
          {
            v22 = -v17;
          }

          else
          {
            v22 = ~v17;
          }

          v23 = v22 + v11;
          v24 = v13 - (v22 + v11);
          PCString::substr(&v35, v13 - v23, v23, &v34.var0);
          PCString::substr(&v35, 0, v13 - v23, &v33.var0);
          PCString::set(&v35, &v33);
          PCString::~PCString(&v33);
          if ([-[__CFString stringByTrimmingCharactersInSet:](PCString::ns_str(&v35) stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceCharacterSet")), "length"}])
          {
            v25 = v24 / v13;
          }

          else
          {
            v25 = 0.0;
          }

          PCString::append(&v37, &v35);
          if ((*(a1 + 65672) & 1) == 0)
          {
            PCString::append(&v37, " ");
          }

          v26 = v15 * (1.0 - v25);
          v27 = v15 - v26;
          *(&v38 + 1) = v27 + *(&v38 + 1);
          std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](v32, &v37);
          if (v23)
          {
            v14 = v14 + v27;
          }

          else
          {
            v14 = 0.0;
          }

          PCString::PCString(&v33, "");
          PCString::set(&v37, &v33);
          PCString::~PCString(&v33);
          v38 = *&v14;
          PCString::set(&v35, &v34);
          v13 = PCString::size(&v35);
          ++v10;
          LODWORD(v17) = -1;
          if (v42 && LineBreaks > v10)
          {
            LODWORD(v17) = *(v42 + v21);
          }

          PCString::~PCString(&v34);
          if (!v42)
          {
            break;
          }

          if (LineBreaks <= v10)
          {
            break;
          }

          v21 += 8;
          v15 = v26;
        }

        while (v11 >= v17);
      }

      else
      {
        v26 = v15;
      }

      v12 = v30;
      if (PCString::size(&v35))
      {
        PCString::append(&v37, &v35);
        if ((*(a1 + 65672) & 1) == 0)
        {
          PCString::append(&v37, " ");
        }

        *(&v38 + 1) = v26 + *(&v38 + 1);
      }

      PCString::~PCString(&v35);
      PCString::~PCString(&v36);
      v9 = v31 + 48;
    }

    while (v31 + 48 != v28);
  }

  if (!PCString::empty(&v37))
  {
    std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](v32, &v37);
  }

  PCString::~PCString(&v37);
  OZLockingGroup::WriteSentry::~WriteSentry(v43);
}

void sub_25FB45F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __CFString *a13, PCString a14, PCString a15, PCString a16, PCString a17, PCString a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  a18.var0 = a13;
  std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&a18);
  OZLockingGroup::WriteSentry::~WriteSentry(&a25);
  _Unwind_Resume(a1);
}

uint64_t TXTranscriptionGenerator::getActiveTranscriptionByLine(TXTranscriptionGenerator *this, CMTime *a2)
{
  v4 = this + 65612;
  time1 = *a2;
  v7 = *(this + 65612);
  if (CMTimeCompare(&time1, &v7))
  {
    TXTranscriptionGenerator::computeTranscriptionByLine(this, this + 8180, a2, &time1);
    std::vector<TXTranscriptionSegment>::__vdeallocate(this + 8186);
    *(this + 65488) = time1;
    memset(&time1, 0, sizeof(time1));
    v7.value = &time1;
    std::vector<TXTranscriptionSegment>::__destroy_vector::operator()[abi:ne200100](&v7);
    v5 = *&a2->value;
    *(v4 + 2) = a2->epoch;
    *v4 = v5;
  }

  return this + 65488;
}

char *TXTranscriptionGenerator::getTranscriptionByBlock(TXTranscriptionGenerator *this, const CMTime *a2)
{
  v4 = this + 61440;
  v5 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v7, v5);
  if (*(v4 + 509) == *(v4 + 510))
  {
    TXTranscriptionGenerator::computeTranscriptionBlocks(this, a2);
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v7);
  return v4 + 4072;
}

void sub_25FB4615C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZLockingGroup::WriteSentry::~WriteSentry(va);
  _Unwind_Resume(a1);
}

uint64_t TXTranscriptionGenerator::getLineBreaksForEntireString(TXTranscriptionGenerator *this, const CMTime *a2)
{
  PCSharedCount::PCSharedCount(&v14);
  *&v13.var0.var0 = *(this + 65720);
  v13.var0.var3 = *(this + 8217);
  Seconds = CMTimeGetSeconds(&v13);
  v5 = *(this + 8177);
  v6 = *(this + 8178);
  if (v5 != v6)
  {
    v7 = Seconds;
    do
    {
      if (*(v5 + 40) == 1 && *(v5 + 8) >= v7)
      {
        PCString::PCString(&v13, v5);
        PCString::append(&v14, &v13);
        PCString::~PCString(&v13);
      }

      v5 += 48;
    }

    while (v5 != v6);
  }

  TXTextLayout::resetState(this);
  TXTextLayout::setString(this, &v14, 1);
  v9 = PCString::size(&v14);
  TXTextLayout::updateStyleRunsAfterTextInsert(this, 0, v9);
  TXTextLayout::updateDisplayString(this, a2);
  v10 = *(*(this + 2422) + 16);
  TXTextLayout::getDisplayString(this, &v13);
  v11 = PCString::size(&v13);
  *(v10 + 24) = 0;
  *(v10 + 28) = v11;
  PCString::~PCString(&v13);
  TXTextLayout::rebuildParagraphStyles(this);
  TXTextLayout::setAllParagraphsDirty(this);
  OZRenderState::OZRenderState(&v13);
  *&v13.var0.var0 = *&a2->value;
  v13.var0.var3 = a2->epoch;
  TXTextLayout::doLayout(this, &v13, 0);
  PCString::~PCString(&v14);
  return this + 52200;
}

uint64_t TXTranscriptionGenerator::isPhraseBreak(TXTranscriptionGenerator *this, int a2)
{
  v2 = this + 0x10000;
  if ((*(this + 16402) & 0x80000000) != 0)
  {
    return 0;
  }

  if (OZChannel::getValueAsInt((this + 65008), MEMORY[0x277CC08F0], 0.0) != 2)
  {
    return 0;
  }

  v4 = *(v2 + 7);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v2 + 18) + a2;
  while (1)
  {
    v6 = *(v4 + 7);
    if (v5 >= v6)
    {
      break;
    }

LABEL_8:
    v4 = *v4;
    if (!v4)
    {
      return 0;
    }
  }

  if (v6 < v5)
  {
    ++v4;
    goto LABEL_8;
  }

  return 1;
}

uint64_t TXTranscriptionGenerator::getActiveTranscriptionByBlock(TXTranscriptionGenerator *this, CMTime *a2)
{
  v4 = Li3DEngineScene::sceneManager(this);
  OZLockingGroup::WriteSentry::WriteSentry(v17, v4);
  v14 = *a2;
  time2 = *(this + 65636);
  if (CMTimeCompare(&v14, &time2))
  {
    v6 = *(this + 0x2000);
      ;
    }

    *(this + 8193) = v6;
    TranscriptionByBlock = TXTranscriptionGenerator::getTranscriptionByBlock(this, a2);
    v8 = *TranscriptionByBlock;
    v9 = *(TranscriptionByBlock + 1);
    if (*TranscriptionByBlock != v9)
    {
      while (1)
      {
        PCString::PCString(&v14, v8);
        v10 = *(v8 + 8);
        v11 = *(v8 + 24);
        v16 = *(v8 + 40);
        v15 = v11;
        *&v14.timescale = v10;
        if (TXTranscriptionGenerator::isBlockActiveAtTime(this, &v14, a2))
        {
          break;
        }

        PCString::~PCString(&v14);
        v8 += 48;
        if (v8 == v9)
        {
          goto LABEL_10;
        }
      }

      *&v15 = 0;
      std::vector<TXTranscriptionSegment>::push_back[abi:ne200100](this + 0x10000, &v14);
      PCString::~PCString(&v14);
    }

LABEL_10:
    v12 = *&a2->value;
    *(this + 65652) = a2->epoch;
    *(this + 65636) = v12;
  }

  OZLockingGroup::WriteSentry::~WriteSentry(v17);
  return this + 0x10000;
}

void sub_25FB464F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  PCString::~PCString(&a9);
  OZLockingGroup::WriteSentry::~WriteSentry(&a16);
  _Unwind_Resume(a1);
}

void **TXTranscriptionGenerator::getTranscriptionByUnit(TXTranscriptionGenerator *a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 3)
  {
    if (v2 == 6)
    {
      v4 = 65512;
      return (a1 + v4);
    }
  }

  else if (v2 == 3)
  {
    return TXTranscriptionGenerator::getTranscriptionByLine(a1);
  }

  v4 = 65416;
  return (a1 + v4);
}

uint64_t TXTranscriptionGenerator::getActiveTranscriptionByUnit(TXTranscriptionGenerator *a1, int *a2, CMTime *a3)
{
  v3 = *a2;
  if (*a2 <= 3)
  {
    if (v3 == 3)
    {
      return TXTranscriptionGenerator::getActiveTranscriptionByLine(a1, a3);
    }

    return a1 + 65440;
  }

  if (v3 != 6)
  {
    return a1 + 65440;
  }

  return TXTranscriptionGenerator::getActiveTranscriptionByBlock(a1, a3);
}

uint64_t TXTranscriptionGenerator::getWordIndexInPhrase(TXTranscriptionGenerator *this, int a2, int a3, unsigned int *a4)
{
  result = 0;
  if (!a4)
  {
    return result;
  }

  v6 = this + 0x10000;
  if (*(this + 8195) == *(this + 8196))
  {
    return result;
  }

  v9 = (*(*this + 720))(this);
  v11 = *(v6 + 3);
  v10 = *(v6 + 4);
  if (v11 == v10)
  {
    return 0;
  }

  v12 = *v11;
  if (v9 >= *v11)
  {
    v14 = (v11 + 1);
    while (v14 != v10)
    {
      v13 = v12;
      v15 = *v14++;
      v12 = v15;
      if (v9 < v15)
      {
        goto LABEL_9;
      }
    }

    return 0;
  }

  v13 = 0;
LABEL_9:
  v16 = v12 + ~v9;
  if (!a3)
  {
    v16 = v9 - v13;
  }

  *a4 = v16;
  return 1;
}