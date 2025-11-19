void sub_260002E60(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

ProShade::ConstVector *ProShade::ConstVector::ConstVector(ProShade::ConstVector *this, float a2)
{
  *(this + 10) = &unk_2872DEA38;
  *(this + 11) = 0;
  *(this + 96) = 1;
  ProShade::Node::Node(this, &off_2872726E8);
  v4 = off_2872726E0;
  *this = off_2872726E0;
  *(this + *(v4 - 3)) = off_287272708;
  *this = &unk_2872725B8;
  *(this + 10) = &unk_2872726C0;
  *(this + 6) = a2;
  *(this + 7) = a2;
  *(this + 8) = a2;
  *(this + 9) = a2;
  *(this + 3) = 0x100000003;
  return this;
}

void sub_260002FD4(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t LoadLockCache::instance(LoadLockCache *this)
{
  {
    operator new();
  }

  return LoadLockCache::instance(void)::instance + 8;
}

void sub_26000306C(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10A1C40A64E3564);
  _Unwind_Resume(a1);
}

void LoadLockCache::LoadLockCache(LoadLockCache *this)
{
  PCSingleton::PCSingleton(this, 0);
  *v2 = &unk_28726B690;
  PCMutex::PCMutex((v2 + 8));
  *(this + 12) = 0;
  *(this + 11) = 0;
  *(this + 10) = this + 88;
}

void LoadLockCache::~LoadLockCache(LoadLockCache *this)
{
  *this = &unk_28726B690;
  std::__tree<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,std::weak_ptr<LiTextureStoreTokenImpl>>>>::destroy(this + 80, *(this + 11));
  PCMutex::~PCMutex((this + 8));

  PCSingleton::~PCSingleton(this);
}

{
  LoadLockCache::~LoadLockCache(this);

  JUMPOUT(0x2666E9F00);
}

void LiTransform::LiTransform(LiTransform *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 25) = 0x3FF0000000000000;
  *(this + 20) = 0x3FF0000000000000;
  *(this + 15) = 0x3FF0000000000000;
  *(this + 9) = 0;
  *(this + 10) = 0x3FF0000000000000;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  __asm { FMOV            V0.2D, #1.0 }

  *(this + 24) = _Q0;
  *(this + 40) = _Q0;
}

double PCMatrix44Tmpl<double>::rightRotate(uint64_t a1, double *a2)
{
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v4 = 0x3FF0000000000000;
  v5 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v4, a2);
  return PCMatrix44Tmpl<double>::rightMult(a1, &v4);
}

int8x8_t *LiMaterialLayerOperator::writeHash(LiMaterialLayerOperator *this, int8x8_t *a2)
{
  if (!this)
  {
    __cxa_bad_typeid();
  }

  v4 = (*(*(*this - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL);

  return PCHashWriteStream::writeValue(a2, v4);
}

void LiMaterialLayer::LiMaterialLayer(LiMaterialLayer *this, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  *this = v3;
  *(this + *(v3 - 24)) = a2[2];
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 24)) = a2[3];
  *(this + 4) = 0;
  *(this + 3) = -1;
  *(this + 2) = a3;
  *(this + 12) = 257;
}

void LiMaterialLayer::getHash(LiMaterialLayer *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v4);
  (*(*v1 + 56))(v1, v4);
  *v3 = *PCHashWriteStream::getHash(v4)->i8;
  PCHashWriteStream::~PCHashWriteStream(v4);
}

int8x8_t *LiMaterialLayer::writeHash(LiMaterialLayer *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, *(this + 8));
  PCHashWriteStream::writeValue(a2, *(this + 9));
  v4 = *(this + 24);

  return PCHashWriteStream::writeValue(a2, v4);
}

void *LiMaterialLayer::print(uint64_t a1, void *a2, int a3)
{
  LiImageSource::printIndent(a2, a3);
  if (!a1)
  {
    __cxa_bad_typeid();
  }

  v6 = *(*(*a1 - 8) + 8);
  v7 = strlen((v6 & 0x7FFFFFFFFFFFFFFFLL));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, v6 & 0x7FFFFFFFFFFFFFFFLL, v7);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\n", 1);
  if (*(a1 + 8) == 1)
  {
    LiImageSource::printIndent(a2, a3 + 1);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "separateEnvResponse: ", 21);
    if (*(a1 + 8))
    {
      v11 = "true";
    }

    else
    {
      v11 = "false";
    }

    if (*(a1 + 8))
    {
      v12 = 4;
    }

    else
    {
      v12 = 5;
    }

    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\n", 1);
  }

  if (*(a1 + 9) == 1)
  {
    LiImageSource::printIndent(a2, a3 + 1);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "onlyWhereOpaque: ", 17);
    if (*(a1 + 9))
    {
      v15 = "true";
    }

    else
    {
      v15 = "false";
    }

    if (*(a1 + 9))
    {
      v16 = 4;
    }

    else
    {
      v16 = 5;
    }

    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  }

  return result;
}

void LiMaterialLayer::clampColorToEdge(_DWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a1)
  {
    ProShade::Selector_base::_select(a3 + 8, 0);
  }

  *a4 = &unk_28725E328;
  *(a4 + 8) = *(a2 + 8);
  *(a4 + 16) = *(a2 + 16);
  v4 = (a2 + 24);

  PCSharedCount::PCSharedCount((a4 + 24), v4);
}

void sub_2600044FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, PCSharedCount a46)
{
  *(v49 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v48 + 3);
  *(v49 - 160) = v47;
  PCSharedCount::~PCSharedCount(v46 + 3);
  PCSharedCount::~PCSharedCount(&a42);
  a43 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a46);
  *(v49 - 256) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v49 - 232));
  *(v49 - 224) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v49 - 200));
  *(v49 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v49 - 168));
  _Unwind_Resume(a1);
}

void LiMaterialLayer::sampleTextureMap()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &unk_28725E328;
  operator new();
}

void sub_260006260(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, PC_Sp_counted_base *a16, uint64_t a17, uint64_t a18, uint64_t a19, PCSharedCount *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x290] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v70 + 3);
  PCSharedCount::~PCSharedCount(v72 + 3);
  PCSharedCount::~PCSharedCount(&a66);
  PCSharedCount::~PCSharedCount(&a70);
  PCSharedCount::~PCSharedCount(v71 + 3);
  STACK[0x210] = a9;
  PCSharedCount::~PCSharedCount(&STACK[0x228]);
  STACK[0x2B0] = a10;
  PCSharedCount::~PCSharedCount(&STACK[0x2C8]);
  *(v73 - 256) = a11;
  PCSharedCount::~PCSharedCount((v73 - 232));
  *(v73 - 224) = a12;
  PCSharedCount::~PCSharedCount((v73 - 200));
  *(v73 - 192) = a13;
  PCSharedCount::~PCSharedCount((v73 - 168));
  *(v73 - 160) = a14;
  PCSharedCount::~PCSharedCount((v73 - 136));
  *(v73 - 128) = a15;
  PCSharedCount::~PCSharedCount((v73 - 104));
  a20->var0 = a16;
  PCSharedCount::~PCSharedCount(a20 + 3);
  _Unwind_Resume(a1);
}

void LiMaterialLayer::calculateTriplanarNormal(LiMaterialLayer *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = &unk_28725E328;
  operator new();
}

void sub_260007860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, PC_Sp_counted_base *a9, uint64_t a10, uint64_t a11, PCSharedCount *a12)
{
  *(v14 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v12 + 3);
  *(v14 - 256) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v14 - 232));
  PCSharedCount::~PCSharedCount(v13 + 3);
  *(v14 - 224) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v14 - 200));
  *(v14 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v14 - 168));
  a12->var0 = a9;
  PCSharedCount::~PCSharedCount(a12 + 3);
  _Unwind_Resume(a1);
}

void sub_260008CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PC_Sp_counted_base *a10, uint64_t a11, PCSharedCount *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, PCSharedCount a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x210] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v74 + 3);
  PCSharedCount::~PCSharedCount(v73 + 3);
  a71 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x208]);
  PCSharedCount::~PCSharedCount(&a50);
  PCSharedCount::~PCSharedCount(v71 + 3);
  PCSharedCount::~PCSharedCount(v72 + 3);
  *(v75 - 232) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v75 - 208));
  a12->var0 = a10;
  PCSharedCount::~PCSharedCount(a12 + 3);
  _Unwind_Resume(a1);
}

void adjustHSVWithColor(double a1, double a2, double a3, double a4, double a5, double a6, int64x2_t a7)
{
  v17[68] = *MEMORY[0x277D85DE8];
  PCGetRec709YCbCrMatrix(v17, a2, a3, a4, a5, a6, a7);
  v7 = 0;
  v8 = &v11;
  for (i = v17; ; i = (i + 12))
  {
    for (j = 0; j != 3; ++j)
    {
      *&v8[8 * j] = *(i + j);
    }

    ++v7;
    v8 += 32;
    if (v7 == 3)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0u;
      v15 = 0u;
      v16 = 0x3FF0000000000000;
      ProShade::Mat4::Mat4();
    }
  }
}

void sub_26000AF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18)
{
  PCSharedCount::~PCSharedCount(v19 + 3);
  PCSharedCount::~PCSharedCount(v22 + 3);
  STACK[0x210] = v21;
  PCSharedCount::~PCSharedCount(v20 + 3);
  STACK[0x230] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&STACK[0x248]);
  STACK[0x250] = v18;
  PCSharedCount::~PCSharedCount(&STACK[0x268]);
  STACK[0x270] = v23;
  PCSharedCount::~PCSharedCount(&STACK[0x288]);
  STACK[0x290] = a10;
  PCSharedCount::~PCSharedCount(&STACK[0x2A8]);
  STACK[0x2B0] = a11;
  PCSharedCount::~PCSharedCount(&STACK[0x2C8]);
  STACK[0x2D0] = a17;
  PCSharedCount::~PCSharedCount(&STACK[0x2E8]);
  *(v24 - 256) = a18;
  PCSharedCount::~PCSharedCount((v24 - 232));
  *(v24 - 224) = a14;
  PCSharedCount::~PCSharedCount((v24 - 200));
  *(v24 - 192) = a15;
  PCSharedCount::~PCSharedCount((v24 - 168));
  *(v24 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v24 - 136));
  *(v24 - 128) = a16;
  PCSharedCount::~PCSharedCount((v24 - 104));
  _Unwind_Resume(a1);
}

void LiMaterialLayer::getSurfaceSpecularScalar(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int *a8)
{
  v9 = *MEMORY[0x277D85DE8];
  PCGetWorkingColorSpaceLuminanceCoefficients(*a8, &v8);
  operator new();
}

void sub_26000C260(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 3);
  *(v4 - 192) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v4 - 168));
  v1->var0 = v3;
  PCSharedCount::~PCSharedCount(v1 + 3);
  *(v4 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v4 - 136));
  _Unwind_Resume(a1);
}

void LiMaterialLayer::getSurfaceSpecularColor(int *a1@<X0>, os_unfair_lock_s *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, PCSharedCount *a5@<X8>)
{
  v19[9] = *MEMORY[0x277D85DE8];
  a5->var0 = &unk_28725E328;
  a5[2].var0 = 0;
  PCSharedCount::PCSharedCount(a5 + 3);
  v9 = *a1;
  if (*a1 <= 1)
  {
    if (!v9)
    {
      ProShade::Selector_base::_select(a4 + 552, 0x1D);
    }

    if (v9 == 1)
    {
      ProShade::Selector_base::_select(a3 + 8, 0x1D);
    }
  }

  else
  {
    switch(v9)
    {
      case 2:
        ProShade::Selector_base::_select(a4 + 552, 0x1D);
      case 3:
        SamplerInfo = LiMaterial::getSamplerInfo(a2, *(a3 + 368));
        v14 = *(SamplerInfo + 316);
        v15 = *(SamplerInfo + 332);
        PCSharedCount::PCSharedCount(&v11, (a3 + 376));
        ProShade::VarT<ProShade::UniformNode>::VarT(&v12, *(a3 + 400));
        v12.var0 = &unk_28725EAA0;
        ProShade::VarT<ProShade::UniformNode>::VarT(&v13, *(a3 + 432));
        v13.var0 = &unk_28725EB20;
        v16 = &unk_28725E328;
        PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v18, (a3 + 1712));
        LiMaterialLayer::sampleTextureMap();
      case 4:
        v16 = &unk_28725E328;
        v17 = *(a4 + 136);
        v18.var0 = *(a4 + 144);
        PCSharedCount::PCSharedCount(v19, (a4 + 152));
        operator new();
    }
  }
}

void sub_26000CF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, PC_Sp_counted_base *a10)
{
  *(v15 - 128) = v12;
  PCSharedCount::~PCSharedCount(v11 + 3);
  *(v15 - 160) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v15 - 136));
  *(v15 - 224) = v13;
  PCSharedCount::~PCSharedCount(v14 + 3);
  *(v15 - 192) = a9;
  PCSharedCount::~PCSharedCount((v15 - 168));
  v10->var0 = a10;
  PCSharedCount::~PCSharedCount(v10 + 3);
  _Unwind_Resume(a1);
}

void LiMaterialLayer::getSurfaceSpecularShininess(uint64_t a1, uint64_t a2, uint64_t a3, const PCSharedCount *a4)
{
  v13[6] = *MEMORY[0x277D85DE8];
  SamplerInfo = LiMaterial::getSamplerInfo(a1, *(a3 + 16));
  v9 = *(SamplerInfo + 316);
  v10 = *(SamplerInfo + 332);
  v7 = *(a1 + 697);
  v8 = *(a1 + 698);
  v12 = &unk_28725E328;
  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(v13, a4 + 2);
  v11 = &unk_28725E328;
  operator new();
}

void sub_26000D764(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v2 + 3);
  PCSharedCount::~PCSharedCount(v1 + 3);
  *(v3 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v3 - 104));
  _Unwind_Resume(a1);
}

void LiMaterialLayer::getSurfaceSpecularIntensity(os_unfair_lock_s *this, const LiLayeredMaterial *a2, const LiMaterialLayerUniform *a3)
{
  v12[2] = *MEMORY[0x277D85DE8];
  SamplerInfo = LiMaterial::getSamplerInfo(this, *(a2 + 126));
  v8 = *(SamplerInfo + 316);
  v9 = *(SamplerInfo + 332);
  v6 = BYTE1(this[174]._os_unfair_lock_opaque);
  os_unfair_lock_opaque_high = HIWORD(this[174]._os_unfair_lock_opaque);
  v11 = &unk_28725E328;
  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(v12, a2 + 234);
  v10 = &unk_28725E328;
  operator new();
}

void sub_26000DA8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  PCSharedCount::~PCSharedCount(v16 + 3);
  PCSharedCount::~PCSharedCount(va);
  PCSharedCount::~PCSharedCount(v15 + 3);
  *(v17 - 128) = v14;
  PCSharedCount::~PCSharedCount((v17 - 104));
  _Unwind_Resume(a1);
}

void LiMaterialLayer::tangentSpaceToEyeSpace(const PCSharedCount *this, const PCSharedCount *a2, const ProShade::Vec3 *a3, const ProShade::Vec3 *a4, const ProShade::Vec3 *a5)
{
  v12[4] = *MEMORY[0x277D85DE8];
  ProShade::Func<ProShade::Func_normalize>::eval(this, v12);
  ProShade::Func<ProShade::Func_normalize>::eval(a2, v11);
  v7 = &unk_28725E328;
  v8 = *(a4 + 8);
  v9 = *(a4 + 2);
  PCSharedCount::PCSharedCount(&v10, a4 + 3);
  ProShade::Func<ProShade::Func_dot>::eval(v12, &v7);
}

void sub_26000E730(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, PCSharedCount a52)
{
  PCSharedCount::~PCSharedCount(v52 + 3);
  PCSharedCount::~PCSharedCount(&a48);
  a49 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a52);
  *(v53 - 240) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v53 - 216));
  *(v53 - 208) = a10;
  PCSharedCount::~PCSharedCount((v53 - 184));
  *(v53 - 176) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v53 - 152));
  *(v53 - 144) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v53 - 120));
  _Unwind_Resume(a1);
}

void LiMaterialLayerUniform::setup(uint64_t a1, const void **a2, LiString *a3)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = malloc_type_malloc(v5 + 14, 0x10000403E1C8BA9uLL);
  v6[1] = v5 + 1;
  v6[2] = v5 + 2;
  atomic_store(1u, v6);
  atomic_store(0, v6);
  memcpy(v6 + 3, v4, v5);
  *(v6 + v5 + 12) = 95;
  atomic_fetch_add(v6, 1u);
  LiString::format(a3, v13);
  v7 = v6[1];
  v8 = v13[0];
  if (v13[0])
  {
    v9 = *(v13[0] - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 + v9;
  v11 = malloc_type_malloc(v10 + 13, 0x10000403E1C8BA9uLL);
  v11[1] = v10;
  v11[2] = v10 + 1;
  atomic_store(1u, v11);
  atomic_store(0, v11);
  memcpy(v11 + 3, v6 + 3, v7);
  memcpy(v11 + v7 + 12, v8, v9);
  *(v11 + v10 + 12) = 0;
  v13[1] = v11 + 3;
  atomic_fetch_add(v11, 1u);
  if (v13[0] && atomic_fetch_add((v13[0] - 12), 0xFFFFFFFF) == 1)
  {
    *v13[0] = 0;
    if (v13[0])
    {
      v12 = (v13[0] - 12);
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    free(v6);
  }

  operator new();
}

void sub_26000F024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  MEMORY[0x2666E9F00](v12, 0x10B1C402CAA7C2BLL);
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

void LiMaterialLayerUniform::setup(LiMaterialLayerUniform *this, const void **a2, const LiString *a3)
{
  v14[12] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (*a2)
  {
    v5 = *(v4 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = malloc_type_malloc(v5 + 14, 0x10000403E1C8BA9uLL);
  v6[1] = v5 + 1;
  v6[2] = v5 + 2;
  atomic_store(1u, v6);
  atomic_store(0, v6);
  memcpy(v6 + 3, v4, v5);
  *(v6 + v5 + 12) = 95;
  atomic_fetch_add(v6, 1u);
  LiString::format(a3, v14);
  v7 = v6[1];
  v8 = v14[0];
  if (v14[0])
  {
    v9 = *(v14[0] - 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = v7 + v9;
  v11 = malloc_type_malloc(v10 + 13, 0x10000403E1C8BA9uLL);
  v11[1] = v10;
  v11[2] = v10 + 1;
  atomic_store(1u, v11);
  atomic_store(0, v11);
  memcpy(v11 + 3, v6 + 3, v7);
  memcpy(v11 + v7 + 12, v8, v9);
  *(v11 + v10 + 12) = 0;
  v13 = v11 + 3;
  atomic_fetch_add(v11, 1u);
  if (v14[0] && atomic_fetch_add((v14[0] - 12), 0xFFFFFFFF) == 1)
  {
    *v14[0] = 0;
    if (v14[0])
    {
      v12 = (v14[0] - 12);
    }

    else
    {
      v12 = 0;
    }

    free(v12);
  }

  if (atomic_fetch_add(v6, 0xFFFFFFFF) == 1)
  {
    free(v6);
  }

  operator new();
}

void sub_26000F4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, atomic_uint *a9, atomic_uint *a10)
{
  MEMORY[0x2666E9F00](v10, 0x10B1C402CAA7C2BLL);
  if (a10 && atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
  {
    *a10 = 0;
    free(a10 - 3);
  }

  if (a9)
  {
    if (atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
    {
      *a9 = 0;
      free(a9 - 3);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t LiMaterialLayerUniform::get(os_unfair_lock_s *this, uint64_t a2)
{
  if (!*a2)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*a2 + 12);

  return LiMaterialLayerUniform::get(this, v2);
}

uint64_t LiMaterialLayerUniform::get(os_unfair_lock_s *this, LiLayeredMaterial *a2)
{
  v2 = a2;
  if ((atomic_load_explicit(&qword_280C5E9C0, memory_order_acquire) & 1) == 0)
  {
    LiMaterialLayerUniform::get();
  }

  if ((atomic_load_explicit(&qword_280C5E9C8, memory_order_acquire) & 1) == 0)
  {
    LiMaterialLayerUniform::get();
  }

  PCSpinLock::lock(&_MergedGlobals_37);
  if (v2 >= ((qword_280C5E9D8 - qword_280C5E9D0) >> 3))
  {
    if (((qword_280C5E9D8 - qword_280C5E9D0) >> 3) <= v2)
    {
      operator new();
    }
  }

  else
  {
    SamplerInfo = LiMaterial::getSamplerInfo(this, *(*(qword_280C5E9D0 + 8 * v2) + 368));
    if (!SamplerInfo || (*(SamplerInfo + 312) & 1) == 0)
    {
      LiMaterialLayerUniform::initializeSamplerAttributes(this, *(qword_280C5E9D0 + 8 * v2), v5);
    }
  }

  v6 = *(qword_280C5E9D0 + 8 * v2);
  PCSpinLock::unlock(&_MergedGlobals_37);
  return v6;
}

void sub_260010AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<LiMaterialLayerUniform *>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t LiMaterialLayerUniform::initializeSamplerAttributes(os_unfair_lock_s *this, const ProShade::SamplerNode **a2, LiMaterialLayerUniform *a3)
{
  v5 = LiMaterial::obtainSamplerInfo(this, a2[46]);
  *(v5 + 324) = 0;
  *(v5 + 316) = 0;
  *(v5 + 328) = 257;
  *(v5 + 332) = 0;
  *(v5 + 336) = 256;
  *(v5 + 338) = 0;
  *(v5 + 312) = 1;
  v6 = LiMaterial::obtainSamplerInfo(this, a2[58]);
  *(v6 + 324) = 0;
  *(v6 + 316) = 0;
  *(v6 + 328) = 257;
  *(v6 + 332) = 0;
  *(v6 + 336) = 256;
  *(v6 + 338) = 0;
  *(v6 + 312) = 1;
  v7 = LiMaterial::obtainSamplerInfo(this, a2[70]);
  *(v7 + 316) = 0;
  *(v7 + 324) = 1;
  *(v7 + 328) = 257;
  *(v7 + 332) = 0;
  *(v7 + 335) = 0;
  *(v7 + 312) = 1;
  v8 = LiMaterial::obtainSamplerInfo(this, a2[82]);
  *(v8 + 316) = 0;
  *(v8 + 324) = 2;
  *(v8 + 328) = 257;
  *(v8 + 332) = 0;
  *(v8 + 335) = 0;
  *(v8 + 312) = 1;
  v9 = LiMaterial::obtainSamplerInfo(this, a2[94]);
  *(v9 + 316) = 0;
  *(v9 + 324) = 3;
  *(v9 + 328) = 257;
  *(v9 + 332) = 0;
  *(v9 + 335) = 0;
  *(v9 + 312) = 1;
  v10 = LiMaterial::obtainSamplerInfo(this, a2[106]);
  *(v10 + 316) = 0;
  *(v10 + 320) = 1;
  *(v10 + 328) = 257;
  *(v10 + 332) = 0;
  *(v10 + 335) = 0;
  *(v10 + 312) = 1;
  v11 = LiMaterial::obtainSamplerInfo(this, a2[126]);
  *(v11 + 316) = 0;
  *(v11 + 320) = 1;
  *(v11 + 328) = 257;
  *(v11 + 332) = 0;
  *(v11 + 335) = 0;
  *(v11 + 312) = 1;
  v12 = LiMaterial::obtainSamplerInfo(this, a2[146]);
  *(v12 + 316) = 0;
  *(v12 + 320) = 1;
  *(v12 + 328) = 1;
  *(v12 + 332) = 0;
  *(v12 + 336) = 0;
  *(v12 + 338) = 1;
  *(v12 + 312) = 1;
  v13 = LiMaterial::obtainSamplerInfo(this, a2[158]);
  *(v13 + 324) = 0;
  *(v13 + 316) = 0;
  *(v13 + 328) = 257;
  *(v13 + 332) = 0;
  *(v13 + 335) = 0;
  *(v13 + 312) = 1;
  result = LiMaterial::obtainSamplerInfo(this, a2[170]);
  *(result + 324) = 0;
  *(result + 316) = 0;
  *(result + 328) = 257;
  *(result + 332) = 0;
  *(result + 335) = 0;
  *(result + 312) = 1;
  return result;
}

void LiLayeredMaterial::LiLayeredMaterial(LiLayeredMaterial *this)
{
  *(this + 88) = &unk_2872DEA38;
  *(this + 89) = 0;
  *(this + 720) = 1;
  LiMaterial::LiMaterial(this, off_28726B7D8);
  *this = &unk_28726B6D0;
  *(this + 88) = &unk_28726B7B8;
  *(this + 165) = 1065353216;
  *(this + 83) = 0;
  *(this + 85) = 0;
  *(this + 84) = 0;
  *(this + 172) = 0;
  *(this + 692) = 16843009;
  *(this + 700) = 0;
}

void sub_260010FFC(_Unwind_Exception *a1)
{
  *(v1 + 704) = v2;
  *(v1 + 720) = 0;
  PCWeakCount::~PCWeakCount((v1 + 712));
  _Unwind_Resume(a1);
}

void LiLayeredMaterial::~LiLayeredMaterial(LiLayeredMaterial *this, PC_Sp_counted_base **a2)
{
  v4 = *a2;
  *this = *a2;
  *(this + *(v4 - 3)) = a2[7];
  v5 = (this + 664);
  std::vector<PCPtr<LiMaterialLayer>>::__destroy_vector::operator()[abi:ne200100](&v5);
  LiMaterial::~LiMaterial(this, a2 + 1);
}

void LiLayeredMaterial::~LiLayeredMaterial(LiLayeredMaterial *this)
{
  *(v1 + 704) = &unk_2872DEA38;
  *(v1 + 720) = 0;
  PCWeakCount::~PCWeakCount((v1 + 712));
}

{
  *(v1 + 704) = &unk_2872DEA38;
  *(v1 + 720) = 0;
  PCWeakCount::~PCWeakCount((v1 + 712));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiLayeredMaterial::~LiLayeredMaterial(LiLayeredMaterial *this)
{
  *(v1 + 704) = &unk_2872DEA38;
  *(v1 + 720) = 0;
  v2 = (v1 + 712);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiLayeredMaterial::~LiLayeredMaterial((this + *(*this - 24)));
}

void LiLayeredMaterial::getLayer(LiLayeredMaterial *this@<X0>, int a2@<W1>, PCSharedCount *a3@<X8>)
{
  v3 = *(this + 83);
  if (a2 >= ((*(this + 84) - v3) >> 4))
  {
    a3->var0 = 0;
    PCSharedCount::PCSharedCount(a3 + 1);
  }

  else
  {
    v4 = (v3 + 16 * a2);
    a3->var0 = v4->var0;
    PCSharedCount::PCSharedCount(a3 + 1, v4 + 1);
  }
}

void LiLayeredMaterial::getHash(LiLayeredMaterial *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v19[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v19);
  v4 = *(v1 + 664);
  if (*(v1 + 672) != v4)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v7 = *(v4 + v5);
      if (!v7)
      {
        throw_PCNullPointerException(1);
      }

      LiMaterialLayer::getHash(v7);
      PCHashWriteStream::writeValue(v19, v18);
      v8 = LiMaterialLayerUniform::get(v1, v6);
      SamplerInfo = LiMaterial::getSamplerInfo(v1, v8[46]);
      SamplerAttributes::getHash((SamplerInfo + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v10 = LiMaterial::getSamplerInfo(v1, v8[58]);
      SamplerAttributes::getHash((v10 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v11 = LiMaterial::getSamplerInfo(v1, v8[70]);
      SamplerAttributes::getHash((v11 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v12 = LiMaterial::getSamplerInfo(v1, v8[82]);
      SamplerAttributes::getHash((v12 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v13 = LiMaterial::getSamplerInfo(v1, v8[94]);
      SamplerAttributes::getHash((v13 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v14 = LiMaterial::getSamplerInfo(v1, v8[106]);
      SamplerAttributes::getHash((v14 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v15 = LiMaterial::getSamplerInfo(v1, v8[126]);
      SamplerAttributes::getHash((v15 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v16 = LiMaterial::getSamplerInfo(v1, v8[146]);
      SamplerAttributes::getHash((v16 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      v17 = LiMaterial::getSamplerInfo(v1, v8[158]);
      SamplerAttributes::getHash((v17 + 316));
      PCHashWriteStream::writeValue(v19, v18);
      ++v6;
      v4 = *(v1 + 664);
      v5 += 16;
    }

    while (v6 < (*(v1 + 672) - v4) >> 4);
  }

  PCHashWriteStream::writeValue(v19, *(v1 + 688));
  PCHashWriteStream::writeValue(v19, *(v1 + 689));
  PCHashWriteStream::writeValue(v19, *(v1 + 690));
  PCHashWriteStream::writeValue(v19, *(v1 + 697));
  PCHashWriteStream::writeValue(v19, *(v1 + 698));
  PCHashWriteStream::writeValue(v19, *(v1 + 699));
  PCHashWriteStream::writeValue(v19, *(v1 + 691));
  PCHashWriteStream::writeValue(v19, *(v1 + 692));
  PCHashWriteStream::writeValue(v19, *(v1 + 693));
  PCHashWriteStream::writeValue(v19, *(v1 + 694));
  PCHashWriteStream::writeValue(v19, *(v1 + 695));
  PCHashWriteStream::writeValue(v19, *(v1 + 696));
  PCHashWriteStream::writeValue(v19, *(v1 + 656));
  *v3 = *PCHashWriteStream::getHash(v19)->i8;
  PCHashWriteStream::~PCHashWriteStream(v19);
}

void SamplerAttributes::getHash(SamplerAttributes *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v4[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v4);
  PCHashWriteStream::writeValue(v4, *v1);
  PCHashWriteStream::writeValue(v4, *(v1 + 1));
  PCHashWriteStream::writeValue(v4, *(v1 + 2));
  PCHashWriteStream::writeValue(v4, *(v1 + 3));
  PCHashWriteStream::writeValue(v4, *(v1 + 4));
  PCHashWriteStream::writeValue(v4, *(v1 + 8));
  PCHashWriteStream::writeValue(v4, *(v1 + 12));
  PCHashWriteStream::writeValue(v4, *(v1 + 13));
  PCHashWriteStream::writeValue(v4, *(v1 + 16));
  PCHashWriteStream::writeValue(v4, *(v1 + 20));
  PCHashWriteStream::writeValue(v4, *(v1 + 21));
  PCHashWriteStream::writeValue(v4, *(v1 + 22));
  *v3 = *PCHashWriteStream::getHash(v4)->i8;
  PCHashWriteStream::~PCHashWriteStream(v4);
}

uint64_t LiLayeredMaterial::appendLayer(void *a1, const PCSharedCount *a2)
{
  v3 = a1[84];
  v4.var0 = a2->var0;
  if (!a2->var0)
  {
    throw_PCNullPointerException(1);
  }

  *(v4.var0 + 3) = (v3 - a1[83]) >> 4;
  if (v3 >= a1[85])
  {
    result = std::vector<PCPtr<LiMaterialLayer>>::__emplace_back_slow_path<PCPtr<LiMaterialLayer> const&>((a1 + 83), a2);
  }

  else
  {
    v3->var0 = v4.var0;
    PCSharedCount::PCSharedCount(v3 + 1, a2 + 1);
    result = &v3[2];
    a1[84] = v3 + 2;
  }

  a1[84] = result;
  return result;
}

unint64_t LiLayeredMaterial::insertLayer(uint64_t a1, int a2, PCSharedCount *a3)
{
  v3 = *(a1 + 664);
  if (!a3->var0)
  {
    throw_PCNullPointerException(1);
  }

  *(a3->var0 + 3) = (*(a1 + 672) - v3) >> 4;
  v4 = (v3 + 16 * a2);
  v5 = (a1 + 664);

  return std::vector<PCPtr<LiMaterialLayer>>::insert(v5, v4, a3);
}

unint64_t std::vector<PCPtr<LiMaterialLayer>>::insert(void *a1, const PCSharedCount *a2, PCSharedCount *a3)
{
  v4 = a2;
  v7 = a1[1];
  v6 = a1[2];
  if (v7 >= v6)
  {
    v10 = *a1;
    v11 = ((v7 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = a2 - v10;
    v13 = v6 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v7 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v22 = a1;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(a1, v15);
    }

    v18.var0 = 0;
    v19 = 16 * v16;
    v20 = 16 * v16;
    v21 = 0;
    std::__split_buffer<PCPtr<LiMaterialLayer>>::emplace_back<PCPtr<LiMaterialLayer> const&>(&v18, a3);
    v4 = std::vector<PCPtr<LiMaterialLayer>>::__swap_out_circular_buffer(a1, &v18, v4);
    std::__split_buffer<PCPtr<LiMaterialLayer>>::~__split_buffer(&v18);
  }

  else if (a2 == v7)
  {
    v7->var0 = a3->var0;
    PCSharedCount::PCSharedCount(v7 + 1, a3 + 1);
    a1[1] = v7 + 2;
  }

  else
  {
    std::vector<PCPtr<LiMaterialLayer>>::__move_range(a1, a2, a1[1], &a2[2]);
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    *v4 = a3[v9];
    PCSharedCount::PCSharedCount(&v18, &a3[v9 + 1]);
    PCSharedCount::operator=((v4 + 8), &v18);
    PCSharedCount::~PCSharedCount(&v18);
  }

  return v4;
}

void LiLayeredMaterial::getTopLayer(LiLayeredMaterial *this@<X0>, PCSharedCount *a2@<X8>)
{
  v4 = *(this + 84);
  if (*(this + 83) == v4)
  {
    a2->var0 = 0;
    PCSharedCount::PCSharedCount(a2 + 1);
  }

  else
  {
    a2->var0 = *(v4 - 16);
    PCSharedCount::PCSharedCount(a2 + 1, (v4 - 8));
  }
}

void LiLayeredMaterial::setUnlimitedSamplers(LiLayeredMaterial *this, char a2)
{
  *(this + 695) = a2;
  v2 = (*(this + 84) - *(this + 83)) >> 4;
  if (v2 >= 1)
  {
    v5 = 0;
    do
    {
      LiLayeredMaterial::getLayer(this, v5, &v6);
      if (!v6.var0)
      {
        throw_PCNullPointerException(1);
      }

      *(v6.var0 + 24) = a2;
      PCSharedCount::~PCSharedCount(&v7);
      ++v5;
    }

    while (v2 != v5);
  }
}

void LiLayeredMaterial::sampleSpecEnvironment()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &unk_28725E328;
  operator new();
}

void sub_260011E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, PCSharedCount a28)
{
  PCSharedCount::~PCSharedCount(&a28);
  *(v30 - 128) = v28;
  PCSharedCount::~PCSharedCount(v29 + 3);
  _Unwind_Resume(a1);
}

void LiLayeredMaterial::sampleDiffEnvironment()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = &unk_28725E328;
  operator new();
}

void sub_260012384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, PCSharedCount a28)
{
  PCSharedCount::~PCSharedCount(&a28);
  *(v30 - 128) = v28;
  PCSharedCount::~PCSharedCount(v29 + 3);
  _Unwind_Resume(a1);
}

void LiLayeredMaterial::makeProgram(LiLayeredMaterial *this, const LiContext *a2)
{
  v11 = &unk_2872DEA38;
  v12 = 0;
  v13 = 1;
  LiMaterial::LiMaterial(v8, off_28726BC40);
  v8[0] = &unk_28726BB38;
  v11 = &unk_28726BC20;
  v8[83] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v9 = _Q0;
  v10 = 0x3FF0000000000000;
  LiErrorLimitsExceededMaterial::makeProgram(v8, v7);
}

void sub_2600129DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 - 128) = v27;
  PCSharedCount::~PCSharedCount((v28 - 104));
  PCSharedCount::~PCSharedCount(a10);
  _Unwind_Resume(a1);
}

void LiErrorLimitsExceededMaterial::~LiErrorLimitsExceededMaterial(LiErrorLimitsExceededMaterial *this)
{
  LiMaterial::~LiMaterial(this, off_28726BC40);
  *(v1 + 696) = &unk_2872DEA38;
  *(v1 + 712) = 0;
  PCWeakCount::~PCWeakCount((v1 + 704));
}

{
  LiMaterial::~LiMaterial(this, off_28726BC40);
  *(v1 + 696) = &unk_2872DEA38;
  *(v1 + 712) = 0;
  PCWeakCount::~PCWeakCount((v1 + 704));

  JUMPOUT(0x2666E9F00);
}

void *LiLayeredMaterial::printMaterialDetails(uint64_t a1, void *a2, int a3)
{
  LiImageSource::printIndent(a2, a3 + 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Layers:\n", 8);
  v6 = *(a1 + 664);
  for (i = *(a1 + 672); v6 != i; v6 += 2)
  {
    var0 = v6->var0;
    PCSharedCount::PCSharedCount(&v10, v6 + 1);
    if (!var0)
    {
      throw_PCNullPointerException(1);
    }

    (*(*var0 + 64))(var0, a2, (a3 + 2));
    PCSharedCount::~PCSharedCount(&v10);
  }

  return LiMaterial::printMaterialDetails(a1, a2, a3);
}

uint64_t LiLayeredMaterial::isOpaque(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 672);
  v3 = *(a1 + 664);
  if (v2 == v3)
  {
    v6 = 1;
  }

  else
  {
    v10 = 0;
    do
    {
      var0 = v3->var0;
      PCSharedCount::PCSharedCount(&v9, v3 + 1);
      if (!var0)
      {
        throw_PCNullPointerException(1);
      }

      (*(*var0 + 16))(var0, &v10, a1, a2);
      PCSharedCount::~PCSharedCount(&v9);
      v3 += 2;
    }

    while (v3 != v2);
    v6 = v10;
  }

  return v6 & 1;
}

ProShade::Program *ProShade::Program::Program(ProShade::Program *this)
{
  *(this + 194) = &unk_2872DEA38;
  *(this + 195) = 0;
  *(this + 1568) = 1;
  ProShade::ProgramBase::ProgramBase(this, &off_28725E1E0);
  *this = &unk_28725E170;
  *(this + 194) = &unk_28725E1C0;
  ProShade::VertexProgram::VertexProgram((this + 272));
  ProShade::FragmentProgram::FragmentProgram((this + 912));
  *(this + 328) = 0;
  *(this + 1336) = 0u;
  *(this + 166) = this + 1336;
  *(this + 165) = &unk_28725E130;
  *(this + 169) = &unk_28725E9F8;
  *(this + 85) = 0u;
  *(this + 1384) = 0u;
  *(this + 172) = this + 1384;
  *(this + 175) = &unk_28725EA30;
  *(this + 88) = 0u;
  *(this + 178) = &unk_28725EA30;
  *(this + 1432) = 0u;
  *(this + 181) = &unk_28725EB60;
  *(this + 91) = 0u;
  ProShade::UniformProgram::UniformProgram(this + 184);
  *(this + 1544) = 0;
  return this;
}

void sub_260012F54(_Unwind_Exception *a1)
{
  v8 = v4;
  PCArray<ProShade::Sampler,PCArray_Traits<ProShade::Sampler>>::~PCArray(v8);
  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::~PCArray(v6);
  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::~PCArray(v5);
  ProShade::InsertUniform::~InsertUniform(v3);
  ProShade::FragmentProgram::~FragmentProgram((v1 + 912));
  ProShade::VertexProgram::~VertexProgram((v1 + 272));
  ProShade::ProgramBase::~ProgramBase(v1, (v7 + 8));
  *(v1 + 1552) = v2;
  *(v1 + 1568) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1560));
  _Unwind_Resume(a1);
}

void LiErrorLimitsExceededMaterial::getHash(LiErrorLimitsExceededMaterial *this)
{
  MEMORY[0x28223BE20](this);
  v2 = v1;
  v3[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v3);
  PCHashWriteStream::writeValue(v3, 54321);
  *v2 = *PCHashWriteStream::getHash(v3)->i8;
  PCHashWriteStream::~PCHashWriteStream(v3);
}

void sub_26001344C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 - 128) = v27;
  PCSharedCount::~PCSharedCount((v28 - 104));
  PCSharedCount::~PCSharedCount(a10);
  _Unwind_Resume(a1);
}

void LiVramLimitsExceededMaterial::getHash(LiVramLimitsExceededMaterial *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v3 = v2;
  v6[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v6);
  PCHashWriteStream::writeValue(v6, 7654321);
  v4 = 0;
  v5 = v1 + 664;
  do
  {
    PCHashWriteStream::writeValue(v6, *(v5 + v4));
    v4 += 8;
  }

  while (v4 != 32);
  *v3 = *PCHashWriteStream::getHash(v6)->i8;
  PCHashWriteStream::~PCHashWriteStream(v6);
}

void sub_2600136A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCHashWriteStream::~PCHashWriteStream(va);
  _Unwind_Resume(a1);
}

void virtual thunk toLiErrorLimitsExceededMaterial::~LiErrorLimitsExceededMaterial(LiErrorLimitsExceededMaterial *this)
{
  LiMaterial::~LiMaterial((this + *(*this - 24)), off_28726BC40);
  *(v1 + 696) = &unk_2872DEA38;
  *(v1 + 712) = 0;
  v2 = (v1 + 704);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  LiMaterial::~LiMaterial(v1, off_28726BC40);
  v1[87] = &unk_2872DEA38;
  *(v1 + 712) = 0;
  PCWeakCount::~PCWeakCount(v1 + 88);

  JUMPOUT(0x2666E9F00);
}

void LiVramLimitsExceededMaterial::~LiVramLimitsExceededMaterial(LiVramLimitsExceededMaterial *this)
{
  LiMaterial::~LiMaterial(this, off_28726C000);
  *(v1 + 696) = &unk_2872DEA38;
  *(v1 + 712) = 0;
  PCWeakCount::~PCWeakCount((v1 + 704));
}

{
  LiMaterial::~LiMaterial(this, off_28726C000);
  *(v1 + 696) = &unk_2872DEA38;
  *(v1 + 712) = 0;
  PCWeakCount::~PCWeakCount((v1 + 704));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiVramLimitsExceededMaterial::~LiVramLimitsExceededMaterial(LiVramLimitsExceededMaterial *this)
{
  LiMaterial::~LiMaterial((this + *(*this - 24)), off_28726C000);
  *(v1 + 696) = &unk_2872DEA38;
  *(v1 + 712) = 0;
  v2 = (v1 + 704);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  LiMaterial::~LiMaterial(v1, off_28726C000);
  v1[87] = &unk_2872DEA38;
  *(v1 + 712) = 0;
  PCWeakCount::~PCWeakCount(v1 + 88);

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::eval(uint64_t a1, uint64_t a2)
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
        ProShade::ScalarFunctionTraits_2<ProShade::step_traits>::compute(v4, v6);
      }
    }
  }

  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_260013C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_2<ProShade::step_traits>::compute(uint64_t a1, uint64_t a2)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  ProShade::Value::Value(v7);
  ProShade::Value::Value(&v6);
  (*(*a1 + 224))(a1, v8);
  (*(*a2 + 224))(a2, v7);
  if (SLODWORD(v8[0]) > 1)
  {
    if (LODWORD(v8[0]) != 2)
    {
      goto LABEL_8;
    }

    v4 = v7[0];
  }

  else
  {
    v4 = v7[0];
    if (SLODWORD(v7[0]) < 2)
    {
      ProShade::eval_type<ProShade::step_traits,BOOL>(v8, v7, &v6);
      goto LABEL_9;
    }
  }

  if (v4 <= 2)
  {
    ProShade::eval_type<ProShade::step_traits,int>(v8, v7, &v6);
    goto LABEL_9;
  }

LABEL_8:
  ProShade::eval_type<ProShade::step_traits,double>(v8, v7, &v6);
LABEL_9:
  ProShade::Const::create(&v6, v5);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::Func(uint64_t a1, PCShared_base *a2, PCShared_base *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726C390);
  *a1 = &unk_28726C2B8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726C370;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  ProShade::VarT<ProShade::Node>::VarT(v13, a2);
  v6 = *(a1 + 60);
  if (*(a1 + 56) <= v6)
  {
    v7 = 2 * (v6 + 1) + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6 + 1, v7);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  ProShade::VarT<ProShade::Node>::VarT(v13, a3);
  v8 = *(a1 + 60);
  if (*(a1 + 56) <= v8)
  {
    v9 = 2 * (v8 + 1) + 1;
  }

  else
  {
    v9 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v8 + 1, v9);
  ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + 32 * *(a1 + 60) - 32, v13);
  v13[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v14);
  v11 = *(a1 + 60);
  if (v11 < 1)
  {
    PCArray_base::badIndex(v10);
  }

  if (v11 <= 1)
  {
    PCArray_base::badIndex(v10);
  }

  ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>::initType(a1, *(a1 + 64), (*(a1 + 64) + 32));
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_260014014(_Unwind_Exception *a1)
{
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(v4);
  ProShade::Node::~Node(v1, (v5 + 8));
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::step_traits,BOOL>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 1, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v11, "not implemented yet");
    PCString::PCString(&v10, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v11, &v10, 441);
    *exception = &unk_2871F6178;
  }

  OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v6);
  if (result > 0)
  {
    ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("step doesn't apply to BOOL", v8);
  }

  return result;
}

void sub_26001418C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::step_traits,int>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = *v9++;
      if (v13 >= v11)
      {
        v14 = 1.0;
      }

      else
      {
        v14 = 0.0;
      }

      *Serializer++ = v14;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_2600142F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::eval_type<ProShade::step_traits,double>(uint64_t a1, uint64_t a2, OZChannelBase *a3)
{
  ProShade::Value::set(a3, 3, *(a1 + 4));
  if (*(a1 + 4) != *(a2 + 4))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v17, "not implemented yet");
    PCString::PCString(&v16, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSFunc.h");
    PCException::PCException(exception, &v17, &v16, 441);
    *exception = &unk_2871F6178;
  }

  Serializer = OZChannelBase::getSerializer(a3);
  result = ProShade::shapeGetSize(*(a1 + 4), v7);
  if (result >= 1)
  {
    v9 = (a2 + 16);
    v10 = (a1 + 16);
    do
    {
      v11 = *v10++;
      v12 = v11;
      v13 = *v9++;
      if (v13 < v12)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0;
      }

      *Serializer++ = v14;
      result = (result - 1);
    }

    while (result);
  }

  return result;
}

void sub_26001445C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "step");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_2600145F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 17, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 4;
  v5[2] = v4 + 5;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 1885697139;
  *(v6 + v4 + 4) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_260014714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "step");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_2600149DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_260014BA4(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  v3 = *(a2 + 12);
  if (v3 < 1)
  {
    PCArray_base::badIndex(a1);
  }

  v4 = *(a2 + 16);
  if (v3 <= 1)
  {
    PCArray_base::badIndex(a1);
  }

  if (*v4 > 1)
  {
    if (*v4 != 2)
    {
      goto LABEL_16;
    }

    v5 = v4[36];
  }

  else
  {
    v5 = v4[36];
    if (v5 < 2)
    {
      v6 = *(a2 + 16);

      return ProShade::eval_type<ProShade::step_traits,BOOL>(v6, (v4 + 36), a3);
    }
  }

  if (v5 <= 2)
  {
    v8 = *(a2 + 16);

    return ProShade::eval_type<ProShade::step_traits,int>(v8, (v4 + 36), a3);
  }

LABEL_16:
  v9 = *(a2 + 16);

  return ProShade::eval_type<ProShade::step_traits,double>(v9, (v4 + 36), a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::step_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726C390);
  *a1 = &unk_28726C2B8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726C370;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_260014F14(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiMaterialLayerUniform::LiMaterialLayerUniform(LiMaterialLayerUniform *this)
{
  *this = &unk_28725E8E0;
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  *this = &unk_28725EAF8;
  *(this + 4) = &unk_28725E8E0;
  *(this + 6) = 0;
  PCSharedCount::PCSharedCount(this + 7);
  *(this + 4) = &unk_28725EAF8;
  *(this + 8) = &unk_28725E8E0;
  *(this + 10) = 0;
  PCSharedCount::PCSharedCount(this + 11);
  *(this + 8) = &unk_28725EAF8;
  *(this + 12) = &unk_28725E8E0;
  *(this + 14) = 0;
  PCSharedCount::PCSharedCount(this + 15);
  *(this + 12) = &unk_28725EAF8;
  *(this + 16) = &unk_28725E8E0;
  *(this + 18) = 0;
  PCSharedCount::PCSharedCount(this + 19);
  *(this + 16) = &unk_28725EAF8;
  *(this + 20) = &unk_28725E8E0;
  *(this + 22) = 0;
  PCSharedCount::PCSharedCount(this + 23);
  *(this + 20) = &unk_28725EAF8;
  *(this + 24) = &unk_28725E8E0;
  *(this + 26) = 0;
  PCSharedCount::PCSharedCount(this + 27);
  *(this + 24) = &unk_28725EAF8;
  *(this + 28) = &unk_28725E8E0;
  *(this + 30) = 0;
  PCSharedCount::PCSharedCount(this + 31);
  *(this + 28) = &unk_28725EAF8;
  *(this + 32) = &unk_28725E8E0;
  *(this + 34) = 0;
  PCSharedCount::PCSharedCount(this + 35);
  *(this + 32) = &unk_28725EAF8;
  *(this + 36) = &unk_28725E8E0;
  *(this + 38) = 0;
  PCSharedCount::PCSharedCount(this + 39);
  *(this + 36) = &unk_28725EAF8;
  *(this + 40) = &unk_28725E8E0;
  *(this + 42) = 0;
  PCSharedCount::PCSharedCount(this + 43);
  *(this + 40) = &unk_28725EAF8;
  ProShade::SamplerT<3553,false,false,false>::SamplerT();
}

void sub_260015DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t *a13, uint64_t a14, uint64_t *a15, uint64_t a16, uint64_t *a17, uint64_t a18, uint64_t *a19, uint64_t a20, uint64_t *a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t *a27, uint64_t a28, uint64_t *a29, uint64_t a30, uint64_t *a31, uint64_t a32, uint64_t *a33, uint64_t a34, uint64_t *a35, uint64_t a36, uint64_t *a37, uint64_t a38, uint64_t *a39, uint64_t a40, uint64_t *a41, uint64_t a42, uint64_t *a43, uint64_t a44, uint64_t *a45, uint64_t a46, uint64_t *a47, uint64_t a48, uint64_t *a49, uint64_t a50, uint64_t *a51, uint64_t a52, PCSharedCount *a53, PCSharedCount *a54, PCSharedCount *a55, uint64_t *a56, uint64_t a57, uint64_t *a58, uint64_t a59, PCSharedCount *a60, uint64_t *a61, uint64_t a62, uint64_t *a63)
{
  *v76 = v77;
  PCSharedCount::~PCSharedCount(v70 + 283);
  *v72 = v71;
  PCSharedCount::~PCSharedCount(v70 + 279);
  *v73 = v78;
  PCSharedCount::~PCSharedCount(v70 + 275);
  *v75 = a9;
  PCSharedCount::~PCSharedCount(v70 + 271);
  *v74 = a10;
  PCSharedCount::~PCSharedCount(v70 + 267);
  *a12 = a11;
  PCSharedCount::~PCSharedCount(v70 + 263);
  *a13 = a14;
  PCSharedCount::~PCSharedCount(v70 + 259);
  *a15 = a16;
  PCSharedCount::~PCSharedCount(v70 + 255);
  *a17 = a18;
  PCSharedCount::~PCSharedCount(v70 + 251);
  *a19 = a20;
  PCSharedCount::~PCSharedCount(v70 + 247);
  *a21 = a22;
  PCSharedCount::~PCSharedCount(v70 + 243);
  *a23 = a24;
  PCSharedCount::~PCSharedCount(v70 + 239);
  *a25 = a26;
  PCSharedCount::~PCSharedCount(v70 + 235);
  *a27 = a28;
  PCSharedCount::~PCSharedCount(v70 + 231);
  *a29 = a30;
  PCSharedCount::~PCSharedCount(v70 + 227);
  *a31 = a32;
  PCSharedCount::~PCSharedCount(v70 + 223);
  *a33 = a34;
  PCSharedCount::~PCSharedCount(v70 + 219);
  *a35 = a36;
  PCSharedCount::~PCSharedCount(v70 + 215);
  *a37 = a38;
  PCSharedCount::~PCSharedCount(v70 + 211);
  *a39 = a40;
  PCSharedCount::~PCSharedCount(v70 + 207);
  *a41 = a42;
  PCSharedCount::~PCSharedCount(v70 + 203);
  *a43 = a44;
  PCSharedCount::~PCSharedCount(v70 + 199);
  *a45 = a46;
  PCSharedCount::~PCSharedCount(v70 + 195);
  *a47 = a48;
  PCSharedCount::~PCSharedCount(v70 + 191);
  *a49 = a50;
  PCSharedCount::~PCSharedCount(v70 + 187);
  *a51 = a52;
  PCSharedCount::~PCSharedCount(v70 + 183);
  ProShade::Sampler::~Sampler(a53);
  ProShade::Sampler::~Sampler(a54);
  ProShade::Sampler::~Sampler(a55);
  *a56 = a57;
  PCSharedCount::~PCSharedCount(v70 + 143);
  *a58 = a59;
  PCSharedCount::~PCSharedCount(v70 + 139);
  ProShade::Sampler::~Sampler(a60);
  *a61 = a62;
  PCSharedCount::~PCSharedCount(v70 + 123);
  *a63 = a64;
  PCSharedCount::~PCSharedCount(v70 + 119);
  ProShade::Sampler::~Sampler(a65);
  ProShade::Sampler::~Sampler(a66);
  ProShade::Sampler::~Sampler(a67);
  ProShade::Sampler::~Sampler(a68);
  ProShade::Sampler::~Sampler(a69);
  ProShade::Sampler::~Sampler(a70);
  **(v79 - 256) = *(v79 - 248);
  PCSharedCount::~PCSharedCount(v70 + 43);
  **(v79 - 240) = *(v79 - 232);
  PCSharedCount::~PCSharedCount(v70 + 39);
  **(v79 - 224) = *(v79 - 216);
  PCSharedCount::~PCSharedCount(v70 + 35);
  **(v79 - 208) = *(v79 - 200);
  PCSharedCount::~PCSharedCount(v70 + 31);
  **(v79 - 192) = *(v79 - 184);
  PCSharedCount::~PCSharedCount(v70 + 27);
  **(v79 - 176) = *(v79 - 168);
  PCSharedCount::~PCSharedCount(v70 + 23);
  **(v79 - 160) = *(v79 - 152);
  PCSharedCount::~PCSharedCount(v70 + 19);
  **(v79 - 136) = *(v79 - 144);
  PCSharedCount::~PCSharedCount(v70 + 15);
  **(v79 - 120) = *(v79 - 128);
  PCSharedCount::~PCSharedCount(v70 + 11);
  **(v79 - 104) = *(v79 - 112);
  PCSharedCount::~PCSharedCount(v70 + 7);
  v70->var0 = *(v79 - 96);
  PCSharedCount::~PCSharedCount(v70 + 3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::eval(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      ProShade::Value::Value(v6);
      ProShade::Value::Value(&v5);
      (*(*v3 + 224))(v3, v6);
      ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>::eval(v6, &v5);
      ProShade::Const::create(&v5, v4);
    }
  }

  v6[0] = &unk_28725E328;
  v6[2] = 0;
  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_260016434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726C608);
  *a1 = &unk_28726C530;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726C5E8;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_2600165D4(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>::eval(int *a1, OZChannelBase *a2)
{
  v4 = *a1;
  if (*a1 > 1)
  {
    ProShade::Value::set(a2, 3, a1[1]);
    Serializer = OZChannelBase::getSerializer(a2);
    Size = ProShade::shapeGetSize(a1[1], v8);
    v10 = Size;
    if (v4 == 2)
    {
      if (Size >= 1)
      {
        v11 = a1 + 4;
        do
        {
          v12 = *v11++;
          *Serializer++ = cos(v12);
          --v10;
        }

        while (v10);
      }
    }

    else if (Size >= 1)
    {
      v13 = (a1 + 4);
      do
      {
        v14 = *v13++;
        *Serializer++ = cos(v14);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    ProShade::Value::set(a2, 1, a1[1]);
    OZChannelBase::getSerializer(a2);
    if (ProShade::shapeGetSize(a1[1], v5) >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("cos doesn't apply to BOOL", v6);
    }
  }
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "cos");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_26001684C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 28515;
  v6[2] = 115;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_260016970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "cos");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_260016C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_260016E00(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>::eval(v3, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::cos_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726C608);
  *a1 = &unk_28726C530;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726C5E8;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_2600170C4(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::eval(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      ProShade::Value::Value(v6);
      ProShade::Value::Value(&v5);
      (*(*v3 + 224))(v3, v6);
      ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>::eval(v6, &v5);
      ProShade::Const::create(&v5, v4);
    }
  }

  v6[0] = &unk_28725E328;
  v6[2] = 0;
  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_2600172D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726C880);
  *a1 = &unk_28726C7A8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726C860;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_260017474(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>::eval(int *a1, OZChannelBase *a2)
{
  v4 = *a1;
  if (*a1 > 1)
  {
    ProShade::Value::set(a2, 3, a1[1]);
    Serializer = OZChannelBase::getSerializer(a2);
    Size = ProShade::shapeGetSize(a1[1], v8);
    v10 = Size;
    if (v4 == 2)
    {
      if (Size >= 1)
      {
        v11 = a1 + 4;
        do
        {
          v12 = *v11++;
          *Serializer++ = sin(v12);
          --v10;
        }

        while (v10);
      }
    }

    else if (Size >= 1)
    {
      v13 = (a1 + 4);
      do
      {
        v14 = *v13++;
        *Serializer++ = sin(v14);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    ProShade::Value::set(a2, 1, a1[1]);
    OZChannelBase::getSerializer(a2);
    if (ProShade::shapeGetSize(a1[1], v5) >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("sin doesn't apply to BOOL", v6);
    }
  }
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "sin");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_2600176EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 3;
  v5[2] = v4 + 4;
  atomic_store(1u, v5);
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  v6 = v5 + v4 + 12;
  *v6 = 26995;
  v6[2] = 110;
  *(v5 + v4 + 15) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_260017810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "sin");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_260017AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_260017CA0(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>::eval(v3, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::sin_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726C880);
  *a1 = &unk_28726C7A8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726C860;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_260017F64(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::InsertUniform::~InsertUniform(ProShade::InsertUniform *this)
{
  *this = &unk_28725E130;
  std::__tree<LiString>::destroy(this + 56, *(this + 8));
  *(this + 4) = &unk_28725E9F8;
  if (*(this + 10) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 10);
  }

  PCArray<ProShade::UniformVariable,PCArray_Traits<ProShade::UniformVariable>>::resize(this + 32, 0, v2);
  v3 = *(this + 6);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(this + 6) = 0;
  *(this + 10) = 0;
  *this = &unk_287272E98;
  std::__tree<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::__map_value_compare<ProShade::Node const*,std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>,std::less<ProShade::Node const*>,true>,std::allocator<std::__value_type<ProShade::Node const*,ProShade::VarT<ProShade::Node>>>>::destroy(this + 8, *(this + 2));
}

uint64_t ProShade::ConstVector::ConstVector(uint64_t a1, _OWORD *a2)
{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  ProShade::Node::Node(a1, &off_2872726E8);
  v4 = off_2872726E0;
  *a1 = off_2872726E0;
  *(a1 + *(v4 - 3)) = off_287272708;
  *a1 = &unk_2872725B8;
  *(a1 + 80) = &unk_2872726C0;
  *(a1 + 48) = *a2;
  *(a1 + 64) = a2[1];
  *(a1 + 24) = 0x400000003;
  return a1;
}

{
  *(a1 + 80) = &unk_2872DEA38;
  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  ProShade::Node::Node(a1, &off_2872726E8);
  *a1 = &unk_2872725B8;
  *(a1 + 80) = &unk_2872726C0;
  *(a1 + 48) = *a2;
  *(a1 + 64) = xmmword_260342700;
  *(a1 + 24) = 0x200000003;
  return a1;
}

void sub_260018290(_Unwind_Exception *a1)
{
  *(v1 + 80) = v2;
  *(v1 + 96) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void std::vector<PCPtr<LiMaterialLayer>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;
        PCSharedCount::~PCSharedCount(v4 - 1);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<PCPtr<LiMaterialLayer>>::__emplace_back_slow_path<PCPtr<LiMaterialLayer> const&>(uint64_t a1, const PCSharedCount *a2)
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

  v17 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(a1, v7);
  }

  v14 = 0;
  v15 = (16 * v2);
  v16 = (16 * v2);
  v15->var0 = a2->var0;
  PCSharedCount::PCSharedCount((16 * v2 + 8), a2 + 1);
  *&v16 = v16 + 16;
  v8 = *(a1 + 8);
  v9 = v15 + *a1 - v8;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCPtr<LiMaterialLayer>>,PCPtr<LiMaterialLayer>*>(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  std::__split_buffer<PCPtr<LiMaterialLayer>>::~__split_buffer(&v14);
  return v13;
}

void sub_260018438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<PCPtr<LiMaterialLayer>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCPtr<LiMaterialLayer>>,PCPtr<LiMaterialLayer>*>(uint64_t a1, PCSharedCount *a2, PCSharedCount *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      *(a4 + v7 * 8) = v6[v7];
      PCSharedCount::PCSharedCount((a4 + v7 * 8 + 8), &v6[v7 + 1]);
      v7 += 2;
    }

    while (&v6[v7] != a3);
    while (v6 != a3)
    {
      PCSharedCount::~PCSharedCount(v6 + 1);
      v6 += 2;
    }
  }
}

void sub_2600184D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = (v2 - 8);
    do
    {
      PCSharedCount::~PCSharedCount(v5);
      v5 = (v6 - 16);
      v4 += 16;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<PCPtr<LiMaterialLayer>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    PCSharedCount::~PCSharedCount((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const PCSharedCount *std::vector<PCPtr<LiMaterialLayer>>::__move_range(uint64_t a1, const PCSharedCount *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (a2 + v6 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = *(a1 + 8);
    do
    {
      v8->var0 = v10->var0;
      PCSharedCount::PCSharedCount(v8 + 1, v10 + 1);
      v10 += 2;
      v8 += 2;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *>(&v12, a2, v7, v6);
}

void std::__split_buffer<PCPtr<LiMaterialLayer>>::emplace_back<PCPtr<LiMaterialLayer> const&>(PCSharedCount **a1, PCSharedCount *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v4 - *a1;
      }

      v9 = a1[4];
      v10[4] = a1[4];
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<TXTextObject>>>(v9, v8);
    }

    v6 = (((v5 - *a1) >> 4) + 1 + ((((v5 - *a1) >> 4) + 1) >> 63)) >> 1;
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *>(v10, v5, v4, &v5[-2 * v6].var0);
    v4 = v7;
    a1[1] -= 2 * v6;
    a1[2] = v7;
  }

  v4->var0 = a2->var0;
  PCSharedCount::PCSharedCount(v4 + 1, a2 + 1);
  a1[2] += 2;
}

void sub_260018748(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PCPtr<LiMaterialLayer>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<PCPtr<LiMaterialLayer>>::__swap_out_circular_buffer(uint64_t a1, void *a2, PCSharedCount *a3)
{
  v6 = a2[1];
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCPtr<LiMaterialLayer>>,PCPtr<LiMaterialLayer>*>(a1, a3, *(a1 + 8), a2[2]);
  v7 = *a1;
  v8 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = v8 + v7 - a3;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCPtr<LiMaterialLayer>>,PCPtr<LiMaterialLayer>*>(a1, v7, a3, v9);
  a2[1] = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = a2[1];
  a2[1] = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
  return v6;
}

const PCSharedCount *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *>(uint64_t a1, const PCSharedCount *a2, const PCSharedCount *a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v6 = (a4 - 8);
    v7 = a3 - 1;
    do
    {
      *(v6 - 1) = v7[-1].var0;
      PCSharedCount::PCSharedCount(&v10, v7);
      PCSharedCount::operator=(v6, &v10);
      PCSharedCount::~PCSharedCount(&v10);
      v6 -= 2;
      v8 = v7 - 1;
      v7 -= 2;
    }

    while (v8 != a2);
  }

  return a3;
}

PCSharedCount *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *,PCPtr<LiMaterialLayer> *>(int a1, PCSharedCount *a2, PCSharedCount *a3, PC_Sp_counted_base **a4)
{
  v4 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  do
  {
    var0 = v4->var0;
    v6 = v4 + 1;
    *a4 = var0;
    v8 = (a4 + 1);
    PCSharedCount::PCSharedCount(&v10, v6);
    PCSharedCount::operator=(v8, &v10);
    PCSharedCount::~PCSharedCount(&v10);
    v4 = &v6[1];
    a4 = (v8 + 1);
  }

  while (v4 != v5);
  return v5;
}

void LiMaterialLayerUniform::get()
{
  if (__cxa_guard_acquire(&qword_280C5E9C0))
  {
    qword_280C5E9D8 = 0;
    qword_280C5E9E0 = 0;
    qword_280C5E9D0 = 0;
    __cxa_atexit(std::vector<LiMaterialLayerUniform *>::~vector[abi:ne200100], &qword_280C5E9D0, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5E9C0);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5E9C8))
  {
    _MergedGlobals_37 = 0;
    __cxa_atexit(PCSpinLock::~PCSpinLock, &_MergedGlobals_37, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5E9C8);
  }
}

void PSShaderBase::PSShaderBase(PSShaderBase *this)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_28726CA18;
  *(this + 12) = 0;
  PCSharedCount::PCSharedCount(this + 7);
}

void sub_260018AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  v12 = v11;
  a10 = v12;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&a10);
  v14 = *(v10 + 16);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  _Unwind_Resume(a1);
}

void PSShaderBase::~PSShaderBase(PCString *this)
{
  this->var0 = &unk_28726CA18;
  PCString::~PCString(this + 7);
  v3 = this + 4;
  std::vector<PCString>::__destroy_vector::operator()[abi:ne200100](&v3);
  var0 = this[2].var0;
  if (var0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](var0);
  }
}

uint64_t PSShaderBase::id(PSShaderBase *this)
{
  if (!ProGL::ObjectHandle::name((this + 8)))
  {
    ProGL::GL::GL(v4);
    v2 = (*(*this + 16))(this);
    ProGL::createShaderObject(v4, v2);
  }

  return ProGL::ObjectHandle::name((this + 8));
}

void sub_260018BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void PSShaderBase::setSource(PSShaderBase *this, PCString *a2, int a3)
{
  v6 = PCString::size(a2);
  v7 = *(this + 4);
  v8 = *(this + 5);
  v9 = (v8 - v7) >> 3;
  if (v6)
  {
    if (v9 <= a3)
    {
      do
      {
        PCString::PCString(&v13, "");
        v10 = *(this + 5);
        if (v10 >= *(this + 6))
        {
          v11 = std::vector<PCString>::__emplace_back_slow_path<PCString>(this + 32, &v13);
        }

        else
        {
          PCString::PCString(*(this + 5), &v13);
          v11 = v10 + 8;
          *(this + 5) = v10 + 8;
        }

        *(this + 5) = v11;
        PCString::~PCString(&v13);
        v7 = *(this + 4);
      }

      while (((*(this + 5) - v7) >> 3) <= a3);
    }

    v12 = (v7 + 8 * a3);
    if (PCString::compare(v12, a2))
    {
      PCString::set(v12, a2);
      *(this + 24) = 0;
    }
  }

  else
  {
    if (v9 <= a3)
    {
      goto LABEL_13;
    }

    PCString::set((v7 + 8 * a3), a2);
    while (1)
    {
      v7 = *(this + 4);
      v8 = *(this + 5);
LABEL_13:
      if (v8 == v7 || PCString::size((v8 - 8)))
      {
        break;
      }

      std::vector<PCString>::resize(this + 4, ((*(this + 5) - *(this + 4)) >> 3) - 1);
    }
  }
}

void std::vector<PCString>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 3;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 8 * a2;
      while (v3 != v6)
      {
        PCString::~PCString((v3 - 8));
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<PCString>::__append(a1, v5);
  }
}

PSShaderBase *PSShaderBase::compile(PSShaderBase *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    PSShaderBase::id(this);
    ProGL::GL::GL(v3);
    v1 = 0x1400000000;
    v2 = 0;
    operator new[]();
  }

  return this;
}

void sub_260019190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, PCString a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, char a21)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a12);
  if (v23)
  {
    __cxa_free_exception(v22);
  }

  MEMORY[0x2666E9ED0](v21, 0x1000C8077774924);
  if (a14)
  {
    MEMORY[0x2666E9ED0](a14, 0x50C80EE9192B6);
  }

  PCDynamicArray<std::string>::~PCDynamicArray(&a19);
  ProGL::GL::~GL(&a21);
  _Unwind_Resume(a1);
}

void printWithLineNumbers(PCString *a1)
{
  v2 = PCString::size(a1);
  CStr = PCString::createCStr(a1);
  v4 = CStr;
  if (v2 >= 1)
  {
    v5 = 0;
    v6 = v2;
    v7 = MEMORY[0x277D82670];
    v8 = 1;
    v9 = CStr;
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (!v5)
      {
        LiString::format("%4d: ", &v15, v8);
        v12 = v15 ? v15 : "";
        v13 = strlen(v12);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v12, v13);
        if (v15)
        {
          if (atomic_fetch_add(v15 - 3, 0xFFFFFFFF) == 1)
          {
            *v15 = 0;
            if (v15)
            {
              v14 = (v15 - 12);
            }

            else
            {
              v14 = 0;
            }

            free(v14);
          }
        }
      }

      v5 = v10 != 10;
      if (v10 == 10)
      {
        v8 = (v8 + 1);
      }

      else
      {
        v8 = v8;
      }

      v16 = v10;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, &v16, 1);
      --v6;
    }

    while (v6);
  }

  free(v4);
}

void sub_2600193D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    LiGeode::print(a11, &a11);
  }

  _Unwind_Resume(exception_object);
}

void PSShaderBase::source(PSShaderBase *this@<X0>, PCSharedCount *a2@<X8>)
{
  PCSharedCount::PCSharedCount(a2);
  v4 = *(this + 5) - *(this + 4);
  if ((v4 >> 3) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = (v4 >> 3) & 0x7FFFFFFF;
    do
    {
      if (PCString::size((*(this + 4) + v5)))
      {
        if (*(this + 25) == 1)
        {
          PCString::ssprintf("// segment %d\n", &v8, v6);
          PCString::append(a2, &v8);
          PCString::~PCString(&v8);
        }

        PCString::append(a2, (*(this + 4) + v5));
      }

      ++v6;
      v5 += 8;
    }

    while (v7 != v6);
  }
}

void sub_2600194BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCString::~PCString(v10);
  _Unwind_Resume(a1);
}

void PCGLSLException::PCGLSLException(PCGLSLException *this, const PCString *a2, const PCString *a3)
{
  PCException::PCException(this, a2);
  v4->var0 = &unk_28725E9B8;
  PCString::PCString(v4 + 8, a3);
}

void std::vector<PCString>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      v11 = &v5[a2];
      do
      {
        PCSharedCount::PCSharedCount(v5++);
        v10 -= 8;
      }

      while (v10);
      v5 = v11;
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

    v22 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<__CTRun const*>>(a1, v9);
    }

    v12 = (8 * (v6 >> 3));
    v19 = 0;
    v20 = v12;
    v21 = v12;
    v13 = 8 * a2;
    v14 = &v12[a2];
    do
    {
      PCSharedCount::PCSharedCount(v12++);
      v13 -= 8;
    }

    while (v13);
    *&v21 = v14;
    v15 = *(a1 + 8);
    v16 = &v20[*a1 - v15];
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PCString>,PCString*>(a1, *a1, v15, v16);
    v17 = *a1;
    *a1 = v16;
    v18 = *(a1 + 16);
    *(a1 + 8) = v21;
    *&v21 = v17;
    *(&v21 + 1) = v18;
    v19 = v17;
    v20 = v17;
    std::__split_buffer<PCString>::~__split_buffer(&v19);
  }
}

void sub_26001967C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<PCString>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t PCDynamicArray<std::string>::~PCDynamicArray(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = v2 + 24 * v4 - 1;
      v6 = -24 * v4;
      v7 = v5;
      do
      {
        v8 = *v7;
        v7 -= 24;
        if (v8 < 0)
        {
          operator delete(*(v5 - 23));
        }

        v5 = v7;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x2666E9ED0](v3, 0x1012C80EC159624);
  }

  *(a1 + 8) = 0;
  return a1;
}

BOOL PCDynamicArray<std::string>::insert(int *a1, unsigned int a2, const std::string *a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    a1[1] = 2 * v6;
    operator new[]();
  }

  v8 = *(a1 + 1) + 24 * a2;
  memmove((v8 + 24), v8, 24 * (*a1 - a2));
  std::string::operator=((*(a1 + 1) + 24 * a2), a3);
  ++*a1;
  return v6 == v7;
}

BOOL PCDynamicArray<char const*>::insert(int *a1, unsigned int a2, void *a3)
{
  v6 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
    a1[1] = 2 * v6;
    operator new[]();
  }

  v8 = *(a1 + 1) + 8 * a2;
  memmove((v8 + 8), v8, 8 * (*a1 - a2));
  *(*(a1 + 1) + 8 * a2) = *a3;
  ++*a1;
  return v6 == v7;
}

void LiHeBackgroundGenerator::~LiHeBackgroundGenerator(HGNode *this)
{
  LiHeBackgroundGeneratorShader::~LiHeBackgroundGeneratorShader(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeBackgroundGenerator::GetDOD(LiHeBackgroundGenerator *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

void LiSolidRendererImageSource::LiSolidRendererImageSource(LiSolidRendererImageSource *this)
{
  *(this + 29) = &unk_2872DEA38;
  *(this + 30) = 0;
  *(this + 248) = 1;
  LiRendererBase::LiRendererBase(this, &off_28726CDC8);
  *this = &unk_28726CCC0;
  *(this + 29) = &unk_28726CDA8;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 18) = 1065353216;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 21) = 512;
  PCSharedCount::PCSharedCount(this + 11);
  *(this + 25) = 0;
  *(this + 28) = 0x3FF0000000000000;
  *(this + 23) = 0x3FF0000000000000;
  *(this + 18) = 0x3FF0000000000000;
  *(this + 13) = 0x3FF0000000000000;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  (*(*this + 88))(this, 2);
}

void sub_260019B24(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 88));
  LiRendererBase::~LiRendererBase(v1, &off_28726CDC8);
  *(v1 + 232) = v2;
  *(v1 + 248) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiSolidRendererImageSource::~LiSolidRendererImageSource(PCString *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[7];
  PCString::~PCString(this + 11);

  LiRendererBase::~LiRendererBase(this, a2 + 1);
}

void LiSolidRendererImageSource::~LiSolidRendererImageSource(PCString *this)
{
  *(v1 + 232) = &unk_2872DEA38;
  *(v1 + 248) = 0;
  PCWeakCount::~PCWeakCount((v1 + 240));
}

{
  *(v1 + 232) = &unk_2872DEA38;
  *(v1 + 248) = 0;
  PCWeakCount::~PCWeakCount((v1 + 240));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiSolidRendererImageSource::~LiSolidRendererImageSource(LiSolidRendererImageSource *this)
{
  *(v1 + 232) = &unk_2872DEA38;
  *(v1 + 248) = 0;
  v2 = (v1 + 240);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiSolidRendererImageSource::~LiSolidRendererImageSource((this + *(*this - 24)));
}

void LiSolidRendererImageSource::getHelium(LiSolidRendererImageSource *this, __int128 **a2)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  FxColorDescription::FxColorDescription(&v95, RequestedColorDescription, 0);
  LiAgentRequestedColorSpaceSentry::LiAgentRequestedColorSpaceSentry(v94, a2, &v95);
  v5 = HGObject::operator new(0x730uLL);
  LiHeSolidRendererNode::LiHeSolidRendererNode(v5);
  v6 = a2[6];
  v5[1480] = LiRenderingTechnology::getDebugShaders((v6 + 5));
  v5[1481] = *(a2 + 248);
  v7 = *(this + 4);
  if (!v7)
  {
    v7 = *a2[6];
  }

  ObjectToWorldTransform = LiAgent::getObjectToWorldTransform(a2, v93);
  (*(*v7 + 240))(v91, v7, ObjectToWorldTransform);
  PCMatrix44Tmpl<double>::operator*(v91, v93, v92);
  LiSimpleCamera::LiSimpleCamera(v91);
  {
    LiCamera::copy(v91, v7);
    if (LiSimpleCamera::getAngleOfView(v91) == 0.0)
    {
      v7 = v91;
    }

    else
    {
      LiSolidUtils::getBoundsOfGeometry(*(this + 2), v92, v90);
      FarPlane = *&v90[4] * -1.02;
      v10 = fmax(*&v90[5] * -0.98, 0.1);
      if ((LiSimpleCamera::getCrop(v91) & 1) != 0 || LiSimpleCamera::getFarCrop(v91))
      {
        v11 = LiSimpleCamera::getNearPlaneFade(v91);
        FarPlaneFade = LiSimpleCamera::getFarPlaneFade(v91);
        v10 = v10 - v11;
        if (v10 < LiSimpleCamera::getNearPlane(v91) || v10 > LiSimpleCamera::getFarPlane(v91))
        {
          v10 = LiSimpleCamera::getNearPlane(v91);
        }

        FarPlane = FarPlane + FarPlaneFade;
        if (FarPlane < LiSimpleCamera::getNearPlane(v91) || FarPlane > LiSimpleCamera::getFarPlane(v91))
        {
          FarPlane = LiSimpleCamera::getFarPlane(v91);
        }
      }

      LiSimpleCamera::setNearPlane(v91, v10);
      v7 = v91;
      LiSimpleCamera::setFarPlane(v91, FarPlane);
    }
  }

  (*(*v7 + 200))(v90, v7);
  v13 = a2[20];
  v14 = v13[3];
  v16 = *v13;
  v15 = v13[1];
  v89[2] = v13[2];
  v89[3] = v14;
  v89[0] = v16;
  v89[1] = v15;
  v17 = v13[7];
  v19 = v13[4];
  v18 = v13[5];
  v89[6] = v13[6];
  v89[7] = v17;
  v89[4] = v19;
  v89[5] = v18;
  v20 = *(this + 184);
  v85 = *(this + 168);
  v86 = v20;
  v21 = *(this + 216);
  v87 = *(this + 200);
  v88 = v21;
  v22 = *(this + 120);
  v81 = *(this + 104);
  v82 = v22;
  v23 = *(this + 152);
  v83 = *(this + 136);
  v84 = v23;
  if (*(this + 4))
  {
    v24 = *a2[6];
    if (v24)
    {
      (*(*v24 + 48))(v67);
      PCMatrix44Tmpl<double>::operator*(v67, &v81, &v73);
      for (i = 0; i != 128; i += 32)
      {
        v26 = (&v81 + i);
        v27 = *(&v73 + i + 16);
        *v26 = *(&v73 + i);
        v26[1] = v27;
      }
    }
  }

  if (!PCMatrix44Tmpl<double>::is2Didentity(&v81))
  {
    v28 = 0;
    *(&v80 + 1) = *(&v88 + 1);
    v73 = v81;
    *(&v74 + 1) = *(&v82 + 1);
    v75 = v83;
    *(&v76 + 1) = *(&v84 + 1);
    *&v80 = 0;
    *&v76 = 0;
    *&v74 = 0;
    v77 = 0uLL;
    v78 = xmmword_2603426F0;
    v79 = v87;
    v29 = 1.0 / sqrt(*&v87 * *&v87 + *(&v87 + 1) * *(&v87 + 1) + *(&v88 + 1) * *(&v88 + 1));
    v30 = &v73;
    do
    {
      for (j = 0; j != 2; ++j)
      {
        v30[j] = vmulq_n_f64(v30[j], v29);
      }

      ++v28;
      v30 += 2;
    }

    while (v28 != 4);
    v79 = 0uLL;
    v72 = 0x3FF0000000000000;
    *v71 = 0x3FF0000000000000;
    v68 = 0x3FF0000000000000;
    *v67 = 0x3FF0000000000000;
    memset(&v67[8], 0, 32);
    v69 = 0u;
    v70 = 0u;
    memset(&v71[8], 0, 32);
    if (PCMatrix44Tmpl<double>::invert(v67, &v73, 0.0))
    {
      PCMatrix44Tmpl<double>::operator*(v89, &v73, v66);
      for (k = 0; k != 16; k += 4)
      {
        v33 = &v89[k / 2];
        v34 = *&v66[k + 2].var0;
        *v33 = *&v66[k].var0;
        v33[1] = v34;
      }

      PCMatrix44Tmpl<double>::operator*(&v81, v67, v66);
      for (m = 0; m != 16; m += 4)
      {
        v36 = (&v81 + m * 8);
        v37 = *&v66[m + 2].var0;
        *v36 = *&v66[m].var0;
        v36[1] = v37;
      }
    }
  }

  v77 = v92[4];
  v78 = v92[5];
  v79 = v92[6];
  v80 = v92[7];
  v73 = v92[0];
  v74 = v92[1];
  v75 = v92[2];
  v76 = v92[3];
  PCMatrix44Tmpl<double>::invert(&v73, &v73, 0.0);
  LiHeSolidRendererNode::setCameraInfo(v5, v7);
  if (v5 + 432 != v92)
  {
    v38 = 0;
    v39 = v92;
    v40 = v5 + 432;
    do
    {
      for (n = 0; n != 32; n += 8)
      {
        *&v40[n] = *(v39 + n);
      }

      ++v38;
      v40 += 32;
      v39 += 2;
    }

    while (v38 != 4);
  }

  v42 = v5 + 560;
  if (v5 + 560 != &v73)
  {
    v43 = 0;
    v44 = &v73;
    do
    {
      for (ii = 0; ii != 32; ii += 8)
      {
        *&v42[ii] = *(v44 + ii);
      }

      ++v43;
      v42 += 32;
      v44 += 2;
    }

    while (v43 != 4);
  }

  v46 = v5 + 688;
  if (v5 + 688 != v90)
  {
    v47 = 0;
    v48 = v90;
    do
    {
      for (jj = 0; jj != 4; ++jj)
      {
        *&v46[jj * 8] = v48[jj];
      }

      ++v47;
      v46 += 32;
      v48 += 4;
    }

    while (v47 != 4);
  }

  v50 = v5 + 816;
  if (v5 + 816 != v93)
  {
    v51 = 0;
    v52 = v93;
    do
    {
      for (kk = 0; kk != 32; kk += 8)
      {
        *&v50[kk] = *(v52 + kk);
      }

      ++v51;
      v50 += 32;
      v52 += 2;
    }

    while (v51 != 4);
  }

  (*(*v7 + 344))(v67, v7);
  v54 = *&v67[16];
  *(v5 + 59) = *v67;
  *(v5 + 60) = v54;
  v64 = 0uLL;
  v65 = 0;
  v62 = 0uLL;
  v63 = 0;
  v60 = 0uLL;
  v61 = 0;
  if ((*(*v7 + 568))(v7, &v62, &v60))
  {
    v56 = *(&v60 + 1);
    v55 = *&v60;
    v57 = v61;
  }

  else
  {
    v60 = 0x3FF0000000000000uLL;
    v61 = 0;
    v62 = 0x3FF0000000000000uLL;
    v63 = 0;
    v55 = 1.0;
    v57 = 0;
    v56 = 0;
  }

  v64 = v62;
  v65 = v63;
  if ((*(*v7 + 608))(v7, &v62, &v60))
  {
    v58 = v60;
    v59 = v61;
  }

  else
  {
    v60 = 0x3FF0000000000000uLL;
    v61 = 0;
    v62 = 0x3FF0000000000000uLL;
    v63 = 0;
    v58 = xmmword_2603426F0;
    v59 = 0;
  }

  *(v5 + 93) = v64;
  *(v5 + 188) = v65;
  *(v5 + 189) = v55;
  *(v5 + 190) = v56;
  *(v5 + 191) = v57;
  *(v5 + 96) = v62;
  *(v5 + 194) = v63;
  *(v5 + 1560) = v58;
  *(v5 + 197) = v59;
  *(v5 + 396) = *(this + 25);
  *(v5 + 316) = *(this + 24);
  LiHeSolidRendererNode::setScene(v5, *(this + 2), a2);
  *(v5 + 69) = *(this + 3);
  LiHeSolidRendererNode::setAAType(v5, *(this + 16));
}

void sub_26001A9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, PCString a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, PCSharedCount a45)
{
  if (a45.var0)
  {
    (*(*a45.var0 + 24))(a45.var0);
  }

  if (*v46)
  {
    (*(**v46 + 24))(*v46);
  }

  PCArray<PCPtr<LiMaterialFilter>,PCArray_Traits<PCPtr<LiMaterialFilter>>>::~PCArray(&a25);
  LiSimpleCamera::~LiSimpleCamera(&STACK[0x420], v49);
  if (v45)
  {
    (*(*v45 + 24))(v45);
  }

  LiAgentRequestedColorSpaceSentry::~LiAgentRequestedColorSpaceSentry((v47 - 200));
  PCCFRef<CGColorSpace *>::~PCCFRef((v47 - 160));
  _Unwind_Resume(a1);
}

uint64_t LiSolidRendererImageSource::print(uint64_t a1, void *a2, uint64_t a3)
{
  LiImageSource::printIndent(a2, a3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "----- LiSolidRendererImageSource: scene graph -----\n", 52);
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(*v6 + 752))(v6, a2, a3);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Active camera\n", 14);
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    throw_PCNullPointerException(1);
  }

  v8 = *(*v7 + 112);

  return v8();
}

LiSolidUtils *LiSolidRendererImageSource::adjustCasterLocalToWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double *a6)
{
  result = (*(*a1 + 176))(a1);
  if (!result)
  {
    return result;
  }

  LiSolidUtils::getBoundsOfGeometry(result, &v86);
  v11 = (v86 + v87) * 0.5;
  v12 = (v88 + v89) * 0.5;
  v13 = v90;
  v14 = v91;
  v85[0] = v11;
  v15 = (v87 - v86) * (v87 - v86) + (v89 - v88) * (v89 - v88);
  v16 = (v91 - v90) * (v91 - v90);
  v17 = (v12 - v88) * 0.5;
  memset(v80, 0, sizeof(v80));
  v81 = 4;
  v82 = 0u;
  v83 = 0u;
  v84 = 0;
  PCMatrix44Tmpl<double>::getTransformation(a4, v80);
  v18 = *(a4 + 24);
  v19 = *(a4 + 56);
  v20 = *(a4 + 88);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0x3FF0000000000000;
  *(a4 + 32) = xmmword_260342700;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0x3FF0000000000000;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 0x3FF0000000000000;
  v78 = 0uLL;
  v79 = 0.0;
  if (*(a2 + 656) == 1)
  {
    LODWORD(v21) = fabs(*(a2 + 632)) > fabs(*(a2 + 624));
    if (fabs(*(a2 + 640)) <= fabs(*(a2 + 624 + 8 * v21)))
    {
      v21 = v21;
    }

    else
    {
      v21 = 2;
    }

    v22 = 1.0;
    if (*(a2 + 624 + 8 * v21) < 0.0)
    {
      v22 = -1.0;
    }

    v23 = v22;
    *(&v78 + v21) = -v23;
    v24 = a4 + 32 * v21;
    if (v23 <= 0.0)
    {
      v68 = *&v86;
      *&v69 = v88;
      *(&v69 + 1) = v90;
      v25 = *(&v68 + v21);
      v26 = *(v24 + 24);
      v27 = v25 < v26;
    }

    else
    {
      v68 = *&v87;
      *&v69 = v89;
      *(&v69 + 1) = v91;
      v25 = *(&v68 + v21);
      v26 = *(v24 + 24);
      v27 = v26 < v25;
    }

    if (!v27)
    {
      v25 = v26;
    }

    v30 = 0;
    v32 = vdup_n_s32(v21);
    v33 = vadd_s32(v32, 0x200000001);
    v34 = vbsl_s8(vcgt_u32(0x300000003, v33), v33, vadd_s32(v32, -2));
    v11 = v85[v34.i32[0]];
    v12 = v85[v34.i32[1]];
    *(v24 + 24) = v25;
    goto LABEL_22;
  }

  v28 = *(a2 + 680);
  v29 = v90;
  if (v28 < v90)
  {
    v30 = 0;
    v78 = 0uLL;
    v79 = -1.0;
    v31 = v90 < v20;
LABEL_18:
    if (v31)
    {
      v35 = v29;
    }

    else
    {
      v35 = v20;
    }

    *(a4 + 88) = v35;
    goto LABEL_22;
  }

  v29 = v91;
  if (v28 > v91)
  {
    v30 = 0;
    v78 = 0uLL;
    v79 = 1.0;
    v31 = v20 < v91;
    goto LABEL_18;
  }

  v48 = *(a2 + 672);
  v49 = v88;
  if (v48 < v88)
  {
    v30 = 0;
    *(&v78 + 1) = 0xBFF0000000000000;
    v50 = v88 < v19;
LABEL_35:
    if (v50)
    {
      v51 = v49;
    }

    else
    {
      v51 = v19;
    }

    *(a4 + 56) = v51;
    v12 = (v13 + v14) * 0.5;
    goto LABEL_22;
  }

  v49 = v89;
  if (v48 > v89)
  {
    v30 = 0;
    *(&v78 + 1) = 0x3FF0000000000000;
    v50 = v19 < v89;
    goto LABEL_35;
  }

  v52 = *(a2 + 664);
  v53 = v86;
  if (v52 < v86)
  {
    v30 = 0;
    v54 = 0xBFF0000000000000;
    v55 = v86 < v18;
LABEL_43:
    v79 = 0.0;
    if (v55)
    {
      v18 = v53;
    }

    v78 = v54;
    *(a4 + 24) = v18;
    v11 = (v13 + v14) * 0.5;
    goto LABEL_22;
  }

  v53 = v87;
  if (v52 > v87)
  {
    v30 = 0;
    v54 = 0x3FF0000000000000;
    v55 = v18 < v87;
    goto LABEL_43;
  }

  *(a4 + 24) = v11;
  *(a4 + 56) = v12;
  v30 = 1;
  *(a4 + 88) = (v13 + v14) * 0.5;
LABEL_22:
  v36 = v15 + v16;
  v77 = 0x3FF0000000000000;
  v74 = 0x3FF0000000000000;
  v71 = 0x3FF0000000000000;
  v67 = 0x3FF0000000000000;
  v68 = 0x3FF0000000000000;
  v69 = 0u;
  v70 = 0u;
  v72 = 0u;
  v73 = 0u;
  v75 = 0u;
  v76 = 0u;
  v64 = 0x3FF0000000000000;
  v61 = 0x3FF0000000000000;
  v58 = 0x3FF0000000000000;
  v59 = 0u;
  v60 = 0u;
  v62 = 0u;
  v63 = 0u;
  v65 = 0u;
  v66 = 0u;
  PCMatrix44Tmpl<double>::leftTranslate(&v58, 0, v17, 0.0);
  if ((v30 & 1) == 0)
  {
    v37 = *(&v78 + 1) - v79 * 0.0;
    v38 = v79 * 0.0 - *&v78;
    v39 = *&v78 * 0.0 - *(&v78 + 1) * 0.0;
    v40 = -acos(v79 + *(&v78 + 1) * 0.0 + *&v78 * 0.0);
    v41 = sqrt(v37 * v37 + v38 * v38 + v39 * v39);
    if (fabs(v41) >= 0.000000100000001)
    {
      v37 = v37 / v41;
      v38 = v38 / v41;
      v39 = v39 / v41;
    }

    v57[0] = v37;
    v57[1] = v38;
    v57[2] = v39;
    v57[3] = 1.0;
    PCMatrix44Tmpl<double>::rotate(&v68, v57, 0, v40);
  }

  v42 = sqrt(v36);
  PCMatrix44Tmpl<double>::operator*(a4, &v58, v56);
  result = PCMatrix44Tmpl<double>::operator*(v56, &v68, v57);
  if (v57 != a4)
  {
    for (i = 0; i != 16; i += 4)
    {
      v44 = (a4 + i * 8);
      v45 = *&v57[i + 2];
      *v44 = *&v57[i];
      v44[1] = v45;
    }
  }

  *(a5 + 40) = v78;
  *(a5 + 56) = v79;
  v46 = *(a4 + 56);
  v47 = *(a4 + 88);
  *(a5 + 16) = *(a4 + 24);
  *(a5 + 24) = v46;
  *(a5 + 32) = v47;
  *a6 = v11 - v42 * 0.5;
  a6[1] = v12 - v42 * 0.5;
  a6[2] = v42;
  a6[3] = v42;
  return result;
}

void LiLightProperties::LiLightProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = a5;
  ProShade::Vec3::Vec3((a1 + 32));
}

void sub_26001BA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, PCSharedCount a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v37 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v36 + 3);
  *(v37 - 224) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v37 - 200));
  *(v37 - 192) = a9;
  PCSharedCount::~PCSharedCount((v37 - 168));
  v35[12].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v35 + 15);
  v35[8].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v35 + 11);
  v35[4].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v35 + 7);
  _Unwind_Resume(a1);
}

uint64_t *ProShade::Vec3::operator=(uint64_t *a1, const PCSharedCount *a2)
{
  a1[2] = a2[2].var0;
  PCSharedCount::PCSharedCount(&v4, a2 + 3);
  PCSharedCount::operator=(a1 + 3, &v4);
  PCSharedCount::~PCSharedCount(&v4);
  ProShade::Vec3::checkType(a1);
  return a1;
}

void LiLightProperties::reflectedViewDir(LiLightProperties *this)
{
  v6[29] = *MEMORY[0x277D85DE8];
  v2 = (this + 16);
  v1 = *(this + 2);
  v3[4] = &unk_28725E328;
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  PCSharedCount::PCSharedCount(v6, (v1 + 120));
  ProShade::Func<ProShade::Func_normalize>::eval(*v2 + 16, v3);
  v6[17].var0 = &unk_28725E328;
  operator new();
}

void sub_26001C2C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCSharedCount a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, PCSharedCount a21, void *a22, uint64_t a23, uint64_t a24, PCSharedCount a25, void *a26)
{
  a26 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v26 + 3);
  a22 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a25);
  a18 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a21);
  PCSharedCount::~PCSharedCount(&a13);
  PCSharedCount::~PCSharedCount(v27 + 3);
  _Unwind_Resume(a1);
}

void LiLightProperties::lightAngle(LiLightProperties *this)
{
  v2 = *MEMORY[0x277D85DE8];
  v1 = &unk_28725E328;
  operator new();
}

void sub_26001C844(_Unwind_Exception *a1)
{
  *(v4 - 128) = v2;
  PCSharedCount::~PCSharedCount(v3 + 3);
  *(v4 - 160) = v1;
  PCSharedCount::~PCSharedCount((v4 - 136));
  _Unwind_Resume(a1);
}

void LiLightProperties::getAttenuation(LiLightProperties *this@<X0>, ProShade::Float *a2@<X8>)
{
  v8[9] = *MEMORY[0x277D85DE8];
  v5 = &unk_28725E328;
  v6 = *(this + 40);
  v7 = *(this + 6);
  PCSharedCount::PCSharedCount(v8, this + 7);
  v5 = &unk_287268E10;
  PCSharedCount::PCSharedCount(&v4, this + 11);
  if (*(*this + 656) <= 1u)
  {
    ProShade::Float::Float(a2, 1.0);
  }

  operator new();
}

void sub_26001DE1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, _Unwind_Exception *exception_object, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, PCSharedCount a62)
{
  *(v63 - 128) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v62 + 3);
  PCSharedCount::~PCSharedCount(&a38);
  a39 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a42);
  a43 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a46);
  a47 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a50);
  a51 = a10;
  PCSharedCount::~PCSharedCount(&a54);
  a55 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a58);
  a59 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a62);
  *(v63 - 256) = a11;
  PCSharedCount::~PCSharedCount((v63 - 232));
  *(v63 - 224) = a12;
  PCSharedCount::~PCSharedCount((v63 - 200));
  *(v63 - 192) = a13;
  PCSharedCount::~PCSharedCount((v63 - 168));
  _Unwind_Resume(a1);
}

void sub_26001E5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, PCSharedCount a46, void *a47, uint64_t a48, uint64_t a49, PCSharedCount a50, void *a51, uint64_t a52, uint64_t a53, PCSharedCount a54)
{
  *(v58 - 160) = v56;
  PCSharedCount::~PCSharedCount(v57 + 3);
  *(v58 - 128) = v55;
  PCSharedCount::~PCSharedCount(v54 + 3);
  a51 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a54);
  PCSharedCount::~PCSharedCount(&a46);
  a47 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a50);
  JUMPOUT(0x26001E538);
}

void sub_26001FDBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v16 - 192) = a16;
  PCSharedCount::~PCSharedCount((v16 - 168));
  _Unwind_Resume(a1);
}

void loadSampleShadowJitter(void)
{
  {
    ProShade::External::External(&loadSampleShadowJitter(void)::_sampleShadow);
    __cxa_atexit(ProShade::External::~External, &loadSampleShadowJitter(void)::_sampleShadow, &dword_25F8F0000);
  }

  LiLightInfo::loadShadowSnippet(&v5);
  PCString::PCString(&v4, "sampleShadowJitter");
  ProShade::External::define(&loadSampleShadowJitter(void)::_sampleShadow, &v5, &v4, 3, 1);
  PCString::~PCString(&v4);
  PCString::PCString(&v3, "shadowCoord");
  ProShade::External::addArgument(&loadSampleShadowJitter(void)::_sampleShadow, 3, 3, &v3);
  PCString::~PCString(&v3);
  PCString::PCString(&v2, "texPerPixel");
  ProShade::External::addArgument(&loadSampleShadowJitter(void)::_sampleShadow, 3, 2, &v2);
  PCString::~PCString(&v2);
  PCString::PCString(&v1, "shadowMap");
  ProShade::External::addArgument(&loadSampleShadowJitter(void)::_sampleShadow, 3, 9, &v1);
  PCString::~PCString(&v1);
  PCString::PCString(&v0, "noiseMap");
  ProShade::External::addArgument(&loadSampleShadowJitter(void)::_sampleShadow, 3, 9, &v0);
  PCString::~PCString(&v0);
  PCSharedCount::~PCSharedCount(&v6);
}

void loadSampleCubeShadowJitter(void)
{
  {
    ProShade::External::External(&loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter);
    __cxa_atexit(ProShade::External::~External, &loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter, &dword_25F8F0000);
  }

  LiLightInfo::loadShadowSnippet(&v6);
  PCString::PCString(&v5, "sampleCubeShadowJitter");
  ProShade::External::define(&loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter, &v6, &v5, 3, 1);
  PCString::~PCString(&v5);
  PCString::PCString(&v4, "shadowCoord");
  ProShade::External::addArgument(&loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter, 3, 3, &v4);
  PCString::~PCString(&v4);
  PCString::PCString(&v3, "blurRadius");
  ProShade::External::addArgument(&loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter, 3, 2, &v3);
  PCString::~PCString(&v3);
  PCString::PCString(&v2, "lightProjectionMatrix");
  ProShade::External::addArgument(&loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter, 3, 7, &v2);
  PCString::~PCString(&v2);
  PCString::PCString(&v1, "shadowMap");
  ProShade::External::addArgument(&loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter, 3, 13, &v1);
  PCString::~PCString(&v1);
  PCString::PCString(&v0, "noiseMap");
  ProShade::External::addArgument(&loadSampleCubeShadowJitter(void)::_sampleCubeShadowJitter, 3, 9, &v0);
  PCString::~PCString(&v0);
  PCSharedCount::~PCSharedCount(&v7);
}

void sub_260021B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, PCSharedCount *a9, _Unwind_Exception *exception_object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, PCSharedCount a52)
{
  PCSharedCount::~PCSharedCount(v52 + 3);
  PCSharedCount::~PCSharedCount(&a36);
  a37 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a40);
  a41 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a44);
  a45 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a48);
  a49 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a52);
  *(v55 - 256) = v54;
  PCSharedCount::~PCSharedCount(v53 + 3);
  *(v55 - 224) = &unk_28725E328;
  PCSharedCount::~PCSharedCount((v55 - 200));
  *(v55 - 192) = a11;
  PCSharedCount::~PCSharedCount((v55 - 168));
  *(v55 - 160) = a12;
  PCSharedCount::~PCSharedCount((v55 - 136));
  PCSharedCount::~PCSharedCount(a9);
  _Unwind_Resume(a1);
}

void LiShadowGenMaterial::getHash(LiShadowGenMaterial *this)
{
  MEMORY[0x28223BE20](this);
  v2 = v1;
  v3[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v3);
  PCHashWriteStream::writeValue(v3, 123456);
  *v2 = *PCHashWriteStream::getHash(v3)->i8;
  PCHashWriteStream::~PCHashWriteStream(v3);
}

void LiShadowGenMaterial::~LiShadowGenMaterial(LiShadowGenMaterial *this)
{
  LiMaterial::~LiMaterial(this, off_28726D1A8);
  *(v1 + 664) = &unk_2872DEA38;
  *(v1 + 680) = 0;
  PCWeakCount::~PCWeakCount((v1 + 672));
}

{
  LiMaterial::~LiMaterial(this, off_28726D1A8);
  *(v1 + 664) = &unk_2872DEA38;
  *(v1 + 680) = 0;
  PCWeakCount::~PCWeakCount((v1 + 672));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiShadowGenMaterial::~LiShadowGenMaterial(LiShadowGenMaterial *this)
{
  LiMaterial::~LiMaterial((this + *(*this - 24)), off_28726D1A8);
  *(v1 + 664) = &unk_2872DEA38;
  *(v1 + 680) = 0;
  v2 = (v1 + 672);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  LiMaterial::~LiMaterial(v1, off_28726D1A8);
  v1[83] = &unk_2872DEA38;
  *(v1 + 680) = 0;
  PCWeakCount::~PCWeakCount(v1 + 84);

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::eval(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      ProShade::Value::Value(v6);
      ProShade::Value::Value(&v5);
      (*(*v3 + 224))(v3, v6);
      ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>::eval(v6, &v5);
      ProShade::Const::create(&v5, v4);
    }
  }

  v6[0] = &unk_28725E328;
  v6[2] = 0;
  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_260022844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726D538);
  *a1 = &unk_28726D460;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726D518;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_2600229E4(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>::eval(int *a1, OZChannelBase *a2)
{
  v4 = *a1;
  if (*a1 > 1)
  {
    ProShade::Value::set(a2, 3, a1[1]);
    Serializer = OZChannelBase::getSerializer(a2);
    Size = ProShade::shapeGetSize(a1[1], v8);
    v10 = Size;
    if (v4 == 2)
    {
      if (Size >= 1)
      {
        v11 = a1 + 4;
        do
        {
          v12 = *v11++;
          *Serializer++ = acos(v12);
          --v10;
        }

        while (v10);
      }
    }

    else if (Size >= 1)
    {
      v13 = (a1 + 4);
      do
      {
        v14 = *v13++;
        *Serializer++ = acos(v14);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    ProShade::Value::set(a2, 1, a1[1]);
    OZChannelBase::getSerializer(a2);
    if (ProShade::shapeGetSize(a1[1], v5) >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("acos doesn't apply to BOOL", v6);
    }
  }
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "acos");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_260022C5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 17, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 4;
  v5[2] = v4 + 5;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 1936679777;
  *(v6 + v4 + 4) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_260022D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "acos");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_260023040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_260023208(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>::eval(v3, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::acos_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726D538);
  *a1 = &unk_28726D460;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726D518;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_2600234CC(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::eval(uint64_t a1)
{
  v7[15] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  if (v1)
  {
    if (v2)
    {
      v3 = v2;
      ProShade::Value::Value(v6);
      ProShade::Value::Value(&v5);
      (*(*v3 + 224))(v3, v6);
      ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>::eval(v6, &v5);
      ProShade::Const::create(&v5, v4);
    }
  }

  v6[0] = &unk_28725E328;
  v6[2] = 0;
  PCSharedCount::PCSharedCount(v7);
  operator new();
}

void sub_2600237B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::Func(uint64_t a1, PCShared_base *a2)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726D7B0);
  *a1 = &unk_28726D6D8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726D790;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  *(a1 + 24) = *(a2 + 3);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, 1, 3);
  if (*(a1 + 60) <= 0)
  {
    PCArray_base::badIndex(v4);
  }

  PCPtr<LiImageSource>::operator=<LiImageSource>((*(a1 + 64) + 16), a2);
  ProShade::Node::setFrequency(a1);
  if (*(a1 + 40) == 2 && *(a1 + 44) >= 3)
  {
    *(a1 + 40) = 3;
  }

  return a1;
}

void sub_260023950(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>::eval(int *a1, OZChannelBase *a2)
{
  v4 = *a1;
  if (*a1 > 1)
  {
    ProShade::Value::set(a2, 3, a1[1]);
    Serializer = OZChannelBase::getSerializer(a2);
    Size = ProShade::shapeGetSize(a1[1], v8);
    v10 = Size;
    if (v4 == 2)
    {
      if (Size >= 1)
      {
        v11 = a1 + 4;
        do
        {
          v12 = *v11++;
          *Serializer++ = asin(v12);
          --v10;
        }

        while (v10);
      }
    }

    else if (Size >= 1)
    {
      v13 = (a1 + 4);
      do
      {
        v14 = *v13++;
        *Serializer++ = asin(v14);
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    ProShade::Value::set(a2, 1, a1[1]);
    OZChannelBase::getSerializer(a2);
    if (ProShade::shapeGetSize(a1[1], v5) >= 1)
    {
      ProShade::Error<PCIllegalArgumentException>::raise<char [33]>("asin doesn't apply to BOOL", v6);
    }
  }
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::~Func(uint64_t a1)
{
  *(v2 + 72) = &unk_2872DEA38;
  *(v2 + 88) = 0;
  PCWeakCount::~PCWeakCount((v2 + 80));
  return a1;
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::~Func(uint64_t a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::repr(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LiString::LiString(&v5, "asin");
  ProShade::func_repr(&v5, a1 + 48, a2);
  if (v5 && atomic_fetch_add(v5 - 3, 0xFFFFFFFF) == 1)
  {
    *v5 = 0;
    if (v5)
    {
      v4 = v5 - 3;
    }

    else
    {
      v4 = 0;
    }

    free(v4);
  }
}

void sub_260023BC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::description(void *a1@<X8>)
{
  LiString::LiString(&v8, "Func ");
  v2 = v8;
  if (v8)
  {
    v3 = *(v8 - 2);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 17, 0x10000403E1C8BA9uLL);
  v5[1] = v4 + 4;
  v5[2] = v4 + 5;
  atomic_store(1u, v5);
  v6 = v5 + 3;
  atomic_store(0, v5);
  memcpy(v5 + 3, v2, v4);
  *(v6 + v4) = 1852404577;
  *(v6 + v4 + 4) = 0;
  *a1 = v5 + 3;
  atomic_fetch_add(v5, 1u);
  if (v8 && atomic_fetch_add(v8 - 3, 0xFFFFFFFF) == 1)
  {
    *v8 = 0;
    if (v8)
    {
      v7 = v8 - 12;
    }

    else
    {
      v7 = 0;
    }

    free(v7);
  }
}

void sub_260023CE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    ProShade::Func<ProShade::ScalarFunctionTraits_2<ProShade::equal_traits>>::repr(a10);
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::computeHash(uint64_t a1, int8x8_t *this)
{
  PCHashWriteStream::writeValue(this, "Func");
  result = PCHashWriteStream::writeValue(this, "asin");
  if (*(a1 + 60) >= 1)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::hash(*(a1 + 64) + v5, &v7);
      result = PCHashWriteStream::writeValue(this, &v7);
      ++v6;
      v5 += 32;
    }

    while (v6 < *(a1 + 60));
  }

  return result;
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::apply@<X0>(uint64_t a1@<X0>, void (***a2)(PCSharedCount *__return_ptr, void, uint64_t)@<X1>, PCArray_base *a3@<X8>)
{
  v4 = a3;
  v21[1] = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = 0;
  v17 = &unk_28725EA68;
  v5 = *(a1 + 60);
  if (v5 >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 16;
    do
    {
      if (v7 >= *(a1 + 60))
      {
        PCArray_base::badIndex(v4);
      }

      v10 = *(a1 + 64);
      (**a2)(v20, a2, v10 + v9 - 16);
      var0 = v20[2].var0;
      v12 = *(v10 + v9);
      if (v18 <= SHIDWORD(v18))
      {
        v13 = 2 * (HIDWORD(v18) + 1) + 1;
      }

      else
      {
        v13 = v18;
      }

      PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, HIDWORD(v18) + 1, v13);
      ProShade::VarT<ProShade::Node>::operator=(v19 + 32 * SHIDWORD(v18) - 32, v20);
      v8 |= var0 != v12;
      v20[0].var0 = &unk_28725E328;
      PCSharedCount::~PCSharedCount(v21);
      ++v7;
      v9 += 32;
    }

    while (v5 != v7);
    if (v8)
    {
      operator new();
    }

    v4 = a3;
  }

  ProShade::VarT<ProShade::Node>::VarT(v4, a1);
  v17 = &unk_28725EA68;
  if (v18 < 0)
  {
    v14 = 1;
  }

  else
  {
    v14 = v18;
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(&v17, 0, v14);
  result = v19;
  if (v19)
  {
    return MEMORY[0x2666E9ED0](v19, 0x1000C8077774924);
  }

  return result;
}

void sub_260023FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x2666E9F00](v3, 0x10B1C40241F72B2);
  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void sub_260024174(_Unwind_Exception *a1)
{
  *(v1 + 72) = v3;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v4);
  MEMORY[0x2666E9F00](v1, v2);
  _Unwind_Resume(a1);
}

void ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::computeValue(PCArray_base *a1, uint64_t a2, OZChannelBase *a3)
{
  if (*(a2 + 12) <= 0)
  {
    PCArray_base::badIndex(a1);
  }

  v3 = *(a2 + 16);

  ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>::eval(v3, a3);
}

void virtual thunk toProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::~Func(void *a1)
{
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  v2 = (v1 + 80);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = a1 + *(*a1 - 24);
  *(v1 + 72) = &unk_2872DEA38;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount((v1 + 80));

  JUMPOUT(0x2666E9F00);
}

uint64_t ProShade::Func<ProShade::ScalarFunctionTraits_1<ProShade::asin_traits>>::Func(uint64_t a1, uint64_t a2, const ProShade::Node *a3)
{
  *(a1 + 72) = &unk_2872DEA38;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  ProShade::Node::Node(a1, &off_28726D7B0);
  *a1 = &unk_28726D6D8;
  *(a1 + 64) = 0;
  *(a1 + 72) = &unk_28726D790;
  *(a1 + 48) = &unk_28725EA68;
  *(a1 + 56) = 0;
  ProShade::Node::copyFrom(a1, a3);
  v6 = *(a2 + 12);
  if (*(a1 + 56) < v6)
  {
    v7 = 2 * v6 + 1;
  }

  else
  {
    v7 = *(a1 + 56);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a1 + 48, v6, v7);
  if (*(a2 + 12) >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ProShade::VarT<ProShade::Node>::operator=(*(a1 + 64) + v8, (*(a2 + 16) + v8));
      ++v9;
      v8 += 32;
    }

    while (v9 < *(a2 + 12));
  }

  return a1;
}

void sub_260024438(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  *(v1 + 88) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiSolidUtils::aux_createTexture(LiSolidUtils *this@<X0>, ProGL::GL *a2@<X1>, int a3@<W2>, int a4@<W3>, GLenum a5@<W4>, GLenum a6@<W5>, GLvoid *a7@<X6>, HGGLBlendingInfo **a8@<X8>, int a9, int a10)
{
  v16 = a2;
  ProGL::GL::getPGLContextHandle(this, v21);
  ProGL::TextureDescription::TextureDescription(v22, 0xDE1u, v16, a3, 0, a4, v21);
  ProGL::ContextHandle::~ContextHandle(v21);
  ProGL::GL::getPGLContextHandle(this, v21);
  VirtualScreen = ProGL::ContextHandle::getVirtualScreen(v21);
  ProGL::ContextHandle::~ContextHandle(v21);
  v23 = VirtualScreen;
  ProGL::createTextureFromPool(this, v22, a8);
  glActiveTexture(0x84C0u);
  Name = ProGL::TextureHandle::getName(a8);
  glBindTexture(0xDE1u, Name);
  glEnable(0xDE1u);
  glTexParameteri(0xDE1u, 0x2800u, 9729);
  glTexParameteri(0xDE1u, 0x2801u, 9729);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  ProGL::TextureHandle::texImage2D(a8, this, 0xDE1u, 0, a4, v16, a3, 0, a5, a6, a7);
  glBindTexture(0xDE1u, 0);
  glDisable(0xDE1u);
  ProGL::ContextHandle::~ContextHandle(v22);
}

void sub_260024600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  ProGL::ContextHandle::~ContextHandle(va);
  _Unwind_Resume(a1);
}

uint64_t LiSolidUtils::getBoundsOfGeometry@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 16) = xmmword_2603429E0;
  *(a3 + 32) = xmmword_2603429E0;
  *a3 = xmmword_2603429E0;
  LiSceneIterator<LiSolid,LiSceneIteratorAlways>::LiSceneIterator(v23, a1);
  while (1)
  {
    v5 = v24;
    if (!v24)
    {
      break;
    }

    v22[4] = v29;
    v22[5] = v30;
    v22[6] = v31;
    v22[7] = v32;
    v22[0] = v25;
    v22[1] = v26;
    v22[2] = v27;
    v22[3] = v28;
    PCMatrix44Tmpl<double>::leftMult(v22, a2);
    v20 = xmmword_2603429E0;
    v21 = xmmword_2603429E0;
    v19 = xmmword_2603429E0;
    (*(*v5 + 80))(v5, &v19, v22);
    if (vmovn_s64(vcgtq_f64(*a3, vdupq_laneq_s64(*a3, 1))).u8[0] & 1) != 0 || (v6 = *(a3 + 16), (vmovn_s64(vcgtq_f64(v6, vdupq_laneq_s64(v6, 1))).u8[0]) || (v8 = *(a3 + 32), v7 = *(a3 + 40), v8 > v7))
    {
      v9 = v20;
      *a3 = v19;
      *(a3 + 16) = v9;
      *(a3 + 32) = v21;
    }

    else if ((vmovn_s64(vcgtq_f64(v19, vdupq_laneq_s64(v19, 1))).u8[0] & 1) == 0 && (vmovn_s64(vcgtq_f64(v20, vdupq_laneq_s64(v20, 1))).u8[0] & 1) == 0)
    {
      v10 = v21;
      if (*&v21 <= *(&v21 + 1))
      {
        v11.f64[0] = *a3;
        v11.f64[1] = v19.f64[1];
        v12.f64[0] = *(a3 + 16);
        v12.f64[1] = *(&v20 + 1);
        v13.f64[0] = v19.f64[0];
        v13.f64[1] = *(a3 + 8);
        *&v14.f64[0] = v20;
        v14.f64[1] = *(a3 + 24);
        v15 = vbslq_s8(vcgtq_f64(v14, v12), v6, v20);
        *a3 = vbslq_s8(vcgtq_f64(v13, v11), *a3, v19);
        *(a3 + 16) = v15;
        if (v8 >= *&v10)
        {
          v16 = *&v10;
        }

        else
        {
          v16 = v8;
        }

        if (v7 <= *(&v10 + 1))
        {
          v17 = *(&v10 + 1);
        }

        else
        {
          v17 = v7;
        }

        *(a3 + 32) = v16;
        *(a3 + 40) = v17;
      }
    }

    LiSceneIterator<LiSolid,LiSceneIteratorAlways>::operator++(v23);
  }

  return LiSceneIterator<LiSolid,LiSceneIteratorAlways>::~LiSceneIterator(v23);
}

uint64_t LiSceneIterator<LiSolid,LiSceneIteratorAlways>::operator++(uint64_t a1)
{
  if (*(a1 + 8))
  {
    do
    {
      LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::next(a1);
      v2 = *(a1 + 8);
    }
  }

  return a1;
}

uint64_t LiSceneIterator<LiSolid,LiSceneIteratorAlways>::~LiSceneIterator(uint64_t a1)
{
  v2 = a1 + 16;
  *(a1 + 16) = &unk_28726D948;
  if (*(a1 + 24) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 24);
  }

  PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::resize(v2, 0, v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t LiSolidUtils::getBoundsOfGeometry@<X0>(LiSolidUtils *this@<X0>, uint64_t a2@<X8>)
{
  v13 = 0x3FF0000000000000;
  v10 = 0x3FF0000000000000;
  v7 = 0x3FF0000000000000;
  v4 = 0x3FF0000000000000;
  v5 = 0u;
  v6 = 0u;
  v8 = 0u;
  v9 = 0u;
  v11 = 0u;
  v12 = 0u;
  return LiSolidUtils::getBoundsOfGeometry(this, &v4, a2);
}

uint64_t LiSolidUtils::anyTransparencyInScene(uint64_t this, LiSceneObject *a2)
{
  if (this)
  {
    v2 = this;
    if (v3)
    {
      Alpha = LiMaterial::getAlpha(v3);
      v7 = v6 * (Alpha * v5);
      if (v7 < 1.0 && fabs(v7 + -1.0) >= 0.0000001)
      {
        return 2;
      }
    }

    if (this)
    {
      v8 = this;
      v9 = (*(*this + 136))(this);
      if (v9 < 1)
      {
LABEL_11:
        v14 = (*(*v8 + 248))(v8);
        if (*v14 == 1)
        {
          v15 = v14;
          this = 0;
          v16 = v15[5];
          if (v16 < 1.0 && fabsf(v16 + -1.0) >= 0.00001)
          {
            return 2;
          }
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v10 = v9;
        v11 = 0;
        while (1)
        {
          v12 = (*(*v8 + 144))(v8, v11);
          this = LiSolidUtils::anyTransparencyInScene(v12, v13);
          if (this)
          {
            break;
          }

          v11 = (v11 + 1);
          if (v10 == v11)
          {
            goto LABEL_11;
          }
        }
      }
    }
  }

  return this;
}

void LiSolidUtils::drawRect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 4);
  LODWORD(v12) = *a2;
  *(&v12 + 1) = v6;
  v7 = *(a2 + 12);
  *&v11 = *&v12 + *(a2 + 8);
  *(&v11 + 1) = v6;
  LODWORD(v10) = v11;
  *(&v10 + 1) = v6 + v7;
  LODWORD(v9) = v12;
  *(&v9 + 1) = v6 + v7;
  v8 = *a4;
  LiSolidUtils::drawRect(a1, &v12, &v11, &v10, &v9, a6, &v8);
}

void LiSolidUtils::drawRect(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, void *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  buffers = 0;
  glGenBuffers(1, &buffers);
  if (buffers)
  {
    glBindBuffer(0x8892u, buffers);
    *&v12 = *a2;
    *(&v12 + 1) = *a7;
    data = v12;
    v20 = *a3;
    v21 = 1.0 - *(&v12 + 2);
    v22 = HIDWORD(v12);
    v23 = *a4;
    v24 = 1.0 - *(&v12 + 2);
    v25 = 1.0 - *(&v12 + 3);
    v26 = *a5;
    v27 = DWORD2(v12);
    v28 = 1.0 - *(&v12 + 3);
    glBufferData(0x8892u, 64, &data, 0x88E4u);
  }

  else
  {
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Unable to generate VBO in ", 26);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiSolidRendererUtils.cpp", 73);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ":", 1);
    v16 = MEMORY[0x2666E9B50](v15, 539);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(&data, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&data);
    std::ostream::put();
    std::ostream::flush();
  }
}

void LiSolidUtils::createBumpMapFromHeightMap(void *a1)
{
  v2 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v2);
  (*(*v2 + 120))(v2, 0, *a1);
  HGTextureWrap::SetTextureWrapMode(v2, 3, v3);
  v4 = HGObject::operator new(0x1A0uLL);
  HgcSolidRendererBumpMap::HgcSolidRendererBumpMap(v4);
}

void sub_260025030(_Unwind_Exception *a1)
{
  (*(*v3 + 24))(v3);
  (*(*v2 + 24))(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t LiSolidUtils::createBumpMapFromNormalMap@<X0>(void *a1@<X0>, unsigned int a2@<W1>, HgcNormalMapToBumpMap **a3@<X8>)
{
  v6 = HGObject::operator new(0x1A0uLL);
  HgcNormalMapToBumpMap::HgcNormalMapToBumpMap(v6);
  (*(*v6 + 120))(v6, 0, *a1);
  result = (*(*v6 + 96))(v6, 0, a2, 0.0, 0.0, 0.0);
  *a3 = v6;
  return result;
}

uint64_t LiSolidUtils::createLean1MapFromBumpMap@<X0>(void *a1@<X0>, HgcLean1 **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HgcLean1::HgcLean1(v4);
  result = (*(*v4 + 120))(v4, 0, *a1);
  *a2 = v4;
  return result;
}

uint64_t LiSolidUtils::createLean2MapFromBumpMap@<X0>(void *a1@<X0>, HgcLean2 **a2@<X8>)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HgcLean2::HgcLean2(v4);
  result = (*(*v4 + 120))(v4, 0, *a1);
  *a2 = v4;
  return result;
}

void LiSolidUtils::depthBlur(LiSolidUtils *this, ProGL::GL *a2, const LiSolidDofInfo *a3, unsigned int a4, GLsizei width, GLsizei height)
{
  glViewport(0, 0, width, height);
  glDisable(0xB71u);
  glDisable(0xBE2u);
  PCWorkingColorVector::PCWorkingColorVector(v11);
  {
    ProGL::makeProgramHandle<LiSolidUtils::CirclesOfConfusionProgram>();
  }

  ProGL::UseProgramSentry::UseProgramSentry(v10, this, &LiSolidUtils::depthBlur(ProGL::GL &,LiSolidDofInfo const&,unsigned int,unsigned int,int,int)::circlesHandle);
  ProGL::ProgramHandle::getProgram<LiSolidUtils::CirclesOfConfusionProgram>(&LiSolidUtils::depthBlur(ProGL::GL &,LiSolidDofInfo const&,unsigned int,unsigned int,int,int)::circlesHandle, this);
  ProGL::UseProgramSentry::~UseProgramSentry(v10);
  glBindFramebuffer(0x8D40u, 0);
  v7 = -6;
  v8 = 33989;
  do
  {
    glActiveTexture(v8);
    glBindTexture(0xDE1u, 0);
    --v8;
  }

  while (!__CFADD__(v7++, 1));
  glEnable(0xB71u);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_26002549C(_Unwind_Exception *a1)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(a1);
}

void sub_2600255A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void *ProGL::ProgramHandle::getProgram<LiSolidUtils::CirclesOfConfusionProgram>(os_unfair_lock_s **a1, ProGL::GL *a2)
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

uint64_t LiSolidUtils::getGLRenderer(LiSolidUtils *this, ProGL::GL *a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZN12LiSolidUtils13getGLRendererERN5ProGL2GLE_block_invoke;
  block[3] = &__block_descriptor_tmp_14;
  block[4] = this;
  if (LiSolidUtils::getGLRenderer(ProGL::GL &)::predicate != -1)
  {
    dispatch_once(&LiSolidUtils::getGLRenderer(ProGL::GL &)::predicate, block);
  }

  return LiSolidUtils::getGLRenderer(ProGL::GL &)::renderer;
}

void ___ZN12LiSolidUtils13getGLRendererERN5ProGL2GLE_block_invoke()
{
  String = glGetString(0x1F01u);
  if (String)
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, String);
    v1 = v28;
    v2 = v28;
    v4 = v26;
    v3 = v27;
    if ((v28 & 0x80u) == 0)
    {
      v5 = &v26 + v28;
    }

    else
    {
      v5 = v26 + v27;
    }

    if ((v28 & 0x80u) == 0)
    {
      v6 = &v26;
    }

    else
    {
      v6 = v26;
    }

    if (v6 != v5)
    {
      do
      {
        *v6 = __tolower(*v6);
        ++v6;
      }

      while (v6 != v5);
      v1 = v28;
      v4 = v26;
      v3 = v27;
      v2 = v28;
    }

    if ((v2 & 0x80u) == 0)
    {
      v7 = &v26;
    }

    else
    {
      v7 = v4;
    }

    v8 = v7;
    if ((v2 & 0x80u) == 0)
    {
      v9 = v1;
    }

    else
    {
      v9 = v3;
    }

    v10 = v7 + v9;
    if (v9 > 5)
    {
      v11 = v9;
      v12 = v7;
      do
      {
        v13 = memchr(v12, 110, v11 - 5);
        if (!v13)
        {
          break;
        }

        if (*v13 == 1684633198 && *(v13 + 2) == 24937)
        {
          if (v13 != v10 && v13 - v7 != -1)
          {
            v15 = 2;
            goto LABEL_62;
          }

          break;
        }

        v12 = (v13 + 1);
        v11 = v10 - v12;
      }

      while (v10 - v12 > 5);
    }

    if (v9 >= 5)
    {
      v16 = v9;
      v17 = v7;
      do
      {
        v18 = memchr(v17, 105, v16 - 4);
        if (!v18)
        {
          break;
        }

        if (*v18 == 1702129257 && v18[4] == 108)
        {
          if (v18 != v10 && v18 - v7 != -1)
          {
            v15 = 1;
            goto LABEL_62;
          }

          break;
        }

        v17 = (v18 + 1);
        v16 = v10 - v17;
      }

      while (v10 - v17 >= 5);
    }

    if (v9 >= 3)
    {
      v20 = v9;
      v21 = v7;
      while (1)
      {
        v22 = memchr(v21, 97, v20 - 2);
        if (!v22)
        {
          goto LABEL_52;
        }

        if (*v22 == 28001 && v22[2] == 100)
        {
          break;
        }

        v21 = (v22 + 1);
        v20 = v10 - v21;
        if (v10 - v21 < 3)
        {
          goto LABEL_52;
        }
      }

      if (v22 == v10 || v22 - v7 == -1)
      {
LABEL_52:
        do
        {
          v24 = memchr(v8, 97, v9 - 2);
          if (!v24)
          {
            break;
          }

          if (*v24 == 29793 && v24[2] == 105)
          {
            if (v24 == v10 || v24 - v7 == -1)
            {
              break;
            }

            goto LABEL_61;
          }

          v8 = (v24 + 1);
          v9 = v10 - (v24 + 1);
        }

        while (v9 >= 3);
      }

      else
      {
LABEL_61:
        v15 = 3;
LABEL_62:
        LiSolidUtils::getGLRenderer(ProGL::GL &)::renderer = v15;
      }
    }

    if ((v2 & 0x80) != 0)
    {
      operator delete(v4);
    }
  }
}

void sub_26002597C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiSceneIterator<LiSolid,LiSceneIteratorAlways>::LiSceneIterator(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_28726D948;
  *(a1 + 24) = 0;
  *(a1 + 160) = 0x3FF0000000000000;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 80) = 0x3FF0000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0x3FF0000000000000;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  while (1)
  {
    v3 = *(a1 + 8);
    {
      break;
    }

    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::next(a1);
  }

  return a1;
}

void PCArray<LiSceneIterator<LiSolid,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiSolid,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28726D948;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t PCArray<LiSceneIterator<LiSolid,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiSolid,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28726D948;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

ProGL::Private::VariableBase *ProGL::Uniform<float>::Uniform(ProGL::Private::VariableBase *a1, ProGL::Program *a2, char *a3)
{
  v5 = ProGL::Private::VariableBase::VariableBase(a1, a2);
  *v5 = &unk_28726D980;
  *(v5 + 4) = 0;
  std::string::basic_string[abi:ne200100]<0>(v5 + 24, a3);
  *(a1 + 12) = -1;
  return a1;
}

void ProGL::Uniform<float>::~Uniform(void **a1)
{
  ProGL::Uniform<float>::~Uniform(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t ProGL::Uniform<float>::getString(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "uniform ", 8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "float", 5);
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

void sub_260025E0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void ProGL::Uniform<float>::~Uniform(void **this)
{
  *this = &unk_28726D980;
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  ProGL::Private::VariableBase::~VariableBase(this);
}

void sub_260025EBC()
{

  std::shared_ptr<ProGL::Program>::shared_ptr[abi:ne200100]<LiSolidUtils::CirclesOfConfusionProgram,0>(v0, v1);
}

void LiSolidUtils::CirclesOfConfusionProgram::CirclesOfConfusionProgram(LiSolidUtils::CirclesOfConfusionProgram *this)
{
  ProGL::Program::Program(this);
  *v2 = &unk_28726DA28;
  ProGL::UniformSampler<35678u>::UniformSampler((v2 + 28), this, "zBuffer");
  ProGL::Uniform<float>::Uniform((this + 280), this, "dofNear");
  ProGL::Uniform<float>::Uniform((this + 336), this, "dofFar");
  ProGL::Uniform<float>::Uniform((this + 392), this, "farPlane");
  ProGL::Uniform<float>::Uniform((this + 448), this, "aperture");
  ProGL::Uniform<float>::Uniform((this + 504), this, "maxRadius");
  ProGL::Uniform<PCMatrix44Tmpl<float>>::Uniform((this + 560), this, "invProj");
  HGProgramDescriptor::SetFragmentFunctionName(this, "#version 120\n");
}

void sub_260025FF8(_Unwind_Exception *a1)
{
  ProGL::Uniform<float>::~Uniform(v1 + 63);
  ProGL::Uniform<float>::~Uniform(v1 + 56);
  ProGL::Uniform<float>::~Uniform(v1 + 49);
  ProGL::Uniform<float>::~Uniform(v1 + 42);
  ProGL::Uniform<float>::~Uniform(v1 + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(v1);
  _Unwind_Resume(a1);
}

void LiSolidUtils::CirclesOfConfusionProgram::~CirclesOfConfusionProgram(void **this)
{
  *this = &unk_28726DA28;
  v2 = this + 28;
  ProGL::Uniform<PCMatrix44Tmpl<float>>::~Uniform(this + 70);
  ProGL::Uniform<float>::~Uniform(this + 63);
  ProGL::Uniform<float>::~Uniform(this + 56);
  ProGL::Uniform<float>::~Uniform(this + 49);
  ProGL::Uniform<float>::~Uniform(this + 42);
  ProGL::Uniform<float>::~Uniform(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);

  ProGL::Program::~Program(this);
}

{
  *this = &unk_28726DA28;
  v2 = this + 28;
  ProGL::Uniform<PCMatrix44Tmpl<float>>::~Uniform(this + 70);
  ProGL::Uniform<float>::~Uniform(this + 63);
  ProGL::Uniform<float>::~Uniform(this + 56);
  ProGL::Uniform<float>::~Uniform(this + 49);
  ProGL::Uniform<float>::~Uniform(this + 42);
  ProGL::Uniform<float>::~Uniform(this + 35);
  ProGL::UniformSampler<35678u>::~UniformSampler(v2);
  ProGL::Program::~Program(this);

  JUMPOUT(0x2666E9F00);
}

ProGL::Private::VariableBase *ProGL::Uniform<PCMatrix44Tmpl<float>>::Uniform(ProGL::Private::VariableBase *a1, ProGL::Program *a2, char *a3)
{
  v5 = ProGL::Private::VariableBase::VariableBase(a1, a2);
  *v5 = &unk_28726DA70;
  *(v5 + 19) = 1065353216;
  *(v5 + 14) = 1065353216;
  *(v5 + 9) = 1065353216;
  *(v5 + 4) = 1065353216;
  *(v5 + 28) = 0;
  *(v5 + 20) = 0;
  *(v5 + 5) = 0;
  *(v5 + 6) = 0;
  *(v5 + 68) = 0;
  *(v5 + 60) = 0;
  std::string::basic_string[abi:ne200100]<0>(v5 + 80, a3);
  *(a1 + 26) = -1;
  return a1;
}

void ProGL::Uniform<PCMatrix44Tmpl<float>>::~Uniform(void **a1)
{
  ProGL::Uniform<PCMatrix44Tmpl<float>>::~Uniform(a1);

  JUMPOUT(0x2666E9F00);
}

BOOL ProGL::Uniform<PCMatrix44Tmpl<float>>::prepare(uint64_t a1)
{
  FactoryForSerialization = OZFactoryBase::getFactoryForSerialization(a1);
  v3 = LiImageSource::imageSpace(FactoryForSerialization);
  v4 = (a1 + 80);
  if (*(a1 + 103) < 0)
  {
    v4 = *v4;
  }

  UniformLocation = glGetUniformLocation(v3, v4);
  *(a1 + 104) = UniformLocation;
  return UniformLocation != -1;
}

uint64_t ProGL::Uniform<PCMatrix44Tmpl<float>>::getString(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, "uniform ", 8);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "mat4", 4);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " ", 1);
  v7 = *(a1 + 80);
  v6 = a1 + 80;
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

void sub_260026480(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void ProGL::Uniform<PCMatrix44Tmpl<float>>::~Uniform(void **this)
{
  *this = &unk_28726DA70;
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  ProGL::Private::VariableBase::~VariableBase(this);
}

void sub_26002655C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Program>::shared_ptr[abi:ne200100]<DepthFilterProgram,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<LiSolidUtils::CirclesOfConfusionProgram *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,LiSolidUtils::CirclesOfConfusionProgram>,std::allocator<LiSolidUtils::CirclesOfConfusionProgram>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<LiSolidUtils::CirclesOfConfusionProgram *,std::shared_ptr<ProGL::Program>::__shared_ptr_default_delete<ProGL::Program,LiSolidUtils::CirclesOfConfusionProgram>,std::allocator<LiSolidUtils::CirclesOfConfusionProgram>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_26002664C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::shared_ptr[abi:ne200100]<ProGL::Private::ProgramFactory0<DepthFilterProgram>,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<LiSolidUtils::CirclesOfConfusionProgram> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<LiSolidUtils::CirclesOfConfusionProgram>>,std::allocator<ProGL::Private::ProgramFactory0<LiSolidUtils::CirclesOfConfusionProgram>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<ProGL::Private::ProgramFactory0<LiSolidUtils::CirclesOfConfusionProgram> *,std::shared_ptr<ProGL::Private::ProgramHandleImpl::Factory>::__shared_ptr_default_delete<ProGL::Private::ProgramHandleImpl::Factory,ProGL::Private::ProgramFactory0<LiSolidUtils::CirclesOfConfusionProgram>>,std::allocator<ProGL::Private::ProgramFactory0<LiSolidUtils::CirclesOfConfusionProgram>>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void buildSCNLights(uint64_t a1@<X0>, CGColorSpace *a2@<X1>, CGColorSpace *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  if (*(a1 + 12) >= 1)
  {
    v9 = 0;
    v32 = *MEMORY[0x277CDBB70];
    v31 = *MEMORY[0x277CDBB90];
    v30 = *MEMORY[0x277CDBB80];
    v29 = *MEMORY[0x277CDBB78];
    do
    {
      v10 = *(a1 + 16);
      v11 = objc_alloc_init(MEMORY[0x277CDBAA8]);
      [v11 setLight:objc_alloc_init(MEMORY[0x277CDBA88])];
      v12 = v10 + 944 * v9;
      v13 = *(v12 + 656);
      if (v13 > 1)
      {
        if (v13 == 2)
        {
          [objc_msgSend(v11 "light")];
          v16 = 406250.0;
LABEL_14:
          PCMatrix44Tmpl<double>::operator*(a4, (v12 + 760), &v35);
          for (i = 0; i != 4; ++i)
          {
            *(&v36 + i) = vcvt_hight_f32_f64(vcvt_f32_f64(*(&v35.var0.var0 + 2 * i)), *&v35.var0.var1[4 * i + 1]);
          }

          *v34 = v36;
          *&v34[1] = v39[1];
          *&v34[2] = v39[5];
          *&v34[3] = v39[9];
          *&v34[4] = v37;
          *&v34[5] = v39[2];
          *&v34[6] = v39[6];
          *&v34[7] = v39[10];
          *&v34[8] = v38;
          *&v34[9] = v39[3];
          *&v34[10] = v39[7];
          *&v34[11] = v39[11];
          *&v34[12] = v39[0];
          *&v34[13] = v39[4];
          *&v34[14] = v39[8];
          *&v34[15] = v39[12];
          [v11 setTransform:v34];
          PCColor::PCColor(&v35, *(v12 + 608), *(v12 + 612), *(v12 + 616), *(v12 + 620), a2);
          PCColor::getRGBA(&v35, &v36, &v37, &v38, v39, a3);
          [objc_msgSend(v11 "light")];
          PCCFRef<CGColorSpace *>::~PCCFRef(&v35.var1._obj);
          [objc_msgSend(v11 "light")];
          v19 = *(a5 + 8);
          v18 = *(a5 + 16);
          if (v19 >= v18)
          {
            v21 = (v19 - *a5) >> 3;
            if ((v21 + 1) >> 61)
            {
              std::vector<double>::__throw_length_error[abi:ne200100]();
            }

            v22 = v18 - *a5;
            v23 = v22 >> 2;
            if (v22 >> 2 <= (v21 + 1))
            {
              v23 = v21 + 1;
            }

            if (v22 >= 0x7FFFFFFFFFFFFFF8)
            {
              v24 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v24 = v23;
            }

            if (v24)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<objc_class * {__strong}>>(a5, v24);
            }

            v25 = (8 * v21);
            *v25 = v11;
            v20 = 8 * v21 + 8;
            v26 = *(a5 + 8) - *a5;
            v27 = v25 - v26;
            memcpy(v25 - v26, *a5, v26);
            v28 = *a5;
            *a5 = v27;
            *(a5 + 8) = v20;
            *(a5 + 16) = 0;
            if (v28)
            {
              operator delete(v28);
            }
          }

          else
          {
            *v19 = v11;
            v20 = (v19 + 1);
          }

          *(a5 + 8) = v20;
          goto LABEL_29;
        }

        if (v13 == 3)
        {
          [objc_msgSend(v11 "light")];
          [objc_msgSend(v11 "light")];
          [objc_msgSend(v11 "light")];
          v16 = 406250.0;
          goto LABEL_14;
        }
      }

      else
      {
        if (!v13)
        {
          v14 = [v11 light];
          v15 = v32;
          goto LABEL_12;
        }

        if (v13 == 1)
        {
          v14 = [v11 light];
          v15 = v29;
LABEL_12:
          [v14 setType:v15];
          v16 = 1000.0;
          goto LABEL_14;
        }
      }

      fwrite("unknown light type\n", 0x13uLL, 1uLL, *MEMORY[0x277D85DF8]);

LABEL_29:
      ++v9;
    }

    while (v9 < *(a1 + 12));
  }
}

void sub_260026AC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2600270D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, HGArrayData *a14, uint64_t a15, HGArrayData *a16, uint64_t a17, HGArrayData *a18)
{
  if (a16)
  {
    HGArrayData::Release(a16);
  }

  if (a18)
  {
    HGArrayData::Release(a18);
  }

  _Unwind_Resume(exception_object);
}

unint64_t LiHeEdge::GetDOD(LiHeEdge *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v6 = &HGRectNull;
LABEL_5:
    LODWORD(v4) = *v6;
    v5 = *(v6 + 1);
    return v4 | (v5 << 32);
  }

  if (*(this + 104) <= 2)
  {
    v6 = &HGRectInfinite;
    goto LABEL_5;
  }

  v10 = HLine::dilate(*(this + 51), *(*(*(this + 53) + 16) + *(this + 108)));
  LODWORD(v14) = *(this + 104);
  if (v14 < 1)
  {
    v28 = 0.0;
    v27 = 0.0;
    v19 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v15 = v11;
    v4 = HIDWORD(v10);
    v5 = HIDWORD(v11);
    v16 = 0.0;
    v17 = 1;
    v18 = 16;
    v19 = 0.0;
    v20 = 0.0;
    v21 = 0.0;
    v22 = HIDWORD(v10);
    v23 = HIDWORD(v11);
    v24 = v11;
    do
    {
      v12 = v4;
      v13 = v5;
      v25 = v15;
      if (v17 != v14)
      {
        v12 = HLine::dilate((*(this + 51) + v18), *(*(*(this + 53) + 16) + *(*(this + 53) + 4) * v17 + *(this + 108))) >> 32;
        v13 = HIDWORD(v25);
      }

      if (vabds_f32(*&v22 * *&v25, *&v24 * *&v12) < 0.0000001)
      {
        v25 = v24;
        v13 = v23;
        v12 = v22;
        v28 = v21;
        v27 = v20;
      }

      else
      {
        v26 = (*&v22 * *&v25) - (*&v24 * *&v12);
        v27 = ((*&v24 * *&v13) - (*&v23 * *&v25)) / v26;
        v28 = ((*&v23 * *&v12) - (*&v22 * *&v13)) / v26;
        if (v17 == 1)
        {
          v19 = ((*&v23 * *&v12) - (*&v22 * *&v13)) / v26;
          v16 = ((*&v24 * *&v13) - (*&v23 * *&v25)) / v26;
        }

        else
        {
          v16 = fmaxf(v27, v16);
          v27 = fminf(v27, v20);
          v19 = fmaxf(v28, v19);
          v28 = fminf(v28, v21);
        }
      }

      v14 = *(this + 104);
      v18 += 16;
      v20 = v27;
      v21 = v28;
      v22 = v12;
      v23 = v13;
      v24 = v25;
    }

    while (v17++ < v14);
  }

  LODWORD(v4) = vcvtms_s32_f32(v27);
  LODWORD(v5) = vcvtms_s32_f32(v28);
  LODWORD(v12) = vcvtps_s32_f32(v16);
  LODWORD(v13) = vcvtps_s32_f32(v19);
  v30 = v12 | (v13 << 32);
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v31 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v32 = HGRectGrow(v4 | (v5 << 32), v30, v31);
    v5 = HIDWORD(v32);
    LODWORD(v4) = v32;
  }

  return v4 | (v5 << 32);
}

unint64_t HLine::dilate(HLine *this, float a2)
{
  if (a2 == 0.0)
  {
    v2 = *(this + 1);
  }

  else
  {
    v2 = *(this + 1);
    v3 = *(this + 2);
    if (fabsf(v3) >= 0.0000001)
    {
      if (fabsf(v2) >= 0.0000001)
      {
        v4 = -1.0;
        if (v3 >= 0.0)
        {
          v4 = 1.0;
        }

        v2 = -((-v2 / v3) * v4);
      }

      else
      {
        v2 = 0.0;
      }
    }
  }

  return LODWORD(v2) << 32;
}

uint64_t LiHeEdge::GetROI(LiHeEdge *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v4 = *&a4.var0;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v4, v5, v6);
  }

  return v4;
}

void LiHeEdge::LiHeEdge(LiHeEdge *this)
{
  HGNode3D::HGNode3D(this);
  *v1 = &unk_28726DBC8;
  HGArray<float,(HGFormat)7>::HGArray((v1 + 53));
}

void sub_2600275A8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 55);
  if (v3)
  {
    HGArrayData::Release(v3);
  }

  v4 = *(v1 + 53);
  if (v4)
  {
    HGArrayData::Release(v4);
  }

  HGMipmapLevel::~HGMipmapLevel(v1);
  _Unwind_Resume(a1);
}

void LiHeEdge::~LiHeEdge(LiHeEdge *this)
{
  *this = &unk_28726DBC8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C80451B5BE8);
  }

  *(this + 51) = 0;
  v3 = *(this + 57);
  if (v3)
  {
    MEMORY[0x2666E9F00](v3, 0x1000C40E0EAB150);
  }

  v4 = *(this + 55);
  if (v4)
  {
    HGArrayData::Release(v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    HGArrayData::Release(v5);
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  LiHeEdge::~LiHeEdge(this);

  HGObject::operator delete(v1);
}

void LiHeEdge::setLines(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    v2 = *(*a2 + 8);
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 416) = v2;
  v3 = *(a1 + 408);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C80451B5BE8);
  }

  operator new[]();
}

float HLine::setLine(uint64_t a1, float a2, float a3, float a4)
{
  if (a2 > 0.0 || a3 > 0.0)
  {
    if (a2 <= 0.0 || a3 >= 0.0)
    {
      if (a3 < 0.0 || a2 < 0.0)
      {
        v4 = 2;
      }

      else
      {
        v4 = 3;
      }
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  v6 = 1.0 / sqrtf((a2 * a2) + (a3 * a3));
  *(a1 + 4) = a2 * v6;
  *(a1 + 8) = a3 * v6;
  result = a4 * v6;
  *(a1 + 12) = a4 * v6;
  return result;
}

uint64_t LiHeEdge::setThickness(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 424);
  v5 = *a2;
  if (result != *a2)
  {
    if (result)
    {
      result = HGArrayData::Release(result);
      v5 = *a2;
    }

    *(a1 + 424) = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }
  }

  *(a1 + 432) = *(a2 + 8);
  return result;
}

uint64_t LiHeEdge::setFilter(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 440);
  v5 = *a2;
  if (result != *a2)
  {
    if (result)
    {
      result = HGArrayData::Release(result);
      v5 = *a2;
    }

    *(a1 + 440) = v5;
    if (v5)
    {
      atomic_fetch_add(v5, 1u);
    }
  }

  *(a1 + 448) = *(a2 + 8);
  return result;
}

uint64_t LiHeEdge::SetParameter(LiHeEdge *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 57);
  if (v8->n128_f32[0] == a3.n128_f32[0] && v8->n128_f32[1] == a3.n128_f32[0] && v8->n128_f32[2] == a3.n128_f32[0] && v8->n128_f32[3] == a3.n128_f32[0])
  {
    return 0;
  }

  v9 = vdupq_lane_s32(a3.n128_u64[0], 0);
  a3.n128_f32[1] = a4;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  *v8 = v9;
  v8[1] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float LiHeEdge::GetParameter(LiHeEdge *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 57);
    *a3 = v3[4];
    a3[1] = v3[5];
    a3[2] = v3[6];
    result = v3[7];
    a3[3] = result;
  }

  return result;
}

uint64_t LiHeEdgeMix::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  v11 = HGRenderer::GetInput(a2, this, 1u);
  v12 = HGRenderer::GetDOD(a2, v11);
  v14 = v13;
  v15 = HGRenderer::GetInput(a2, this, 2u);
  v16 = HGRenderer::GetDOD(a2, v15);
  v18 = HGRectIntersection(DOD, v10, v16, v17);
  return HGRectUnion(v12, v14, v18, v19);
}

uint64_t LiHeEdgeMix::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 2)
  {
    v8 = a2;
    v9 = 0;
LABEL_6:
    Input = HGRenderer::GetInput(v8, this, v9);
    DOD = HGRenderer::GetDOD(a2, Input);
    return HGRectIntersection(v5, v4, DOD, v12);
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return 0;
    }

    v8 = a2;
    v9 = 2;
    goto LABEL_6;
  }

  return v5;
}

uint64_t LiHeEdgeMix::BindTexture(LiHeEdgeMix *this, HGHandler *a2, uint64_t a3)
{
  HGHandler::TexCoord(a2, a3, 0, 0, 0);
  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 48))(a2, 1, 1);
  if (a3 <= 1)
  {
    (*(*a2 + 56))(a2, 0);
  }

  return 0;
}

void LiHeEdgeMix::~LiHeEdgeMix(LiHeEdgeMix *this)
{
  LiHeEdgeMixShader::~LiHeEdgeMixShader(this);

  HGObject::operator delete(v1);
}

float64x2_t project@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, float64x2_t *a5@<X8>)
{
  v7 = *(a1 + 16);
  v22 = *a1;
  *&v23 = v7;
  *(&v23 + 1) = 0x3FF0000000000000;
  PCMatrix44Tmpl<double>::operator*(a3, a2, v19);
  v20 = 0u;
  v21 = 0u;
  PCMatrix44Tmpl<double>::transform<double>(v19, v22.f64, v20.f64);
  v22 = v20;
  v23 = v21;
  v8 = (*&v21 / *(&v21 + 1) + 1.0) * 0.5;
  v9 = a4[1];
  v10.i64[0] = *a4;
  v10.i64[1] = HIDWORD(*a4);
  v11 = vcvtq_f64_s64(v10);
  v10.i64[0] = v9;
  v10.i64[1] = SHIDWORD(v9);
  __asm
  {
    FMOV            V4.2D, #1.0
    FMOV            V3.2D, #0.5
  }

  result = vaddq_f64(vmulq_f64(vmulq_f64(vaddq_f64(vdivq_f64(v20, vdupq_lane_s64(*(&v21 + 1), 0)), _Q4), vcvtq_f64_s64(v10)), _Q3), v11);
  *a5 = result;
  a5[1].f64[0] = v8;
  return result;
}

void LiSceneDrawer::LiSceneDrawer(LiSceneDrawer *this)
{
  *(this + 11) = 0x3FF0000000000000;
  *(this + 6) = 0x3FF0000000000000;
  *this = &unk_28726E0B8;
  *(this + 1) = 0x3FF0000000000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 22) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 8) = _Q1;
  *(this + 9) = 0u;
  v7 = _Q1;
  *(this + 10) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 48) = 0x3FF0000000000000;
  *(this + 43) = 0x3FF0000000000000;
  *(this + 38) = 0x3FF0000000000000;
  *(this + 16) = _Q1;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 444) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  PCWorkingColorVector::PCWorkingColorVector((this + 448));
  *(this + 116) = 1065353216;
  *(this + 234) = 257;
  *(this + 470) = 0;
  *(this + 118) = 0;
  *(this + 475) = 0;
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 60) = -1;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 92) = 0x3FF0000000000000;
  *(this + 87) = 0x3FF0000000000000;
  *(this + 82) = 0x3FF0000000000000;
  *(this + 38) = v7;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 744) = 0u;
  *(this + 95) = &unk_2871F25A8;
  *(this + 48) = 0u;
  *(this + 784) = 0;
  *(this + 50) = 0u;
  *(this + 99) = this + 800;
  *(this + 824) = 0u;
  *(this + 102) = this + 824;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 112) = 0;
  PCSharedCount::PCSharedCount(this + 113);
  *(this + 114) = 0;
  PCSharedCount::PCSharedCount(this + 115);
}

void sub_260027EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount *a12)
{
  PCSharedCount::~PCSharedCount(v12 + 113);
  a12 = v12 + 109;
  std::vector<LiSceneDrawer::MaterialInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  var0 = v12[106].var0;
  if (var0)
  {
    v12[107].var0 = var0;
    operator delete(var0);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v12[102], *v15);
  std::__tree<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::__map_value_compare<PCPtr<ProShade::Program>,std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::less<PCPtr<ProShade::Program>>,true>,std::allocator<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>>>::destroy(&v12[99], *v14);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v13);
  _Unwind_Resume(a1);
}

void LiSceneDrawer::LiSceneDrawer(LiSceneDrawer *this, const LiSceneDrawer *a2)
{
  *(this + 11) = 0x3FF0000000000000;
  *(this + 6) = 0x3FF0000000000000;
  *this = &unk_28726E0B8;
  *(this + 1) = 0x3FF0000000000000;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 22) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 8) = _Q1;
  *(this + 9) = 0u;
  v17 = _Q1;
  *(this + 10) = 0u;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 48) = 0x3FF0000000000000;
  *(this + 43) = 0x3FF0000000000000;
  *(this + 38) = 0x3FF0000000000000;
  *(this + 16) = _Q1;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 444) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  PCWorkingColorVector::PCWorkingColorVector((this + 448));
  *(this + 116) = 1065353216;
  *(this + 234) = 257;
  *(this + 470) = 0;
  *(this + 118) = 0;
  *(this + 475) = 0;
  *(this + 71) = 0x3FF0000000000000;
  *(this + 66) = 0x3FF0000000000000;
  *(this + 60) = -1;
  *(this + 61) = 0x3FF0000000000000;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 92) = 0x3FF0000000000000;
  *(this + 87) = 0x3FF0000000000000;
  *(this + 82) = 0x3FF0000000000000;
  *(this + 38) = v17;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 664) = 0u;
  *(this + 680) = 0u;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 744) = 0u;
  *(this + 95) = &unk_2871F25A8;
  *(this + 48) = 0u;
  *(this + 784) = 0;
  *(this + 50) = 0u;
  *(this + 99) = this + 800;
  *(this + 824) = 0u;
  *(this + 102) = this + 824;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 112) = 0;
  PCSharedCount::PCSharedCount(this + 113);
  *(this + 114) = 0;
  PCSharedCount::PCSharedCount(this + 115);
  *(this + 118) = *(a2 + 118);
  *(this + 476) = *(a2 + 476);
  *(this + 477) = *(a2 + 477);
  if (a2 == this)
  {
    *(this + 105) = *(a2 + 105);
  }

  else
  {
    v9 = 0;
    v10 = this + 488;
    v11 = this + 616;
    v12 = a2 + 488;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *&v10[i] = *&v12[i];
      }

      ++v9;
      v10 += 32;
      v12 += 32;
    }

    while (v9 != 4);
    *(this + 105) = *(a2 + 105);
    if (a2 != this)
    {
      v14 = 0;
      v15 = a2 + 616;
      do
      {
        for (j = 0; j != 32; j += 8)
        {
          *&v11[j] = *&v15[j];
        }

        ++v14;
        v11 += 32;
        v15 += 32;
      }

      while (v14 != 4);
    }
  }

  *(this + 744) = *(a2 + 744);
  *(this + 60) = *(a2 + 60);
}

void sub_2600281CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount *a12)
{
  PCSharedCount::~PCSharedCount(v12 + 113);
  a12 = v12 + 109;
  std::vector<LiSceneDrawer::MaterialInfo>::__destroy_vector::operator()[abi:ne200100](&a12);
  var0 = v12[106].var0;
  if (var0)
  {
    v12[107].var0 = var0;
    operator delete(var0);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v12[102], *v15);
  std::__tree<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::__map_value_compare<PCPtr<ProShade::Program>,std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::less<PCPtr<ProShade::Program>>,true>,std::allocator<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>>>::destroy(&v12[99], *v14);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v13);
  _Unwind_Resume(a1);
}

void LiSceneDrawer::~LiSceneDrawer(LiSceneDrawer *this)
{
  *this = &unk_28726E0B8;
  PCSharedCount::~PCSharedCount(this + 115);
  PCSharedCount::~PCSharedCount(this + 113);
  v3 = (this + 872);
  std::vector<LiSceneDrawer::MaterialInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 106);
  if (v2)
  {
    *(this + 107) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 816, *(this + 103));
  std::__tree<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::__map_value_compare<PCPtr<ProShade::Program>,std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::less<PCPtr<ProShade::Program>>,true>,std::allocator<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>>>::destroy(this + 792, *(this + 100));
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(this + 760);
}

{
  LiSceneDrawer::~LiSceneDrawer(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t LiSceneDrawer::setupLight(LiSceneDrawer *this, const LiLight *a2)
{
  CurrentContextUniformData = ProShade::UniformData::getCurrentContextUniformData(this);
  v5 = LiLightInfo::get(a2, v4);
  v18[0] = *(a2 + 688);
  ProShade::UniformData::set<double>(CurrentContextUniformData, v5 + 128, v18);
  v18[0] = *(a2 + 600);
  ProShade::UniformData::set<double>(CurrentContextUniformData, v5 + 712, v18);
  ProShade::UniformData::set<PCVector3<double>>(CurrentContextUniformData, v5 + 744, a2 + 576);
  *&v18[0].var0 = xmmword_2603427D0;
  ProShade::UniformData::set<PCVector4<float>>(CurrentContextUniformData, v5 + 64, v18);
  *&v18[0].var0 = xmmword_2603427D0;
  ProShade::UniformData::set<PCVector4<float>>(CurrentContextUniformData, v5 + 32, v18);
  v21 = vcvt_hight_f32_f64(vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*(a2 + 608)), *(a2 + 81))), vmulq_n_f64(vcvt_hight_f64_f32(*(a2 + 38)), *(a2 + 81)));
  v6 = *(a2 + 164);
  if (v6 <= 1)
  {
    if (!v6)
    {
      return ProShade::UniformData::set<PCVector4<float>>(CurrentContextUniformData, v5 + 32, &v21);
    }

    if (v6 == 1)
    {
      ProShade::UniformData::set<PCVector4<float>>(CurrentContextUniformData, v5 + 64, &v21);
      v7 = *(a2 + 80);
      *&v18[0].var0 = *(a2 + 39);
      v19 = v7;
      v20 = 0;
      return ProShade::UniformData::set<PCVector4<double>>(CurrentContextUniformData, v5, v18);
    }

    goto LABEL_14;
  }

  if (v6 == 2)
  {
    ProShade::UniformData::set<PCVector4<float>>(CurrentContextUniformData, v5 + 64, &v21);
    v15 = *(a2 + 85);
    *&v18[0].var0 = *(a2 + 664);
    v19 = v15;
    v20 = 0x3FF0000000000000;
    return ProShade::UniformData::set<PCVector4<double>>(CurrentContextUniformData, v5, v18);
  }

  if (v6 != 3)
  {
LABEL_14:
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(v18, "not implemented yet");
    PCString::PCString(&v17, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiSceneDrawer.cpp");
    PCException::PCException(exception, v18, &v17, 204);
    *exception = &unk_2871F6178;
  }

  ProShade::UniformData::set<PCVector4<float>>(CurrentContextUniformData, v5 + 64, &v21);
  v8 = *(a2 + 85);
  *&v18[0].var0 = *(a2 + 664);
  v19 = v8;
  v20 = 0x3FF0000000000000;
  ProShade::UniformData::set<PCVector4<double>>(CurrentContextUniformData, v5, v18);
  v18[0].var0 = COERCE__CFSTRING_(cos(*(a2 + 87)));
  ProShade::UniformData::set<double>(CurrentContextUniformData, v5 + 584, v18);
  v18[0].var0 = COERCE__CFSTRING_(cos(*(a2 + 88) + *(a2 + 87)));
  ProShade::UniformData::set<double>(CurrentContextUniformData, v5 + 616, v18);
  v18[0] = *(a2 + 712);
  ProShade::UniformData::set<double>(CurrentContextUniformData, v5 + 680, v18);
  v9 = *(a2 + 80);
  v10 = v9 * v9;
  v11 = -v9;
  v12 = *(a2 + 39);
  v13 = sqrt(vaddvq_f64(vmulq_f64(v12, v12)) + v10);
  if (fabs(v13) < 0.000000100000001)
  {
    v13 = 1.0;
  }

  *&v18[0].var0 = vdivq_f64(vnegq_f64(v12), vdupq_lane_s64(*&v13, 0));
  v19 = v11 / v13;
  return ProShade::UniformData::set<PCVector3<double>>(CurrentContextUniformData, v5 + 648, v18);
}

void sub_260028600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCString a12, PCString a13)
{
  PCString::~PCString(&a12);
  PCString::~PCString(&a13);
  if (v14)
  {
    __cxa_free_exception(v13);
  }

  _Unwind_Resume(a1);
}

uint64_t ProShade::UniformData::set<double>(ProShade::UniformData *a1, uint64_t a2, uint64_t *a3)
{
  v8[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v8);
  v7 = *a3;
  ProShade::Value::set(v8, 3, 1, &v7);
  return ProShade::UniformData::set(a1, *(a2 + 16), v8);
}

uint64_t ProShade::UniformData::set<PCVector3<double>>(ProShade::UniformData *a1, uint64_t a2, const void *a3)
{
  v7[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v7);
  ProShade::Value::set(v7, 3, 3, a3);
  return ProShade::UniformData::set(a1, *(a2 + 16), v7);
}

void LiSceneDrawer::setupLights(LiSceneDrawer *this, LiSceneObject *a2, LiLightSet *a3)
{
  v6 = ProGL::GL::GL(v24);
  if ((*(this + 476) & 1) == 0)
  {
    v7 = *(a3 + 3);
    if (v7 >= 1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (i >= *(a3 + 3))
        {
          PCArray_base::badIndex(v6);
        }

        v6 = LiSceneDrawer::setupLight(v6, (*(a3 + 2) + 944 * i));
      }
    }

    LiSceneIterator<LiLight,LiSceneIteratorShineOut>::LiSceneIterator(v14, a2);
    v9 = 8;
    do
    {
      if (!v15)
      {
        break;
      }

      LiLight::LiLight(v13, v15);
      v11[4] = v20;
      v11[5] = v21;
      v11[6] = v22;
      v11[7] = v23;
      v11[0] = v16;
      v11[1] = v17;
      v11[2] = v18;
      v11[3] = v19;
      PCMatrix44Tmpl<double>::operator*(this + 488, v11, v12);
      LiLight::transform(v13, v12);
      v10 = LiLightSet::add(a3, v13);
      LiSceneDrawer::setupLight(v10, v13);
      LiSceneIterator<LiLight,LiSceneIteratorShineOut>::operator++(v14);
      LiLight::~LiLight(v13);
      --v9;
    }

    while (v9);
    LiSceneIterator<LiLight,LiSceneIteratorShineOut>::~LiSceneIterator(v14);
  }

  ProGL::GL::~GL(v24);
}

uint64_t LiSceneIterator<LiLight,LiSceneIteratorShineOut>::operator++(uint64_t a1)
{
  if (*(a1 + 8))
  {
    do
    {
      LiSceneIterator<LiLight,LiSceneIteratorShineOut>::next(a1);
      v2 = *(a1 + 8);
    }
  }

  return a1;
}

uint64_t LiSceneIterator<LiLight,LiSceneIteratorShineOut>::~LiSceneIterator(uint64_t a1)
{
  v2 = a1 + 16;
  *(a1 + 16) = &unk_28726E840;
  if (*(a1 + 24) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(a1 + 24);
  }

  PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::resize(v2, 0, v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

void LiSceneDrawer::beginRender(_BYTE *a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5, uint64_t *a6, uint64_t a7)
{
  v24 = v25;
  v25[0] = 0;
  v25[1] = 0;
  memset(v26, 0, sizeof(v26));
  v27 = *a6;
  a1[928] = 0;
  (*(*a1 + 16))(a1, a2, a3, a4, a5, a7, &v24);
  if (v27 == 1)
  {
    LiContext::LiContext(v15);
    v17 = a1[476];
    LiClipSet::operator=(v16, a3);
    v16[9] = *a5;
    LiContext::setMaterialFilters(v15, a7);
    v12 = a4[3];
    v20 = a4[2];
    v21 = v12;
    v13 = a4[5];
    v22 = a4[4];
    v23 = v13;
    v14 = a4[1];
    v18 = *a4;
    v19 = v14;
    LiSceneDrawer::render_zsort(a1, v15, &v24);
    LiContext::~LiContext(v15);
  }

  v15[0] = v26;
  std::vector<LiLightSet>::__destroy_vector::operator()[abi:ne200100](v15);
  std::__tree<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::__map_value_compare<double,std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::less<double>,true>,std::allocator<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>>>::destroy(&v24, v25[0]);
}

void LiContext::setMaterialFilters(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (*(a1 + 528) < v4)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = *(a1 + 528);
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(a1 + 520, v4, v5);
  if (*(a2 + 12) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (*(a2 + 16) + v6);
      v9 = (*(a1 + 536) + v6);
      *v9 = v8->var0;
      PCSharedCount::PCSharedCount(&v10, v8 + 1);
      PCSharedCount::operator=(v9 + 1, &v10);
      PCSharedCount::~PCSharedCount(&v10);
      ++v7;
      v6 += 16;
    }

    while (v7 < *(a2 + 12));
  }
}

void LiSceneDrawer::render_zsort(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = a3;
    v4 = ProGL::GL::GL(v86);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZL31should_do_INTEL_6000_workaroundRN5ProGL2GLE_block_invoke;
    block[3] = &__block_descriptor_tmp_30;
    block[4] = v86;
    if (should_do_INTEL_6000_workaround(ProGL::GL &)::predicate != -1)
    {
      dispatch_once(&should_do_INTEL_6000_workaround(ProGL::GL &)::predicate, block);
    }

    v5 = should_do_INTEL_6000_workaround(ProGL::GL &)::isINTEL6000;
    CurrentContextUniformData = ProShade::UniformData::getCurrentContextUniformData(v4);
    LiFBOCompositor::LiFBOCompositor(block, *(v3 + 52));
    v83 = 0uLL;
    __asm { FMOV            V0.2D, #-1.0 }

    v67 = _Q0;
    v84 = _Q0;
    v82[0] = 0;
    v82[1] = 0;
    v81 = v82;
    v71 = v5 ^ 1;
    v11 = (v3 + 8);
    v66 = (v3 + 8);
    if (v3 + 8 == *v3)
    {
      v12 = a2;
    }

    else
    {
      v12 = a2;
      do
      {
        v13 = *v11;
        v14 = *v11;
        v15 = v11;
        if (*v11)
        {
          do
          {
            v16 = v14;
            v14 = *(v14 + 8);
          }

          while (v14);
        }

        else
        {
          do
          {
            v16 = v15[2];
            _ZF = *v16 == v15;
            v15 = v16;
          }

          while (_ZF);
        }

        v17 = *(v16 + 32);
        v76.f64[0] = v17;
        v18 = v13;
        v19 = v11;
        if (v13)
        {
          do
          {
            v20 = v18;
            v18 = *(v18 + 8);
          }

          while (v18);
        }

        else
        {
          do
          {
            v20 = v19[2];
            _ZF = *v20 == v19;
            v19 = v20;
          }

          while (_ZF);
        }

        v21 = v11;
        if (v13)
        {
          do
          {
            v22 = v13;
            v13 = *(v13 + 8);
          }

          while (v13);
        }

        else
        {
          do
          {
            v22 = v21[2];
            _ZF = *v22 == v21;
            v21 = v22;
          }

          while (_ZF);
        }

        v23 = *(v22 + 584);
        v24 = v82[0];
        if (!v82[0])
        {
          goto LABEL_25;
        }

        v25 = v82;
        do
        {
          v26 = v24[4];
          if (v26 >= v17)
          {
            v25 = v24;
          }

          v24 = *&v24[v26 < v17];
        }

        while (v24);
        if (v25 == v82 || v17 < v25[4])
        {
LABEL_25:
          v73[0].var0 = &v76;
          *(std::__tree<std::__value_type<double,PCRect<double>>,std::__map_value_compare<double,std::__value_type<double,PCRect<double>>,std::less<double>,true>,std::allocator<std::__value_type<double,PCRect<double>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&v81, v76.f64) + 7) = v67;
        }

        v73[0].var0 = &v76;
        v27 = std::__tree<std::__value_type<double,PCRect<double>>,std::__map_value_compare<double,std::__value_type<double,PCRect<double>>,std::less<double>,true>,std::allocator<std::__value_type<double,PCRect<double>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&v81, v76.f64);
        PCRect<double>::operator|=((v27 + 5), (v20 + 552));
        PCRect<double>::operator|=(&v83, (v20 + 552));
        v28 = *v11;
        if (*v11)
        {
          do
          {
            v29 = v28;
            v28 = v28[1];
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v11[2];
            _ZF = *v29 == v11;
            v11 = v29;
          }

          while (_ZF);
        }

        v71 &= v23 ^ 1;
        v11 = v29;
      }

      while (v29 != *v3);
    }

    v30 = 1;
    v31 = (v3 + 8);
    do
    {
      v72 = v30;
      LiFBOCompositor::beginDrawToFBO(block);
      v32 = *v31;
      v33 = v31;
      if (*v31)
      {
        do
        {
          v34 = v32;
          v32 = *(v32 + 8);
        }

        while (v32);
      }

      else
      {
        do
        {
          v34 = v33[2];
          _ZF = *v34 == v33;
          v33 = v34;
        }

        while (_ZF);
      }

      v80 = *(v34 + 32);
      v78 = 0;
      PCSharedCount::PCSharedCount(&v79);
      PCPtr<LiImageSource>::reset(&v78);
      v76 = 0uLL;
      v77 = v67;
      if (v71)
      {
        glEnable(0xC11u);
        glScissor(v83.f64[0], v83.f64[1], *&v84, *(&v84 + 1));
      }

      if (v31 != *v3)
      {
        v35 = -1;
        v36 = v66;
        do
        {
          v37 = *v36;
          v38 = *v36;
          v39 = v36;
          if (*v36)
          {
            do
            {
              v40 = v38;
              v38 = *(v38 + 8);
            }

            while (v38);
          }

          else
          {
            do
            {
              v40 = v39[2];
              _ZF = *v40 == v39;
              v39 = v40;
            }

            while (_ZF);
          }

          v75 = *(v40 + 32);
          v41 = v36;
          if (v37)
          {
            do
            {
              v42 = v37;
              v37 = *(v37 + 8);
            }

            while (v37);
          }

          else
          {
            do
            {
              v42 = v41[2];
              _ZF = *v42 == v41;
              v41 = v42;
            }

            while (_ZF);
          }

          v43 = *(v42 + 528);
          if (!v43)
          {
            throw_PCNullPointerException(1);
          }

          Alpha = LiMaterial::getAlpha(v43);
          if ((v72 ^ (v46 * (Alpha * v45) < 1.0)))
          {
            if (v75 < v80)
            {
              v87 = &v75;
              v47 = std::__tree<std::__value_type<double,PCRect<double>>,std::__map_value_compare<double,std::__value_type<double,PCRect<double>>,std::less<double>,true>,std::allocator<std::__value_type<double,PCRect<double>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&v81, &v75);
              v48 = *(v47 + 7);
              *&v73[0].var0 = *(v47 + 5);
              v74 = v48;
              v87 = &v80;
              v49 = std::__tree<std::__value_type<double,PCRect<double>>,std::__map_value_compare<double,std::__value_type<double,PCRect<double>>,std::less<double>,true>,std::allocator<std::__value_type<double,PCRect<double>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&v81, &v80);
              PCRect<double>::operator|=(&v76, (v49 + 5));
              v80 = v75;
              if ((v72 & 1) == 0 && PCRect<double>::overlaps(v73, v76.f64))
              {
                if (v71)
                {
                  glEnable(0xC11u);
                  glScissor(v76.f64[0], v76.f64[1], *&v77, *(&v77 + 1));
                }

                LiFBOCompositor::endDrawToFBO(block);
                if (v71)
                {
                  glDisable(0xC11u);
                }

                v77 = v67;
                LiFBOCompositor::beginDrawToFBO(block);
              }
            }

            v50 = *(v42 + 512);
            if (!v50)
            {
              throw_PCNullPointerException(1);
            }

            if (ProShade::ProgramBase::id(v50))
            {
              LiGL::useProgram((v12 + 592), *(v42 + 512));
              v51 = *(v42 + 512);
              if (!v51)
              {
                throw_PCNullPointerException(1);
              }

              UniformWorkspace = ProShade::Program::getUniformWorkspace(v51);
              v53 = UniformWorkspace;
              if (*(v42 + 528) != v78)
              {
                ProGL::GL::GL(v73);
                should_do_NVIDIA_gpureset_workaround(v73);
                ProGL::GL::~GL(v73);
                v54 = *(v42 + 528);
                if (!v54)
                {
                  throw_PCNullPointerException(1);
                }

                LiMaterial::setUniforms(v54, *(a1 + 840));
                v78 = *(v42 + 528);
                PCSharedCount::PCSharedCount(v73, (v42 + 536));
                PCSharedCount::operator=(&v79, v73);
                PCSharedCount::~PCSharedCount(v73);
              }

              v55 = *(v42 + 544);
              if (v35 != v55)
              {
                v56 = v3;
                v57 = *(v3 + 24) + 32 * v55;
                LODWORD(v58) = *(v57 + 12);
                if (v58)
                {
                  v59 = 0;
                  v60 = 0;
                  do
                  {
                    if ((v60 & 0x80000000) != 0 || v58 <= v60)
                    {
                      PCArray_base::badIndex(UniformWorkspace);
                    }

                    UniformWorkspace = LiSceneDrawer::setupLight(UniformWorkspace, (*(v57 + 16) + 944 * SHIDWORD(v59)));
                    ++v60;
                    v58 = *(v57 + 12);
                    v59 += 0x100000000;
                  }

                  while (v60 < v58);
                }

                v12 = a2;
                LiContext::setLights(a2, v57);
                v35 = v55;
                v3 = v56;
              }

              v61 = *(v42 + 512);
              if (!v61)
              {
                throw_PCNullPointerException(1);
              }

              v62 = ProShade::Program::bindTextures(v61);
              *(v12 + 432) = *(v42 + 472);
              LiSceneDrawer::setMaterialUniforms(v62, v12, v42 + 40);
              ProShade::UniformData::setWorkspaceGlobals(CurrentContextUniformData, v53);
              ProShade::UniformWorkspace::computeAllOutputs(v53);
              ProShade::UniformWorkspace::sendChangedUniforms(v53);
              (*(**(v42 + 504) + 152))(*(v42 + 504), v12);
              LiGL::useProgram((v12 + 592), 0);
            }
          }

          v63 = *v36;
          if (*v36)
          {
            do
            {
              v64 = v63;
              v63 = v63[1];
            }

            while (v63);
          }

          else
          {
            do
            {
              v64 = v36[2];
              _ZF = *v64 == v36;
              v36 = v64;
            }

            while (_ZF);
          }

          v36 = v64;
        }

        while (v64 != *v3);
      }

      v31 = v66;
      if (v71)
      {
        glEnable(0xC11u);
        v73[0].var0 = &v80;
        v65 = std::__tree<std::__value_type<double,PCRect<double>>,std::__map_value_compare<double,std::__value_type<double,PCRect<double>>,std::less<double>,true>,std::allocator<std::__value_type<double,PCRect<double>>>>::__emplace_unique_key_args<double,std::piecewise_construct_t const&,std::tuple<double const&>,std::tuple<>>(&v81, &v80);
        PCRect<double>::operator|=(&v76, (v65 + 5));
        glScissor(v76.f64[0], v76.f64[1], *&v77, *(&v77 + 1));
      }

      LiFBOCompositor::endDrawToFBO(block);
      if (v71)
      {
        glDisable(0xC11u);
      }

      PCSharedCount::~PCSharedCount(&v79);
      v30 = 0;
    }

    while ((v72 & 1) != 0);
    LiFBOCompositor::renderResults(block);
    unbindAllTextures();
    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v81, v82[0]);
    LiFBOCompositor::~LiFBOCompositor(block);
    ProGL::GL::~GL(v86);
  }
}

void sub_260029408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, PCSharedCount a17)
{
  PCSharedCount::~PCSharedCount(&v19);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v20, v20[1]);
  LiFBOCompositor::~LiFBOCompositor(&v21);
  ProGL::GL::~GL((v17 - 160));
  _Unwind_Resume(a1);
}

void LiSceneDrawer::traverseAndRender(uint64_t a1, LiSceneObject *a2, uint64_t a3, _OWORD *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  LiContext::LiContext(v56);
  v60 = *(a1 + 476);
  LiClipSet::operator=(v57, a3);
  v59 = *a5;
  LiContext::setMaterialFilters(v56, a6);
  v14 = a4[3];
  v61[2] = a4[2];
  v61[3] = v14;
  v15 = a4[5];
  v61[4] = a4[4];
  v61[5] = v15;
  v16 = a4[1];
  v61[0] = *a4;
  v61[1] = v16;
  LiSceneDrawer::setupLights(a1, a2, (a1 + 760));
  LiContext::setLights(v56, a1 + 760);
  v17 = *(a7 + 32);
  if (v17 >= *(a7 + 40))
  {
    v18 = std::vector<LiLightSet>::__emplace_back_slow_path<LiLightSet const&>((a7 + 24), a1 + 760);
  }

  else
  {
    std::allocator_traits<std::allocator<LiLightSet>>::construct[abi:ne200100]<LiLightSet,LiLightSet const&,0>(a7 + 24, *(a7 + 32), a1 + 760);
    v18 = v17 + 32;
    *(a7 + 32) = v17 + 32;
  }

  *(a7 + 32) = v18;
  v54 = 0;
  PCSharedCount::PCSharedCount(&v55);
  if (*(a1 + 476) == 1)
  {
    operator new();
  }

  LiSceneDrawer::traverseObject(a1, v56, a2, a3, a4, a1 + 8, 1, a7);
  if ((*(a7 + 48) & 1) == 0)
  {
    LiSceneDrawer::render(a1, v56);
  }

  v19 = *(a1 + 848);
  v20 = *(a1 + 856);
  if (v19 != v20)
  {
    v21 = v19 + 8;
    v22 = v19 + 136;
    v23 = v19 + 264;
    do
    {
      LiSceneDrawer::LiSceneDrawer(&v45, a1);
      if (v19 != &v45)
      {
        v24 = 0;
        v25 = v21;
        v26 = &v46;
        do
        {
          for (i = 0; i != 4; ++i)
          {
            v26[i] = *(v25 + i * 8);
          }

          ++v24;
          v26 += 4;
          v25 += 32;
        }

        while (v24 != 4);
        v28 = 0;
        v29 = v22;
        v30 = &v47;
        do
        {
          for (j = 0; j != 4; ++j)
          {
            v30[j] = *(v29 + j * 8);
          }

          ++v28;
          v30 += 4;
          v29 += 32;
        }

        while (v28 != 4);
        v32 = 0;
        v33 = v23;
        v34 = v48;
        do
        {
          for (k = 0; k != 32; k += 8)
          {
            *(v34 + k) = *(v33 + k);
          }

          ++v32;
          v34 += 2;
          v33 += 32;
        }

        while (v32 != 4);
      }

      v48[8] = *(v19 + 392);
      v36 = *(v19 + 408);
      v37 = *(v19 + 424);
      v38 = *(v19 + 440);
      *(v49 + 15) = *(v19 + 455);
      v48[10] = v37;
      v49[0] = v38;
      v48[9] = v36;
      v39.var0 = *v19;
      if (*(*v19 + 644) == 1)
      {
        v40 = *(a1 + 772);
        if (v51 < v40)
        {
          v41 = 2 * v40 + 1;
        }

        else
        {
          v41 = v51;
        }

        PCArray<LiLight,PCArray_Traits<LiLight>>::resize(&v50, v40, v41);
        v42 = a7;
        if (*(a1 + 772) >= 1)
        {
          v43 = 0;
          v44 = 0;
          do
          {
            LiLight::operator=(v52 + v43, *(a1 + 776) + v43);
            ++v44;
            v43 += 944;
          }

          while (v44 < *(a1 + 772));
        }

        v53 = *(a1 + 784);
        v39.var0 = *v19;
        a7 = v42;
      }

      LiSceneDrawer::traverseAndRender(&v45, v39.var0, v57, v61, &v59, &v58, a7);
      LiSceneDrawer::~LiSceneDrawer(&v45);
      v19 += 472;
      v21 += 472;
      v22 += 472;
      v23 += 472;
    }

    while (v19 != v20);
  }

  PCSharedCount::~PCSharedCount(&v55);
  LiContext::~LiContext(v56);
}

void sub_2600299A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  PCSharedCount::~PCSharedCount(va);
  PCSharedCount::~PCSharedCount(&STACK[0x3D8]);
  PCSharedCount::~PCSharedCount(&STACK[0x3E8]);
  LiContext::~LiContext(&STACK[0x3F0]);
  _Unwind_Resume(a1);
}

void LiSceneDrawer::traverseObject(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  v187[24] = *MEMORY[0x277D85DE8];
  if (*(a1 + 478) == 1)
  {
    if ((*(a3 + 552) & 1) == 0)
    {
      return;
    }
  }

  else if (*(a3 + 553) != 1)
  {
    return;
  }

  v14 = (a6 + 436);
  v15 = *(a6 + 436);
  v16 = *(a1 + 476);
  *(a2 + 575) = *(a6 + 447);
  *(a2 + 564) = v15;
  if (v17 && (v16 & 1) == 0)
  {
    v18 = v17;
    *&v151 = 0.0;
    PCSharedCount::PCSharedCount(v152);
    LiSceneDrawer::buildProgram(v18, a2, &v151);
    PCSharedCount::PCSharedCount(v130);
    v130[1].var0 = 0;
    PCSharedCount::PCSharedCount(&v130[2]);
    v129.var0 = v151;
    PCSharedCount::PCSharedCount(__src, v152);
    PCSharedCount::operator=(v130, __src);
    PCSharedCount::~PCSharedCount(__src);
    PCPtr<LiImageSource>::operator=<LiImageSource>(&v130[1], v18);
    if (*(a1 + 928) == 1)
    {
      std::vector<LiSceneDrawer::MaterialInfo>::__base_destruct_at_end[abi:ne200100](a1 + 872, *(a1 + 872));
      *(a1 + 928) = 0;
    }

    v19 = *(a1 + 880);
    if (v19 >= *(a1 + 888))
    {
      v20 = std::vector<LiSceneDrawer::MaterialInfo>::__emplace_back_slow_path<LiSceneDrawer::MaterialInfo const&>(a1 + 872, &v129);
    }

    else
    {
      std::allocator_traits<std::allocator<LiSceneDrawer::MaterialInfo>>::construct[abi:ne200100]<LiSceneDrawer::MaterialInfo,LiSceneDrawer::MaterialInfo const&,0>(a1 + 872, *(a1 + 880), &v129);
      v20 = v19 + 32;
      *(a1 + 880) = v19 + 32;
    }

    *(a1 + 880) = v20;
    *&__src[0] = &v151;
    v84 = std::__tree<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::__map_value_compare<PCPtr<ProShade::Program>,std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>,std::less<PCPtr<ProShade::Program>>,true>,std::allocator<std::__value_type<PCPtr<ProShade::Program>,LiSceneDrawer::ByMaterial>>>::__emplace_unique_key_args<PCPtr<ProShade::Program>,std::piecewise_construct_t const&,std::tuple<PCPtr<ProShade::Program> const&>,std::tuple<>>(a1 + 792, &v151);
    LODWORD(__src[0]) = v18;
    *(&__src[0] + 1) = v18;
    v85 = v84[6];
    v187[0] = __src;
    v86 = std::__tree<std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>,std::__map_value_compare<LiSceneDrawer::ByMaterial::MaterialKey,std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>,std::less<LiSceneDrawer::ByMaterial::MaterialKey>,true>,std::allocator<std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>>>::__emplace_unique_key_args<LiSceneDrawer::ByMaterial::MaterialKey,std::piecewise_construct_t const&,std::tuple<LiSceneDrawer::ByMaterial::MaterialKey const&>,std::tuple<>>(v85, __src);
    v87 = (*(*v18 + 152))(v18);
    v88 = 0;
    v89 = (v86 + 6);
    LODWORD(v187[0]) = 0;
    do
    {
      if ((v87 >> v88))
      {
        *&__src[0] = v187;
        std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 816, v187)[5] = v89;
        v88 = v187[0];
      }

      LODWORD(v187[0]) = v88 + 1;
    }

    while (v88++ < 8);
    PCSharedCount::~PCSharedCount(&v130[2]);
    PCSharedCount::~PCSharedCount(v130);
    PCSharedCount::~PCSharedCount(v152);
    return;
  }

  v126 = a8;
  v152[4].var0 = 0x3FF0000000000000;
  *&v151 = 1.0;
  memset(v152, 0, 32);
  v153 = 0u;
  v154 = 0u;
  v156 = 0u;
  v157 = 0u;
  v155 = 0x3FF0000000000000;
  v159 = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  v158[0] = _Q1;
  memset(&v158[1], 0, 32);
  v160 = 0u;
  v161 = 0u;
  v164 = 0u;
  v163 = 0u;
  v172 = 0x3FF0000000000000;
  v169 = 0x3FF0000000000000;
  v162 = 0x3FF0000000000000;
  v166 = 0x3FF0000000000000;
  v125 = _Q1;
  v165[0] = _Q1;
  memset(&v165[1], 0, 32);
  v167 = 0u;
  v168 = 0u;
  v170 = 0u;
  v171 = 0u;
  v176[4] = 0;
  v173 = 0u;
  v174 = 0u;
  v175 = 0u;
  PCWorkingColorVector::PCWorkingColorVector(&v176[8]);
  *&v176[4] = *v14;
  *&v176[15] = *(a6 + 447);
  PCMatrix44Tmpl<double>::operator*(a6, (a3 + 8), &v129);
  v26 = 0;
  v27 = v158 + 8;
  v28 = v165 + 8;
  do
  {
    v29 = &v152[v26 - 1];
    v30 = *&v130[v26 + 1].var0;
    *&v29->var0 = *(&v129.var0 + v26 * 8);
    *&v29[2].var0 = v30;
    v26 += 4;
  }

  while (v26 != 16);
  if (*(a3 + 264) == 1)
  {
    v31 = a3 + 136;
    if ((a3 + 136) != (v158 + 8))
    {
      for (i = 0; i != 8; i += 2)
      {
        v33 = (&v158[i] + 8);
        v34 = *(v31 + i * 16 + 16);
        *v33 = *(v31 + i * 16);
        v33[1] = v34;
      }
    }
  }

  else
  {
    PCMatrix44Tmpl<double>::operator*(a6 + 128, (a3 + 8), &v129);
    for (j = 0; j != 16; j += 4)
    {
      v36 = (&v158[j / 2] + 8);
      v37 = *&v130[j + 1].var0;
      *v36 = *(&v129.var0 + j * 8);
      v36[1] = v37;
    }
  }

  if (*(a3 + 400) == 1)
  {
    v38 = a3 + 272;
    if ((a3 + 272) != (v165 + 8))
    {
      for (k = 0; k != 8; k += 2)
      {
        v40 = (&v165[k] + 8);
        v41 = *(v38 + k * 16 + 16);
        *v40 = *(v38 + k * 16);
        v40[1] = v41;
      }
    }
  }

  else
  {
    PCMatrix44Tmpl<double>::operator*(a6 + 256, (a3 + 8), &v129);
    for (m = 0; m != 16; m += 4)
    {
      v43 = (&v165[m / 2] + 8);
      v44 = *&v130[m + 1].var0;
      *v43 = *(&v129.var0 + m * 8);
      v43[1] = v44;
    }
  }

  if (*(a3 + 424) == 1)
  {
    v173 = *(a3 + 408);
  }

  else
  {
    v173 = vaddq_f64(*(a6 + 384), *(a3 + 408));
  }

  if (*(a3 + 448) == 1)
  {
    v45 = *(a3 + 432);
  }

  else
  {
    v45 = vaddq_f64(*(a6 + 400), *(a3 + 432));
  }

  v174 = v45;
  if (*(a3 + 472) == 1)
  {
    v46 = *(a3 + 456);
  }

  else
  {
    v46 = vaddq_f64(*(a6 + 416), *(a3 + 456));
  }

  v175 = v46;
  v47 = a4;
  if (*(a3 + 480) == 1)
  {
    v48 = LiSceneObject::index(a3);
    v49 = a5;
  }

  else
  {
    v49 = a5;
    v48 = (a6 + 432);
  }

  *v176 = *v48;
  if (v50)
  {
    v51 = v50;
    v150[1] = xmmword_2603429E0;
    v150[2] = xmmword_2603429E0;
    v150[0] = xmmword_2603429E0;
    (*(*v50 + 72))(v50, v150);
    if (LiClipSet::containsBox(v47, v150, &v151))
    {
      v149 = (*(*v51 + 136))(v51);
      *&v129.var0 = COERCE_DOUBLE(&v149);
      v52 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(a1 + 816, &v149)[5];
      if (v52)
      {
        v53 = *v52;
        v55 = *(*v52 + 8);
        v54 = *(*v52 + 12);
        if (v55 <= v54)
        {
          v56 = 2 * (v54 + 1) + 1;
        }

        else
        {
          v56 = v55;
        }

        PCArray<LiSceneDrawer::DrawObject,PCArray_Traits<LiSceneDrawer::DrawObject>>::resize(v53, v54 + 1, v56);
        v57 = *(v53 + 16) + 472 * *(v53 + 12);
        v58 = v57 - 472;
        *(v57 - 8) = v51;
        if (&v151 != (v57 - 472))
        {
          v59 = 0;
          v60 = &v151;
          do
          {
            for (n = 0; n != 4; ++n)
            {
              *(v58 + n * 8) = v60[n];
            }

            ++v59;
            v58 += 32;
            v60 += 4;
          }

          while (v59 != 4);
          v62 = 0;
          v63 = v57 - 344;
          do
          {
            for (ii = 0; ii != 32; ii += 8)
            {
              *(v63 + ii) = *&v27[ii];
            }

            ++v62;
            v63 += 32;
            v27 += 32;
          }

          while (v62 != 4);
          v65 = 0;
          v66 = v57 - 216;
          do
          {
            for (jj = 0; jj != 32; jj += 8)
            {
              *(v66 + jj) = *&v28[jj];
            }

            ++v65;
            v66 += 32;
            v28 += 32;
          }

          while (v65 != 4);
        }

        *(v57 - 88) = v173;
        v68 = v174;
        v69 = v175;
        v70 = *v176;
        *(v57 - 25) = *&v176[15];
        *(v57 - 40) = v70;
        *(v57 - 56) = v69;
        *(v57 - 72) = v68;
      }

      if (*(v126 + 48) == 1)
      {
        PCMatrix44Tmpl<double>::operator*(a1 + 488, &v151, v148);
        *&v129.var0 = 0.0;
        v130[0].var0 = 0;
        v130[1].var0 = 0;
        v130[2].var0 = 0x3FF0000000000000;
        v146 = 0u;
        v147 = 0u;
        PCMatrix44Tmpl<double>::transform<double>(v148, &v129, &v146);
        v71 = *&v147;
        v144 = xmmword_2603429E0;
        v145 = xmmword_2603429E0;
        v143 = xmmword_2603429E0;
        (*(*v51 + 72))(v51, &v143);
        v72 = 0;
        v73 = 0;
        v74 = fabs(v71);
        v187[0] = v143;
        v187[1] = v144;
        v187[2] = v145;
        v187[3] = *(&v143 + 1);
        v187[4] = v144;
        v187[5] = v145;
        v187[6] = *(&v143 + 1);
        v187[7] = *(&v144 + 1);
        v187[8] = v145;
        v187[9] = v143;
        v187[10] = *(&v144 + 1);
        v187[11] = v145;
        v187[12] = v143;
        v187[13] = v144;
        v187[14] = *(&v145 + 1);
        v187[15] = *(&v143 + 1);
        v187[16] = v144;
        v187[17] = *(&v145 + 1);
        v187[18] = *(&v143 + 1);
        v187[19] = *(&v144 + 1);
        v75 = -1.0;
        v187[20] = *(&v145 + 1);
        v187[21] = v143;
        v76 = 0.0;
        v77 = 0.0;
        v187[22] = *(&v144 + 1);
        v187[23] = *(&v145 + 1);
        v78 = -1.0;
        do
        {
          project(&v187[v72], v148, a1 + 616, (a1 + 744), &v129);
          var0 = v129.var0;
          v79 = v130[0].var0;
          if (*&v130[1].var0 > 1.0)
          {
            ++v73;
          }

          if (v75 < 0.0 || v78 < 0.0)
          {
            v78 = 0.0;
            v75 = 0.0;
            v77 = *&v130[0].var0;
            v76 = *&v129.var0;
          }

          else
          {
            v81 = v75 + v76;
            if (v76 > *&v129.var0)
            {
              v76 = *&v129.var0;
            }

            if (v81 >= *&v129.var0)
            {
              *&var0 = v81;
            }

            v82 = v78 + v77;
            if (v77 > *&v130[0].var0)
            {
              v77 = *&v130[0].var0;
            }

            if (v82 >= *&v130[0].var0)
            {
              *&v79 = v82;
            }

            v75 = *&var0 - v76;
            v78 = *&v79 - v77;
          }

          v72 += 3;
        }

        while (v72 != 24);
        v83 = (v73 - 1) < 7;
        v139 = 0;
        PCSharedCount::PCSharedCount(&v140);
        v141 = 0;
        PCSharedCount::PCSharedCount(&v142);
        PCPtr<LiImageSource>::reset(&v141);
        if (*(a1 + 476) == 1)
        {
          v139 = *(a1 + 896);
          PCSharedCount::PCSharedCount(&v129, (a1 + 904));
          PCSharedCount::operator=(&v140, &v129);
          PCSharedCount::~PCSharedCount(&v129);
          v141 = *(a1 + 912);
          PCSharedCount::PCSharedCount(&v129, (a1 + 920));
          PCSharedCount::operator=(&v142, &v129);
        }

        else
        {
          v104 = (*(*v51 + 136))(v51);
          v105 = *(a1 + 872);
          v106 = *(a1 + 880);
          if (v105 == v106)
          {
LABEL_119:
            *(&__src[2] + 1) = 0x3FF0000000000000;
            *&__src[0] = 0x3FF0000000000000;
            *(__src + 8) = 0u;
            *(&__src[1] + 8) = 0u;
            memset(&__src[3], 0, 32);
            *(&__src[5] + 8) = 0u;
            *(&__src[6] + 8) = 0u;
            *&__src[5] = 0x3FF0000000000000;
            *(&__src[10] + 1) = 0x3FF0000000000000;
            *(&__src[7] + 8) = v125;
            *(&__src[8] + 8) = 0u;
            *(&__src[9] + 8) = 0u;
            memset(&__src[11], 0, 32);
            *(&__src[14] + 8) = 0u;
            *(&__src[13] + 8) = 0u;
            *(&__src[23] + 1) = 0x3FF0000000000000;
            *&__src[21] = 0x3FF0000000000000;
            *&__src[13] = 0x3FF0000000000000;
            *(&__src[18] + 1) = 0x3FF0000000000000;
            *(&__src[15] + 8) = v125;
            *(&__src[16] + 8) = 0u;
            *(&__src[17] + 8) = 0u;
            memset(&__src[19], 0, 32);
            *(&__src[21] + 8) = 0u;
            *(&__src[22] + 8) = 0u;
            v181[4] = 0;
            v178 = 0u;
            v179 = 0u;
            v180 = 0u;
            PCWorkingColorVector::PCWorkingColorVector(&v181[8]);
            *&v181[24] = 1065353216;
            *&v181[28] = 257;
            v181[30] = 0;
            *(&v182 + 1) = 0;
            PCSharedCount::PCSharedCount(&v183);
            v184 = 0;
            PCSharedCount::PCSharedCount(&v185);
            v113 = 0;
            v114 = v76 + -2.0;
            v115 = v77 + -2.0;
            v116 = v75 + 4.0;
            v117 = v78 + 4.0;
            __asm { FMOV            V1.2D, #-1.0 }

            *&v186[8] = 0u;
            *&v186[24] = _Q1;
            *&v182 = v51;
            do
            {
              v119 = &__src[v113 / 0x10];
              v120 = *&v152[v113 / 8 + 1].var0;
              *v119 = *&v152[v113 / 8 - 1].var0;
              v119[1] = v120;
              v113 += 32;
            }

            while (v113 != 128);
            do
            {
              v121 = &__src[v113 / 0x10];
              v122 = *&v152[v113 / 8 + 1].var0;
              *v121 = *&v152[v113 / 8 - 1].var0;
              v121[1] = v122;
              v113 += 32;
            }

            while (v113 != 256);
            do
            {
              v123 = &__src[v113 / 0x10];
              v124 = *&v152[v113 / 8 + 1].var0;
              *v123 = *&v152[v113 / 8 - 1].var0;
              v123[1] = v124;
              v113 += 32;
            }

            while (v113 != 384);
            v180 = v175;
            *v181 = *v176;
            *&v181[15] = *&v176[15];
            v178 = v173;
            v179 = v174;
            *(&v182 + 1) = v139;
            PCSharedCount::PCSharedCount(&v129, &v140);
            PCSharedCount::operator=(&v183, &v129);
            PCSharedCount::~PCSharedCount(&v129);
            v184 = v141;
            PCSharedCount::PCSharedCount(&v129, &v142);
            PCSharedCount::operator=(&v185, &v129);
            PCSharedCount::~PCSharedCount(&v129);
            *v186 = ((*(v126 + 32) - *(v126 + 24)) >> 5) - 1;
            *&v186[8] = v114;
            *&v186[16] = v115;
            *&v186[24] = v116;
            *&v186[32] = v117;
            v186[40] = v83;
            *&v129.var0 = v74;
            memcpy(v130, __src, sizeof(v130));
            v131 = v178;
            v132 = v179;
            v133 = v180;
            v134[0] = *v181;
            *(v134 + 15) = *&v181[15];
            v134[2] = v182;
            PCSharedCount::PCSharedCount(v135, &v183);
            v135[1].var0 = v184;
            PCSharedCount::PCSharedCount(&v136, &v185);
            *(v138 + 9) = *&v186[25];
            v137 = *v186;
            v138[0] = *&v186[16];
            std::__tree<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::__map_value_compare<double,std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::less<double>,true>,std::allocator<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>>>::__emplace_multi<std::pair<double,LiSceneDrawer::ObjectDrawInfo>>();
          }

          v107 = 1 << v104;
          while (1)
          {
            v108 = v105[2].var0;
            if (!v108)
            {
              throw_PCNullPointerException(1);
            }

            if (((*(*v108 + 152))(v108) & v107) != 0)
            {
              break;
            }

            v105 += 4;
            if (v105 == v106)
            {
              goto LABEL_119;
            }
          }

          v139 = v105->var0;
          PCSharedCount::PCSharedCount(&v129, v105 + 1);
          PCSharedCount::operator=(&v140, &v129);
          PCSharedCount::~PCSharedCount(&v129);
          v141 = v105[2].var0;
          PCSharedCount::PCSharedCount(&v129, v105 + 3);
          PCSharedCount::operator=(&v142, &v129);
        }

        PCSharedCount::~PCSharedCount(&v129);
        goto LABEL_119;
      }
    }
  }

  else
  {
    if (v91 != 0.0)
    {
      v92 = v91;
      if (*(a1 + 476) != 1 || (v93 = *(a1 + 480), v93 == -1) || (*(*&v91 + 645) & 1) != 0 || v93 == *(*&v91 + 520))
      {
        v94 = (*(**&v91 + 248))(COERCE_DOUBLE(*&v91));
        if (a7 & 1) != 0 || *(*&v92 + 644) == 1 && (*(*&v92 + 645))
        {
          if ((*(a1 + 476) & 1) != 0 || *(a1 + 472) == 1)
          {
            if ((*(v94 + 24) & 1) == 0)
            {
              return;
            }
          }

          else if (*(v94 + 26))
          {
            return;
          }

          if (*v94 == 1)
          {
            v109 = *v94;
            *&v176[15] = *(v94 + 11);
            *&v176[4] = v109;
          }

          v110 = (*(**&v92 + 136))(COERCE_DOUBLE(*&v92));
          if (v110 >= 1)
          {
            v111 = 0;
            do
            {
              v112 = (*(**&v92 + 144))(COERCE_DOUBLE(*&v92), v111);
              LiSceneDrawer::traverseObject(a1, a2, v112, v47, v49, &v151, 0, a8);
              v111 = (v111 + 1);
            }

            while (v110 != v111);
          }
        }

        else
        {
          v95 = *(a6 + 384);
          v96 = *(a6 + 392);
          v97 = *(a6 + 400);
          v98 = *(a6 + 408);
          v99 = *(a6 + 416);
          v100 = *(a6 + 424);
          __src[0] = *(a6 + 432);
          *(__src + 15) = *(a6 + 447);
          if (*v94 == 1)
          {
            *(__src + 4) = *v94;
            *(__src + 15) = *(v94 + 11);
          }

          *&v129.var0 = v92;
          memcpy(v130, a6, sizeof(v130));
          v131.f64[0] = v95;
          v131.f64[1] = v96;
          v132.f64[0] = v97;
          v132.f64[1] = v98;
          v133.f64[0] = v99;
          v133.f64[1] = v100;
          v134[0] = __src[0];
          *(v134 + 15) = *(__src + 15);
          v101 = *(a1 + 856);
          if (v101 >= *(a1 + 864))
          {
            v103 = std::vector<LiSceneDrawer::DeferredGroup>::__emplace_back_slow_path<LiSceneDrawer::DeferredGroup>((a1 + 848), &v129);
          }

          else
          {
            *v101 = v92;
            memcpy((v101 + 8), v130, 0x180uLL);
            *(v101 + 392) = v95;
            *(v101 + 400) = v96;
            *(v101 + 408) = v97;
            *(v101 + 416) = v98;
            *(v101 + 424) = v99;
            *(v101 + 432) = v100;
            v102 = *(v134 + 15);
            *(v101 + 440) = v134[0];
            *(v101 + 455) = v102;
            v103 = v101 + 472;
          }

          *(a1 + 856) = v103;
        }
      }
    }
  }
}

void sub_26002AA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PCSharedCount::~PCSharedCount(va);
  PCSharedCount::~PCSharedCount(v9 + 3);
  PCSharedCount::~PCSharedCount(v9 + 1);
  _Unwind_Resume(a1);
}

void LiSceneDrawer::render(LiSceneDrawer *this, void **a2)
{
  CurrentContextUniformData = ProShade::UniformData::getCurrentContextUniformData(this);
  v28 = this;
  v4 = *(this + 99);
  v5 = this + 800;
  if (v4 != v5)
  {
    v26 = v5;
    do
    {
      v6 = *(v4 + 4);
      if (v6 && ProShade::ProgramBase::id(v6))
      {
        LiGL::useProgram(a2 + 74, *(v4 + 4));
        v7 = *(v4 + 4);
        if (!v7)
        {
          throw_PCNullPointerException(1);
        }

        UniformWorkspace = ProShade::Program::getUniformWorkspace(v7);
        v9 = *(v4 + 6);
        v10 = *v9;
        if (*v9 != v9 + 1)
        {
          v11 = UniformWorkspace;
          do
          {
            v12 = *(v10[6] + 12);
            if (v12)
            {
              v13 = v10[5];
              v32 = v13;
              if (v13)
              {
                v14 = (v13 + *(*v13 - 24));
              }

              else
              {
                v14 = 0;
              }

              PCSharedCount::PCSharedCount(&v33, v14);
              if (!v32)
              {
                throw_PCNullPointerException(1);
              }

              LiMaterial::setUniforms(v32, *(v28 + 105));
              v15 = *(v4 + 4);
              if (!v15)
              {
                throw_PCNullPointerException(1);
              }

              ProShade::Program::bindTextures(v15);
              v16 = ProShade::UniformData::setWorkspaceGlobals(CurrentContextUniformData, v11);
              v31[0] = 0;
              v31[1] = 0;
              v30 = v31;
              if (v12 >= 1)
              {
                v17 = 0;
                v18 = 464;
                do
                {
                  v19 = v10[6];
                  if (v17 >= *(v19 + 12))
                  {
                    PCArray_base::badIndex(v16);
                  }

                  v20 = *(v19 + 16);
                  LiSceneDrawer::setMaterialUniforms(v16, a2, v20 + v18 - 464);
                  ProShade::UniformData::setWorkspaceGlobals(&v30, v11);
                  *(a2 + 108) = *(v20 + v18 - 32);
                  ProShade::UniformWorkspace::computeAllOutputs(v11);
                  ProShade::UniformWorkspace::sendChangedUniforms(v11);
                  v16 = (*(**(v20 + v18) + 152))(*(v20 + v18), a2);
                  ++v17;
                  v18 += 472;
                }

                while (v12 != v17);
              }

              ProGL::GL::GL(v29);
              should_do_NVIDIA_gpureset_workaround(v29);
              ProGL::GL::~GL(v29);
              std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v30, v31[0]);
              PCSharedCount::~PCSharedCount(&v33);
            }

            v21 = v10[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v10[2];
                v23 = *v22 == v10;
                v10 = v22;
              }

              while (!v23);
            }

            v10 = v22;
          }

          while (v22 != (*(v4 + 6) + 8));
        }

        LiGL::useProgram(a2 + 74, 0);
        v5 = v26;
      }

      v24 = *(v4 + 1);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = *(v4 + 2);
          v23 = *v25 == v4;
          v4 = v25;
        }

        while (!v23);
      }

      v4 = v25;
    }

    while (v25 != v5);
  }

  unbindAllTextures();
}

void sub_26002B020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  __cxa_end_catch();
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void sub_26002B034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

uint64_t LiSceneDrawer::buildProgram(uint64_t a1, LiContext *a2, PC_Sp_counted_base **a3)
{
  {
    PCMutex::PCMutex(&LiSceneDrawer::buildProgram(LiMaterial *,LiContext &,PCPtr<ProShade::Program> *,BOOL)::compiledProgramMutex);
    __cxa_atexit(PCMutex::~PCMutex, &LiSceneDrawer::buildProgram(LiMaterial *,LiContext &,PCPtr<ProShade::Program> *,BOOL)::compiledProgramMutex, &dword_25F8F0000);
  }

  if ((atomic_load_explicit(&_MergedGlobals_38, memory_order_acquire) & 1) == 0)
  {
    LiSceneDrawer::buildProgram();
  }

  (*(*a1 + 168))(v19, a1);
  v17 = &LiSceneDrawer::buildProgram(LiMaterial *,LiContext &,PCPtr<ProShade::Program> *,BOOL)::compiledProgramMutex;
  PCMutex::lock(&LiSceneDrawer::buildProgram(LiMaterial *,LiContext &,PCPtr<ProShade::Program> *,BOOL)::compiledProgramMutex);
  v18 = 1;
  if (!a3)
  {
    v6 = std::__tree<std::__value_type<PCHash128,BOOL>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,BOOL>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,BOOL>>>::find<PCHash128>(&qword_280C5E9F0, v19);
    if (v6 != &qword_280C5E9F8)
    {
      LOBYTE(a3) = *(v6 + 44);
      v11 = &LiSceneDrawer::buildProgram(LiMaterial *,LiContext &,PCPtr<ProShade::Program> *,BOOL)::compiledProgramMutex;
LABEL_20:
      if (v18 == 1)
      {
        PCMutex::unlock(v11);
      }

      return a3 & 1;
    }
  }

  var0 = 0;
  PCSharedCount::PCSharedCount(&v16);
  v7 = 0;
  v8 = 1;
  while (1)
  {
    v9 = v8;
    LiMaterial::getProgram(a1, a2, v7, &v13);
    var0 = v13.var0;
    PCSharedCount::PCSharedCount(&v20, &v14);
    PCSharedCount::operator=(&v16, &v20);
    PCSharedCount::~PCSharedCount(&v20);
    PCSharedCount::~PCSharedCount(&v14);
    v10 = var0;
    if (!var0)
    {
      throw_PCNullPointerException(1);
    }

    *(var0 + 328) = v7;
    (*(*v10 + 16))(v10);
    if (!var0)
    {
LABEL_12:
      v13.var0 = v19;
      *(std::__tree<std::__value_type<PCHash128,BOOL>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,BOOL>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,BOOL>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(&qword_280C5E9F0, v19) + 44) = 0;
      if (a3)
      {
        *a3 = var0;
        PCSharedCount::PCSharedCount(&v13, &v16);
        PCSharedCount::operator=(a3 + 1, &v13);
        PCSharedCount::~PCSharedCount(&v13);
        LOBYTE(a3) = 0;
      }

      goto LABEL_17;
    }

    if (*(var0 + 66) == 1)
    {
      break;
    }

    v8 = 0;
    v7 = 1;
    if ((v9 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a3)
  {
    *a3 = var0;
    PCSharedCount::PCSharedCount(&v13, &v16);
    PCSharedCount::operator=(a3 + 1, &v13);
    PCSharedCount::~PCSharedCount(&v13);
  }

  v13.var0 = v19;
  LOBYTE(a3) = 1;
  *(std::__tree<std::__value_type<PCHash128,BOOL>,std::__map_value_compare<PCHash128,std::__value_type<PCHash128,BOOL>,std::less<PCHash128>,true>,std::allocator<std::__value_type<PCHash128,BOOL>>>::__emplace_unique_key_args<PCHash128,std::piecewise_construct_t const&,std::tuple<PCHash128 const&>,std::tuple<>>(&qword_280C5E9F0, v19) + 44) = 1;
LABEL_17:
  PCSharedCount::~PCSharedCount(&v16);
  v11 = v17;
  if (v17)
  {
    goto LABEL_20;
  }

  return a3 & 1;
}

void sub_26002B3B0(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount(v1 + 1);
  PCLockSentry<PCMutex>::~PCLockSentry(&v3);
  _Unwind_Resume(a1);
}

void unbindAllTextures(void)
{
  ProGL::GL::GL(v0);
  glActiveTexture(0x84C0u);
  ProGL::GL::~GL(v0);
}

void sub_26002B460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

__n128 LiSceneDrawer::setMaterialUniforms(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != a2)
  {
    v3 = 0;
    v4 = a3;
    v5 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v5 + i) = *(v4 + i);
      }

      ++v3;
      v5 += 32;
      v4 += 32;
    }

    while (v3 != 4);
    if (a3 != a2)
    {
      v7 = 0;
      v8 = a3 + 128;
      v9 = a2 + 128;
      do
      {
        for (j = 0; j != 32; j += 8)
        {
          *(v9 + j) = *(v8 + j);
        }

        ++v7;
        v9 += 32;
        v8 += 32;
      }

      while (v7 != 4);
      if (a3 != a2)
      {
        v11 = 0;
        v12 = a3 + 256;
        v13 = a2 + 256;
        do
        {
          for (k = 0; k != 32; k += 8)
          {
            *(v13 + k) = *(v12 + k);
          }

          ++v11;
          v13 += 32;
          v12 += 32;
        }

        while (v11 != 4);
      }
    }
  }

  *(a2 + 384) = *(a3 + 384);
  *(a2 + 400) = *(a3 + 400);
  result = *(a3 + 416);
  *(a2 + 416) = result;
  *(a2 + 432) = *(a3 + 432);
  return result;
}

void should_do_NVIDIA_gpureset_workaround(ProGL::GL *a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZL36should_do_NVIDIA_gpureset_workaroundRN5ProGL2GLE_block_invoke;
  block[3] = &__block_descriptor_tmp_15;
  block[4] = a1;
  if (should_do_NVIDIA_gpureset_workaround(ProGL::GL &)::predicate != -1)
  {
    dispatch_once(&should_do_NVIDIA_gpureset_workaround(ProGL::GL &)::predicate, block);
  }
}

BOOL PCRect<double>::overlaps(double *a1, double *a2)
{
  v2 = a1[2];
  if (v2 < 0.0)
  {
    return 0;
  }

  v3 = a1[3];
  if (v3 < 0.0)
  {
    return 0;
  }

  v4 = 0;
  v6 = a2[2];
  if (v6 >= 0.0)
  {
    v7 = a2[3];
    if (v7 >= 0.0)
    {
      v8 = v6 + *a2;
      if (v2 + *a1 > *a2 && *a1 < v8)
      {
        v10 = a1[1];
        v11 = a2[1];
        if (v10 < v11 + v7)
        {
          return v10 + v3 > v11;
        }
      }

      return 0;
    }
  }

  return v4;
}

void LiSceneDrawer::PaintersAlgorithmSceneData::~PaintersAlgorithmSceneData(PCSharedCount **this)
{
  v2 = (this + 3);
  std::vector<LiLightSet>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__tree<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::__map_value_compare<double,std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::less<double>,true>,std::allocator<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>>>::destroy(this, this[1]);
}

void std::vector<LiLightSet>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::__map_value_compare<double,std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::less<double>,true>,std::allocator<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>>>::destroy(uint64_t a1, PCSharedCount *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::__map_value_compare<double,std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::less<double>,true>,std::allocator<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>>>::destroy(a1, a2->var0);
    std::__tree<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::__map_value_compare<double,std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>,std::less<double>,true>,std::allocator<std::__value_type<double,LiSceneDrawer::ObjectDrawInfo>>>::destroy(a1, a2[1].var0);
    PCSharedCount::~PCSharedCount(a2 + 67);
    PCSharedCount::~PCSharedCount(a2 + 65);

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>,std::__map_value_compare<LiSceneDrawer::ByMaterial::MaterialKey,std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>,std::less<LiSceneDrawer::ByMaterial::MaterialKey>,true>,std::allocator<std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>>>::__emplace_unique_key_args<LiSceneDrawer::ByMaterial::MaterialKey,std::piecewise_construct_t const&,std::tuple<LiSceneDrawer::ByMaterial::MaterialKey const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>,std::__map_value_compare<LiSceneDrawer::ByMaterial::MaterialKey,std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>,std::less<LiSceneDrawer::ByMaterial::MaterialKey>,true>,std::allocator<std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<LiSceneDrawer::ByMaterial::MaterialKey const&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v5 >= v3)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v3 >= v5)
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

void sub_26002B908(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<LiSceneDrawer::ByMaterial::MaterialKey,LiSceneDrawer::DrawingList>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t PCArray<LiSceneDrawer::DrawObject,PCArray_Traits<LiSceneDrawer::DrawObject>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28726E0F0;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiSceneDrawer::DrawObject,PCArray_Traits<LiSceneDrawer::DrawObject>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<LiSceneDrawer::DrawObject,PCArray_Traits<LiSceneDrawer::DrawObject>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28726E0F0;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiSceneDrawer::DrawObject,PCArray_Traits<LiSceneDrawer::DrawObject>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<LiSceneDrawer::DrawObject,PCArray_Traits<LiSceneDrawer::DrawObject>>::resize(uint64_t a1, int a2, int a3)
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
    PCString::PCString(&v29, "PCArray::resize");
    PCException::PCException(exception, &v29);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 > v6)
    {
      v7 = 472 * v6;
      v8 = a2 - v6;
      __asm { FMOV            V0.2D, #1.0 }

      v27 = _Q0;
      do
      {
        v14 = *(a1 + 16) + v7;
        *(v14 + 464) = 0;
        *(v14 + 448) = 0u;
        *(v14 + 80) = 0x3FF0000000000000;
        *(v14 + 40) = 0x3FF0000000000000;
        *v14 = 0x3FF0000000000000;
        *(v14 + 8) = 0u;
        *(v14 + 24) = 0u;
        *(v14 + 48) = 0u;
        *(v14 + 64) = 0u;
        *(v14 + 88) = 0u;
        *(v14 + 104) = 0u;
        *(v14 + 208) = 0x3FF0000000000000;
        *(v14 + 168) = 0x3FF0000000000000;
        *(v14 + 120) = v27;
        *(v14 + 136) = 0u;
        *(v14 + 152) = 0u;
        *(v14 + 176) = 0u;
        *(v14 + 192) = 0u;
        *(v14 + 216) = 0u;
        *(v14 + 232) = 0u;
        *(v14 + 376) = 0x3FF0000000000000;
        *(v14 + 336) = 0x3FF0000000000000;
        *(v14 + 296) = 0x3FF0000000000000;
        *(v14 + 248) = v27;
        *(v14 + 264) = 0u;
        *(v14 + 280) = 0u;
        *(v14 + 304) = 0u;
        *(v14 + 320) = 0u;
        *(v14 + 344) = 0u;
        *(v14 + 360) = 0u;
        *(v14 + 384) = 0u;
        *(v14 + 400) = 0u;
        *(v14 + 416) = 0u;
        *(v14 + 432) = 0u;
        PCWorkingColorVector::PCWorkingColorVector((v14 + 440));
        *(v14 + 456) = 1065353216;
        *(v14 + 460) = 257;
        v7 += 472;
        *(v14 + 462) = 0;
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    if (v3)
    {
      operator new[]();
    }

    v15 = *(a1 + 12);
    if (a2 >= v15)
    {
      v16 = v15;
    }

    else
    {
      v16 = a2;
    }

    if (v16 < 1)
    {
      LODWORD(v16) = 0;
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = 0;
      v19 = v16;
      do
      {
        memcpy(v18, v17, 0x1B0uLL);
        v20 = *(v17 + 432);
        *(v18 + 447) = *(v17 + 447);
        *(v18 + 432) = v20;
        *(v18 + 464) = *(v17 + 464);
        v18 += 472;
        v17 += 472;
        --v19;
      }

      while (v19);
    }

    if (v16 <= v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = v16;
    }

    if (v21 < a2)
    {
      v22 = 472 * v21 + 248;
      v23 = a2 - v21;
      __asm { FMOV            V0.2D, #1.0 }

      v28 = _Q0;
      do
      {
        *(v22 + 216) = 0;
        *(v22 + 200) = 0u;
        *(v22 + 184) = 0u;
        *(v22 - 168) = 0x3FF0000000000000;
        *(v22 - 208) = 0x3FF0000000000000;
        *(v22 - 248) = 0x3FF0000000000000;
        *(v22 - 240) = 0u;
        *(v22 - 224) = 0u;
        *(v22 - 200) = 0u;
        *(v22 - 184) = 0u;
        *(v22 - 160) = 0u;
        *(v22 - 144) = 0u;
        *(v22 - 40) = 0x3FF0000000000000;
        *(v22 - 80) = 0x3FF0000000000000;
        *(v22 - 128) = v28;
        *(v22 - 112) = 0u;
        *(v22 - 96) = 0u;
        *(v22 - 56) = 0u;
        *(v22 - 72) = 0u;
        *(v22 - 32) = 0u;
        *(v22 - 16) = 0u;
        *(v22 + 128) = 0x3FF0000000000000;
        *(v22 + 88) = 0x3FF0000000000000;
        *(v22 + 48) = 0x3FF0000000000000;
        *v22 = v28;
        *(v22 + 16) = 0u;
        *(v22 + 32) = 0u;
        *(v22 + 56) = 0u;
        *(v22 + 72) = 0u;
        *(v22 + 96) = 0u;
        *(v22 + 112) = 0u;
        *(v22 + 136) = 0u;
        *(v22 + 152) = 0u;
        *(v22 + 168) = 0u;
        PCWorkingColorVector::PCWorkingColorVector((v22 + 192));
        *(v22 + 208) = 1065353216;
        *(v22 + 212) = 257;
        *(v22 + 214) = 0;
        v22 += 472;
        --v23;
      }

      while (v23);
    }

    v25 = *(a1 + 16);
    if (v25)
    {
      MEMORY[0x2666E9ED0](v25, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}