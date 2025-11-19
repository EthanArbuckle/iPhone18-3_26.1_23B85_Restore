BOOL OZImageElement::variesOverTime(OZImageElement *this)
{
  Footage = OZImageElement::getFootage(this);
  if (OZElement::variesOverTime(this))
  {
    return 1;
  }

  if (Footage)
  {
    return (*(*Footage + 1376))(Footage) > 1;
  }

  return 0;
}

uint64_t OZImageElement::allowReplace(OZImageElement *this)
{
  v1 = this + 28672;
  if (*(this + 30249) == 1)
  {
    v2 = *(this + 30248);
  }

  else
  {
    v2 = OZChannel::getValueAsInt((this + 22568), MEMORY[0x277CC08F0], 0.0) != 0;
    v1[1576] = v2;
    v1[1577] = 1;
  }

  return v2 & 1;
}

void OZImageElement::getRetimingHash(OZImageElement *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v10[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v10);
  PCHashWriteStream::reset(v10);
  (*(v1[2581] + 16))(v1 + 2581, v10, 0);
  (*(v1[2581] + 24))(v1 + 2581, v10, 0, 1, 1);
  (*(*v10 + 24))(v10);
  (*(v1[2600] + 16))(v1 + 2600, v10, 0);
  (*(v1[2600] + 24))(v1 + 2600, v10, 0, 1, 1);
  (*(*v10 + 24))(v10);
  (*(v1[2619] + 16))(v1 + 2619, v10, 0);
  (*(v1[2619] + 24))(v1 + 2619, v10, 0, 1, 1);
  (*(*v10 + 24))(v10);
  (*(v1[2651] + 16))(v1 + 2651, v10, 0);
  (*(v1[2651] + 24))(v1 + 2651, v10, 0, 1, 1);
  (*(*v10 + 24))(v10);
  (*(v1[2689] + 16))(v1 + 2689, v10, 0);
  (*(v1[2689] + 24))(v1 + 2689, v10, 0, 1, 1);
  (*(*v10 + 24))(v10);
  (*(v1[2721] + 16))(v1 + 2721, v10, 0);
  (*(v1[2721] + 24))(v1 + 2721, v10, 0, 1, 1);
  (*(*v10 + 24))(v10);
  (*(v1[2753] + 16))(v1 + 2753, v10, 0);
  (*(v1[2753] + 24))(v1 + 2753, v10, 0, 1, 1);
  (*(*v10 + 24))(v10);
  v4 = v1 + 125;
  v5 = v1[126];
  if (v5 != v1 + 125)
  {
    do
    {
      v6 = *(v5[2] + 8);
      v9 = xmmword_260850060;
      if (OZFactory::isKindOfClass(v6, &v9))
      {
        v7 = v5[2];
        v8 = v7[6];
        v7 += 6;
        (*(v8 + 16))(v7, v10, 0);
        (*(*v7 + 24))(v7, v10, 0, 1, 1);
        (*(*v10 + 24))(v10);
      }

      v5 = v5[1];
    }

    while (v5 != v4);
  }

  *v3 = *PCHashWriteStream::getHash(v10)->i8;
  PCHashWriteStream::~PCHashWriteStream(v10);
}

void sub_2600CF994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCHashWriteStream::~PCHashWriteStream(va);
  _Unwind_Resume(a1);
}

void *HGLazyPDFBitmapLoaderCache::Instance(HGLazyPDFBitmapLoaderCache *this)
{
  {
    pthread_key_create(&HGLazyPDFBitmapLoaderCache::Instance(void)::perThreadInstance, PCThreadSpecific<HGLazyPDFBitmapLoaderCache>::destroy);
  }

  v1 = pthread_getspecific(HGLazyPDFBitmapLoaderCache::Instance(void)::perThreadInstance);
  if (!v1)
  {
    operator new();
  }

  return v1;
}

uint64_t HGLazyPDFBitmapLoaderCache::addNode(uint64_t a1, const PCHash128 *a2, uint64_t *a3)
{
  v4 = std::__tree<std::__value_type<PCHash128,HGRef<HGNode>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,HGRef<HGNode>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,HGRef<HGNode>>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(a1, a2);
  v5 = *(v4 + 48);
  result = *a3;
  if (v5 != *a3)
  {
    if (v5)
    {
      (*(*v5 + 24))(v5);
      result = *a3;
    }

    *(v4 + 48) = result;
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

HGLazyPDFBitmapLoaderCache *HGLazyPDFBitmapLoaderCache::getNodeForKey@<X0>(HGLazyPDFBitmapLoaderCache *this@<X0>, const PCHash128 *a2@<X1>, HGLazyPDFBitmapLoaderCache **a3@<X8>)
{
  result = std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::find<PCHash128>(this, a2);
  if ((this + 8) == result)
  {
    *a3 = 0;
  }

  else
  {
    result = *(result + 6);
    *a3 = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

void OZImageElementFinalizer::~OZImageElementFinalizer(OZImageElementFinalizer *this)
{
  v1 = HGLazyPDFBitmapLoaderCache::Instance(this);
  std::__tree<std::__value_type<PCHash128,HGRef<HGNode>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,HGRef<HGNode>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,HGRef<HGNode>>>>::destroy(v1, *(v1 + 1));
  *v1 = v1 + 8;
  *(v1 + 2) = 0;
  *(v1 + 1) = 0;
}

void OZPDFRender::OZPDFRender(OZPDFRender *this, OZImageElement *a2, const OZRenderParams *a3)
{
  *(this + 182) = &unk_2872DEA38;
  *(this + 183) = 0;
  *(this + 1472) = 1;
  LiImageSource::LiImageSource((this + 1440), &off_287281D98);
  *this = &unk_287281BA8;
  *(this + 1) = a2;
  *(this + 180) = &unk_287281CA0;
  *(this + 182) = &unk_287281D68;
  OZRenderParams::OZRenderParams((this + 16), a3);
}

void sub_2600CFD00(_Unwind_Exception *a1)
{
  OZChannelBase::setRangeName(v3, &off_287281D98);
  *(v1 + 1456) = v2;
  *(v1 + 1472) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1464));
  _Unwind_Resume(a1);
}

uint64_t OZPDFRender::pixelTransformSupport(OZImageElement **this, const LiRenderParameters *a2)
{
  if (*(a2 + 144))
  {
    return 0;
  }

  Footage = OZImageElement::getFootage(this[1]);
  if (Footage && OZFootage::isRenderedAtFixedResolution(Footage))
  {
    return 0;
  }

  else
  {
    return 6;
  }
}

void OZPDFRender::fixPixelTransform(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  LiImageSource::fixPixelTransform(a1 + *(*a1 - 24), a2, a3, a4);
  if ((*(a4 + 144) & 1) == 0)
  {
    Footage = OZImageElement::getFootage(*(a1 + 8));
    v78 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v79 = _Q0;
    (*(**(a1 + 8) + 1480))();
    if (Footage)
    {
      if (OZFootage::isRenderedAtFixedResolution(Footage))
      {
        *v57 = 0;
        LODWORD(v55.f64[0]) = 0;
        *v69 = *(a1 + 16);
        *&v69[16] = *(a1 + 32);
        OZFootage::getFixedResolution(Footage, v57, &v55, v69);
        LODWORD(v14) = *v57;
        PCMatrix44Tmpl<double>::leftScale(a3, v14 / *&v79, __PAIR64__(DWORD1(v79), LODWORD(v55.f64[0])) / *(&v79 + 1), 1.0);
        return;
      }

      LiImagePolygon::LiImagePolygon(v76);
      LiImagePolygon::set(v15, v78.n128_f64, 0);
      v16 = *(a3 + 80);
      v72 = *(a3 + 64);
      v73 = v16;
      v17 = *(a3 + 112);
      v74 = *(a3 + 96);
      v75 = v17;
      v18 = *(a3 + 16);
      *v69 = *a3;
      *&v69[16] = v18;
      v19 = *(a3 + 48);
      v70 = *(a3 + 32);
      v71 = v19;
      LiAgent::getROI(a2, v57);
      v20.i64[0] = *v57;
      v20.i64[1] = *&v57[4];
      v66 = vcvtq_f64_s64(v20);
      v67 = *&v57[8];
      v68 = *&v57[12];
      if ((*&v57[8] & 0x80000000) == 0 && (*&v57[12] & 0x80000000) == 0)
      {
        liTransformAndClip(v66.f64, a3, v76);
        v21 = v77[1] - *v77;
        if ((v21 >> 5) < 1)
        {
          v26 = 2.22507386e-308;
          v24 = 2.22507386e-308;
        }

        else
        {
          v22 = 0;
          v23 = (v21 >> 5) & 0x7FFFFFFF;
          v24 = 2.22507386e-308;
          __asm { FMOV            V0.2D, #1.0 }

          v50 = _Q0;
          v26 = 2.22507386e-308;
          do
          {
            v27 = *v77;
            *v57 = v50;
            *&v57[16] = 0x3FF0000000000000;
            v55 = 0uLL;
            v56 = 0;
            getScale(a3, (v27 + v22), v57, &v55, 0);
            if (v24 < v55.f64[0])
            {
              v24 = v55.f64[0];
            }

            if (v26 < v55.f64[1])
            {
              v26 = v55.f64[1];
            }

            v22 += 32;
            --v23;
          }

          while (v23);
        }

        if (*(a4 + 132))
        {
          v31 = 2950;
        }

        else
        {
          v31 = 1950;
        }

        v32 = v31;
        v33 = 9;
        while (1)
        {
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
          PCMatrix44Tmpl<double>::leftScale(a3, v24, v26, 1.0);
          v65 = 0x3FF0000000000000;
          v62 = 0x3FF0000000000000;
          v59 = 0x3FF0000000000000;
          *v57 = 0x3FF0000000000000;
          *&v57[8] = 0u;
          v58 = 0u;
          v60 = 0u;
          v61 = 0u;
          v63 = 0u;
          v64 = 0u;
          if (!PCMatrix44Tmpl<double>::planarInverseZ(v57, a3, 0.0))
          {
            goto LABEL_42;
          }

          PCMatrix44Tmpl<double>::operator*(v69, v57, &v55);
          v51.n128_u64[0] = 0;
          LiAgent::makeHeliumXForm(a2, &v55, &v54);
          if (!v54)
          {
            goto LABEL_42;
          }

          PGHelium::convertPCMatrix44(&v55, &v53);
          (*(*v53 + 184))(v53);
          (*(*v53 + 168))(v53);
          LiAgent::getROI(a2, &v51);
          v34 = HGRectMake4i(v51.n128_u32[0], v51.n128_u32[1], v51.n128_u32[2] + v51.n128_u32[0], v51.n128_u32[3] + v51.n128_u32[1]);
          v36 = v35;
          v37 = v53;
          v38 = HGTransformUtils::MinW(v34);
          *&v80.var0 = v36;
          ROI = HGTransformUtils::GetROI(v37, v34, v80, 1.0, v38);
          v41 = v40;
          v51 = v78;
          v52 = v79;
          if (PCMatrix44Tmpl<double>::transformRect<double>(a3, v51.n128_f64, &v51))
          {
            v42 = HGRectMake4i(v51.n128_f64[0], v51.n128_f64[1], *&v52 + v51.n128_f64[0], *(&v52 + 1) + v51.n128_f64[1]);
            v44 = HGRectIntersection(ROI, v41, v42, v43);
            if (v45 - v44 > v31)
            {
              v24 = v24 / ((v45 - v44) / v32);
              v47 = v46 - HIDWORD(v44);
LABEL_31:
              v48 = 0;
              if (v47 > v31)
              {
                v26 = v26 / (v47 / v32);
              }

              goto LABEL_34;
            }

            v47 = v46 - HIDWORD(v44);
            if (v46 - HIDWORD(v44) > v31)
            {
              goto LABEL_31;
            }
          }

          v48 = 1;
LABEL_34:
          if (v53)
          {
            (*(*v53 + 24))(v53);
          }

          if (v54)
          {
            (*(*v54 + 24))(v54);
          }

          if (v33)
          {
            v49 = v48;
          }

          else
          {
            v49 = 1;
          }

          --v33;
          if (v49)
          {
            goto LABEL_42;
          }
        }
      }

      if (fabs(*(&v75 + 1) + -1.0) >= 0.0000001)
      {
        v55 = 0uLL;
        v56 = 0;
        v65 = 0x3FF0000000000000;
        v62 = 0x3FF0000000000000;
        v59 = 0x3FF0000000000000;
        *v57 = 0x3FF0000000000000;
        *&v57[8] = 0u;
        v58 = 0u;
        v60 = 0u;
        v61 = 0u;
        v63 = 0u;
        v64 = 0u;
        perspectiveToAffine(a3, v55.f64, v57);
        if (v57 != a3)
        {
          for (i = 0; i != 128; i += 32)
          {
            v29 = (a3 + i);
            v30 = *&v57[i + 16];
            *v29 = *&v57[i];
            v29[1] = v30;
          }
        }
      }

      memset(v57, 0, sizeof(v57));
      v55 = 0uLL;
      v56 = 0;
      getScaleTranslate(a3, v57, &v55);
      *&v57[16] = 0x3FF0000000000000;
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
      PCMatrix44Tmpl<double>::leftScale(a3, *v57, *&v57[8], 1.0);
LABEL_42:
      LiImagePolygon::~LiImagePolygon(v76);
    }
  }
}

CGColorSpace **OZPDFRender::getHelium(OZPDFRender *this, LiAgent *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v5 = v2;
  v7 = v6;
  v63 = *MEMORY[0x277D85DE8];
  Footage = OZImageElement::getFootage(*(v2 + 8));
  CGColorSpace = FxColorDescription::getCGColorSpace((*(v4 + 6) + 160));
  OZRenderParams::setWorkingColorSpace((v5 + 16), CGColorSpace);
  OZRenderParams::setBlendingGamma(v5 + 16, *(*(v4 + 6) + 192));
  *v7 = 0;
  RequestedColorDescription = LiAgent::getRequestedColorDescription(v4);
  v11 = *RequestedColorDescription;
  v58._pcColorDesc._colorSpaceRef._obj = v11;
  if (v11)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v11);
  }

  v12 = *(RequestedColorDescription + 8);
  v58._pcColorDesc._toneMapMethod._gain = *(RequestedColorDescription + 16);
  *&v58._pcColorDesc._dynamicRange = v12;
  v58._isPremultiplied = *(RequestedColorDescription + 24);
  if (!FxColorDescription::getCGColorSpace(&v58))
  {
    v13 = PCColorSpaceCache::cgsRGB(0);
    FxColorDescription::setCGColorSpace(&v58, v13);
  }

  FxColorDescription::setDynamicRange(&v58, 0);
  if (!Footage || !OZFootage::isRenderedAtFixedResolution(Footage))
  {
    v48[0] = 0;
    v48[1] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    v49 = _Q0;
    (*(**(v5 + 8) + 1480))(*(v5 + 8), v48, v5 + 16);
    v29 = *(v4 + 20);
    v54 = v29[4];
    v55 = v29[5];
    v56 = v29[6];
    v57 = v29[7];
    v50 = *v29;
    v51 = v29[1];
    v52 = v29[2];
    v53 = v29[3];
    PCWorkingColorVector::PCWorkingColorVector(v47);
    v46 = 0;
    v30 = OZImageElement::getFootage(*(v5 + 8));
    if (v30 && OZFootage::isStill(v30))
    {
      PCHashWriteStream::PCHashWriteStream(&v59);
      PCHashWriteStream::writeValue(&v59, *(v5 + 8));
      OZRenderParams::getHashWithoutTime((v5 + 16), v45);
      PCHashWriteStream::writeValue(&v59, v45);
      FxHashColorDescription(&v59, &v58);
      PCHashWriteStream::writeValue(&v59, vcvtpd_s64_f64(v49.f64[0]));
      PCHashWriteStream::writeValue(&v59, vcvtpd_s64_f64(v49.f64[1]));
      v31 = 0;
      v32 = &v50;
      do
      {
        for (i = 0; i != 32; i += 8)
        {
          PCHashWriteStream::writeValue(&v59, *(v32 + i));
        }

        ++v31;
        v32 += 2;
      }

      while (v31 != 4);
      Hash = PCHashWriteStream::getHash(&v59);
      *v47 = *Hash;
      v35 = HGLazyPDFBitmapLoaderCache::Instance(Hash);
      HGLazyPDFBitmapLoaderCache::getNodeForKey(v35, v47, v45);
      v36 = *v45;
      if (*v45)
      {
        v46 = *v45;
        PCHashWriteStream::~PCHashWriteStream(&v59);
LABEL_28:
        *v7 = v36;
        (*(*v36 + 16))(v36);
        (*(*v36 + 24))(v36);
        goto LABEL_29;
      }

      PCHashWriteStream::~PCHashWriteStream(&v59);
    }

    v37 = FxColorDescription::getCGColorSpace(&v58);
    v36 = HGObject::operator new(0x890uLL);
    HGLazyPDFBitmapLoader::HGLazyPDFBitmapLoader(v36, *(v5 + 8), (v5 + 16), v37);
    v38 = 0;
    v39 = vshr_n_s32(vadd_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(v49))), 0x100000001), 1uLL);
    v36[61] = vneg_s32(v39);
    v36[62] = v39;
    do
    {
      v40 = &v36[v38];
      *v40[66].i8 = *(&v50 + v38 * 8);
      *v40[68].i8 = *(&v50 + v38 * 8 + 16);
      v38 += 4;
    }

    while (v38 != 16);
    v46 = v36;
    (*(*v36 + 16))(v36);
    v41 = OZImageElement::getFootage(*(v5 + 8));
    if (v41)
    {
      isStill = OZFootage::isStill(v41);
      if (isStill)
      {
        v43 = HGLazyPDFBitmapLoaderCache::Instance(isStill);
        HGLazyPDFBitmapLoaderCache::addNode(v43, v47, &v46);
      }
    }

    (*(*v36 + 24))(v36);
    goto LABEL_28;
  }

  v47[0] = 0;
  v45[0] = 0;
  v59 = *(v5 + 16);
  OZFootage::getFixedResolution(Footage, v47, v45, &v59);
  OZRenderParams::OZRenderParams(&v59, (v5 + 16));
  if (*(*HGRenderJob::GetRenderNodeList((v5 + 16)) + 8))
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  OZRenderParams::setImageType(&v59, v14);
  v60 = 1;
  v61 = 0u;
  v62 = 0u;
  OZRenderParams::setWidth(&v59, v47[0]);
  OZRenderParams::setHeight(&v59, v45[0]);
  v15 = *(v4 + 20);
  v16 = v15[3];
  v18 = *v15;
  v17 = v15[1];
  v52 = v15[2];
  v53 = v16;
  v50 = v18;
  v51 = v17;
  v19 = v15[7];
  v21 = v15[4];
  v20 = v15[5];
  v56 = v15[6];
  v57 = v19;
  v54 = v21;
  v55 = v20;
  v22 = *(v5 + 8);
  HeliumRenderer = LiAgent::getHeliumRenderer(v4);
  (*(*v22 + 2280))(v48, v22, &v59, HeliumRenderer, &v58, &v50);
  if (v48[0])
  {
    *v7 = v48[0];
  }

  LiAgent::setPixelTransform(v4, &v50);
  OZRenderParams::~OZRenderParams(&v59);
LABEL_29:
  LiAgent::setActualColorDescription(v4, &v58);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v58._pcColorDesc._colorSpaceRef._obj);
}

void sub_2600D0A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, CGColorSpace *a35)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a35);
  if (*v35)
  {
    (*(**v35 + 24))(*v35);
  }

  _Unwind_Resume(a1);
}

unint64_t OZPDFRender::estimateRenderMemory(uint64_t a1, uint64_t a2)
{
  Footage = OZImageElement::getFootage(*(a1 + 8));
  if (Footage && (v5 = Footage, OZFootage::isRenderedAtFixedResolution(Footage)))
  {
    *v14 = 0;
    v10[0] = *(a1 + 16);
    OZFootage::getFixedResolution(v5, &v14[1], v14, v10);
    OZRenderParams::OZRenderParams(v10, (a1 + 16));
    if (*(*HGRenderJob::GetRenderNodeList((a1 + 16)) + 8))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    OZRenderParams::setImageType(v10, v6);
    v11 = 1;
    v12 = 0u;
    v13 = 0u;
    OZRenderParams::setWidth(v10, v14[1]);
    OZRenderParams::setHeight(v10, v14[0]);
    v7 = OZImageElement::estimateRenderMemory(*(a1 + 8), a2, v10);
    OZRenderParams::~OZRenderParams(v10);
    return v7;
  }

  else
  {
    v9 = *(a1 + 8);

    return OZImageElement::estimateRenderMemory(v9, a2, (a1 + 16));
  }
}

PCSharedCount *OZImageElement::makeRenderImageSource@<X0>(OZImageElement *this@<X0>, OZRenderParams *a2@<X1>, const OZRenderGraphState *a3@<X2>, PCSharedCount *a4@<X8>)
{
  Footage = OZImageElement::getFootage(this);
  if (Footage)
  {
    if (OZFootage::isResolutionIndependent(Footage))
    {
      operator new();
    }

    OZElement::makeRenderImageSource(this, a2, a3);
  }

  a4->var0 = 0;

  return PCSharedCount::PCSharedCount(a4 + 1, 0);
}

void HGLazyPDFBitmapLoader::HGLazyPDFBitmapLoader(HGLazyPDFBitmapLoader *this, OZImageElement *a2, const OZRenderParams *a3, CGColorSpace *a4)
{
  HGBitmapLoader::HGBitmapLoader(this);
  *v8 = &unk_287281DC8;
  *(v8 + 520) = a2;
  *(v8 + 648) = 0x3FF0000000000000;
  *(v8 + 608) = 0x3FF0000000000000;
  *(v8 + 568) = 0x3FF0000000000000;
  *(v8 + 528) = 0x3FF0000000000000;
  *(v8 + 536) = 0u;
  *(v8 + 552) = 0u;
  *(v8 + 576) = 0u;
  *(v8 + 592) = 0u;
  *(v8 + 616) = 0u;
  *(v8 + 632) = 0u;
  OZRenderParams::OZRenderParams((v8 + 656), a3);
  PCColorSpaceHandle::PCColorSpaceHandle((this + 2080), a4);
  *(this + 2088) = 0u;
  PCMutex::PCMutex((this + 2104));
  HGLazyPDFBitmapLoader::generatePlaceHolderBitmap(this);
}

void sub_2600D0EF4(_Unwind_Exception *a1)
{
  PCMutex::~PCMutex((v1 + 2104));
  v3 = *(v1 + 2096);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef((v1 + 2080));
  OZRenderParams::~OZRenderParams((v1 + 656));
  HGBitmapLoader::~HGBitmapLoader(v1);
  _Unwind_Resume(a1);
}

void HGLazyPDFBitmapLoader::generatePlaceHolderBitmap(HGLazyPDFBitmapLoader *this)
{
  OZRenderParams::OZRenderParams(v16, (this + 656));
  OZRenderParams::setWidth(v16, 0);
  OZRenderParams::setHeight(v16, 0);
  OZRenderParams::setImageType(v16, 1);
  v16[360] = 1;
  v17 = 0u;
  v18 = 0u;
  PCColorSpaceHandle::getCGColorSpace((this + 2080));
  v14 = 0;
  v15 = 0;
  PCDynamicCast<PCBitmap,PCImage>(&v14, &v13);
  v2 = this + 2088;
  v3 = v13;
  v13 = 0uLL;
  v4 = *(this + 262);
  *(this + 2088) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    if (*(&v13 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
    }
  }

  v5 = (*(**(*v2 + 64) + 48))(*(*v2 + 64));
  Format = PGHelium::makeFormat(v5);
  v7 = (*(**(*v2 + 64) + 16))(*(*v2 + 64));
  v8 = HGRectMake4i(0, 0, 0, 0);
  v10 = v9;
  v11 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v11, v8, v10, Format, v7);
  v12 = *(this + 51);
  if (v12 == v11)
  {
    if (v11)
    {
      (*(*v11 + 24))(v11);
    }
  }

  else
  {
    if (v12)
    {
      (*(*v12 + 24))(v12);
    }

    *(this + 51) = v11;
  }

  *(this + 2176) = 1;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  OZRenderParams::~OZRenderParams(v16);
}

void sub_2600D1134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va, a5);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  if (a5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a5);
  }

  OZRenderParams::~OZRenderParams(va);
  _Unwind_Resume(a1);
}

void *PCDynamicCast<PCBitmap,PCImage>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

void HGLazyPDFBitmapLoader::~HGLazyPDFBitmapLoader(HGLazyPDFBitmapLoader *this)
{
  *this = &unk_287281DC8;
  v2 = (this + 2088);
  v3 = *(this + 262);
  *v2 = 0u;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  PCMutex::~PCMutex((this + 2104));
  v4 = *(this + 262);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(this + 260);
  OZRenderParams::~OZRenderParams((this + 656));

  HGBitmapLoader::~HGBitmapLoader(this);
}

{
  HGLazyPDFBitmapLoader::~HGLazyPDFBitmapLoader(this);

  HGObject::operator delete(v1);
}

uint64_t HGLazyPDFBitmapLoader::GetDOD(HGLazyPDFBitmapLoader *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (!a3)
  {
    v5 = *(this + 122);
    v6 = *(this + 123);
    v7 = *(this + 124);
    v8 = *(this + 125);
    v9 = *(this + 78);
    v10 = v9 * v5;
    v11 = *(this + 79);
    v12 = v11 * v6;
    v13 = *(this + 81);
    v14 = v13 + v9 * v5 + v11 * v6;
    v15 = *(this + 66);
    v16 = v15 * v5;
    v17 = *(this + 67);
    v18 = v17 * v6;
    v19 = *(this + 69);
    v20 = (v19 + v15 * v5 + v17 * v6) / v14;
    v21 = *(this + 70);
    v22 = v21 * v5;
    v23 = *(this + 71);
    v24 = v23 * v6;
    v25 = *(this + 73);
    v26 = (v25 + v22 + v24) / v14;
    v27 = v9 * v7;
    v28 = v13 + v27 + v12;
    v29 = v15 * v7;
    v30 = (v19 + v29 + v18) / v28;
    v31 = v21 * v7;
    v32 = (v25 + v31 + v24) / v28;
    v33 = v11 * v8;
    v34 = v13 + v27 + v33;
    v35 = v17 * v8;
    v36 = (v19 + v29 + v35) / v34;
    v37 = v23 * v8;
    v38 = (v25 + v31 + v37) / v34;
    v39 = v13 + v10 + v33;
    v40 = (v19 + v16 + v35) / v39;
    v41 = v25 + v22 + v37;
    if (v20 <= v30)
    {
      v42 = v20;
    }

    else
    {
      v42 = v30;
    }

    v43 = 0.0;
    if (v20 >= v30)
    {
      v44 = v20 + 0.0;
    }

    else
    {
      v44 = v30;
    }

    if (v26 <= v32)
    {
      v45 = v26;
    }

    else
    {
      v45 = v32;
    }

    v46 = v26 + 0.0;
    if (v26 < v32)
    {
      v46 = v32;
    }

    v47 = v44 - v42;
    v48 = v41 / v39;
    if (v44 - v42 < 0.0 || (v49 = v46 - v45, v46 - v45 < 0.0))
    {
      v51 = v38;
      v53 = 0.0;
      v50 = v36;
    }

    else
    {
      if (v42 <= v36)
      {
        v50 = v42;
      }

      else
      {
        v50 = v36;
      }

      if (v42 + v47 >= v36)
      {
        v36 = v42 + v47;
      }

      if (v45 <= v38)
      {
        v51 = v45;
      }

      else
      {
        v51 = v38;
      }

      v52 = v45 + v49;
      if (v45 + v49 < v38)
      {
        v52 = v38;
      }

      v53 = v36 - v50;
      v54 = 0.0;
      if (v53 < 0.0 || (v43 = v52 - v51, v43 < 0.0))
      {
        v55 = 0.0;
LABEL_41:
        v4 = (this + 504);
        *(this + 126) = vcvtmd_s64_f64(v40 + 0.0000001);
        *(this + 127) = vcvtmd_s64_f64(v48 + 0.0000001);
        *(this + 128) = vcvtpd_s64_f64(v55 + v40);
        *(this + 129) = vcvtpd_s64_f64(v54 + v48);
        return *v4;
      }
    }

    if (v50 <= v40)
    {
      v56 = v50;
    }

    else
    {
      v56 = v40;
    }

    if (v53 + v50 >= v40)
    {
      v40 = v53 + v50;
    }

    if (v51 <= v48)
    {
      v57 = v51;
    }

    else
    {
      v57 = v48;
    }

    if (v43 + v51 >= v48)
    {
      v48 = v43 + v51;
    }

    v55 = v40 - v56;
    v54 = v48 - v57;
    v48 = v57;
    v40 = v56;
    goto LABEL_41;
  }

  v4 = &HGRectNull;
  return *v4;
}

uint64_t HGLazyPDFBitmapLoader::RenderPDF(uint64_t this, HGRenderer *a2)
{
  v3 = this;
  if ((*(this + 2176) & 1) != 0 || !*(this + 408))
  {
    OZRenderParams::OZRenderParams(v27, (this + 656));
    v18 = v3;
    ROI = HGRenderer::GetROI(a2, v3);
    v6 = v5;
    DoHighQualityResampling = OZRenderParams::getDoHighQualityResampling((v18 + 656));
    v8 = HIDWORD(ROI);
    v9 = *(v18 + 38);
    if (DoHighQualityResampling)
    {
      v10 = 3000;
    }

    else
    {
      v10 = 2000;
    }

    v23 = *(v18 + 37);
    v24 = v9;
    v11 = *(v18 + 40);
    v25 = *(v18 + 39);
    v26 = v11;
    v12 = *(v18 + 34);
    v19 = *(v18 + 33);
    v20 = v12;
    v13 = *(v18 + 36);
    v14 = v6 - ROI;
    v15 = HIDWORD(v6) - HIDWORD(ROI);
    v21 = *(v18 + 35);
    v22 = v13;
    if (v6 - ROI > v10 || v15 > v10)
    {
      v16 = v10 / v14;
      if (v16 > 1.0)
      {
        v16 = 1.0;
      }

      v17 = v10 / v15;
      LODWORD(ROI) = (v16 * ROI);
      if (v17 > 1.0)
      {
        v17 = 1.0;
      }

      LODWORD(v8) = (v17 * v8);
      v14 = (v16 * v6) - ROI;
      v15 = (v17 * SHIDWORD(v6)) - v8;
      if (v16 != 1.0)
      {
        v19 = vmulq_n_f64(v19, v16);
        v20 = vmulq_n_f64(v20, v16);
      }

      if (v17 != 1.0)
      {
        v21 = vmulq_n_f64(v21, v17);
        v22 = vmulq_n_f64(v22, v17);
      }
    }

    OZRenderParams::setWidth(v27, v14);
    OZRenderParams::setHeight(v27, v15);
    OZRenderParams::setImageType(v27, 1);
    v27[360] = 1;
    v28 = 0u;
    v29 = 0u;
    PCMatrix44Tmpl<double>::leftTranslate(&v19, COERCE_UNSIGNED_INT64(-ROI), -v8, 0.0);
    this = PCColorSpaceHandle::getCGColorSpace((v18 + 2080));
    __break(1u);
  }

  return this;
}

uint64_t HGLazyPDFBitmapLoader::RenderPage(HGLazyPDFBitmapLoader *this, HGPage *a2)
{
  v4 = *a2;
  v5 = *(this + 51);
  if (!v5 || *(this + 2176) == 1)
  {
    HGLazyPDFBitmapLoader::RenderPDF(this, *a2);
    v5 = *(this + 51);
  }

  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v9 = *(a2 + 6);
  v8 = *(a2 + 7);
  v10 = *(a2 + 1);
  if (v10)
  {
    (*(*v10 + 16))(v10);
    if (!v5)
    {
      return *(a2 + 1);
    }
  }

  else
  {
    *(a2 + 1) = HGGPURenderer::CreateBuffer(v4, *(a2 + 1), *(a2 + 8), 0, (*(this + 4) >> 12) & 1, *(a2 + 248));
    if (!v5)
    {
      return *(a2 + 1);
    }
  }

  ROI = HGRenderer::GetROI(v4, this);
  v13 = v12;
  v15 = HIDWORD(ROI);
  v16 = (v14 - ROI) / (*(**(this + 261) + 16))(*(this + 261));
  v17 = (v13 - v15) / (*(**(this + 261) + 24))(*(this + 261));
  v18 = (*(*v4 + 352))(v4, (v7 / v16) | ((v6 / v17) << 32), (v9 / v16) | ((v8 / v17) << 32), v5);
  (*(*v4 + 144))(v4, *(a2 + 1));
  (*(*v4 + 152))(v4, 0, v18, 0, 0);
  if (fabs(v16 + -1.0) < 0.0000001 && fabs(v17 + -1.0) < 0.0000001)
  {
    HGGPURenderer::Rect(v4, *(a2 + 1));
  }

  (*(*v18 + 24))(v18);
  return *(a2 + 1);
}

uint64_t HGLazyPDFBitmapLoader::RenderPageMetal(HGLazyPDFBitmapLoader *this, HGPage *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = *(this + 51);
  if (!v5 || *(this + 2176) == 1)
  {
    HGLazyPDFBitmapLoader::RenderPDF(this, *a2);
    v5 = *(this + 51);
  }

  v7 = *(a2 + 4);
  v6 = *(a2 + 5);
  v8 = *(a2 + 7);
  v37 = *(a2 + 6);
  v9 = *(a2 + 1);
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  else
  {
    *(a2 + 1) = HGGPURenderer::CreateBuffer(v4, *(a2 + 1), *(a2 + 8), 1, (*(this + 4) >> 12) & 1, *(a2 + 248));
  }

  (*(*v4 + 144))(v4, 0);
  if (v5)
  {
    ROI = HGRenderer::GetROI(v4, this);
    v13 = (v12 - HIDWORD(ROI));
    v14 = (v11 - ROI) / (*(**(this + 261) + 16))(*(this + 261));
    v15 = (v7 / v14);
    v36 = v6;
    v16 = v13 / (*(**(this + 261) + 24))(*(this + 261));
    v17 = (v6 / v16);
    v18 = (v37 / v14);
    *&v41.var0 = v15 | (v17 << 32);
    v19 = (v8 / v16);
    *&v41.var2 = v18 | (v19 << 32);
    v20 = HGGPURenderer::ConvertToMetalTexture(*a2, v41, v5);
    v21 = (*(*v4 + 368))(v4, *(this + 8), this);
    if (v21)
    {
      if (v22)
      {
        v23 = v22;
        HGMetalHandler::BindBuffer(v22, *(a2 + 1));
        v24 = HGMetalHandler::BindTexture(v23, 0, v20);
        ((*v23)[9])(v23, 0, 0, v24);
        ((*v23)[6])(v23, 0, 0);
        ((*v23)[10])(v23, 0);
        ((*v23)[11])(v23);
        v25 = -HGMetalTexture::GetTextureRect(v20);
        TextureRect = HGMetalTexture::GetTextureRect(v20);
        ((*v23)[12])(v23, v25, -HIDWORD(TextureRect), 0.0);
        v27 = xmmword_2603427D0;
        v28 = xmmword_2603427D0;
        *&v28 = v7;
        v29 = v28;
        *(&v29 + 1) = v8;
        v30 = xmmword_2603427D0;
        *&v30 = v37;
        v31 = v30;
        *(&v31 + 1) = v8;
        *(&v28 + 1) = v36;
        *(&v30 + 1) = v36;
        v39[0] = v29;
        v39[1] = v28;
        v32 = xmmword_2603427D0;
        *&v32 = v15;
        v33 = v32;
        *(&v33 + 1) = v19;
        v39[2] = v31;
        v39[3] = v30;
        *(&v32 + 1) = v17;
        v38[0] = v33;
        v38[1] = v32;
        *&v27 = v18;
        v34 = v27;
        *(&v34 + 1) = v19;
        *(&v27 + 1) = v17;
        v38[2] = v34;
        v38[3] = v27;
        HGMetalHandler::PrimitivesDraw(v23, 4u, v39, 4u, v38);
        (*(*v4 + 392))(v4, v23);
      }
    }

    (*(*v20 + 24))(v20);
  }

  return *(a2 + 1);
}

string_t HGLazyPDFBitmapLoader::GetProgram(HGLazyPDFBitmapLoader *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) <= 0x60B0F)
  {
    return 0;
  }

  v2 = HGString::sample2d(0x60B10, 0, 0, v7);
  v5 = HGString::c_str(v7, v2, v3, v4);
  HGString::~HGString(v7);
  return v5;
}

uint64_t HGLazyPDFBitmapLoader::RenderTile(HGLazyPDFBitmapLoader *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  PCMutex::lock((this + 2104));
  if (!*(this + 51) || *(this + 2176) == 1)
  {
    HGLazyPDFBitmapLoader::RenderPDF(this, v4);
  }

  PCMutex::unlock((this + 2104));
  ROI = HGRenderer::GetROI(v4, this);
  v7 = v6;
  v8 = (*(**(this + 261) + 16))(*(this + 261));
  v9 = (*(**(this + 261) + 24))(*(this + 261));
  v10 = HGGetTBC();
  v11 = HGObject::operator new(0x90uLL);
  HGTransform::HGTransform(v11);
  (*(*v11 + 144))(v11, 1.0 / ((v7 - ROI) / v8), 1.0 / ((HIDWORD(v7) - HIDWORD(ROI)) / v9));
  HGSampler::ReadTile(*(a2 + 42));
  (*(*v11 + 24))(v11);
  v12 = HGGetTBC();
  v13 = (*(a2 + 3) - *(a2 + 1)) * (*(a2 + 2) - *a2);
  v14 = *(*(a2 + 42) + 416);
  v15 = v14[2];
  v16 = v14[3] + v12 - v10;
  v14[6] -= v12 - v10;
  *v14 += *(*(this + 51) + 56) * v13;
  v14[2] = v15 - v13;
  v14[3] = v16;
  return 0;
}

double OZImageElement::castShadowMaxScale(OZImageElement *this, const OZRenderParams *a2)
{
  Footage = OZImageElement::getFootage(this);
  if (Footage && OZFootage::hasAlpha(Footage))
  {
    v5 = OZElement::castShadowMaxScale(this, a2);
    return v5 + v5;
  }

  else
  {

    return OZElement::castShadowMaxScale(this, a2);
  }
}

uint64_t OZImageElement::getAutomaticConversionType(OZImageElement *this)
{
  Footage = OZImageElement::getFootage(this);
  if (!Footage)
  {
    goto LABEL_4;
  }

  result = OZFootage::getDynamicRangeType(Footage);
  if (result == 2)
  {
    return result;
  }

  if (result)
  {
    return 0;
  }

LABEL_4:

  return OZElement::getAutomaticConversionType(this);
}

uint64_t OZImageElement::prerollBegin(OZImageElement *a1, CMTime *a2, uint64_t a3, uint64_t a4, double a5)
{
  OZSceneNode::prerollBegin(a1, a2, a3, a4, a5);
  Footage = OZImageElement::getFootage(a1);
  if (Footage)
  {
    v9 = Footage;
    v14 = *a2;
    if ((OZImageElement::hasSourceObjectForTime(a1, &v14) & 1) == 0)
    {
      v15 = 0;
      PMFrameRequest::PMFrameRequest(&v14, a3);
      WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
      OZImageElement::calculateFrameRequestSettings(a1, a2, WorkingColorDescription, v9, &v15, &v14, &v13, &v12);
    }
  }

  return 0;
}

void sub_2600D2358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, CGColorSpace *a39, CGColorSpace *a40)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a40);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a39);
  _Unwind_Resume(a1);
}

OZFootage *OZImageElement::prerollEnd(OZImageElement *this, CMTime *a2, PMFrameRequest *a3)
{
  OZSceneNode::prerollEnd(this, a2, a3);
  Footage = OZImageElement::getFootage(this);
  if (Footage)
  {
    v11 = *a2;
    if ((OZImageElement::hasSourceObjectForTime(this, &v11) & 1) == 0)
    {
      v12 = 0;
      PMFrameRequest::PMFrameRequest(&v11, a3);
      WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
      OZImageElement::calculateFrameRequestSettings(this, a2, WorkingColorDescription, Footage, &v12, &v11, &v10, &v9);
    }

    return 0;
  }

  return Footage;
}

void sub_2600D24A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CGColorSpace *a33, CGColorSpace *a34)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a34);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  _Unwind_Resume(a1);
}

OZFootage *OZImageElement::setRate(OZImageElement *this, CMTime *a2, PMFrameRequest *a3, double a4)
{
  OZSceneNode::setRate(this, a2, a3, a4);
  Footage = OZImageElement::getFootage(this);
  if (Footage)
  {
    v12 = *a2;
    if ((OZImageElement::hasSourceObjectForTime(this, &v12) & 1) == 0)
    {
      v13 = 0;
      PMFrameRequest::PMFrameRequest(&v12, a3);
      WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
      OZImageElement::calculateFrameRequestSettings(this, a2, WorkingColorDescription, Footage, &v13, &v12, &v11, &v10);
    }

    return 0;
  }

  return Footage;
}

void sub_2600D263C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, CGColorSpace *a39, CGColorSpace *a40)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a40);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a39);
  _Unwind_Resume(a1);
}

void OZImageElement::remapTokens(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  OZSceneNode::remapTokens(a1, a2, a3, a4);
  Footage = OZImageElement::getFootage(a1);
  if (!Footage)
  {
    return;
  }

  v8 = Footage;
  ValueAsInt = OZChannel::getValueAsInt((a1 + 21496), MEMORY[0x277CC08F0], 0.0);
  if (*(a2 + 513))
  {
    v10 = ValueAsInt;
  }

  else
  {
    v10 = 0;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 != 3)
      {
        return;
      }

LABEL_11:
      for (i = *a3; i != a3[1]; i += 6)
      {
        v12 = 0uLL;
        memset(&__p, 0, sizeof(__p));
        v13 = i[3];
        v14 = i[4];
        if (v13 == v14)
        {
          epoch = 0;
        }

        else
        {
          do
          {
            v36.value = 0;
            v15 = *v13;
            v34.epoch = v13[2];
            *&v34.value = v15;
            OZImageElement::globalToFootageTime(a1, &v34, &v35);
            std::vector<CMTime>::push_back[abi:ne200100](&__p, &v37.value);
            if (fabs(*&v36.value) >= 0.0000001)
            {
              std::vector<CMTime>::push_back[abi:ne200100](&__p, &v36.timescale);
            }

            v13 += 3;
          }

          while (v13 != v14);
          v13 = i[3];
          v12 = *&__p.value;
          epoch = __p.epoch;
        }

        *(i + 3) = v12;
        v19 = i[5];
        i[5] = epoch;
        __p.value = v13;
        __p.epoch = v19;
        if (v13)
        {
          *&__p.timescale = v13;
          operator delete(v13);
        }
      }

      return;
    }

    memset(&__p, 0, sizeof(__p));
    v26 = *a3;
    if (*a3 != a3[1])
    {
      do
      {
        v27 = 0uLL;
        memset(&v37, 0, sizeof(v37));
        v28 = v26[3];
        v29 = v26[4];
        if (v28 == v29)
        {
          v32 = 0;
        }

        else
        {
          do
          {
            getMotionBlurTimes(v28, *(a2 + 500), *(a2 + 496), a1, v8, *(a1 + 968), &__p, *(a2 + 504));
            value = __p.value;
            v31 = *&__p.timescale;
            while (value != v31)
            {
              std::vector<CMTime>::push_back[abi:ne200100](&v37, value);
              value += 2;
            }

            ++v28;
          }

          while (v28 != v29);
          v28 = v26[3];
          v27 = *&v37.value;
          v32 = v37.epoch;
        }

        *(v26 + 3) = v27;
        v33 = v26[5];
        v26[5] = v32;
        v37.value = v28;
        v37.epoch = v33;
        if (v28)
        {
          *&v37.timescale = v28;
          operator delete(v28);
        }

        v26 += 6;
      }

      while (v26 != a3[1]);
      if (__p.value)
      {
        *&__p.timescale = __p.value;
        operator delete(__p.value);
      }
    }
  }

  else
  {
    if (v10)
    {
      if (v10 != 1)
      {
        return;
      }

      goto LABEL_11;
    }

    v21 = *a3;
    v20 = a3[1];
    while (v21 != v20)
    {
      v22 = v21[3];
      if (v22 != v21[4])
      {
        do
        {
          v23 = *&v22->value;
          v37.epoch = v22->epoch;
          *&v37.value = v23;
          OZImageElement::globalToFootageTime(a1, &v37, &__p);
          v24 = *&__p.value;
          v22->epoch = __p.epoch;
          *&v22->value = v24;
          OZFootage::getFootageTime(v8, v22, &__p);
          v25 = *&__p.value;
          v22->epoch = __p.epoch;
          *&v22->value = v25;
          ++v22;
        }

        while (v22 != v21[4]);
        v20 = a3[1];
      }

      v21 += 6;
    }
  }
}

void sub_2600D2958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZImageElement::hintTokensWillImage(OZImageElement *a1, OZRenderParams *a2, uint64_t a3, uint64_t a4)
{
  OZSceneNode::hintTokensWillImage(a1, a2, a3, a4);
  Footage = OZImageElement::getFootage(a1);
  if (Footage)
  {
    v13 = 0;
    PMFrameRequest::PMFrameRequest(v12, a4);
    WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
    OZImageElement::calculateFrameRequestSettings(a1, a2, WorkingColorDescription, Footage, &v13, v12, &v11, &v10);
  }

  return 0;
}

void sub_2600D2B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, CGColorSpace *a36, CGColorSpace *a37)
{
  *(v37 - 56) = &a10;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 56));
  PCCFRef<CGColorSpace *>::~PCCFRef(&a37);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a36);
  _Unwind_Resume(a1);
}

OZFootage *OZImageElement::getTokensImage(OZImageElement *a1, OZRenderParams *a2, uint64_t a3, uint64_t a4)
{
  OZSceneNode::getTokensImage(a1, a2, a3, a4);
  Footage = OZImageElement::getFootage(a1);
  v8 = Footage;
  if (Footage)
  {
    if (*(Footage + 1009))
    {
      v14 = 0;
      PMFrameRequest::PMFrameRequest(v13, a4);
      WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
      OZImageElement::calculateFrameRequestSettings(a1, a2, WorkingColorDescription, v8, &v14, v13, &v12, &v11);
    }

    return 0;
  }

  return v8;
}

void sub_2600D2CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, CGColorSpace *a36, CGColorSpace *a37)
{
  *(v37 - 56) = &a10;
  std::vector<std::pair<CMTime,std::vector<CMTime>>>::__destroy_vector::operator()[abi:ne200100]((v37 - 56));
  PCCFRef<CGColorSpace *>::~PCCFRef(&a37);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a36);
  _Unwind_Resume(a1);
}

void *OZImageElement::pruneTokensAtTime(OZImageElement *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensAtTime(this, &v7, a3);
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v7 = *a2;
    return (*(*result + 160))(result, &v7, a3);
  }

  return result;
}

void *OZImageElement::pruneTokensExceptAtTime(OZImageElement *this, CMTime *a2, const char *a3)
{
  v7 = *a2;
  OZSceneNode::pruneTokensExceptAtTime(this, &v7, a3);
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v7 = *a2;
    return (*(*result + 168))(result, &v7, a3);
  }

  return result;
}

void *OZImageElement::pruneAllTokens(OZImageElement *this, const char *a2)
{
  OZSceneNode::pruneAllTokens(this, a2);
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v4 = *(*result + 176);

    return v4();
  }

  return result;
}

void OZPDFRender::~OZPDFRender(OZPDFRender *this)
{
  *this = &unk_287281BA8;
  v2 = (this + 1440);
  *(this + 180) = &unk_287281CA0;
  *(this + 182) = &unk_287281D68;
  OZRenderParams::~OZRenderParams((this + 16));
  OZChannelBase::setRangeName(v2, &off_287281D98);
  *(this + 182) = &unk_2872DEA38;
  *(this + 1472) = 0;
  PCWeakCount::~PCWeakCount(this + 183);
}

{
  *this = &unk_287281BA8;
  v2 = (this + 1440);
  *(this + 180) = &unk_287281CA0;
  *(this + 182) = &unk_287281D68;
  OZRenderParams::~OZRenderParams((this + 16));
  OZChannelBase::setRangeName(v2, &off_287281D98);
  *(this + 182) = &unk_2872DEA38;
  *(this + 1472) = 0;
  PCWeakCount::~PCWeakCount(this + 183);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toOZPDFRender::~OZPDFRender(OZPDFRender *this)
{
  v1 = this + *(*this - 32);
  *v1 = &unk_287281BA8;
  *(v1 + 180) = &unk_287281CA0;
  *(v1 + 182) = &unk_287281D68;
  OZRenderParams::~OZRenderParams((v1 + 16));
  OZChannelBase::setRangeName((v1 + 1440), &off_287281D98);
  *(v1 + 182) = &unk_2872DEA38;
  v1[1472] = 0;

  PCWeakCount::~PCWeakCount(v1 + 183);
}

{
  v1 = this + *(*this - 32);
  *v1 = &unk_287281BA8;
  *(v1 + 180) = &unk_287281CA0;
  *(v1 + 182) = &unk_287281D68;
  OZRenderParams::~OZRenderParams((v1 + 16));
  OZChannelBase::setRangeName((v1 + 1440), &off_287281D98);
  *(v1 + 182) = &unk_2872DEA38;
  v1[1472] = 0;
  PCWeakCount::~PCWeakCount(v1 + 183);

  JUMPOUT(0x2666E9F00);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_287281BA8;
  *(v1 + 180) = &unk_287281CA0;
  *(v1 + 182) = &unk_287281D68;
  OZRenderParams::~OZRenderParams((v1 + 16));
  OZChannelBase::setRangeName((v1 + 1440), &off_287281D98);
  *(v1 + 182) = &unk_2872DEA38;
  v1[1472] = 0;

  PCWeakCount::~PCWeakCount(v1 + 183);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_287281BA8;
  *(v1 + 180) = &unk_287281CA0;
  *(v1 + 182) = &unk_287281D68;
  OZRenderParams::~OZRenderParams((v1 + 16));
  OZChannelBase::setRangeName((v1 + 1440), &off_287281D98);
  *(v1 + 182) = &unk_2872DEA38;
  v1[1472] = 0;
  PCWeakCount::~PCWeakCount(v1 + 183);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZImageElement::OZImageElement_pageNumberImpl::getInstance(OZImageElement::OZImageElement_pageNumberImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_pageNumberImpl::getInstance(void)::OZImageElement_pageNumberImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_pageNumberImpl::getInstance(void)::OZImageElement_pageNumberImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_pageNumberImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_pageNumberImpl::_OZImageElement_pageNumber;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_pageNumberImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_pageNumberImpl::_OZImageElement_pageNumber)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_pageNumberInfo::getInstance(OZImageElement::OZImageElement_pageNumberInfo *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_pageNumberInfo::getInstance(void)::OZImageElement_pageNumberInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_pageNumberInfo::getInstance(void)::OZImageElement_pageNumberInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_pageNumberInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_pageNumberInfo::_OZImageElement_pageNumberInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_pageNumberInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_pageNumberInfo::_OZImageElement_pageNumberInfo)
  {
    operator new();
  }
}

OZImageElement::OZImageElement_pageNumberInfo *OZImageElement::OZImageElement_pageNumberInfo::OZImageElement_pageNumberInfo(OZImageElement::OZImageElement_pageNumberInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 1.0, 1.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872822D8;
  *(this + 10) = &unk_2872822F8;
  return this;
}

uint64_t OZImageElement::OZImageElement_timeScaleImpl::getInstance(OZImageElement::OZImageElement_timeScaleImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_timeScaleImpl::getInstance(void)::OZImageElement_timeScaleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_timeScaleImpl::getInstance(void)::OZImageElement_timeScaleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_timeScaleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_timeScaleImpl::_OZImageElement_timeScale;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_timeScaleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_timeScaleImpl::_OZImageElement_timeScale)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_retimeFrameCacheImpl::getInstance(OZImageElement::OZImageElement_retimeFrameCacheImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_retimeFrameCacheImpl::getInstance(void)::OZImageElement_retimeFrameCacheImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_retimeFrameCacheImpl::getInstance(void)::OZImageElement_retimeFrameCacheImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_retimeFrameCacheImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_retimeFrameCacheImpl::_OZImageElement_retimeFrameCache;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_retimeFrameCacheImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_retimeFrameCacheImpl::_OZImageElement_retimeFrameCache)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_loopDurationImpl::getInstance(OZImageElement::OZImageElement_loopDurationImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_loopDurationImpl::getInstance(void)::OZImageElement_loopDurationImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_loopDurationImpl::getInstance(void)::OZImageElement_loopDurationImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_loopDurationImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_loopDurationImpl::_OZImageElement_loopDuration;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_loopDurationImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_loopDurationImpl::_OZImageElement_loopDuration)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_layerImpl::getInstance(OZImageElement::OZImageElement_layerImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_layerImpl::getInstance(void)::OZImageElement_layerImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_layerImpl::getInstance(void)::OZImageElement_layerImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_layerImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_layerImpl::_OZImageElement_layer;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_layerImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_layerImpl::_OZImageElement_layer)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_layerInfo::getInstance(OZImageElement::OZImageElement_layerInfo *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_layerInfo::getInstance(void)::OZImageElement_layerInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_layerInfo::getInstance(void)::OZImageElement_layerInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_layerInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_layerInfo::_OZImageElement_layerInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_layerInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_layerInfo::_OZImageElement_layerInfo)
  {
    operator new();
  }
}

OZImageElement::OZImageElement_layerInfo *OZImageElement::OZImageElement_layerInfo::OZImageElement_layerInfo(OZImageElement::OZImageElement_layerInfo *this)
{
  PCString::PCString(&v3, "%");
  OZChannelInfo::OZChannelInfo(this, 0.0, 0.0, 0.01, 0.0001, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287282530;
  *(this + 10) = &unk_287282550;
  return this;
}

uint64_t OZImageElement::OZImageElement_dropInputIDImpl::getInstance(OZImageElement::OZImageElement_dropInputIDImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropInputIDImpl::getInstance(void)::OZImageElement_dropInputIDImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropInputIDImpl::getInstance(void)::OZImageElement_dropInputIDImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropInputIDImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropInputIDImpl::_OZImageElement_dropInputID;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropInputIDImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropInputIDImpl::_OZImageElement_dropInputID)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_dropInputIDInfo::getInstance(OZImageElement::OZImageElement_dropInputIDInfo *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropInputIDInfo::getInstance(void)::OZImageElement_dropInputIDInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropInputIDInfo::getInstance(void)::OZImageElement_dropInputIDInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropInputIDInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropInputIDInfo::_OZImageElement_dropInputIDInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropInputIDInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropInputIDInfo::_OZImageElement_dropInputIDInfo)
  {
    operator new();
  }
}

OZImageElement::OZImageElement_dropInputIDInfo *OZImageElement::OZImageElement_dropInputIDInfo::OZImageElement_dropInputIDInfo(OZImageElement::OZImageElement_dropInputIDInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 7.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287282620;
  *(this + 10) = &unk_287282640;
  return this;
}

uint64_t OZImageElement::OZImageElement_dropPanImpl::getInstance(OZImageElement::OZImageElement_dropPanImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropPanImpl::getInstance(void)::OZImageElement_dropPanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropPanImpl::getInstance(void)::OZImageElement_dropPanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropPanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropPanImpl::_OZImageElement_dropPan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropPanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropPanImpl::_OZImageElement_dropPan)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_dropPanInfo::getInstance(OZImageElement::OZImageElement_dropPanInfo *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropPanInfo::getInstance(void)::OZImageElement_dropPanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropPanInfo::getInstance(void)::OZImageElement_dropPanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropPanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropPanInfo::_OZImageElement_dropPanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropPanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropPanInfo::_OZImageElement_dropPanInfo)
  {
    operator new();
  }
}

OZImageElement::OZImageElement_dropPanInfo *OZImageElement::OZImageElement_dropPanInfo::OZImageElement_dropPanInfo(OZImageElement::OZImageElement_dropPanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -500.0, 500.0, 5.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287282710;
  *(this + 10) = &unk_287282730;
  return this;
}

uint64_t OZImageElement::OZImageElement_dropScaleImpl::getInstance(OZImageElement::OZImageElement_dropScaleImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropScaleImpl::getInstance(void)::OZImageElement_dropScaleImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropScaleImpl::getInstance(void)::OZImageElement_dropScaleImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropScaleImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropScaleImpl::_OZImageElement_dropScale;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropScaleImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropScaleImpl::_OZImageElement_dropScale)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_dropFillOpaqueImpl::getInstance(OZImageElement::OZImageElement_dropFillOpaqueImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropFillOpaqueImpl::getInstance(void)::OZImageElement_dropFillOpaqueImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropFillOpaqueImpl::getInstance(void)::OZImageElement_dropFillOpaqueImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropFillOpaqueImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropFillOpaqueImpl::_OZImageElement_dropFillOpaque;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropFillOpaqueImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropFillOpaqueImpl::_OZImageElement_dropFillOpaque)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_dropWidthImpl::getInstance(OZImageElement::OZImageElement_dropWidthImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropWidthImpl::getInstance(void)::OZImageElement_dropWidthImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropWidthImpl::getInstance(void)::OZImageElement_dropWidthImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropWidthImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropWidthImpl::_OZImageElement_dropWidth;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropWidthImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropWidthImpl::_OZImageElement_dropWidth)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_dropWidthInfo::getInstance(OZImageElement::OZImageElement_dropWidthInfo *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropWidthInfo::getInstance(void)::OZImageElement_dropWidthInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropWidthInfo::getInstance(void)::OZImageElement_dropWidthInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropWidthInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropWidthInfo::_OZImageElement_dropWidthInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropWidthInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropWidthInfo::_OZImageElement_dropWidthInfo)
  {
    operator new();
  }
}

OZImageElement::OZImageElement_dropWidthInfo *OZImageElement::OZImageElement_dropWidthInfo::OZImageElement_dropWidthInfo(OZImageElement::OZImageElement_dropWidthInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 1.0, 4294967300.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872828F0;
  *(this + 10) = &unk_287282910;
  return this;
}

uint64_t OZImageElement::OZImageElement_dropHeightImpl::getInstance(OZImageElement::OZImageElement_dropHeightImpl *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropHeightImpl::getInstance(void)::OZImageElement_dropHeightImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropHeightImpl::getInstance(void)::OZImageElement_dropHeightImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropHeightImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropHeightImpl::_OZImageElement_dropHeight;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropHeightImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropHeightImpl::_OZImageElement_dropHeight)
  {
    operator new();
  }
}

uint64_t OZImageElement::OZImageElement_dropHeightInfo::getInstance(OZImageElement::OZImageElement_dropHeightInfo *this)
{
  if (atomic_load_explicit(&OZImageElement::OZImageElement_dropHeightInfo::getInstance(void)::OZImageElement_dropHeightInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZImageElement::OZImageElement_dropHeightInfo::getInstance(void)::OZImageElement_dropHeightInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropHeightInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZImageElement::OZImageElement_dropHeightInfo::_OZImageElement_dropHeightInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZImageElement::OZImageElement_dropHeightInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZImageElement::OZImageElement_dropHeightInfo::_OZImageElement_dropHeightInfo)
  {
    operator new();
  }
}

OZImageElement::OZImageElement_dropHeightInfo *OZImageElement::OZImageElement_dropHeightInfo::OZImageElement_dropHeightInfo(OZImageElement::OZImageElement_dropHeightInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 1.0, 4294967300.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872829E0;
  *(this + 10) = &unk_287282A00;
  return this;
}

CGColorSpace **PCGetColorInColorSpace<unsigned char,unsigned char>(CGColorSpace *a1, unsigned int a2, CGColorSpace *a3, unsigned int a4, CGColorSpace *a5, _BYTE *a6, _BYTE *a7, _BYTE *a8)
{
  v13 = a3;
  result = PCColorSpaceHandle::isSameColorSpace(a1, a5, a3);
  if (result)
  {
    *a6 = a2;
    *a7 = v13;
    *a8 = a4;
  }

  else
  {
    PCColor::PCColor(&v28, a2 / 255.0, v13 / 255.0, a4 / 255.0, a1);
    v27 = 0;
    v26 = 0.0;
    PCColor::getRGB(&v28, &v27 + 1, &v27, &v26, a5);
    v17 = vcvtmd_s64_f64((*(&v27 + 1) * 255.0) + 0.5 + 0.0000001);
    v18 = v17;
    if (v17 > 255.0)
    {
      v18 = 255.0;
    }

    if (v17 >= 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = vcvtmd_s64_f64((*&v27 * 255.0) + 0.5 + 0.0000001);
    v21 = v20;
    *a6 = v19;
    if (v20 > 255.0)
    {
      v21 = 255.0;
    }

    v22 = v21;
    if (v20 < 0)
    {
      LOBYTE(v22) = 0;
    }

    *a7 = v22;
    v23 = vcvtmd_s64_f64((v26 * 255.0) + 0.5 + 0.0000001);
    v24 = v23;
    if (v23 > 255.0)
    {
      v24 = 255.0;
    }

    if (v23 >= 0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    *a8 = v25;
    return PCCFRef<CGColorSpace *>::~PCCFRef(&v28.var1._obj);
  }

  return result;
}

void sub_2600D52D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<PCBitmap>::shared_ptr[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>> *,std::shared_ptr<PCBitmap>::__shared_ptr_default_delete<PCBitmap,PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t PMFrameRequest::PMFrameRequest(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  v4 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v4;
  v5 = *(a2 + 120);
  v6 = *(a2 + 136);
  v7 = *(a2 + 152);
  *(a1 + 165) = *(a2 + 165);
  *(a1 + 152) = v7;
  *(a1 + 136) = v6;
  *(a1 + 120) = v5;
  v8 = *(a2 + 176);
  *(a1 + 176) = v8;
  if (v8)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v8);
  }

  v9 = *(a2 + 184);
  *(a1 + 184) = v9;
  if (v9)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v9);
  }

  v10 = *(a2 + 192);
  v11 = *(a2 + 208);
  v12 = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 208) = v11;
  *(a1 + 224) = v12;
  *(a1 + 192) = v10;
  return a1;
}

void OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::~RetimingExaminerTemplate(OZRetimingUtil::RetimingExaminer *a1)
{
  OZRetimingUtil::RetimingExaminer::~RetimingExaminer(a1);

  JUMPOUT(0x2666E9F00);
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getTimingGroupChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (v3)
    {
      return v3 + 18264;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getTimeScaleChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 20632;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getTimeReverseChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 20784;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getTimeRemapChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 20936;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getRetimeFrameChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 21192;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getRetimeFrameCacheChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 21344;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getEndConditionChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 21752;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getLoopDurationChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 22008;
      }
    }
  }

  return result;
}

char *OZRetimingUtil::RetimingExaminerTemplate<OZImageElement>::getDurationCacheChannel(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 840))(a2);
  if (result)
  {
    if (result)
    {
      v3 = result;
      if (OZImageElement::shouldHideRetiming(result))
      {
        return 0;
      }

      else
      {
        return v3 + 22160;
      }
    }
  }

  return result;
}

void *std::vector<OZPtcDecisionInfo>::__assign_with_size[abi:ne200100]<OZPtcDecisionInfo*,OZPtcDecisionInfo*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4) < a4)
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

    if (a4 <= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x2AAAAAAAAAAAAAALL)
      {
        v11 = 0x555555555555555;
      }

      else
      {
        v11 = v10;
      }

      std::vector<OZPtcDecisionInfo>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 4) >= a4)
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

void std::vector<OZPtcDecisionInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<OZPtcDecisionInfo>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<OZPtcDecisionInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<CMTime *>,CMTime,std::__identity,std::__less<void,void>>(uint64_t a1, CMTime *a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a3;
    do
    {
      v6 = (a1 + 24 * (v4 >> 1));
      v7 = *v6;
      time1.epoch = *(v6 + 2);
      *&time1.value = v7;
      v10 = *a2;
      v8 = CMTimeCompare(&time1, &v10);
      if (v8 >= 0)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v8 < 0)
      {
        a1 = v6 + 24;
      }
    }

    while (v4);
  }

  return a1;
}

void std::vector<FxBalancedBlendRecord>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 2;
        std::allocator<FxBalancedBlendRecord>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator<FxBalancedBlendRecord>::destroy[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

double std::vector<FxBalancedBlendRecord>::__construct_one_at_end[abi:ne200100]<FxBalancedBlendRecord const&>(uint64_t a1, double *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  *v4 = *a2;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  result = a2[1];
  v4[1] = result;
  *(a1 + 8) = v4 + 2;
  return result;
}

uint64_t std::vector<FxBalancedBlendRecord>::__emplace_back_slow_path<FxBalancedBlendRecord const&>(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<FxBalancedBlendRecord>>(a1, v7);
  }

  v8 = (16 * v2);
  v18 = 0;
  v19 = v8;
  v20 = v8;
  v9 = *a2;
  *v8 = *a2;
  v10 = v8;
  v11 = v8;
  if (v9)
  {
    (*(*v9 + 16))(v9);
    v10 = v19;
    v11 = v20;
  }

  v8[1] = a2[1];
  *&v20 = v11 + 2;
  v12 = *(a1 + 8);
  v13 = (v10 + *a1 - v12);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FxBalancedBlendRecord>,FxBalancedBlendRecord*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<FxBalancedBlendRecord>::~__split_buffer(&v18);
  return v17;
}

void sub_2600D5FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<FxBalancedBlendRecord>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<FxBalancedBlendRecord>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<FxBalancedBlendRecord>,FxBalancedBlendRecord*>(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v4 = a4;
    v6 = a2;
    v8 = a2;
    do
    {
      v9 = *v8;
      *v4 = *v8;
      v10 = v4;
      if (v9)
      {
        (*(*v9 + 16))(v9);
        v10 = v15;
      }

      v4[1] = v8[1];
      v8 += 2;
      v4 = v10 + 2;
      v15 = v10 + 2;
    }

    while (v8 != a3);
    v13 = 1;
    while (v6 != a3)
    {
      std::allocator<FxBalancedBlendRecord>::destroy[abi:ne200100](a1, v6);
      v6 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FxBalancedBlendRecord>,FxBalancedBlendRecord*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<FxBalancedBlendRecord>,FxBalancedBlendRecord*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<FxBalancedBlendRecord>,FxBalancedBlendRecord*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t *std::_AllocatorDestroyRangeReverse<std::allocator<FxBalancedBlendRecord>,FxBalancedBlendRecord*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 2;
      result = std::allocator<FxBalancedBlendRecord>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }

  return result;
}

void **std::__split_buffer<FxBalancedBlendRecord>::~__split_buffer(void **a1)
{
  std::__split_buffer<FxBalancedBlendRecord>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__split_buffer<FxBalancedBlendRecord>::clear[abi:ne200100](uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    v3 = result;
    do
    {
      v4 = *(v3 + 32);
      *(v3 + 16) = v1 - 16;
      result = std::allocator<FxBalancedBlendRecord>::destroy[abi:ne200100](v4, (v1 - 16));
      v1 = *(v3 + 16);
    }

    while (v1 != v2);
  }

  return result;
}

void makeBalancedBlendTree_RetimeAddBlend6<std::__wrap_iter<FxBalancedBlendRecord *>>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  v3 = v4;
  v4[2] = &v3;
  v4[3] = v4;
  if (a1 != a2)
  {
    std::insert_iterator<std::multiset<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>>::operator=[abi:ne200100]();
  }

  FxBalancedBlendRecord::node((v3 + 4), a3);
  std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::destroy(&v3, v4[0]);
}

void sub_2600D6A28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<FxBalancedBlendRecord,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<FxBalancedBlendRecord,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::__find_leaf(void *a1, void *a2, void *a3, OZConstantNode *this)
{
  v6 = a2;
  if (a1 + 1 != a2)
  {
    InitialValue = OZConstantNode::getInitialValue((a2 + 4));
    if (InitialValue < OZConstantNode::getInitialValue(this))
    {

      return std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::__find_leaf_low(a1, a3, this);
    }
  }

  if (*a1 == v6)
  {
    v11 = v6;
LABEL_17:
    if (*v6)
    {
      *a3 = v11;
      return v11 + 1;
    }

    else
    {
      *a3 = v6;
    }

    return v6;
  }

  v10 = *v6;
  if (*v6)
  {
    do
    {
      v11 = v10;
      v10 = v10[1];
    }

    while (v10);
  }

  else
  {
    v12 = v6;
    do
    {
      v11 = v12[2];
      v13 = *v11 == v12;
      v12 = v11;
    }

    while (v13);
  }

  v14 = OZConstantNode::getInitialValue(this);
  if (v14 >= OZConstantNode::getInitialValue((v11 + 4)))
  {
    goto LABEL_17;
  }

  return std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::__find_leaf_high(a1, a3, this);
}

uint64_t std::unique_ptr<std::__tree_node<FxBalancedBlendRecord,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<FxBalancedBlendRecord,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<FxBalancedBlendRecord,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::__find_leaf_high(uint64_t a1, void *a2, OZConstantNode *this)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        InitialValue = OZConstantNode::getInitialValue(this);
        if (InitialValue >= OZConstantNode::getInitialValue((v5 + 4)))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::__find_leaf_low(uint64_t a1, void *a2, OZConstantNode *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        InitialValue = OZConstantNode::getInitialValue((v4 + 4));
        if (InitialValue < OZConstantNode::getInitialValue(a3))
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t std::__destroy_at[abi:ne200100]<FxBalancedBlendRecord,0>(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

void sub_2600D6E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<FxBalancedBlendRecord,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<FxBalancedBlendRecord,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::destroy(a1, *a2);
    std::__tree<FxBalancedBlendRecord,OZLessBalancedBlendRecord,std::allocator<FxBalancedBlendRecord>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<FxBalancedBlendRecord,0>(a2 + 4);

    operator delete(a2);
  }
}

uint64_t OZObject::iterator_t<OZFootageLayer,false,true,OZObject::defaultValidator>::typeCheck(void *a1)
{
  if (*a1 == a1[2])
  {
    return 1;
  }

  result = *(*a1 + 16);
  if (result)
  {
  }

  return result;
}

void *OZObject::iterator_t<OZFootageLayer,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

void std::__tree<std::__value_type<PCHash128,HGRef<HGNode>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,HGRef<HGNode>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,HGRef<HGNode>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<PCHash128,HGRef<HGNode>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,HGRef<HGNode>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,HGRef<HGNode>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<PCHash128,HGRef<HGNode>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,HGRef<HGNode>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,HGRef<HGNode>>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<PCHash128 const,HGRef<HGNode>>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__destroy_at[abi:ne200100]<std::pair<PCHash128 const,HGRef<HGNode>>,0>(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 24))(result);
  }

  return result;
}

uint64_t PCThreadSpecific<HGLazyPDFBitmapLoaderCache>::destroy(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 8);
    std::__tree<std::__value_type<PCHash128,HGRef<HGNode>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,HGRef<HGNode>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,HGRef<HGNode>>>>::destroy(result, *(result + 8));
    *v1 = v2;
    v1[2] = 0;
    *v2 = 0;

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<PCHash128,HGRef<HGNode>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,HGRef<HGNode>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,HGRef<HGNode>>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(uint64_t a1, const PCHash128 *a2)
{
  v2 = *std::__tree<std::__value_type<PCHash128,PCRect<double>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,PCRect<double>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,PCRect<double>>>>::__find_equal<PCHash128>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<PCHash128,HGRef<HGNode>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<PCHash128,HGRef<HGNode>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<PCHash128 const,HGRef<HGNode>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_2600D7B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v11 - 56);
  _Unwind_Resume(a1);
}

void sub_2600D810C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 - 104);
  _Unwind_Resume(a1);
}

uint64_t OZScene::begin_t<OZ3DEngineSceneElement,false,true>@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 1208);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 1200;
  *(a2 + 24) = 0;
  if (v3 != result + 1200)
  {
    v4 = *(v3 + 16);
    {
      do
      {
        OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::increment(a2);
        result = OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::typeCheck(a2);
      }

      while ((result & 1) == 0);
    }
  }

  return result;
}

void *OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::operator++@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = 0u;
  while (1)
  {
    result = OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::increment(a1);
    if (*a1 == *(a1 + 16))
    {
      break;
    }

    v4 = *(*a1 + 16);
    if (v4)
    {
      if (result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::typeCheck(void *a1)
{
  if (*a1 == a1[2])
  {
    return 1;
  }

  result = *(*a1 + 16);
  if (result)
  {
  }

  return result;
}

void *OZObject::iterator_t<OZ3DEngineSceneElement,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

uint64_t OZImageElement::hasSourceObjectForTime(OZImageElement *this, CMTime *a2)
{
  result = OZImageElement::isDropZone(this);
  if (result)
  {
    if (*(theApp + 81) == 1)
    {
      return OZImageElement::isBackgroundDropZone(this) ^ 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZImageElement::openMedia(OZImageElement *this)
{
  Footage = OZImageElement::getFootage(this);
  if (!Footage)
  {
    return 0;
  }

  v3 = Footage;
  if (*(Footage + 1009) || (!(*(*this + 272))(this) || !*((*(*this + 272))(this) + 1584) ? (v5 = 0) : (v5 = *(*((*(*this + 272))(this) + 1584) + 160)), OZImageElement::isBackgroundDropZone(this) && ((OZImageElement::isDropZoneReplaced(this) | v5) & 1) == 0))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*v3 + 104))(v3);
  }

  OZImageElement::updatePropertiesFromFootage(this, v3);
  return v4;
}

CGColorSpace **OZImageElement::appendFillOpaqueNodes@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, FxColorDescription *a4@<X3>, double *a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  *a6 = *a2;
  if (v11)
  {
    (*(*v11 + 16))(v11);
  }

  PCColor::PCColor(&v24);
  *v23 = *a3;
  *&v23[16] = *(a3 + 16);
  Color = OZChannelColor::getColor((a1 + 27880), v23, &v24, 0.0);
  if (!a5)
  {
    v19 = *a2;
    v21 = v19;
    if (v19)
    {
      (*(*v19 + 16))(v19, Color);
    }

    appendFillOpaqueNodesHelper(&v21, &v24, a4, 0);
  }

  *v23 = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  *&v23[16] = _Q0;
  (*(*a1 + 1488))(a1, v23, a3);
  if (PCMatrix44Tmpl<double>::transformRect<double>(a5, v23, v23))
  {
    v18 = *a2;
    v22 = v18;
    if (v18)
    {
      (*(*v18 + 16))(v18);
    }

    appendFillOpaqueNodesHelper(&v22, &v24, a4, v23);
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v24.var1._obj);
}

void sub_2600D9058(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  if (v18)
  {
    (*(*v18 + 24))(v18);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  _Unwind_Resume(a1);
}

void appendFillOpaqueNodesHelper(int a1, PCColor *a2, FxColorDescription *this, double *a4)
{
  v10 = 0;
  v11 = 0;
  FxGetRGBAForRenderingCGI(a2, this, &v11 + 1, &v11, &v10 + 1, &v10);
  if (a4)
  {
    v5 = HGRectMake4i(*a4, a4[1], a4[2] + *a4, a4[3] + a4[1]);
    v7 = v6;
    v8 = HGObject::operator new(0x1A0uLL);
    *&v12.var0 = v5;
    *&v12.var2 = v7;
    HGSolidColor::HGSolidColor(v8, v12);
  }

  v9 = HGObject::operator new(0x1A0uLL);
  HGSolidColor::HGSolidColor(v9);
}

CGColorSpace *OZImageElement::getHeliumGraph@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, float64x2_t *a5@<X4>, CGColorSpace **a6@<X8>)
{
  Footage = OZImageElement::getFootage(a1);
  WorkingColorSpace = OZRenderParams::getWorkingColorSpace(a2);
  if (!Footage && OZImageElement::isDropZone(a1))
  {
    if (!FxColorDescription::getCGColorSpace(a4))
    {
      FxColorDescription::setCGColorSpace(a4, WorkingColorSpace);
    }

    OZImageElement::createDropZoneGridHeliumGraph(a2, a3, a4, a5);
  }

  v83 = 0;
  if (!OZImageElement::isDropZone(a1))
  {
    goto LABEL_66;
  }

  if (*(a1 + 30272))
  {
    v20 = *a4;
    *&v50 = v20;
    if (v20)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v20);
    }

    *(&v50 + 1) = *(a4 + 8);
    LODWORD(v51) = *(a4 + 16);
    LOBYTE(v52) = *(a4 + 24);
    PCPrint("File %s, line %d should not have been reached:\n\t", v13, v14, v15, v16, v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/MotioniOS/Ozone/CompositorObject/OZImageElement.mm");
    pcAbortImpl();
  }

  if (OZImageElement::isBackgroundDropZone(a1))
  {
    OZPlaybackEngine::OZPlaybackEngine(&v50, 1);
    if (OZPlaybackEngine::operator==((a2 + 940), &v50) || (OZPlaybackEngine::OZPlaybackEngine(&v84, 0), OZPlaybackEngine::operator==((a2 + 940), &v84)))
    {
      PVInputIndex = OZRenderParams::getPVInputIndex(a2, *(a1 + 80));
      if (OZImageElement::resizeToMatchInputSource(a1))
      {
        PVInputIndex = 0;
      }

      if ((PVInputIndex & 0x80000000) == 0)
      {
        v22 = *(a2 + 992);
        if (v22)
        {
          if (PVInputIndex < *(v22 + 16))
          {
            v23 = *a4;
            *&v50 = v23;
            if (v23)
            {
              PCCFRefTraits<CGColorSpace *>::retain(v23);
            }

            *(&v50 + 1) = *(a4 + 8);
            LODWORD(v51) = *(a4 + 16);
            LOBYTE(v52) = *(a4 + 24);
            OZImageElement::getHeliumGraphFromInputRef(a2, a1, PVInputIndex, &v50, a5, &v84);
            obj = v84._pcColorDesc._colorSpaceRef._obj;
            if (v83 == v84._pcColorDesc._colorSpaceRef._obj)
            {
              if (!v83)
              {
LABEL_87:
                v36 = &v50;
                goto LABEL_65;
              }

              (*(*v84._pcColorDesc._colorSpaceRef._obj + 24))(v84._pcColorDesc._colorSpaceRef._obj);
              obj = v83;
            }

            else
            {
              if (v83)
              {
                (*(*v83 + 24))(v83);
                obj = v84._pcColorDesc._colorSpaceRef._obj;
              }

              v83 = obj;
            }

            if (obj)
            {
              PCCFRef<CGColorSpace *>::operator=(a4, &v50);
              *(a4 + 8) = *(&v50 + 1);
              *(a4 + 16) = v51;
              *(a4 + 24) = v52;
              *a6 = v83;
              v83 = 0;
              v45 = &v50;
              goto LABEL_69;
            }

            goto LABEL_87;
          }
        }
      }
    }

LABEL_66:
    if (Footage)
    {
      v81 = 0;
      v50 = xmmword_260343AA0;
      v51 = 0x3FF0000000000000;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0x3FF0000000000000;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v63 = 0;
      v60 = 0;
      v61 = 0;
      v59 = 0x3FF0000000000000;
      v62 = 0;
      v37 = *(MEMORY[0x277CC08F0] + 16);
      v64 = *MEMORY[0x277CC08F0];
      v65 = v37;
      v66 = 0;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0x100000000;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 768;
      v75 = 0x408F400000000000;
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v79 = -1;
      __asm { FMOV            V0.2D, #1.0 }

      v80 = _Q0;
      v49 = 0;
      OZImageElement::calculateFrameRequestSettings(a1, a2, a4, Footage, &v81, &v50, &v49 + 1, &v49);
    }

    OZFootage::getErrorHeliumGraph(a2, a3, a4);
  }

  v25 = OZImageElement::getDropZoneType(a1) == 2;
  if (OZImageElement::isPassthroughPlaceholder(a1))
  {
    v25 = OZRenderParams::getPVInputIndex(a2, *(a1 + 80));
  }

  if (OZImageElement::resizeToMatchInputSource(a1))
  {
    v26 = 0;
  }

  else
  {
    v26 = v25;
  }

  ValueAsInt = OZChannel::getValueAsInt((a1 + 27728), MEMORY[0x277CC08F0], 0.0);
  v84._pcColorDesc._colorSpaceRef._obj = *a4;
  if (v84._pcColorDesc._colorSpaceRef._obj)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v84._pcColorDesc._colorSpaceRef._obj);
  }

  *&v84._pcColorDesc._dynamicRange = *(a4 + 8);
  v84._pcColorDesc._toneMapMethod._gain = *(a4 + 16);
  v84._isPremultiplied = *(a4 + 24);
  if (ValueAsInt)
  {
    FxColorDescription::setCGColorSpace(&v84, WorkingColorSpace);
  }

  OZRenderParams::getFFInputNode(a2, v26, &v50);
  v27 = v50;
  if (v83 == v50)
  {
    if (!v83 || ((*(*v50 + 24))(), !v83))
    {
LABEL_64:
      v36 = &v84;
LABEL_65:
      PCCFRef<CGColorSpace *>::~PCCFRef(&v36->_pcColorDesc._colorSpaceRef._obj);
      goto LABEL_66;
    }
  }

  else
  {
    if (v83)
    {
      (*(*v83 + 24))(v83);
      v27 = v50;
    }

    v83 = v27;
    if (!v27)
    {
      goto LABEL_64;
    }
  }

  OZRenderParams::getFFInputPixelTransform(a2, v26, &v50);
  if (&v50 != a5)
  {
    for (i = 0; i != 8; i += 2)
    {
      f64 = a5[i].f64;
      v30 = *(&v50 + i * 16 + 16);
      *f64 = *(&v50 + i * 16);
      f64[1] = v30;
    }
  }

  OZPlaybackEngine::OZPlaybackEngine(v48, 0);
  if (OZPlaybackEngine::operator==((a2 + 940), v48))
  {
    PCMatrix44Tmpl<double>::rightScale(a5->f64, *(a2 + 1072), *(a2 + 1072), 1.0);
  }

  if (!FxColorDescription::getCGColorSpace(a4))
  {
    FxColorDescription::setCGColorSpace(a4, WorkingColorSpace);
  }

  if (!FxColorDescription::getCGColorSpace(&v84))
  {
    CGColorSpace = FxColorDescription::getCGColorSpace(a4);
    FxColorDescription::setCGColorSpace(&v84, CGColorSpace);
  }

  WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
  FxApplyColorConform(&v83, WorkingColorDescription, &v84, v48);
  v33 = v48[0];
  if (v83 == v48[0])
  {
    if (v83)
    {
      (*(*v48[0] + 24))(v48[0]);
    }
  }

  else
  {
    if (v83)
    {
      (*(*v83 + 24))(v83);
      v33 = v48[0];
    }

    v83 = v33;
  }

  PCCFRef<CGColorSpace *>::operator=(a4, &v84._pcColorDesc._colorSpaceRef._obj);
  *(a4 + 8) = *&v84._pcColorDesc._dynamicRange;
  *(a4 + 16) = v84._pcColorDesc._toneMapMethod._gain;
  *(a4 + 24) = v84._isPremultiplied;
  v34 = v83;
  if (!v83)
  {
    goto LABEL_64;
  }

  if (ValueAsInt)
  {
    v82 = v83;
    (*(*v83 + 16))(v83);
    OZImageElement::appendFillOpaqueNodes(a1, &v82, a2, &v84, a5->f64, &v50);
    v35 = v50;
    if (v83 == v50)
    {
      if (v83)
      {
        (*(*v50 + 24))(v50);
      }
    }

    else
    {
      if (v83)
      {
        (*(*v83 + 24))(v83);
      }

      v83 = v35;
      *&v50 = 0;
    }

    (*(*v34 + 24))(v34);
    FxApplyColorConform(&v83, &v84, a4, &v50);
    v44 = v50;
    if (v83 == v50)
    {
      if (v83)
      {
        (*(*v50 + 24))(v50);
      }
    }

    else
    {
      if (v83)
      {
        (*(*v83 + 24))(v83);
        v44 = v50;
      }

      v83 = v44;
    }
  }

  OZPlaybackEngine::OZPlaybackEngine(&v50, 0);
  if (OZPlaybackEngine::operator==((a2 + 940), &v50))
  {
    OZImageElement::isEffectSource(a1);
  }

  *a6 = v83;
  v83 = 0;
  v45 = &v84;
LABEL_69:
  PCCFRef<CGColorSpace *>::~PCCFRef(&v45->_pcColorDesc._colorSpaceRef._obj);
  result = v83;
  if (v83)
  {
    return (*(*v83 + 24))(v83);
  }

  return result;
}

void sub_2600DA084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, CGColorSpace *a37)
{
  v39 = *(v37 - 224);
  if (v39)
  {
    (*(*v39 + 24))(v39);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a37);
  v40 = *(v37 - 232);
  if (v40)
  {
    (*(*v40 + 24))(v40);
  }

  _Unwind_Resume(a1);
}

uint64_t OZRenderParams::getPVInputIndex(OZRenderParams *this, unsigned int a2)
{
  v2 = *(this + 132);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 132);
  while (1)
  {
    v4 = *(v3 + 7);
    if (v4 <= a2)
    {
      break;
    }

LABEL_6:
    v3 = *v3;
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (v4 < a2)
  {
    ++v3;
    goto LABEL_6;
  }

  v6 = (this + 1056);
  do
  {
    v7 = v2[7];
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v2;
    }

    v2 = *&v2[2 * v9];
  }

  while (v2);
  if (v6 == (this + 1056) || v6[7] > a2)
  {
    v6 = (this + 1056);
  }

  return v6[8];
}

void *OZRenderParams::getFFInputNode@<X0>(void *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v3 = this[124];
  if (!v3 || (v6 = *(v3 + 8), v4 = (v3 + 8), (v5 = v6) == 0))
  {
LABEL_8:
    *a3 = 0;
    return this;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_7:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_7;
  }

  v9 = v4;
  do
  {
    v10 = *(v5 + 8);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v5;
    }

    v5 = v5[v12];
  }

  while (v5);
  if (v9 == v4 || *(v9 + 8) > a2)
  {
    v9 = v4;
  }

  this = v9[5];
  *a3 = this;
  if (this)
  {
    return (*(*this + 16))();
  }

  return this;
}

__n128 OZRenderParams::getFFInputPixelTransform@<Q0>(OZRenderParams *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 155);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  v5 = *(v4 + 72);
  if (!v5)
  {
LABEL_9:
    *(a3 + 120) = 0x3FF0000000000000;
    *(a3 + 80) = 0x3FF0000000000000;
    *(a3 + 40) = 0x3FF0000000000000;
    *a3 = 0x3FF0000000000000;
    result.n128_u64[0] = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    return result;
  }

  v6 = *(v4 + 72);
  while (1)
  {
    v7 = *(v6 + 8);
    if (v7 <= a2)
    {
      break;
    }

LABEL_8:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (v7 < a2)
  {
    ++v6;
    goto LABEL_8;
  }

  v9 = v4 + 72;
  v10 = v4 + 72;
  do
  {
    v11 = *(v5 + 32);
    v12 = v11 >= a2;
    v13 = v11 < a2;
    if (v12)
    {
      v10 = v5;
    }

    v5 = *(v5 + 8 * v13);
  }

  while (v5);
  if (v10 == v9 || *(v10 + 32) > a2)
  {
    v10 = v9;
  }

  v14 = *(v10 + 40);
  v15 = *(v10 + 56);
  v16 = *(v10 + 88);
  *(a3 + 32) = *(v10 + 72);
  *(a3 + 48) = v16;
  *a3 = v14;
  *(a3 + 16) = v15;
  result = *(v10 + 104);
  v17 = *(v10 + 120);
  v18 = *(v10 + 152);
  *(a3 + 96) = *(v10 + 136);
  *(a3 + 112) = v18;
  *(a3 + 64) = result;
  *(a3 + 80) = v17;
  return result;
}

uint64_t OZImageElement::getHeliumGraphFromInputRef@<X0>(OZRenderParams *this@<X1>, uint64_t a2@<X0>, unsigned int a3@<W2>, uint64_t a4@<X3>, float64x2_t *a5@<X4>, uint64_t *a6@<X8>)
{
  *a6 = 0;
  OZRenderParams::getFFInputNode(this, a3, &v39);
  if (*&v39.f64[0])
  {
    *a6 = *&v39.f64[0];
    OZRenderParams::getPVInputSize(this, a3, &v36);
    OZRenderParams::getFFInputPixelTransform(this, a3, &v39);
    if (&v39 != a5)
    {
      for (i = 0; i != 8; i += 2)
      {
        v12 = &a5[i];
        v13 = *(&v39 + i * 16 + 16);
        *v12 = *(&v39 + i * 16);
        v12[1] = v13;
      }
    }

    OZImageElement::getDropZoneTransformForMediaRef(a2, &v36, &v39, 1.0);
    PCMatrix44Tmpl<double>::rightMult(a5, v39.f64);
    ValueAsInt = OZChannel::getValueAsInt((a2 + 27728), MEMORY[0x277CC08F0], 0.0);
    WorkingColorSpace = OZRenderParams::getWorkingColorSpace(this);
    v16 = *a4;
    v33._pcColorDesc._colorSpaceRef._obj = v16;
    if (v16)
    {
      PCCFRefTraits<CGColorSpace *>::retain(v16);
    }

    *&v33._pcColorDesc._dynamicRange = *(a4 + 8);
    v33._pcColorDesc._toneMapMethod._gain = *(a4 + 16);
    v33._isPremultiplied = *(a4 + 24);
    if (ValueAsInt)
    {
      FxColorDescription::setCGColorSpace(&v33, WorkingColorSpace);
    }

    if (!FxColorDescription::getCGColorSpace(a4))
    {
      FxColorDescription::setCGColorSpace(a4, WorkingColorSpace);
    }

    WorkingColorDescription = OZRenderParams::getWorkingColorDescription(this);
    DynamicRange = FxColorDescription::getDynamicRange(WorkingColorDescription);
    FxColorDescription::setDynamicRange(a4, DynamicRange);
    ToneMapMethod = FxColorDescription::getToneMapMethod(WorkingColorDescription);
    FxColorDescription::setToneMapMethod(a4, ToneMapMethod);
    if (!FxColorDescription::getCGColorSpace(&v33))
    {
      CGColorSpace = FxColorDescription::getCGColorSpace(a4);
      FxColorDescription::setCGColorSpace(&v33, CGColorSpace);
    }

    FxApplyColorConform(a6, &v33, a4, &v32);
    v21 = *a6;
    v22 = v32;
    if (*a6 == v32)
    {
      if (v21)
      {
        (*(*v32 + 24))(v32);
      }
    }

    else
    {
      if (v21)
      {
        (*(*v21 + 24))(v21);
        v22 = v32;
      }

      *a6 = v22;
    }

    PCCFRef<CGColorSpace *>::~PCCFRef(&v33._pcColorDesc._colorSpaceRef._obj);
  }

  if (OZImageElement::removeBackground(a2) || (result = OZImageElement::addExtraLighting(a2), result))
  {
    OZImageElement::shouldRotateMatteBuffer(a2);
    if (*((*(*a2 + 272))(a2) + 144) == 1)
    {
      OZRenderParams::getFFInputNode(this, 1u, &v39);
      if (*&v39.f64[0])
      {
        OZRenderParams::getFFInputNode(this, 2u, &v36);
        v24 = v36.n128_u64[0];
        if (v36.n128_u64[0])
        {
          (*(*v36.n128_u64[0] + 24))(v36.n128_u64[0]);
        }

        if (*&v39.f64[0])
        {
          (*(**&v39.f64[0] + 24))(*&v39.f64[0]);
        }

        if (v24)
        {
          OZRenderParams::getFFInputNode(this, 1u, v45);
          OZRenderParams::getFFInputNode(this, 2u, &v44);
          v42[1] = 0;
          v42[2] = 0;
          v42[0] = &unk_2871F25A8;
          v43 = 0;
          v25 = (*(*a2 + 272))(a2);
          v26 = v25;
          if (v25)
          {
            OZScene::begin_t<OZLight,false,true>(v25, &v36);
            v27 = v26[151];
            memset(v34, 0, sizeof(v34));
            v35 = 1065353216;
            v33._pcColorDesc._colorSpaceRef._obj = (v26 + 150);
            *&v33._pcColorDesc._dynamicRange = v27;
            *&v33._pcColorDesc._toneMapMethod._gain = v26 + 150;
            v33._isPremultiplied = 0;
            while (v36.n128_u64[0] != v33._pcColorDesc._colorSpaceRef._obj)
            {
              if (v36.n128_u64[0] == v37)
              {
                v28 = 0;
              }

              else
              {
                v28 = *(v36.n128_u64[0] + 16);
                if (v28)
                {
                }
              }

              OZLight::buildLiLight(v28, this, &v39);
              if ((*(this + 515) & 1) == 0 && (v40 - 1) <= 2 && v41 == 1)
              {
                v41 = 0;
              }

              LiLightSet::add(v42, &v39);
              LiLight::~LiLight(&v39);
              OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::operator++(&v36);
            }

            std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v34);
            std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v38);
          }

          v30 = HGObject::operator new(0x1A0uLL);
          OZHeMatteNormalCompositeNode::OZHeMatteNormalCompositeNode(v30);
        }
      }
    }

    if (OZImageElement::getMatteBuffer(a2))
    {
LABEL_44:
      v29 = HGObject::operator new(0x1B0uLL);
      OZHeMatteInt8::OZHeMatteInt8(v29);
    }

    OZRenderParams::getFFInputNode(this, 1u, &v39);
    result = *&v39.f64[0];
    if (*&v39.f64[0])
    {
      (*(**&v39.f64[0] + 24))(*&v39.f64[0]);
      goto LABEL_44;
    }
  }

  return result;
}

void sub_2600DB7CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v13 = STACK[0x2F8];
  PCSharedCount::~PCSharedCount(v10 + 1);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v11 - 208);
  v14 = *(v11 - 176);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = *(v11 - 168);
  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (*a10)
  {
    (*(**a10 + 24))(*a10);
  }

  _Unwind_Resume(a1);
}

OZFootage *OZImageElement::getElementFieldDominance(OZImageElement *this, CMTime *a2, const OZRenderParams *a3)
{
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v5 = *a2;
    return OZFootage::getFieldDominance(result, &v5);
  }

  return result;
}

void OZImageElement::getFitScale(OZImageElement *this@<X0>, const OZRenderState *a2@<X1>, double *a3@<X8>)
{
  __asm { FMOV            V0.2D, #1.0 }

  *a3 = _Q0;
  v10 = a3 + 1;
  if (OZImageElement::getDropZoneType(this))
  {
    Footage = OZImageElement::getFootage(this);
    if (Footage)
    {
      v12 = Footage;
      v13 = MEMORY[0x277CC08F0];
      OZChannel::getValueAsDouble((this + 29232), MEMORY[0x277CC08F0], 0.0);
      v15 = v14;
      OZChannel::getValueAsDouble((this + 29384), v13, 0.0);
      v17 = v16;
      v23 = 0;
      (*(*v12 + 1504))(v12, &v23 + 4, &v23, a2);
      if ((OZFootage::isResolutionIndependent(v12) & 1) == 0)
      {
        v18 = vcvtmd_s64_f64(v15 + 0.00001 + 0.0000001);
        v19 = vcvtmd_s64_f64(v17 + 0.00001 + 0.0000001);
        if (v18 != *(&v23 + 1) || v19 != *&v23)
        {
          v21 = (v19 / *&v23);
          *a3 = (v18 / *(&v23 + 1));
          a3[1] = v21;
        }
      }
    }
  }

  else
  {
    v22 = MEMORY[0x277CC08F0];

    OZChannelPosition::getPosition((this + 26144), v22, a3, v10, 0.0);
  }
}

void OZImageElement::getDropZoneTransform(OZImageElement *this@<X0>, OZRenderState *a2@<X1>, uint64_t a3@<X8>)
{
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
  OZRenderState::OZRenderState(&v30, a2);
  v6 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((this + 26720), MEMORY[0x277CC08F0], 0.0);
  v8 = v7;
  OZChannel::getValueAsDouble((this + 26872), v6, 0.0);
  v10 = v9;
  OZChannel::getValueAsDouble((this + 27424), v6, 0.0);
  v12 = v11;
  OZChannel::getValueAsDouble((this + 27576), v6, 0.0);
  v14 = v13;
  PVInputIndex = OZRenderParams::getPVInputIndex(a2, *(this + 20));
  v16 = *&a2[3].var8;
  if (!v16 || (PVInputIndex & 0x80000000) != 0 || PVInputIndex >= *(v16 + 16))
  {
    OZImageElement::getFitScale(this, &v30, v27);
    PCMatrix44Tmpl<double>::leftScale(a3, v27[0], v27[1], 1.0);
  }

  else
  {
    v28 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v29 = _Q0;
    OZImageElement::getFootageBounds(this, &v28, a2, 0);
    v26[0] = v28;
    v26[1] = v29;
    OZImageElement::getFitMatrixForMediaRef(this, v26, v27, 1.0);
    if (v27 != a3)
    {
      for (i = 0; i != 16; i += 4)
      {
        v23 = (a3 + i * 8);
        v24 = *&v27[i + 2];
        *v23 = *&v27[i];
        v23[1] = v24;
      }
    }
  }

  v25 = PCMatrix44Tmpl<double>::leftScale(a3, v12, v14, 1.0);
  v25.f64[0] = v8;
  PCMatrix44Tmpl<double>::leftTranslate(a3, v25, v10, 0.0);
}

void OZImageElement::getFootageBounds(uint64_t a1, float64x2_t *a2, OZRenderParams *a3, int a4)
{
  if (OZImageElement::isDropZone(a1) && *(theApp + 81) == 1 && (PVInputIndex = OZRenderParams::getPVInputIndex(a3, *(a1 + 80)), (v9 = *(a3 + 124)) != 0) && (PVInputIndex & 0x80000000) == 0 && PVInputIndex < *(v9 + 16))
  {
    OZRenderParams::getPVInputSize(a3, PVInputIndex, &v56);
    v10 = vcvtq_f64_f32(vcvt_f32_f64(*&v56.var0.var3));
    __asm { FMOV            V1.2D, #0.5 }

    *a2 = vsubq_f64(0, vaddq_f64(vmulq_f64(v10, _Q1), 0));
    a2[1] = v10;
  }

  else
  {
    Footage = OZImageElement::getFootage(a1);
    if (Footage)
    {
      v17 = Footage;
      OZRenderState::OZRenderState(&v56, a3);
      OZRenderState::OZRenderState(&v55, &v56);
      v24 = xmmword_260343AA0;
      v25 = 0x3FF0000000000000;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0x3FF0000000000000;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v37 = 0;
      v34 = 0;
      v35 = 0;
      v33 = 0x3FF0000000000000;
      v36 = 0;
      v38 = *MEMORY[0x277CC08F0];
      v39 = *(MEMORY[0x277CC08F0] + 16);
      v40 = 0;
      v41 = 0;
      v42 = 0;
      v43 = 0;
      v44 = 0x100000000;
      v45 = 0;
      v46 = 0;
      v47 = 0;
      v48 = 768;
      v49 = 0x408F400000000000;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = -1;
      __asm { FMOV            V0.2D, #1.0 }

      v54 = _Q0;
      var0 = v55.var0;
      OZImageElement::globalToFootageTime(a1, &var0, &v22);
      *&v55.var0.var0 = v22;
      v55.var0.var3 = v23;
      HIDWORD(v34) = OZChannel::getValueAsInt((a1 + 22312), MEMORY[0x277CC08F0], 0.0);
      if (a4)
      {
        (*(*v17 + 1568))(v17, a2, &v55, &v24);
      }

      else
      {
        OZFootage::getTextureResolution(v17, a2, &v55, &v24);
      }

      __asm { FMOV            V2.2D, #0.5 }

      *a2 = vsubq_f64(*a2, vaddq_f64(*a2, vmulq_f64(a2[1], _Q2)));
      PCCFRef<CGColorSpace *>::~PCCFRef(&v47);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v46);
    }

    else
    {
      __asm { FMOV            V0.2D, #-1.0 }

      a2[1] = _Q0;
    }
  }
}

void sub_2600DC2C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, CGColorSpace *a38)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a38);
  PCCFRef<CGColorSpace *>::~PCCFRef((v38 + 176));
  _Unwind_Resume(a1);
}

void OZImageElement::getFitMatrixForMediaRef(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
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
  Footage = OZImageElement::getFootage(a1);
  if (Footage)
  {
    v9 = (*(*Footage + 1368))(Footage);
    OZRenderState::OZRenderState(&v41);
    OZScene::getCurrentTime(*(a1 + 968), &v39);
    *&v41.var0.var0 = v39;
    v41.var0.var3 = v40;
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    if (OZImageElement::isBackgroundDropZone(a1))
    {
      if (!OZImageElement::isPassthroughPlaceholder(a1) && !OZImageElement::resizeToMatchInputSource(a1))
      {
        v12 = MEMORY[0x277CC08F0];
        OZChannel::getValueAsDouble((a1 + 29232), MEMORY[0x277CC08F0], 0.0);
        v14 = v13;
        OZChannel::getValueAsDouble((a1 + 29384), v12, 0.0);
        v16 = v15;
        v38 = 0.0;
        v39.n128_u64[0] = 0;
        v36 = 0.0;
        v37 = 0.0;
        v34 = 0.0;
        v35 = 0.0;
        v33 = 0.0;
        OZChannel::getValueAsDouble((a1 + 26280), v12, 0.0);
        OZChannel::getValueAsDouble((a1 + 26432), v12, 0.0);
        if ((*(*a1 + 1608))(a1))
        {
          (*(*a1 + 1728))(a1, &v41, &v39, &v38, &v37, &v36);
        }

        OZTransformNode::getPivot(a1, &v35, &v34, &v33, &v41);
        v17 = v14 - v39.n128_f64[0] - v38;
        v18 = v16 - v37 - v36;
        ValueAsInt = OZChannel::getValueAsInt((a1 + 22720), MEMORY[0x277CC08F0], 0.0);
        if (ValueAsInt == 2)
        {
          v21 = v9 * v17 / a4 / v10;
          v23 = v18 / v11;
          goto LABEL_39;
        }

        if (ValueAsInt == 1)
        {
          v29 = v17;
          v31 = 0.0;
          v32 = 0.0;
          v30 = 0;
          (*(*a1 + 1312))(a1, &v32, &v31, &v30, &v41, 1);
          if (v32 >= 1.0 || v32 <= 0.0)
          {
            v21 = 1.0;
          }

          else
          {
            v21 = 1.0 / v32;
          }

          if (v31 >= 1.0 || v31 <= 0.0)
          {
            v23 = 1.0;
          }

          else
          {
            v23 = 1.0 / v31;
          }

          v24 = v10 * v21;
          v25 = v11 * v23;
          v26 = (v10 * v21);
          v27 = (v11 * v23);
          if (v26 > 4096 || v27 > 4096)
          {
            if (v26 <= v27)
            {
              v26 = (v11 * v23);
            }

            if (v26 <= 1)
            {
              v26 = 1;
            }

            v28 = 4096.0 / v26;
            v24 = floor(v24 * v28);
            v25 = floor(v25 * v28);
          }

          if (OZImageElement::isDropZoneReplaced(a1))
          {
            goto LABEL_39;
          }

          if (v10 >= v11)
          {
            if (v24 >= v29)
            {
              goto LABEL_39;
            }

            v23 = v29 * v21 / v24;
          }

          else
          {
            if (v25 >= v18)
            {
              goto LABEL_39;
            }

            v23 = v18 * v23 / v25;
          }
        }

        else if (v10 * a4 / v11 <= v9 * v17 / v18)
        {
          v23 = v9 * v17 / a4 / v10;
        }

        else
        {
          v23 = v18 / v11;
        }

        v21 = v23;
LABEL_39:
        PCMatrix44Tmpl<double>::rightScale(a3, 1.0 / v21, 1.0 / v23, 1.0);
        if (a4 != 1.0)
        {
          *a3 = *a3 * a4;
          *(a3 + 32) = *(a3 + 32) * a4;
          *(a3 + 64) = *(a3 + 64) * a4;
          *(a3 + 96) = *(a3 + 96) * a4;
        }
      }
    }
  }
}

double OZImageElement::getDropZoneTransformForMediaRef@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, float64x2_t *a3@<X8>, double a4@<D0>)
{
  v6 = a2[1];
  v17[0] = *a2;
  v17[1] = v6;
  OZImageElement::getFitMatrixForMediaRef(a1, v17, a3, a4);
  v7 = MEMORY[0x277CC08F0];
  OZChannel::getValueAsDouble((a1 + 26720), MEMORY[0x277CC08F0], 0.0);
  v9 = v8;
  OZChannel::getValueAsDouble((a1 + 26872), v7, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 27424), v7, 0.0);
  v13 = v12;
  OZChannel::getValueAsDouble((a1 + 27576), v7, 0.0);
  v15 = PCMatrix44Tmpl<double>::leftScale(a3, v13, v14, 1.0);
  v15.f64[0] = v9;

  *&result = *&PCMatrix44Tmpl<double>::leftTranslate(a3, v15, v11, 0.0);
  return result;
}

__n128 OZRenderParams::getPVInputSize@<Q0>(OZRenderParams *this@<X0>, unsigned int a2@<W1>, __n128 *a3@<X8>)
{
  v3 = *(this + 126);
  if (!v3)
  {
LABEL_7:
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    a3[1] = result;
    return result;
  }

  v4 = *(this + 126);
  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= a2)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_6;
  }

  v11 = this + 1008;
  do
  {
    v12 = *(v3 + 8);
    _CF = v12 >= a2;
    v13 = v12 < a2;
    if (_CF)
    {
      v11 = v3;
    }

    v3 = *&v3[8 * v13];
  }

  while (v3);
  if (v11 == this + 1008 || *(v11 + 8) > a2)
  {
    v11 = this + 1008;
  }

  result = *(v11 + 40);
  v14 = *(v11 + 56);
  *a3 = result;
  a3[1] = v14;
  return result;
}

BOOL OZImageElement::getDropZoneSourceBounds(OZImageElement *a1, float64x2_t *a2, OZRenderParams *a3, int a4)
{
  OZImageElement::getFootageBounds(a1, a2, a3, a4);
  OZImageElement::getDropZoneTransform(a1, a3, v8);
  return PCMatrix44Tmpl<double>::transformRect<double>(v8, a2->f64, a2);
}

uint64_t OZImageElement::setLightParameters(PCArray_base *a1, uint64_t a2, void *a3, double *a4, uint64_t a5)
{
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  v6 = *(a2 + 12);
  if (v6 < 1)
  {
    v11 = 0;
LABEL_19:
    v34 = (v11 + 3);
    do
    {
      (*(**a3 + 96))(*a3, v34, 0.0, 0.0, 0.0, 0.0);
      v34 = (v34 + 1);
    }

    while (v34 != 7);
  }

  else
  {
    v10 = 0;
    v11 = 0;
    if (v6 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = v6;
    }

    do
    {
      if (v10 >= *(a2 + 12))
      {
        PCArray_base::badIndex(a1);
      }

      LiLight::LiLight(v43, (*(a2 + 16) + 944 * v10));
      v13 = v48;
      if (v48 != 3)
      {
        v41 = v50;
        v42 = 0x3FF0000000000000;
        v39 = 0u;
        v40 = v49;
        v38 = 0u;
        PCMatrix44Tmpl<double>::transform<double>(a4, &v40, &v38);
        PCMatrix44Tmpl<double>::transform_normal<double>(a5, v47, &v36, v14, v15);
        v17 = v47[3];
        v18 = v44;
        v19 = v45;
        v20 = v46;
        var0 = v43[75].var0;
        if (v13 == 2)
        {
          v22 = *&v43[72].var0;
          v23 = *&v43[73].var0;
          v24 = *&v43[74].var0;
          (*(**a3 + 96))(*a3, 19, v22, v23, v24, 1.0);
          v26 = *(&v38 + 1);
          v25 = *&v38;
          v16.n128_u32[0] = 1.0;
          v27 = *&v39;
        }

        else
        {
          v28 = sqrt(v36.f64[0] * v36.f64[0] + v36.f64[1] * v36.f64[1] + v37 * v37);
          if (fabs(v28) < 0.000000100000001)
          {
            v28 = 1.0;
          }

          v27 = v37 / v28;
          v26 = v36.f64[1] / v28;
          v25 = v36.f64[0] / v28;
          v16.n128_u64[0] = 0;
        }

        v29 = v27;
        v30 = v26;
        v31 = v25;
        (*(**a3 + 96))(*a3, (v11 + 7), v31, v30, v29, v16);
        v32 = v17;
        (*(**a3 + 96))(*a3, (v11 + 3), v18 * v32, v19 * v32, v20 * v32, 1.0);
        v33 = *&var0;
        *(&v53 + v11) = v13;
        *(&v51 + v11) = v33;
        if (v11 >= 4)
        {
          LiLight::~LiLight(v43);
          goto LABEL_23;
        }

        ++v11;
      }

      LiLight::~LiLight(v43);
      ++v10;
    }

    while (v10 != v12);
    if (v11 <= 3)
    {
      goto LABEL_19;
    }
  }

LABEL_23:
  (*(**a3 + 96))(*a3, 17, v53, SHIDWORD(v53), v54, SHIDWORD(v54));
  return (*(**a3 + 96))(*a3, 18, *&v51, *(&v51 + 1), *&v52, *(&v52 + 1));
}

void sub_2600DCC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  LiLight::~LiLight(va);
  _Unwind_Resume(a1);
}

uint64_t *OZScene::begin_t<OZLight,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

OZFootage *OZImageElement::didFinishLoadingIntoScene(OZImageElement *this)
{
  OZElement::didFinishLoadingIntoScene(this);
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v3 = result;
    if ((*(*result + 1432))(result))
    {
      OZChannel::setMax((this + 22312), 3.40282347e38);
    }

    OZImageElement::updatePropertiesFromFootage(this, v3);

    return OZImageElement::ptcLoadCinematicScript(this);
  }

  return result;
}

OZFootage *OZImageElement::ptcLoadCinematicScript(OZImageElement *this)
{
  result = OZImageElement::getFootage(this);
  if (result)
  {
    v4 = result;
    result = OZFootage::isCinematographyAvailable(result, v3);
    if (result)
    {
      v6 = *(v4 + 1009);
      v7 = OZChannelBase::setRangeName(v6, v5);
      OZFootage::ensureClipIsOpen(v4);
      result = (*(*v7 + 344))(&v10, v6[10].var12);
      if (result)
      {
        *(this + 3787) = v10;
        v8 = objc_alloc_init(MEMORY[0x277D3E850]);
        v9[0] = 0;
        v9[1] = v9;
        v9[2] = 0x2020000000;
        operator new();
      }
    }
  }

  return result;
}

uint64_t OZImageElement::writeBody(id *this, PCSerializerWriteStream *a2, uint64_t a3, int a4, uint64_t a5)
{
  PCSerializerWriteStream::pushScope(a2, &OZImageElementScope);
  if (OZImageElement::getFootage(this))
  {
    v10 = *(this + 7550);
    if (v10)
    {
      (*(*a2 + 16))(a2, 2);
      (*(*a2 + 56))(a2, v10);
      (*(*a2 + 24))(a2);
    }
  }

  hasBeenRetimedFromLastHash = OZImageElement::hasBeenRetimedFromLastHash(this);
  (*(*a2 + 16))(a2, 3);
  (*(*a2 + 48))(a2, hasBeenRetimedFromLastHash ^ 1u);
  (*(*a2 + 24))(a2);
  if (this[3789])
  {
    PCAsciiStream::PCAsciiStream(v19);
    v12 = [this[3789] changesDictionary];
    v20 = 0;
    v13 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v20];
    PCAsciiStream::write(v19, [v13 bytes], objc_msgSend(v13, "length"));
    PCAsciiStream::close(v19);
    (*(*a2 + 16))(a2, 4);
    (*(*a2 + 16))(a2, 5);
    (*(*a2 + 48))(a2, 0);
    (*(*a2 + 24))(a2);
    PCAsciiStream::getString(v19, &v18);
    (*(*a2 + 16))(a2, 6);
    (*(*a2 + 104))(a2, &v18);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v18);
    (*(*a2 + 24))(a2);
    PCAsciiStream::~PCAsciiStream(v19);
  }

  if (this[3788])
  {
    PCAsciiStream::PCAsciiStream(v19);
    v14 = [this[3788] changesDictionary];
    v20 = 0;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v20];
    PCAsciiStream::write(v19, [v15 bytes], objc_msgSend(v15, "length"));
    PCAsciiStream::close(v19);
    (*(*a2 + 16))(a2, 4);
    (*(*a2 + 16))(a2, 5);
    (*(*a2 + 48))(a2, 1);
    (*(*a2 + 24))(a2);
    PCAsciiStream::getString(v19, &v17);
    (*(*a2 + 16))(a2, 6);
    (*(*a2 + 104))(a2, &v17);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v17);
    (*(*a2 + 24))(a2);
    PCAsciiStream::~PCAsciiStream(v19);
  }

  PCSerializerWriteStream::popScope(a2);
  return OZElement::writeBody(this, a2, a3, a4, a5);
}

void sub_2600DD5A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, char a11)
{
  PCString::~PCString(&a9);
  PCAsciiStream::~PCAsciiStream(&a11);
  _Unwind_Resume(a1);
}

uint64_t OZImageElement::parseBegin(OZImageElement *this, PCSerializerReadStream *a2)
{
  *(this + 30290) = 1;
  *(this + 8146) = 0;
  OZElement::parseBegin(this, a2);
  PCSerializerReadStream::pushScope(a2, &OZImageElementScope);
  return 1;
}

uint64_t non-virtual thunk toOZImageElement::parseBegin(OZImageElement *this, PCSerializerReadStream *a2)
{
  *(this + 30242) = 1;
  *(this + 8134) = 0;
  OZElement::parseBegin((this - 48), a2);
  PCSerializerReadStream::pushScope(a2, &OZImageElementScope);
  return 1;
}

uint64_t OZImageElement::parseEnd(OZImageElement *this, PCSerializerReadStream *a2)
{
  v4 = this + 28672;
  OZElement::parseEnd(this, a2);
  OZChannelBase::setFlag((this + 21192), 0x20000, 1);
  OZChannelBase::setFlag((this + 21344), 0x20000, 1);
  if (OZChanObjectManipRef::getObjectID((this + 19112)) && !OZChanObjectManipRef::getObjectID((this + 18904)))
  {
    OZChanObjectRefWithPicker::assign((this + 18904), (this + 19112));
    OZChannelBase::resetFlag((this + 18904), 10, 0);
    OZChanObjectManipRef::setObjectID((this + 19112), 0, 0);
    OZChannelBase::setFlag((this + 19112), 10, 0);
  }

  v4[1618] = 0;
  if (*(a2 + 26) == 5 && *(a2 + 27) >= 7u)
  {
    OZChannel::setValue((this + 29992), MEMORY[0x277CC08F0], 1.0, 0);
  }

  v5 = MEMORY[0x277CC08F0];
  OZChannel::setValue((this + 29992), MEMORY[0x277CC08F0], 0.0, 0);
  v4[1472] = OZChannel::getValueAsInt((this + 29992), v5, 0.0) != 0;
  if (OZImageElement::isBackgroundDropZone(this))
  {
    v6 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
    if (v6 && CFStringCompare(v6, @"com.apple.FinalCutApp", 1uLL) == kCFCompareEqualTo)
    {
      (*(*a2 + 24))(a2);
      return 0;
    }

    v7 = (*(*this + 272))(this);
    if (v7)
    {
      v8 = *(v7 + 1584);
      if (v8)
      {
        OZDocument::getFilename(v8, &v12);
        PCURL::PCURL(&v11, &v12, 0);
        if (OZDocumentBundleFormatUtils::isMotionDocURLInMotionBundle(&v11, v9))
        {
          (*(*a2 + 24))(a2);
          PCURL::~PCURL(&v11);
          PCString::~PCString(&v12);
          return 0;
        }

        PCURL::~PCURL(&v11);
        PCString::~PCString(&v12);
      }
    }
  }

  return 1;
}

uint64_t OZImageElement::parseElement(OZImageElement *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v6 = this + 28672;
  v24 = 0;
  OZElement::parseElement(this, a2, a3);
  v7 = *(a3 + 2);
  if (v7 <= 2)
  {
    if (v7 == 1)
    {
      (*(*a3 + 32))(a3, &v24 + 4);
      v22[0] = 0;
      v17 = (*(**(*(this + 2803) + 8) + 256))();
      v17.n128_u32[0] = HIDWORD(v24);
      v18 = v17.n128_u64[0];
      if (v18 > 0.0)
      {
        OZChannel::setMax((this + 22312), v18);
        LODWORD(v19) = HIDWORD(v24);
        v18 = v19;
      }

      OZChannel::setValue((this + 22312), MEMORY[0x277CC08F0], v18, 0);
    }

    else if (v7 == 2)
    {
      (*(*a3 + 32))(a3, &v24);
      if (v24)
      {
        OZChannel::setMax((this + 19320), v24);
        LODWORD(v16) = v24;
        OZChannel::setSliderMax((this + 19320), v16);
        OZChannelBase::resetFlag((this + 19320), 2, 0);
      }

      else
      {
        OZChannel::setMax((this + 19320), 1.0);
        OZChannel::setSliderMax((this + 19320), 1.0);
        OZChannelBase::setFlag((this + 19320), 2, 0);
      }
    }
  }

  else
  {
    switch(v7)
    {
      case 3:
        (*(*a3 + 72))(a3, this + 30145);
        break;
      case 5:
        (*(*a3 + 32))(a3, this + 32584);
        break;
      case 6:
        PCSharedCount::PCSharedCount(&v23);
        PCSerializerReadStream::getAsString(a2, a3, &v23);
        PCAsciiStream::PCAsciiStream(v22);
        v8 = PCString::size(&v23);
        v9 = malloc_type_malloc(v8, 0xE1B27A9BuLL);
        CStr = PCString::createCStr(&v23);
        PCAsciiStream::open(v22, CStr);
        v11 = PCString::size(&v23);
        v12 = PCAsciiStream::read(v22, v9, v11);
        PCAsciiStream::close(v22);
        free(CStr);
        v13 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v9 length:v12];
        v14 = *(v6 + 978);
        if (v14 == 1)
        {

          *(this + 3790) = OZImageElement::decodeScriptFromData(v20, v13);
        }

        else if (!v14)
        {

          *(this + 3791) = OZImageElement::decodeScriptFromData(v15, v13);
        }

        PCAsciiStream::~PCAsciiStream(v22);
        PCString::~PCString(&v23);
        break;
    }
  }

  *(v6 + 382) = v24;
  return 1;
}

uint64_t OZImageElement::decodeScriptFromData(OZImageElement *this, NSData *a2)
{
  v6 = 0;
  v2 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:a2 error:&v6];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v2 decodePropertyListForKey:*MEMORY[0x277CCA308]];
  [v3 finishDecoding];

  return v4;
}

OZFootage *OZImageElement::isCinematographyAvailable(OZImageElement *this)
{
  result = OZImageElement::getFootage(this);
  if (result)
  {

    return OZFootage::isCinematographyAvailable(result, v2);
  }

  return result;
}

void OZImageElement::ptcRefreshCinematographyInternalDataFromScript(OZImageElement *this)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *(this + 3789);
  if (v1)
  {
    *(this + 4071) = *(this + 4070);
    memset(&v37, 0, sizeof(v37));
    *&start.start.value = *MEMORY[0x277CC08F0];
    start.start.epoch = *(MEMORY[0x277CC08F0] + 16);
    duration = **&MEMORY[0x277CC0888];
    CMTimeRangeMake(&v37, &start.start, &duration);
    start = v37;
    obj = [v1 decisionsInTimeRange:&start];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v3 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    v4 = v3;
    if (v3)
    {
      v5 = *v32;
      do
      {
        v6 = 0;
        do
        {
          if (*v32 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v31 + 1) + 8 * v6);
          v8 = [v7 trackIdentifier];
          memset(&start.start.timescale, 0, 40);
          start.start.value = v8;
          *&start.start.timescale = [v7 groupIdentifier];
          if (v7)
          {
            [v7 time];
          }

          else
          {
            memset(&start.start.epoch, 0, 24);
          }

          LOBYTE(start.duration.epoch) = [v7 isUserDecision];
          BYTE1(start.duration.epoch) = [v7 isStrongDecision];
          BYTE2(start.duration.epoch) = [v7 isGroupDecision];
          v9 = *(this + 4071);
          v10 = *(this + 4072);
          if (v9 >= v10)
          {
            v14 = *(this + 4070);
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v14) >> 4);
            v16 = v15 + 1;
            if (v15 + 1 > 0x555555555555555)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v14) >> 4);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x2AAAAAAAAAAAAAALL)
            {
              v18 = 0x555555555555555;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<OZPtcDecisionInfo>>(this + 32560, v18);
            }

            v19 = 48 * v15;
            v20 = *&start.start.value;
            v21 = *&start.duration.timescale;
            *(v19 + 16) = *&start.start.epoch;
            *(v19 + 32) = v21;
            *v19 = v20;
            v13 = 48 * v15 + 48;
            v22 = *(this + 4070);
            v23 = *(this + 4071) - v22;
            v24 = 48 * v15 - v23;
            memcpy((v19 - v23), v22, v23);
            v25 = *(this + 4070);
            *(this + 4070) = v24;
            *(this + 4071) = v13;
            *(this + 4072) = 0;
            if (v25)
            {
              operator delete(v25);
            }
          }

          else
          {
            v11 = *&start.start.value;
            v12 = *&start.duration.timescale;
            v9[1] = *&start.start.epoch;
            v9[2] = v12;
            *v9 = v11;
            v13 = (v9 + 3);
          }

          *(this + 4071) = v13;
          v6 = (v6 + 1);
        }

        while (v4 != v6);
        v3 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
        v4 = v3;
      }

      while (v3);
    }

    v26 = *(this + 121);
    if (v26)
    {
      v27 = *(v26 + 1584);
      if (v27)
      {
        Instance = OZCurrentThread::getInstance(v3);
        if (PCThread::isSelf(*(Instance + 8)))
        {
          OZDocument::postNotification(v27, 8);
        }

        else
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = *"";
          block[2] = ___ZN14OZImageElement46ptcRefreshCinematographyInternalDataFromScriptEv_block_invoke;
          block[3] = &__block_descriptor_40_e5_v8__0l;
          block[4] = v27;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }
    }
  }
}

OZChannelBase *OZImageElement::ptcRefreshCinematographyDataChannels(OZImageElement *this)
{
  v24 = *MEMORY[0x277D85DE8];
  Footage = OZImageElement::getFootage(this);
  if (Footage && (OZFootage::isCinematographyAvailable(Footage, v3) & 1) != 0)
  {
    result = OZChannelBase::resetFlag(this + 271, 2, 1);
    v5 = *(this + 3789);
    if (v5)
    {
      OZImageElement::ptcSyncChangesDictionaryFromScript(this);
      OZImageElement::ptcRefreshCinematographyInternalDataFromScript(this);
      OZChannel::deleteAllKeyframes((this + 30888), MEMORY[0x277CC08F0]);
      memset(&v22, 0, sizeof(v22));
      (*(*this + 1128))(&v20, this);
      v16 = *&v20.start.value;
      epoch = v20.start.epoch;
      (*(*this + 1144))(&start, this, &v16);
      (*(*this + 1128))(&v16, this);
      duration = v18;
      CMTimeRangeMake(&v22, &start, &duration);
      v20 = v22;
      v6 = [v5 framesInTimeRange:&v20];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      result = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
      if (result)
      {
        v7 = result;
        v8 = *v13;
        do
        {
          v9 = 0;
          do
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v12 + 1) + 8 * v9);
            memset(&v20, 0, 24);
            if (v10)
            {
              [v10 time];
            }

            [v10 focusDistance];
            OZChannel::appendKeyframe((this + 30888), &v20.start, v11);
            v9 = (v9 + 1);
          }

          while (v7 != v9);
          result = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
          v7 = result;
        }

        while (result);
      }
    }
  }

  else
  {

    return OZChannelBase::setFlag(this + 271, 2, 1);
  }

  return result;
}

void OZImageElement::ptcResetCinematographyDataChannels(OZImageElement *this)
{
  OZChannelBase::reset(this + 288, 0);
  OZChannelBase::reset((this + 30736), 0);
  OZChannelBase::reset((this + 30888), 0);
  *(this + 4071) = *(this + 4070);
}

void OZImageElement::ptcResetCinematographyUserChannels(OZImageElement *this)
{
  OZChannelBase::reset((this + 31296), 0);
  OZChannelBase::reset((this + 31040), 0);

  OZChannelBase::reset((this + 32000), 0);
}

void OZImageElement::ptcResetCinematographyAllChannels(OZImageElement *this)
{
  OZImageElement::ptcResetCinematographyDataChannels(this);

  OZImageElement::ptcResetCinematographyUserChannels(this);
}

uint64_t ___ZN14OZImageElement22ptcLoadCinematicScriptEv_block_invoke(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    NSLog(&cfstr_ScriptengineEr.isa, a3);
  }

  *(*(*(a1 + 32) + 8) + 24) = a2;
  v5 = *(*(*(a1 + 40) + 8) + 24);

  return PCSemaphore::signal(v5);
}

OZChannelBase *OZImageElement::ptcFillCinematographyDataChannels(OZImageElement *this)
{
  v28 = *MEMORY[0x277D85DE8];
  Footage = OZImageElement::getFootage(this);
  if (Footage && (v4 = Footage, (OZFootage::isCinematographyAvailable(Footage, v3) & 1) != 0))
  {
    OZChannelBase::resetFlag(this + 271, 2, 0);
    result = OZChannel::getValueAsInt((this + 32256), MEMORY[0x277CC08F0], 0.0);
    if (!result)
    {
      OZChannelBase::setRangeName(v4[1009], v6);
      result = OZFootage::ensureClipIsOpen(v4);
      v7 = *(this + 3789);
      if (v7)
      {
        memset(&v26, 0, sizeof(v26));
        (*(*this + 1128))(&v24, this);
        v21 = v24.start;
        (*(*this + 1144))(&start, this, &v21);
        (*(*this + 1128))(&v21, this);
        duration = v22;
        CMTimeRangeMake(&v26, &start, &duration);
        v24 = v26;
        v8 = [v7 framesInTimeRange:&v24];
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v18;
          v12 = 0.0;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v18 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v17 + 1) + 8 * i);
              memset(&v21, 0, sizeof(v21));
              if (v14)
              {
                [v14 time];
              }

              [v14 aperture];
              v16 = v15;
              if (vabdd_f64(v12, v15) >= 0.0000001)
              {
                OZChannel::appendKeyframe((this + 30736), &v21, v16);
                v24.start = v21;
                v12 = v16;
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v17 objects:v27 count:16];
          }

          while (v10);
        }

        if (OZChannel::getNumberOfKeyframes((this + 30736)) == 1)
        {
          OZChannel::deleteAllKeyframes((this + 30736), &v24.start);
        }

        return OZChannel::setDefaultToCurrentValue((this + 30736));
      }
    }
  }

  else
  {

    return OZChannelBase::setFlag(this + 271, 2, 0);
  }

  return result;
}

uint64_t OZImageElement::ptcSyncChangesDictionaryFromScript(OZImageElement *this)
{
  v2 = *(this + 3790);
  if (v2)
  {

    *(this + 3790) = 0;
  }

  v3 = *(this + 3791);
  if (v3)
  {

    *(this + 3791) = 0;
  }

  *(this + 3790) = [objc_msgSend(*(this + 3788) "changesDictionary")];
  result = [objc_msgSend(*(this + 3789) "changesDictionary")];
  *(this + 3791) = result;
  return result;
}

OZFootage *OZImageElement::ptcCopyScriptData(OZImageElement *this, id *a2)
{
  OZImageElement::ptcDeleteScriptData(this);
  *(this + 3792) = [a2[3792] copy];
  *(this + 3793) = [a2[3793] copy];
  *(this + 3790) = [a2[3790] copy];
  *(this + 3791) = [a2[3791] copy];

  return OZImageElement::ptcLoadCinematicScript(this);
}

void OZImageElement::ptcDeleteScriptData(OZImageElement *this)
{
  v2 = *(this + 3792);
  if (v2)
  {

    *(this + 3792) = 0;
  }

  v3 = *(this + 3793);
  if (v3)
  {

    *(this + 3793) = 0;
  }

  v4 = *(this + 3790);
  if (v4)
  {

    *(this + 3790) = 0;
  }

  v5 = *(this + 3791);
  if (v5)
  {

    *(this + 3791) = 0;
  }

  v6 = *(this + 3788);
  if (v6)
  {

    *(this + 3788) = 0;
  }

  v7 = *(this + 3789);
  if (v7)
  {

    *(this + 3789) = 0;
  }
}

void *OZObject::iterator_t<OZLight,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

void initializeMotionInternal(void)
{
  OZCacheManager::setHosted(1);
  PGInitPGContext();
  PGInitTextures();
  PCAutoreleasePool::PCAutoreleasePool(&v0);
  if (!theApp)
  {
    operator new();
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v0);
}

uint64_t OZXWaitForAsyncInitialization()
{
  {
    {
    }
  }

  else
  {
    initializeMotionInternal();
  }
}

uint64_t OZXSetHostDelegate(void *a1)
{
  {
    OZApplication::setHostApplicationDelegate(theApp, a1);
  }

  return 1;
}

uint64_t OZXCopyDocument(void *a1, void *a2)
{
  *a2 = 0;
  if (a1 && *a1)
  {
    objc_opt_new();
    RenderEngineMutex = OZX_getRenderEngineMutex();
    PCMutex::lock(RenderEngineMutex);
    operator new();
  }

  return 0;
}

void sub_2600DEFBC(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2600DEF90);
}

void OZXLoadDocument()
{
  PCAutoreleasePool::PCAutoreleasePool(&v2.var10);
  v2.var8 = OZX_getRenderEngineMutex();
  PCMutex::lock(v2.var8);
  LOBYTE(v2.var9) = 1;
  PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(&v2.var4);
  v0 = theApp;
  if ((*(theApp + 80) & 1) == 0)
  {
    *(theApp + 80) = 1;
  }

  CurrentDoc = OZApplication::getCurrentDoc(v0);
  OZApplication::setPerThreadCurrentDoc(theApp, CurrentDoc);
  OZApplication::newDocument(theApp);
}

void sub_2600DF2C4(void *a1, int a2, int a3, char a4, OZChannelBase *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if ((a11 & 1) == 0)
  {
    *(*v21 + 80) = 0;
  }

  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(&a17);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a21)
  {
    JUMPOUT(0x2600DF244);
  }

  JUMPOUT(0x2600DF230);
}

void sub_2600DF360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PCConsoleLock::~PCConsoleLock(va);
  JUMPOUT(0x2600DF310);
}

uint64_t OZXOpenDocumentMedia(uint64_t a1)
{
  PCAutoreleasePool::PCAutoreleasePool(&v6);
  if (a1)
  {
    RenderEngineMutex = OZX_getRenderEngineMutex();
    PCMutex::lock(RenderEngineMutex);
    v3 = 1;
    v4 = *(*a1 + 24);
    if (v4)
    {
      v3 = OZScene::openMedia(v4) != 0;
    }

    PCMutex::unlock(RenderEngineMutex);
  }

  else
  {
    v3 = 7;
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v6);
  return v3;
}

void sub_2600DF408(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a10)
  {
    JUMPOUT(0x2600DF3E4);
  }

  JUMPOUT(0x2600DF3C8);
}

void sub_2600DF420(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, PCMutex *);
  v5 = va_arg(va1, void);
  PCConsoleLock::~PCConsoleLock(va);
  PCAutoreleasePool::~PCAutoreleasePool(va1);
  _Unwind_Resume(a1);
}

void *OZScene::begin_t<OZFootageLayer,false,false>@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  v4 = result + 150;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    result = v3[2];
    {
      for (i = v3[1]; i != v4; i = i[1])
      {
        result = i[2];
        if (result)
        {
          if (result)
          {
            break;
          }
        }
      }

      *a2 = i;
    }
  }

  return result;
}

uint64_t *OZSceneNode::begin_t<OZFootage,false,true>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1024))(a1);
  result = (*(*a1 + 1032))(a1);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v4;
  *(a2 + 8) = v4;
  *(a2 + 16) = result;
  *(a2 + 24) = 0;
  if (v4 != result)
  {
    v6 = *(v4 + 16);
    if (!v6)
    {
      return OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

void OZXFreeDocument(void *a1, int a2)
{
  PCAutoreleasePool::PCAutoreleasePool(&v11);
  if (a1)
  {
    RenderEngineMutex = OZX_getRenderEngineMutex();
    v9 = RenderEngineMutex;
    PCMutex::lock(RenderEngineMutex);
    v10 = 1;
    PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(v8);
    v6 = a1[1];
    if (v6)
    {
      v7 = OZChannelBase::setRangeName(v6, v5);
      MEMORY[0x2666E9F00](v7, 0xC400A2AC0F1);
    }

    a1[1] = 0;
    if (a2)
    {
      if (*a1)
      {
        (*(**a1 + 8))(*a1);
      }

      *a1 = 0;
    }

    MEMORY[0x2666E9F00](a1, 0xA0C40E93CF5C4);
    [+[PMObjectCache sharedInstance](PMObjectCache clearCache];
    +[PMObjectCache releaseSharedInstance];
    PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(v8);
    if (v10 == 1)
    {
      PCMutex::unlock(RenderEngineMutex);
    }
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v11);
}

void sub_2600DF788(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a14)
  {
    JUMPOUT(0x2600DF768);
  }

  JUMPOUT(0x2600DF754);
}

void sub_2600DF7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCConsoleLock::~PCConsoleLock(va);
  JUMPOUT(0x2600DF794);
}

void OZXGetRenderGraph(OZScene *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, GLRenderer *a4@<X3>, PCString *a5@<X5>, CGColorSpace **a6@<X8>)
{
  OZRenderParams::setFFInputContext(a2, a3);
  if (a5)
  {
    if (v11)
    {
      LiHelium::getDefaultGPU(v11, &v28);
      v27._pcColorDesc._colorSpaceRef._obj = v28._pcColorDesc._colorSpaceRef._obj;
      *&v27._pcColorDesc._dynamicRange = *&v28._pcColorDesc._dynamicRange;
      if (*&v28._pcColorDesc._dynamicRange)
      {
        atomic_fetch_add_explicit((*&v28._pcColorDesc._dynamicRange + 8), 1uLL, memory_order_relaxed);
      }

      OZRenderParams::setRenderDevice(a2, &v27);
      if (*&v27._pcColorDesc._dynamicRange)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v27._pcColorDesc._dynamicRange);
      }

      if (*&v28._pcColorDesc._dynamicRange)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v28._pcColorDesc._dynamicRange);
      }

      v12 = 0;
      goto LABEL_18;
    }
  }

  HGComputeDeviceManager::GetCPUComputeDevice(v11, &v28);
  v27._pcColorDesc._colorSpaceRef._obj = v28._pcColorDesc._colorSpaceRef._obj;
  *&v27._pcColorDesc._dynamicRange = *&v28._pcColorDesc._dynamicRange;
  if (*&v28._pcColorDesc._dynamicRange)
  {
    atomic_fetch_add_explicit((*&v28._pcColorDesc._dynamicRange + 8), 1uLL, memory_order_relaxed);
  }

  OZRenderParams::setRenderDevice(a2, &v27);
  if (*&v27._pcColorDesc._dynamicRange)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&v27._pcColorDesc._dynamicRange);
  }

  *(a2 + 320) = 1;
  v13 = *&v28._pcColorDesc._dynamicRange;
  if (a5)
  {
    v12 = 0;
    if (!*&v28._pcColorDesc._dynamicRange)
    {
      goto LABEL_17;
    }
  }

  else
  {
    obj = v28._pcColorDesc._colorSpaceRef._obj;
    v30 = *&v28._pcColorDesc._dynamicRange;
    if (*&v28._pcColorDesc._dynamicRange)
    {
      atomic_fetch_add_explicit((*&v28._pcColorDesc._dynamicRange + 8), 1uLL, memory_order_relaxed);
    }

    PGHelium::acquireRenderer(&obj, &v27);
    a5 = v27._pcColorDesc._colorSpaceRef._obj;
    v12 = *&v27._pcColorDesc._dynamicRange;
    v27._pcColorDesc._colorSpaceRef._obj = 0;
    *&v27._pcColorDesc._dynamicRange = 0;
    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    v13 = *&v28._pcColorDesc._dynamicRange;
    if (!*&v28._pcColorDesc._dynamicRange)
    {
      goto LABEL_17;
    }
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
LABEL_17:
  if (!a5)
  {
    v16 = HGObject::operator new(0x1A0uLL);
    HGSolidColor::HGSolidColor(v16);
  }

LABEL_18:
  v14 = (a5->var0[4].isa)(a5, 19);
  switch(v14)
  {
    case 24:
      HGUserJob::SetPriority(a2 + 1316, 0);
      v15 = 5;
      break;
    case 27:
      HGUserJob::SetPriority(a2 + 1316, 2);
      v15 = 13;
      break;
    case 28:
      HGUserJob::SetPriority(a2 + 1316, 3);
      v15 = 16;
      break;
    default:
      v15 = 3;
      break;
  }

  *(a2 + 216) = v15;
  *(a2 + 340) = v15;
  *(a2 + 392) = 0u;
  *(a2 + 408) = 0u;
  BitsPerChannel = PCPixelFormat::getBitsPerChannel(v15);
  OZRenderParams::setDepth(a2, BitsPerChannel);
  isRenderForHDR_Deprecated = OZRenderParams::isRenderForHDR_Deprecated(a2);
  OZScene::setRawWorkingGamut(a1, isRenderForHDR_Deprecated);
  obj = 0;
  RenderModel = OZScene::getRenderModel(a1);
  if (!PCRenderModel::is_iOS(RenderModel))
  {
    WorkingColorDescription = OZRenderParams::getWorkingColorDescription(a2);
    (*(*a1 + 136))(&v28, a1);
    LODWORD(WorkingColorDescription) = operator!=(WorkingColorDescription, &v28, v21);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v28._pcColorDesc._colorSpaceRef._obj);
    if (WorkingColorDescription)
    {
      OutputColorDescription = OZRenderParams::getOutputColorDescription(a2);
      v23 = *OutputColorDescription;
      v28._pcColorDesc._colorSpaceRef._obj = v23;
      if (v23)
      {
        PCCFRefTraits<CGColorSpace *>::retain(v23);
      }

      v24 = *(OutputColorDescription + 1);
      v28._pcColorDesc._toneMapMethod._gain = *(OutputColorDescription + 4);
      *&v28._pcColorDesc._dynamicRange = v24;
      v28._isPremultiplied = OutputColorDescription[24];
      (*(*a1 + 136))(&v27, a1);
      OZRenderParams::setWorkingColorDescription(a2, &v27);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v27._pcColorDesc._colorSpaceRef._obj);
      OZRenderParams::setOutputColorDescription(a2, &v28);
      PCCFRef<CGColorSpace *>::~PCCFRef(&v28._pcColorDesc._colorSpaceRef._obj);
    }
  }

  GLRenderer::getFrameNode(a4, a1, a2, a5, &obj, &v28);
  v25 = v28._pcColorDesc._colorSpaceRef._obj;
  if (obj)
  {
    v26 = HGObject::operator new(0x1A0uLL);
    HGNode::HGNode(v26);
    if (v25 == v26)
    {
      if (v25)
      {
        (*(*v26 + 24))(v26);
      }
    }

    else
    {
      if (v25)
      {
        (*(*v25 + 24))(v25);
      }

      v25 = v26;
    }
  }

  *a6 = v25;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_2600DFC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (v20)
  {
    (*(*v20 + 24))(v20);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v19)
  {
    (*(*v19 + 24))(v19);
  }

  _Unwind_Resume(exception_object);
}

void OZXGetDocInfo(uint64_t a1, uint64_t a2)
{
  PCAutoreleasePool::PCAutoreleasePool(&v10);
  if (a1 && *a1)
  {
    RenderEngineMutex = OZX_getRenderEngineMutex();
    PCMutex::lock(RenderEngineMutex);
    v5 = *(*a1 + 24);
    *(a2 + 144) = 0;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 4) = *(v5 + 344);
    v6 = OZSceneSettings::is360Project((v5 + 336));
    *(a2 + 12) = v6;
    BitDepth = OZSceneSettings::getBitDepth(v6);
    *(a2 + 16) = PCBitDepth::getBitsPerChannel(BitDepth);
    *(a2 + 20) = 4;
    *(a2 + 24) = *(v5 + 352);
    *(a2 + 32) = *(v5 + 368);
    *(a2 + 40) = *(v5 + 376);
    *(a2 + 48) = *(v5 + 384);
    *(a2 + 56) = 0;
    if (*(*a1 + 160) != 1 || (v8 = *(v5 + 688)) == 0 || v8 == 2 && *(v5 + 480))
    {
      v9 = *(v5 + 480);
      if ((v9 - 1) < 2)
      {
        *(a2 + 56) = v9;
      }
    }

    *(a2 + 60) = *(v5 + 528);
    *(a2 + 72) = *(v5 + 536);
    *a2 = 1;
    PCMutex::unlock(RenderEngineMutex);
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v10);
}

void sub_2600DFEC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCAutoreleasePool::~PCAutoreleasePool(va);
  _Unwind_Resume(a1);
}

void sub_2600DFED8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a10)
  {
    JUMPOUT(0x2600DFEA4);
  }

  JUMPOUT(0x2600DFE90);
}

void sub_2600DFEEC(uint64_t a1, ...)
{
  va_start(va, a1);
  PCConsoleLock::~PCConsoleLock(va);
  JUMPOUT(0x2600DFEC8);
}

uint64_t OZXGetSceneDuration(uint64_t a1, _DWORD *a2, void *a3, __n128 *a4)
{
  PCAutoreleasePool::PCAutoreleasePool(&v16);
  if (a1 && *a1)
  {
    RenderEngineMutex = OZX_getRenderEngineMutex();
    v14 = RenderEngineMutex;
    PCMutex::lock(RenderEngineMutex);
    v15 = 1;
    v9 = *(*a1 + 24);
    *a2 = *(v9 + 352);
    *a3 = *(v9 + 368);
    OZSceneSettings::getFrameDuration((v9 + 336), &v12);
    v10 = 0;
    *a4 = v12;
    a4[1].n128_u64[0] = v13;
    if (v15 == 1)
    {
      PCMutex::unlock(RenderEngineMutex);
    }
  }

  else
  {
    v10 = 7;
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v16);
  return v10;
}

void sub_2600DFFD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a12)
  {
    JUMPOUT(0x2600DFFA8);
  }

  JUMPOUT(0x2600DFF8CLL);
}

void sub_2600DFFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, PCMutex *);
  v7 = va_arg(va1, void);
  PCConsoleLock::~PCConsoleLock(va);
  PCAutoreleasePool::~PCAutoreleasePool(va1);
  _Unwind_Resume(a1);
}

void *OZXSetTargetDisplayAspectRatio(void *result, double a2)
{
  if (result)
  {
    v2 = result;
    if (*result)
    {
      RenderEngineMutex = OZX_getRenderEngineMutex();
      PCMutex::lock(RenderEngineMutex);
      v5 = *(*v2 + 24);
      if (v5)
      {
        OZScene::setTargetDisplayAspectRatio(v5, a2, 0, 0);
      }

      return PCMutex::unlock(RenderEngineMutex);
    }
  }

  return result;
}

void sub_2600E0088(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2600E006CLL);
}

void *OZXSetTargetDisplayAspectRatioWithNativeSize(void *result, double a2, double a3, double a4)
{
  if (result)
  {
    v4 = result;
    if (*result)
    {
      RenderEngineMutex = OZX_getRenderEngineMutex();
      PCMutex::lock(RenderEngineMutex);
      v9 = *(*v4 + 24);
      if (v9)
      {
        OZScene::setTargetDisplayAspectRatioWithNativeSize(v9, a2, a3, a4, 0);
      }

      return PCMutex::unlock(RenderEngineMutex);
    }
  }

  return result;
}

void sub_2600E013C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2600E011CLL);
}

uint64_t OZXMarkerCount(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(*(*(*result + 24) + 1136) + 24);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t OZXGetMarkerFigTimeOfType(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  v5 = *(v4 + 1136);
  if (v5[3] <= a2)
  {
    return 11;
  }

  v8 = v5[1];
  v9 = v5 + 2;
  v10 = v8 != v9;
  v11 = v8 == v9 || a2 == 0;
  if (!v11)
  {
    do
    {
      v12 = v8[1];
      v13 = v8;
      if (v12)
      {
        do
        {
          v8 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v8 = v13[2];
          v11 = *v8 == v13;
          v13 = v8;
        }

        while (!v11);
      }

      v10 = v8 != v9;
      if (v8 == v9)
      {
        break;
      }

      --a2;
    }

    while (a2);
  }

  if (!v10)
  {
    return 11;
  }

  v22 = 0uLL;
  v23 = 0;
  OZSceneSettings::getFrameDuration((v4 + 336), &v22);
  v14 = *(v8 + 27);
  if (a3 != -1 && v14 != a3)
  {
    return 11;
  }

  v16 = *(v8 + 5);
  *(a4 + 16) = v8[7];
  *a4 = v16;
  v17 = *(v8 + 4);
  *(a4 + 40) = v8[10];
  *(a4 + 24) = v17;
  *(a4 + 64) = *(v8 + 26);
  *(a4 + 68) = v14;
  Label = OZTimeMarker::getLabel((v8 + 4));
  v19 = PCString::cf_str(Label);
  *(a4 + 48) = CFStringCreateCopy(0, v19);
  v20 = PCString::cf_str(v8 + 12);
  Copy = CFStringCreateCopy(0, v20);
  result = 0;
  *(a4 + 56) = Copy;
  return result;
}

void sub_2600E02D8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2600E024CLL);
}

uint64_t OZXGetDropZone(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  *a3 = 0;
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (!v3)
  {
    return 7;
  }

  OZScene::getAllDropZones(v3, &v8);
  v6 = v8;
  if (a2 >= ((v9 - v8) >> 2))
  {
    if (v8)
    {
      v9 = v8;
      operator delete(v8);
    }

    return 11;
  }

  else
  {
    *a3 = *&v8[4 * a2];
    v9 = v6;
    operator delete(v6);
    return 0;
  }
}

void sub_2600E0390(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2600E0378);
}

uint64_t OZXGetDropZoneIDMap(uint64_t a1, uint64_t a2)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v3 = *(*a1 + 24);
  if (a2 && v3)
  {
    OZScene::getAllDropZonesMap(*(*a1 + 24), &v8);
    v4 = a2 + 8;
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a2, *(a2 + 8));
    v5 = v9;
    *a2 = v8;
    *(a2 + 8) = v5;
    v6 = v10;
    *(a2 + 16) = v10;
    if (v6)
    {
      v5[2] = v4;
      v8 = &v9;
      v9 = 0;
      v10 = 0;
      v5 = 0;
    }

    else
    {
      *a2 = v4;
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v8, v5);
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return 7;
  }
}

void sub_2600E0458(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2600E0440);
}

uint64_t OZXIsValidImageSequencePath(uint64_t a1)
{
  PCAutoreleasePool::PCAutoreleasePool(&v25);
  if (a1 && *a1)
  {
    RenderEngineMutex = OZX_getRenderEngineMutex();
    v23[5] = RenderEngineMutex;
    PCMutex::lock(RenderEngineMutex);
    v24 = 1;
    v3 = *(*a1 + 24);
    if (v3)
    {
      OZScene::begin_t<OZFootageLayer,false,false>(v3, v22);
      v4 = v3[151];
      memset(v20, 0, sizeof(v20));
      v21 = 1065353216;
      v18[5] = v3 + 150;
      v18[6] = v4;
      v18[7] = v3 + 150;
      v19 = 0;
      if (v22[0] == v3 + 150)
      {
        v7 = 0;
      }

      else
      {
        if (v22[0] == v22[2] || (v5 = *(v22[0] + 16)) == 0)
        {
          v6 = 0;
        }

        else
        {
        }

        OZSceneNode::begin_t<OZFootage,false,true>(v6, v17);
        (*(*v6 + 1024))(v6);
        v8 = (*(*v6 + 1032))(v6);
        v7 = 0;
        memset(v15, 0, sizeof(v15));
        v16 = 1065353216;
        v14 = v8;
        while (!v7 && v17[0] != v14)
        {
          v10 = (*(v9 + 1408))();
          v7 = v10;
          if (v10)
          {
            if (PCURL::isSequence(v10))
            {
              SequenceStart = PCURL::getSequenceStart(v7);
              URLforIndex = PCURL::getURLforIndex(v7, SequenceStart);
              if (URLforIndex)
              {
                if ([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
                {
                  v7 = 0;
                }

                else
                {
                  v7 = 3;
                }
              }

              else
              {
                v7 = 3;
              }
            }

            else
            {
              v7 = 0;
            }
          }

          OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(v17);
        }

        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v15);
        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v18);
      }

      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v23);
    }

    else
    {
      v7 = 7;
    }

    if (v24 == 1)
    {
      PCMutex::unlock(RenderEngineMutex);
    }
  }

  else
  {
    v7 = 7;
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v25);
  return v7;
}

void sub_2600E0798(void *a1)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v1 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v2 - 144);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!*(v2 - 104))
  {
    JUMPOUT(0x2600E076CLL);
  }

  JUMPOUT(0x2600E0758);
}

uint64_t OZXSetImageSequencePath(uint64_t a1, PCString *a2)
{
  PCAutoreleasePool::PCAutoreleasePool(&v34);
  if (a1 && *a1)
  {
    if (PCString::empty(a2))
    {
      v4 = 11;
    }

    else
    {
      RenderEngineMutex = OZX_getRenderEngineMutex();
      v32[5] = RenderEngineMutex;
      PCMutex::lock(RenderEngineMutex);
      v33 = 1;
      v7 = *(*a1 + 24);
      if (v7)
      {
        OZScene::begin_t<OZFootageLayer,false,false>(v7, v31);
        v8 = v7[151];
        memset(v29, 0, sizeof(v29));
        v30 = 1065353216;
        v27[5] = v7 + 150;
        v27[6] = v8;
        v27[7] = v7 + 150;
        v28 = 0;
        if (v31[0] != v7 + 150)
        {
          if (v31[0] == v31[2] || (v9 = *(v31[0] + 16)) == 0)
          {
            v10 = 0;
          }

          else
          {
          }

          OZSceneNode::begin_t<OZFootage,false,true>(v10, v26);
          v11 = (*(*v10 + 1024))(v10);
          v12 = (*(*v10 + 1032))(v10);
          memset(v24, 0, sizeof(v24));
          v25 = 1065353216;
          v20 = v12;
          v21 = v11;
          v22 = v12;
          v23 = 0;
          while (v26[0] != v20)
          {
            if (v26[0] == v26[2] || (v13 = *(v26[0] + 16)) == 0)
            {
              v14 = 0;
            }

            else
            {
            }

            v15 = (*(*v14 + 1424))(v14);
            v16 = v15;
            if (v15 && PCURL::isSequence(v15))
            {
              PCURL::getFilename(v16, &v19);
              PCString::PCString(&v18, a2);
              PCString::append(&v18, "/");
              PCString::append(&v18, &v19);
              PCURL::PCURL(&v17, &v18, 0);
              (*(*v14 + 1400))(v14, &v17);
              PCURL::~PCURL(&v17);
              PCString::~PCString(&v18);
              PCString::~PCString(&v19);
            }

            OZObject::iterator_t<OZFootage,false,true,OZObject::defaultValidator>::operator++(v26);
          }

          std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v24);
          std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v27);
        }

        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v29);
        std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v32);
        v4 = 0;
      }

      else
      {
        v4 = 7;
      }

      if (v33 == 1)
      {
        PCMutex::unlock(RenderEngineMutex);
      }
    }
  }

  else
  {
    v4 = 7;
  }

  PCAutoreleasePool::~PCAutoreleasePool(&v34);
  return v4;
}

void sub_2600E0BB4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v21 + 32);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v22 - 144);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!*(v22 - 104))
  {
    JUMPOUT(0x2600E0884);
  }

  JUMPOUT(0x2600E0B9CLL);
}

uint64_t OZXSetDropZoneOpacityAnimation(uint64_t a1, unsigned int a2, double a3, double a4)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  Object = OZScene::getObject(v4, a2);
  if (!Object)
  {
    return 11;
  }

  if (!v8)
  {
    return 11;
  }

  v9 = v8;
  FirstEnabledKeyframe = OZChannel::getFirstEnabledKeyframe((v8 + 6680));
  OZChannel::setKeyframeValue((v9 + 6680), FirstEnabledKeyframe, a3);
  LastEnabledKeyframe = OZChannel::getLastEnabledKeyframe((v9 + 6680));
  OZChannel::setKeyframeValue((v9 + 6680), LastEnabledKeyframe, a4);
  return 0;
}

uint64_t OZXSetDropZoneScaleAnimation(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v6 = *(*a1 + 24);
  if (!v6)
  {
    return 7;
  }

  Object = OZScene::getObject(v6, a2);
  if (!Object)
  {
    return 11;
  }

  if (!v12)
  {
    return 11;
  }

  v13 = v12;
  FirstEnabledKeyframe = OZChannel::getFirstEnabledKeyframe((v12 + 4576));
  OZChannel::setKeyframeValue((v13 + 4576), FirstEnabledKeyframe, a3);
  v15 = OZChannel::getFirstEnabledKeyframe((v13 + 4728));
  OZChannel::setKeyframeValue((v13 + 4728), v15, a4);
  LastEnabledKeyframe = OZChannel::getLastEnabledKeyframe((v13 + 4576));
  OZChannel::setKeyframeValue((v13 + 4576), LastEnabledKeyframe, a5);
  v17 = OZChannel::getLastEnabledKeyframe((v13 + 4728));
  OZChannel::setKeyframeValue((v13 + 4728), v17, a6);
  return 0;
}

uint64_t OZXSetDropZoneTranslationAnimation(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6)
{
  if (!a1 || !*a1)
  {
    return 7;
  }

  v6 = *(*a1 + 24);
  if (!v6)
  {
    return 7;
  }

  Object = OZScene::getObject(v6, a2);
  if (!Object)
  {
    return 11;
  }

  if (!v12)
  {
    return 11;
  }

  v13 = v12;
  FirstEnabledKeyframe = OZChannel::getFirstEnabledKeyframe((v12 + 1352));
  OZChannel::setKeyframeValue((v13 + 1352), FirstEnabledKeyframe, a3);
  v15 = OZChannel::getFirstEnabledKeyframe((v13 + 1504));
  OZChannel::setKeyframeValue((v13 + 1504), v15, a4);
  LastEnabledKeyframe = OZChannel::getLastEnabledKeyframe((v13 + 1352));
  OZChannel::setKeyframeValue((v13 + 1352), LastEnabledKeyframe, a5);
  v17 = OZChannel::getLastEnabledKeyframe((v13 + 1504));
  OZChannel::setKeyframeValue((v13 + 1504), v17, a6);
  return 0;
}

uint64_t OZXSetShapeRGBColor(uint64_t a1, double a2, double a3, double a4)
{
  if (!a1)
  {
    return 7;
  }

  if (!*a1)
  {
    return 7;
  }

  v4 = *(*a1 + 24);
  if (!v4)
  {
    return 7;
  }

  OZScene::begin(*(*a1 + 24), v21);
  OZScene::end_sel(v4, v19);
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = 4;
  v12 = MEMORY[0x277CC08F0];
  while (v21[0] != v19[0])
  {
    if (v21[0] != v21[2])
    {
      v13 = *(v21[0] + 16);
      if (v13)
      {
        if (v14)
        {
          v15 = v14;
          DeviceRGB = CGColorSpaceCreateDeviceRGB();
          PCColor::PCColor(&v18, v8, v9, v10, 1.0, DeviceRGB);
          (*(v15[3270] + 840))(v15 + 3270, v12, &v18, 1);
          CGColorSpaceRelease(DeviceRGB);
          PCCFRef<CGColorSpace *>::~PCCFRef(&v18.var1._obj);
          v11 = 0;
        }
      }
    }

    OZObject::iterator_t<OZSceneNode,false,true,OZObject::defaultValidator>::increment(v21);
  }

  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v20);
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v22);
  return v11;
}

void sub_2600E1190(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&a30);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2600E1168);
}

uint64_t OZX_getRenderEngineMutex(void)
{
  {
    OZX_getRenderEngineMutex();
  }
}

void OZX_prepareForRender(void *a1, CMTime *a2, int a3, int a4, int a5, float a6, float a7, uint64_t a8, uint64_t a9, char a10, unsigned int a11, int a12, char a13, unsigned int a14, HGComputeDeviceManager *a15)
{
  OZCacheManager::setConservative(1);
  if ((a13 & 1) == 0)
  {
    v84[0] = 0;
    MemoryInfo = PCInfo::getMemoryInfo(0, 0, 0, 0, 0, 0, 0, v84, v77);
    if (v84[0] >= 0xC0000001)
    {
      v21 = OZCacheManager::Instance(MemoryInfo);
      OZCacheManager::clearTextureCache(v21);
      v23 = OZCacheManager::Instance(v22);
      OZCacheManager::clearMetalTextureCache(v23);
      v25 = OZSceneList::instance(v24);
      v26 = ProShade::Snippet::code(v25);
      v106 = v26;
      v27 = PCMutex::lock(v26);
      LOBYTE(v107) = 1;
      v28 = OZSceneList::instance(v27);
      LabelCtlrClassName = OZChannelBase::getLabelCtlrClassName(v28);
      v30 = OZSceneList::instance(LabelCtlrClassName);
      v31 = OZSceneList::end(v30);
      if (LabelCtlrClassName != v31)
      {
        do
        {
          isa = LabelCtlrClassName[1].isa;
          v33 = PGGetPerThreadContext();
          OZScene::reloadResources(isa, v33);
          info = LabelCtlrClassName->info;
          if (info)
          {
            do
            {
              data = info;
              info = *info;
            }

            while (info);
          }

          else
          {
            do
            {
              data = LabelCtlrClassName->data;
              v36 = *data == LabelCtlrClassName;
              LabelCtlrClassName = data;
            }

            while (!v36);
          }

          LabelCtlrClassName = data;
        }

        while (data != v31);
      }

      v37 = PCMutex::unlock(v26);
      ProGL::clearTexturePool(v37);
    }
  }

  PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(v119);
  v38 = *(*a1 + 24);
  OZSceneSettings::OZSceneSettings(&v106, (v38 + 336));
  if (!a1[1])
  {
    operator new();
  }

  PCImageAttributes::PCImageAttributes(&v100);
  if (a12)
  {
    v39 = 2;
  }

  else
  {
    v39 = 1;
  }

  v101 = v107;
  v102 = 0x400000008;
  v100 = v39;
  v103 = 3;
  v105 = 3553;
  LiRenderingTechnology::LiRenderingTechnology(&v98);
  switch(a5)
  {
    case 0:
      BitsPerChannel = PCBitDepth::getBitsPerChannel(0);
      v41 = 3;
      goto LABEL_22;
    case 1:
      BitsPerChannel = PCBitDepth::getBitsPerChannel(2);
      v41 = 13;
      goto LABEL_22;
    case 2:
      BitsPerChannel = PCBitDepth::getBitsPerChannel(3);
      v41 = 16;
LABEL_22:
      LODWORD(v102) = BitsPerChannel;
      goto LABEL_24;
  }

  v41 = 3;
LABEL_24:
  v103 = v41;
  epoch = a2->epoch;
  *a15 = *&a2->value;
  *(a15 + 2) = epoch;
  *(a15 + 392) = 0uLL;
  *v84 = a6;
  *&v84[1] = a7;
  OZRenderParams::setResolution(a15, v84);
  OZRenderParams::setImageAttr(a15, &v100);
  v43 = (a15 + 392);
  *(a15 + 488) = a4;
  *(a15 + 5) = v108;
  v44 = v110;
  *(a15 + 520) = v109;
  *(a15 + 536) = v44;
  *(a15 + 552) = v111;
  *(a15 + 392) = 0u;
  *(a15 + 408) = 0u;
  v45 = PCCFRef<CGColorSpace *>::operator=(a15 + 71, &v112);
  *(a15 + 144) = v113;
  v46 = v99[0];
  *(a15 + 1316) = v98;
  *(a15 + 1332) = v46;
  *(a15 + 1346) = *(v99 + 14);
  *(a15 + 54) = v41;
  *(a15 + 392) = 0u;
  *(a15 + 408) = 0u;
  v97[0] = 0;
  v97[1] = 0;
  if (a12)
  {
    HGComputeDeviceManager::GetGPUComputeDeviceForCGLVirtualScreen(a14, v84);
    v47 = *v84;
    v84[0] = 0;
    v84[1] = 0;
    v48 = v97[1];
    *v97 = v47;
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      v48 = v84[1];
      if (v84[1])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v84[1]);
      }

      if (v97[0])
      {
        goto LABEL_38;
      }
    }

    else if (v47)
    {
      goto LABEL_38;
    }

    GPUComputeDeviceList = HGComputeDeviceManager::GetGPUComputeDeviceList(v48);
    v54 = **GPUComputeDeviceList;
    v53 = *(*GPUComputeDeviceList + 8);
    if (v53)
    {
      atomic_fetch_add_explicit(v53 + 1, 1uLL, memory_order_relaxed);
    }

    v51 = v97[1];
    v97[0] = v54;
    v97[1] = v53;
    if (v51)
    {
      goto LABEL_37;
    }
  }

  else
  {
    HGComputeDeviceManager::GetCPUComputeDevice(v45, v84);
    v49 = *v84;
    v84[0] = 0;
    v84[1] = 0;
    v50 = v97[1];
    *v97 = v49;
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      v51 = v84[1];
      if (v84[1])
      {
LABEL_37:
        std::__shared_weak_count::__release_shared[abi:ne200100](v51);
      }
    }
  }

LABEL_38:
  OZRenderParams::setRenderDevice(a15, v97);
  (*(*v38 + 136))(&space, v38);
  v95._pcColorDesc._colorSpaceRef._obj = space._pcColorDesc._colorSpaceRef._obj;
  if (space._pcColorDesc._colorSpaceRef._obj)
  {
    PCCFRefTraits<CGColorSpace *>::retain(space._pcColorDesc._colorSpaceRef._obj);
  }

  *&v95._pcColorDesc._dynamicRange = *&space._pcColorDesc._dynamicRange;
  v95._pcColorDesc._toneMapMethod._gain = space._pcColorDesc._toneMapMethod._gain;
  v95._isPremultiplied = space._isPremultiplied;
  OZRenderParams::setOutputColorDescription(a15, &v95);
  OZRenderParams::setWorkingColorDescription(a15, &space);
  v55 = (*(*v38 + 144))(v38);
  OZRenderParams::setBlendingGamma(a15, v55);
  OZRenderParams::setRenderIsForHDR_Deprecated(a15, a10);
  if (a11 >= 2)
  {
    v56 = 2;
  }

  else
  {
    v56 = a11;
  }

  OZRenderParams::setStillImageInverseToneMapOperator_Deprecated(a15, v56);
  *(a15 + 81) = 0;
  *(a15 + 82) = vmovn_s64(vcvtq_s64_f64(vrndpq_f64(vaddq_f64(vcvtq_f64_f32(vmul_f32(__PAIR64__(LODWORD(a7), LODWORD(a6)), vcvt_f32_s32(v107))), 0))));
  v57 = *(*a1 + 8 * *(*(*a1 + 224) + 12) + 192);
  OZExportSettings::OZExportSettings(v84, (v38 + 640));
  if (*(*a1 + 160) != 1)
  {
    if (a3 == 1)
    {
      v65 = 2;
      OZRenderParams::setRenderQuality(a15, 2);
    }

    else
    {
      if (a3 == 2)
      {
        OZRenderParams::setRenderQuality(a15, 6);
        OZRenderParams::setTextRenderQuality(a15, 6);
        OZRenderParams::setDoHighQualityResampling(a15, 1);
        v60 = 1;
        OZRenderParams::setDoShapeAntialiasing(a15, 1);
LABEL_64:
        OZRenderParams::setDo3DIntersectionAntialiasing(a15, v60);
        goto LABEL_65;
      }

      OZRenderParams::setRenderQuality(a15, 0);
      v65 = 0;
    }

    OZRenderParams::setTextRenderQuality(a15, v65);
    OZRenderParams::setDoHighQualityResampling(a15, 0);
    OZRenderParams::setDoShapeAntialiasing(a15, 1);
    v60 = 0;
    goto LABEL_64;
  }

  RenderQuality = OZExportSettings::getRenderQuality(v84);
  if (RenderQuality == 10)
  {
    v59 = *(v57 + 64);
  }

  else
  {
    v59 = OZExportSettings::getRenderQuality(v84);
  }

  OZRenderParams::setRenderQuality(a15, v59);
  if (RenderQuality == 10)
  {
    v61 = *(v57 + 68);
  }

  else
  {
    v61 = v85;
  }

  OZRenderParams::setTextRenderQuality(a15, v61);
  if (RenderQuality == 10)
  {
    v62 = *(v57 + 72);
  }

  else
  {
    v62 = v86;
  }

  OZRenderParams::setDoHighQualityResampling(a15, v62);
  v63 = (v57 + 73);
  if (RenderQuality != 10)
  {
    v63 = v87;
  }

  OZRenderParams::setDoShapeAntialiasing(a15, *v63);
  v64 = (v57 + 74);
  if (RenderQuality != 10)
  {
    v64 = &v87[1];
  }

  OZRenderParams::setDo3DIntersectionAntialiasing(a15, *v64);
LABEL_65:
  if (v88 == 2)
  {
    v66 = *(v57 + 76);
  }

  else
  {
    v66 = v88 == 0;
  }

  *(a15 + 496) = v66 & 1;
  *(a15 + 125) = v115;
  *(a15 + 63) = v116;
  *v43 = 0u;
  *(a15 + 408) = 0u;
  if (v89 == 2)
  {
    v67 = *(v57 + 77);
  }

  else
  {
    v67 = v89 == 0;
  }

  *(a15 + 513) = v67 & 1;
  if (v91 == 2)
  {
    v68 = *(v57 + 78);
  }

  else
  {
    v68 = v91 == 0;
  }

  *(a15 + 514) = v68 & 1;
  if (v92 == 2)
  {
    v69 = *(v57 + 79);
  }

  else
  {
    v69 = v92 == 0;
  }

  *(a15 + 515) = v69 & 1;
  if (v93 == 2)
  {
    v70 = *(v57 + 80);
  }

  else
  {
    v70 = v93 == 0;
  }

  *(a15 + 516) = v70 & 1;
  if (OZScene::isDepthOfFieldSupported(v38))
  {
    if (v94 == 2)
    {
      v71 = *(v57 + 81);
    }

    else
    {
      v71 = v94 == 0;
    }
  }

  else
  {
    v71 = 0;
  }

  *(a15 + 517) = v71 & 1;
  *(a15 + 512) = v117;
  *v43 = 0u;
  *(a15 + 408) = 0u;
  if (a4)
  {
    *(a15 + 123) = v114;
    *(a15 + 488) = (*&v87[3] & 0xFFFFFFFD) == 0;
    *v43 = 0uLL;
    *(a15 + 408) = 0uLL;
  }

  if (*(*a1 + 160) == 1)
  {
    v72 = v90;
    if (v90 == 20)
    {
      v81.value = *(v57 + 96);
      PCSharedCount::PCSharedCount(&v81.timescale, (v57 + 104));
      OZRenderParams::setCamera(a15, &v81);
      PCSharedCount::~PCSharedCount(&v81.timescale);
    }

    else
    {
      if (v90 >= 0xB)
      {
        lpsrc = 0;
        PCSharedCount::PCSharedCount(&v83);
        Node = OZScene::getNode(v38, v72);
        {
          operator new();
        }

        operator new();
      }

      ActiveCamera = OZScene::getActiveCamera(v38, a2);
      v75 = OZScene::getNode(v38, ActiveCamera);
      if (v75)
      {
        if (v76)
        {
          v81 = *a2;
          OZCamera::cameraAtTime(v76, &v81);
        }
      }
    }

    *(a15 + 1312) = 0;
    *v43 = 0u;
    *(a15 + 408) = 0u;
  }

  *(a15 + 242) = OZSceneSettings::is360Project(&v106);
  OZExportSettings::~OZExportSettings(v84);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v95._pcColorDesc._colorSpaceRef._obj);
  PCCFRef<CGColorSpace *>::~PCCFRef(&space._pcColorDesc._colorSpaceRef._obj);
  if (v97[1])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v97[1]);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v104);
  v106 = &unk_287283398;
  PCString::~PCString(&v118);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v112);
  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(v119);
}

void sub_2600E1C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, PCSharedCount a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, CGColorSpace *a33, uint64_t a34, uint64_t a35, uint64_t a36, CGColorSpace *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, std::__shared_weak_count *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, CGColorSpace *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, PCString a59)
{
  PCSharedCount::~PCSharedCount(v59 + 1);
  PCSharedCount::~PCSharedCount(&a16);
  OZExportSettings::~OZExportSettings(&a23);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a33);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a37);
  if (a42)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a42);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a53);
  OZSceneSettings::~OZSceneSettings(&a59);
  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry((v60 - 128));
  _Unwind_Resume(a1);
}

void sub_2600E1E28(_Unwind_Exception *a1)
{
  PCSingleton::~PCSingleton(v2);
  MEMORY[0x2666E9F00](v2, v1);
  _Unwind_Resume(a1);
}

void PCSingletonObject<PCRecursiveMutex,anonymous namespace::PCSingletonObjectTag26,0>::~PCSingletonObject(uint64_t a1)
{
  *a1 = &unk_287283350;
  PCMutex::~PCMutex((a1 + 8));

  PCSingleton::~PCSingleton(a1);
}

{
  *a1 = &unk_287283350;
  PCMutex::~PCMutex((a1 + 8));
  PCSingleton::~PCSingleton(a1);

  JUMPOUT(0x2666E9F00);
}

void OZFontManagerBase::getDefaultSystemFont(PCString *a1@<X8>)
{
  v3 = [objc_msgSend(MEMORY[0x277D74300] systemFontOfSize:48.0 weight:{*MEMORY[0x277D743F8]), "fontName"}];
  a1->var0 = 0;

  PCString::set(a1, v3);
}

void OZFontManagerBase::getDefaultSystemFontFace(OZFontManagerBase *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 18);
  if (!v4)
  {
    v5 = [objc_msgSend(MEMORY[0x277D74300] systemFontOfSize:48.0 weight:{*MEMORY[0x277D743F8]), "fontName"}];
    v9.var0 = 0;
    PCString::set(&v9, v5);
    (*(*this + 56))(&v10, this, &v9);
    v6 = v10;
    v10 = 0uLL;
    v7 = *(this + 19);
    *(this + 9) = v6;
    if (v7)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      if (*(&v10 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v10 + 1));
      }
    }

    PCString::~PCString(&v9);
    v4 = *(this + 18);
  }

  v8 = *(this + 19);
  *a2 = v4;
  a2[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t OZFontManagerBase::getDefaultFontSize(OZFontManagerBase *this)
{
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  (*(*this + 40))(&v5, this);
  v3 = PCString::ns_str(&v5);
  PCString::~PCString(&v5);
  result = [v2 integerForKey:v3];
  if (!result)
  {
    [v2 setObject:@"48" forKey:v3];
    return [v2 integerForKey:v3];
  }

  return result;
}

uint64_t OZFontManagerBase::initFonts(OZFontManagerBase *this)
{
  PCMutex::lock((this + 64));
  if ((*(this + 136) & 1) == 0)
  {
    *(this + 136) = 1;
  }

  return PCMutex::unlock((this + 64));
}

void OZNotificationManager::OZNotificationManager(OZNotificationManager *this, OZDocument *a2, int a3)
{
  *this = this;
  *(this + 1) = this;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 3) = this + 32;
  *(this + 5) = 0;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 136) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 14) = a2;
  *(this + 60) = 0;
  *(this + 13) = [[OZNotificationStub alloc] initWithOZDocument:a2 useTimer:0];
  *(this + 16) = 0;
  OZNotificationManager::setIsProcessingAutomatically(this, a3);
}

void sub_2600E27F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 72);
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::__tree<std::pair<OZChannelRef,unsigned int>>::destroy(v11, *(v10 + 32));
  std::__list_imp<unsigned int>::clear(v10);
  _Unwind_Resume(a1);
}

void OZNotificationManager::setIsProcessingAutomatically(OZNotificationManager *this, int a2)
{
  if (*(this + 121) != a2)
  {
    v2 = a2;
    v4 = *(this + 13);
    if (a2)
    {
      [v4 createTimer];
      OZNotificationManager::createRunLoopObserver(this);
    }

    else
    {
      [v4 releaseTimer];
      OZNotificationManager::deleteRunLoopObserver(this);
    }

    *(this + 121) = v2;
  }
}

void OZNotificationManager::~OZNotificationManager(OZNotificationManager *this)
{
  OZNotificationManager::deleteRunLoopObserver(this);
  [*(this + 13) releaseTimer];

  v2 = (this + 72);
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 48);
  std::vector<OZChannelRef>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::pair<OZChannelRef,unsigned int>>::destroy(this + 24, *(this + 4));
  std::__list_imp<unsigned int>::clear(this);
}

void OZNotificationManager::deleteRunLoopObserver(OZNotificationManager *this)
{
  v2 = *(this + 16);
  if (v2)
  {
    CFRunLoopObserverInvalidate(v2);
    CFRelease(*(this + 16));
    *(this + 16) = 0;
  }
}

void OZNotificationManager::addObserver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  while (1)
  {
    v3 = *(v3 + 8);
    if (v3 == a1)
    {
      break;
    }

    if (*(v3 + 24) < a3)
    {
      operator new();
    }
  }

  operator new();
}

void OZNotificationManager::removeObserver(OZNotificationManager *this, void *a2)
{
  v3 = *(this + 1);
  if (v3 != this)
  {
    while (*(v3 + 2) != a2)
    {
      v3 = *(v3 + 1);
      if (v3 == this)
      {
        return;
      }
    }
  }

  if (v3 != this)
  {
    v4 = *(v3 + 8);
    v6 = *v3;
    v5 = *(v3 + 1);
    *(v6 + 8) = v5;
    *v5 = v6;
    --*(this + 2);
    operator delete(v3);
    v7 = *(*(this + 14) + 176);
    if (v7 && v4 != 0)
    {
    }
  }
}

void OZNotificationManager::processNotifications(OZNotificationManager *this)
{
  if ((*(this + 136) & 1) == 0)
  {
    if (*(this + 121) == 1)
    {
      [*(this + 13) releaseTimer];
      [*(this + 13) createTimer];
    }

    if (*(this + 16))
    {
      v2 = [objc_msgSend(MEMORY[0x277CBEB88] "currentRunLoop")];
      CFRunLoopRemoveObserver(v2, *(this + 16), *MEMORY[0x277CBF048]);
    }

    v3 = *(this + 24);
    if (v3)
    {
      *(this + 24) = 0;
      if ((v3 & 0x20) != 0)
      {
        std::__tree<std::pair<OZChannelRef,unsigned int>>::destroy(this + 24, *(this + 4));
        *(this + 4) = 0;
        *(this + 5) = 0;
        *(this + 3) = this + 32;
        v4 = *(this + 6);
          ;
        }

        *(this + 7) = v4;
      }

      else
      {
        v4 = *(this + 7);
      }

      if (*(this + 6) == v4)
      {
        v6 = *(this + 3);
        if (v6 != (this + 32))
        {
          do
          {
            std::vector<OZChannelRef>::push_back[abi:ne200100](this + 48, (v6 + 32));
            v7 = *(v6 + 1);
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
                v8 = *(v6 + 2);
                v9 = *v8 == v6;
                v6 = v8;
              }

              while (!v9);
            }

            v6 = v8;
          }

          while (v8 != (this + 32));
        }
      }

      for (j = *(this + 1); j != this; j = *(j + 8))
      {
        v11 = *(j + 40);
        v12 = v3;
        if (v11)
        {
          v12 = v3 & ~v11;
          *(j + 40) = 0;
        }

        v13 = *(j + 36);
        v14 = v12 & ~v13;
        if ((v12 & ~v13) != 0)
        {
          v15 = *(j + 16);
          if (*(j + 32) == 1)
          {
            [v15 notify:v14];
          }

          else
          {
            (*(*v15 + 16))(v15, v14);
          }
        }
      }

      if ((v3 & 0x800008) == 8)
      {
        if (*(this + 120))
        {
          *(this + 120) = 0;
LABEL_62:
          if ((v3 & 0xC) != 4)
          {
            std::__tree<std::pair<OZChannelRef,unsigned int>>::destroy(this + 24, *(this + 4));
            *(this + 4) = 0;
            *(this + 5) = 0;
            *(this + 3) = this + 32;
            v28 = *(this + 6);
              ;
            }

            *(this + 7) = v28;
          }

          return;
        }

        v16 = *(this + 3);
        v17 = this + 32;
        if (v16 != this + 32)
        {
          v18 = *(this + 3);
          while (*(v18 + 14) != 1)
          {
            v19 = *(v18 + 1);
            if (v19)
            {
              do
              {
                v20 = v19;
                v19 = *v19;
              }

              while (v19);
            }

            else
            {
              do
              {
                v20 = *(v18 + 2);
                v9 = *v20 == v18;
                v18 = v20;
              }

              while (!v9);
            }

            v18 = v20;
            if (v20 == v17)
            {
              goto LABEL_47;
            }
          }

          v22 = *(this + 9);
          v21 = *(this + 10);
          if (v21 != v22)
          {
            do
            {
              OZChannelRef::~OZChannelRef((v21 - 24));
            }

            while (v21 != v22);
            v16 = *(this + 3);
          }

          *(this + 10) = v22;
        }

LABEL_47:
        if (v16 != v17)
        {
          do
          {
            if (*(v16 + 14) == 1 && (*(*(this + 14) + 101) & 1) == 0)
            {
              std::vector<OZChannelRef>::push_back[abi:ne200100](this + 72, (v16 + 32));
            }

            v23 = *(v16 + 1);
            if (v23)
            {
              do
              {
                v24 = v23;
                v23 = *v23;
              }

              while (v23);
            }

            else
            {
              do
              {
                v24 = *(v16 + 2);
                v9 = *v24 == v16;
                v16 = v24;
              }

              while (!v9);
            }

            v16 = v24;
          }

          while (v24 != v17);
        }
      }

      if ((v3 & 0x800000) != 0)
      {
        v26 = *(this + 9);
          ;
        }

        *(this + 10) = v26;
      }

      goto LABEL_62;
    }
  }
}

uint64_t std::vector<OZChannelRef>::push_back[abi:ne200100](uint64_t a1, const OZChannelRef *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<OZChannelRef>::__emplace_back_slow_path<OZChannelRef const&>(a1, a2);
  }

  else
  {
    OZChannelRef::OZChannelRef(*(a1 + 8), a2);
    result = v3 + 24;
    *(a1 + 8) = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void OZNotificationManager::postNotification(OZNotificationManager *this, int a2)
{
  if (theApp)
  {
    if ((*(theApp + 80) & 1) != 0 || *(this + 121) != 1 || (Instance = OZCurrentThread::getInstance(this), PCThread::isSelf(*(Instance + 8))))
    {
      v5 = *(this + 24);
      *(this + 24) = v5 | a2;
      if (a2 && !v5)
      {
        if (*(this + 16))
        {
          v6 = [objc_msgSend(MEMORY[0x277CBEB88] "currentRunLoop")];
          CFRunLoopAddObserver(v6, *(this + 16), *MEMORY[0x277CBF048]);
        }

        v7 = *(this + 13);

        [v7 fire];
      }
    }

    else
    {
      NSLog(&cfstr_TriedToPostANo.isa);
    }
  }
}

void OZNotificationManager::willModifyChannel(OZNotificationManager *this, const OZChannelBase *a2, int a3)
{
  if (theApp)
  {
    if ((*(theApp + 80) & 1) != 0 || *(this + 121) != 1 || (Instance = OZCurrentThread::getInstance(this), PCThread::isSelf(*(Instance + 8))))
    {
      if ((*(*(this + 14) + 101) & 1) == 0)
      {
        OZChannelRef::OZChannelRef(v9, a2, 0);
        OZChannelRef::OZChannelRef(&v7, v9);
        v8 = a3;
        if ((this + 32) == std::__tree<std::pair<OZChannelRef,unsigned int>>::find<std::pair<OZChannelRef,unsigned int>>(this + 24, &v7))
        {
          std::__tree<std::pair<OZChannelRef,unsigned int>>::__emplace_unique_key_args<std::pair<OZChannelRef,unsigned int>,std::pair<OZChannelRef,unsigned int> const&>(this + 24, &v7);
        }

        OZChannelRef::~OZChannelRef(&v7.__r_.__value_.__l.__data_);
        OZChannelRef::~OZChannelRef(v9);
      }
    }

    else
    {
      NSLog(&cfstr_TriedToPostANo.isa);
    }
  }
}

void sub_2600E2FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

void OZNotificationManager::clearLastModifiedChannels(OZNotificationManager *this)
{
  v2 = *(this + 10);
  v3 = *(this + 9);
  while (v2 != v3)
  {
    OZChannelRef::~OZChannelRef((v2 - 24));
  }

  *(this + 10) = v3;
}

BOOL OZNotificationManager::wasChannelModified(OZNotificationManager *this, const OZChannelRef *a2)
{
  v2 = *(this + 3);
  v3 = this + 32;
  if (v2 == this + 32)
  {
    return 0;
  }

  while (1)
  {
    result = OZChannelRef::operator==(v2 + 4, a2);
    if (result)
    {
      break;
    }

    v6 = *(v2 + 1);
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
        v7 = *(v2 + 2);
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v2 = v7;
    if (v7 == v3)
    {
      return result;
    }
  }

  return 1;
}

BOOL OZNotificationManager::wasChannelModified(OZNotificationManager *this, const OZChannelBase *a2)
{
  OZChannelRef::OZChannelRef(v5, a2, 0);
  v3 = OZNotificationManager::wasChannelModified(this, v5);
  OZChannelRef::~OZChannelRef(v5);
  return v3;
}

void sub_2600E312C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  OZChannelRef::~OZChannelRef(va);
  _Unwind_Resume(a1);
}

void OZNotificationManager::createRunLoopObserver(OZNotificationManager *this)
{
  v2 = [objc_msgSend(MEMORY[0x277CBEB88] "currentRunLoop")];
  context.version = 0;
  context.info = this;
  memset(&context.retain, 0, 24);
  v3 = CFRunLoopObserverCreate(*MEMORY[0x277CBECE8], 0xA0uLL, 1u, 0, updateRunLoopObserver, &context);
  *(this + 16) = v3;
  if (v3)
  {
    CFRunLoopAddObserver(v2, v3, *MEMORY[0x277CBF048]);
  }
}

void std::__tree<std::pair<OZChannelRef,unsigned int>>::destroy(uint64_t a1, void **a2)
{
  if (a2)
  {
    std::__tree<std::pair<OZChannelRef,unsigned int>>::destroy(a1, *a2);
    std::__tree<std::pair<OZChannelRef,unsigned int>>::destroy(a1, a2[1]);
    OZChannelRef::~OZChannelRef(a2 + 4);

    operator delete(a2);
  }
}

uint64_t std::__tree<std::pair<OZChannelRef,unsigned int>>::find<std::pair<OZChannelRef,unsigned int>>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<std::pair<OZChannelRef,unsigned int>>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<std::pair<OZChannelRef,unsigned int>>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<std::pair<OZChannelRef,unsigned int>>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (OZChannelRef::operator<(a2, a3))
  {
    return 1;
  }

  if (OZChannelRef::operator<(a3, a2))
  {
    return 0;
  }

  return *(a2 + 24) < *(a3 + 24);
}

uint64_t std::__tree<std::pair<OZChannelRef,unsigned int>>::__emplace_unique_key_args<std::pair<OZChannelRef,unsigned int>,std::pair<OZChannelRef,unsigned int> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::pair<OZChannelRef,unsigned int>>::__find_equal<std::pair<OZChannelRef,unsigned int>>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::pair<OZChannelRef,unsigned int>>::__construct_node<std::pair<OZChannelRef,unsigned int> const&>();
  }

  return v2;
}

void *std::__tree<std::pair<OZChannelRef,unsigned int>>::__find_equal<std::pair<OZChannelRef,unsigned int>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<std::pair<OZChannelRef,unsigned int>>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<std::pair<OZChannelRef,unsigned int>>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::pair<OZChannelRef,unsigned int>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::pair<OZChannelRef,unsigned int>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      OZChannelRef::~OZChannelRef(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
}

void *OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(OZDocumentBundleFormatUtils *this)
{
  v8[1] = *MEMORY[0x277D85DE8];
  {
    PCString::PCString(&v3, "52A68C6D-B49C-41AA-B3EA-03945D0C8EB4");
    PCString::PCString(&v4, "920273EF-948C-4556-8EB8-8EFEF7A34111");
    PCString::PCString(&v5, "23723AD7-62C4-4ED0-A8C6-FA5A2D7162E4");
    PCString::PCString(&v6, "14B39AEF-607D-42DF-98DD-DB3DD345E925");
    PCString::PCString(&v7, "9C13F991-BC99-4DC8-B150-381D7CCE183B");
    PCString::PCString(v8, "267EDBAB-297C-4BF4-B741-A166B5997C9B");
    std::list<PCString>::list(&OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs, &v3, 6);
    for (i = 40; i != -8; i -= 8)
    {
      PCString::~PCString((&v3 + i));
    }

    __cxa_atexit(std::list<PCString>::~list, &OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs, &dword_25F8F0000);
  }

  return &OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs;
}

void sub_2600E36B8(_Unwind_Exception *a1)
{
  v3 = v1 + 5;
  v4 = -48;
  do
  {
    PCString::~PCString(v3);
    v3 = (v5 - 8);
    v4 += 8;
  }

  while (v4);
  _Unwind_Resume(a1);
}

void *OZDocumentBundleFormatUtils::unsupportedFxPlugGroupUUIDs(OZDocumentBundleFormatUtils *this)
{
  v2[1] = *MEMORY[0x277D85DE8];
  {
    PCString::PCString(v2, "50CDA38A-311B-493D-8BD3-AFD5ACE9DA4A");
    std::list<PCString>::list(&OZDocumentBundleFormatUtils::unsupportedFxPlugGroupUUIDs(void)::unsupportedFxPlugGroupUUIDs, v2, 1);
    PCString::~PCString(v2);
    __cxa_atexit(std::list<PCString>::~list, &OZDocumentBundleFormatUtils::unsupportedFxPlugGroupUUIDs(void)::unsupportedFxPlugGroupUUIDs, &dword_25F8F0000);
  }

  return &OZDocumentBundleFormatUtils::unsupportedFxPlugGroupUUIDs(void)::unsupportedFxPlugGroupUUIDs;
}

void sub_2600E37E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PCString a9)
{
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

CFComparisonResult OZDocumentBundleFormatUtils::isSupportedFxPlug(OZDocumentBundleFormatUtils *this, const PCString *a2, const PCString *a3, const PCString *a4)
{
  if (this)
  {
    return 0;
  }

  v7 = OZDocumentBundleFormatUtils::unsupportedFxPlugGroupUUIDs(this);
  OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(v7);
  for (i = qword_27FE4BD50; i != &OZDocumentBundleFormatUtils::unsupportedFxPlugGroupUUIDs(void)::unsupportedFxPlugGroupUUIDs; i = i[1].var0)
  {
    result = PCString::compare(i + 2, a2);
    if (!result)
    {
      return result;
    }
  }

  var0 = qword_27FE4BD30;
  if (qword_27FE4BD30 == &OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs)
  {
    return 1;
  }

  while (PCString::compare(var0 + 2, a3))
  {
    var0 = var0[1].var0;
    if (var0 == &OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs)
    {
      var0 = &OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs;
      return (var0 == &OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs);
    }
  }

  return (var0 == &OZDocumentBundleFormatUtils::unsupportedFxPlugUUIDs(void)::unsupportedFxPlugUUIDs);
}

void std::__list_imp<PCString>::clear(PCString *a1)
{
  if (a1[2].var0)
  {
    var0 = a1[1].var0;
    info = a1->var0->info;
    v4 = var0->var0;
    v4->info = info;
    *info = v4;
    a1[2].var0 = 0;
    if (var0 != a1)
    {
      do
      {
        v5 = var0[1].var0;
        PCString::~PCString(var0 + 2);
        operator delete(var0);
        var0 = v5;
      }

      while (v5 != a1);
    }
  }
}

void *std::list<PCString>::list(void *result, uint64_t a2, uint64_t a3)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (a3)
  {
    std::__list_imp<PCString>::__create_node[abi:ne200100]<PCString const&>();
  }

  return result;
}

uint64_t OZScene::setVideoOrientation(uint64_t a1, int a2)
{
  PCMutex::lock((a1 + 160));
  *(a1 + 148) = a2;
  return PCMutex::unlock((a1 + 160));
}

uint64_t OZScene::setARFrameForObject(OZScene *this, Li3DEngineImageSource *a2)
{
  v4 = (this + 160);
  PCMutex::lock((this + 160));
  Li3DEngineImageSource::setVideoOrientation(a2, *(this + 37));
  return PCMutex::unlock(v4);
}

uint64_t OZScene::getSceneComposer(OZScene *this)
{
  result = *(this + 233);
  if (!result)
  {
    result = objc_opt_new();
    *(this + 233) = result;
  }

  return result;
}

uint64_t *OZScene::begin_t<OZSceneNodeFile,false,true>@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result[151];
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = result + 150;
  *(a2 + 24) = 0;
  if (v3 != result + 150)
  {
    v4 = v3[2];
    if (!v4)
    {
      return OZObject::iterator_t<OZSceneNodeFile,false,true,OZObject::defaultValidator>::operator++(a2);
    }

    if (!result)
    {
      return OZObject::iterator_t<OZSceneNodeFile,false,true,OZObject::defaultValidator>::operator++(a2);
    }
  }

  return result;
}

uint64_t *OZObject::iterator_t<OZSceneNodeFile,false,true,OZObject::defaultValidator>::operator++(uint64_t *a1)
{
  OZObject::iterator_t<OZSceneNodeFile,false,true,OZObject::defaultValidator>::increment(a1);
  for (i = *a1; *a1 != a1[2]; i = *a1)
  {
    v3 = *(i + 16);
    {
      break;
    }

    OZObject::iterator_t<OZSceneNodeFile,false,true,OZObject::defaultValidator>::increment(a1);
  }

  return a1;
}

uint64_t OZScene::setupFxPlugRenderContext(OZScene *this, const OZRenderParams *a2)
{
  OZScene::begin_all(this, v21);
  while (1)
  {
    OZScene::end_all_sel(this, v17);
    if (v24 != v19[2])
    {
LABEL_6:
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
      goto LABEL_9;
    }

    if (v24 < 2)
    {
      v4 = v17;
      v3 = v21;
    }

    else
    {
      v3 = &v23;
      v4 = v19;
      if (v24 != 3)
      {
        v3 = &v22;
        v4 = &v18;
        if (v24 != 2)
        {
          goto LABEL_6;
        }
      }
    }

    v5 = *v3;
    v6 = *v4;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v20);
    if (v5 == v6)
    {
      return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v25);
    }

LABEL_9:
    if (v24 < 2)
    {
      v9 = v21[0];
      if (v21[0] == v21[2])
      {
        goto LABEL_21;
      }

      v8 = 16;
    }

    else
    {
      if (v24 == 2)
      {
        v7 = &v22;
        v8 = 48;
      }

      else
      {
        if (v24 != 3)
        {
          goto LABEL_21;
        }

        v7 = &v23;
        v8 = 16;
      }

      v9 = *v7;
    }

    v10 = *(v9 + 16);
    if (v10)
    {
      if (v11)
      {
        v12 = [v11[4] contextManager];
        if (v12)
        {
          OZFxPlugRenderContextManager::pushContext(v12, a2, 1);
        }
      }
    }

LABEL_21:
    OZObject::all_iterator_t<OZObjectManipulator,false,true,OZObject::defaultAllValidator>::operator++(v21, v15);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v16);
  }
}

void *OZObject::all_iterator_t<OZObjectManipulator,false,true,OZObject::defaultAllValidator>::operator++@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 1);
  *a2 = *a1;
  *(a2 + 16) = v3;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 1065353216;
  *(a2 + 32) = a1[4];
  *(a2 + 40) = *(a1 + 10);
  *(a2 + 48) = 0u;
  do
  {
    while (1)
    {
      result = OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::increment(a1);
      v5 = *(a1 + 10);
      if (v5 < 2)
      {
        break;
      }

      if (v5 == 2)
      {
        v6 = 3;
        goto LABEL_9;
      }

      if (v5 == 3)
      {
        v6 = 4;
LABEL_9:
        v7 = a1[v6];
        goto LABEL_10;
      }
    }

    v7 = *a1;
    if (*a1 == a1[2])
    {
      return result;
    }

LABEL_10:
    ;
  }

  while (!*(v7 + 16));
  return result;
}

uint64_t OZScene::teardownFxPlugRenderContext(OZScene *this)
{
  OZScene::begin_all(this, v19);
  while (1)
  {
    OZScene::end_all_sel(this, v15);
    if (v22 != v17[2])
    {
LABEL_6:
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v18);
      goto LABEL_9;
    }

    if (v22 < 2)
    {
      v3 = v15;
      v2 = v19;
    }

    else
    {
      v2 = &v21;
      v3 = v17;
      if (v22 != 3)
      {
        v2 = &v20;
        v3 = &v16;
        if (v22 != 2)
        {
          goto LABEL_6;
        }
      }
    }

    v4 = *v2;
    v5 = *v3;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(v18);
    if (v4 == v5)
    {
      return std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v23);
    }

LABEL_9:
    if (v22 < 2)
    {
      v8 = v19[0];
      if (v19[0] == v19[2])
      {
        goto LABEL_21;
      }

      v7 = 16;
    }

    else
    {
      if (v22 == 2)
      {
        v6 = &v20;
        v7 = 48;
      }

      else
      {
        if (v22 != 3)
        {
          goto LABEL_21;
        }

        v6 = &v21;
        v7 = 16;
      }

      v8 = *v6;
    }

    v9 = *(v8 + 16);
    if (v9)
    {
      if (v10)
      {
        v11 = [v10[4] contextManager];
        if (v11)
        {
          OZFxPlugRenderContextManager::popContext(v11);
        }
      }
    }

LABEL_21:
    OZObject::all_iterator_t<OZObjectManipulator,false,true,OZObject::defaultAllValidator>::operator++(v19, &v13);
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::~__hash_table(&v14);
  }
}

void *OZObject::iterator_t<OZSceneNodeFile,false,true,OZObject::defaultValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    goto LABEL_14;
  }

  v4 = *(v3 + 16);
  if ((*(*v4 + 1056))(v4))
  {
    v5 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v5;
    result = (*(*v4 + 1104))(v4);
    *v1 = result;
    *(v1 + 24) = 1;
    return result;
  }

  if ((*(*v4 + 960))(v4))
  {
    v6 = *v1;
    v13 = v4;
    v14 = &v13;
    std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 4, &v13)[3] = v6;
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v7 = *(*v1 + 8);
  result = v4[120];
  if (!result || v7 == *v2)
  {
    *v1 = v7;
    return result;
  }

  v8 = *result;
  if (*(v1 + 24) == 1)
  {
    result = (*(v8 + 1112))();
  }

  else
  {
    result = (*(v8 + 1032))();
  }

  if (v7 != result)
  {
LABEL_13:
    v3 = *v1;
LABEL_14:
    *v1 = *(v3 + 8);
    return result;
  }

  if (*(v1 + 24) == 1 && (result = (*(*v4[120] + 960))(v4[120]), result))
  {
    result = (*(*v4[120] + 1024))(v4[120]);
    *v1 = result;
    *(v1 + 24) = 0;
  }

  else
  {
    *(v1 + 24) = 0;
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        break;
      }

      v14 = v4;
      v9 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 4, &v14);
      v10 = v9 + 3;
      if (!v9)
      {
        v10 = v2;
      }

      v11 = *v10;
      *v1 = v11;
      result = v4[120];
      if (result)
      {
        v12 = *(v11 + 8);
        result = (*(*result + 1032))(result);
        if (v12 == result && v12 != *v2)
        {
          continue;
        }
      }

      goto LABEL_13;
    }
  }

  return result;
}

void *OZObject::all_iterator_t<OZObjectManipulator,true,true,OZObject::defaultAllValidator>::increment(void *result)
{
  v1 = result;
  v2 = result + 2;
  v3 = *result;
  if (*result == result[2])
  {
    v3 = *(v3 + 8);
    *result = v3;
  }

  v4 = 0;
  v5 = *(result + 10);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        goto LABEL_63;
      }

      v6 = *(v3 + 8);
      v27 = *(v3 + 16);
      v4 = v27;
      v28 = &v27;
      result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(result + 6, &v27);
      result[3] = v3;
      if (!v4[124])
      {
        if (!v4[127])
        {
          result = (*(*v4[120] + 1112))(v4[120]);
          if (v6 == result && v6 != *v2)
          {
            v7 = v4[120];
            if (!v7[124])
            {
              if (!v7[127])
              {
                *(v1 + 10) = 0;
LABEL_61:
                result = (*(*v7 + 960))(v7);
                if (!result)
                {
                  goto LABEL_63;
                }

                result = (*(*v4[120] + 1024))(v4[120]);
                *v1 = result;
                *(v1 + 10) = 0;
                return result;
              }

              goto LABEL_58;
            }

LABEL_54:
            v28 = v7;
            result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
            v22 = result + 3;
            if (!result)
            {
              v22 = v2;
            }

            *v1 = *v22;
            v13 = v7[123];
            goto LABEL_31;
          }

          goto LABEL_69;
        }

LABEL_42:
        v19 = v4[126];
LABEL_43:
        v1[4] = v19;
LABEL_44:
        v10 = 3;
        goto LABEL_45;
      }
    }

    else
    {
      v4 = *(v3 + 16);
      if (((*(*v4 + 960))(v4) & 1) == 0 && ((*(*v4 + 1056))(v4) & 1) == 0 && !v4[124] && !v4[127])
      {
        result = v4[120];
        if (result)
        {
          v21 = *v1;
          goto LABEL_67;
        }

        goto LABEL_69;
      }

      v9 = *v1;
      v27 = v4;
      v28 = &v27;
      std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::__emplace_unique_key_args<OZSceneNode *,std::piecewise_construct_t const&,std::tuple<OZSceneNode * const&>,std::tuple<>>(v1 + 6, &v27)[3] = v9;
      if ((*(*v4 + 960))(v4))
      {
        *v1 = (*(*v4 + 1024))(v4);
      }

      result = (*(*v4 + 1056))(v4);
      if (result)
      {
        result = (*(*v4 + 1104))(v4);
        *v1 = result;
        v10 = 1;
LABEL_45:
        *(v1 + 10) = v10;
        return result;
      }

      if (!v4[124])
      {
        if (!v4[127])
        {
          return result;
        }

        goto LABEL_42;
      }
    }

    v13 = v4[123];
LABEL_31:
    v1[3] = v13;
    v10 = 2;
    goto LABEL_45;
  }

  if (v5 == 2)
  {
    result = (*(**(result[3] + 16) + 248))(*(result[3] + 16));
    v4 = result;
    v11 = *(v1[3] + 8);
    v1[3] = v11;
    if (v11 != result + 122)
    {
      goto LABEL_63;
    }

    v12 = result[126];
    v1[4] = v12;
    if (v12 != result + 125)
    {
      goto LABEL_44;
    }
  }

  else if (v5 != 3 || (result = (*(**(result[4] + 16) + 320))(*(result[4] + 16)), v4 = result, v8 = *(v1[4] + 8), v1[4] = v8, v8 != result + 125))
  {
LABEL_63:
    while (1)
    {
      v4 = v4[120];
      if (!v4)
      {
        return result;
      }

      v28 = v4;
      v24 = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
      v25 = v24 + 3;
      if (!v24)
      {
        v25 = v2;
      }

      v21 = *v25;
      *v1 = v21;
      result = v4[120];
      if (!result)
      {
        goto LABEL_69;
      }

LABEL_67:
      v26 = *(v21 + 8);
      result = (*(*result + 1032))(result);
      if (v26 != result || v26 == *v2)
      {
        goto LABEL_69;
      }
    }
  }

  *(v1 + 10) = 0;
  if ((*(*v4 + 960))(v4))
  {
    result = (*(*v4 + 1024))(v4);
    *v1 = result;
    return result;
  }

  v28 = v4;
  result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
  v14 = result + 3;
  if (!result)
  {
    v14 = v2;
  }

  v15 = *v14;
  *v1 = *v14;
  v16 = v1[2];
  if (v15 != v16)
  {
    v17 = v15[1];
    result = v4[120];
    if (result)
    {
      v18 = v17 == v16;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      *v1 = v17;
      return result;
    }

    v20 = *result;
    if ((v4[128] & 8) != 0)
    {
      result = (*(v20 + 1112))();
      if (v17 == result)
      {
        v7 = v4[120];
        if (!v7[124])
        {
          if (!v7[127])
          {
            goto LABEL_61;
          }

LABEL_58:
          v28 = v7;
          result = std::__hash_table<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::__unordered_map_hasher<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::hash<OZSceneNode *>,std::equal_to<OZSceneNode *>,true>,std::__unordered_map_equal<OZSceneNode *,std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>,std::equal_to<OZSceneNode *>,std::hash<OZSceneNode *>,true>,std::allocator<std::__hash_value_type<OZSceneNode *,std::__list_iterator<OZSceneNode *,void *>>>>::find<OZSceneNode *>(v1 + 6, &v28);
          v23 = result + 3;
          if (!result)
          {
            v23 = v2;
          }

          *v1 = *v23;
          v19 = v7[126];
          goto LABEL_43;
        }

        goto LABEL_54;
      }

      *(v1 + 10) = 1;
    }

    else
    {
      result = (*(v20 + 1032))();
      if (v17 == result)
      {
        goto LABEL_63;
      }
    }

LABEL_69:
    *v1 = *(*v1 + 8);
  }

  return result;
}

void OZSceneSettings::OZSceneSettings(OZSceneSettings *this)
{
  *this = &unk_287283398;
  *(this + 7) = 0xFFFFFFFF00000000;
  *(this + 16) = -1;
  *(this + 34) = 0;
  *(this + 18) = -1;
  PCColor::PCColor((this + 80));
  PCSharedCount::PCSharedCount(this + 23);
  if (*(theApp + 81))
  {
    *(this + 1) = 0x1E0000002D0;
    *(this + 32) = -1;
    v3 = PCColorSpaceCache::cgsRGB(*(this + 14));
    PCColor::PCColor(&v15, 0.0, 0.0, 0.0, 0.0, v3);
    v4 = *&v15.var0.var1[1];
    *(this + 5) = *&v15.var0.var0;
    *(this + 6) = v4;
    *(this + 7) = *&v15.var0.var1[3];
    v5 = *(this + 16);
    obj = v15.var1._obj;
    if (v5 && v5 != v15.var1._obj)
    {
      PCCFRefTraits<CGColorSpace *>::release(v5);
      obj = v15.var1._obj;
    }

    *(this + 16) = obj;
    v15.var1._obj = 0;
    PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
    v7 = *(this + 2);
  }

  else
  {
    v8 = OZPreferenceManager::Instance(v2);
    *(this + 2) = OZPreferenceManager::getDefaultProjectWidth(v8);
    *(this + 3) = OZPreferenceManager::getDefaultProjectHeight(v8);
    OZChannelBase::setRangeName(v8, this + 10);
    v9 = PCColorSpaceCache::cgsRGB(*(this + 14));
    PCColor::PCColor(&v15, (this + 80), v9);
    v10 = *&v15.var0.var1[1];
    *(this + 5) = *&v15.var0.var0;
    *(this + 6) = v10;
    *(this + 7) = *&v15.var0.var1[3];
    v11 = *(this + 16);
    v12 = v15.var1._obj;
    if (v11 && v11 != v15.var1._obj)
    {
      PCCFRefTraits<CGColorSpace *>::release(v11);
      v12 = v15.var1._obj;
    }

    *(this + 16) = v12;
    v15.var1._obj = 0;
    PCCFRef<CGColorSpace *>::~PCCFRef(&v15.var1._obj);
    v13 = *(this + 1);
    *(this + 32) = v13;
    v7 = v13;
  }

  *(this + 34) = 0;
  *(this + 140) = 1;
  *(this + 4) = 150;
  *(this + 20) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0x403E000000000000;
  *(this + 40) = 0;
  *(this + 24) = 0x400000002;
  *(this + 25) = 0x40E5888000000000;
  v14 = *MEMORY[0x277CC08F0];
  *(this + 36) = *(MEMORY[0x277CC08F0] + 16);
  *(this + 6) = 0x3FF0000000000000;
  *(this + 17) = v14;
  *(this + 296) = 0;
  *(this + 18) = 0x800000002;
  *(this + 19) = 0x3FF0000000000000;
  *(this + 160) = 0;
  *(this + 21) = 0x4000000000000000;
  *(this + 44) = 2;
  *(this + 53) = 0;
  *(this + 220) = 0;
  *(this + 57) = 3;
  *(this + 232) = 0;
  *(this + 59) = v7;
  *(this + 240) = 0;
  *(this + 264) = 1;
  *(this + 31) = 0x4059000000000000;
  *(this + 67) = 0;
}

void sub_2600E4D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  PCString::~PCString((v8 + 184));
  PCCFRef<CGColorSpace *>::~PCCFRef((v8 + 128));
  _Unwind_Resume(a1);
}

uint64_t OZSceneSettings::OZSceneSettings(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287283398;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 69) = 0;
  *(a1 + 72) = -1;
  v4 = *(a2 + 80);
  v5 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v5;
  *(a1 + 80) = v4;
  v6 = *(a2 + 128);
  *(a1 + 128) = v6;
  if (v6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  v7 = *(a2 + 152);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = v7;
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = *(a2 + 176);
  PCString::PCString((a1 + 184), (a2 + 184));
  v8 = *(a2 + 200);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = v8;
  *(a1 + 212) = *(a2 + 212);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 236) = *(a2 + 236);
  *(a1 + 240) = *(a2 + 240);
  v9 = *(a2 + 256);
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 256) = v9;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 268) = *(a2 + 268);
  v10 = MEMORY[0x277CC08F0];
  *(a1 + 272) = *MEMORY[0x277CC08F0];
  *(a1 + 288) = *(v10 + 16);
  *(a1 + 296) = 0;
  return a1;
}

uint64_t OZSceneSettings::setFrameRate(uint64_t this, double a2, char a3)
{
  *(this + 32) = a2;
  v3 = vcvtmd_s64_f64(a2 + 0.5 + 0.0000001);
  *(this + 40) = a3;
  v4 = a2 - v3;
  if (v4 > -0.1 && v3 == 30)
  {
    v6 = 30.0;
    if (v4 < 0.0)
    {
      goto LABEL_17;
    }
  }

  if (v4 > -0.1 && v3 == 24)
  {
    v6 = 24.0;
    if (v4 < 0.0)
    {
      goto LABEL_17;
    }
  }

  if (v4 > -0.1 && v3 == 60 && v4 < 0.0)
  {
    v6 = 60.0;
LABEL_17:
    *(this + 32) = v6;
    *(this + 40) = 1;
  }

  return this;
}

CMTime *OZSceneSettings::GetFrameDuration@<X0>(OZSceneSettings *this@<X0>, double a2@<D0>, CMTime *a3@<X8>)
{
  v3 = 120000;
  v4 = vcvtmd_s64_f64(a2 + 0.5 + 0.0000001);
  if (v4 == 30 && (this & 1) != 0)
  {
    v5 = 4004;
  }

  else if (v4 == 24 && (this & 1) != 0)
  {
    v5 = 5005;
  }

  else if (v4 == 60 && (this & 1) != 0)
  {
    v5 = 2002;
  }

  else
  {
    if (v4)
    {
      if (600 / v4 * v4 == 600)
      {
        v5 = (600 / v4) << 8;
        v3 = 153600;
        return CMTimeMake(a3, v5, v3);
      }

      v3 = v4 << 8;
    }

    else
    {
      v3 = 7680;
    }

    v5 = 256;
  }

  return CMTimeMake(a3, v5, v3);
}

uint64_t OZSceneSettings::getHostAppProjectHeight(OZSceneSettings *this)
{
  result = *(this + 65);
  if (result == -1)
  {
    return *(this + 3);
  }

  return result;
}

__n128 OZSceneSettings::getFrameDuration@<Q0>(OZSceneSettings *this@<X0>, __n128 *a2@<X8>)
{
  if ((*(this + 296) & 1) == 0)
  {
    OZSceneSettings::GetFrameDuration(*(this + 40), vcvtmd_s64_f64(*(this + 4) + 0.5 + 0.0000001), &v5);
    *(this + 272) = v5;
    *(this + 296) = 1;
  }

  result = *(this + 17);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 36);
  return result;
}

double OZSceneSettings::getDisplayFrameRate(OZSceneSettings *this)
{
  result = *(this + 4);
  if (*(this + 40) == 1)
  {
    return vcvtmd_s64_f64(result * 100.0 + 0.5 + 0.0000001) * 0.01;
  }

  return result;
}

uint64_t OZSceneSettings::getBitDepth(OZSceneSettings *this)
{
  if (*(theApp + 81))
  {
    return 2;
  }

  v5[6] = v1;
  v5[7] = v2;
  v4 = OZPreferenceManager::Instance(this);
  OZPreferenceManager::getRenderingTechnology(v4, v5);
  return HGGLBlendingInfo::GetDstAlphaFactor(v5);
}

uint64_t OZSceneSettings::setAnimateFlag(OZSceneSettings *this, char a2)
{
  *(this + 220) = a2;
  result = OZCoreGlobals::getInstance(this);
  *(result + 8) = a2;
  return result;
}

uint64_t OZSceneSettings::setRawWorkingGamut(uint64_t result, int a2)
{
  *(result + 56) = a2;
  if (a2 != 1)
  {
    *(result + 64) = 0;
  }

  return result;
}

uint64_t OZSceneSettings::writeHeader(OZSceneSettings *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZSceneSettingsScope);
  (*(*a2 + 16))(a2, 74);

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t OZSceneSettings::writeBody(OZSceneSettings *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &OZSceneSettingsScope);
  v4 = *(this + 2);
  (*(*a2 + 16))(a2, 2);
  (*(*a2 + 48))(a2, v4);
  (*(*a2 + 24))(a2);
  v5 = *(this + 3);
  (*(*a2 + 16))(a2, 3);
  (*(*a2 + 48))(a2, v5);
  (*(*a2 + 24))(a2);
  v6 = *(this + 4);
  (*(*a2 + 16))(a2, 4);
  (*(*a2 + 56))(a2, v6);
  (*(*a2 + 24))(a2);
  v7 = *(this + 20);
  (*(*a2 + 16))(a2, 42);
  (*(*a2 + 48))(a2, v7);
  (*(*a2 + 24))(a2);
  v8 = *(this + 4);
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 88))(a2, v8);
  (*(*a2 + 24))(a2);
  v9 = *(this + 40);
  (*(*a2 + 16))(a2, 6);
  (*(*a2 + 48))(a2, v9);
  (*(*a2 + 24))(a2);
  v10 = *(this + 6);
  (*(*a2 + 16))(a2, 9);
  (*(*a2 + 88))(a2, v10);
  (*(*a2 + 24))(a2);
  v11 = *(this + 14);
  (*(*a2 + 16))(a2, 47);
  (*(*a2 + 48))(a2, v11);
  (*(*a2 + 24))(a2);
  v12 = *(this + 15);
  (*(*a2 + 16))(a2, 48);
  (*(*a2 + 48))(a2, v12);
  (*(*a2 + 24))(a2);
  v13 = *(this + 16);
  (*(*a2 + 16))(a2, 50);
  (*(*a2 + 48))(a2, v13);
  (*(*a2 + 24))(a2);
  (*(*a2 + 16))(a2, 10);
  v37 = 0;
  v38 = 0;
  PCColor::getColorSpace((this + 80), &v36);
  PCColor::getRGBA((this + 80), &v38 + 1, &v38, &v37 + 1, &v37, &v36);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v36);
  (*(*a2 + 176))(a2, 1, *(&v38 + 1));
  (*(*a2 + 176))(a2, 2, *&v38);
  (*(*a2 + 176))(a2, 3, *(&v37 + 1));
  (*(*a2 + 176))(a2, 4, *&v37);
  (*(*a2 + 24))(a2);
  v14 = *(this + 48);
  (*(*a2 + 16))(a2, 11);
  (*(*a2 + 56))(a2, v14);
  (*(*a2 + 24))(a2);
  v15 = (8 * *(this + 49));
  (*(*a2 + 16))(a2, 12);
  (*(*a2 + 56))(a2, v15);
  (*(*a2 + 24))(a2);
  v16 = *(this + 36);
  (*(*a2 + 16))(a2, 15);
  (*(*a2 + 56))(a2, v16);
  (*(*a2 + 24))(a2);
  v17 = *(this + 37);
  (*(*a2 + 16))(a2, 17);
  (*(*a2 + 56))(a2, v17);
  (*(*a2 + 24))(a2);
  v18 = *(this + 19);
  (*(*a2 + 16))(a2, 18);
  (*(*a2 + 88))(a2, v18);
  (*(*a2 + 24))(a2);
  v19 = *(this + 160);
  (*(*a2 + 16))(a2, 45);
  (*(*a2 + 48))(a2, v19);
  (*(*a2 + 24))(a2);
  v20 = *(this + 6);
  (*(*a2 + 16))(a2, 20);
  (*(*a2 + 56))(a2, v20);
  v21 = (*(*a2 + 24))(a2);
  v22 = OZPreferenceManager::Instance(v21);
  if (TXParagraphStyleFolder_Factory::version(v22))
  {
    PCString::PCString(&v35, this + 23);
    (*(*a2 + 16))(a2, 25);
    (*(*a2 + 104))(a2, &v35);
    (*(*a2 + 24))(a2);
    PCString::~PCString(&v35);
  }

  v23 = *(this + 34);
  (*(*a2 + 16))(a2, 38);
  (*(*a2 + 48))(a2, v23);
  (*(*a2 + 24))(a2);
  v24 = *(this + 44);
  (*(*a2 + 16))(a2, 35);
  (*(*a2 + 48))(a2, v24);
  (*(*a2 + 24))(a2);
  v25 = *(this + 53);
  (*(*a2 + 16))(a2, 34);
  (*(*a2 + 56))(a2, v25);
  (*(*a2 + 24))(a2);
  v26 = *(this + 220);
  (*(*a2 + 16))(a2, 39);
  (*(*a2 + 48))(a2, v26);
  (*(*a2 + 24))(a2);
  v28 = OZChannelBase::setRangeName(*(this + 57), v27);
  (*(*a2 + 16))(a2, 41);
  (*(*a2 + 48))(a2, v28);
  (*(*a2 + 24))(a2);
  v29 = *(this + 240);
  (*(*a2 + 16))(a2, 43);
  (*(*a2 + 48))(a2, v29);
  (*(*a2 + 24))(a2);
  v30 = *(this + 31);
  (*(*a2 + 16))(a2, 51);
  (*(*a2 + 88))(a2, v30);
  (*(*a2 + 24))(a2);
  v31 = *(this + 68);
  (*(*a2 + 16))(a2, 52);
  (*(*a2 + 48))(a2, v31);
  (*(*a2 + 24))(a2);
  v32 = *(this + 69);
  (*(*a2 + 16))(a2, 53);
  (*(*a2 + 48))(a2, v32);
  (*(*a2 + 24))(a2);
  if ((*(this + 264) & 1) == 0)
  {
    (*(*a2 + 16))(a2, 44);
    (*(*a2 + 48))(a2, 0);
    (*(*a2 + 24))(a2);
  }

  v33 = *(this + 67);
  if (v33)
  {
    (*(*a2 + 16))(a2, 49);
    (*(*a2 + 48))(a2, v33);
    (*(*a2 + 24))(a2);
  }

  return PCSerializerWriteStream::popScope(a2);
}