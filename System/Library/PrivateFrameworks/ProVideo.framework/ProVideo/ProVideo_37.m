void sub_25FC9C994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 113) < 0)
  {
    operator delete(*(v17 - 136));
  }

  HGTraceGuard::~HGTraceGuard((v17 - 112));
  if (*(v16 + 47) < 0)
  {
    operator delete(*a10);
    if ((*(v16 + 23) & 0x80000000) == 0)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v16 + 23) & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  operator delete(*v16);
  _Unwind_Resume(a1);
}

uint64_t std::string::find[abi:ne200100](uint64_t *a1, char *a2, unint64_t a3)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v3 = *a1;
    v4 = a1[1];
  }

  v5 = a2[23];
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    v7 = *(a2 + 1);
  }

  v8 = v4 - a3;
  if (v4 < a3)
  {
    return -1;
  }

  if (v7)
  {
    v10 = (v3 + v4);
    if (v8 >= v7)
    {
      v12 = (v3 + a3);
      v13 = *v6;
      do
      {
        if (v8 - v7 == -1)
        {
          break;
        }

        v14 = memchr(v12, v13, v8 - v7 + 1);
        if (!v14)
        {
          break;
        }

        v11 = v14;
        if (!memcmp(v14, v6, v7))
        {
          goto LABEL_15;
        }

        v12 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v7);
    }

    v11 = v10;
LABEL_15:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return &v11[-v3];
    }
  }

  return a3;
}

void HG_RENDERER_ENV::DOT_GRAPH_OUTPUT_DIR(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&byte_280C5E3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&byte_280C5E3D0))
  {
    HG_RENDERER_ENV::HG_RENDERER_ENV(&xmmword_280C5E408);
    __cxa_atexit(HGProgramDescriptor::Dependency::~Dependency, &xmmword_280C5E408, &dword_25F8F0000);
    __cxa_guard_release(&byte_280C5E3D0);
  }

  if (byte_280C5E41F < 0)
  {
    v3 = xmmword_280C5E408;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_280C5E408;
    a1->__r_.__value_.__r.__words[2] = unk_280C5E418;
  }
}

void HG_RENDERER_ENV::BUFFER_DUMP_DIR(std::string *a1@<X8>)
{
  if ((atomic_load_explicit(&byte_280C5E3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&byte_280C5E3D0))
  {
    HG_RENDERER_ENV::HG_RENDERER_ENV(&xmmword_280C5E408);
    __cxa_atexit(HGProgramDescriptor::Dependency::~Dependency, &xmmword_280C5E408, &dword_25F8F0000);
    __cxa_guard_release(&byte_280C5E3D0);
  }

  if (byte_280C5E437 < 0)
  {
    v3 = xmmword_280C5E420;

    std::string::__init_copy_ctor_external(a1, v3, *(&v3 + 1));
  }

  else
  {
    *&a1->__r_.__value_.__l.__data_ = xmmword_280C5E420;
    a1->__r_.__value_.__r.__words[2] = unk_280C5E430;
  }
}

void HG_RENDERER_ENV::Init(HG_RENDERER_ENV *this)
{
  if ((atomic_load_explicit(&byte_280C5E3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&byte_280C5E3D0))
  {
    HG_RENDERER_ENV::HG_RENDERER_ENV(&xmmword_280C5E408);
    __cxa_atexit(HGProgramDescriptor::Dependency::~Dependency, &xmmword_280C5E408, &dword_25F8F0000);

    __cxa_guard_release(&byte_280C5E3D0);
  }
}

void HGRendererOutput::HGRendererOutput(HGRendererOutput *this, HGNode *a2, HGBitmap *a3)
{
  *this = a2;
  *(this + 1) = a3;
  v3 = (a3 + 20);
  if (!a3)
  {
    v3 = &HGRectNull;
  }

  *(this + 1) = *v3;
  if (a3)
  {
    *(this + 4) = *(a3 + 4);
  }

  else
  {
    *(this + 8) = 0;
    *(this + 9) = 0;
  }
}

uint64_t HGRendererOutput::HGRendererOutput(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 36) = a6;
  return result;
}

void HGRenderer::HGRenderer(HGRenderer *this)
{
  HGObject::HGObject(this);
  *v2 = &unk_28721AE98;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  *(v2 + 192) = 0;
  *(v2 + 176) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0;
  *(v2 + 48) = 0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 568) = 0;
  *(v2 + 552) = 0u;
  *(v2 + 576) = xmmword_260815830;
  *(v2 + 592) = xmmword_260815840;
  *(v2 + 608) = xmmword_260815850;
  *(v2 + 624) = 0u;
  *(v2 + 640) = 0u;
  *(v2 + 656) = 0x4B000000000;
  *(v2 + 664) = 0x200000001;
  *(v2 + 672) = 0u;
  *(v2 + 688) = xmmword_2603444B0;
  HGCache::HGCache((v2 + 704));
  *(this + 404) = 256;
  *(this + 810) = 0;
  *(this + 208) = 1;
  HGDotGraph::HGDotGraph((this + 840));
  HGBufferDumper::HGBufferDumper((this + 928));
  *(this + 254) = 0;
  *(this + 128) = 0;
  *(this + 262) = 0;
  *(this + 1032) = 0u;
  *(this + 66) = 0u;
  *(this + 268) = 0;
  *(this + 135) = 0;
  *(this + 137) = 0;
  *(this + 136) = 0;
  if ((atomic_load_explicit(&byte_280C5E3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&byte_280C5E3D0))
  {
    HG_RENDERER_ENV::HG_RENDERER_ENV(&xmmword_280C5E408);
    __cxa_atexit(HGProgramDescriptor::Dependency::~Dependency, &xmmword_280C5E408, &dword_25F8F0000);
    __cxa_guard_release(&byte_280C5E3D0);
  }

  *(this + 149) = HGGetActiveCPU();
  *(this + 268) = 0;
  v3 = getenv("ROI_DEBUG");
  if (v3)
  {
    *(this + 169) = atoi(v3);
  }

  operator new();
}

void sub_25FC9D184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  __cxa_guard_abort(&byte_280C5E3D0);
  if (*(v15 + 1047) < 0)
  {
    operator delete(*v16);
  }

  HGBufferDumper::~HGBufferDumper((v15 + 928));
  HGDotGraph::~HGDotGraph((v15 + 840));
  HGCache::~HGCache((v17 + 60));
  v19 = *(v15 + 248);
  if (v19)
  {
    *(v15 + 256) = v19;
    operator delete(v19);
    v20 = *v17;
    if (!*v17)
    {
LABEL_5:
      HGObject::~HGObject(v15);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v20 = *v17;
    if (!*v17)
    {
      goto LABEL_5;
    }
  }

  *(v15 + 232) = v20;
  operator delete(v20);
  HGObject::~HGObject(v15);
  _Unwind_Resume(a1);
}

uint64_t HGRenderer::GetCachedLimits(HGRenderer *this, unsigned int a2)
{
  v2 = *(this + 135);
  v5 = *(v2 + 8);
  v3 = v2 + 8;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 == v3 || *(v6 + 32) > a2)
  {
LABEL_9:
    operator new();
  }

  return *(v6 + 40);
}

void HGRenderer::~HGRenderer(HGRenderer *this)
{
  *this = &unk_28721AE98;
  v2 = *(this + 135);
  v3 = *v2;
  if (*v2 == v2 + 8)
  {
    goto LABEL_13;
  }

  do
  {
    v4 = v3[5];
    if (v4)
    {
      MEMORY[0x2666E9F00](v4, 0x1000C40EED21634);
    }

    v3[5] = 0;
    v5 = v3[1];
    if (v5)
    {
      do
      {
        v6 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v6 = v3[2];
        v7 = *v6 == v3;
        v3 = v6;
      }

      while (!v7);
    }

    v3 = v6;
  }

  while (v6 != (v2 + 8));
  v2 = *(this + 135);
  if (v2)
  {
LABEL_13:
    std::__tree<HGNode *>::destroy(v2, *(v2 + 8));
    MEMORY[0x2666E9F00](v2, 0x1020C4062D53EE8);
  }

  *(this + 51) = 0u;
  v8 = *(this + 70);
  if (v8)
  {
    HGStats::GraphStats::~GraphStats(v8);
    MEMORY[0x2666E9F00]();
  }

  v9 = *(this + 71);
  if (v9)
  {
    HGStats::RendererStats::~RendererStats(v9);
    MEMORY[0x2666E9F00]();
  }

  v10 = *(this + 69);
  if (v10)
  {
    HGLUTCacheManager::~HGLUTCacheManager(v10);
    MEMORY[0x2666E9F00]();
  }

  (*(*this + 144))(this, 0);
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 24) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 36) = 0;
  *(this + 42) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 48) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  v11 = *(this + 29) - *(this + 28);
  *(this + 54) = 0;
  if ((v11 >> 3) >= 1)
  {
    v12 = ((v11 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      v14 = *(*(this + 28) + 8 * v12);
      if (v14)
      {
        (*(*v14 + 8))(v14);
      }

      v13 = v12-- + 1;
    }

    while (v13 > 1);
  }

  v15 = *(this + 32) - *(this + 31);
  if ((v15 >> 3) >= 1)
  {
    v16 = ((v15 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      v18 = *(*(this + 31) + 8 * v16);
      if (v18)
      {
        HGExecutionUnit::~HGExecutionUnit(v18);
        MEMORY[0x2666E9F00]();
      }

      v17 = v16-- + 1;
    }

    while (v17 > 1);
  }

  HGFree(*(this + 35));
  pthread_rwlock_destroy((this + 288));
  pthread_mutex_destroy((this + 488));
  if (*(this + 1047) < 0)
  {
    operator delete(*(this + 128));
  }

  HGBufferDumper::~HGBufferDumper(this + 116);
  HGDotGraph::~HGDotGraph((this + 840));
  HGCache::~HGCache((this + 704));
  v19 = *(this + 31);
  if (v19)
  {
    *(this + 32) = v19;
    operator delete(v19);
  }

  v20 = *(this + 28);
  if (v20)
  {
    *(this + 29) = v20;
    operator delete(v20);
  }

  HGObject::~HGObject(this);
}

{
  HGRenderer::~HGRenderer(this);

  HGObject::operator delete(v1);
}

uint64_t HGRenderer::label(HGRenderer *this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v8);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Renderer #", 10);
  v3 = MEMORY[0x2666E9B60](v2, *(this + 254));
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ": ", 2);
  if ((*(*this + 304))(this))
  {
    v5 = "CPU";
  }

  else
  {
    v5 = "GPU";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, 3);
  std::stringbuf::str();
  v8[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v8 + *(v8[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v9 = v6;
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v13);
}

void sub_25FC9D948(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void *HGRenderer::CreateBuffer(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v7 = HGObject::operator new(0x80uLL);
  HGBuffer::HGBuffer(v7, a2, a3, a4);
  return v7;
}

uint64_t HGRenderer::BindBuffer(HGBitmap **this, HGBitmap *a2)
{
  if (a2 && this[3] == a2)
  {
    return 0;
  }

  (*(*this + 19))(this, 0, 0, 0, 0);
  (*(*this + 19))(this, 1, 0, 0, 0);
  (*(*this + 19))(this, 2, 0, 0, 0);
  (*(*this + 19))(this, 3, 0, 0, 0);
  (*(*this + 19))(this, 4, 0, 0, 0);
  (*(*this + 19))(this, 5, 0, 0, 0);
  (*(*this + 19))(this, 6, 0, 0, 0);
  (*(*this + 19))(this, 7, 0, 0, 0);
  v4 = this[3];
  if (v4)
  {
    (*(*v4 + 24))(v4);
    this[3] = 0;
  }

  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 10))
  {
    this[3] = a2;
    (*(*a2 + 16))(a2);
    return 0;
  }

  return 0xFFFFFFFFLL;
}

uint64_t HGRenderer::BindTexture(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int a5)
{
  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = a1 + 24 * a2;
  v10 = *(v8 + 32);
  v9 = *(v8 + 40);
  v11 = v8 + 32;
  if (v10 != a3)
  {
    *v11 = a3;
    if (a3)
    {
      (*(*a3 + 16))(a3);
    }

    if (v10)
    {
      (*(*v10 + 24))(v10);
    }
  }

  if (v9 != a4)
  {
    *(v11 + 8) = a4;
    if (a4)
    {
      (*(*a4 + 16))(a4);
    }

    if (v9)
    {
      (*(*v9 + 24))(v9);
    }
  }

  result = 0;
  *(v11 + 16) = a5;
  return result;
}

uint64_t HGRenderer::SetParameter(uint64_t result, int a2, char *a3)
{
  switch(a2)
  {
    case 0:
      *(result + 584) = a3;
      return result;
    case 1:
      if (a3 <= 8)
      {
        v6 = 8;
      }

      else
      {
        v6 = a3;
      }

      if (v6 >= 256)
      {
        v6 = 256;
      }

      *(result + 588) = v6;
      return result;
    case 2:
      if (a3 <= 8)
      {
        v8 = 8;
      }

      else
      {
        v8 = a3;
      }

      if (v8 >= 256)
      {
        v8 = 256;
      }

      *(result + 592) = v8;
      return result;
    case 4:
      *(result + 628) = a3;
      return result;
    case 5:
      if (a3 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = a3;
      }

      *(result + 596) = v5;
      return result;
    case 6:
      v9 = a3 & ~(a3 >> 31);
      if (v9 >= 4)
      {
        v9 = 4;
      }

      *(result + 600) = v9;
      return result;
    case 7:
      *(result + 604) = a3 > 0;
      return result;
    case 8:
      *(result + 608) = a3 > 0;
      return result;
    case 9:
      *(result + 612) = a3;
      return result;
    case 10:
      *(result + 616) = a3;
      return result;
    case 11:
      *(result + 620) = a3;
      return result;
    case 13:
      *(result + 636) = a3;
      return result;
    case 14:
      if (*(result + 640))
      {
        if (!a3)
        {
          *(result + 640) = 0;
          v4 = (result + 288);

          return pthread_rwlock_unlock(v4);
        }
      }

      else if (a3)
      {
        v31 = result;
        result = pthread_rwlock_wrlock((result + 288));
        *(v31 + 640) = 1;
      }

      return result;
    case 15:
      *(result + 644) = a3;
      return result;
    case 16:
      *(result + 648) = a3;
      return result;
    case 17:
      *(result + 652) = a3;
      return result;
    case 18:
      *(result + 660) = a3;
      return result;
    case 19:
      if ((a3 - 1) <= 0x20)
      {
        *(result + 576) = a3;
      }

      return result;
    case 20:
      if ((a3 - 1) <= 0x20)
      {
        *(result + 580) = a3;
      }

      return result;
    case 22:
      *(result + 832) = a3 != 0;
      return result;
    case 23:
      switch(a3)
      {
        case 2:
          *(result + 664) = 2;
          break;
        case 1:
          *(result + 664) = 1;
          break;
        case 0:
          *(result + 664) = 0;
          break;
      }

      return result;
    case 24:
      *(result + 668) = a3;
      return result;
    case 28:
      *(result + 672) = a3 != 0;
      return result;
    case 29:

      return HGLogger::setLevel("gpu", a3);
    case 30:
      *(result + 656) = a3;
      v7 = result + 840;

      return PCImage::setIsPremultiplied(v7, a3 != 0);
    case 31:
      v3 = (result + 928);

      return HGBufferDumper::enable(v3, a3 != 0);
    case 32:
      if (a3 > 394255)
      {
        if (a3 == 394272)
        {
          goto LABEL_89;
        }

        if (a3 != 394256)
        {
          goto LABEL_96;
        }

LABEL_88:
        v29 = result;
        *(result + 816) = HGRenderer::GetCachedLimits(result, 0x60410u);
        result = HGRenderer::GetCachedLimits(v29, 0x50420u);
        *(v29 + 824) = result;
        **(v29 + 816) = 394256;
        *result = 328736;
        return result;
      }

      if (a3 == 328736)
      {
        goto LABEL_88;
      }

      if (a3 == 328752)
      {
LABEL_89:
        v30 = result;
        *(result + 816) = HGRenderer::GetCachedLimits(result, 0x60420u);
        result = HGRenderer::GetCachedLimits(v30, 0x50430u);
        *(v30 + 824) = result;
        **(v30 + 816) = 394272;
        *result = 328752;
        return result;
      }

LABEL_96:
      v33 = a3;
      v34 = result;
      if ((*(*result + 304))(result))
      {
        v35 = v33 | 0x1000000;
        if (v33 >= 0x100000)
        {
          v35 = v33;
        }

        dword_280C5E3CC = v35;
        *(v34 + 812) = v35;
        *(v34 + 816) = HGRenderer::GetCachedLimits(v34, v35 | 0x60000u);
        result = HGRenderer::GetCachedLimits(v34, *(v34 + 812) | 0x50000u);
        *(v34 + 824) = result;
        v36 = *(v34 + 812);
        **(v34 + 816) = v36;
        *result = v36;
      }

      else
      {
        v37 = v33 | 0x60000;
        v38 = v33 | 0x50000;
        *(v34 + 816) = HGRenderer::GetCachedLimits(v34, v37);
        result = HGRenderer::GetCachedLimits(v34, v38);
        *(v34 + 824) = result;
        **(v34 + 816) = v37;
        *result = v38;
      }

      return result;
    case 33:
      v10 = a3 != 0;
      *(result + 810) = a3 != 0;
      v11 = *(result + 224);
      v12 = *(result + 232) - v11;
      if ((v12 >> 3) >= 1)
      {
        v13 = (v12 >> 3) & 0x7FFFFFFF;
        v14 = v13 - (v13 != 0) + 1;
        v15 = v13;
        if (v14 < 2)
        {
          goto LABEL_71;
        }

        v15 = v13 - (v14 & 0xFFFFFFFFFFFFFFFELL);
        v16 = v11 + 8 * v13 - 8;
        v17 = v14 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v18 = *(v16 - 8);
          *(*v16 + 40) = v10;
          *(v18 + 40) = v10;
          v16 -= 16;
          v17 -= 2;
        }

        while (v17);
        if (v14 != (v14 & 0xFFFFFFFFFFFFFFFELL))
        {
LABEL_71:
          v19 = v15 + 1;
          v20 = (v11 + 8 * v15 - 8);
          do
          {
            v21 = *v20--;
            *(v21 + 40) = v10;
            --v19;
          }

          while (v19 > 1);
        }
      }

      return result;
    case 34:
      if (a3 > 1)
      {
        if (a3 != 2 && a3 != 3)
        {
          return result;
        }
      }

      else if (a3 >= 2)
      {
        return result;
      }

      v22 = *(result + 1072);
      *(result + 1072) = 0;
      if (v22)
      {
        v23 = *(result + 248);
        v24 = *(result + 256) - v23;
        if ((v24 >> 3) >= 1)
        {
          v25 = (v24 >> 3) & 0x7FFFFFFF;
          v26 = v25 + 1;
          v27 = (v23 + 8 * v25 - 8);
          do
          {
            v28 = *v27--;
            *(v28 + 440) = 0;
            --v26;
          }

          while (v26 > 1);
        }
      }

      return result;
    case 36:
      if (a3 == -1)
      {
        v32 = result;
        result = getenv("ROI_DEBUG");
        if (result)
        {
          result = atoi(result);
          *(v32 + 676) = result;
        }
      }

      else
      {
        *(result + 676) = a3;
      }

      return result;
    case 40:
      *(result + 680) = a3;
      return result;
    case 41:
      *(result + 684) = a3;
      return result;
    case 42:
      *(result + 688) = a3;
      return result;
    default:
      return result;
  }
}

uint64_t HGRenderer::GetParameter(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = 0x2000;
  switch(a2)
  {
    case 0:
      return *(a1 + 584);
    case 1:
      return *(a1 + 588);
    case 2:
      return *(a1 + 592);
    case 3:
      return (*(a1 + 592) * *(a1 + 588));
    case 4:
      return *(a1 + 628);
    case 5:
      return *(a1 + 596);
    case 6:
      return *(a1 + 600);
    case 7:
      return *(a1 + 604);
    case 8:
      return *(a1 + 608);
    case 9:
      return *(a1 + 612);
    case 10:
      return *(a1 + 616);
    case 11:
      return *(a1 + 620);
    case 13:
      return *(a1 + 636);
    case 14:
      return *(a1 + 640);
    case 15:
      return *(a1 + 644);
    case 16:
      return *(a1 + 648);
    case 17:
      return *(a1 + 652);
    case 18:
      return *(a1 + 660);
    case 19:
      return *(a1 + 576);
    case 20:
      return *(a1 + 580);
    case 22:
      return *(a1 + 832);
    case 23:
      return *(a1 + 664);
    case 24:
      return *(a1 + 668);
    case 27:
      return v3;
    case 28:
      return *(a1 + 672);
    case 32:
      return **(a1 + 816);
    case 34:
      if (*(a1 + 1072))
      {
        return 3;
      }

      else
      {
        return 0;
      }

    case 36:
      return *(a1 + 676);
    case 40:
      return *(a1 + 680);
    case 41:
      return *(a1 + 684);
    case 42:
      return *(a1 + 688);
    case 46:
      return HGLimits::texturerect(*(a1 + 816));
    default:
      return v2;
  }
}

uint64_t HGRenderer::GetTarget(HGRenderer *this, int a2)
{
  switch(a2)
  {
    case 0:
      return dword_280C5E3CC;
    case 393216:
      return **(this + 102);
    case 327680:
      return **(this + 103);
  }

  return 0;
}

uint64_t HGRenderer::RenderCheckPoint(HGRenderer *this)
{
  if (*(this + 160))
  {
    pthread_rwlock_rdlock((this + 288));
    pthread_rwlock_unlock((this + 288));
  }

  if (*(this + 159))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

void HGRenderer::RenderInput(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unint64_t a6, unint64_t a7, int a8)
{
  if (*(a3 + 88) <= a4 || (v8 = *(*(a3 + 80) + 8 * a4)) == 0)
  {
    *(a5 + 8) = 0;
    *a5 = 0;
    return;
  }

  if ((*(v8 + 12) & 6) != 0)
  {
    v9 = *(v8 + 48);
    if (v9)
    {
      *a5 = v9[10];
      *(a5 + 8) = v9[8] / v9[7];
    }

    v10 = *(a2 + 160);
    v11 = *(a1 + 224);
    if (v10 < ((*(a1 + 232) - v11) >> 3) && (v14 = *(v11 + 8 * v10)) != 0)
    {
      if (!*(*(*(v8 + 16) + 144) + 96))
      {
        return;
      }
    }

    else
    {
      v15 = 0;
      if (!*(*(*(v8 + 16) + 144) + 96))
      {
        return;
      }
    }

    if (DepthBufferManager::hasDepthBuffer(v15))
    {
      v16 = *(*(*(v8 + 16) + 144) + 96);
      *&v17.var0 = a6;
      *&v17.var2 = a7;

      DBM_cpu::setDepthBuffer(v15, v16, v17);
    }
  }

  else if (!HGRectIsNull(a6, a7))
  {
    v24 = a7 - a6;
    v25 = ((a7 - (a6 & 0xFFFFFFFF00000000)) >> 32) * (a7 - a6);
    Stack = HGExecutionUnit::GetStack(a2, v25);
    v27 = *(v8 + 16);
    if (v27)
    {
      v28 = *(v27 + 144);
      v29 = *(v28 + 192);
      if (v29)
      {
        v30 = v28;
        *(a2 + 36) = 0;
        *(a2 + 112) = *(a1 + 628);
        HGStats::ProfilerScopeGuard::ProfilerScopeGuard(v36, *(a2 + 424), 1, v25, *(v29 + 56) * v25);
        HGSampler::ReadTile(a2, *(v30 + 192), 0, Stack, a6, a7, 0);
        HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(v36);
        v31 = *(a2 + 160);
        v32 = *(a1 + 224);
        v33 = v30;
        v24 = a7 - a6;
        if (v31 < ((*(a1 + 232) - v32) >> 3) && (v34 = *(v32 + 8 * v31)) != 0)
        {
        }

        else
        {
          v35 = 0;
        }

        if (*(v33 + 96) && DepthBufferManager::hasDepthBuffer(v35))
        {
          *&v38.var0 = a6;
          *&v38.var2 = a7;
          DBM_cpu::setDepthBuffer(v35, *(v33 + 96), v38);
        }
      }

      else
      {
        HGRenderer::RenderTile(a1, a2, Stack->i8, a6, a7, v28, 0);
      }
    }

    *(a5 + 8) = v24;
    *a5 = Stack;
    if (!a8)
    {
      HGExecutionUnit::CommitStack(a2, Stack, v25);
    }
  }
}

void sub_25FC9E98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderer::DepthManager(HGRenderer *this, int a2)
{
  v2 = *(this + 28);
  if (((*(this + 29) - v2) >> 3) <= a2)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

void HGRenderer::RenderTile(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, unint64_t a5, HGNode *a6, uint64_t a7)
{
  if (*(a1 + 640))
  {
    pthread_rwlock_rdlock((a1 + 288));
    pthread_rwlock_unlock((a1 + 288));
  }

  if (*(a1 + 636))
  {
    return;
  }

  v14 = *(a6 + 24);
  if (!v14)
  {
    v71 = a7;
    v68 = HIDWORD(a5);
    v69 = (a5 - a4);
    v70 = HIDWORD(a4);
    v21 = (HIDWORD(a5) - HIDWORD(a4)) * v69;
    v22 = HGRectIntersection(a4, a5, *(a6 + 21), *(a6 + 22));
    v24 = v23;
    if (HGRectIsNull(v22, v23))
    {
      HGStats::ProfilerScopeGuard::ProfilerScopeGuard(&v74, *(a2 + 424), 3, v21, 16 * v21);
      if (a7)
      {
        v25 = HIDWORD(a5) - HIDWORD(a4);
        if (SHIDWORD(a5) > SHIDWORD(a4))
        {
          do
          {
            bzero(a3, 16 * v69);
            a3 += 16 * (v69 + v71);
            --v25;
          }

          while (v25);
        }
      }

      else
      {
        bzero(a3, 16 * v21);
      }

      v32 = &v74;
LABEL_36:
      HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(v32);
      return;
    }

    v67 = HIDWORD(a5) - HIDWORD(a4);
    if (HGRectIsEqual(v22, v24, a4, a5))
    {
      if ((*(a6 + 16) & 0x80) != 0 || v21 < 2 * *(*(a2 + 152) + 588) * *(*(a2 + 152) + 592))
      {
        v97 = 0;
        v95 = 0u;
        v96 = 0u;
        HGExecutionUnit::GetStackState(a2, &v95);
        v94 = a2;
        *&v74 = a4;
        *(&v74 + 1) = a5;
        *&v75 = a3;
        DWORD2(v75) = v69 + a7;
        if (!*(a6 + 10) || (*(a6 + 16) & 0x10) != 0)
        {
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v80 = 0;
          memset(v93, 0, sizeof(v93));
          v81 = 0;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v89 = 0;
          v90 = 0;
          v91 = 0;
          v92 = 0;
        }

        else
        {
          v27 = 0;
          do
          {
            while (1)
            {
              v30 = (*(*a6 + 440))(a6, v27);
              v31 = *(*(a6 + 10) + 8 * v30);
              if (v31)
              {
                if (*(v31 + 16) && (*(v31 + 12) & 0x10) == 0)
                {
                  break;
                }
              }

              v28 = v30;
              v29 = &v77 + v28 * 16;
              *v29 = 0;
              *(v29 + 2) = 0;
              v93[v28] = HGRectNull;
              v27 = (v27 + 1);
              if (v27 == 8)
              {
                goto LABEL_48;
              }
            }

            if (HGRenderer::RenderInputTile(a1, a2, a3, a4, a5, a6, a7, &v74, v30))
            {
              a3 = 0;
            }

            v27 = (v27 + 1);
          }

          while (v27 != 8);
        }

LABEL_48:
        HGNode::RenderTileDispatch(a6, &v74, v26);
        v72[0] = v95;
        v72[1] = v96;
        v73 = v97;
        v41 = v72;
      }

      else
      {
        v76 = 0;
        v74 = 0u;
        v75 = 0u;
        HGExecutionUnit::GetStackState(a2, &v74);
        if (v67 >= v69)
        {
          v53 = (HIDWORD(a5) + HIDWORD(a4)) >> 1;
          v54 = HGRectMake4i(a4, HIDWORD(a4), a5, v53);
          HGRenderer::RenderTile(a1, a2, a3, v54, v55, a6, a7);
          v56 = (v53 - HIDWORD(a4)) * (v69 + a7);
          HGExecutionUnit::CommitStack(a2, a3, v56);
          v45 = HGRectMake4i(a4, v53, a5, HIDWORD(a5));
          v47 = v57;
          v49 = a1;
          v50 = a2;
          v51 = &a3[16 * v56];
          v52 = a6;
          v48 = a7;
        }

        else
        {
          v42 = (a5 + a4) >> 1;
          HGExecutionUnit::CommitStack(a2, a3, ((v69 + a7) * v67));
          v43 = HGRectMake4i(a4, HIDWORD(a4), v42, HIDWORD(a5));
          HGRenderer::RenderTile(a1, a2, a3, v43, v44, a6, (a5 + a7 - v42));
          v45 = HGRectMake4i(v42, HIDWORD(a4), a5, HIDWORD(a5));
          v47 = v46;
          v48 = (a7 - a4 + v42);
          v49 = a1;
          v50 = a2;
          v51 = &a3[16 * v42 + -16 * a4];
          v52 = a6;
        }

        HGRenderer::RenderTile(v49, v50, v51, v45, v47, v52, v48);
        v95 = v74;
        v96 = v75;
        v97 = v76;
        v41 = &v95;
      }

      HGExecutionUnit::SetStackState(a2, v41);
      return;
    }

    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    HGExecutionUnit::GetStackState(a2, &v74);
    v65 = v69 + a7;
    v63 = a4;
    v33 = v22 - a4;
    v66 = a5 - v24;
    v34 = HIDWORD(v22) - v70;
    HGExecutionUnit::CommitStack(a2, a3, v67 * (v69 + a7));
    v64 = (HIDWORD(v22) - v70) * (v69 + a7);
    HGRenderer::RenderTile(a1, a2, &a3[16 * v64 + 16 * v33], v22, v24, a6, (v33 + a7 + a5 - v24));
    v35 = HIDWORD(v24);
    v36 = (v67 * v69 + (HIDWORD(v24) - HIDWORD(v22)) * (v22 - v24));
    HGStats::ProfilerScopeGuard::ProfilerScopeGuard(v72, *(a2 + 424), 3, v36, 16 * v36);
    if (HIDWORD(v22) != v70)
    {
      if (!a7)
      {
        bzero(a3, 16 * (v34 * v69));
        v38 = HIDWORD(a5);
        if (v35 == v68)
        {
          goto LABEL_57;
        }

        v39 = &a3[16 * (HIDWORD(v24) - v70) * v65];
LABEL_56:
        bzero(v39, 16 * ((v38 - HIDWORD(v24)) * v69));
LABEL_57:
        if (v33 >= 1)
        {
          v58 = HIDWORD(v24) - HIDWORD(v22);
          if (SHIDWORD(v24) > SHIDWORD(v22))
          {
            v59 = 16 * v33;
            v60 = &a3[16 * v64];
            do
            {
              bzero(v60, v59);
              v60 += 16 * v65;
              --v58;
            }

            while (v58);
          }
        }

        if (v66 >= 1)
        {
          v61 = HIDWORD(v24) - HIDWORD(v22);
          if (SHIDWORD(v24) > SHIDWORD(v22))
          {
            v62 = &a3[16 * (v24 - v63) + 16 * v64];
            do
            {
              bzero(v62, 16 * v66);
              v62 += 16 * (v69 + a7);
              --v61;
            }

            while (v61);
          }
        }

        v95 = v74;
        v96 = v75;
        v97 = v76;
        HGExecutionUnit::SetStackState(a2, &v95);
        v32 = v72;
        goto LABEL_36;
      }

      if (SHIDWORD(v22) > v70)
      {
        v37 = a3;
        do
        {
          bzero(v37, 16 * v69);
          v37 += 16 * (v69 + a7);
          --v34;
        }

        while (v34);
      }
    }

    v38 = v68;
    if (v35 == v68)
    {
      goto LABEL_57;
    }

    v39 = &a3[16 * (HIDWORD(v24) - v70) * v65];
    if (a7)
    {
      v40 = v68 - HIDWORD(v24);
      if (v68 > SHIDWORD(v24))
      {
        do
        {
          bzero(v39, 16 * v69);
          v39 += 16 * (v69 + a7);
          --v40;
        }

        while (v40);
      }

      goto LABEL_57;
    }

    goto LABEL_56;
  }

  (*(*v14 + 72))(v14, a3, a4, a5, a7);
  v15 = *(a2 + 160);
  v16 = *(a1 + 224);
  if (v15 < ((*(a1 + 232) - v16) >> 3) && (v17 = *(v16 + 8 * v15)) != 0)
  {
    if (!*(a6 + 12))
    {
      return;
    }
  }

  else
  {
    v18 = 0;
    if (!*(a6 + 12))
    {
      return;
    }
  }

  if (DepthBufferManager::hasDepthBuffer(v18))
  {
    v19 = *(a6 + 12);
    *&v20.var0 = a4;
    *&v20.var2 = a5;

    DBM_cpu::setDepthBuffer(v18, v19, v20);
  }
}

void sub_25FC9F1DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGRenderer::RenderInputTile(uint64_t a1, uint64_t a2, char *a3, unint64_t a4, unint64_t a5, HGNode *a6, unsigned int a7, uint64_t a8, signed int a9)
{
  v9 = a8 + 16 * a9;
  if (*(a6 + 22) <= a9)
  {
    result = 0;
    *(v9 + 80) = 0;
    *(v9 + 88) = 0;
    return result;
  }

  v10 = *(*(a6 + 10) + 8 * a9);
  *(v9 + 80) = 0;
  v11 = v9 + 80;
  *(v11 + 8) = 0;
  if (!v10)
  {
    return 0;
  }

  v12 = HIDWORD(a4);
  v13 = *(v10 + 12);
  if ((v13 & 6) == 0)
  {
    v84 = HIDWORD(a5);
    v20 = a5;
    v21 = a4;
    v23 = (*(*a6 + 400))(a6, a1, a9);
    v25 = v24;
    v86 = a2;
    v26 = *(a2 + 424);
    v76 = HIDWORD(v23);
    v77 = v21;
    v27 = HIDWORD(v24) - HIDWORD(v23);
    v80 = v24 - v23;
    v28 = ((HIDWORD(v24) - HIDWORD(v23)) * (v24 - v23));
    v78 = v20;
    v29 = ((v84 - v12) * (v20 - v21));
    v30 = a6;
    v31 = a6;
    v32 = v25;
    HGStats::UnitStats::in_n_out(v26, v31, a9, v28, v29);
    v33 = a8 + 16 * a9;
    *(v33 + 208) = v23;
    *(v33 + 216) = v32;
    if (HGRectIsNull(v23, v32))
    {
      return 0;
    }

    v34 = HIDWORD(v23);
    if (*(a1 + 624) == 2)
    {
      v35 = 1;
      v36 = v78;
      v37 = a3;
      v38 = v86;
      v39 = v77;
      v40 = v80;
    }

    else
    {
      v36 = v78;
      v37 = a3;
      v38 = v86;
      v39 = v77;
      v40 = v80;
      if (*(v30 + 16))
      {
        v35 = 1;
      }

      else
      {
        v35 = *(v10 + 12) & 1;
      }
    }

    v50 = v27 * v40;
    v85 = v23;
    if (v37)
    {
      if ((v35 & 1) == 0)
      {
        IsEqualSize = HGRectIsEqualSize(v23, v32, v39, v36);
        v52 = a7;
        v38 = v86;
        if (IsEqualSize)
        {
          v83 = 1;
          v53 = a3;
LABEL_33:
          v55 = *(v10 + 16);
          if (v55)
          {
            v56 = *(v55 + 144);
            v57 = *(v56 + 192);
            if (v57)
            {
              *(v38 + 36) = 0;
              *(v38 + 112) = *(a1 + 628);
              v58 = v32;
              v59 = v38;
              v60 = v53;
              v61 = v52;
              HGStats::ProfilerScopeGuard::ProfilerScopeGuard(v87, *(v38 + 424), 1, v28, *(v57 + 56) * v28);
              v62 = v59;
              v63 = v60;
              v64 = v60;
              v65 = v61;
              HGSampler::ReadTile(v62, *(v56 + 192), 0, v64, v85, v58, v61);
              HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(v87);
              v38 = v86;
              v66 = *(v86 + 40);
              v67 = *(a1 + 224);
              v34 = v76;
              if (v66 >= ((*(a1 + 232) - v67) >> 3))
              {
                v70 = 0;
              }

              else
              {
                v68 = *(v67 + 8 * v66);
                if (v68)
                {
                  v38 = v86;
                  v70 = v69;
                }

                else
                {
                  v70 = 0;
                }
              }

              v53 = v63;
              LODWORD(v52) = v65;
              if (*(v56 + 96))
              {
                hasDepthBuffer = DepthBufferManager::hasDepthBuffer(v70);
                LODWORD(v52) = v65;
                v53 = v63;
                v38 = v86;
                *&v74.var2 = v78;
                if (hasDepthBuffer)
                {
                  *&v74.var0 = v77;
                  DBM_cpu::setDepthBuffer(v70, *(v56 + 96), v74);
                  LODWORD(v52) = v65;
                  v53 = v63;
                  v38 = v86;
                }
              }
            }

            else
            {
              v71 = v53;
              v72 = v52;
              HGRenderer::RenderTile(a1, v86, v53, v85, v32, v56, v52);
              LODWORD(v52) = v72;
              v53 = v71;
              v38 = v86;
              v34 = v76;
            }
          }

          *(v11 + 8) = v52 + v80;
          *v11 = v53 + 16 * (v77 - v85 + (v12 - v34) * v80);
          HGExecutionUnit::CommitStack(v38, v53, v50);
          return v83;
        }
      }

      if (HGExecutionUnit::GetStack(v38, 0) == a3)
      {
        HGExecutionUnit::SwapStack(v86);
        v38 = v86;
        v83 = 0;
      }

      else
      {
        v83 = 0;
        v38 = v86;
      }
    }

    else
    {
      v83 = 1;
    }

    Stack = HGExecutionUnit::GetStack(v38, v50);
    v38 = v86;
    v53 = Stack;
    v52 = 0;
    goto LABEL_33;
  }

  v14 = *(v10 + 48);
  if (v14)
  {
    if ((v13 & 4) != 0)
    {
      v17 = 0;
      v16 = *(v14 + 56);
      v15 = *(v14 + 64);
    }

    else
    {
      v16 = *(v14 + 56);
      v15 = *(v14 + 64);
      v17 = v15 * (SHIDWORD(a4) - *(v14 + 24)) + v16 * (a4 - *(v14 + 20));
    }

    *v11 = *(v14 + 80) + v17;
    *(v11 + 8) = v15 / v16;
    *(a8 + 16 * a9 + 208) = *(v14 + 20);
  }

  v41 = *(a2 + 160);
  v42 = *(a1 + 224);
  if (v41 < ((*(a1 + 232) - v42) >> 3) && (v43 = *(v42 + 8 * v41)) != 0)
  {
    v44 = a4;
    v45 = a5;
    a4 = v44;
    a5 = v45;
    v47 = v46;
    if (!*(*(*(v10 + 16) + 144) + 96))
    {
      return 0;
    }
  }

  else
  {
    v47 = 0;
    if (!*(*(*(v10 + 16) + 144) + 96))
    {
      return 0;
    }
  }

  v48 = a4;
  v49 = a5;
  result = DepthBufferManager::hasDepthBuffer(v47);
  if (result)
  {
    *&v88.var0 = v48;
    *&v88.var2 = v49;
    DBM_cpu::setDepthBuffer(v47, *(*(*(v10 + 16) + 144) + 96), v88);
    return 0;
  }

  return result;
}

void sub_25FC9F740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  HGStats::ProfilerScopeGuard::~ProfilerScopeGuard(va);
  _Unwind_Resume(a1);
}

HGBuffer *HGRenderer::RenderTiles(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, HGBitmap *a6, int a7)
{
  v10 = a4;
  v11 = a3;
  if (!HGRectIsNull(a3, a4))
  {
    if (*(a1 + 640))
    {
      pthread_rwlock_rdlock((a1 + 288));
      pthread_rwlock_unlock((a1 + 288));
    }

    if (!*(a1 + 636))
    {
      if (a7 && (*(a1 + 808) & 1) == 0)
      {
        v11 = HGRectIntersection(*(a2 + 152), *(a2 + 160), v11, v10);
        v10 = v15;
      }

      if (a6)
      {
        v16 = HGObject::operator new(0x80uLL);
        *&v31.var0 = v11;
        *&v31.var2 = v10;
        HGBuffer::HGBuffer(v16, v31, a6);
        if (*(a2 + 105) == 1)
        {
LABEL_12:
          v17 = *(a1 + 810);
          goto LABEL_15;
        }
      }

      else
      {
        v16 = (*(*a1 + 136))(a1, v11, v10, a5);
        if (*(a2 + 105) == 1)
        {
          goto LABEL_12;
        }
      }

      v17 = 0;
LABEL_15:
      pthread_mutex_lock((a1 + 488));
      v30[0] = v11;
      v30[1] = v10;
      v30[2] = v16;
      v30[3] = a2;
      *(a1 + 272) = v30;
      LODWORD(v18) = *(a1 + 596);
      if (v17)
      {
        if (v18 < 1)
        {
LABEL_39:
          *(a1 + 272) = 0;
          pthread_mutex_unlock((a1 + 488));
          return v16;
        }

        v19 = 0;
        do
        {
          v21 = *(a1 + 224);
          if (v19 < ((*(a1 + 232) - v21) >> 3) && (v22 = *(v21 + 8 * v19)) != 0)
          {
          }

          else
          {
            v20 = 0;
          }

          (*(*v20 + 24))(v20);
          DBM_cpu::bufferHint(v20, *(a2 + 96));
          ++v19;
          v18 = *(a1 + 596);
        }

        while (v19 < v18);
      }

      if (v18 >= 1)
      {
        v23 = 0;
        do
        {
          HGExecutionUnit::BgnExec(*(*(a1 + 248) + 8 * v23++));
          v24 = *(a1 + 596);
        }

        while (v23 < v24);
        if (v24 >= 1)
        {
          for (i = 0; i < v26; ++i)
          {
            HGExecutionUnit::EndExec(*(*(a1 + 248) + 8 * i));
            v26 = *(a1 + 596);
          }

          if (v26 >= 1 && ((v17 ^ 1) & 1) == 0)
          {
            v27 = 0;
            do
            {
              v29 = *(a1 + 224);
              if (v27 >= ((*(a1 + 232) - v29) >> 3))
              {
                v28 = 0;
              }

              else
              {
                v28 = *(v29 + 8 * v27);
                if (v28)
                {
                }
              }

              (*(*v28 + 32))(v28);
              ++v27;
            }

            while (v27 < *(a1 + 596));
          }
        }
      }

      goto LABEL_39;
    }
  }

  return 0;
}

_DWORD *HGRenderer::MarkBufferedOutput(_DWORD *this, HGNode *a2)
{
  v2 = this[153];
  if (v2 == 2)
  {
    *(a2 + 104) = 0;
    return this;
  }

  v3 = *(a2 + 44) - *(a2 + 42);
  v4 = *(a2 + 45) - *(a2 + 43);
  if (v2 == 1)
  {
    if ((*(a2 + 16) & 0x84) == 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    v8 = 1;
    goto LABEL_23;
  }

  v5 = *(a2 + 4);
  if ((v5 & 8) != 0)
  {
    goto LABEL_17;
  }

  if ((v5 & 2) != 0)
  {
    LOBYTE(v2) = 1;
    if ((*(a2 + 16) & 0x84) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (*(a2 + 52) < 2)
  {
LABEL_17:
    LOBYTE(v2) = 0;
    if ((*(a2 + 16) & 0x84) != 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = a2;
    this = (*(*this + 128))(this, 27);
    a2 = v6;
    LOBYTE(v2) = v3 <= this && v4 <= this;
    if ((*(v6 + 16) & 0x84) != 0)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (*(a2 + 54) == -1)
  {
    goto LABEL_22;
  }

  v8 = (v4 * v3 < 1) | v2;
LABEL_23:
  *(a2 + 104) = v8 & 1;
  return this;
}

uint64_t HGRenderer::RenderBufferedInput(HGRenderer *this, HGNode *a2, int a3)
{
  v3 = *(*(a2 + 10) + 8 * a3);
  if (!v3 || (*(v3 + 12) & 6) == 0 || HGRectIsNull(*(v3 + 32), *(v3 + 40)))
  {
    return 0;
  }

  v7 = *(v3 + 16);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  v10 = HGFormatUtils::buildFormat(*(a2 + 8), 8);
  if (v7)
  {
    v11 = v10;
    v12 = *(*(v7 + 144) + 192);
    if (v12 && *(v12 + 16) == v10 && (*&v15.var0 = v9, *&v15.var2 = v8, HGRect::ContainsRect((v12 + 20), v15)) && (*(v12 + 80) & 0xF) == 0)
    {
      v14 = HGObject::operator new(0x80uLL);
      *&v16.var0 = v9;
      *&v16.var2 = v8;
      HGBuffer::HGBuffer(v14, v16, v12);
      v13 = v14;
    }

    else
    {
      (*(**(v7 + 144) + 416))(*(v7 + 144), this);
      v13 = (*(*this + 168))(this, *(v7 + 144), v9, v8, v11, 0, 0, (*(v3 + 12) & 0x2000) == 0);
    }
  }

  else
  {
    v13 = 0;
  }

  *(v3 + 48) = v13;
  return 1;
}

uint64_t HGRenderer::RenderBufferedOutput(HGRenderer *this, HGNode *a2)
{
  v2 = *(a2 + 104);
  if (v2 != 1)
  {
    return v2;
  }

  v5 = vsubl_s32(*(a2 + 176), *(a2 + 168));
  v6 = *(a2 + 8);
  if ((*(a2 + 16) & 0x84) != 0 || v5.i64[1] * v5.i64[0] <= 0)
  {
    v8 = 8;
  }

  else
  {
    if (v6 == 4 && *(a2 + 9) == 15)
    {
      v9 = (*(*a2 + 296))(a2, *(this + 144));
      goto LABEL_13;
    }

    v10 = HGFormatUtils::precision(*(this + 144));
    v8 = HGFormatUtils::adjustPrecision(v10, *(a2 + 9));
    v6 = *(a2 + 8);
  }

  v9 = HGFormatUtils::buildFormat(v6, v8);
LABEL_13:
  v11 = v9;
  (*(*a2 + 416))(a2, this);
  (*(*a2 + 336))(a2, this, 1);
  v12 = *(a2 + 24);
  if (v12)
  {
    (*(*v12 + 16))(v12);
    return v2;
  }

  *(a2 + 24) = (*(*this + 168))(this, a2, *(a2 + 21), *(a2 + 22), v11, 0, 0, (*(a2 + 4) & 0x2000) == 0);
  return v2;
}

uint64_t HGRenderer::GetOutputFormat(HGRenderer *this, HGNode *a2)
{
  if (*(a2 + 8) == 4 && *(a2 + 9) == 15)
  {
    v3 = *(this + 144);
    v4 = *(*a2 + 296);

    return v4(a2, v3);
  }

  else
  {
    v6 = HGFormatUtils::precision(*(this + 144));
    v7 = HGFormatUtils::adjustPrecision(v6, *(a2 + 9));
    v8 = *(a2 + 8);

    return HGFormatUtils::buildFormat(v8, v7);
  }
}

uint64_t HGRenderer::ReleaseBufferedInput(HGRenderer *this, HGNode *a2, int a3)
{
  v3 = *(*(a2 + 10) + 8 * a3);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 48);
  if (!v4)
  {
    return 0;
  }

  v8 = *(*(v3 + 16) + 144);
  v9 = *(v4 + 16) - 24;
  if (v9 <= 4)
  {
    HGDotGraph::filled(this + 840, *(*(v3 + 16) + 144), HGRenderer::DotLogNodeBufferFormat(HGNode *,HGBitmap *)::formatString[v9]);
  }

  if (*(v4 + 12))
  {
    HGDotGraph::outline(this + 840, v8, "limegreen");
  }

  HGRenderer::DotLogBufferOutput(this, *(*(v3 + 16) + 144), *(v3 + 48));
  if ((*(*(v3 + 48) + 12) & 0x30) == 0)
  {
    if (HGBufferDumper::on((this + 928)))
    {
      v10 = (*(*a2 + 48))(a2);
      HGBufferDumper::write((this + 928), v10, a3, *(v3 + 48));
    }
  }

  (*(**(v3 + 48) + 24))(*(v3 + 48));
  *(v3 + 48) = 0;
  return 1;
}

uint64_t HGRenderer::DotLogNodeBufferFormat(uint64_t this, HGNode *a2, HGBitmap *a3)
{
  v4 = this;
  v5 = *(a3 + 4) - 24;
  if (v5 <= 4)
  {
    v6 = a2;
    this = HGDotGraph::filled(this + 840, a2, HGRenderer::DotLogNodeBufferFormat(HGNode *,HGBitmap *)::formatString[v5]);
    a2 = v6;
  }

  if (*(a3 + 12))
  {

    return HGDotGraph::outline(v4 + 840, a2, "limegreen");
  }

  return this;
}

uint64_t HGRenderer::DotLogBufferOutput(uint64_t this, HGBitmap *a2, HGBitmap *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(this + 656) < 3)
  {
    return this;
  }

  v4 = this;
  v6 = *(a3 + 3);
  if (v6)
  {
    CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a3, a2);
    goto LABEL_6;
  }

  v7 = a3;
  if ((v6 & 0x20) != 0)
  {
    CVBitmapStorage = HGMetalTexture::getMetalStorage(a3, a2);
LABEL_6:
    v7 = CVBitmapStorage;
  }

  v9 = "GL";
  v11 = *(a3 + 3);
  v10 = *(a3 + 4);
  if ((v11 & 0x10) == 0)
  {
    v9 = "(bmp)";
  }

  if ((v11 & 0x20) != 0)
  {
    v9 = "MTL";
  }

  if ((v11 & 0x30) == 0)
  {
    v9 = "CPU";
  }

  if (v11)
  {
    v12 = "IOS";
  }

  else
  {
    v12 = v9;
  }

  v13 = *(a3 + 8);
  v14 = *(a3 + 6);
  v15 = *(a3 + 7) - *(a3 + 5);
  v16 = v13 - v14;
  v17 = HGFormatUtils::toString(v10);
  snprintf(__str, 0x40uLL, "{ %s | %dx%d | %s }", v12, v15, v16, v17);
  HGDotGraph::node(v4 + 840, v7, "bitmap", 0);
  HGDotGraph::filled(v4 + 840, v7, "#e0e0e0");
  HGDotGraph::fontSize(v4 + 840, v7, 9);
  HGDotGraph::link(v4 + 840, a2, v7, "", 1);
  HGDotGraph::linkStyle(v4 + 840, a2, v7, 1, 0);
  return HGDotGraph::record(v4 + 840, v7, __str);
}

BOOL HGRenderer::ReleaseBufferedOutput(HGRenderer *this, HGNode *a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v5 = *(v2 + 16) - 24;
    if (v5 <= 4)
    {
      HGDotGraph::filled(this + 840, a2, HGRenderer::DotLogNodeBufferFormat(HGNode *,HGBitmap *)::formatString[v5]);
    }

    if (*(v2 + 12))
    {
      HGDotGraph::outline(this + 840, a2, "limegreen");
    }

    HGRenderer::DotLogBufferOutput(this, a2, *(a2 + 24));
    if (HGBufferDumper::on((this + 928)))
    {
      v6 = (*(*this + 96))(this, *(a2 + 24), *(*(a2 + 24) + 16));
      CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(v6, v7);
      if (CVBitmapStorage)
      {
        v9 = CVBitmapStorage;
        HGCVBitmap::lock(CVBitmapStorage, 1uLL);
        v10 = (*(*a2 + 48))(a2);
        HGBufferDumper::write((this + 928), v10, -1, v9);
        HGCVBitmap::unlock(v9, 1uLL);
      }

      else if (*(v6 + 80))
      {
        v11 = (*(*a2 + 48))(a2);
        HGBufferDumper::write((this + 928), v11, -1, v6);
      }

      (*(*v6 + 24))(v6);
    }

    (*(*a2 + 424))(a2, this, *(a2 + 24));
    (*(**(a2 + 24) + 24))(*(a2 + 24));
    *(a2 + 24) = 0;
  }

  return v2 != 0;
}

uint64_t HGRenderer::FinalizeInputsOfBufferedNodes(uint64_t this, HGNode *a2)
{
  v2 = *(a2 + 22);
  if (v2 >= 1)
  {
    v4 = this;
    for (i = 0; i < v2; ++i)
    {
      v6 = *(*(a2 + 10) + 8 * i);
      if (v6)
      {
        v7 = *(v6 + 16);
        if (v7)
        {
          if (*(a2 + 24) || *(v6 + 48))
          {
            this = (*(*v4 + 248))(v4, *(v7 + 144));
            v2 = *(a2 + 22);
          }
        }
      }
    }
  }

  return this;
}

uint64_t HGRenderer::RenderTilesBegin(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 212);
  *(a2 + 212) = v2 + 1;
  if (!v2)
  {
    v4 = result;
    ++*(result + 696);
    v5 = *(a2 + 16);
    if ((v5 & 0x20000) != 0)
    {
      *(a2 + 16) = v5 | 0x82;
    }

    v6 = *(a2 + 88);
    if (v6 > 0)
    {
      for (i = 0; i < v6; ++i)
      {
        v8 = *(*(a2 + 80) + 8 * i);
        if (v8)
        {
          v9 = *(v8 + 16);
          if (v9)
          {
            if ((*(a2 + 18) & 2) != 0)
            {
              *(v8 + 12) |= 2u;
            }

            (*(*v4 + 240))(v4, *(v9 + 144), *(v8 + 32), *(v8 + 40), v4[144]);
            v6 = *(a2 + 88);
          }
        }
      }
    }

    (*(*v4 + 320))(v4, a2, 0);
    if (HGRectIsNull(*(a2 + 168), *(a2 + 176)))
    {
      v10 = *(*v4 + 232);

      return v10(v4, a2);
    }

    else
    {
      if (*(a2 + 88) >= 1)
      {
        v11 = 0;
        do
        {
          (*(*v4 + 200))(v4, a2, v11);
          v11 = (v11 + 1);
        }

        while (v11 < *(a2 + 88));
      }

      (*(*v4 + 192))(v4, a2);
      (*(*v4 + 208))(v4, a2);
      result = (*(*v4 + 232))(v4, a2);
      if (*(a2 + 40) != 1)
      {
        v12 = *(*a2 + 336);

        return v12(a2, v4, 1);
      }
    }
  }

  return result;
}

uint64_t HGRenderer::GenProgram(HGRenderer *this, HGNode *a2)
{
  result = HGNode::SupportsSWAIR(a2);
  if (result)
  {
    v4 = (*(*a2 + 224))(a2);
    *(a2 + 9) = v4;
    if (v4)
    {
      return 0;
    }

    else
    {
      v5 = (*(*a2 + 48))(a2);
      v6 = strdup(v5);
      HGLogger::warning("Missing swair program for node: %s", v7, v8, v6);
      free(v6);
      return 1;
    }
  }

  return result;
}

void *HGRenderer::RenderTilesEnd(void *this, HGNode *a2)
{
  v2 = *(a2 + 52) - 1;
  *(a2 + 52) = v2;
  if (!v2)
  {
    v4 = this;
    *(a2 + 53) = 0;
    if (*(a2 + 22) > 0)
    {
      v5 = 0;
      do
      {
        v6 = *(*(a2 + 10) + 8 * v5);
        if (v6)
        {
          if (*(v6 + 48))
          {
            (*(*v4 + 216))(v4, a2, v5);
          }

          else if (!*(a2 + 24))
          {
            v7 = *(v6 + 16);
            if (v7)
            {
              (*(*v4 + 248))(v4, *(v7 + 144));
            }
          }
        }

        ++v5;
      }

      while (v5 < *(a2 + 22));
    }

    this = (*(*v4 + 224))(v4, a2);
    if (*(a2 + 10) != 2)
    {
      (*(*a2 + 336))(a2, v4, 2);
      v8 = v4[70];
      v9 = vsub_s32(*(a2 + 176), *(a2 + 168));
      v10 = vmul_lane_s32(v9, v9, 1).u32[0];

      return HGStats::GraphStats::roiPixels(v8, a2, v10);
    }
  }

  return this;
}

uint64_t HGRenderer::RenderNode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  a1[2] = a2;
  (*(*a1 + 184))(a1);
  (*(*a1 + 240))(a1, a2, a3, a4, a5);
  v12 = (*(*a1 + 168))(a1, a2, a3, a4, a5, a6, 1, (*(a2 + 16) & 0x2000) == 0);
  (*(*a1 + 248))(a1, a2);
  return v12;
}

HGRenderer *HGRenderer::RenderNodeBgn(HGRenderer *this, HGNode *a2, int a3)
{
  v5 = this;
  while (1)
  {
    v6 = *(a2 + 52);
    if (v6)
    {
      break;
    }

    *(a2 + 54) = a3;
    *(a2 + 26) = 1;
    v7 = *(a2 + 22);
    if (v7 >= 2)
    {
      v8 = v7 - 1;
      do
      {
        v10 = *(*(a2 + 10) + 8 * v8);
        if (v10)
        {
          v11 = *(v10 + 16);
          if (v11)
          {
            this = HGRenderer::RenderNodeBgn(v5, *(v11 + 144), a3);
          }
        }

        v9 = v8-- + 1;
      }

      while (v9 > 2);
    }

    v12 = *(a2 + 10);
    if (v12)
    {
      v13 = *v12;
      if (v13)
      {
        v14 = *(v13 + 16);
        if (v14)
        {
          a2 = *(v14 + 144);
          if (a2)
          {
            continue;
          }
        }
      }
    }

    return this;
  }

  if (*(a2 + 54) != a3)
  {
    *(a2 + 54) = -1;
  }

  *(a2 + 52) = v6 + 1;
  return this;
}

HGRenderer *HGRenderer::RenderNodeEnd(HGRenderer *this, HGNode *a2)
{
  v3 = this;
  do
  {
    if (!*(a2 + 52))
    {
      break;
    }

    *(a2 + 26) = 0;
    *(a2 + 34) &= ~8u;
    v4 = *(a2 + 22);
    if (v4 >= 2)
    {
      v5 = v4 - 1;
      do
      {
        v7 = *(*(a2 + 10) + 8 * v5);
        if (v7)
        {
          v8 = *(v7 + 16);
          if (v8)
          {
            this = HGRenderer::RenderNodeEnd(v3, *(v8 + 144));
          }
        }

        v6 = v5-- + 1;
      }

      while (v6 > 2);
    }

    v9 = *(a2 + 10);
    if (v9)
    {
      v10 = *v9;
      if (v10)
      {
        a2 = *(v10 + 16);
        if (!a2)
        {
          break;
        }
      }
    }

    a2 = *(a2 + 18);
  }

  while (a2);
  return this;
}

uint64_t HGRenderer::SetROI(HGRenderer *this, HGNode *a2, HGRect a3, int a4, uint64_t a5)
{
  v7 = *&a3.var2;
  v8 = *&a3.var0;
  v11 = 0;
  do
  {
    DOD = HGRenderer::GetDOD(this, a2);
    v14 = HGRectIntersection(v8, v7, DOD, v13);
    v18 = v14;
    v19 = v15;
    if (*(a2 + 53))
    {
      *(a2 + 21) = HGRectUnion(*(a2 + 21), *(a2 + 22), v14, v15);
      *(a2 + 22) = v20;
      ++*(a2 + 53);
      if (*(this + 161) < 1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      *(a2 + 21) = v14;
      *(a2 + 22) = v15;
      *(a2 + 53) = 1;
      if (*(this + 161) < 1)
      {
        goto LABEL_15;
      }
    }

    v21 = (*(*a2 + 48))(a2);
    HGLogger::log("graph", 1, "%d: %p = %s: ROI [%d %d %d %d] DOD [%d %d %d %d]\n", v22, v23, a5, a2, v21, v18, HIDWORD(v18), v19, HIDWORD(v19), *(a2 + 38), *(a2 + 39), *(a2 + 40), *(a2 + 41));
    v25 = *(this + 161);
    if (v25 < 2)
    {
LABEL_15:
      v27 = *(a2 + 53);
      if (v27 != *(a2 + 52))
      {
        return HGLogger::indent(v11);
      }

      goto LABEL_16;
    }

    v46 = 0;
    LOBYTE(v45) = 0;
    HGLogger::getNewlinePreamble(v43, v24);
    (*(*a2 + 64))(__p, a2, (v25 - 1), &v45, v43);
    if (v42 < 0)
    {
      if (!__p[1])
      {
        goto LABEL_30;
      }

      v26 = __p[0];
    }

    else
    {
      if (!v42)
      {
        goto LABEL_13;
      }

      v26 = __p;
    }

    HGLogger::log("graph", *(this + 161), "%s\n", v16, v17, v26);
    if ((v42 & 0x80000000) == 0)
    {
LABEL_13:
      if ((v44 & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_31;
    }

LABEL_30:
    operator delete(__p[0]);
    if ((v44 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v46 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }

LABEL_31:
    operator delete(v43[0]);
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_32:
    operator delete(v45);
    v27 = *(a2 + 53);
    if (v27 != *(a2 + 52))
    {
      return HGLogger::indent(v11);
    }

LABEL_16:
    *(a2 + 53) = 0;
    *(a2 + 34) |= 8u;
    if (v27 >= 2 && *(this + 161) >= 1)
    {
      HGLogger::log("graph", 1, " + Total ROI from %d branches [%d %d %d %d]\n", v16, v17, v27, *(a2 + 42), *(a2 + 43), *(a2 + 44), *(a2 + 45));
    }

    HGLogger::indent(1);
    ++a4;
    v28 = *(a2 + 22);
    if (v28 > 1)
    {
      v29 = v28 - 1;
      do
      {
        v31 = *(*(a2 + 10) + 8 * v29);
        if (v31 && *(v31 + 16))
        {
          *&v47.var0 = (*(*a2 + 400))(a2, this, v29, *(a2 + 21), *(a2 + 22));
          *&v47.var2 = v32;
          v33 = *(*(a2 + 10) + 8 * v29);
          *(v33 + 32) = *&v47.var0;
          *(v33 + 40) = v32;
          HGRenderer::SetROI(this, *(*(*(*(a2 + 10) + 8 * v29) + 16) + 144), v47, a4, v29);
        }

        v30 = v29-- + 1;
      }

      while (v30 > 2);
    }

    v11 = (v11 - 1);
    v34 = *(a2 + 10);
    if (!v34)
    {
      break;
    }

    v35 = *v34;
    if (!v35)
    {
      break;
    }

    v36 = *(v35 + 16);
    if (!v36)
    {
      break;
    }

    v37 = *(v36 + 144);
    v8 = (*(*a2 + 400))(a2, this, 0, *(a2 + 21), *(a2 + 22));
    v7 = v38;
    a5 = 0;
    v39 = **(a2 + 10);
    *(v39 + 32) = v8;
    *(v39 + 40) = v38;
    a2 = v37;
  }

  while (v37);
  return HGLogger::indent(v11);
}

void sub_25FCA1198(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v32 - 89) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a27);
  if ((*(v32 - 89) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v32 - 112));
  _Unwind_Resume(exception_object);
}

uint64_t HGRenderer::GetDOD(HGRenderer *this, HGNode *a2)
{
  Output = HGRenderer::GetOutput(this, a2);
  v4 = &HGRectNull;
  if (Output)
  {
    v5 = Output;
    if ((*(Output + 136) & 4) == 0)
    {
      LODWORD(v6) = *(Output + 22);
      if (v6 < 1)
      {
        goto LABEL_15;
      }

      v7 = 0;
      v8 = 1;
      do
      {
        while (1)
        {
          v9 = *(*(v5 + 10) + 8 * v7);
          if (!v9)
          {
            break;
          }

          v10 = *(v9 + 16);
          if (!v10)
          {
            break;
          }

          DOD = HGRenderer::GetDOD(this, *(v10 + 144));
          v14 = (*(*v5 + 392))(v5, this, v7, DOD, v12);
          v15 = v13;
          if ((v8 & 1) == 0)
          {
            v14 = HGRectUnion(*(v5 + 19), *(v5 + 20), v14, v13);
            v15 = v16;
          }

          v8 = 0;
          *(v5 + 19) = v14;
          *(v5 + 20) = v15;
          v6 = *(v5 + 22);
          if (++v7 >= v6)
          {
            goto LABEL_16;
          }
        }

        ++v7;
      }

      while (v7 < v6);
      if (v8)
      {
LABEL_15:
        *(v5 + 19) = (*(*v5 + 392))(v5, this, 0, 0, 0);
        *(v5 + 20) = v17;
      }

LABEL_16:
      *(v5 + 34) |= 4u;
    }

    v4 = (v5 + 152);
  }

  return *v4;
}

uint64_t HGRenderer::SetTilesROI(HGRenderer *this, HGNode *a2, HGRect a3)
{
  v3 = *&a3.var2;
  v4 = *&a3.var0;
  DOD = HGRenderer::GetDOD(this, a2);
  result = HGRectIntersection(v4, v3, DOD, v8);
  if (*(a2 + 60))
  {
    result = HGRectUnion(*(a2 + 220), *(a2 + 228), result, v10);
    *(a2 + 220) = result;
    *(a2 + 228) = v11;
    v12 = *(a2 + 59);
    v13 = *(a2 + 60) + 1;
    *(a2 + 60) = v13;
    if (v13 != v12)
    {
      return result;
    }
  }

  else
  {
    *(a2 + 220) = result;
    *(a2 + 228) = v10;
    *(a2 + 60) = 1;
    if (*(a2 + 59) != 1)
    {
      return result;
    }
  }

  *(a2 + 60) = 0;
  v14 = *(a2 + 22);
  if (v14 >= 1)
  {
    v15 = v14 - 1;
    do
    {
      v17 = *(*(a2 + 10) + 8 * v15);
      if (v17)
      {
        if (*(v17 + 16))
        {
          *&v19.var0 = (*(*a2 + 400))(a2, this, v15, *(a2 + 220), *(a2 + 228));
          *&v19.var2 = v18;
          result = HGRenderer::SetTilesROI(this, *(*(*(*(a2 + 10) + 8 * v15) + 16) + 144), v19);
        }
      }

      v16 = v15-- + 1;
    }

    while (v16 > 1);
  }

  return result;
}

void HGRenderer::DotNode(HGRenderer *this, HGNode *a2)
{
  if (!HGDotGraph::on((this + 840)))
  {
    return;
  }

  v3 = (*(*a2 + 48))(a2);
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v4;
  if (v4)
  {
    memmove(&__dst, v3, v4);
  }

  __dst.__r_.__value_.__s.__data_[v5] = 0;
  if ((*(*a2 + 56))(a2))
  {
    std::string::append(&__dst, "\\n");
    v6 = (*(*a2 + 56))(a2);
    std::string::append(&__dst, v6);
  }

  if (*(this + 164) >= 2)
  {
    snprintf(HGRenderer::DotNode(HGNode *)::str, 0x100uLL, "DOD [%d %d %d %d]\\nROI [%d %d %d %d]", *(a2 + 38), *(a2 + 39), *(a2 + 40), *(a2 + 41), *(a2 + 42), *(a2 + 43), *(a2 + 44), *(a2 + 45));
    std::string::append(&__dst, "\\n");
    std::string::append(&__dst, HGRenderer::DotNode(HGNode *)::str);
  }

  if ((*(*this + 304))(this) && *(this + 162))
  {
    if (*(this + 164) < 2)
    {
      goto LABEL_40;
    }

    std::ostringstream::basic_ostringstream[abi:ne200100](&v32);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32, "\\n", 2);
    v8 = *v7;
    *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFEFB | 4;
    *(v7 + *(v8 - 24) + 24) = 7;
    *(v7 + *(v8 - 24) + 16) = 2;
    HGStats::GraphStats::getNodeTime(*(this + 70), a2);
    v9 = MEMORY[0x2666E9B30](v7);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " ms", 3);
    std::stringbuf::str();
    if ((v45 & 0x80u) == 0)
    {
      v10 = v44;
    }

    else
    {
      v10 = v44[0];
    }

    if ((v45 & 0x80u) == 0)
    {
      v11 = v45;
    }

    else
    {
      v11 = v44[1];
    }

    std::string::append(&__dst, v10, v11);
    if (v45 < 0)
    {
      operator delete(v44[0]);
    }

    v32 = *MEMORY[0x277D82828];
    *(&v32 + *(v32 - 3)) = *(MEMORY[0x277D82828] + 24);
    v33 = MEMORY[0x277D82878] + 16;
    if (SHIBYTE(v37) < 0)
    {
      operator delete(v36[5].__locale_);
    }

    v33 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(&v34);
    std::ostream::~ostream();
    MEMORY[0x2666E9E10](&v39);
  }

  v12 = *(this + 164);
  if (v12 >= 3)
  {
    HIBYTE(v34.__locale_) = 0;
    LOBYTE(v32) = 0;
    v45 = 0;
    LOBYTE(v44[0]) = 0;
    (*(*a2 + 64))(&v41, a2, (v12 - 2), &v32, v44);
    v13 = v43;
    v14 = v43;
    if ((v43 & 0x80u) != 0)
    {
      v13 = v42;
    }

    if (v13)
    {
      std::string::append(&__dst, "\\n");
      if ((v43 & 0x80u) == 0)
      {
        v15 = &v41;
      }

      else
      {
        v15 = v41;
      }

      if ((v43 & 0x80u) == 0)
      {
        v16 = v43;
      }

      else
      {
        v16 = v42;
      }

      std::string::append(&__dst, v15, v16);
      v14 = v43;
    }

    if ((v14 & 0x80) != 0)
    {
      operator delete(v41);
      if ((v45 & 0x80000000) == 0)
      {
LABEL_39:
        if ((SHIBYTE(v34.__locale_) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

LABEL_64:
        operator delete(v32);
        goto LABEL_40;
      }
    }

    else if ((v45 & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    operator delete(v44[0]);
    if ((SHIBYTE(v34.__locale_) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_64;
  }

LABEL_40:
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if (*(a2 + 105))
  {
    v18 = 2;
  }

  else
  {
    v18 = *(a2 + 106);
  }

  HGDotGraph::node(this + 840, a2, p_dst, v18);
  v19 = *(a2 + 22);
  if (v19 >= 1)
  {
    v29 = *(MEMORY[0x277D82818] + 64);
    v30 = *MEMORY[0x277D82818];
    v28 = *(MEMORY[0x277D82818] + 72);
    v20 = v19 - 1;
    do
    {
      v22 = *(*(a2 + 10) + 8 * v20);
      if (v22 && *(v22 + 16))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
        MEMORY[0x2666E9B50](&v34, v20);
        v23 = *(*(*(*(a2 + 10) + 8 * v20) + 16) + 144);
        std::stringbuf::str();
        v24 = v45;
        v25 = v44[0];
        IsMergedWithInput = HGNode::IsMergedWithInput(a2, v20);
        if (v24 >= 0)
        {
          v27 = v44;
        }

        else
        {
          v27 = v25;
        }

        HGDotGraph::link(this + 840, v23, a2, v27, IsMergedWithInput);
        if (v45 < 0)
        {
          operator delete(v44[0]);
        }

        v32 = v30;
        *(&v32 + *(v30 - 3)) = v29;
        v34.__locale_ = v28;
        v35 = MEMORY[0x277D82878] + 16;
        if (v38 < 0)
        {
          operator delete(v37);
        }

        v35 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v36);
        std::iostream::~basic_iostream();
        MEMORY[0x2666E9E10](&v40);
      }

      v21 = v20-- + 1;
    }

    while (v21 > 1);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_25FCA1C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 113) < 0)
  {
    operator delete(*(v27 - 136));
  }

  std::ostringstream::~ostringstream(&__p);
  if (*(v27 - 89) < 0)
  {
    operator delete(*(v27 - 112));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void HGRenderer::SetBufferDumpDir(uint64_t a1, const char *a2)
{
  HG_RENDERER_ENV::BUFFER_DUMP_DIR(&v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v5.__r_.__value_.__l.__size_;
    operator delete(v5.__r_.__value_.__l.__data_);
    if (size)
    {
      return;
    }
  }

  else if (*(&v5.__r_.__value_.__s + 23))
  {
    return;
  }

  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  HGBufferDumper::setPath((a1 + 928), a2);
}

void HGRenderer::SetDotGraphOutputDir(uint64_t a1, const void **a2)
{
  HG_RENDERER_ENV::DOT_GRAPH_OUTPUT_DIR(&v16);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v16.__r_.__value_.__l.__size_;
    operator delete(v16.__r_.__value_.__l.__data_);
    if (size)
    {
      return;
    }
  }

  else if (*(&v16.__r_.__value_.__s + 23))
  {
    return;
  }

  v5 = (a1 + 1024);
  v6 = *(a2 + 23);
  v7 = *(a1 + 1047);
  v8 = (a1 + 1024);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(a1 + 1032);
    v8 = *(a1 + 1024);
  }

  if (v6 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  if (v6 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v9;
  }

  v12 = memcmp(v8, v10, v11);
  if (v9 != v7 || v12 != 0)
  {
    HGLogger::print("Helium Dot Graph Output Directory: %s", v13, v14, v10);
  }

  std::string::operator=(v5, a2);
}

uint64_t HGRenderer::DumpPreRenderDotTree(HGRenderer *this, HGNode *a2, const char *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  v6 = *(this + 1047);
  if (v6 >= 0)
  {
    v7 = this + 1024;
  }

  else
  {
    v7 = *(this + 128);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 1047);
  }

  else
  {
    v8 = *(this + 129);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/helium.", 8);
  if (!HG_RENDERER_ENV::FORCE_SINGLE_DOT_FILE)
  {
    v10 = MEMORY[0x2666E9B60](&v18, *(this + 254));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ".", 1);
  }

  v11 = strlen(a3);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, a3, v11);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ".dot", 4);
  std::stringbuf::str();
  HGNode::WriteDotGraph(a2, &__p, 2);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v17[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v13;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v22);
}

void sub_25FCA20A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t HGRenderer::DotLogHWBlending(HGRenderer *this, HGNode *a2, HGNode *a3, int a4)
{
  if (a4)
  {
    HGDotGraph::linkStyle(this + 840, a2, a3, 0, 3);

    return HGDotGraph::dashed(this + 840, a2);
  }

  else
  {
    v8 = this + 840;

    return HGDotGraph::linkStyle(v8, a2, a3, 0, 2);
  }
}

void HGRenderer::RenderBgn(HGRenderer *this, int a2)
{
  kdebug_trace();
  if (HGDotGraph::on((this + 840)))
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
    v4 = *(this + 1047);
    if (v4 >= 0)
    {
      v5 = this + 1024;
    }

    else
    {
      v5 = *(this + 128);
    }

    if (v4 >= 0)
    {
      v6 = *(this + 1047);
    }

    else
    {
      v6 = *(this + 129);
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v5, v6);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "/helium.", 8);
    if (!HG_RENDERER_ENV::FORCE_SINGLE_DOT_FILE)
    {
      v8 = MEMORY[0x2666E9B60](&v16, *(this + 254));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ".", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "tree.dot", 8);
    std::stringbuf::str();
    if (v14 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    HGDotGraph::begin((this + 840), p_p);
    if (v14 < 0)
    {
      operator delete(__p);
    }

    v15[0] = *MEMORY[0x277D82818];
    v10 = *(MEMORY[0x277D82818] + 72);
    *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v16 = v10;
    v17 = MEMORY[0x277D82878] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v18);
    std::iostream::~basic_iostream();
    MEMORY[0x2666E9E10](&v20);
  }

  HGBufferDumper::reset((this + 928));
  if (*(this + 149) > ((*(this + 32) - *(this + 31)) >> 3))
  {
    operator new();
  }

  (*(*this + 288))(this);
  if (a2)
  {
    *(this + 262) = 0;
    if (!*(this + 158))
    {
      *(this + 132) = HGGetTBC();
    }

    HGStats::GraphStats::clear(*(this + 70));
    HGStats::GraphStats::start(*(this + 70));
    if (*(this + 149) >= 1)
    {
      v11 = 0;
      do
      {
        HGStats::UnitStats::clear(*(*(*(this + 31) + 8 * v11) + 424));
        HGStats::UnitStats::enable(*(*(*(this + 31) + 8 * v11) + 424), *(this + 162) != 0);
        HGStats::UnitStats::start(*(*(*(this + 31) + 8 * v11) + 424), 0);
        v12 = *(*(this + 31) + 8 * v11);
        if (*(this + 158) >= 1)
        {
          HGExecutionUnit::PushStats(v12);
        }

        HGExecutionUnit::ClearStats(v12);
        ++v11;
      }

      while (v11 < *(this + 149));
    }

    *(this + 692) = 0;
  }

  ++*(this + 158);
}

void sub_25FCA2540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  _Unwind_Resume(a1);
}

uint64_t HGRenderer::RenderEnd(HGRenderer *this, int a2)
{
  if (atomic_load_explicit(&qword_280C5E3D8, memory_order_acquire))
  {
    if (_MergedGlobals_20 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    HGRenderer::RenderEnd();
    if (_MergedGlobals_20 != 1)
    {
LABEL_3:
      HGMemory::renderEnd(this);
      --*(this + 158);
      if (!a2)
      {
        goto LABEL_20;
      }

      goto LABEL_7;
    }
  }

  puts("-------------------------------------------------------------------");
  puts("Helium ERROR : C++ teardown in progress!!");
  puts("               Accessing Helium during static objects destruction!!");
  v4 = puts("-------------------------------------------------------------------");
  HGMemory::renderEnd(v4);
  --*(this + 158);
  if (!a2)
  {
    goto LABEL_20;
  }

LABEL_7:
  v5 = HGGetTBC();
  HGStats::GraphStats::stop(*(this + 70));
  if (*(this + 149) <= 0)
  {
    *(this + 133) = v5;
  }

  else
  {
    v6 = 0;
    do
    {
      v8 = *(this + 31);
      if (*(this + 158) >= 1)
      {
        HGExecutionUnit::PopStats(*(v8 + 8 * v6));
        v8 = *(this + 31);
      }

      HGStats::UnitStats::stop(*(*(v8 + 8 * v6) + 424), 0);
      if (!*(this + 262))
      {
        *(this + 262) = *(*(*(*(this + 31) + 8 * v6) + 416) + 100);
      }

      ++v6;
      v7 = *(this + 149);
    }

    while (v6 < v7);
    *(this + 133) = v5;
    if (v7 >= 1)
    {
      v9 = 0;
      do
      {
        HGStats::GraphStats::merge(*(this + 70), *(*(*(this + 31) + 8 * v9++) + 424));
      }

      while (v9 < *(this + 149));
    }
  }

  HGStats::RendererStats::merge(*(this + 71), *(this + 70));
LABEL_20:
  HGRenderer::StatsProbes(this);
  HGRenderer::DumpStats(this);

  return kdebug_trace();
}

uint64_t HGRenderer::StatsProbes(HGProfiler ****this)
{
  if (((*this)[38])(this))
  {
    v2 = *(this + 149);
  }

  else
  {
    v2 = 0;
  }

  v3 = (HGStats::GraphStats::time(this[70]) * 1000.0);
  ((*this)[38])(this, v2, v3);
  if (((*this)[38])(this))
  {
    v4 = *(this + 149);
  }

  else
  {
    v4 = 0;
  }

  v5 = (HGStats::RendererStats::time(this[71]) * 1000.0);
  v6 = HGStats::RendererStats::count(this[71]);
  result = ((*this)[38])(this, v4, v5, v6);
  if (result)
  {
    return 0;
  }

  return result;
}

unint64_t HGRenderer::DumpStats(unint64_t this)
{
  v1 = atomic_load(HGLogger::_enabled);
  if (v1)
  {
    v2 = this;
    v3 = *(this + 652);
    if (v3 >= 1)
    {
      if (v3 == 1)
      {
        v4 = 256;
      }

      else
      {
        v4 = 65792;
      }

      if (v3 >= 3)
      {
        if ((*(*this + 304))(this))
        {
          v4 = 394752;
        }

        else
        {
          v4 = 65792;
        }
      }

      std::ostringstream::basic_ostringstream[abi:ne200100](&v87);
      if (*(v2 + 596) >= 1)
      {
        v5 = 0;
        do
        {
          HGStats::UnitStats::dump(*(*(*(v2 + 248) + 8 * v5++) + 424), &v87, v4);
        }

        while (v5 < *(v2 + 596));
      }

      HGStats::GraphStats::dump(*(v2 + 560), &v87, v4);
      HGStats::RendererStats::dump(*(v2 + 568), &v87, v4);
      std::stringbuf::str();
      if (v86 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      printf("%s", p_p);
      if (v86 < 0)
      {
        operator delete(__p);
      }

      v87 = *MEMORY[0x277D82828];
      *(&v87 + *(v87 - 24)) = *(MEMORY[0x277D82828] + 24);
      v88 = MEMORY[0x277D82878] + 16;
      if (v90 < 0)
      {
        operator delete(v89[7].__locale_);
      }

      v88 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v89);
      std::ostream::~ostream();
      this = MEMORY[0x2666E9E10](&v91);
      if (*(v2 + 652) >= 1)
      {
        v7 = (*(v2 + 1064) - *(v2 + 1056)) * 1000.0;
        this = HGGetTBCFrequency();
        v8 = v7 / this;
        v9 = *(v2 + 652);
        if (v9 >= 3)
        {
          this = (*(*v2 + 304))(v2);
          if (this)
          {
            v10 = *(v2 + 1064) - *(v2 + 1056);
            v11 = *(v2 + 596);
            if (v11 <= 0)
            {
              v13 = 0;
            }

            else
            {
              v12 = 0;
              v13 = 0;
              do
              {
                v13 += HGExecutionUnit::StackSize(*(*(v2 + 248) + 8 * v12++));
                v11 = *(v2 + 596);
              }

              while (v12 < v11);
            }

            v82 = v10 * 1000.0;
            v83 = v13 / v11;
            v84 = v82 / HGGetTBCFrequency();
            printf("\n- Helium Render Stats:");
            printf("\n  +   Wall Time (ms)        : %6.2f", v84);
            printf("\n  +   Mem Used              : %lu", v83);
            this = puts("\n");
            if (*(v2 + 652) <= 1)
            {
              return this;
            }

LABEL_31:
            if ((atomic_load_explicit(&qword_280C5E3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E3E0))
            {
              StatsAccumulator::StatsAccumulator(&qword_280C5E3E8);
              __cxa_atexit(StatsAccumulator::~StatsAccumulator, &qword_280C5E3E8, &dword_25F8F0000);
              __cxa_guard_release(&qword_280C5E3E0);
            }

            v14 = v8;
            v15 = dword_280C5E400++;
            v16 = dword_280C5E400;
            v17 = qword_280C5E3E8;
            v18 = *algn_280C5E3F0;
            *(qword_280C5E3E8 + 4 * v15) = v14;
            v19 = v18 - v17;
            v20 = ((v18 - v17) >> 2) - 1;
            if (v16 >= v19 >> 2)
            {
              dword_280C5E400 = 0;
            }

            else if ((v15 & 0x80000000) == 0)
            {
LABEL_37:
              v21 = *(v17 + 4 * v15);
              v22 = 0.0;
              v23 = fmaxf(v21, 0.0);
              v24 = v15 - 1;
              if (v24 < 0)
              {
                v24 = v20;
              }

              v25 = *(v17 + 4 * v24);
              if (v23 < v25)
              {
                v23 = *(v17 + 4 * v24);
              }

              v26 = v24 - 1;
              if (v26 < 0)
              {
                v26 = v20;
              }

              v27 = *(v17 + 4 * v26);
              if (v23 < v27)
              {
                v23 = *(v17 + 4 * v26);
              }

              v28 = v26 - 1;
              if (v28 < 0)
              {
                v28 = v20;
              }

              v29 = *(v17 + 4 * v28);
              if (v23 < v29)
              {
                v23 = *(v17 + 4 * v28);
              }

              v30 = v28 - 1;
              if (v30 >= 0)
              {
                v20 = v30;
              }

              v31 = *(v17 + 4 * v20);
              if (v23 < v31)
              {
                v23 = *(v17 + 4 * v20);
              }

              v32 = v23;
              v33 = 10000000.0;
              v34 = fminf(v21, 10000000.0);
              if (v34 > v25)
              {
                v34 = v25;
              }

              if (v34 > v27)
              {
                v34 = v27;
              }

              if (v34 > v29)
              {
                v34 = v29;
              }

              if (v34 > v31)
              {
                v34 = *(v17 + 4 * v20);
              }

              printf("last %2d : %.2f ms (%.2f / %.2f)\n", 5, ((((((v21 + 0.0) + v25) + v27) + v29) + v31) / 5.0), v34, v32);
              v35 = dword_280C5E400 - 1;
              v36 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              if (dword_280C5E400 - 1 < 0)
              {
                v35 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v37 = *(qword_280C5E3E8 + 4 * v35);
              v38 = fmaxf(v37, 0.0);
              v39 = v35 - 1;
              if (v39 < 0)
              {
                v39 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v40 = *(qword_280C5E3E8 + 4 * v39);
              if (v38 >= v40)
              {
                v41 = v38;
              }

              else
              {
                v41 = *(qword_280C5E3E8 + 4 * v39);
              }

              v42 = v39 - 1;
              if (v42 < 0)
              {
                v42 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v43 = *(qword_280C5E3E8 + 4 * v42);
              if (v41 >= v43)
              {
                v44 = v41;
              }

              else
              {
                v44 = *(qword_280C5E3E8 + 4 * v42);
              }

              v45 = v42 - 1;
              if (v45 < 0)
              {
                v45 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v46 = *(qword_280C5E3E8 + 4 * v45);
              if (v44 >= v46)
              {
                v47 = v44;
              }

              else
              {
                v47 = *(qword_280C5E3E8 + 4 * v45);
              }

              v48 = v45 - 1;
              if (v48 < 0)
              {
                v48 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v49 = *(qword_280C5E3E8 + 4 * v48);
              if (v47 >= v49)
              {
                v50 = v47;
              }

              else
              {
                v50 = *(qword_280C5E3E8 + 4 * v48);
              }

              v51 = v48 - 1;
              if (v51 < 0)
              {
                v51 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v52 = *(qword_280C5E3E8 + 4 * v51);
              if (v50 >= v52)
              {
                v53 = v50;
              }

              else
              {
                v53 = *(qword_280C5E3E8 + 4 * v51);
              }

              v54 = v51 - 1;
              if (v54 < 0)
              {
                v54 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v55 = *(qword_280C5E3E8 + 4 * v54);
              if (v53 >= v55)
              {
                v56 = v53;
              }

              else
              {
                v56 = *(qword_280C5E3E8 + 4 * v54);
              }

              v57 = v54 - 1;
              if (v57 < 0)
              {
                v57 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v58 = *(qword_280C5E3E8 + 4 * v57);
              if (v56 >= v58)
              {
                v59 = v56;
              }

              else
              {
                v59 = *(qword_280C5E3E8 + 4 * v57);
              }

              v60 = v57 - 1;
              if (v60 < 0)
              {
                v60 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v61 = *(qword_280C5E3E8 + 4 * v60);
              if (v59 >= v61)
              {
                v62 = v59;
              }

              else
              {
                v62 = *(qword_280C5E3E8 + 4 * v60);
              }

              v63 = v60 - 1;
              if (v63 < 0)
              {
                v63 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v64 = *(qword_280C5E3E8 + 4 * v63);
              if (v62 >= v64)
              {
                v65 = v62;
              }

              else
              {
                v65 = *(qword_280C5E3E8 + 4 * v63);
              }

              v66 = v63 - 1;
              if (v66 < 0)
              {
                v66 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v67 = *(qword_280C5E3E8 + 4 * v66);
              if (v65 < v67)
              {
                v65 = *(qword_280C5E3E8 + 4 * v66);
              }

              v68 = v66 - 1;
              if (v68 < 0)
              {
                v68 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v69 = *(qword_280C5E3E8 + 4 * v68);
              if (v65 < v69)
              {
                v65 = *(qword_280C5E3E8 + 4 * v68);
              }

              v70 = v68 - 1;
              if (v70 < 0)
              {
                v70 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v71 = *(qword_280C5E3E8 + 4 * v70);
              if (v65 < v71)
              {
                v65 = *(qword_280C5E3E8 + 4 * v70);
              }

              v72 = v70 - 1;
              if (v72 < 0)
              {
                v72 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
              }

              v73 = *(qword_280C5E3E8 + 4 * v72);
              if (v65 < v73)
              {
                v65 = *(qword_280C5E3E8 + 4 * v72);
              }

              v74 = v72 - 1;
              if (v74 >= 0)
              {
                v36 = v74;
              }

              v75 = *(qword_280C5E3E8 + 4 * v36);
              if (v65 < v75)
              {
                v65 = *(qword_280C5E3E8 + 4 * v36);
              }

              v76 = v65;
              v77 = fminf(v37, 10000000.0);
              if (v77 > v40)
              {
                v77 = v40;
              }

              if (v77 > v43)
              {
                v77 = v43;
              }

              if (v77 > v46)
              {
                v77 = v46;
              }

              if (v77 > v49)
              {
                v77 = v49;
              }

              if (v77 > v52)
              {
                v77 = v52;
              }

              if (v77 > v55)
              {
                v77 = v55;
              }

              if (v77 > v58)
              {
                v77 = v58;
              }

              if (v77 > v61)
              {
                v77 = v61;
              }

              if (v77 > v64)
              {
                v77 = v64;
              }

              if (v77 > v67)
              {
                v77 = v67;
              }

              if (v77 > v69)
              {
                v77 = v69;
              }

              if (v77 > v71)
              {
                v77 = v71;
              }

              if (v77 > v73)
              {
                v77 = v73;
              }

              if (v77 > v75)
              {
                v77 = *(qword_280C5E3E8 + 4 * v36);
              }

              printf("last %2d : %.2f ms (%.2f / %.2f)\n", 15, ((((((((((((((((v37 + 0.0) + v40) + v43) + v46) + v49) + v52) + v55) + v58) + v61) + v64) + v67) + v69) + v71) + v73) + v75) / 15.0), v77, v76);
              v78 = dword_280C5E400;
              v79 = 51;
              v80 = 0.0;
              do
              {
                if (--v78 < 0)
                {
                  v78 = ((*algn_280C5E3F0 - qword_280C5E3E8) >> 2) - 1;
                }

                v81 = *(qword_280C5E3E8 + 4 * v78);
                if (v33 > v81)
                {
                  v33 = *(qword_280C5E3E8 + 4 * v78);
                }

                if (v80 < v81)
                {
                  v80 = *(qword_280C5E3E8 + 4 * v78);
                }

                v22 = v22 + v81;
                --v79;
              }

              while (v79 > 1);
              return printf("last %2d : %.2f ms (%.2f / %.2f)\n", 50, (v22 / 50.0), v33, v80);
            }

            v15 = v20;
            goto LABEL_37;
          }

          v9 = *(v2 + 652);
        }

        if (v9 >= 1)
        {
          this = printf("\nHelium Time (ms) : %6.2f\n", v8);
        }

        if (*(v2 + 652) > 1)
        {
          goto LABEL_31;
        }
      }
    }
  }

  return this;
}

void sub_25FCA3178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCA318C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_25FCA31A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void HGRenderer::AdjustForBufferLocation(uint64_t a1, const char *a2, char *a3)
{
  if ((a3 - 3) < 3)
  {
    v3 = "GPU buffer location destination provided for CPU renderer.";
LABEL_3:
    HGLogger::warning(v3, a2, a3);
    return;
  }

  if (a3 == 1)
  {
    v3 = "kRenderBufferIOSurface location for CPU renderer: not yet unimplemented, sorry.";
    goto LABEL_3;
  }
}

uint64_t HGRenderer::AdjustForBufferLocation(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  return a2;
}

void HGRenderer::PreRenderTraversal(HGRenderer *this, HGNode *a2)
{
  kdebug_trace();
  if ((*(a2 + 136) & 2) == 0)
  {
    HGTraversal::IterativeUniqueTraversal<(HGTraversal::NodeInput)0,(HGTraversal::IteratorOrder)0,(HGTraversal::TraversalOrder)0,(HGTraversal::InputOrder)0>::operator()();
  }

  HGTraversal::IterativeUniqueTraversal<(HGTraversal::NodeInput)1,(HGTraversal::IteratorOrder)0,(HGTraversal::TraversalOrder)0,(HGTraversal::InputOrder)0>::operator()();
}

void HGRenderer::Render(HGRenderer *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v5[0] = a5;
  v5[1] = 0;
  v5[2] = a2;
  v5[3] = a3;
  v6 = a4;
  v7 = 0;
  HGRenderer::RenderNode(a1, v5);
}

void HGRenderer::RenderNode(HGRenderer *this, const HGRendererOutput *a2)
{
  v2 = *(a2 + 1);
  *__p = *a2;
  v4 = v2;
  v5 = *(a2 + 4);
  operator new();
}

void sub_25FCA355C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  std::vector<HGRef<HGBitmap>>::~vector[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

const char *HGRenderer::RenderBitmap(HGRenderer *this, HGBitmap *a2, HGNode *a3)
{
  if ((*(a2 + 12) & 0x30) == 0)
  {
    v4[0] = a3;
    v4[1] = a2;
    v5 = *(a2 + 20);
    v6 = *(a2 + 4);
    v7 = 0;
    HGRenderer::RenderNode(this, v4);
  }

  return HGLogger::warning("  ERROR : bitmap is on GPU (with CPU renderer).", a2, a3);
}

uint64_t HGRenderer::RenderBitmap(HGRenderer *this, HGBitmap *a2, HGNode *a3)
{
  HGLogger::warning("  WARNING : calling obsolete HGRenderer function:\n  void HGRenderer::RenderBitmap(HGBitmap *bmp, HGNode *node, BOOL fullROI)\n  instead, use:\n  void HGRenderer::RenderBitmap(HGBitmap *bmp, HGNode *node)\n  (fullROI is always 'on' when providing a destination bitmap)\n", a2, a3);
  v6 = *(*this + 64);

  return v6(this, a2, a3);
}

void HGRenderer::RenderNodes(uint64_t a1, int a2, uint64_t a3, const char *a4, char *a5, int *a6, char *a7)
{
  v7 = a3;
  v8 = a2;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v9 = a2;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v11 = a5;
    v12 = a4;
    v31 = a1;
    v32 = a7;
    v34 = a2;
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = *v11;
      v17 = *a6++;
      v16 = v17;
      v18 = v13 - v14;
      v19 = 0xCCCCCCCCCCCCCCCDLL * ((v13 - v14) >> 3);
      v20 = v19 + 1;
      __src = v14;
      if (v19 + 1 > 0x666666666666666)
      {
        v41 = 0;
        v39 = v14;
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * (-v14 >> 3) > v20)
      {
        v20 = 0x999999999999999ALL * (-v14 >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v14 >> 3) >= 0x333333333333333)
      {
        v21 = 0x666666666666666;
      }

      else
      {
        v21 = v20;
      }

      if (v21)
      {
        if (v21 <= 0x666666666666666)
        {
          operator new();
        }

        v41 = 0;
        v39 = __src;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v22 = 40 * v19;
      *v22 = *v12;
      *(v22 + 8) = 0;
      *(v22 + 16) = v15;
      *(v22 + 32) = v16;
      *(v22 + 36) = 0;
      v13 = 40 * v19 + 40;
      v14 = v22 + 40 * (v18 / -40);
      memcpy(v14, __src, v18);
      if (__src)
      {
        operator delete(__src);
      }

      v11 += 16;
      v12 += 8;
      --v9;
    }

    while (v9);
    v40 = v13;
    v41 = 0;
    v9 = v34;
    v7 = a3;
    a7 = v32;
    v8 = a2;
    a1 = v31;
  }

  v39 = v14;
  HGRenderer::RenderNodes(a1, &v39, a7, a4, a5, &__p);
  if (v8 >= 1)
  {
    v23 = 0;
    do
    {
      while (1)
      {
        v24 = __p;
        if (v23 < (v38 - __p) >> 3)
        {
          v25 = *(__p + v23);
          if (v25)
          {
            break;
          }
        }

        *(v7 + 8 * v23++) = 0;
        if (v9 == v23)
        {
          goto LABEL_23;
        }
      }

      (*(*v25 + 16))(v25);
      *(v7 + 8 * v23) = v24[v23];
      ++v23;
    }

    while (v9 != v23);
  }

LABEL_23:
  v26 = __p;
  if (__p)
  {
    v27 = v38;
    v28 = __p;
    if (v38 != __p)
    {
      do
      {
        v30 = *(v27 - 1);
        v27 -= 8;
        v29 = v30;
        if (v30)
        {
          (*(*v29 + 24))(v29);
        }
      }

      while (v27 != v26);
      v28 = __p;
    }

    v38 = v26;
    operator delete(v28);
  }

  if (v14)
  {
    v40 = v14;
    operator delete(v14);
  }
}

void sub_25FCA3994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (v22)
  {
    operator delete(v22);
  }

  _Unwind_Resume(exception_object);
}

void HGRenderer::RenderNodes(uint64_t a1@<X0>, const char *a2@<X1>, char *a3@<X2>, const char *a4@<X3>, char *a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  if (*(a1 + 809))
  {
    v7 = a3;
    v8 = a2;
    v10 = atomic_load(HGLogger::_enabled);
    if (v10)
    {
      HGLogger::log("gpu", 1, "\n\n", a4, a5);
    }

    HGTraceGuard::HGTraceGuard(v74, "gpu", 1, "----- HGRenderer::Render() -----");
    v11 = *v8;
    v12 = *(v8 + 1);
    if (*v8 != v12)
    {
      do
      {
        (*(**v11 + 376))(*v11, a1, v11[2], v11[3], *(v11 + 8));
        v11 += 5;
      }

      while (v11 != v12);
    }

    *(a1 + 808) = v7;
    (*(*a1 + 256))(a1, 1);
    if (*(a1 + 640))
    {
      pthread_rwlock_rdlock((a1 + 288));
      pthread_rwlock_unlock((a1 + 288));
    }

    if (!*(a1 + 636))
    {
      v13 = *v8;
      v14 = *(v8 + 1);
      if (*v8 != v14)
      {
        do
        {
          HGRenderer::GetOutput(a1, *v13);
          v13 += 5;
        }

        while (v13 != v14);
      }

      v16 = *v8;
      v15 = *(v8 + 1);
      if (*v8 != v15)
      {
        v17 = 0;
        do
        {
          v18 = *(*v16 + 144);
          if (v18)
          {
            HGRenderer::RenderNodeBgn(a1, v18, v17);
          }

          ++v17;
          v16 += 10;
        }

        while (v16 != v15);
        v16 = *v8;
        v15 = *(v8 + 1);
      }

      v68 = v8;
      if (v16 != v15)
      {
        do
        {
          v19 = *(*v16 + 144);
          if (v19)
          {
            (*(*a1 + 272))(a1, v19, v16[9]);
          }

          v16 += 10;
        }

        while (v16 != v15);
        v21 = *v8;
        v20 = *(v8 + 1);
        if (*v8 != v20)
        {
          do
          {
            v22 = *v21;
            v23 = *(*v21 + 18);
            if (v23)
            {
              v24 = v21[2];
              v25 = v21[3];
              if (*(a1 + 644) < 1)
              {
                HGRenderer::SetROI(a1, v23, *(v21 + 1), 0, 0);
              }

              else
              {
                v26 = atomic_load(HGLogger::_enabled);
                if (v26)
                {
                  (*(*a1 + 40))(&__p, a1);
                  v27 = SHIBYTE(v73);
                  v28 = __p;
                  v29 = HGFormat_repr(*(a1 + 576));
                  p_p = &__p;
                  if (v27 < 0)
                  {
                    p_p = v28;
                  }

                  HGLogger::log("graph", 1, "%s.  Intermediate format: %s\n", v30, v31, p_p, v29);
                  if (SHIBYTE(v73) < 0)
                  {
                    operator delete(__p);
                  }
                }

                HGTraceGuard::HGTraceGuard(&__p, "graph", 1, "HGRenderer::SetROI()");
                *&v75.var0 = v24;
                *&v75.var2 = v25;
                HGRenderer::SetROI(a1, *(v22 + 18), v75, 0, 0);
                HGTraceGuard::~HGTraceGuard(&__p);
              }
            }

            v21 += 5;
          }

          while (v21 != v20);
        }
      }

      if (*(a1 + 656) > 2)
      {
        HGRenderer::DumpPreRenderDotTree(a1, **v68, "getoutput");
      }

      __p = 0;
      v72 = 0;
      v73 = 0;
      v33 = v68[1];
      if (*v68 != v33)
      {
        v34 = (*v68 + 3);
        while (1)
        {
          v35 = v34 - 24;
          v36 = *(v34 + 8);
          v37 = *(*(v34 - 24) + 144);
          if (v37)
          {
            break;
          }

          v42 = HGObject::operator new(0x80uLL);
          HGBitmap::HGBitmap(v42, 0, 0, v36);
          v69 = v42;
          v43 = v72;
          if (v72 < v73)
          {
            goto LABEL_39;
          }

          v44 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(&__p, &v69);
          v45 = v69;
          v72 = v44;
          if (v69)
          {
            goto LABEL_47;
          }

LABEL_40:
          v34 += 40;
          if ((v35 + 40) == v33)
          {
            goto LABEL_60;
          }
        }

        v38 = *(v34 - 16);
        v39 = (*(*a1 + 160))(a1, v37, *(v34 - 8), *v34, *(v34 + 8), v38);
        v40 = v39;
        if (v38)
        {
          (*(*v38 + 16))(v38);
          v69 = v38;
          v41 = v72;
          if (v72 >= v73)
          {
            v72 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(&__p, &v69);
            if (v69)
            {
              ((*v69)[3])(v69);
            }
          }

          else
          {
            *v72 = v38;
            v72 = v41 + 1;
          }

          if (!v40)
          {
            goto LABEL_40;
          }

          goto LABEL_54;
        }

        if (v39)
        {
          (*(*v39 + 16))(v39);
          v69 = v40;
          v46 = v72;
          if (v72 >= v73)
          {
            v72 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(&__p, &v69);
            if (v69)
            {
              ((*v69)[3])(v69);
            }
          }

          else
          {
            *v72 = v40;
            v72 = v46 + 1;
          }

LABEL_54:
          (*(*v40 + 24))(v40);
          goto LABEL_40;
        }

        v42 = HGObject::operator new(0x80uLL);
        HGBitmap::HGBitmap(v42, 0, 0, v36);
        v69 = v42;
        v43 = v72;
        if (v72 >= v73)
        {
          v47 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(&__p, &v69);
          v45 = v69;
          v72 = v47;
          if (!v69)
          {
            goto LABEL_40;
          }

LABEL_47:
          ((*v69)[3])(v45);
          goto LABEL_40;
        }

LABEL_39:
        *v43 = v42;
        v72 = v43 + 1;
        goto LABEL_40;
      }

LABEL_60:
      v48 = *v68;
      v49 = v68[1];
      if (*v68 != v49)
      {
        do
        {
          v50 = *(*v48 + 18);
          if (v50)
          {
            HGRenderer::RenderNodeEnd(a1, v50);
          }

          v48 += 5;
        }

        while (v48 != v49);
        v51 = *v68;
        v52 = v68[1];
        if (*v68 != v52)
        {
          v53 = 0;
          while (*(*v51 + 144))
          {
            v55 = (*(*a1 + 280))(a1, *(__p + v53), v51[9]);
            v69 = v55;
            v56 = a6[1];
            if (v56 < a6[2])
            {
              *v56 = v55;
              v54 = v56 + 1;
LABEL_68:
              a6[1] = v54;
              goto LABEL_69;
            }

            v57 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(a6, &v69);
            v58 = v69;
            a6[1] = v57;
            if (v58)
            {
              goto LABEL_73;
            }

LABEL_69:
            v51 += 10;
            v53 += 8;
            if (v51 == v52)
            {
              goto LABEL_78;
            }
          }

          v59 = v51[8];
          v60 = HGObject::operator new(0x80uLL);
          HGBitmap::HGBitmap(v60, 0, 0, v59);
          v69 = v60;
          v61 = a6[1];
          if (v61 >= a6[2])
          {
            v62 = std::vector<HGRef<HGBitmap>>::__emplace_back_slow_path<HGRef<HGBitmap>>(a6, &v69);
            v58 = v69;
            a6[1] = v62;
            if (!v58)
            {
              goto LABEL_69;
            }

LABEL_73:
            (*(*v58 + 24))(v58);
            goto LABEL_69;
          }

          *v61 = v60;
          v54 = v61 + 1;
          goto LABEL_68;
        }
      }

LABEL_78:
      v63 = __p;
      if (__p)
      {
        v64 = v72;
        v65 = __p;
        if (v72 != __p)
        {
          do
          {
            v67 = *--v64;
            v66 = v67;
            if (v67)
            {
              (*(*v66 + 24))(v66);
            }
          }

          while (v64 != v63);
          v65 = __p;
        }

        v72 = v63;
        operator delete(v65);
      }

      v8 = v68;
    }

    (*(*a1 + 264))(a1, 1);
    if (HGDotGraph::on((a1 + 840)))
    {
      if (*(a1 + 640))
      {
        pthread_rwlock_rdlock((a1 + 288));
        pthread_rwlock_unlock((a1 + 288));
      }

      if (!*(a1 + 636))
      {
        v72 = 0;
        v73 = 0;
        v70[1] = 0;
        __p = &v72;
        v69 = v70;
        v70[0] = 0;
        if (*v8 != *(v8 + 1))
        {
          operator new();
        }

        std::__tree<HGNode *>::destroy(&v69, v70[0]);
        std::__tree<HGNode *>::destroy(&__p, v72);
      }
    }

    HGDotGraph::end((a1 + 840));
    HGTraceGuard::~HGTraceGuard(v74);
  }

  else
  {
    HGLogger::warning("Invalid Renderer", a2, a3);
  }
}

void sub_25FCA4580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  std::vector<HGRef<HGBitmap>>::~vector[abi:ne200100](&__p);
  HGTraceGuard::~HGTraceGuard(&a22);
  std::vector<HGRef<HGBitmap>>::~vector[abi:ne200100](v22);
  _Unwind_Resume(a1);
}

void HGRenderer::RenderBitmaps(HGRenderer *this, int a2, HGBitmap **a3, HGNode **a4, char *a5)
{
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (a2 < 1)
  {
    v8 = 0;
  }

  else
  {
    v5 = a4;
    v25 = this;
    v7 = 0;
    v8 = 0;
    v9 = a2;
    do
    {
      v10 = *v5;
      v11 = *a3;
      v12 = (*a3 + 20);
      if (!*a3)
      {
        v12 = &HGRectNull;
      }

      v29 = *v12;
      if (v11)
      {
        v13 = *(v11 + 4);
      }

      else
      {
        v13 = 0;
      }

      v14 = v7 - v8;
      v15 = 0xCCCCCCCCCCCCCCCDLL * ((v7 - v8) >> 3);
      v16 = v15 + 1;
      __src = v8;
      if (v15 + 1 > 0x666666666666666)
      {
        v32 = 0;
        v30 = v8;
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      if (0x999999999999999ALL * (-v8 >> 3) > v16)
      {
        v16 = 0x999999999999999ALL * (-v8 >> 3);
      }

      if (0xCCCCCCCCCCCCCCCDLL * (-v8 >> 3) >= 0x333333333333333)
      {
        v17 = 0x666666666666666;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (v17 <= 0x666666666666666)
        {
          operator new();
        }

        v32 = 0;
        v30 = __src;
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v18 = 40 * v15;
      *v18 = v10;
      *(v18 + 8) = v11;
      *(v18 + 16) = v29;
      *(v18 + 32) = v13;
      *(v18 + 36) = 0;
      v7 = 40 * v15 + 40;
      v19 = (v18 + 40 * (v14 / -40));
      memcpy(v19, __src, v14);
      if (__src)
      {
        operator delete(__src);
      }

      v8 = v19;
      ++a3;
      ++v5;
      --v9;
    }

    while (v9);
    v31 = v7;
    v32 = 0;
    this = v25;
  }

  v30 = v8;
  HGRenderer::RenderNodes(this, &v30, 1, a4, a5, &__p);
  v20 = __p;
  if (__p)
  {
    v21 = v28;
    v22 = __p;
    if (v28 != __p)
    {
      do
      {
        v24 = *(v21 - 1);
        v21 -= 8;
        v23 = v24;
        if (v24)
        {
          (*(*v23 + 24))(v23);
        }
      }

      while (v21 != v20);
      v22 = __p;
    }

    v28 = v20;
    operator delete(v22);
  }

  if (v8)
  {
    v31 = v8;
    operator delete(v8);
  }
}

void sub_25FCA4B54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (v20)
  {
    operator delete(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGRenderer::GetBitmap(uint64_t a1, uint64_t a2, char *a3)
{
  if ((*(a2 + 12) & 0x30) != 0)
  {
    HGLogger::warning("  ERROR : bitmap is on GPU (with CPU renderer).", a2, a3);
    return 0;
  }

  if (*(a2 + 16) != a3)
  {
    v8 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v8, *(a2 + 20), a2);
    v9 = HGObject::operator new(0x1F0uLL);
    HGBitmapLoader::HGBitmapLoader(v9, v8);
    v3 = (*(*a1 + 56))(a1, *(a2 + 20), *(a2 + 28), a3, v9, 1);
    if (v9)
    {
      (*(*v9 + 24))(v9);
    }

    if (v8)
    {
      (*(*v8 + 24))(v8);
    }

    return v3;
  }

  (*(*a2 + 16))(a2);
  return a2;
}

void sub_25FCA4D0C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

HGNode *HGRenderer::GetOutput(HGRenderer *this, HGNode *a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((*(a2 + 136) & 2) != 0)
  {
    return *(a2 + 18);
  }

  if (*(a2 + 22) >= 1)
  {
    v4 = **(a2 + 10);
    if (v4)
    {
      if (*(v4 + 16))
      {
        if ((*(*a2 + 360))(a2))
        {
          v5 = *(**(a2 + 10) + 16);
          if ((*(*v5 + 360))(v5))
          {
            if (HGRenderer::IsMergeable(this, a2, 0, 0))
            {
              v6 = *(**(a2 + 10) + 16);
              (*(*v6 + 16))(v6);
              (*(*a2 + 368))(a2, v6);
              (*(*v6 + 24))(v6);
            }
          }
        }
      }
    }

    v7 = *(a2 + 22);
    if (v7 >= 1)
    {
      for (i = 0; i < v7; ++i)
      {
        v9 = *(*(a2 + 10) + 8 * i);
        if (v9)
        {
          v10 = *(v9 + 16);
          if (v10)
          {
            HGRenderer::GetOutput(this, v10);
            v7 = *(a2 + 22);
          }
        }
      }
    }
  }

  GuardedOutput = HGNode::GetGuardedOutput(a2, this);
  Output = a2;
  if (GuardedOutput)
  {
    if (GuardedOutput == a2)
    {
      Output = GuardedOutput;
    }

    else
    {
      Output = HGRenderer::GetOutput(this, GuardedOutput);
    }
  }

  *(a2 + 18) = Output;
  *(a2 + 23) = this;
  *(a2 + 34) |= 2u;
  ++*(this + 173);
  (*(*this + 176))(this, Output);
  return Output;
}

unint64_t HGRenderer::GetStats(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      v3 = *(a1 + 596);
      if (v3 <= 0)
      {
        return 0 / v3;
      }

      v4 = 0;
      v5 = 0;
      do
      {
        v5 += HGExecutionUnit::StackSize(*(*(a1 + 248) + 8 * v4++));
        v6 = *(a1 + 596);
      }

      while (v4 < v6);
      return v5 / v6;
    case 1:
      v26 = *(a1 + 596);
      if (v26 < 1)
      {
        return 0;
      }

      v27 = *(a1 + 248);
      if (v26 == 1)
      {
        v28 = 0;
        result = 0;
LABEL_84:
        v87 = (v27 + 8 * v28);
        v88 = v26 - v28;
        do
        {
          v89 = *v87++;
          result += **(v89 + 416);
          --v88;
        }

        while (v88);
        return result;
      }

      v83 = 0;
      v84 = 0;
      v28 = v26 & 0x7FFFFFFE;
      v85 = v27 + 8;
      v86 = v28;
      do
      {
        v83 += **(*(v85 - 8) + 416);
        v84 += **(*v85 + 416);
        v85 += 16;
        v86 -= 2;
      }

      while (v86);
      result = v84 + v83;
      if (v28 != v26)
      {
        goto LABEL_84;
      }

      return result;
    case 2:
      v17 = *(a1 + 596);
      if (v17 < 1)
      {
        return 0;
      }

      v18 = *(a1 + 248);
      if (v17 == 1)
      {
        v19 = 0;
        result = 0;
LABEL_66:
        v66 = (v18 + 8 * v19);
        v67 = v17 - v19;
        do
        {
          v68 = *v66++;
          result += *(*(v68 + 416) + 8);
          --v67;
        }

        while (v67);
        return result;
      }

      v62 = 0;
      v63 = 0;
      v19 = v17 & 0x7FFFFFFE;
      v64 = v18 + 8;
      v65 = v19;
      do
      {
        v62 += *(*(*(v64 - 8) + 416) + 8);
        v63 += *(*(*v64 + 416) + 8);
        v64 += 16;
        v65 -= 2;
      }

      while (v65);
      result = v63 + v62;
      if (v19 != v17)
      {
        goto LABEL_66;
      }

      return result;
    case 3:
      v20 = *(a1 + 596);
      if (v20 < 1)
      {
        return 0;
      }

      v21 = *(a1 + 248);
      if (v20 == 1)
      {
        v22 = 0;
        result = 0;
LABEL_72:
        v73 = (v21 + 8 * v22);
        v74 = v20 - v22;
        do
        {
          v75 = *v73++;
          result += *(*(v75 + 416) + 16);
          --v74;
        }

        while (v74);
        return result;
      }

      v69 = 0;
      v70 = 0;
      v22 = v20 & 0x7FFFFFFE;
      v71 = v21 + 8;
      v72 = v22;
      do
      {
        v69 += *(*(*(v71 - 8) + 416) + 16);
        v70 += *(*(*v71 + 416) + 16);
        v71 += 16;
        v72 -= 2;
      }

      while (v72);
      result = v70 + v69;
      if (v22 != v20)
      {
        goto LABEL_72;
      }

      return result;
    case 4:
      v11 = *(a1 + 596);
      if (v11 < 1)
      {
        return 0;
      }

      v12 = *(a1 + 248);
      if (v11 == 1)
      {
        v13 = 0;
        result = 0;
LABEL_54:
        v52 = (v12 + 8 * v13);
        v53 = v11 - v13;
        do
        {
          v54 = *v52++;
          result += *(*(v54 + 416) + 24);
          --v53;
        }

        while (v53);
        return result;
      }

      v48 = 0;
      v49 = 0;
      v13 = v11 & 0x7FFFFFFE;
      v50 = v12 + 8;
      v51 = v13;
      do
      {
        v48 += *(*(*(v50 - 8) + 416) + 24);
        v49 += *(*(*v50 + 416) + 24);
        v50 += 16;
        v51 -= 2;
      }

      while (v51);
      result = v49 + v48;
      if (v13 != v11)
      {
        goto LABEL_54;
      }

      return result;
    case 5:
      v29 = *(a1 + 596);
      if (v29 < 1)
      {
        return 0;
      }

      v30 = *(a1 + 248);
      if (v29 == 1)
      {
        v31 = 0;
        result = 0;
LABEL_90:
        v94 = (v30 + 8 * v31);
        v95 = v29 - v31;
        do
        {
          v96 = *v94++;
          result += *(*(v96 + 416) + 32);
          --v95;
        }

        while (v95);
        return result;
      }

      v90 = 0;
      v91 = 0;
      v31 = v29 & 0x7FFFFFFE;
      v92 = v30 + 8;
      v93 = v31;
      do
      {
        v90 += *(*(*(v92 - 8) + 416) + 32);
        v91 += *(*(*v92 + 416) + 32);
        v92 += 16;
        v93 -= 2;
      }

      while (v93);
      result = v91 + v90;
      if (v31 != v29)
      {
        goto LABEL_90;
      }

      return result;
    case 6:
      v35 = *(a1 + 596);
      if (v35 < 1)
      {
        return 0;
      }

      v36 = *(a1 + 248);
      if (v35 == 1)
      {
        v37 = 0;
        result = 0;
LABEL_102:
        v108 = (v36 + 8 * v37);
        v109 = v35 - v37;
        do
        {
          v110 = *v108++;
          result += *(*(v110 + 416) + 40);
          --v109;
        }

        while (v109);
        return result;
      }

      v104 = 0;
      v105 = 0;
      v37 = v35 & 0x7FFFFFFE;
      v106 = v36 + 8;
      v107 = v37;
      do
      {
        v104 += *(*(*(v106 - 8) + 416) + 40);
        v105 += *(*(*v106 + 416) + 40);
        v106 += 16;
        v107 -= 2;
      }

      while (v107);
      result = v105 + v104;
      if (v37 != v35)
      {
        goto LABEL_102;
      }

      return result;
    case 7:
      v23 = *(a1 + 596);
      if (v23 < 1)
      {
        return 0;
      }

      v24 = *(a1 + 248);
      if (v23 == 1)
      {
        v25 = 0;
        result = 0;
LABEL_78:
        v80 = (v24 + 8 * v25);
        v81 = v23 - v25;
        do
        {
          v82 = *v80++;
          result += *(*(v82 + 416) + 48);
          --v81;
        }

        while (v81);
        return result;
      }

      v76 = 0;
      v77 = 0;
      v25 = v23 & 0x7FFFFFFE;
      v78 = v24 + 8;
      v79 = v25;
      do
      {
        v76 += *(*(*(v78 - 8) + 416) + 48);
        v77 += *(*(*v78 + 416) + 48);
        v78 += 16;
        v79 -= 2;
      }

      while (v79);
      result = v77 + v76;
      if (v25 != v23)
      {
        goto LABEL_78;
      }

      return result;
    case 8:
      v38 = *(a1 + 596);
      if (v38 < 1)
      {
        return 0;
      }

      v39 = *(a1 + 248);
      if (v38 == 1)
      {
        v40 = 0;
        result = 0;
LABEL_108:
        v115 = (v39 + 8 * v40);
        v116 = v38 - v40;
        do
        {
          v117 = *v115++;
          result += *(*(v117 + 416) + 56);
          --v116;
        }

        while (v116);
        return result;
      }

      v111 = 0;
      v112 = 0;
      v40 = v38 & 0x7FFFFFFE;
      v113 = v39 + 8;
      v114 = v40;
      do
      {
        v111 += *(*(*(v113 - 8) + 416) + 56);
        v112 += *(*(*v113 + 416) + 56);
        v113 += 16;
        v114 -= 2;
      }

      while (v114);
      result = v112 + v111;
      if (v40 != v38)
      {
        goto LABEL_108;
      }

      return result;
    case 9:
      v14 = *(a1 + 596);
      if (v14 < 1)
      {
        return 0;
      }

      v15 = *(a1 + 248);
      if (v14 == 1)
      {
        v16 = 0;
        result = 0;
LABEL_60:
        v59 = (v15 + 8 * v16);
        v60 = v14 - v16;
        do
        {
          v61 = *v59++;
          result += *(*(v61 + 416) + 72);
          --v60;
        }

        while (v60);
        return result;
      }

      v55 = 0;
      v56 = 0;
      v16 = v14 & 0x7FFFFFFE;
      v57 = v15 + 8;
      v58 = v16;
      do
      {
        v55 += *(*(*(v57 - 8) + 416) + 72);
        v56 += *(*(*v57 + 416) + 72);
        v57 += 16;
        v58 -= 2;
      }

      while (v58);
      result = v56 + v55;
      if (v16 != v14)
      {
        goto LABEL_60;
      }

      return result;
    case 10:
      return *(a1 + 692);
    case 11:
      return *(a1 + 696);
    case 12:
      return *(a1 + 1064) - *(a1 + 1056);
    case 13:
      v32 = *(a1 + 596);
      if (v32 < 1)
      {
        return 0;
      }

      v33 = *(a1 + 248);
      if (v32 == 1)
      {
        v34 = 0;
        result = 0;
LABEL_96:
        v101 = (v33 + 8 * v34);
        v102 = v32 - v34;
        do
        {
          v103 = *v101++;
          result += *(*(v103 + 416) + 80);
          --v102;
        }

        while (v102);
        return result;
      }

      v97 = 0;
      v98 = 0;
      v34 = v32 & 0x7FFFFFFE;
      v99 = v33 + 8;
      v100 = v34;
      do
      {
        v97 += *(*(*(v99 - 8) + 416) + 80);
        v98 += *(*(*v99 + 416) + 80);
        v99 += 16;
        v100 -= 2;
      }

      while (v100);
      result = v98 + v97;
      if (v34 != v32)
      {
        goto LABEL_96;
      }

      return result;
    case 14:
      v8 = *(a1 + 596);
      if (v8 < 1)
      {
        return 0;
      }

      v9 = *(a1 + 248);
      if (v8 == 1)
      {
        v10 = 0;
        result = 0;
LABEL_48:
        v45 = (v9 + 8 * v10);
        v46 = v8 - v10;
        do
        {
          v47 = *v45++;
          result += *(*(v47 + 416) + 88);
          --v46;
        }

        while (v46);
        return result;
      }

      v41 = 0;
      v42 = 0;
      v10 = v8 & 0x7FFFFFFE;
      v43 = v9 + 8;
      v44 = v10;
      do
      {
        v41 += *(*(*(v43 - 8) + 416) + 88);
        v42 += *(*(*v43 + 416) + 88);
        v43 += 16;
        v44 -= 2;
      }

      while (v44);
      result = v42 + v41;
      if (v10 != v8)
      {
        goto LABEL_48;
      }

      return result;
    default:
      return 0;
  }
}

uint64_t HGRenderer::GetLimits(HGRenderer *this, int a2)
{
  if (a2 == 393216)
  {
    return *(this + 102);
  }

  if (a2 == 327680)
  {
    return *(this + 103);
  }

  return 0;
}

BOOL HGRenderer::IsMergeable(HGRenderer *this, HGNode *a2, unsigned int a3, int a4)
{
  if ((a3 & 0x80000000) != 0)
  {
    v6 = *(a2 + 4);
    if ((v6 & 0x26) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 22) > a3)
    {
      v5 = *(*(a2 + 10) + 8 * a3);
      if (v5)
      {
        v6 = *(v5 + 12);
        v7 = *(v5 + 16);
        if (v7)
        {
          v8 = *(v7 + 16);
          v9 = a2;
          v10 = a4;
          Output = HGRenderer::GetOutput(this, v7);
          a4 = v10;
          a2 = v9;
          v6 |= v8 | *(Output + 16);
        }

        if ((v6 & 0x26) == 0)
        {
          goto LABEL_11;
        }

        return 0;
      }
    }

    LOBYTE(v6) = 0;
  }

LABEL_11:
  v13 = *(this + 208) | v6 & 0x40;
  result = v13 != 0;
  if (v13)
  {
    v14 = a4 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    if (*(a2 + 16) < 2uLL)
    {
      return 1;
    }

    v15 = *(a2 + 14);
    v16 = a2 + 120;
    if (v15 == a2 + 120)
    {
      return 1;
    }

    else
    {
      v17 = 0;
      do
      {
        if (HGRenderer::GetOutput(this, **(v15 + 4)) == **(v15 + 4))
        {
          ++v17;
        }

        v18 = *(v15 + 1);
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = *(v15 + 2);
            v14 = *v19 == v15;
            v15 = v19;
          }

          while (!v14);
        }

        v15 = v19;
      }

      while (v19 != v16);
      return v17 < 2;
    }
  }

  return result;
}

uint64_t HGRenderer::GetROI(HGRenderer *this, HGNode *a2)
{
  Output = HGRenderer::GetOutput(this, a2);
  v3 = &HGRectNull;
  if (Output && (*(Output + 136) & 8) != 0)
  {
    v3 = (Output + 168);
  }

  return *v3;
}

HGNode *HGRenderer::GetInput(HGRenderer *this, HGNode *a2, unsigned int a3)
{
  if (a2 && (a3 & 0x80000000) == 0 && *(a2 + 22) > a3 && (v3 = *(*(a2 + 10) + 8 * a3)) != 0)
  {
    return HGRenderer::GetOutput(this, *(v3 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t HGRenderer::CreateDepthBufferManagers(uint64_t this)
{
  if (*(this + 596) > ((*(this + 232) - *(this + 224)) >> 3))
  {
    operator new();
  }

  return this;
}

void StatsAccumulator::~StatsAccumulator(StatsAccumulator *this)
{
  v1 = *this;
  if (*this)
  {
    *(this + 1) = v1;
    operator delete(v1);
  }
}

uint64_t HGRenderer::UpdateLimits(HGRenderer *this, HGLimits *a2, int a3)
{
  *(a2 + 4) = 0;
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 5) = -1;
  *(a2 + 11) = -1;
  v3 = 74448896;
  if ((a3 & 0x4700000) == 0)
  {
    if ((a3 & 0x800000) == 0)
    {
      if ((a3 & 0x8000000) != 0)
      {
        v4 = 32;
        *(a2 + 12) = 32;
        *(a2 + 26) = 0;
      }

      else
      {
        *a2 = 0x1000000;
        *(a2 + 12) = -1;
        v4 = -1;
        *(a2 + 27) = -1;
      }

      goto LABEL_7;
    }

    v3 = 75497472;
  }

  *a2 = v3;
  v4 = 16;
  *(a2 + 12) = 16;
  *(a2 + 27) = 8;
LABEL_7:
  *(a2 + 28) = v4;
  *(a2 + 29) = v4;
  *(a2 + 34) = 0x80000;
  *(a2 + 40) = 8 * ((a3 & 0xF0000) == 393216);
  *(a2 + 41) = 0;
  if ((a3 & 0xF0000) == 0x60000)
  {
    v5 = 1;
  }

  else
  {
    v5 = 8;
  }

  *(a2 + 42) = v5;
  *(a2 + 43) = 0;
  return HGLimits::setnormalized(a2, 0);
}

void StatsAccumulator::StatsAccumulator(StatsAccumulator *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  HGLogger::setLevel("stats", 1);
  v2 = *(this + 1) - *this;
  if ((v2 >> 2) > 0x31)
  {
    if (v2 != 200)
    {
      *(this + 1) = *this + 200;
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, 50 - (v2 >> 2));
  }

  v3 = *(this + 6);
  if (v3 >= 49)
  {
    v3 = 49;
  }

  *(this + 6) = v3;
}

void sub_25FCA5D7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HGRenderer::RenderEnd()
{
  if (__cxa_guard_acquire(&qword_280C5E3D8))
  {
    LOBYTE(_MergedGlobals_20) = 0;
    __cxa_atexit(StaticInitTracker::~StaticInitTracker, &_MergedGlobals_20, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5E3D8);
  }
}

void HGSampler::HGSampler(HGSampler *this, HGExecutionUnit *a2)
{
  HGObject::HGObject(this);
  *v3 = &unk_28721B078;
  *(v3 + 112) = 0;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 16) = a2;
  *(v3 + 48) = xmmword_2603429C0;
  *(v3 + 64) = xmmword_260815920;
  *(v3 + 80) = xmmword_260815930;
  *(v3 + 96) = xmmword_260815940;
  HgcSampler::Create(v3);
}

void HGSampler::~HGSampler(HGSampler *this)
{
  *this = &unk_28721B078;
  HgcSampler::Destroy(*(this + 15));
  v2 = *(this + 3);
  if (v2)
  {
    HGFree(v2);
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721B078;
  HgcSampler::Destroy(*(this + 15));
  v2 = *(this + 3);
  if (v2)
  {
    HGFree(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

void HGSampler::ReadTile(float32x4_t *a1, _DWORD *a2, uint64_t a3, int8x16_t *a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  if (a3)
  {
    HGSampler::GetTile(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    (*(*a2 + 72))(a2, a4, a5, a6, a7);
  }
}

void HGSampler::GetTile(float32x4_t *a1, _DWORD *a2, uint64_t a3, int8x16_t *a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v14 = HIDWORD(a5);
  v15 = HIDWORD(a6);
  v310.i64[0] = a5;
  v310.i64[1] = 0x100000000;
  v311.i64[0] = __PAIR64__(HIDWORD(a5), a6);
  v311.i64[1] = 0x100000000;
  v312.i64[0] = a6;
  v312.i64[1] = 0x100000000;
  v313.i64[0] = __PAIR64__(HIDWORD(a6), a5);
  v313.i64[1] = 0x100000000;
  v310 = vaddq_f32(vcvtq_f32_s32(v310), xmmword_260345860);
  v311 = vaddq_f32(vcvtq_f32_s32(v311), xmmword_260344860);
  v312 = vaddq_f32(vcvtq_f32_s32(v312), xmmword_260815950);
  v313 = vaddq_f32(vcvtq_f32_s32(v313), xmmword_260815960);
  (*(*a3 + 208))(a3, &v310, &v310, 4);
  v16.i32[0] = v310.i32[3];
  v17.i32[0] = v311.i32[3];
  v18.i32[0] = v312.i32[3];
  _Q0.i32[0] = v313.i32[3];
  v297 = v14;
  if (((*&v310.i32[3] < 0.00024414) | (4 * (*&v312.i32[3] < 0.00024414)) | (2 * (*&v311.i32[3] < 0.00024414)) | (8 * (v313.f32[3] < 0.00024414))) == 0xF)
  {
LABEL_39:
    v51 = (*&v310.i32[3] < 0.00024414) | (4 * (*&v312.i32[3] < 0.00024414)) | (2 * (*&v311.i32[3] < 0.00024414)) | (8 * (v313.f32[3] < 0.00024414));
    v52 = a7;
    v296 = v15;
    if (a7)
    {
      v53 = a5;
      v54 = a6;
      _VF = __OFSUB__(v15, v14);
      v55 = v15 - v14;
      if (!((v55 < 0) ^ _VF | (v55 == 0)))
      {
        v56 = 16 * (a6 - a5);
        v57 = 16 * (a6 - v53 + v52);
        v58 = a4;
        do
        {
          bzero(v58, v56);
          v58 = (v58 + v57);
          --v55;
        }

        while (v55);
      }

      if ((a1[7].i8[0] & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v54 = a6;
      v53 = a5;
      bzero(a4, 16 * (a6 - a5) * (v15 - v14));
      if ((a1[7].i8[0] & 1) == 0)
      {
        return;
      }
    }

    _Q0.i32[0] = 0;
    v16.i32[0] = 15;
    v18.i32[0] = v51;
    a4[((v296 - v297) >> 1) * (v54 - v53 + v52) + ((v54 - v53) >> 1)] = vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v18, _Q0), 0), xmmword_260344950, vbslq_s8(vdupq_lane_s32(*&vceqq_s32(v18, v16), 0), xmmword_2603431B0, xmmword_260343890));
    return;
  }

  if (*&v310.i32[3] >= 0.00024414)
  {
    v23 = *v310.i8;
    *v25.f32 = vdiv_f32(*v310.i8, vdup_lane_s32(*v16.f32, 0));
    v24 = v310.i32[2];
    v25.f32[2] = *&v310.i32[2] / *&v310.i32[3];
    v25.i32[3] = v310.i32[3];
    if (*&v311.i32[3] < 0.00024414)
    {
      goto LABEL_8;
    }

LABEL_28:
    *v29.f32 = vdiv_f32(*v311.i8, vdup_lane_s32(v17, 0));
    v29.f32[2] = *&v311.i32[2] / *&v311.i32[3];
    v29.i32[3] = v311.i32[3];
    if (*&v312.i32[3] < 0.00024414)
    {
      goto LABEL_13;
    }

LABEL_29:
    *v33.f32 = vdiv_f32(*v312.i8, vdup_lane_s32(*v18.f32, 0));
    v33.f32[2] = *&v312.i32[2] / *&v312.i32[3];
    v33.i32[3] = v312.i32[3];
    v34 = xmmword_260345860;
    if (v313.f32[3] < 0.00024414)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v20 = 2;
  if (v313.f32[3] >= 0.00024414)
  {
    v20 = 3;
  }

  if (*&v311.i32[3] >= 0.00024414)
  {
    v20 = 1;
  }

  v21 = (&v310 + v20);
  v22 = (0.00024414 - *&v310.i32[3]) / (v21[1].f32[1] - *&v310.i32[3]);
  v23 = *v310.i8;
  *v25.f32 = vmul_f32(vadd_f32(*v310.i8, vmul_n_f32(vsub_f32(*v21, *v310.i8), v22)), vdup_n_s32(0x45800000u));
  v24 = v310.i32[2];
  v25.f32[2] = (*&v24 + (v22 * (v21[1].f32[0] - *&v24))) * 4096.0;
  v25.i32[3] = 964689920;
  if (*&v311.i32[3] >= 0.00024414)
  {
    goto LABEL_28;
  }

LABEL_8:
  v26 = 3;
  if (*&v310.i32[3] >= 0.00024414)
  {
    v26 = 0;
  }

  if (*&v312.i32[3] >= 0.00024414)
  {
    v26 = 2;
  }

  v27 = (&v310 + v26);
  v28 = (0.00024414 - *&v311.i32[3]) / (v27[1].f32[1] - *&v311.i32[3]);
  *v29.f32 = vmul_f32(vadd_f32(*v311.i8, vmul_n_f32(vsub_f32(*v27, *v311.i8), v28)), vdup_n_s32(0x45800000u));
  v29.f32[2] = (*&v311.i32[2] + (v28 * (v27[1].f32[0] - *&v311.i32[2]))) * 4096.0;
  v29.i32[3] = 964689920;
  if (*&v312.i32[3] >= 0.00024414)
  {
    goto LABEL_29;
  }

LABEL_13:
  v30 = *&v311.i32[3] >= 0.00024414;
  if (v313.f32[3] >= 0.00024414)
  {
    v30 = 3;
  }

  v31 = (&v310 + v30);
  v32 = (0.00024414 - *&v312.i32[3]) / (v31[1].f32[1] - *&v312.i32[3]);
  *v33.f32 = vmul_f32(vadd_f32(*v312.i8, vmul_n_f32(vsub_f32(*v31, *v312.i8), v32)), vdup_n_s32(0x45800000u));
  v33.f32[2] = (*&v312.i32[2] + (v32 * (v31[1].f32[0] - *&v312.i32[2]))) * 4096.0;
  v33.i32[3] = 964689920;
  v34 = xmmword_260345860;
  if (v313.f32[3] < 0.00024414)
  {
LABEL_16:
    if (*&v310.i32[3] < 0.00024414)
    {
      v35 = &v312;
      v36 = 7;
      if (*&v312.i32[3] >= 0.00024414)
      {
        v36 = 11;
      }

      v16.i32[0] = v310.i32[v36];
      if (*&v312.i32[3] < 0.00024414)
      {
        v35 = &v311;
      }

      v23 = *v35->i8;
      v37 = 6;
      if (*&v312.i32[3] >= 0.00024414)
      {
        v37 = 10;
      }

      v24 = v310.i32[v37];
    }

    v38 = (0.00024414 - v313.f32[3]) / (v16.f32[0] - v313.f32[3]);
    *v39.f32 = vmul_f32(vadd_f32(*v313.f32, vmul_n_f32(vsub_f32(v23, *v313.f32), v38)), vdup_n_s32(0x45800000u));
    v39.f32[2] = (v313.f32[2] + (v38 * (*&v24 - v313.f32[2]))) * 4096.0;
    v39.i32[3] = 964689920;
    v40 = a1[2].i32[1];
    if (v40)
    {
      goto LABEL_25;
    }

LABEL_31:
    v34 = 0uLL;
    __asm { FMOV            V0.4S, #1.0 }

    v41 = 1;
    goto LABEL_33;
  }

LABEL_30:
  *v39.f32 = vdiv_f32(*v313.f32, vdup_lane_s32(*_Q0.f32, 0));
  v39.f32[2] = v313.f32[2] / v313.f32[3];
  v39.i32[3] = v313.i32[3];
  v40 = a1[2].i32[1];
  if (!v40)
  {
    goto LABEL_31;
  }

LABEL_25:
  if (v40 == 1)
  {
    _Q0.i64[0] = 0x4000000040000000;
    _Q0.i64[1] = 0x4000000040000000;
    v41 = 2;
  }

  else
  {
    v34 = xmmword_260815970;
    __asm { FMOV            V0.4S, #4.0 }

    v41 = 4;
  }

LABEL_33:
  v298 = v34;
  v46 = vsubq_f32(vminq_f32(v25, vminq_f32(v29, vminq_f32(v33, v39))), v34);
  v18 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
  v16 = vaddq_f32(v18, vcvtq_f32_s32(vcgtq_f32(v18, v46)));
  v47 = vcvtq_s32_f32(v16).u64[0];
  if (v47 >= a2[7])
  {
    goto LABEL_39;
  }

  if (SHIDWORD(v47) >= a2[8])
  {
    goto LABEL_39;
  }

  v48 = vsubq_f32(vmaxq_f32(v25, vmaxq_f32(v29, vmaxq_f32(v33, v39))), v34);
  v18 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
  v16 = vsubq_f32(v18, vcvtq_f32_s32(vcgtq_f32(v48, v18)));
  _Q0 = vaddq_f32(_Q0, v16);
  v49 = vcvtq_s32_f32(_Q0).u64[0];
  if (v49 <= a2[5] || SHIDWORD(v49) <= a2[6])
  {
    goto LABEL_39;
  }

  if (v39.f32[3] <= v25.f32[3])
  {
    v50 = v25.f32[3] / v39.f32[3];
  }

  else
  {
    v50 = v39.f32[3] / v25.f32[3];
  }

  v295 = a5;
  if (v33.f32[3] <= v29.f32[3])
  {
    v59 = v29.f32[3] / v33.f32[3];
  }

  else
  {
    v59 = v33.f32[3] / v29.f32[3];
  }

  v60 = v29.f32[3] / v25.f32[3];
  if (v29.f32[3] <= v25.f32[3])
  {
    v60 = v25.f32[3] / v29.f32[3];
  }

  v61 = v33.f32[3] / v39.f32[3];
  if (v33.f32[3] <= v39.f32[3])
  {
    v61 = v39.f32[3] / v33.f32[3];
  }

  if (v15 - v14 >= 2)
  {
    v62 = a6 - a5;
    if (a6 - a5 >= 2)
    {
      if (v50 > 1.0625 || (v59 <= 1.0625 ? (v63 = v60 <= 1.0625) : (v63 = 0), v63 ? (v64 = v61 <= 1.0625) : (v64 = 0), !v64))
      {
        v299 = (v15 + v14) >> 1;
        v269 = (a6 + a5) >> 1;
        v302 = 0;
        v300 = 0u;
        v301 = 0u;
        HGExecutionUnit::GetStackState(a1[1].i64[0], &v300);
        v270 = HGRectMake4i(v295, v14, v269, v299);
        HGSampler::GetTile(a1, a2, a3, a4, v270, v271, (a6 - v269 + a7));
        v290 = (v299 - v14) * (v62 + a7);
        HGExecutionUnit::CommitStack(a1[1].i64[0], a4, v290);
        v272 = (a6 + v295) >> 1;
        v273 = HGRectMake4i(v272, v297, a6, v299);
        HGSampler::GetTile(a1, a2, a3, &a4[v269 - v295], v273, v274, v272 - v295 + a7);
        i64 = a4[v290].i64;
        v276 = HGRectMake4i(v295, v299, v272, v15);
        HGSampler::GetTile(a1, a2, a3, i64, v276, v277, (a6 - v269 + a7));
        HGExecutionUnit::CommitStack(a1[1].i64[0], i64, ((v15 - v299) * (v62 + a7)));
        v267 = i64 + 16 * (v272 - v295);
        v83 = HGRectMake4i(v272, v299, a6, v15);
        v85 = v278;
        v90 = v272 - v295 + a7;
        goto LABEL_99;
      }
    }
  }

  v287 = v15 - v14;
  v310.i64[0] = v25.i64[0];
  v284 = v29.i64[0];
  v285 = v25;
  v310.i64[1] = v25.u32[2] | 0x3F80000000000000;
  v311.i64[0] = v29.i64[0];
  v311.i64[1] = v29.u32[2] | 0x3F80000000000000;
  v312.i64[0] = v33.i64[0];
  v282 = v39;
  v283 = v33;
  v312.i64[1] = v33.u32[2] | 0x3F80000000000000;
  v313.i64[0] = v39.i64[0];
  v313.i64[1] = v39.u32[2] | 0x3F80000000000000;
  v291 = *(a2 + 5);
  v65 = *(a2 + 7);
  v66 = v41;
  v288 = v47;
  v293 = v49;
  v67 = HGRectMake4i(-v41, -v41, v41, v41);
  v68 = HGRectGrow(v291, v65, v67);
  v280 = v66;
  *v70.i8 = vmax_s32(vmin_s32(v293, v69), vadd_s32(v288, vdup_n_s32(v66)));
  *v71.i8 = vmax_s32(v288, v68);
  v292 = v71;
  v294 = v70;
  v72 = HGRectMake4i(v71.u32[0], v71.u32[1], v70.u32[0], v70.u32[1]);
  v289 = v73;
  v281 = vsub_s32(*v294.i8, *v292.i8);
  v74 = v281.i32[1] * v281.i32[0];
  if (v74 >= (2 * (*(**(a1[1].i64[0] + 152) + 128))(*(a1[1].i64[0] + 152), 3)))
  {
    if (v287 >= a6 - v295 && v287 >= 2)
    {
      v79 = (v15 + v14) >> 1;
      v302 = 0;
      v300 = 0u;
      v301 = 0u;
      HGExecutionUnit::GetStackState(a1[1].i64[0], &v300);
      v80 = HGRectMake4i(v295, v14, a6, v79);
      HGSampler::GetTile(a1, a2, a3, a4, v80, v81, a7);
      v82 = (v79 - v14) * (a6 - v295 + a7);
      HGExecutionUnit::CommitStack(a1[1].i64[0], a4, v82);
      v83 = HGRectMake4i(v295, v79, a6, v15);
      v85 = v84;
      v86 = a1;
      v87 = a2;
      v88 = a3;
      i8 = a4[v82].i8;
      v90 = a7;
LABEL_100:
      HGSampler::GetTile(v86, v87, v88, i8, v83, v85, v90);
      v279 = a1[1].i64[0];
      v308[0] = v300;
      v308[1] = v301;
      v309 = v302;
      HGExecutionUnit::SetStackState(v279, v308);
      return;
    }

    if (a6 - v295 >= 2)
    {
      v264 = (a6 + v295) >> 1;
      v302 = 0;
      v300 = 0u;
      v301 = 0u;
      HGExecutionUnit::GetStackState(a1[1].i64[0], &v300);
      v265 = HGRectMake4i(v295, v14, v264, v15);
      HGSampler::GetTile(a1, a2, a3, a4, v265, v266, (a6 + a7 - v264));
      HGExecutionUnit::CommitStack(a1[1].i64[0], a4, (a6 - v295 + a7) * v287);
      v267 = a4[v264 - v295].i64;
      v83 = HGRectMake4i(v264, v14, a6, v15);
      v85 = v268;
      v90 = (a7 - v295 + v264);
LABEL_99:
      v86 = a1;
      v87 = a2;
      v88 = a3;
      i8 = v267;
      goto LABEL_100;
    }
  }

  Stack = HGExecutionUnit::GetStack(a1[1].i64[0], 0);
  if (Stack == a4)
  {
    HGExecutionUnit::SwapStack(a1[1].i64[0]);
  }

  v75 = HGExecutionUnit::GetStack(a1[1].i64[0], v74);
  (*(*a2 + 72))(a2, v75, v72, v289, 0);
  a1[8].i64[0] = HgcSampler::Init(a1[7].i64[1], a3, a1[2].i32[1]);
  if (Stack == a4)
  {
    HGExecutionUnit::SwapStack(a1[1].i64[0]);
  }

  v78 = a1[2].i32[1];
  if (v78 <= 1)
  {
    *&v300 = v295;
    *(&v300 + 1) = a6;
    *&v301 = a4;
    DWORD2(v301) = a7 - v295 + a6;
    v304 = v289 - v72;
    v303 = &v75[-16 * (v72 - v295) + -16 * (HIDWORD(v72) - v14) * (v289 - v72)];
    v305 = v72;
    v306 = v289;
    v307 = a1[1].i64[0];
    (a1[8].i64[0])(&v300, a1[7].i64[1], 0);
    return;
  }

  v91 = a6 - v295;
  v92 = a6 - v295 - 1;
  if (a6 - v295 <= 1)
  {
    v92 = 1;
  }

  v93 = v287 - 1;
  if (v287 < 2)
  {
    v93 = 1;
  }

  if (v78 == 2 && v15 > v14)
  {
    v94 = a4;
    v77.i32[0] = 0;
    v95.i32[1] = v281.i32[1];
    v96 = v282;
    v97 = v285;
    v97.i32[3] = 1.0;
    v98 = v283;
    v98.i32[3] = 1.0;
    v96.i32[3] = 1.0;
    *v76.i32 = v92;
    v99 = vdupq_lane_s32(v76, 0);
    *v76.i32 = v93;
    v100 = vdupq_lane_s32(v76, 0);
    v101 = v281.i32[0];
    *v95.i32 = (v281.i32[0] - v280);
    v102 = vdupq_lane_s32(v95, 0);
    v103.i64[0] = 0x80000000800000;
    v103.i64[1] = 0x80000000800000;
    v104 = vnegq_f32(v103);
    v105 = vminq_f32(vmaxq_f32(v99, v103), v104);
    v106 = vminq_f32(vmaxq_f32(vrecpeq_f32(v105), v103), v104);
    v107 = vminq_f32(vmaxq_f32(vmulq_f32(v106, vrecpsq_f32(v105, v106)), v103), v104);
    v108 = vmulq_f32(v107, vrecpsq_f32(v105, v107));
    v109 = vminq_f32(vmaxq_f32(v100, v103), v104);
    v110 = vminq_f32(vmaxq_f32(vrecpeq_f32(v109), v103), v104);
    v111 = vmulq_f32(v110, vrecpsq_f32(v109, v110));
    v110.f32[0] = (v281.i32[1] - v280);
    v112 = vdupq_lane_s32(*v110.f32, 0);
    v113 = vcvtq_f32_s32(v292);
    v114 = vdupq_lane_s64(vsubq_f32(vsubq_f32(v97, v298), v113).i64[0], 0);
    v115 = vminq_f32(vmaxq_f32(v111, v103), v104);
    v116 = vmulq_f32(v115, vrecpsq_f32(v109, v115));
    v117 = vmulq_f32(v108, vsubq_f32(v98, v96));
    v108.i64[1] = v116.i64[0];
    v111.i64[0] = v284;
    v111.i64[1] = v282.i64[0];
    v97.i64[1] = v285.i64[0];
    v118 = vmulq_f32(vsubq_f32(v111, v97), v108);
    v119 = vsubq_f32(v117, v118);
    v120 = vmulq_f32(v116, v119);
    v119.i32[0] = a1[7].i32[0] & 1;
    v121 = vdupq_lane_s32(*&vceqq_s32(v119, v77), 0);
    v122 = vandq_s8(v120, v121);
    v123 = vandq_s8(v118, v121);
    v118.i64[0] = 0x3F0000003F000000;
    v118.i64[1] = 0x3F0000003F000000;
    v124 = vbslq_s8(v121, v114, vdupq_lane_s64(vmulq_f32(vsubq_f32(vcvtq_f32_s32(v294), v113), v118).i64[0], 0));
    v125 = &v75[16 * v281.i32[0]];
    v126 = &v75[32 * v281.i32[0]];
    v127 = &v75[48 * v281.i32[0]];
    __asm
    {
      FMOV            V7.4S, #1.0
      FMOV            V17.4S, #4.0
    }

    v130 = 0uLL;
    do
    {
      v162 = vaddq_f32(v123, vmulq_f32(v122, v130)).u64[0];
      v163 = vaddq_f32(v124, vmulq_f32(v123, v130));
      v164 = vdupq_laneq_s32(v163, 2);
      v165 = vdupq_laneq_s32(v163, 3);
      if (v91 < 4)
      {
        v236 = a6 - v295;
        v166 = xmmword_260343430;
        v237 = v15;
        v238 = v14;
        if (!v91)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v166 = xmmword_260343430;
        v167 = a6 - v295;
        do
        {
          v168 = vmaxq_f32(vminq_f32(vaddq_f32(v164, vmulq_n_f32(v166, v162.f32[0])), v102), 0);
          v169 = vmaxq_f32(vminq_f32(vaddq_f32(v165, vmulq_lane_f32(v166, v162, 1)), v112), 0);
          v170 = vcvtq_f32_s32(vcvtq_s32_f32(v168));
          v171 = vcvtq_f32_s32(vcvtq_s32_f32(v169));
          v172 = vcvtq_s32_f32(vaddq_f32(vmulq_n_f32(v171, v101), v170));
          v173 = vsubq_f32(v168, v170);
          v174 = vsubq_f32(v169, v171);
          v175 = vshlq_n_s32(v172, 4uLL);
          v176 = a1[5];
          v177 = a1[6];
          v178 = vaddq_f32(v176, vmulq_n_f32(v177, v173.f32[0]));
          v179 = vaddq_f32(v176, vmulq_n_f32(v177, v174.f32[0]));
          v180 = vmulq_n_f32(v178, v173.f32[0]);
          v182 = a1[3];
          v181 = a1[4];
          v183 = vaddq_f32(v182, vmulq_n_f32(vaddq_f32(v181, v180), v173.f32[0]));
          v184 = vaddq_f32(v182, vmulq_n_f32(vaddq_f32(v181, vmulq_n_f32(v179, v174.f32[0])), v174.f32[0]));
          v185 = vmulq_n_f32(v183, v184.f32[0]);
          v186 = &v125[v175.i32[0]];
          v187 = vmulq_lane_f32(v183, *v184.f32, 1);
          v188 = vmulq_laneq_f32(v183, v184, 2);
          v189 = &v127[v175.i32[0]];
          v190 = vmulq_laneq_f32(v183, v184, 3);
          *v94 = vaddq_f32(vmulq_laneq_f32(v189[3], v190, 3), vaddq_f32(vmulq_laneq_f32(v189[2], v190, 2), vaddq_f32(vmulq_lane_f32(v189[1], *v190.f32, 1), vaddq_f32(vmulq_n_f32(*v189, v190.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v126[v175.i32[0] + 48], v188, 3), vaddq_f32(vmulq_laneq_f32(*&v126[v175.i32[0] + 32], v188, 2), vaddq_f32(vmulq_lane_f32(*&v126[v175.i32[0] + 16], *v188.f32, 1), vaddq_f32(vmulq_n_f32(*&v126[v175.i32[0]], v188.f32[0]), vaddq_f32(vmulq_laneq_f32(v186[3], v187, 3), vaddq_f32(vmulq_laneq_f32(v186[2], v187, 2), vaddq_f32(vmulq_lane_f32(v186[1], *v187.f32, 1), vaddq_f32(vmulq_n_f32(*v186, v187.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v75[v175.i32[0] + 48], v185, 3), vaddq_f32(vmulq_laneq_f32(*&v75[v175.i32[0] + 32], v185, 2), vaddq_f32(vmulq_lane_f32(*&v75[v175.i32[0] + 16], *v185.f32, 1), vmulq_n_f32(*&v75[v175.i32[0]], v185.f32[0]))))))))))))))));
          v191 = a1[5];
          v192 = a1[6];
          v193 = vaddq_f32(v191, vmulq_lane_f32(v192, *v173.f32, 1));
          v194 = vaddq_f32(v191, vmulq_lane_f32(v192, *v174.f32, 1));
          v195 = vmulq_lane_f32(v193, *v173.f32, 1);
          v197 = a1[3];
          v196 = a1[4];
          v198 = vaddq_f32(v197, vmulq_lane_f32(vaddq_f32(v196, v195), *v173.f32, 1));
          v199 = vaddq_f32(v197, vmulq_lane_f32(vaddq_f32(v196, vmulq_lane_f32(v194, *v174.f32, 1)), *v174.f32, 1));
          v200 = vmulq_n_f32(v198, v199.f32[0]);
          v201 = vmulq_lane_f32(v198, *v199.f32, 1);
          v202 = &v125[v175.i32[1]];
          v203 = vmulq_laneq_f32(v198, v199, 2);
          v204 = vmulq_laneq_f32(v198, v199, 3);
          v205 = &v127[v175.i32[1]];
          v94[1] = vaddq_f32(vmulq_laneq_f32(v205[3], v204, 3), vaddq_f32(vmulq_laneq_f32(v205[2], v204, 2), vaddq_f32(vmulq_lane_f32(v205[1], *v204.f32, 1), vaddq_f32(vmulq_n_f32(*v205, v204.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v126[v175.i32[1] + 48], v203, 3), vaddq_f32(vmulq_laneq_f32(*&v126[v175.i32[1] + 32], v203, 2), vaddq_f32(vmulq_lane_f32(*&v126[v175.i32[1] + 16], *v203.f32, 1), vaddq_f32(vmulq_n_f32(*&v126[v175.i32[1]], v203.f32[0]), vaddq_f32(vmulq_laneq_f32(v202[3], v201, 3), vaddq_f32(vmulq_laneq_f32(v202[2], v201, 2), vaddq_f32(vmulq_lane_f32(v202[1], *v201.f32, 1), vaddq_f32(vmulq_n_f32(*v202, v201.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v75[v175.i32[1] + 48], v200, 3), vaddq_f32(vmulq_laneq_f32(*&v75[v175.i32[1] + 32], v200, 2), vaddq_f32(vmulq_lane_f32(*&v75[v175.i32[1] + 16], *v200.f32, 1), vmulq_n_f32(*&v75[v175.i32[1]], v200.f32[0]))))))))))))))));
          v206 = a1[5];
          v207 = a1[6];
          v208 = vaddq_f32(v206, vmulq_laneq_f32(v207, v173, 2));
          v209 = vaddq_f32(v206, vmulq_laneq_f32(v207, v174, 2));
          v211 = a1[3];
          v210 = a1[4];
          v212 = vaddq_f32(v210, vmulq_laneq_f32(v209, v174, 2));
          v213 = vaddq_f32(v211, vmulq_laneq_f32(vaddq_f32(v210, vmulq_laneq_f32(v208, v173, 2)), v173, 2));
          v214 = vaddq_f32(v211, vmulq_laneq_f32(v212, v174, 2));
          v215 = &v75[v175.i32[2]];
          v216 = vmulq_n_f32(v213, v214.f32[0]);
          v217 = vmulq_lane_f32(v213, *v214.f32, 1);
          v218 = vaddq_f32(vmulq_laneq_f32(*&v125[v175.i32[2] + 48], v217, 3), vaddq_f32(vmulq_laneq_f32(*&v125[v175.i32[2] + 32], v217, 2), vaddq_f32(vmulq_lane_f32(*&v125[v175.i32[2] + 16], *v217.f32, 1), vaddq_f32(vmulq_n_f32(*&v125[v175.i32[2]], v217.f32[0]), vaddq_f32(vmulq_laneq_f32(v215[3], v216, 3), vaddq_f32(vmulq_laneq_f32(v215[2], v216, 2), vaddq_f32(vmulq_lane_f32(v215[1], *v216.f32, 1), vmulq_n_f32(*v215, v216.f32[0]))))))));
          v219 = &v126[v175.i32[2]];
          v220 = vmulq_laneq_f32(v213, v214, 2);
          v221 = &v127[v175.i32[2]];
          v222 = vmulq_laneq_f32(v213, v214, 3);
          v94[2] = vaddq_f32(vmulq_laneq_f32(v221[3], v222, 3), vaddq_f32(vmulq_laneq_f32(v221[2], v222, 2), vaddq_f32(vmulq_lane_f32(v221[1], *v222.f32, 1), vaddq_f32(vmulq_n_f32(*v221, v222.f32[0]), vaddq_f32(vmulq_laneq_f32(v219[3], v220, 3), vaddq_f32(vmulq_laneq_f32(v219[2], v220, 2), vaddq_f32(vmulq_lane_f32(v219[1], *v220.f32, 1), vaddq_f32(vmulq_n_f32(*v219, v220.f32[0]), v218))))))));
          v223 = a1[5];
          v224 = a1[6];
          v225 = vaddq_f32(v223, vmulq_laneq_f32(v224, v173, 3));
          v226 = vaddq_f32(v223, vmulq_laneq_f32(v224, v174, 3));
          v227 = vmulq_laneq_f32(v225, v173, 3);
          v229 = a1[3];
          v228 = a1[4];
          v230 = vaddq_f32(v229, vmulq_laneq_f32(vaddq_f32(v228, v227), v173, 3));
          v231 = vaddq_f32(v229, vmulq_laneq_f32(vaddq_f32(v228, vmulq_laneq_f32(v226, v174, 3)), v174, 3));
          v232 = vmulq_n_f32(v230, v231.f32[0]);
          v233 = vmulq_lane_f32(v230, *v231.f32, 1);
          v234 = vmulq_laneq_f32(v230, v231, 2);
          v235 = vmulq_laneq_f32(v230, v231, 3);
          v166 = vaddq_f32(v166, _Q17);
          v94[3] = vaddq_f32(vmulq_laneq_f32(*&v127[v175.i32[3] + 48], v235, 3), vaddq_f32(vmulq_laneq_f32(*&v127[v175.i32[3] + 32], v235, 2), vaddq_f32(vmulq_lane_f32(*&v127[v175.i32[3] + 16], *v235.f32, 1), vaddq_f32(vmulq_n_f32(*&v127[v175.i32[3]], v235.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v126[v175.i32[3] + 48], v234, 3), vaddq_f32(vmulq_laneq_f32(*&v126[v175.i32[3] + 32], v234, 2), vaddq_f32(vmulq_lane_f32(*&v126[v175.i32[3] + 16], *v234.f32, 1), vaddq_f32(vmulq_n_f32(*&v126[v175.i32[3]], v234.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v125[v175.i32[3] + 48], v233, 3), vaddq_f32(vmulq_laneq_f32(*&v125[v175.i32[3] + 32], v233, 2), vaddq_f32(vmulq_lane_f32(*&v125[v175.i32[3] + 16], *v233.f32, 1), vaddq_f32(vmulq_n_f32(*&v125[v175.i32[3]], v233.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v75[v175.i32[3] + 48], v232, 3), vaddq_f32(vmulq_laneq_f32(*&v75[v175.i32[3] + 32], v232, 2), vaddq_f32(vmulq_lane_f32(*&v75[v175.i32[3] + 16], *v232.f32, 1), vmulq_n_f32(*&v75[v175.i32[3]], v232.f32[0]))))))))))))))));
          v94 += 4;
          v236 = v167 - 4;
          v63 = v167 > 7;
          v167 -= 4;
        }

        while (v63);
        v237 = v15;
        v238 = v14;
        if (!v236)
        {
          goto LABEL_86;
        }
      }

      v239 = vaddq_f32(v164, vmulq_n_f32(v166, v162.f32[0]));
      v240 = vaddq_f32(v165, vmulq_lane_f32(v166, v162, 1));
      v241 = vmaxq_f32(vminq_f32(v239, v102), 0);
      v242 = vmaxq_f32(vminq_f32(v240, v112), 0);
      v243 = vcvtq_f32_s32(vcvtq_s32_f32(v241));
      v244 = vcvtq_f32_s32(vcvtq_s32_f32(v242));
      v245 = vshlq_n_s32(vcvtq_s32_f32(vaddq_f32(vmulq_n_f32(v244, v101), v243)), 4uLL);
      v246 = vsubq_f32(v241, v243);
      v247 = vsubq_f32(v242, v244);
      if (v236 != 2)
      {
        if (v236 != 3)
        {
          goto LABEL_85;
        }

        v248 = a1[5];
        v249 = a1[6];
        v250 = vaddq_f32(v248, vmulq_laneq_f32(v249, v246, 2));
        v251 = vaddq_f32(v248, vmulq_laneq_f32(v249, v247, 2));
        v252 = vmulq_laneq_f32(v250, v246, 2);
        v254 = a1[3];
        v253 = a1[4];
        v255 = vaddq_f32(v254, vmulq_laneq_f32(vaddq_f32(v253, v252), v246, 2));
        v256 = vaddq_f32(v254, vmulq_laneq_f32(vaddq_f32(v253, vmulq_laneq_f32(v251, v247, 2)), v247, 2));
        v257 = vmulq_n_f32(v255, v256.f32[0]);
        v258 = &v125[v245.i32[2]];
        v259 = vmulq_lane_f32(v255, *v256.f32, 1);
        v260 = vaddq_f32(vmulq_laneq_f32(v258[3], v259, 3), vaddq_f32(vmulq_laneq_f32(v258[2], v259, 2), vaddq_f32(vmulq_lane_f32(v258[1], *v259.f32, 1), vaddq_f32(vmulq_n_f32(*v258, v259.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v75[v245.i32[2] + 48], v257, 3), vaddq_f32(vmulq_laneq_f32(*&v75[v245.i32[2] + 32], v257, 2), vaddq_f32(vmulq_lane_f32(*&v75[v245.i32[2] + 16], *v257.f32, 1), vmulq_n_f32(*&v75[v245.i32[2]], v257.f32[0]))))))));
        v261 = vmulq_laneq_f32(v255, v256, 2);
        v262 = &v127[v245.i32[2]];
        v263 = vmulq_laneq_f32(v255, v256, 3);
        v94[2] = vaddq_f32(vmulq_laneq_f32(v262[3], v263, 3), vaddq_f32(vmulq_laneq_f32(v262[2], v263, 2), vaddq_f32(vmulq_lane_f32(v262[1], *v263.f32, 1), vaddq_f32(vmulq_n_f32(*v262, v263.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v126[v245.i32[2] + 48], v261, 3), vaddq_f32(vmulq_laneq_f32(*&v126[v245.i32[2] + 32], v261, 2), vaddq_f32(vmulq_lane_f32(*&v126[v245.i32[2] + 16], *v261.f32, 1), vaddq_f32(vmulq_n_f32(*&v126[v245.i32[2]], v261.f32[0]), v260))))))));
      }

      v131 = a1[5];
      v132 = a1[6];
      v133 = vaddq_f32(v131, vmulq_lane_f32(v132, *v246.f32, 1));
      v134 = vaddq_f32(v131, vmulq_lane_f32(v132, *v247.f32, 1));
      v135 = vmulq_lane_f32(v133, *v246.f32, 1);
      v137 = a1[3];
      v136 = a1[4];
      v138 = vaddq_f32(v137, vmulq_lane_f32(vaddq_f32(v136, v135), *v246.f32, 1));
      v139 = vaddq_f32(v137, vmulq_lane_f32(vaddq_f32(v136, vmulq_lane_f32(v134, *v247.f32, 1)), *v247.f32, 1));
      v140 = vmulq_n_f32(v138, v139.f32[0]);
      v141 = &v125[v245.i32[1]];
      v142 = vmulq_lane_f32(v138, *v139.f32, 1);
      v143 = vaddq_f32(vmulq_laneq_f32(v141[3], v142, 3), vaddq_f32(vmulq_laneq_f32(v141[2], v142, 2), vaddq_f32(vmulq_lane_f32(v141[1], *v142.f32, 1), vaddq_f32(vmulq_n_f32(*v141, v142.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v75[v245.i32[1] + 48], v140, 3), vaddq_f32(vmulq_laneq_f32(*&v75[v245.i32[1] + 32], v140, 2), vaddq_f32(vmulq_lane_f32(*&v75[v245.i32[1] + 16], *v140.f32, 1), vmulq_n_f32(*&v75[v245.i32[1]], v140.f32[0]))))))));
      v144 = vmulq_laneq_f32(v138, v139, 2);
      v145 = &v127[v245.i32[1]];
      v146 = vmulq_laneq_f32(v138, v139, 3);
      v94[1] = vaddq_f32(vmulq_laneq_f32(v145[3], v146, 3), vaddq_f32(vmulq_laneq_f32(v145[2], v146, 2), vaddq_f32(vmulq_lane_f32(v145[1], *v146.f32, 1), vaddq_f32(vmulq_n_f32(*v145, v146.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v126[v245.i32[1] + 48], v144, 3), vaddq_f32(vmulq_laneq_f32(*&v126[v245.i32[1] + 32], v144, 2), vaddq_f32(vmulq_lane_f32(*&v126[v245.i32[1] + 16], *v144.f32, 1), vaddq_f32(vmulq_n_f32(*&v126[v245.i32[1]], v144.f32[0]), v143))))))));
LABEL_85:
      v147 = a1[5];
      v148 = a1[6];
      v149 = vaddq_f32(v147, vmulq_n_f32(v148, v246.f32[0]));
      v150 = vaddq_f32(v147, vmulq_n_f32(v148, v247.f32[0]));
      v151 = vmulq_n_f32(v149, v246.f32[0]);
      v153 = a1[3];
      v152 = a1[4];
      v154 = vaddq_f32(v153, vmulq_n_f32(vaddq_f32(v152, v151), v246.f32[0]));
      v155 = vaddq_f32(v153, vmulq_n_f32(vaddq_f32(v152, vmulq_n_f32(v150, v247.f32[0])), v247.f32[0]));
      v156 = v245.i32[0];
      v157 = vmulq_n_f32(v154, v155.f32[0]);
      v158 = vmulq_lane_f32(v154, *v155.f32, 1);
      v159 = vaddq_f32(vmulq_laneq_f32(*&v125[v245.i32[0] + 48], v158, 3), vaddq_f32(vmulq_laneq_f32(*&v125[v245.i32[0] + 32], v158, 2), vaddq_f32(vmulq_lane_f32(*&v125[v245.i32[0] + 16], *v158.f32, 1), vaddq_f32(vmulq_n_f32(*&v125[v245.i32[0]], v158.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v75[v245.i32[0] + 48], v157, 3), vaddq_f32(vmulq_laneq_f32(*&v75[v245.i32[0] + 32], v157, 2), vaddq_f32(vmulq_lane_f32(*&v75[v245.i32[0] + 16], *v157.f32, 1), vmulq_n_f32(*&v75[v245.i32[0]], v157.f32[0]))))))));
      v160 = vmulq_laneq_f32(v154, v155, 2);
      v161 = vmulq_laneq_f32(v154, v155, 3);
      *v94 = vaddq_f32(vmulq_laneq_f32(*&v127[v156 + 48], v161, 3), vaddq_f32(vmulq_laneq_f32(*&v127[v156 + 32], v161, 2), vaddq_f32(vmulq_lane_f32(*&v127[v156 + 16], *v161.f32, 1), vaddq_f32(vmulq_n_f32(*&v127[v156], v161.f32[0]), vaddq_f32(vmulq_laneq_f32(*&v126[v156 + 48], v160, 3), vaddq_f32(vmulq_laneq_f32(*&v126[v156 + 32], v160, 2), vaddq_f32(vmulq_lane_f32(*&v126[v156 + 16], *v160.f32, 1), vaddq_f32(vmulq_n_f32(*&v126[v156], v160.f32[0]), v159))))))));
      v94 += v236;
LABEL_86:
      v130 = vaddq_f32(v130, _Q7);
      v94 += a7;
      LODWORD(v14) = v238 + 1;
    }

    while (v238 + 1 != v237);
  }
}

uint64_t HGSampler::ReadTileIndirect(uint64_t a1, uint64_t a2, uint64_t a3, float32x4_t *a4, unint64_t a5, unint64_t a6)
{
  v6 = a4;
  v8 = HIDWORD(a5);
  v9 = HIDWORD(a6);
  v10 = a5;
  v10.i32[1] = HIDWORD(a5);
  v11 = vcvtq_f32_s32(vcvtq_s32_f32(*a4));
  v12 = vaddq_s32(vcvtq_s32_f32(vaddq_f32(v11, vcvtq_f32_s32(vcgtq_f32(v11, *a4)))), v10).u64[0];
  v13 = vdupq_lane_s32(v12, 0);
  v14 = vdupq_lane_s32(v12, 1);
  if (SHIDWORD(a5) >= SHIDWORD(a6) || a6 == a5)
  {
    v17.i32[0] = v14.i32[0];
    v16.i32[0] = v13.i32[0];
  }

  else
  {
    v15 = a4;
    v16 = v13;
    v17 = v14;
    v18 = HIDWORD(a5);
    do
    {
      v19 = a5;
      v19.i32[1] = v18;
      v20 = a5 - a6;
      do
      {
        v21 = vcvtq_f32_s32(vcvtq_s32_f32(*v15));
        v22 = vaddq_s32(vcvtq_s32_f32(vaddq_f32(v21, vcvtq_f32_s32(vcgtq_f32(v21, *v15)))), v19);
        v23 = vdupq_lane_s32(*v22.i8, 0);
        v13 = vminq_s32(v13, v23);
        v16 = vmaxq_s32(v16, v23);
        v24 = vdupq_lane_s32(*v22.i8, 1);
        v14 = vminq_s32(v14, v24);
        v17 = vmaxq_s32(v17, v24);
        v19 = vaddq_s32(v19, xmmword_26034A350);
        *v15++ = v22;
      }

      while (!__CFADD__(v20++, 1));
      LODWORD(v18) = v18 + 1;
    }

    while (v18 != HIDWORD(a6));
  }

  v40 = a5;
  v41 = a6;
  v26 = v13.i32[0];
  v27 = v14.i32[0];
  v28 = (v16.i32[0] + 1);
  v29 = (v17.i32[0] + 1);
  v30 = v13.u32[0] | (v14.u32[0] << 32);
  v31 = v28 | (v29 << 32);
  v32 = v28 - v13.i32[0];
  v33 = (v28 - v13.i32[0]) * (v29 - v14.i32[0]);
  v34 = *(a1 + 24);
  if (v33 > *(a1 + 32))
  {
    v38 = a3;
    v39 = a2;
    if (v34)
    {
      HGFree(v34);
    }

    v34 = HGMalloc(16 * v33);
    *(a1 + 24) = v34;
    *(a1 + 32) = v33;
    a3 = v38;
    a2 = v39;
  }

  result = (*(*a1 + 40))(a1, a2, a3, v34, v30, v31, 0);
  if (v41 > v40 && v8 < v9)
  {
    v36 = *(a1 + 24);
    do
    {
      v37 = v41 - v40;
      do
      {
        *v6 = *(v36 + 16 * (v6->i32[0] - v26 + (v6->i32[1] - v27) * v32));
        ++v6;
        --v37;
      }

      while (v37);
      LODWORD(v8) = v8 + 1;
    }

    while (v8 != v9);
  }

  return result;
}

uint64_t HGRenderCinema::HGRenderCinema(uint64_t a1, int a2)
{
  HGNode::HGNode(a1);
  *v6 = &unk_28721B0E0;
  *(v6 + 408) = 0;
  *(v6 + 416) = 0;
  *(v6 + 424) = a2;
  *(v6 + 428) = 0;
  *(v6 + 432) = 100;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v12 = HGObject::operator new(0x1E0uLL);
      HGCinematic::HGCinematic(v12);
      v13 = *(a1 + 408);
      if (v13 != v12)
      {
        if (v13)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      if (!v12)
      {
        return a1;
      }

LABEL_19:
      (*(*v12 + 24))(v12);
      return a1;
    }

    if (a2 == 1)
    {
      v9 = HGObject::operator new(0x1A0uLL);
      HgcCinematicDepthFX_Fog::HgcCinematicDepthFX_Fog(v9);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v10 = HGObject::operator new(0x1A0uLL);
        HgcCinematicDepthFX_ColorPop::HgcCinematicDepthFX_ColorPop(v10);
      case 3:
        v11 = HGObject::operator new(0x1A0uLL);
        HgcCinematicDepthFX_FadeOut::HgcCinematicDepthFX_FadeOut(v11);
      case 4:
        v7 = HGObject::operator new(0x1E0uLL);
        HGCinematic::HGCinematic(v7);
        HGCinematic::setRenderDisparity(v7);
        v8 = *(a1 + 408);
        if (v8 == v7)
        {
          if (v7)
          {
            (*(*v7 + 24))(v7);
          }
        }

        else
        {
          if (v8)
          {
            (*(*v8 + 24))(v8);
          }

          *(a1 + 408) = v7;
        }

        break;
    }
  }

  HGLogger::error("HGRenderCinema : Render FX Type not specified in initialization of node.", v4, v5);
  v12 = HGObject::operator new(0x1E0uLL);
  HGCinematic::HGCinematic(v12);
  v13 = *(a1 + 408);
  if (v13 == v12)
  {
    if (!v12)
    {
      return a1;
    }

    goto LABEL_19;
  }

  if (v13)
  {
LABEL_24:
    (*(*v13 + 24))(v13);
  }

LABEL_25:
  *(a1 + 408) = v12;
  return a1;
}

void sub_25FCA7B24(_Unwind_Exception *a1)
{
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v4 = *(v1 + 416);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(v1 + 408);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

const char *HGRenderCinema::SetFXParameter(const char *result, const char *a2, char *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      if ((*(result + 106) | 2) != 3)
      {
        return result;
      }
    }

    else
    {
      if (a2 != 3)
      {
LABEL_13:

        return HGLogger::error("HGRenderCinema : Valid FX Parameter type not provided while setting parameter value.", a2, a3);
      }

      if (*(result + 106) != 2)
      {
        return result;
      }
    }

    v13 = *(**(result + 51) + 96);
    a5.n128_u64[0] = 0;
    a6.n128_u64[0] = 0;
    a7.n128_u64[0] = 0;

    return v13(a4, a5, a6, a7);
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v7 = *(result + 51);
        if (v7)
        {
          v8 = a4.n128_f32[0];
          if (v9)
          {

            return HGCinematic::setFocusDistance(v9, v8);
          }
        }

        v14 = "HGRenderCinema : Focus distance not set.";

        return HGLogger::warning(v14, a2, a3);
      }

      goto LABEL_13;
    }

    v10 = *(result + 51);
    {
      v14 = "HGRenderCinema : Aperture not set.";

      return HGLogger::warning(v14, a2, a3);
    }

    return HGCinematic::setAperture(v12, v11);
  }
}

const char *HGRenderCinema::SetRenderQuality(HGRenderCinema *this, const char *a2, char *a3)
{
  v3 = *(this + 51);
  {

    return HGCinematic::SetRenderQuality(v5, v4);
  }

  else
  {

    return HGLogger::warning("HGRenderCinema : Render quality not set.", a2, a3);
  }
}

void HGRenderCinema::SetTransferFunction(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *(a1 + 408);
  {
    if (*(a2 + 23) < 0)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      v8 = v5;
      std::string::__init_copy_ctor_external(&__p, v6, v7);
      v5 = v8;
    }

    else
    {
      __p = *a2;
    }

    std::string::operator=(v5 + 18, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    HGLogger::warning("HGRenderCinema : Transfer function not set.", a2, a3);
  }
}

void sub_25FCA80C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *HGRenderCinema::SetDisplayMode(HGRenderCinema *this, const char *a2, char *a3)
{
  v3 = *(this + 51);
  {

    return HGCinematic::setDisplayMode(v5, v4);
  }

  else
  {

    return HGLogger::warning("HGRenderCinema : Display mode not set.", a2, a3);
  }
}

uint64_t HGRenderCinema::GetOutput(HGNode *this, HGRenderer *a2)
{
  v4 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v4 + 120))(v4, 0, Input);
  if ((*(this + 106) | 4) == 4)
  {
    v6 = *(this + 51);
    v7 = HGRenderer::GetInput(a2, this, 1u);
    (*(*v6 + 120))(v6, 1, v7);
  }

  else
  {
    v9 = HGObject::operator new(0x1E0uLL);
    HGCinematic::HGCinematic(v9);
    v10 = HGRenderer::GetInput(a2, this, 0);
    (*(*v9 + 120))(v9, 0, v10);
    v11 = HGRenderer::GetInput(a2, this, 1u);
    (*(*v9 + 120))(v9, 1, v11);
    HGCinematic::setRenderDisparity(v9);
    (*(**(this + 51) + 120))(*(this + 51), 1, v9);
  }

  return *(this + 51);
}

PTGlobalRenderingMetadata *HGRenderCinema::SetGlobalRenderingMetadata(HGRenderCinema *this, PTGlobalRenderingMetadata *a2, char *a3)
{
  v3 = *(this + 51);
  {

    return HGCinematic::SetGlobalRenderingMetadata(v5, a2);
  }

  else
  {

    return HGLogger::warning("HGRenderCinema : GlobalRenderingMetadata not set", a2, a3);
  }
}

const char *HGRenderCinema::SetTimedRenderingMetadata(uint64_t a1, void *a2, char *a3)
{
  v3 = *(a1 + 408);
  {

    return HGCinematic::SetTimedRenderingMetadata(v5, a2);
  }

  else
  {

    return HGLogger::warning("HGRenderCinema : TimedRenderingMetadata not set", a2, a3);
  }
}

void HGRenderCinema::~HGRenderCinema(HGNode *this)
{
  *this = &unk_28721B0E0;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28721B0E0;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

void sub_25FCA8838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a9);
  MEMORY[0x2666E9F00](v11, 0x10B3C40C3EE8A59);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_25FCA886C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::releaseObject(std::mutex *a1, uint64_t a2)
{
  v3[0] = a2;
  std::mutex::lock(a1 + 4);
  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,true>::retrieveObject(&a1->__m_.__opaque[40], v3);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::clear(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (*(a1 + 224))
  {
    v2 = 0;
    do
    {
      HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::_pop_front((a1 + 152));
      --v2;
    }

    while (*(a1 + 224));
    if (v2)
    {
      (*(*a1 + 24))(a1);
      (*(*a1 + 40))(a1);
      kdebug_trace();
    }
  }

  std::mutex::unlock((a1 + 256));
}

void sub_25FCA923C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FCA9250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_25FCA927C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FCA9290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FCA92A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  MEMORY[0x2666E9F00](v3, 0x10B3C40C3EE8A59);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_25FCA92D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::newObject(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || (v4 = *(a1 + 32)) == 0)
  {
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    v7 = *a2;
    v8[1] = *(a2 + 16);
    v8[2] = v5;
    v8[3] = v6;
    v9 = *(a2 + 64);
    v8[0] = v7;
  }

  else
  {
    (*(*v4 + 16))(v8);
  }

  std::mutex::lock((a1 + 256));
  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::retrieveObject(a1 + 152, v8);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::releaseObject(std::mutex *a1, uint64_t a2)
{
  v3 = a2;
  std::mutex::lock(a1 + 4);
  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,true>::retrieveObject(&a1->__m_.__opaque[40], &v3);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::clear(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (*(a1 + 224))
  {
    v2 = 0;
    do
    {
      HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::_pop_front((a1 + 152));
      --v2;
    }

    while (*(a1 + 224));
    if (v2)
    {
      (*(*a1 + 24))(a1);
      (*(*a1 + 40))(a1);
      kdebug_trace();
    }
  }

  std::mutex::unlock((a1 + 256));
}

void std::__shared_ptr_emplace<anonymous namespace::TextureAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28721B348;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t anonymous namespace::TextureAllocator::allocate(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:*(a2 + 16) width:*a2 height:*(a2 + 8) mipmapped:0];
  [v4 setUsage:*(a2 + 24)];
  [v4 setStorageMode:*(a2 + 32)];
  [v4 setTextureType:*(a2 + 40)];
  [v4 setSampleCount:*(a2 + 44)];
  return [*(a1 + 8) newTextureWithDescriptor:v4];
}

void anonymous namespace::TextureAllocator::release(uint64_t a1, void *a2)
{
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::~Pool(a1, a2);

  JUMPOUT(0x2666E9F00);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::service(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::service((a1 + 152), a1))
  {
    (*(*a1 + 24))(a1);
    (*(*a1 + 40))(a1);
    kdebug_trace();
  }

  std::mutex::unlock((a1 + 256));
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::trace(std::mutex *a1)
{
  std::mutex::lock(a1 + 4);
  sig = a1 + 5;
  if (a1[5].__m_.__opaque[15] < 0)
  {
    sig = sig->__m_.__sig;
  }

  (*(a1->__m_.__sig + 24))(a1, sig);
  (*(a1->__m_.__sig + 16))(a1);
  (*(a1->__m_.__sig + 40))(a1);
  (*(a1->__m_.__sig + 32))(a1);
  std::mutex::unlock(a1 + 4);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::log(uint64_t a1, const char *a2)
{
  v3 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    v3 = *v3;
    if (HGLogger::getLevel(v3, a2) < 2)
    {
      return;
    }
  }

  else if (HGLogger::getLevel((a1 + 344), a2) < 2)
  {
    return;
  }

  std::mutex::lock((a1 + 256));
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    v7 = (a1 + 320);
    if (*(a1 + 343) < 0)
    {
      v7 = *v7;
    }

    HGLogger::log(v3, 2, "pool '%s' (%p)\n", v4, v5, v7, a1);
  }

  HGLogger::indent(1);
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log(v3, 2, "live objects:\n", v8, v9);
  }

  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,true>::log((a1 + 48), v3);
  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log(v3, 2, "free objects:\n", v11, v12);
  }

  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::log((a1 + 152), v3);
  HGLogger::indent(0xFFFFFFFFLL);

  std::mutex::unlock((a1 + 256));
}

int64x2_t *HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::~List(int64x2_t *a1)
{
  while (a1[4].i64[1])
  {
    HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::_pop_front(a1);
  }

  std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>>::~deque[abi:ne200100](a1[2].i64);
  v2 = a1[1].i64[1];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1->i64[1];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::_pop_front(int64x2_t *a1)
{
  v2 = (*(a1[2].i64[1] + 8 * (a1[4].i64[0] / 0x2EuLL)) + 88 * (a1[4].i64[0] % 0x2EuLL));
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -(v6 * v5 * HGMetalUtils::bytesPerPixel(v7)));
  v8 = a1[2].i64[1];
  v9 = vaddq_s64(a1[4], xmmword_260342880);
  a1[4] = v9;
  if (v9.i64[0] >= 0x5CuLL)
  {
    operator delete(*v8);
    a1[2].i64[1] += 8;
    a1[4].i64[0] -= 46;
  }

  HGMetalUtils::bytesPerPixel(v7);
  kdebug_trace();
  kdebug_trace();
  (*(*a1->i64[0] + 24))(a1->i64[0], v4);
  if (v3)
  {
    (*(*a1->i64[0] + 24))(a1->i64[0], v3);
  }

  return kdebug_trace();
}

uint64_t std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 23;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 46;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  *a1 = &unk_28721B3F0;
  HGPool::unregisterPool(a1, a2);
  if (*(a1 + 367) < 0)
  {
    operator delete(*(a1 + 344));
    if ((*(a1 + 343) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_16:
    operator delete(*(a1 + 320));
    goto LABEL_3;
  }

  if (*(a1 + 343) < 0)
  {
    goto LABEL_16;
  }

LABEL_3:
  std::mutex::~mutex((a1 + 256));
  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::~List((a1 + 152));
  std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>>::~deque[abi:ne200100](a1 + 80);
  v3 = *(a1 + 72);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 56);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 40);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(a1 + 24);
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::service(int64x2_t *a1, uint64_t a2)
{
  if (!a1[1].i64[0] || !a1[4].i64[1])
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = atomic_load(&a1[5]);
    if (v5 <= (*(*a1[1].i64[0] + 16))(a1[1].i64[0], a2))
    {
      v6 = atomic_load(&a1[5].u64[1]);
      if (v6 <= (*(*a1[1].i64[0] + 24))(a1[1].i64[0], a2))
      {
        v7 = a1[4].u64[0];
        v8 = *(a1[2].i64[1] + 8 * (v7 / 0x2E));
        v9 = std::chrono::steady_clock::now().__d_.__rep_ - *(v8 + 88 * (v7 % 0x2E) + 64);
        if (v9 <= (*(*a1[1].i64[0] + 32))(a1[1].i64[0], a2))
        {
          break;
        }
      }
    }

    HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::_pop_front(a1);
    ++v4;
  }

  while (a1[4].i64[1]);
  return v4;
}

void HGPool::EntryTrace<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::trace(uint64_t a1)
{
  HGPool::DescriptorString<HGMetalTexturePool::Descriptor>::str(a1 + 16);
  HGMetalUtils::bytesPerPixel(*(a1 + 32));
  if (*(a1 + 80) == 1)
  {
    if (v3 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    std::chrono::steady_clock::now();
    if (v3 < 0)
    {
LABEL_6:
      operator delete(__p);
    }
  }
}

void sub_25FCAACC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGPool::DescriptorString<HGMetalTexturePool::Descriptor>::str(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  v2 = MEMORY[0x2666E9B80](&v11, *a1);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " x ", 3);
  v4 = MEMORY[0x2666E9B80](v3, *(a1 + 8));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v6 = HGMetalUtils::toString(*(a1 + 16));
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  std::stringbuf::str();
  v10[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v8;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v15);
}

void sub_25FCAAEBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,true>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 / 0x2E));
      v7 = *v6 + 88 * (v5 % 0x2E);
      v8 = *(v4 + 8 * ((a1[9] + v5) / 0x2E)) + 88 * ((a1[9] + v5) % 0x2E);
      while (v7 != v8)
      {
        v9 = *(v7 + 16);
        *__p = *v7;
        v21 = v9;
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 64);
        v25 = *(v7 + 80);
        v23 = v11;
        v24 = v12;
        v22 = v10;
        HGPool::EntryLog<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::log(__p, a2, 3);
        v7 += 88;
        if (v7 - *v6 == 4048)
        {
          v13 = v6[1];
          ++v6;
          v7 = v13;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v14 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v14);
    v17 = atomic_load(HGLogger::_enabled);
    if (v17)
    {
      if ((SBYTE7(v21) & 0x80u) == 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      v19 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v15, v16, v18, v19);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FCAB054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::log(void *a1, HGLogger *a2)
{
  if (a1[9])
  {
    HGLogger::indent(1);
    v4 = a1[5];
    if (a1[6] != v4)
    {
      v5 = a1[8];
      v6 = (v4 + 8 * (v5 / 0x2E));
      v7 = *v6 + 88 * (v5 % 0x2E);
      v8 = *(v4 + 8 * ((a1[9] + v5) / 0x2E)) + 88 * ((a1[9] + v5) % 0x2E);
      while (v7 != v8)
      {
        v9 = *(v7 + 16);
        *__p = *v7;
        v21 = v9;
        v10 = *(v7 + 32);
        v11 = *(v7 + 48);
        v12 = *(v7 + 64);
        v25 = *(v7 + 80);
        v23 = v11;
        v24 = v12;
        v22 = v10;
        HGPool::EntryLog<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::log(__p, a2, 3);
        v7 += 88;
        if (v7 - *v6 == 4048)
        {
          v13 = v6[1];
          ++v6;
          v7 = v13;
        }
      }
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v14 = atomic_load(a1 + 11);
    HGLoggerUtils::bytesPrettyString(v14);
    v17 = atomic_load(HGLogger::_enabled);
    if (v17)
    {
      if ((SBYTE7(v21) & 0x80u) == 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      v19 = atomic_load(a1 + 10);
      HGLogger::log(a2, 2, "total : %s (%lu)\n", v15, v16, v18, v19);
    }

    if (SBYTE7(v21) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25FCAB1F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void HGPool::EntryLog<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::log(uint64_t *a1, HGLogger *a2, const char *a3)
{
  v6 = *a1;
  v7 = (a1 + 2);
  v8 = a1[3] * a1[2];
  v9 = HGMetalUtils::bytesPerPixel(a1[4]);
  HGLoggerUtils::bytesPrettyString((v8 * v9));
  HGPool::DescriptorString<HGMetalTexturePool::Descriptor>::str(v7);
  if (*(a1 + 80) == 1)
  {
    v12 = atomic_load(HGLogger::_enabled);
    if (v12)
    {
      v13 = v26;
      if (v27 < 0)
      {
        v13 = v26[0];
      }

      v14 = v24;
      if (v25 < 0)
      {
        v14 = v24[0];
      }

      HGLogger::log(a2, a3, "%p %10s  %4lu   %s\n", v10, v11, v6, v13, a1[9], v14);
    }

    goto LABEL_17;
  }

  v15.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  HGLoggerUtils::timePrettyString((v15.__d_.__rep_ - a1[8]));
  v18 = atomic_load(HGLogger::_enabled);
  if (v18)
  {
    v19 = v26;
    if (v27 < 0)
    {
      v19 = v26[0];
    }

    p_p = &__p;
    if (v23 < 0)
    {
      p_p = __p;
    }

    v21 = v24;
    if (v25 < 0)
    {
      v21 = v24[0];
    }

    HGLogger::log(a2, a3, "%p %10s  %4lu  %10s   %s\n", v16, v17, v6, v19, a1[9], p_p, v21);
  }

  if ((v23 & 0x80000000) == 0)
  {
LABEL_17:
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_21;
  }

  operator delete(__p);
  if ((v25 & 0x80000000) == 0)
  {
LABEL_18:
    if ((v27 & 0x80000000) == 0)
    {
      return;
    }

LABEL_22:
    operator delete(v26[0]);
    return;
  }

LABEL_21:
  operator delete(v24[0]);
  if (v27 < 0)
  {
    goto LABEL_22;
  }
}

void sub_25FCAB3C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((a25 & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v25 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a25 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a20);
  if ((*(v25 - 49) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*(v25 - 72));
  _Unwind_Resume(exception_object);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>::newObject(uint64_t a1, __int128 *a2, char a3)
{
  if ((a3 & 1) != 0 || (v4 = *(a1 + 32)) == 0)
  {
    v5 = a2[1];
    v6[0] = *a2;
    v6[1] = v5;
    v6[2] = a2[2];
  }

  else
  {
    (*(*v4 + 16))(v6);
  }

  std::mutex::lock((a1 + 256));
  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::retrieveObject(a1 + 152, v6);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::retrieveObject(uint64_t a1, __int128 *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v2 = a2[1];
  v9 = *a2;
  v10 = v2;
  v11 = a2[2];
  v3 = 0;
  v4 = v9;
  v5 = v2;
  v6 = v11;
  v7 = 0;
  operator new();
}

void sub_25FCABDF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FCABE18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  *(a3 + 28) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 1;
  v5 = a1[4].u64[0];
  v6 = v5 + a1[4].i64[1];
  v7 = v6 / 0x2E;
  v8 = a1[2].i64[1];
  if (a1[3].i64[0] != v8)
  {
    v9 = *(v8 + 8 * (v6 / 0x2E)) + 88 * (v6 % 0x2E);
    v10 = *(v8 + 8 * (v5 / 0x2E)) + 88 * (v5 % 0x2E);
    v11 = v9;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v28 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12 == a2)
  {
    v28 = v27;
    (*(*v12 + 24))(v12, v27);
  }

  else
  {
    v28 = (*(*v12 + 16))(v12);
  }

LABEL_8:
  v13 = (v8 + 8 * v7);
  if (v11 != v10)
  {
    v16 = *v13;
    do
    {
      v17 = v9;
      if (v9 == v16)
      {
        v17 = *(v13 - 1) + 4048;
      }

      if (!v28)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v28 + 6))(v28, v17 - 88))
      {
        break;
      }

      v16 = *v13;
      if (v9 == *v13)
      {
        v18 = *--v13;
        v16 = v18;
        v9 = v18 + 4048;
      }

      v9 -= 88;
    }

    while (v10 != v9);
  }

  result = v28;
  if (v28 == v27)
  {
    result = (*(*v28 + 4))(v28);
    v15 = a1[2].i64[1];
    if (a1[3].i64[0] != v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v9)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v28)
  {
    result = (*(*v28 + 5))();
  }

  v15 = a1[2].i64[1];
  if (a1[3].i64[0] == v15)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v15 + 8 * (a1[4].i64[0] / 0x2EuLL)) + 88 * (a1[4].i64[0] % 0x2EuLL) == v9)
  {
    return result;
  }

LABEL_25:
  v19 = v9 - *v13;
  v20 = 0x2E8BA2E8BA2E8BA3 * (v19 >> 3);
  if (v19 < 89)
  {
    v24 = 46 - v20;
    v22 = &v13[-(v24 / 0x2E)];
    v23 = *v22 + 88 * (46 * (v24 / 0x2E) - v24) + 3960;
  }

  else
  {
    v21 = v20 - 1;
    v22 = &v13[v21 / 0x2E];
    v23 = *v22 + 88 * (v21 % 0x2E);
  }

  v25 = *(v23 + 48);
  *(a3 + 32) = *(v23 + 32);
  *(a3 + 48) = v25;
  *(a3 + 64) = *(v23 + 64);
  *(a3 + 80) = *(v23 + 80);
  v26 = *(v23 + 16);
  *a3 = *v23;
  *(a3 + 16) = v26;
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -(*(a3 + 24) * *(a3 + 16) * HGMetalUtils::bytesPerPixel(*(a3 + 32))));
  return std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>>::erase(a1 + 2, v22, v23);
}

void sub_25FCAC1C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FCAC1D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void **std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>>::erase(int64x2_t *a1, void *a2, char *a3)
{
  v6 = a1[2].u64[0];
  v7 = a1->i64[1];
  v8 = a1[1].i64[0];
  v9 = (v7 + 8 * (v6 / 0x2E));
  if (v8 == v7)
  {
    v10 = 0;
    if (!a3)
    {
LABEL_3:
      v11 = 0;
      v12 = 1;
      v13 = (v7 + 8 * (v6 / 0x2E));
      v14 = a3 - *v9;
      v15 = 0x2E8BA2E8BA2E8BA3 * (v14 >> 3);
      if (v14 < -87)
      {
        goto LABEL_12;
      }

LABEL_10:
      v22 = v15 + 1;
      v23 = &v13[v22 / 0x2E];
      v24 = *v23 + 88 * (v22 % 0x2E);
      goto LABEL_13;
    }
  }

  else
  {
    v10 = *v9 + 88 * (v6 % 0x2E);
    if (a3 == v10)
    {
      goto LABEL_3;
    }
  }

  v16 = 46 * (a2 - v9) + 0x2E8BA2E8BA2E8BA3 * (&a3[-*a2] >> 3);
  v17 = *v9;
  v18 = (v10 - *v9) >> 3;
  v11 = v16 - 0x2E8BA2E8BA2E8BA3 * v18;
  v12 = v16 == 0x2E8BA2E8BA2E8BA3 * v18;
  if (!v11)
  {
    a3 = v10;
    v13 = (v7 + 8 * (v6 / 0x2E));
    v25 = v10 - v17;
    v15 = 0x2E8BA2E8BA2E8BA3 * ((v10 - v17) >> 3);
    if (v25 >= -87)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v16 < 1)
  {
    v13 = &v9[-((45 - v16) / 0x2EuLL)];
    v19 = *v13;
    a3 = *v13 + 88 * (46 * ((45 - v16) / 0x2EuLL) - (45 - v16)) + 3960;
    v20 = a1[2].i64[1];
    if (v11 <= (v20 - 1) >> 1)
    {
LABEL_9:
      v21 = a3 - v19;
      v15 = 0x2E8BA2E8BA2E8BA3 * ((a3 - v19) >> 3);
      if (v21 >= -87)
      {
        goto LABEL_10;
      }

LABEL_12:
      v26 = 44 - v15;
      v23 = &v13[-(v26 / 0x2E)];
      v24 = *v23 + 88 * (46 * (v26 / 0x2E) - v26) + 3960;
LABEL_13:
      std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,HGMetalTexturePool::Descriptor*,HGMetalTexturePool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,long,46l>,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,0>(v9, v10, v13, a3, v23, v24, v46);
      v27 = vaddq_s64(a1[2], xmmword_260342880);
      a1[2] = v27;
      v28 = v27.i64[0];
      v29 = a1->i64[1];
      if (v27.i64[0] >= 0x5CuLL)
      {
        operator delete(*v29);
        v29 = (a1->i64[1] + 8);
        a1->i64[1] = v29;
        v28 = a1[2].i64[0] - 46;
        a1[2].i64[0] = v28;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v13 = &v9[v16 / 0x2EuLL];
    v19 = *v13;
    a3 = *v13 + 88 * (v16 % 0x2EuLL);
    v20 = a1[2].i64[1];
    if (v11 <= (v20 - 1) >> 1)
    {
      goto LABEL_9;
    }
  }

  v33 = a3 - v19;
  v34 = 0x2E8BA2E8BA2E8BA3 * ((a3 - v19) >> 3);
  if (v33 < -87)
  {
    v38 = 44 - v34;
    v36 = &v13[-(v38 / 0x2E)];
    v37 = *v36 + 88 * (46 * (v38 / 0x2E) - v38) + 3960;
  }

  else
  {
    v35 = v34 + 1;
    v36 = &v13[v35 / 0x2E];
    v37 = *v36 + 88 * (v35 % 0x2E);
  }

  v39 = v20 + v6;
  v40 = (v20 + v6) / 0x2E;
  v41 = (v7 + 8 * v40);
  if (v8 == v7)
  {
    v42 = 0;
  }

  else
  {
    v42 = *v41 + 88 * (v39 - 46 * v40);
  }

  v46[0] = v13;
  v46[1] = a3;
  std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,HGMetalTexturePool::Descriptor*,HGMetalTexturePool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,long,46l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*>>(v36, v37, v41, v42, v46);
  v29 = a1->i64[1];
  v43 = a1[1].i64[0];
  v44 = 46 * (v43 - v29) - 1;
  v28 = a1[2].u64[0];
  v45 = a1[2].i64[1];
  a1[2].i64[1] = v45 - 1;
  if (v43 == v29)
  {
    v44 = 0;
  }

  if (v44 - (v45 + v28) + 1 >= 0x5C)
  {
    operator delete(*(v43 - 1));
    v12 = 0;
    v29 = a1->i64[1];
    a1[1].i64[0] -= 8;
    v28 = a1[2].u64[0];
  }

  else
  {
    v12 = 0;
  }

LABEL_15:
  result = &v29[v28 / 0x2E];
  if (a1[1].i64[0] == v29)
  {
    v31 = 0;
    if (v12)
    {
      return result;
    }
  }

  else
  {
    v31 = *result + 88 * (v28 % 0x2E);
    if (v12)
    {
      return result;
    }
  }

  v32 = v11 + 0x2E8BA2E8BA2E8BA3 * ((v31 - *result) >> 3);
  if (v32 < 1)
  {
    result -= (45 - v32) / 0x2EuLL;
  }

  else
  {
    result += v32 / 0x2EuLL;
  }

  return result;
}

void *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,HGMetalTexturePool::Descriptor*,HGMetalTexturePool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,long,46l>,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,0>@<X0>(const void **a1@<X1>, char *a2@<X2>, const void **a3@<X3>, char *a4@<X4>, const void **a5@<X5>, char *a6@<X6>, const void ***a7@<X8>)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  if (a1 == a3)
  {
    if (a2 != a4)
    {
      v12 = a7;
      v13 = *a5;
      v14 = a4;
      while (1)
      {
        v16 = 0x2E8BA2E8BA2E8BA3 * (&a6[-v13] >> 3);
        if (0x2E8BA2E8BA2E8BA3 * ((v14 - a2) >> 3) < v16)
        {
          v16 = 0x2E8BA2E8BA2E8BA3 * ((v14 - a2) >> 3);
        }

        v14 -= 88 * v16;
        a6 -= 88 * v16;
        if (v16)
        {
          result = memmove(a6, v14, 88 * v16 - 7);
        }

        if (v14 == a2)
        {
          break;
        }

        v18 = *--v8;
        v13 = v18;
        a6 = (v18 + 4048);
      }

      if (*v8 + 4048 == a6)
      {
        v38 = v8[1];
        ++v8;
        a6 = v38;
      }

      v9 = a4;
      a7 = v12;
    }
  }

  else
  {
    v39 = a7;
    v20 = *a3;
    if (*a3 != a4)
    {
      v21 = *a5;
      v22 = a4;
      while (1)
      {
        v23 = 0x2E8BA2E8BA2E8BA3 * (&a6[-v21] >> 3);
        if (0x2E8BA2E8BA2E8BA3 * ((v22 - v20) >> 3) < v23)
        {
          v23 = 0x2E8BA2E8BA2E8BA3 * ((v22 - v20) >> 3);
        }

        v22 -= 88 * v23;
        a6 -= 88 * v23;
        if (v23)
        {
          result = memmove(a6, v22, 88 * v23 - 7);
        }

        if (v22 == v20)
        {
          break;
        }

        v24 = *--v8;
        v21 = v24;
        a6 = (v24 + 4048);
      }

      if (*v8 + 4048 == a6)
      {
        v25 = v8[1];
        ++v8;
        a6 = v25;
      }
    }

    v26 = a3 - 1;
    if (a3 - 1 != a1)
    {
      v27 = *v8;
      do
      {
        while (1)
        {
          v28 = *v26;
          v29 = *v26 + 4048;
          while (1)
          {
            v30 = 0x2E8BA2E8BA2E8BA3 * ((a6 - v27) >> 3);
            if (0x2E8BA2E8BA2E8BA3 * ((v29 - v28) >> 3) < v30)
            {
              v30 = 0x2E8BA2E8BA2E8BA3 * ((v29 - v28) >> 3);
            }

            v29 -= 88 * v30;
            a6 -= 88 * v30;
            if (v30)
            {
              result = memmove(a6, v29, 88 * v30 - 7);
            }

            if (v29 == v28)
            {
              break;
            }

            v31 = *--v8;
            v27 = v31;
            a6 = v31 + 4048;
          }

          v27 = *v8;
          if (*v8 + 4048 == a6)
          {
            break;
          }

          if (--v26 == a1)
          {
            goto LABEL_32;
          }
        }

        v32 = v8[1];
        ++v8;
        v27 = v32;
        a6 = v32;
        --v26;
      }

      while (v26 != a1);
    }

LABEL_32:
    v33 = *v26 + 4048;
    if (v33 != a2)
    {
      v34 = *v8;
      while (1)
      {
        v35 = 0x2E8BA2E8BA2E8BA3 * (&a6[-v34] >> 3);
        if (0x2E8BA2E8BA2E8BA3 * ((v33 - a2) >> 3) < v35)
        {
          v35 = 0x2E8BA2E8BA2E8BA3 * ((v33 - a2) >> 3);
        }

        v33 -= 88 * v35;
        a6 -= 88 * v35;
        if (v35)
        {
          result = memmove(a6, v33, 88 * v35 - 7);
        }

        if (v33 == a2)
        {
          break;
        }

        v36 = *--v8;
        v34 = v36;
        a6 = (v36 + 4048);
      }

      if (*v8 + 4048 == a6)
      {
        v37 = v8[1];
        ++v8;
        a6 = v37;
      }
    }

    a7 = v39;
    v10 = a3;
  }

  *a7 = v10;
  a7[1] = v9;
  a7[2] = v8;
  a7[3] = a6;
  return result;
}

const void **std::__for_each_segment[abi:ne200100]<std::__deque_iterator<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,HGMetalTexturePool::Descriptor*,HGMetalTexturePool::Descriptor&,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,long,46l>,std::__move_impl<std::_ClassicAlgPolicy>::_MoveSegment<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*,HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>*>>(const void **result, char *__src, const void **a3, char *a4, void ***a5)
{
  v5 = a5;
  v6 = a4;
  v7 = __src;
  if (result == a3)
  {
    v9 = *a5;
    v8 = a5[1];
    if (__src != a4)
    {
      v11 = *v9++;
      v10 = v11;
      while (1)
      {
        v12 = 0x2E8BA2E8BA2E8BA3 * ((v10 - v8 + 4048) >> 3);
        if (0x2E8BA2E8BA2E8BA3 * ((v6 - v7) >> 3) < v12)
        {
          v12 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v7) >> 3);
        }

        v13 = 88 * v12;
        if (v12)
        {
          result = memmove(v8, v7, v13 - 7);
        }

        v7 += v13;
        if (v7 == v6)
        {
          break;
        }

        v14 = *v9++;
        v10 = v14;
        v8 = v14;
      }

      v8 = (v8 + v13);
      if (*(v9 - 1) + 4048 != v8)
      {
        *v5 = v9 - 1;
        goto LABEL_51;
      }

      v8 = *v9;
    }

    *v5 = v9;
    goto LABEL_51;
  }

  v15 = result;
  v16 = *result + 4048;
  v17 = *a5;
  v8 = a5[1];
  if (v16 == __src)
  {
LABEL_20:
    *v5 = v17;
    v5[1] = v8;
    v23 = v15 + 1;
    if (v15 + 1 != a3)
    {
      goto LABEL_21;
    }

    goto LABEL_33;
  }

  v19 = *v17++;
  v18 = v19;
  while (1)
  {
    v20 = 0x2E8BA2E8BA2E8BA3 * ((v18 - v8 + 4048) >> 3);
    if (0x2E8BA2E8BA2E8BA3 * ((v16 - v7) >> 3) < v20)
    {
      v20 = 0x2E8BA2E8BA2E8BA3 * ((v16 - v7) >> 3);
    }

    v21 = 88 * v20;
    if (v20)
    {
      result = memmove(v8, v7, v21 - 7);
    }

    v7 += v21;
    if (v7 == v16)
    {
      break;
    }

    v22 = *v17++;
    v18 = v22;
    v8 = v22;
  }

  v8 = (v8 + v21);
  if (*(v17 - 1) + 4048 != v8)
  {
    --v17;
    goto LABEL_20;
  }

  v8 = *v17;
  *v5 = v17;
  v5[1] = v8;
  v23 = v15 + 1;
  if (v15 + 1 != a3)
  {
LABEL_21:
    v39 = v6;
    do
    {
      while (1)
      {
        v24 = v5;
        v25 = 0;
        v26 = *v23;
        v28 = *v17++;
        v27 = v28;
        while (1)
        {
          v29 = 0x2E8BA2E8BA2E8BA3 * ((v27 - v8 + 4048) >> 3);
          if (0x2E8BA2E8BA2E8BA3 * ((4048 - v25) >> 3) < v29)
          {
            v29 = 0x2E8BA2E8BA2E8BA3 * ((4048 - v25) >> 3);
          }

          v30 = 88 * v29;
          if (v29)
          {
            result = memmove(v8, &v26[v25], v30 - 7);
          }

          v25 += v30;
          if (v25 == 4048)
          {
            break;
          }

          v31 = *v17++;
          v27 = v31;
          v8 = v31;
        }

        v8 = (v8 + v30);
        v32 = v17 - 1;
        if (*(v17 - 1) + 4048 != v8)
        {
          break;
        }

        v8 = *v17;
        v5 = v24;
        *v24 = v17;
        v24[1] = v8;
        if (++v23 == a3)
        {
          goto LABEL_32;
        }
      }

      --v17;
      v5 = v24;
      *v24 = v32;
      v24[1] = v8;
      ++v23;
    }

    while (v23 != a3);
LABEL_32:
    v6 = v39;
  }

LABEL_33:
  v33 = *v23;
  if (*v23 != v6)
  {
    v35 = *v17++;
    v34 = v35;
    while (1)
    {
      v36 = 0x2E8BA2E8BA2E8BA3 * ((v34 - v8 + 4048) >> 3);
      if (0x2E8BA2E8BA2E8BA3 * ((v6 - v33) >> 3) < v36)
      {
        v36 = 0x2E8BA2E8BA2E8BA3 * ((v6 - v33) >> 3);
      }

      v37 = 88 * v36;
      if (v36)
      {
        result = memmove(v8, v33, v37 - 7);
      }

      v33 += v37;
      if (v33 == v6)
      {
        break;
      }

      v38 = *v17++;
      v34 = v38;
      v8 = v38;
    }

    v8 = (v8 + v37);
    if (*(v17 - 1) + 4048 == v8)
    {
      v8 = *v17;
    }

    else
    {
      --v17;
    }
  }

  *v5 = v17;
LABEL_51:
  v5[1] = v8;
  return result;
}

void *std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B478;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B478;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

__n128 std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28721B478;
  v4 = a2 + 8;
  v5 = *(a1 + 32);
  if (v5)
  {
    if (v5 == a1 + 8)
    {
      *(a2 + 32) = v4;
      (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      *(a2 + 32) = (*(*v5 + 16))(v5, v4);
    }
  }

  else
  {
    *(a2 + 32) = 0;
  }

  result = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v7;
  *(a2 + 40) = result;
  return result;
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchDescription<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool16MatchDescriptionIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2E;
  v3 = v1 - 46;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *,std::allocator<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *>>::emplace_back<HGPool::Entry<__CVBuffer *,HGCVPixelBufferPool::Descriptor> *&>(a1, &v11);
}

void sub_25FCAD5AC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,true>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FCAD7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FCAD820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,false>::retrieveObject(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v6 = 0;
  v7 = v2;
  v3 = 0;
  v4 = v2;
  v5 = 0;
  operator new();
}

void sub_25FCADA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va1);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va2);
  _Unwind_Resume(a1);
}

void sub_25FCADA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va1);
  _Unwind_Resume(a1);
}

void **HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor,true>::_retrieve@<X0>(int64x2_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = *MEMORY[0x277D85DE8];
  *(a3 + 28) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 1;
  v5 = a1[4].u64[0];
  v6 = v5 + a1[4].i64[1];
  v7 = v6 / 0x2E;
  v8 = a1[2].i64[1];
  if (a1[3].i64[0] != v8)
  {
    v9 = *(v8 + 8 * (v6 / 0x2E)) + 88 * (v6 % 0x2E);
    v10 = *(v8 + 8 * (v5 / 0x2E)) + 88 * (v5 % 0x2E);
    v11 = v9;
    v12 = *(a2 + 24);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_6:
    v28 = 0;
    goto LABEL_8;
  }

  v9 = 0;
  v11 = 0;
  v10 = 0;
  v12 = *(a2 + 24);
  if (!v12)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v12 == a2)
  {
    v28 = v27;
    (*(*v12 + 24))(v12, v27);
  }

  else
  {
    v28 = (*(*v12 + 16))(v12);
  }

LABEL_8:
  v13 = (v8 + 8 * v7);
  if (v11 != v10)
  {
    v16 = *v13;
    do
    {
      v17 = v9;
      if (v9 == v16)
      {
        v17 = *(v13 - 1) + 4048;
      }

      if (!v28)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      if ((*(*v28 + 6))(v28, v17 - 88))
      {
        break;
      }

      v16 = *v13;
      if (v9 == *v13)
      {
        v18 = *--v13;
        v16 = v18;
        v9 = v18 + 4048;
      }

      v9 -= 88;
    }

    while (v10 != v9);
  }

  result = v28;
  if (v28 == v27)
  {
    result = (*(*v28 + 4))(v28);
    v15 = a1[2].i64[1];
    if (a1[3].i64[0] != v15)
    {
      goto LABEL_13;
    }

LABEL_24:
    if (!v9)
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v28)
  {
    result = (*(*v28 + 5))();
  }

  v15 = a1[2].i64[1];
  if (a1[3].i64[0] == v15)
  {
    goto LABEL_24;
  }

LABEL_13:
  if (*(v15 + 8 * (a1[4].i64[0] / 0x2EuLL)) + 88 * (a1[4].i64[0] % 0x2EuLL) == v9)
  {
    return result;
  }

LABEL_25:
  v19 = v9 - *v13;
  v20 = 0x2E8BA2E8BA2E8BA3 * (v19 >> 3);
  if (v19 < 89)
  {
    v24 = 46 - v20;
    v22 = &v13[-(v24 / 0x2E)];
    v23 = *v22 + 88 * (46 * (v24 / 0x2E) - v24) + 3960;
  }

  else
  {
    v21 = v20 - 1;
    v22 = &v13[v21 / 0x2E];
    v23 = *v22 + 88 * (v21 % 0x2E);
  }

  v25 = *(v23 + 48);
  *(a3 + 32) = *(v23 + 32);
  *(a3 + 48) = v25;
  *(a3 + 64) = *(v23 + 64);
  *(a3 + 80) = *(v23 + 80);
  v26 = *(v23 + 16);
  *a3 = *v23;
  *(a3 + 16) = v26;
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -(*(a3 + 24) * *(a3 + 16) * HGMetalUtils::bytesPerPixel(*(a3 + 32))));
  return std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>>::erase(a1 + 2, v22, v23);
}

void sub_25FCADE00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void sub_25FCADE14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::function<BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor> const&)>::~function(va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B580;
  v2 = a1 + 1;
  v3 = a1[4];
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::~__func(void *a1)
{
  *a1 = &unk_28721B580;
  v1 = a1 + 1;
  v2 = a1[4];
  if (v2 == v1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_28721B580;
  v4 = a2 + 1;
  result = *(a1 + 32);
  if (result)
  {
    if (result == a1 + 8)
    {
      a2[4] = v4;
      result = (*(**(a1 + 32) + 24))(*(a1 + 32));
    }

    else
    {
      result = (*(*result + 16))(result, v4);
      a2[4] = result;
    }

    a2[5] = *(a1 + 40);
  }

  else
  {
    a2[4] = 0;
    a2[5] = *(a1 + 40);
  }

  return result;
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::destroy(uint64_t a1)
{
  v1 = a1 + 8;
  result = *(a1 + 32);
  if (result == v1)
  {
    return (*(*result + 32))();
  }

  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::destroy_deallocate(char *__p)
{
  v2 = __p + 8;
  v3 = *(__p + 4);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = __p;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p;
  }

  operator delete(v4);
}

uint64_t std::__function::__func<HGPool::MatchObject<objc_object  {objcproto10MTLTexture}*,HGMetalTexturePool::Descriptor>,std::allocator<HGMetalTexturePool::Descriptor>,BOOL ()(HGPool::Entry<objc_object  {objcproto10MTLTexture},HGMetalTexturePool> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE")
  {
    return a1 + 8;
  }

  if (((v2 & "N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("N6HGPool11MatchObjectIPU21objcproto10MTLTexture11objc_objectN18HGMetalTexturePool10DescriptorEEE" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__shared_ptr_emplace<anonymous namespace::TextureWrapperAllocator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28721B608;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::TextureWrapperAllocator::release(uint64_t a1, void *a2)
{
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::~Pool(uint64_t a1, HGPool::BasePool *a2)
{
  HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::~Pool(a1, a2);

  JUMPOUT(0x2666E9F00);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::service(uint64_t a1)
{
  std::mutex::lock((a1 + 256));
  if (HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::service((a1 + 152), a1))
  {
    (*(*a1 + 24))(a1);
    (*(*a1 + 40))(a1);
    kdebug_trace();
  }

  std::mutex::unlock((a1 + 256));
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::trace(std::mutex *a1)
{
  std::mutex::lock(a1 + 4);
  sig = a1 + 5;
  if (a1[5].__m_.__opaque[15] < 0)
  {
    sig = sig->__m_.__sig;
  }

  (*(a1->__m_.__sig + 24))(a1, sig);
  (*(a1->__m_.__sig + 16))(a1);
  (*(a1->__m_.__sig + 40))(a1);
  (*(a1->__m_.__sig + 32))(a1);
  std::mutex::unlock(a1 + 4);
}

void HGPool::Pool<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::log(uint64_t a1, const char *a2)
{
  v3 = (a1 + 344);
  if (*(a1 + 367) < 0)
  {
    v3 = *v3;
    if (HGLogger::getLevel(v3, a2) < 2)
    {
      return;
    }
  }

  else if (HGLogger::getLevel((a1 + 344), a2) < 2)
  {
    return;
  }

  std::mutex::lock((a1 + 256));
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    v7 = (a1 + 320);
    if (*(a1 + 343) < 0)
    {
      v7 = *v7;
    }

    HGLogger::log(v3, 2, "pool '%s' (%p)\n", v4, v5, v7, a1);
  }

  HGLogger::indent(1);
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log(v3, 2, "live objects:\n", v8, v9);
  }

  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,true>::log((a1 + 48), v3);
  v13 = atomic_load(HGLogger::_enabled);
  if (v13)
  {
    HGLogger::log(v3, 2, "free objects:\n", v11, v12);
  }

  HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::log((a1 + 152), v3);
  HGLogger::indent(0xFFFFFFFFLL);

  std::mutex::unlock((a1 + 256));
}

int64x2_t *HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::~List(int64x2_t *a1)
{
  while (a1[4].i64[1])
  {
    HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::_pop_front(a1);
  }

  std::deque<HGPool::Entry<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>>::~deque[abi:ne200100](a1[2].i64);
  v2 = a1[1].i64[1];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1->i64[1];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t HGPool::List<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor,false>::_pop_front(int64x2_t *a1)
{
  v2 = (*(a1[2].i64[1] + 8 * (a1[4].i64[0] / 0x24uLL)) + 112 * (a1[4].i64[0] % 0x24uLL));
  v4 = v2[1];
  v3 = v2[2];
  v11 = *v2;
  v12 = v4;
  v13 = v3;
  v5 = v2[6];
  v7 = v2[3];
  v6 = v2[4];
  v16 = v2[5];
  v17 = v5;
  v14 = v7;
  v15 = v6;
  atomic_fetch_add(a1[5].i64, 0xFFFFFFFFFFFFFFFFLL);
  atomic_fetch_add(&a1[5].i64[1], -*(&v12 + 1));
  v8 = a1[2].i64[1];
  v9 = vaddq_s64(a1[4], xmmword_260342880);
  a1[4] = v9;
  if (v9.i64[0] >= 0x48uLL)
  {
    operator delete(*v8);
    a1[2].i64[1] += 8;
    a1[4].i64[0] -= 36;
  }

  HGPool::EntryEventHandler<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::deleted(&v11);
  kdebug_trace();
  kdebug_trace();
  (*(*a1->i64[0] + 24))(a1->i64[0], v11);
  if (*(&v11 + 1))
  {
    (*(*a1->i64[0] + 24))();
  }

  return kdebug_trace();
}

void HGPool::EntryEventHandler<objc_object  {objcproto10MTLTexture}*,HGMetalTextureWrapperInfinipool::Descriptor>::deleted(void *a1)
{
  HGPool::DescriptorString<HGMetalTextureWrapperInfinipool::Descriptor>::str((a1 + 2));
  v4 = atomic_load(HGLogger::_enabled);
  if (v4)
  {
    if (v7 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    HGLogger::log("hgpool", 1, "hgpool entry deleted : %p (%s)\n", v2, v3, *a1, p_p);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_25FCAECFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGPool::DescriptorString<HGMetalTextureWrapperInfinipool::Descriptor>::str(uint64_t a1)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  v2 = MEMORY[0x2666E9B80](&v13, *(a1 + 32));
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " x ", 3);
  v4 = MEMORY[0x2666E9B80](v3, *(a1 + 40));
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", ", 2);
  v6 = HGMetalUtils::toString(*(a1 + 48));
  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ptr=", 6);
  MEMORY[0x2666E9B10](v9, *a1);
  std::stringbuf::str();
  v12[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v10;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v17);
}