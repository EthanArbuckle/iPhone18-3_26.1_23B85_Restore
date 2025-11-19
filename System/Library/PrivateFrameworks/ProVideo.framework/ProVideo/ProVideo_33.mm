void sub_25FC5C100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_280C5E3A0);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC5C138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::label(PCICCTransferFunctionLUT **this)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  HGRenderer::label(__p, this);
  if ((v16 & 0x80u) == 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v3 = v16;
  }

  else
  {
    v3 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v2, v3);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    v4 = this[139];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v4 = this[139];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " ID:0x", 6);
  *(v5 + *(*v5 - 24) + 8) = *(v5 + *(*v5 - 24) + 8) & 0xFFFFFFB5 | 8;
  LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(v4);
  MEMORY[0x2666E9BA0](v5, *(LUTEnd + 24));
  v7 = PCICCTransferFunctionLUT::getLUTEnd(v4);
  if (HGMetalDeviceInfo::name(v7))
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, " (", 2);
    v9 = PCICCTransferFunctionLUT::getLUTEnd(v4);
    v10 = HGMetalDeviceInfo::name(v9);
    v11 = strlen(v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ")", 1);
  }

LABEL_13:
  std::stringbuf::str();
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

void sub_25FC5C404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
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

uint64_t HGGPURenderer::ShouldAllocateGLTexture(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if (*(a1 + 1281) == 1)
  {
    result = *(a1 + 1472);
    if (!result)
    {
      return result;
    }

    v9 = HGTextureManager::maxTextureSizeGL(result, a4);
    if (v9 < a2 || v9 < a3)
    {
      return 0;
    }
  }

  else
  {
    v11 = *(PCICCTransferFunctionLUT::getLUTEnd(*(a1 + 1112)) + 48);
    if (v11 < a2 || v11 < a3)
    {
      return 0;
    }
  }

  if (a4 <= 41)
  {
    v13 = s_HGFormatInfos[8 * a4 + 3];
  }

  else
  {
    v13 = 0;
  }

  return a3 * a2 * v13 < *(a1 + 1256);
}

uint64_t HGGPURenderer::ShouldAllocateTexture(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6)
{
  if (*(a1 + 1281) == 1)
  {
    if (a5)
    {
      v10 = a6;
      v11 = *(PCICCTransferFunctionLUT::getLUTEnd(*(a1 + 1112)) + 48);
      v13 = v11 >= a2 && v11 >= a3;
      if (!v13 || (v10 & 1) == 0)
      {
        if (!v13)
        {
          return 0;
        }

        goto LABEL_23;
      }

LABEL_20:
      result = *(a1 + 1472);
      if (!result)
      {
        return result;
      }

      v17 = HGTextureManager::maxTextureSizeGL(result, a4);
      result = 0;
      if (v17 < a2 || v17 < a3)
      {
        return result;
      }

      goto LABEL_23;
    }

    if (a6)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = *(PCICCTransferFunctionLUT::getLUTEnd(*(a1 + 1112)) + 48);
    if (v15 < a2 || v15 < a3)
    {
      return 0;
    }
  }

LABEL_23:
  if (a4 <= 41)
  {
    v18 = s_HGFormatInfos[8 * a4 + 3];
  }

  else
  {
    v18 = 0;
  }

  return a3 * a2 * v18 < *(a1 + 1256);
}

const char *HGGPURenderer::RenderBitmap(HGGPURenderer *this, HGBitmap *a2, HGNode *a3)
{
  v3 = *(a2 + 3);
  if ((*(this + 1280) & 1) != 0 || (v3 & 0x10) == 0)
  {
    if ((~v3 & 0x210) != 0)
    {
      if ((~v3 & 0x120) != 0)
      {
        HGRendererOutput::HGRendererOutput(v7, a3, a2);
        HGRenderer::RenderNode(this, v7);
      }

      v4 = "  ERROR : bitmap is a MTL buffer (need a texture).";
    }

    else
    {
      v4 = "  ERROR : bitmap is a GL texture (need a HGGLBuffer).";
    }
  }

  else
  {
    v4 = "  ERROR : cannot render to shared GL texture.";
  }

  return HGLogger::warning(v4, a2, a3);
}

{
  HGLogger::warning("  WARNING : calling obsolete HGGPURenderer function:\n  (fullROI is always 'on' when providing a destination bitmap)\n", a2, a3);

  return HGGPURenderer::RenderBitmap(this, a2, a3);
}

uint64_t HGGPURenderer::GetGLTexture(HGGPURenderer *this, HGBitmap *a2, char *a3)
{
  if (*(this + 809) == 1)
  {
    v4 = *(this + 146);
    if (v4)
    {
      HGGLContext::context(&v9, *(this + 143));
      HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v10, v4, &v9);
      PCSharedCount::PCSharedCount(&v9);
      *&v11.var0 = *(a2 + 20);
      *&v11.var2 = *(a2 + 28);
      v6 = HGGPURenderer::ConvertToGLTexture(this, v11, a2);
      (*(*this + 144))(this, 0);
      HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v10);
      return v6;
    }

    v8 = "Renderer does not support OpenGL";
  }

  else
  {
    v8 = "Invalid Renderer";
  }

  HGLogger::warning(v8, a2, a3);
  return 0;
}

void sub_25FC5C8EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::ConvertToGLTexture(HGGPURenderer *this, HGRect a2, HGBitmap *a3)
{
  v3 = *&a2.var2;
  v4 = *&a2.var0;
  v6 = HGGPURenderer::ConvertToNonMetalTexture(this, a3);
  v7 = v6;
  v8 = *(v6 + 3);
  if ((v8 & 0x30) != 0)
  {
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_3;
    }

    if ((v8 & 0x100) != 0)
    {
      (*(*this + 144))(this, v6);
      v9 = (*(*this + 328))(this);
      goto LABEL_10;
    }

    if ((v8 & 0x200) != 0)
    {
      v9 = v10;
      if (v10)
      {
        (*(*v10 + 16))(v10);
      }
    }

    else
    {
LABEL_3:
      v9 = 0;
    }
  }

  else
  {
    v9 = (*(*this + 352))(this, v4, v3, v6);
  }

LABEL_10:
  (*(*v7 + 24))(v7);
  return v9;
}

uint64_t HGGPURenderer::GetRawGLTexture(HGGPURenderer *this, HGBitmap *a2, char *a3)
{
  if (*(this + 809) == 1)
  {
    v4 = *(this + 146);
    if (v4)
    {
      HGGLContext::context(&v9, *(this + 143));
      HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v10, v4, &v9);
      PCSharedCount::PCSharedCount(&v9);
      v6 = HGGPURenderer::ConvertToRawGLTexture(this, a2);
      (*(*this + 144))(this, 0);
      HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v10);
      return v6;
    }

    v8 = "Renderer does not support OpenGL";
  }

  else
  {
    v8 = "Invalid Renderer";
  }

  HGLogger::warning(v8, a2, a3);
  return 0;
}

void sub_25FC5CB9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::ConvertToRawGLTexture(HGGPURenderer *this, HGBitmap *a2)
{
  v4 = HGGPURenderer::ConvertToNonMetalTexture(this, a2);
  v5 = v4;
  if (*(v4 + 12))
  {
    Buffer = HGGPURenderer::CreateBuffer(this, *(a2 + 20), *(a2 + 4), 0, 0, 0, (*(this + 1336) & 1) == 0);
    HGGPURenderer::BufferCopyOpenGL(this, Buffer, *(a2 + 20), v5);
  }

  else
  {
    (*(*v4 + 16))(v4);
    Buffer = v5;
  }

  v7 = HGGPURenderer::ConvertToGLTexture(this, *(Buffer + 20), Buffer);
  (*(*v5 + 24))(v5);
  (*(*Buffer + 24))(Buffer);
  return v7;
}

HGBitmap *HGGPURenderer::GetMetalTexture(HGGPURenderer *this, HGBitmap *a2, char *a3)
{
  if (*(this + 809) == 1)
  {
    v5 = *(this + 146);
    if (v5)
    {
      HGGLContext::context(&v9, *(this + 143));
      HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v10, v5, &v9);
      PCSharedCount::PCSharedCount(&v9);
      v6 = HGGPURenderer::ConvertToMetalTexture(this, *(a2 + 20), a2, 1);
      (*(*this + 144))(this, 0);
      HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v10);
      return v6;
    }

    else
    {
      *&v8.var0 = *(a2 + 20);
      *&v8.var2 = *(a2 + 28);

      return HGGPURenderer::ConvertToMetalTexture(this, v8, a2, 1);
    }
  }

  else
  {
    HGLogger::warning("Invalid Renderer", a2, a3);
    return 0;
  }
}

void sub_25FC5CE00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

HGBitmap *HGGPURenderer::ConvertToRawMetalTexture(HGGPURenderer *this, HGBitmap *a2)
{
  v4 = HGGPURenderer::ConvertToNonGLTexture(this, a2);
  v5 = v4;
  if (*(v4 + 12))
  {
    Buffer = HGGPURenderer::CreateBuffer(this, *(a2 + 20), *(a2 + 4), 1, 0, 0, (*(this + 1336) & 1) == 0);
    HGGPURenderer::BufferCopyMetal(this, Buffer, *(a2 + 20), v5);
  }

  else
  {
    (*(*v4 + 16))(v4);
    Buffer = v5;
  }

  v7 = HGGPURenderer::ConvertToMetalTexture(this, *(Buffer + 20), Buffer, 1);
  (*(*v5 + 24))(v5);
  (*(*Buffer + 24))(Buffer);
  return v7;
}

HGBitmap *HGGPURenderer::GetBitmap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 809))
  {
    v3 = a2;
    v5 = *(a2 + 12);
    if ((v5 & 0x30) != 0)
    {
      if ((v5 & 0x20) != 0)
      {
        v13 = *(a2 + 16);
        if (v13 != a3)
        {
          HGLogger::warning("HGGPURenderer::GetBitmap() -- Requested format (%s) doesn't match the bitmap's format (%s) and will be ignored.", a2, a3, *&s_HGFormatInfos[8 * a3 + 6], *&s_HGFormatInfos[8 * v13 + 6]);
        }

        v14 = HGObject::operator new(0x80uLL);
        HGBitmap::HGBitmap(v14, *(v3 + 20), *(v3 + 28), *(v3 + 4));
        HGGPURenderer::ReadbackMetalTexture(a1, v3, v14);
        v3 = v14;
      }

      else
      {
        v7 = *(a1 + 1168);
        HGGLContext::context(&v16, *(a1 + 1144));
        HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v17, v7, &v16);
        PCSharedCount::PCSharedCount(&v16);
        if (*(v3 + 13))
        {
          (*(*a1 + 144))(a1, v3);
          v10 = HGObject::operator new(0x80uLL);
          v15 = HGBitmap::HGBitmap(v10, *(v3 + 20), *(v3 + 28), a3);
          (*(*a1 + 344))(a1, *(v3 + 20), *(v3 + 28), v10, v15);
        }

        else
        {
          Buffer = HGGPURenderer::CreateBuffer(a1, *(v3 + 20), a3, 0, 0, 0, (*(a1 + 1336) & 1) == 0);
          (*(*a1 + 144))(a1, Buffer);
          (*(*a1 + 152))(a1, 0, v3, 0, 0);
          HGGPURenderer::Copy(a1, *(v3 + 20), 0, v9);
          (*(*a1 + 152))(a1, 0, 0, 0, 0);
          v10 = HGObject::operator new(0x80uLL);
          v11 = HGBitmap::HGBitmap(v10, *(Buffer + 20), *(Buffer + 28), *(Buffer + 4));
          (*(*a1 + 344))(a1, *(v10 + 20), *(v10 + 28), v10, v11);
          (*(*a1 + 144))(a1, 0);
          (*(*Buffer + 24))(Buffer);
        }

        HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v17);
        v3 = v10;
      }
    }

    else
    {
      (*(*a2 + 16))(a2);
    }

    (*(*a1 + 144))(a1, 0);
    return v3;
  }

  else
  {
    HGLogger::warning("Invalid Renderer", a2, a3);
    return 0;
  }
}

void sub_25FC5D2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  HGObject::operator delete(v12);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(&a12);
  _Unwind_Resume(a1);
}

void sub_25FC5D318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC5D32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::ReadbackMetalTexture(HGGPURenderer *this, HGBitmap *a2, HGBitmap *a3)
{
  (*(*this + 144))(this, 0);
  v8 = *(this + 164);
  if (v8)
  {
    if (v9)
    {
      v10 = v9;
      HGMetalHandler::FinalizeCommandBuffer(v9);
      HGMetalHandler::BindBuffer(v10, 0);
    }
  }

  v11 = *(this + 165);
  if (v11)
  {
    HGMetalCommandBufferRef::waitUntilCompleted(v11);
  }

  if ((~*(a2 + 3) & 0x220) != 0 || (MetalStorage = HGMetalTexture::getMetalStorage(a2, v6)) == 0)
  {

    HGLogger::warning("HGGPURenderer::ReadbackMetalTexture failed.", v6, v7);
  }

  else
  {
    v13 = *(this + 139);
    v14 = *(a3 + 20);

    HGMetalTexture::CopyTexture(MetalStorage, v13, a3, v14);
  }
}

uint64_t HGGPURenderer::Copy(HGGPURenderer *this, HGRect a2, const char *a3, char *a4)
{
  v4 = a3;
  v5 = *&a2.var2;
  v6 = *&a2.var0;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("gpu", 2, "copy texture to buffer [%d %d %d %d]\n", a3, a4, *&a2.var0, a2.var1, *&a2.var2, a2.var3);
  }

  v9 = *(this + 161);
  v10 = HGString::sample2d(0x60620, v4, 0, v26);
  v13 = HGString::c_str(v26, v10, v11, v12);
  Entry = HGGLShaderCache::GetEntry(v9, v13);
  HGString::~HGString(v26);
  result = (*(*this + 432))(this, Entry);
  if (result)
  {
    v16 = 0;
  }

  else
  {
    v16 = Entry;
  }

  v17 = *(this + 3 * v4 + 4);
  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18)
  {
    v19 = (*(*this + 368))(this);
    v20 = *(v17 + 160);
    v21 = *(v17 + 20);
    v22 = *(v17 + 28);
    TextureRect = HGGLTexture::GetTextureRect(v17);
    LODWORD(v25) = -*(v17 + 20);
    HIDWORD(v25) = -*(v17 + 24);
    (*(*v19 + 32))(v19, v20, v6, v5, v21, v22, TextureRect, v24, v25);
    HGHandler::TexCoord(v19, v4, 0, 0, 0);
    (*(*v19 + 168))(v19);
    (*(*v19 + 40))(v19);
    *&v27.var0 = v6;
    *&v27.var2 = v5;
    HGGPURenderer::Rect(this, v19, v27, (v4 + 1));
    return (*(*this + 392))(this, v19);
  }

  return result;
}

void sub_25FC5D6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGString::~HGString(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::StartGPUCapture(HGGPURenderer *this)
{
  v1 = *(this + 139);
  if (v1)
  {
    v3 = *(this + 366);
    if (v3)
    {
      if (v3 == 2)
      {
        v10 = 0;
        v9[0] = this;
        v9[1] = &v10;
        HGGPURenderer::StartGPUCapture(void)::$_0::operator()(__p, v9);
        while (1)
        {
          v4 = v8 >= 0 ? __p : __p[0];
          if (access(v4, 0))
          {
            break;
          }

          HGGPURenderer::StartGPUCapture(void)::$_0::operator()(&v5, v9);
          if (SHIBYTE(v8) < 0)
          {
            operator delete(__p[0]);
          }

          *__p = v5;
          v8 = v6;
        }

        OZChannelBase::setRangeName(v1, 1);
      }

      else
      {
        HIBYTE(v8) = 0;
        LOBYTE(__p[0]) = 0;
        OZChannelBase::setRangeName(v1, 0);
      }

      if (SHIBYTE(v8) < 0)
      {
        operator delete(__p[0]);
      }

      *(this + 366) = 0;
    }
  }
}

void sub_25FC5D800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGGPURenderer::StartGPUCapture(void)::$_0::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  v4 = *(v3 + 1047);
  if (v4 >= 0)
  {
    v5 = v3 + 1024;
  }

  else
  {
    v5 = *(v3 + 1024);
  }

  if (v4 >= 0)
  {
    v6 = *(v3 + 1047);
  }

  else
  {
    v6 = *(v3 + 1032);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, v5, v6);
  v20 = 7;
  strcpy(v19, "/helium");
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v19, 7);
  v9 = v8;
  v10 = *v8;
  v11 = v8 + *(*v8 - 24);
  if (*(v11 + 36) == -1)
  {
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v12 = std::locale::use_facet(v17, MEMORY[0x277D82680]);
    v13 = (v12->__vftable[2].~facet_0)(v12, 32);
    std::locale::~locale(v17);
    *(v11 + 36) = v13;
    v10 = *v9;
  }

  *(v11 + 36) = 48;
  *(v9 + *(v10 - 24) + 24) = 3;
  ++*a2[1];
  v14 = MEMORY[0x2666E9B60](v9);
  v18 = 9;
  strcpy(v17, ".gputrace");
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v17, 9);
  if (v18 < 0)
  {
    operator delete(v17[0].__locale_);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v20 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v19[0]);
LABEL_11:
  std::stringbuf::str();
  v21[0] = *MEMORY[0x277D82818];
  v15 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v15;
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x2666E9E10](&v26);
}

void sub_25FC5DB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if ((a21 & 0x80000000) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a22);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a22);
  _Unwind_Resume(a1);
}

void sub_25FC5DBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::RenderBgn(HGGPURenderer *this, int a2)
{
  HGRenderer::RenderBgn(this, a2);
  if (*(this + 1281) == 1)
  {
    HGCVGLTextureFactory::flush(*(this + 147));
    HGGLState::startContextTracking(*(this + 146));
    HGTextureManager::renderBgn(*(this + 184));
    v3 = *(this + 146);
    if (v3)
    {
      v4 = *(this + *(this + 290) + 143);
      if (v4)
      {
        HGGLContext::context(&v8, v4);
      }

      else
      {
        HGGLContextPtr::HGGLContextPtr(&v8, 0);
      }

      HGGLState::setCurrentContext(v3, &v8.var0);
      PCSharedCount::PCSharedCount(&v8);
    }

    glIsTexture(0);
  }

  result = HGGLShaderCache::ClearStats(*(this + 161));
  v6 = *(this + 139);
  if (v6)
  {
    HGGPURenderer::StartGPUCapture(this);
    return OZChannelBase::setRangeName(v6, v7);
  }

  return result;
}

double HGGPURenderer::RenderEnd(HGGPURenderer *this, int a2)
{
  if (HG_RENDERER_ENV::FORCE_POST_RENDER_FINISH)
  {
    v4 = 1;
    v5 = *(this + 1281);
    if (v5 != 1)
    {
LABEL_7:
      *(this + 311) = 0;
      if ((v5 & v4 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_11:
      glFinish();
      HGGPURenderer::FrameEnd(this);
      if (!v4)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(this + 170) != 0;
    v5 = *(this + 1281);
    if (v5 != 1)
    {
      goto LABEL_7;
    }
  }

  if (*(this + 311))
  {
    glFlush();
    v5 = *(this + 1281);
    goto LABEL_7;
  }

  *(this + 311) = 0;
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_8:
  HGGPURenderer::FrameEnd(this);
  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_12:
  v7 = *(this + 165);
  if (v7)
  {
    HGMetalCommandBufferRef::waitUntilCompleted(v7);
  }

LABEL_14:
  v8 = *(this + 172);
  if ((v8 & 0x80000000) == 0)
  {
    v9 = *(this + 164);
    if (v9)
    {
      if (v10)
      {
        HGMetalHandler::WaitForCommandBuffersCount(v10, v8);
      }
    }
  }

  v11 = *(this + 139);
  if (v11)
  {
    OZChannelBase::setRangeName(v11, v6);
  }

  HGGPURenderer::PurgePostDeleteEvents(this);
  if (*(this + 1281) == 1)
  {
    HGTextureManager::renderEnd(*(this + 184));
    HGGLState::stopContextTracking(*(this + 146));
  }

  HGRenderer::RenderEnd(this, a2);
  if (*(this + 182))
  {
    v15 = *(this + 180);
    v16 = (this + 1448);
    if (v15 != (this + 1448))
    {
      do
      {
        v17 = v15[4];
        if (!v17)
        {
          __cxa_bad_typeid();
        }

        HGLogger::warning("ProcessNode( %p) :\n  unable to subdivide input ROI for node (or concatenated chain) : %s\n", v12, v13, v15[4], *(*(*v17 - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL);
        v18 = v15[1];
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
            v19 = v15[2];
            v20 = *v19 == v15;
            v15 = v19;
          }

          while (!v20);
        }

        v15 = v19;
      }

      while (v19 != v16);
    }

    std::__tree<HGNode *>::destroy(this + 1440, *(this + 181));
    *(this + 180) = v16;
    result = 0.0;
    *v16 = 0u;
  }

  return result;
}

_DWORD *HGGPURenderer::FrameEnd(HGGPURenderer *this)
{
  (*(*this + 144))(this, 0);
  v2 = *(this + 164);
  if (v2)
  {
    if (v3)
    {
      v4 = v3;
      HGMetalHandler::FinalizeCommandBuffer(v3);
      HGMetalHandler::BindBuffer(v4, 0);
    }
  }

  v5 = *(this + 165);
  if (v5)
  {
    HGMetalCommandBufferRef::waitUntilScheduled(v5);
  }

  result = *(this + 164);
  if (result)
  {
    if (result)
    {
      v7 = atomic_load(HGLogger::_enabled);
      if ((v7 & 1) != 0 && *(this + 163) >= 1)
      {
        *v10 = 0;
        v9 = 0;
        v8 = result;
        HGMetalHandler::GetFrameCounters(result, &v10[1], v10, &v9);
        printf("+ Helium Render Summary : %d command buffers, %d encoders, %d draw calls\n", v9, v10[0], v10[1]);
        result = v8;
      }

      return HGMetalHandler::FrameEnd(result);
    }
  }

  return result;
}

void *HGGPURenderer::WaitForCommandBuffers(void *this)
{
  v1 = *(this + 172);
  if ((v1 & 0x80000000) == 0)
  {
    this = this[164];
    if (this)
    {
      if (this)
      {

        return HGMetalHandler::WaitForCommandBuffersCount(this, v1);
      }
    }
  }

  return this;
}

void HGGPURenderer::AdjustForBufferLocation(uint64_t a1, uint64_t a2, int a3)
{
  HGLogger::setLevel("bufferAPI", 0);
  HGTraceGuard::HGTraceGuard(v22, "bufferAPI", 1, "AdjustForBufferLocation(HGNode*)");
  v6 = atomic_load(HGLogger::_enabled);
  if (v6)
  {
    v7 = (*(*a2 + 48))(a2);
    HGLogger::log("bufferAPI", 1, "node %p : %s\n", v8, v9, a2, v7);
  }

  NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(a1, a2);
  v15 = NodeRenderAPI;
  v16 = atomic_load(HGLogger::_enabled);
  if (v16)
  {
    v17 = "Metal";
    if (!NodeRenderAPI)
    {
      v17 = "OpenGL";
    }

    HGLogger::log("bufferAPI", 1, "node API: %s\n", v13, v14, v17);
  }

  if (a3 == 4 && v15 == 1)
  {
    v18 = 1;
    goto LABEL_19;
  }

  v18 = a3 == 5 && v15 == 0;
  if (a3 == 4 || (a3 - 1) >= 2 && !v15)
  {
LABEL_19:
    if (*(a1 + 1280))
    {
      if (!v18)
      {
        v20 = *(a1 + 1272);
        if (v20 == 2)
        {
          HGLogger::error("%s", v11, v12, "OpenGL sharegroup : HGRendererBufferLocation is an OpenGL object.");
        }

        else if (v20 == 1)
        {
          HGLogger::warning("%s", v11, v12, "OpenGL sharegroup : HGRendererBufferLocation is an OpenGL object.");
        }

        goto LABEL_26;
      }
    }

    else
    {
      HGLogger::warning("no GL sharegroup : OpenGL HGRendererBufferLocation ignored.", v11, v12);
    }

LABEL_25:
    *(a2 + 16) |= 0x1000u;
    goto LABEL_26;
  }

  v21 = !v18;
  if (a3 == 1)
  {
    v21 = 0;
  }

  if (!v21)
  {
    goto LABEL_25;
  }

LABEL_26:
  HGTraceGuard::~HGTraceGuard(v22);
}

void sub_25FC5E278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC5E28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC5E2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::GetNodeRenderAPI(HGGPURenderer *this, HGNode *a2)
{
  LODWORD(v4) = (*(*this + 128))(this, 43);
  v5 = HGNode::SupportsMetal(a2);
  v6 = HGNode::SupportsGLSL(a2);
  if (v5 & 1) != 0 || (v6)
  {
    if (v4)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v6 & 1) == 0;
    }

    if (v4 != 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = (*(*a2 + 48))(a2);
    HGLogger::warning("no supported API in node %s (%p)!!", v8, v9, v7, a2);
  }

  v4 = v5;
LABEL_9:
  if (!v4 && (*(this + 1281) & 1) == 0)
  {
    v10 = (*(*a2 + 48))(a2);
    HGLogger::warning("OpenGL is not supported! No render path available for node %s (%p).", v11, v12, v10, a2);
  }

  return v4;
}

const char *HGGPURenderer::ValidateGLSharegroupSupport(const char *this, const char *a2, char *a3)
{
  v3 = *(this + 318);
  if (v3 == 2)
  {
    return HGLogger::error("%s", a2, a3, a2);
  }

  if (v3 == 1)
  {
    return HGLogger::warning("%s", a2, a3, a2);
  }

  return this;
}

HGBitmap *HGGPURenderer::AdjustForBufferLocation(HGGPURenderer *a1, HGBitmap *a2, int a3)
{
  HGTraceGuard::HGTraceGuard(v34, "bufferAPI", 1, "AdjustForBufferLocation(HGBitmap*)");
  if (HGLogger::getLevel("bufferAPI", v6) >= 1)
  {
    v9 = atomic_load(HGLogger::_enabled);
    if (v9)
    {
      if ((*(a2 + 3) & 0x30) != 0)
      {
        v10 = "no";
      }

      else
      {
        v10 = "yes";
      }

      HGLogger::log("bufferAPI", 1, "buffer is cpu memory : %s\n", v7, v8, v10);
    }

    v11 = atomic_load(HGLogger::_enabled);
    if (v11)
    {
      if (*(a2 + 3))
      {
        v12 = "yes";
      }

      else
      {
        v12 = "no";
      }

      HGLogger::log("bufferAPI", 1, "buffer is IOSurface : %s\n", v7, v8, v12);
    }

    v13 = atomic_load(HGLogger::_enabled);
    if (v13)
    {
      if ((*(a2 + 3) & 0x20) != 0)
      {
        v14 = "yes";
      }

      else
      {
        v14 = "no";
      }

      HGLogger::log("bufferAPI", 1, "buffer is Metal texture : %s\n", v7, v8, v14);
    }

    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      if ((*(a2 + 3) & 0x10) != 0)
      {
        v16 = "yes";
      }

      else
      {
        v16 = "no";
      }

      HGLogger::log("bufferAPI", 1, "buffer is OpenGL buffer/texture : %s\n", v7, v8, v16);
    }
  }

  v17 = (*(*a2 + 64))(a2);
  if (a3 == 3)
  {
    v20 = v17;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    if (a3 == 2)
    {
      v21 = atomic_load(HGLogger::_enabled);
      if (v21)
      {
        HGLogger::log("bufferAPI", 1, "convert buffer to system memory bitmap\n", v18, v19);
      }

      v22 = (*(*a1 + 96))(a1, a2, *(a2 + 4));
      goto LABEL_54;
    }

    v28 = 0;
    v27 = a3 == 4;
    if ((*(a1 + 1280) & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v25 = *(a1 + 1280);
    if (v25 == 1)
    {
      v26 = *(a1 + 317);
      v27 = v26 == 0;
      v28 = v26 != 0;
      if (a3 == 4)
      {
        v27 = 1;
      }
    }

    else
    {
      v28 = 1;
      v27 = a3 == 4;
      if ((v25 & 1) == 0)
      {
        goto LABEL_42;
      }
    }
  }

  if (v27)
  {
    v29 = atomic_load(HGLogger::_enabled);
    if (v29)
    {
      HGLogger::log("bufferAPI", 1, "convert buffer to OpenGL texture\n", v18, v19);
    }

    if (HG_RENDERER_ENV::FORCE_NATIVE_TEXTURE_OUTPUT == 1)
    {
      v22 = HGGPURenderer::ConvertToRawGLTexture(a1, a2);
    }

    else
    {
      v22 = HGGPURenderer::ConvertToGLTexture(a1, *(a2 + 20), a2);
    }

LABEL_54:
    a2 = v22;
    if (!v22)
    {
      goto LABEL_60;
    }

    goto LABEL_55;
  }

LABEL_42:
  v30 = !v28;
  v31 = atomic_load(HGLogger::_enabled);
  if (a3 == 5)
  {
    v30 = 0;
  }

  if (!v30)
  {
    if (v31)
    {
      HGLogger::log("bufferAPI", 1, "convert buffer to Metal texture\n", v18, v19);
    }

    if (HG_RENDERER_ENV::FORCE_NATIVE_TEXTURE_OUTPUT == 1)
    {
      v22 = HGGPURenderer::ConvertToRawMetalTexture(a1, a2);
    }

    else
    {
      v22 = HGGPURenderer::ConvertToMetalTexture(a1, *(a2 + 20), a2, 1);
    }

    goto LABEL_54;
  }

  if (v31)
  {
    HGLogger::log("bufferAPI", 1, "no-op. We're good.\n", v18, v19);
  }

  (*(*a2 + 16))(a2);
LABEL_55:
  if ((*(a2 + 12) & 0x10) != 0)
  {
    v32 = *(a1 + 318);
    if (v32 == 2)
    {
      HGLogger::error("%s", v23, v24, "OpenGL sharegroup : HGGPURenderer output is an OpenGL object.");
    }

    else if (v32 == 1)
    {
      HGLogger::warning("%s", v23, v24, "OpenGL sharegroup : HGGPURenderer output is an OpenGL object.");
    }
  }

LABEL_60:
  (*(*a1 + 144))(a1, 0);
  HGTraceGuard::~HGTraceGuard(v34);
  return a2;
}

void sub_25FC5E844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC5E858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC5E86C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::GenRectTexture(HGTextureManager **this, char *a2, char *a3, int a4, int a5, int a6, int a7, int a8, BOOL a9)
{
  v14 = a3;
  if (a9)
  {
    HGLogger::error("wrong texture creation function for shared texture", a2, a3);
  }

  HGTextureManager::TextureInfo::TextureInfo(v17, v14, a4, a5, a6, a7, a8);
  HGTextureManager::createTexture(this[184], a2, v17);
}

void HGGPURenderer::AddTextureUsage(HGGPURenderer *this, HGBitmap *a2)
{
  v3 = a2;
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 1216, &v3);
  *(this + 310) = -1;
}

uint64_t HGGPURenderer::TextureUsageCount(HGGPURenderer *this)
{
  result = *(this + 310);
  if (result == -1)
  {
    v3 = *(this + 152);
    v4 = *(this + 153);
    if (v4 != v3)
    {
      if (((v4 - v3) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **,false>(0, 0, &v5, 0, 1);
    result = 0;
    *(this + 310) = 0;
  }

  return result;
}

void sub_25FC5EAA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *HGGPURenderer::Release(HGGPURenderer *this)
{
  if (HGGPURenderer::TextureUsageCount(this))
  {
    v2 = atomic_load(this + 2);
    if (v2 == HGGPURenderer::TextureUsageCount(this) + 1)
    {
      HGObject::Retain(this);
      v3 = *(this + 170);
      if (v3)
      {
        v4 = *(this + 152);
        v5 = *(this + 153);
        if (v4 != v5)
        {
          v6 = *(this + 152);
          while (*v6 != v3)
          {
            v6 += 8;
            v4 += 8;
            if (v6 == v5)
            {
              v4 = *(this + 153);
              break;
            }
          }
        }

        v7 = (v5 - (v4 + 8));
        if (v5 != v4 + 8)
        {
          memmove(v4, v4 + 8, v5 - (v4 + 8));
          v3 = *(this + 170);
        }

        *(this + 153) = &v7[v4];
        *(this + 310) = -1;
        (*(*v3 + 24))(v3);
        *(this + 170) = 0;
      }

      v8 = *(this + 171);
      if (v8)
      {
        (*(*v8 + 24))(v8);
        *(this + 171) = 0;
      }

      v9 = *(this + 169);
      if (v9)
      {
        (*(*v9 + 24))(v9);
        *(this + 169) = 0;
      }

      (*(*this + 144))(this, 0);
      HGObject::Release(this);
    }
  }

  return HGObject::Release(this);
}

void HGGPURenderer::SetParameter(uint64_t a1, const char *a2, char *a3)
{
  v3 = a3;
  switch(a2)
  {
    case 5:
    case 46:
      return;
    case 18:
      if (HG_RENDERER_ENV::FORCE_PAGE_SIZE == -1)
      {
        v5 = *(a1 + 1248);
        if (v5 >= a3)
        {
          v5 = a3;
        }

        *(a1 + 660) = v5;
      }

      break;
    case 19:
      HGRenderer::SetParameter(a1, 19, a3);
      Target = HGRenderer::GetTarget(a1, 393216);
      if (*(a1 + 576) == 28 && (Target - 394305) <= 0xFFFFFFBE && HG_RENDERER_ENV::LOW_MEMORY_USAGE)
      {
        v9 = *(*a1 + 120);

        v9(a1, 26, 12);
      }

      break;
    case 20:
      v6 = *(a1 + 580);
      HGRenderer::SetParameter(a1, 20, a3);
      v7 = *(a1 + 580);
      if (v6 != v7)
      {
        if (v7 == 28)
        {
          std::string::basic_string[abi:ne200100]<0>(&v14, "highp");
        }

        else if (v7 == 24)
        {
          std::string::basic_string[abi:ne200100]<0>(&v14, "lowp");
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v14, "mediump");
        }

        __p = v14;
        HGGLState::resetUniforms(*(a1 + 1168));
        HGGLShaderCache::SetPrecisionKeyword(*(a1 + 1288), &__p);
        HGGLShaderCache::ResetGLSL(*(a1 + 1288));
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      break;
    case 21:
      *(a1 + 1340) = a3;
      break;
    case 25:
      *(a1 + 1256) = a3 << 20;
      break;
    case 26:
      *(a1 + 1256) = ((a3 / 100.0) * *(PCICCTransferFunctionLUT::getLUTEnd(*(a1 + 1112)) + 40));
      break;
    case 35:
      if (*(a1 + 1281) == 1 && *(a1 + 1472))
      {
        v10 = HGObject::operator new(0x10uLL);
        v11 = v10;
        if (v3 == 128)
        {
          POTPaddingPolicy::POTPaddingPolicy(v10);
          v12 = *(a1 + 1472);
          v17 = v11;
          if (v11)
          {
            (*(*v11 + 16))(v11);
          }

          HGTextureManager::setTexturePaddingPolicy(v12, &v17);
          if (v17)
          {
            (*(*v17 + 24))(v17);
          }

          if (v11)
          {
            (*(*v11 + 24))(v11);
          }
        }

        else
        {
          BorderPaddingPolicy::BorderPaddingPolicy(v10, v3);
          v13 = *(a1 + 1472);
          v16 = v11;
          if (v11)
          {
            (*(*v11 + 16))(v11);
          }

          HGTextureManager::setTexturePaddingPolicy(v13, &v16);
          if (v16)
          {
            (*(*v16 + 24))(v16);
          }

          if (v11)
          {
            (*(*v11 + 24))(v11);
          }
        }
      }

      break;
    case 37:
      *(a1 + 1265) = a3 != 0;
      break;
    case 38:
      if (HG_RENDERER_ENV::FORCE_TEXTURE_STORAGE_HINT == -1)
      {
        *(a1 + 1264) = a3;
      }

      break;
    case 39:
      *(a1 + 1266) = a3 != 0;
      break;
    case 43:
      *(a1 + 1268) = a3;
      if (!a3 && (*(a1 + 1281) & 1) == 0)
      {
        *(a1 + 1268) = 1;

        HGLogger::warning("Renderer does not support OpenGL rendering! Welcome to the future!", a2, a3);
      }

      break;
    case 44:
      *(a1 + 1272) = a3;
      break;
    case 45:
      *(a1 + 1276) = a3;
      break;
    case 47:
      *(a1 + 1464) = a3;
      break;
    default:

      HGRenderer::SetParameter(a1, a2, a3);
      break;
  }
}

int HGGPURenderer::GetParameter(uint64_t a1, int a2)
{
  if (a2 <= 26)
  {
    if (a2 > 24)
    {
      if (a2 == 25)
      {
        return *(a1 + 1256) >> 20;
      }

      else
      {
        LODWORD(a1) = llroundf((*(a1 + 1256) / *(PCICCTransferFunctionLUT::getLUTEnd(*(a1 + 1112)) + 40)) * 100.0);
      }

      return a1;
    }

    if (a2 == 18)
    {
      LODWORD(a1) = *(a1 + 660);
      return a1;
    }

    if (a2 == 21)
    {
      LODWORD(a1) = *(a1 + 1340);
      return a1;
    }
  }

  else if (a2 <= 43)
  {
    if (a2 == 27)
    {
      LODWORD(a1) = *(a1 + 1248);
      return a1;
    }

    if (a2 == 43)
    {
      LODWORD(a1) = *(a1 + 1268);
      return a1;
    }
  }

  else
  {
    switch(a2)
    {
      case ',':
        LODWORD(a1) = *(a1 + 1272);
        return a1;
      case '-':
        LODWORD(a1) = *(a1 + 1276);
        return a1;
      case '/':
        LODWORD(a1) = *(a1 + 1464);
        return a1;
    }
  }

  LODWORD(a1) = HGRenderer::GetParameter(a1, a2);
  return a1;
}

char *HGGPURenderer::CreateBuffer(uint64_t a1, HGRect a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 620);
  if (v7 == 2)
  {
    a5 = 1;
  }

  if (v7)
  {
    v9 = a5 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    if (a3 == 24)
    {
      v12 = 23;
    }

    else
    {
      v12 = a3;
    }

    v21 = 0;
    v13 = *(a1 + 1112);
    if (v13)
    {
      v14 = *&a2.var2;
      v15 = *&a2.var0;
      LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(v13);
      DeviceResources = HGGPUResources::getDeviceResources(LUTEnd, v17);
      *&a2.var0 = v15;
      *&a2.var2 = v14;
      if (DeviceResources)
      {
        v19 = *(DeviceResources + 3);
        if (v19)
        {
          (*(*v19 + 16))(*(DeviceResources + 3), v15, v14);
          *&a2.var0 = v15;
          *&a2.var2 = v14;
          v21 = v19;
        }
      }
    }

    HGCVBitmap::create(&v21, *&a2.var0, *&a2.var2, v12, &v22);
    if (v21)
    {
      (*(*v21 + 24))(v21);
    }

    v11 = HGObject::operator new(0x80uLL);
    *&v24.var0 = *(v22 + 20);
    *&v24.var2 = *(v22 + 28);
    HGBuffer::HGBuffer(v11, v24, v22);
    if (v22)
    {
      (*(*v22 + 24))(v22);
    }

    return v11;
  }

  if (a4 == 1)
  {
    v10 = (*(*a1 + 336))(a1, *&a2.var0, *&a2.var2, a3, a6, a7);
    v11 = HGObject::operator new(0x80uLL);
    HGBuffer::HGBuffer(v11, *(v10 + 20), v10);
    (*(*v10 + 24))(v10);
    return v11;
  }

  return HGGPURenderer::CreateBuffer(a1, a2, a3, a6);
}

void sub_25FC5F584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = v10;
  HGObject::operator delete(v12);
  (*(*v11 + 24))(v11);
  _Unwind_Resume(a1);
}

char *HGGPURenderer::CreateBuffer(uint64_t a1, HGRect a2, int a3, int a4)
{
  if (a3)
  {
    v5 = *&a2.var2;
    v6 = *&a2.var0;
    v7 = a1;
    v26 = a2;
    LODWORD(a1) = a2.var0;
    if (a4)
    {
      v10 = *(v7 + 1340);
      if (v10)
      {
        v11 = HGRectMake4i(-v10, -v10, *(v7 + 1340), v10);
        v13 = v12;
        *&v28.var0 = v11;
        *&v28.var2 = v13;
        HGRect::Grow(&v26, v28);
        a2 = v26;
      }

      a1 = HGTextureManager::adjustTextureSize(*(v7 + 1472), a2);
      *&v26.var0 = a1;
      *&v26.var2 = v14;
      if (a3 != 31)
      {
LABEL_4:
        v8 = *(v7 + 1168);
        if (!v8)
        {
          goto LABEL_15;
        }

        goto LABEL_11;
      }
    }

    else if (a3 != 31)
    {
      goto LABEL_4;
    }

    v26.var2 = a1 + 6 * ((v5 - v6 + 5) / 6u);
    v8 = *(v7 + 1168);
    if (!v8)
    {
LABEL_15:
      HGGLContext::isES2(*(v7 + 1144 + 8 * *(v7 + 1160)));
      v16 = &s_HGFormatInfos[8 * a3];
      v17 = *v16;
      HGGLContext::isES2(*(v7 + 1144 + 8 * *(v7 + 1160)));
      v18 = v16[2];
      HGGLContext::isES2(*(v7 + 1144 + 8 * *(v7 + 1160)));
      v19 = v16[1];
      v25 = 0;
      HGTextureManager::TextureInfo::TextureInfo(&v27, 3553, v26.var2 - v26.var0, v26.var3 - v26.var1, v17, v19, v18);
      HGTextureManager::createTexture(*(v7 + 1472), &v25, &v27);
      HGTextureManager::activeTexture(*(v7 + 1472), 0x84C0u, v20, v21, v22);
      HGTextureManager::bindTexture(*(v7 + 1472), 0xDE1u, v25);
      glTexParameteri(0xDE1u, 0x2800u, 9728);
      glTexParameteri(0xDE1u, 0x2801u, 9728);
      glTexParameteri(0xDE1u, 0x2802u, 33071);
      glTexParameteri(0xDE1u, 0x2803u, 33071);
      HGTextureManager::texImage2D(*(v7 + 1472), 3553, 0, v17, v26.var2 - v26.var0, v26.var3 - v26.var1, 0, v19, v18, 0);
      HGTextureManager::bindTexture(*(v7 + 1472), 0xDE1u, 0);
      v9 = HGObject::operator new(0xB8uLL);
      HGGLBuffer::HGGLBuffer(v9, v6, v5, a3, v7);
      v23 = v25;
      *(v9 + 39) = v25;
      *(v9 + 40) = v23;
      *(v9 + 38) = 3553;
      *(v9 + 136) = v26;
      v9[180] = !HGRectIsEqual(*&v26.var0, *&v26.var2, v6, v5);
      return v9;
    }

LABEL_11:
    v15 = *(v7 + 8 * *(v7 + 1160) + 1144);
    if (v15)
    {
      HGGLContext::context(&v27, v15);
    }

    else
    {
      HGGLContextPtr::HGGLContextPtr(&v27, 0);
    }

    HGGLState::setCurrentContext(v8, &v27.var0);
    PCSharedCount::PCSharedCount(&v27);
    goto LABEL_15;
  }

  HGLogger::error("CreateBuffer() : format == kHGFormat_Null.\n", *&a2.var0, *&a2.var2);
  return 0;
}

void *HGGPURenderer::CreateTexture(HGGPURenderer *this, uint64_t a2, HGGPURenderer *a3)
{
  if (!*(this + 3))
  {
    return 0;
  }

  v4 = *(this + 146);
  if (v4)
  {
    v5 = *(this + *(this + 290) + 143);
    if (v5)
    {
      HGGLContext::context(&v9, v5);
    }

    else
    {
      HGGLContextPtr::HGGLContextPtr(&v9, 0);
    }

    HGGLState::setCurrentContext(v4, &v9.var0);
    PCSharedCount::PCSharedCount(&v9);
  }

  if (*(this + 1281) == 1)
  {
    if (*(this + 311))
    {
      glFlush();
    }
  }

  *(this + 311) = 0;
  v6 = *(this + 3);
  if (!*(v6 + 156))
  {
    return 0;
  }

  Texture = HGGLTexture::CreateTexture(*(this + 3), this, a3);
  v9.var0 = v6;
  std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 1216, &v9);
  result = Texture;
  *(this + 310) = -1;
  return result;
}

void *HGGPURenderer::CreateMetalTexture(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, int a6)
{
  v9 = *(a1 + 1112);
  if (*(v9 + 52) == 1)
  {
    v12 = *(*(v9 + 16) + 16);
    v13 = HGMetalContext::texturePool(v9);
    HGMetalTexture::create(v12, v13, a2, a3, a4, a5, 1, a6, &v17, 0);
    if (v17)
    {
      (*(*v17 + 16))(v17);
      v14 = v17;
      v15 = v17;
      if (!v17)
      {
        return v15;
      }

      goto LABEL_7;
    }

    v15 = HGObject::operator new(0x80uLL);
    HGBuffer::HGBuffer(v15, 0, 0, a4);
    v14 = v17;
    if (v17)
    {
LABEL_7:
      (*(*v14 + 24))(v14);
    }
  }

  else
  {
    v15 = HGObject::operator new(0x80uLL);
    HGBuffer::HGBuffer(v15, a2, a3, a4);
  }

  return v15;
}

void sub_25FC5FB7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  HGObject::operator delete(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

const char *HGGPURenderer::ReadBitmap(const char *this, HGRect a2, HGBitmap *a3)
{
  if (*(this + 3))
  {
    v4 = *(a3 + 4);
    if (v4 != 31)
    {
      if (v4)
      {
        v5 = *&a2.var2;
        v6 = *&a2.var0;
        v7 = this;
        v8 = *(this + 146);
        v9 = *&this[8 * *(this + 290) + 1144];
        if (v9)
        {
          HGGLContext::context(&v10, v9);
        }

        else
        {
          HGGLContextPtr::HGGLContextPtr(&v10, 0);
        }

        HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v11, v8, &v10);
        PCSharedCount::PCSharedCount(&v10);
        if (*(v7 + 1281) == 1 && *(v7 + 1244))
        {
          glFlush();
        }

        *(v7 + 1244) = 0;
        *&v13.var0 = v6;
        *&v13.var2 = v5;
        HGGPURenderer::ReadBitmapClassic(v7, v13, a3);
      }

      return HGLogger::error("ReadBitmap() : bmp->m_Format == kHGFormat_Null. No readback attempted.\n", *&a2.var0, *&a2.var2);
    }
  }

  return this;
}

void sub_25FC5FCF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::GetCurrentContext(HGGPURenderer *this@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(this + *(this + 290) + 143);
  if (v2)
  {
    HGGLContext::context(a2, v2);
  }

  else
  {
    HGGLContextPtr::HGGLContextPtr(a2, 0);
  }
}

void HGGPURenderer::ReadBitmapClassic(HGGPURenderer *this, HGRect a2, HGBitmap *a3)
{
  v3 = *&a2.var2;
  v4 = *&a2.var0;
  v10 = *MEMORY[0x277D85DE8];
  v7 = 4352;
  kdebug_trace();
  HGRectIntersection(v4, v3, *(*(this + 3) + 20), *(*(this + 3) + 28));
  *v8 = 0;
  v9 = 0;
  HGRenderUtils::BufferFiller::BufferFiller(v6);
}

void sub_25FC60060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, int a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HGGPURenderer::ReadBitmapWithPBO(HGGPURenderer *this, HGRect a2, HGBitmap *a3)
{
  v3 = *&a2.var2;
  v4 = *&a2.var0;
  v11 = *MEMORY[0x277D85DE8];
  v8 = 4354;
  kdebug_trace();
  v6 = *(this + 3);
  (*(*v6 + 16))(v6);
  (*(*this + 144))(this, 0);
  if (!*(this + 179))
  {
    operator new();
  }

  HGRectIntersection(v4, v3, *(v6 + 20), *(v6 + 28));
  *v9 = 0;
  v10 = 0;
  HGRenderUtils::BufferFiller::BufferFiller(v7);
}

void sub_25FC60AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, PCSharedCount a15, uint64_t a16, uint64_t a17, PCSharedCount a18, void *__p, uint64_t a20, uint64_t a21, char a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

HGBuffer *HGGPURenderer::LoadNullBuffer(HGGPURenderer *this)
{
  v2 = *(this + 169);
  if (!v2)
  {
    v2 = HGObject::operator new(0x80uLL);
    v3 = HGRectMake4i(0, 0, 0, 0);
    HGBitmap::HGBitmap(v2, v3, v4, 24);
    *(this + 169) = v2;
  }

  (*(*v2 + 16))(v2);
  v5 = *(this + 169);
  v6 = HGObject::operator new(0x80uLL);
  HGBuffer::HGBuffer(v6, *(v5 + 20), v5);
  (*(*v5 + 24))(v5);
  return v6;
}

unsigned int *HGGPURenderer::LoadNullGLTexture(HGGPURenderer *this)
{
  v2 = *(this + 170);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    return *(this + 170);
  }

  else
  {
    v4 = HGObject::operator new(0xC8uLL);
    *&v12.var0 = 0;
    *&v12.var2 = 0;
    HGGLTexture::HGGLTexture(v4, v12, 0, this);
    HGTextureManager::TextureInfo::TextureInfo(v11, 3553, 1, 1, 6408, 6408, 5121);
    HGTextureManager::createTexture(*(this + 184), v4 + 42, v11);
    HGTextureManager::activeTexture(*(this + 184), 0x84C0u, v5, v6, v7);
    HGTextureManager::bindTexture(*(this + 184), 0xDE1u, v4[42]);
    v4[40] = 3553;
    *(v4 + 22) = *(v4 + 21);
    HGTextureManager::texImage2D(*(this + 184), 3553, 0, 6408, 1, 1, 0, 6408, 0x1401u, &HGGPURenderer::LoadNullGLTexture(void)::black_pixel);
    HGTextureManager::bindTexture(*(this + 184), 0xDE1u, 0);
    v10 = atomic_load(HGLogger::_enabled);
    if (v10)
    {
      HGLogger::log("gpu", 1, "Uploading black texture to ID %d\n", v8, v9, *(v4 + 21));
    }

    *(this + 170) = v4;
    (*(*v4 + 16))(v4);
    v11[0] = *(this + 170);
    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 1216, v11);
    *(this + 310) = -1;
    return v4;
  }
}

uint64_t HGGPURenderer::LoadNullMetalTexture(HGGPURenderer *this)
{
  v2 = *(this + 171);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    return *(this + 171);
  }

  else
  {
    v4 = HGRectMake4i(0, 0, 1u, 1u);
    v6 = v5;
    v7 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v7, v4, v6, 24);
    bzero(*(v7 + 10), *(v7 + 9));
    v8 = *(this + 139);
    v9 = *(*(v8 + 2) + 16);
    v10 = HGMetalContext::texturePool(v8);
    HGMetalTexture::createWithCopy(v9, v10, v7, *(v7 + 20), *(v7 + 28), 0, 0, &v13);
    (*(*v13 + 16))(v13);
    v11 = v13;
    *(this + 171) = v13;
    (*(*v11 + 16))(v11);
    v12 = *(this + 171);
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }

    (*(*v7 + 24))(v7);
    return v12;
  }
}

unsigned int *HGGPURenderer::LoadTexture(HGGPURenderer *this, HGRect a2, HGBitmap *a3, int a4)
{
  v6 = *&a2.var2;
  v7 = *&a2.var0;
  HGTraceGuard::HGTraceGuard(v143, "lt", 1, "HGGPURenderer::LoadTexture");
  v9 = *(this + 146);
  v10 = *(this + *(this + 290) + 143);
  if (v10)
  {
    HGGLContext::context(&v141, v10);
  }

  else
  {
    HGGLContextPtr::HGGLContextPtr(&v141, 0);
  }

  HGGLState::SetCurrentContextGuard::SetCurrentContextGuard(v142, v9, &v141);
  PCSharedCount::PCSharedCount(&v141);
  if (!a3)
  {
    NullGLTexture = HGGPURenderer::LoadNullGLTexture(this);
    goto LABEL_9;
  }

  *&v140.var0 = 0;
  *&v140.var2 = 0;
  *&v140.var0 = HGRectIntersection(v7, v6, *(a3 + 20), *(a3 + 28));
  *&v140.var2 = v11;
  if (HGRect::IsNull(&v140) || *(a3 + 4) == 31)
  {
LABEL_7:
    NullGLTexture = HGGPURenderer::LoadNullGLTexture(this);
LABEL_9:
    v14 = NullGLTexture;
    goto LABEL_10;
  }

  CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a3, v12);
  if (CVBitmapStorage)
  {
    (*(*this + 144))(this, 0);
    v17 = *(this + 164);
    if (v17)
    {
      if (v18)
      {
        v19 = v18;
        HGMetalHandler::FinalizeCommandBuffer(v18);
        HGMetalHandler::BindBuffer(v19, 0);
      }
    }

    v20 = *(this + 165);
    if (v20)
    {
      HGMetalCommandBufferRef::waitUntilScheduled(v20);
    }

    HGTraceGuard::HGTraceGuard(v136, "lt", 1, "LoadTexture -- via CVOpenGLTextureCacheCreateTextureFromImage");
    v21 = *(this + 147);
    (*(*CVBitmapStorage + 16))(CVBitmapStorage);
    *&v139.var0 = CVBitmapStorage;
    HGCVGLTextureFactory::create(&__p, v21, &v139);
    if (*&v139.var0)
    {
      (*(**&v139.var0 + 24))(*&v139.var0);
    }

    v22 = __p;
    if (__p)
    {
      EdgePolicy = HGBitmap::GetEdgePolicy(a3);
      HGBitmap::SetEdgePolicy(v22, EdgePolicy);
      HGGLTexture::AssignRenderer(__p, this);
      if (!__p)
      {
        v14 = 0;
        goto LABEL_29;
      }

      (*(*__p + 16))(__p);
      v24 = __p;
      v14 = __p;
      if (!__p)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v14 = HGGPURenderer::LoadNullGLTexture(this);
      v24 = __p;
      if (!__p)
      {
LABEL_29:
        HGTraceGuard::~HGTraceGuard(v136);
        goto LABEL_10;
      }
    }

    (*(*v24 + 24))(v24);
    goto LABEL_29;
  }

  if (!*(a3 + 10))
  {
    goto LABEL_7;
  }

  v25 = *(a3 + 4);
  v26 = (v25 - 14);
  v27 = *(a3 + 8) % *(a3 + 7);
  if (v26 >= 3)
  {
    if (v25 == 31)
    {
      v140.var2 = vcvts_n_s32_f32(ceilf(v140.var2 / 6.0), 2uLL);
      v140.var0 = vcvts_n_s32_f32(floorf(v140.var0 / 6.0), 2uLL);
      v28 = *&v140.var0;
      LODWORD(v26) = vcvtps_s32_f32((v140.var2 * 3.0) * 0.5);
      v29 = *&v140.var2 & 0xFFFFFFFF00000000 | v26;
      var0 = vcvtms_s32_f32((v140.var0 * 3.0) * 0.5);
    }

    else
    {
      v28 = *&v140.var0;
      v29 = *&v140.var2;
      var0 = v140.var0;
    }
  }

  else
  {
    v140.var2 = vcvtps_s32_f32(v140.var2 * 0.5);
    v140.var0 = vcvtms_s32_f32(v140.var0 * 0.5);
    v28 = *&v140.var0;
    v29 = *&v140.var2 & 0xFFFFFFFF00000000 | (v140.var2 + v140.var2);
    var0 = (v28 + v28);
  }

  v31 = s_Alignments[v27];
  v139 = v140;
  if (a4 && !*HGBitmap::GetEdgePolicy(a3))
  {
    v32 = *(this + 335);
    if (v32)
    {
      v33 = HGRectMake4i(-v32, -v32, v32, *(this + 335));
      v35 = v34;
      *&v144.var0 = v33;
      *&v144.var2 = v35;
      HGRect::Grow(&v139, v144);
    }

    *&v139.var0 = HGTextureManager::adjustTextureSize(*(this + 184), v139);
    *&v139.var2 = v36;
  }

  v124 = var0;
  v125 = v29;
  IsEqual = HGRectIsEqual(*&v139.var0, *&v139.var2, *&v140.var0, *&v140.var2);
  v40 = atomic_load(HGLogger::_enabled);
  if (v40)
  {
    HGLogger::log("lt", 1, "bitmap rect : [%d %d %d %d]\n", v37, v38, *(a3 + 5), *(a3 + 6), *(a3 + 7), *(a3 + 8));
  }

  v41 = atomic_load(HGLogger::_enabled);
  if (v41)
  {
    HGLogger::log("lt", 1, "inter rect  : [%d %d %d %d]\n", v37, v38, v140.var0, v140.var1, v140.var2, v140.var3);
  }

  v42 = atomic_load(HGLogger::_enabled);
  if (v42)
  {
    HGLogger::log("lt", 1, "padded rect : [%d %d %d %d]\n", v37, v38, v139.var0, v139.var1, v139.var2, v139.var3);
  }

  v43 = atomic_load(HGLogger::_enabled);
  if (v43)
  {
    v44 = "no";
    if (!IsEqual)
    {
      v44 = "yes";
    }

    HGLogger::log("lt", 1, "padded : %s\n", v37, v38, v44);
  }

  var2 = v139.var2;
  var3 = v139.var3;
  v47 = v139.var0;
  var1 = v139.var1;
  v49 = atomic_load(HGLogger::_enabled);
  if (v49)
  {
    HGLogger::log("lt", 1, "FORCE_UPLOAD_SUB_IMAGE    : %s\n", v37, v38, "no");
  }

  v50 = atomic_load(HGLogger::_enabled);
  if (v50)
  {
    HGLogger::log("lt", 1, "FORCE_UPLOAD_LINE_BY_LINE : %s\n", v37, v38, "no");
  }

  v51 = atomic_load(HGLogger::_enabled);
  if (v51)
  {
    HGLogger::log("lt", 1, "FORCE_TEX_COPY            : %s\n", v37, v38, "no");
  }

  (*(*a3 + 16))(a3);
  param = v31;
  v54 = *(a3 + 7);
  v55 = *(a3 + 8);
  v129 = IsEqual;
  v56 = IsEqual && v54 * (v139.var2 - v139.var0) == v55;
  v122 = v54 * (v140.var2 - v140.var0);
  v123 = *(a3 + 8);
  v57 = v122 == v55 || v56;
  v58 = atomic_load(HGLogger::_enabled);
  if (v58)
  {
    HGLogger::log("lt", 1, "NO_GL_UNPACK_ROW_LENGTH : %s\n", v52, v53, "yes");
  }

  v59 = atomic_load(HGLogger::_enabled);
  if (v59)
  {
    v60 = "no";
    if (v56)
    {
      v60 = "yes";
    }

    HGLogger::log("lt", 1, "canUploadFull     : %s\n", v52, v53, v60);
  }

  v61 = atomic_load(HGLogger::_enabled);
  if (v61)
  {
    v62 = "no";
    if (v122 == v123)
    {
      v62 = "yes";
    }

    HGLogger::log("lt", 1, "canUploadSubImage : %s\n", v52, v53, v62);
  }

  v63 = atomic_load(HGLogger::_enabled);
  if (v63)
  {
    v64 = "no";
    if (!v129)
    {
      v64 = "yes";
    }

    HGLogger::log("lt", 1, "needBorderUpload  : %s\n", v52, v53, v64);
  }

  v65 = atomic_load(HGLogger::_enabled);
  if (v65)
  {
    v66 = "yes";
    if (v56)
    {
      v66 = "no";
    }

    HGLogger::log("lt", 1, "uploadSubImage    : %s\n", v52, v53, v66);
  }

  v67 = atomic_load(HGLogger::_enabled);
  if (v67)
  {
    v68 = "yes";
    if (v57)
    {
      v68 = "no";
    }

    HGLogger::log("lt", 1, "uploadLineByLine  : %s\n", v52, v53, v68);
  }

  HGGLContext::isES2(*(this + *(this + 290) + 143));
  v14 = HGObject::operator new(0xC8uLL);
  *&v145.var2 = v125;
  *&v145.var0 = v28 & 0xFFFFFFFF00000000 | v124;
  HGGLTexture::HGGLTexture(v14, v145, a3, this);
  v69 = &s_HGFormatInfos[8 * v14[4]];
  v70 = *v69;
  v71 = v69[1];
  v72 = v69[2];
  *(v14 + 5) = v140;
  HGTextureManager::TextureInfo::TextureInfo(v136, 3553, var2 - v47, var3 - var1, v70, v71, v72);
  if (v56)
  {
    v73 = *(v14 + 8);
    v137 = *(v14 + 10);
    v138 = v73;
  }

  HGTextureManager::createTexture(*(this + 184), v14 + 42, v136);
  HGTextureManager::activeTexture(*(this + 184), 0x84C0u, v74, v75, v76);
  HGTextureManager::bindTexture(*(this + 184), 0xDE1u, v14[42]);
  v14[40] = 3553;
  *(v14 + 22) = *(v14 + 21);
  *(v14 + 9) = v139;
  if (!v56)
  {
    HGTextureManager::texImage2D(*(this + 184), v136);
  }

  glPixelStorei(0xCF5u, param);
  if (v56)
  {
    HGTextureManager::texImage2D(*(this + 184), v136);
  }

  else
  {
    v77 = *(v14 + 10);
    v78 = v14[5];
    v79 = v14[6];
    v80 = v78 - v139.var0;
    v81 = v79 - v139.var1;
    v82 = v14[7] - v78;
    v83 = v14[8] - v79;
    if (v122 == v123)
    {
      v84 = &s_HGFormatInfos[8 * v14[4]];
      glTexSubImage2D(0xDE1u, 0, v80, v81, v82, v83, v84[1], v84[2], *(v14 + 10));
    }

    else if (v83 >= 1)
    {
      for (i = 0; i != v83; ++i)
      {
        v86 = &s_HGFormatInfos[8 * v14[4]];
        glTexSubImage2D(0xDE1u, 0, v80, v81++, v82, 1, v86[1], v86[2], (v77 + *(v14 + 8) * i));
      }
    }
  }

  glPixelStorei(0xCF5u, 4);
  if (v129)
  {
    v89 = !v56;
    v90 = atomic_load(HGLogger::_enabled);
    if ((v90 & 1) == 0)
    {
      goto LABEL_118;
    }
  }

  else
  {
    HGTraceGuard::HGTraceGuard(v135, "lt", 1, "border sub-tex image");
    __p = 0;
    v133 = 0;
    v134 = 0;
    v91 = v140.var0;
    v92 = v140.var3;
    v130 = v140.var2;
    v93 = v139.var0;
    v94 = v139.var2;
    v95 = v139.var3;
    if (v139.var1 >= v140.var1)
    {
      v99 = 0;
      v96 = v140.var1;
      v100 = v140.var3;
    }

    else
    {
      v126 = v140.var0;
      v127 = v139.var2;
      v96 = v140.var1;
      *&v131 = HGRectMake4i(v139.var0, v139.var1, v139.var2, v140.var1);
      *(&v131 + 1) = v97;
      std::vector<HGRect>::push_back[abi:ne200100](&__p, &v131);
      v98 = vsub_s32(*(&v131 + 8), *&v131);
      v99 = vmul_lane_s32(v98, v98, 1).u32[0];
      v100 = v92;
      v94 = v127;
      v91 = v126;
    }

    if (v95 > v100)
    {
      v128 = v96;
      v101 = v91;
      v131 = 0uLL;
      v102 = v94;
      *&v131 = HGRectMake4i(v93, v100, v94, v95);
      *(&v131 + 1) = v103;
      std::vector<HGRect>::push_back[abi:ne200100](&__p, &v131);
      v104 = vsub_s32(*(&v131 + 8), *&v131);
      v105 = vmul_lane_s32(v104, v104, 1).u32[0];
      if (v99 <= v105)
      {
        v99 = v105;
      }

      v94 = v102;
      v91 = v101;
      v96 = v128;
    }

    if (v93 >= v91)
    {
      v110 = v130;
    }

    else
    {
      v106 = v94;
      v131 = 0uLL;
      *&v131 = HGRectMake4i(v93, v96, v91, v100);
      *(&v131 + 1) = v107;
      std::vector<HGRect>::push_back[abi:ne200100](&__p, &v131);
      v108 = vsub_s32(*(&v131 + 8), *&v131);
      v109 = vmul_lane_s32(v108, v108, 1).u32[0];
      if (v99 <= v109)
      {
        v99 = v109;
      }

      v110 = v130;
      v94 = v106;
    }

    if (v94 > v110)
    {
      v131 = 0uLL;
      *&v131 = HGRectMake4i(v110, v96, v94, v100);
      *(&v131 + 1) = v111;
      std::vector<HGRect>::push_back[abi:ne200100](&__p, &v131);
      v112 = vsub_s32(*(&v131 + 8), *&v131);
      v113 = vmul_lane_s32(v112, v112, 1).u32[0];
      if (v99 <= v113)
      {
        v99 = v113;
      }
    }

    v114 = *(a3 + 7) * v99;
    pixels = HGMemory::allocate(v114, 0, v94);
    bzero(pixels, v114);
    glPixelStorei(0xCF5u, 1);
    v116 = __p;
    v117 = v133;
    if (__p != v133)
    {
      do
      {
        v118 = &s_HGFormatInfos[8 * v14[4]];
        glTexSubImage2D(0xDE1u, 0, *v116 - v139.var0, v116[1] - v139.var1, v116[2] - *v116, v116[3] - v116[1], v118[1], v118[2], pixels);
        v116 += 4;
      }

      while (v116 != v117);
    }

    glPixelStorei(0xCF5u, 4);
    HGMemory::release(pixels, v119);
    if (__p)
    {
      v133 = __p;
      operator delete(__p);
    }

    HGTraceGuard::~HGTraceGuard(v135);
    v89 = 1;
    v120 = atomic_load(HGLogger::_enabled);
    if ((v120 & 1) == 0)
    {
      goto LABEL_118;
    }
  }

  HGLogger::log("gpu", 1, "Uploading %s texture ID %d (%dx%d)\n", v87, v88, "2D", *(v14 + 21), v14[7] - v14[5], v14[8] - v14[6]);
LABEL_118:
  if (v89)
  {
    glFlush();
  }

  HGTextureManager::bindTexture(*(this + 184), 0xDE1u, 0);
  (*(*a3 + 24))(a3);
LABEL_10:
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard(v142);
  HGTraceGuard::~HGTraceGuard(v143);
  return v14;
}

void sub_25FC620AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27)
{
  HGGLState::SetCurrentContextGuard::~SetCurrentContextGuard((v27 - 136));
  HGTraceGuard::~HGTraceGuard((v27 - 112));
  _Unwind_Resume(a1);
}

void HGGPURenderer::FlushMetalCommandBuffer(HGGPURenderer *this)
{
  (*(*this + 144))(this, 0);
  v2 = *(this + 164);
  if (v2)
  {
    if (v3)
    {
      v4 = v3;
      HGMetalHandler::FinalizeCommandBuffer(v3);
      HGMetalHandler::BindBuffer(v4, 0);
    }
  }

  v5 = *(this + 165);
  if (v5)
  {

    HGMetalCommandBufferRef::waitUntilScheduled(v5);
  }
}

uint64_t HGGPURenderer::BindBuffer(HGGPURenderer *this, HGBitmap *a2)
{
  v4 = *(this + 146);
  if (v4)
  {
    v5 = *(this + *(this + 290) + 143);
    if (v5)
    {
      HGGLContext::context(&v25, v5);
    }

    else
    {
      HGGLContextPtr::HGGLContextPtr(&v25, 0);
    }

    HGGLState::setCurrentContext(v4, &v25.var0);
    PCSharedCount::PCSharedCount(&v25);
  }

  (*(*this + 152))(this, 0, 0, 0, 0);
  (*(*this + 152))(this, 1, 0, 0, 0);
  (*(*this + 152))(this, 2, 0, 0, 0);
  (*(*this + 152))(this, 3, 0, 0, 0);
  (*(*this + 152))(this, 4, 0, 0, 0);
  (*(*this + 152))(this, 5, 0, 0, 0);
  (*(*this + 152))(this, 6, 0, 0, 0);
  (*(*this + 152))(this, 7, 0, 0, 0);
  v9 = *(this + 184);
  if (v9)
  {
    HGTextureManager::activeTexture(v9, 0x84C0u, v6, v7, v8);
  }

  v10 = *(this + 168);
  if (a2 && v10 == a2)
  {
    return 0;
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
    *(this + 168) = 0;
  }

  if (a2)
  {
    *(this + 168) = a2;
    (*(*a2 + 16))(a2);
    a2 = *(this + 168);
    if (a2)
    {
      v14 = *(a2 + 3);
      if ((v14 & 0x10) == 0)
      {
        CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(*(this + 168), v12);
        if (CVBitmapStorage)
        {
          v18 = *(this + 147);
          if (v18)
          {
            v19 = CVBitmapStorage;
            (*(*CVBitmapStorage + 16))(CVBitmapStorage);
            v24 = v19;
            HGCVGLTextureFactory::create(&v25, v18, &v24);
            if (v24)
            {
              (*(*v24 + 24))(v24);
            }

            var0 = v25.var0;
            v21 = *(v25.var0 + 40);
            v22 = *(v25.var0 + 21);
            a2 = HGObject::operator new(0xB8uLL);
            HGGLBuffer::HGGLBuffer(a2, *(var0 + 20), *(var0 + 28), *(var0 + 4), this, v21, v22, 1);
            HGBitmap::SetStorage(a2, v25.var0);
            if (v25.var0)
            {
              (*(*v25.var0 + 24))(v25.var0);
            }

            if (a2)
            {
              goto LABEL_28;
            }
          }
        }

        goto LABEL_26;
      }

      if ((v14 & 0x100) == 0)
      {
        HGLogger::warning("BindBuffer() : bitmap is a texture, not a buffer", v12, v13);
LABEL_26:
        a2 = 0;
        HGLogger::warning("BindBuffer() : couldn't bind buffer", v16, v17);
        goto LABEL_28;
      }

      (*(*a2 + 16))(*(this + 168));
    }
  }

LABEL_28:
  result = HGGPURenderer::BindBufferInternal(this, a2);
  if (a2)
  {
    v23 = result;
    (*(*a2 + 24))(a2);
    return v23;
  }

  return result;
}

void sub_25FC627BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCSharedCount a10)
{
  if (a10.var0)
  {
    (*(*a10.var0 + 24))(a10.var0);
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGGPURenderer::BindBufferInternal(HGGPURenderer *this, HGBitmap *a2)
{
  if (*(this + 1281) == 1)
  {
    glUseProgram(0);
  }

  v4 = *(this + 3);
  if (v4)
  {
    v5 = *(this + 3);
    if (*(v4 + 156))
    {
      HGTextureManager::framebufferTexture2D(*(this + 184), *(v4 + 152), 0);
      v5 = *(this + 3);
    }

    v6 = *(this + 152);
    v7 = *(this + 153);
    if (v6 != v7)
    {
      v8 = *(this + 152);
      while (*v8 != v5)
      {
        v8 += 8;
        v6 += 8;
        if (v8 == v7)
        {
          v6 = *(this + 153);
          break;
        }
      }
    }

    v9 = (v7 - (v6 + 8));
    if (v7 != v6 + 8)
    {
      memmove(v6, v6 + 8, v7 - (v6 + 8));
    }

    *(this + 153) = &v9[v6];
    *(this + 310) = -1;
    HGGLBuffer::DetachRenderer(v4);
    (*(**(this + 3) + 24))(*(this + 3));
    *(this + 3) = 0;
  }

  if (a2)
  {
    *(this + 3) = a2;
    (*(*a2 + 16))(a2);
    v10 = *(this + 3);
    if (v10 && *(v10 + 128) == this)
    {
      *(this + 290) = s_HGFormatInfos[8 * *(v10 + 16) + 4];
      if (*(this + 1281) == 1 && *(this + 311))
      {
        glFlush();
      }

      *(this + 311) = 0;
      v16 = *(this + 146);
      if (v16)
      {
        v17 = *(this + *(this + 290) + 143);
        if (v17)
        {
          HGGLContext::context(&v23, v17);
        }

        else
        {
          HGGLContextPtr::HGGLContextPtr(&v23, 0);
        }

        HGGLState::setCurrentContext(v16, &v23.var0);
        PCSharedCount::PCSharedCount(&v23);
      }

      if (*(v10 + 156))
      {
        HGGPURenderer::BindCachedFramebuffer(this, *(this + 290), (*(v10 + 144) - *(v10 + 136)), (*(v10 + 148) - *(v10 + 140)));
        HGTextureManager::framebufferTexture2D(*(this + 184), *(v10 + 152), *(v10 + 156));
        v20 = atomic_load(HGLogger::_enabled);
        if (v20)
        {
          v21 = "RECT";
          if (*(v10 + 152) == 3553)
          {
            v21 = "2D";
          }

          HGLogger::log("gpu", 1, "Drawing into FBO with %s texture ID %d\n", v18, v19, v21, *(v10 + 156));
        }

        if (*(v10 + 180) == 1)
        {
          v22 = vsub_s32(*(v10 + 144), *(v10 + 136));
          if ((v22.i32[1] * v22.i32[0]) > 0xFFF)
          {
            glViewport(0, 0, v22.i32[0], v22.i32[1]);
            (*(**(this + 151) + 104))(*(this + 151), *(v10 + 136), *(v10 + 144), *(v10 + 140), *(v10 + 148), -1.0, 1.0);
            HGGPURenderer::Clear(this, *(v10 + 20), *(v10 + 136));
          }

          else
          {
            glClearColor(0.0, 0.0, 0.0, 0.0);
            glClear(0x4000u);
          }

          *(v10 + 180) = 0;
        }

        glViewport(*(v10 + 20) - *(v10 + 136), *(v10 + 24) - *(v10 + 140), *(v10 + 172), *(v10 + 176));
        (*(**(this + 151) + 104))(*(this + 151), *(v10 + 20), *(v10 + 28), *(v10 + 24), *(v10 + 32), -1.0, 1.0);
      }

      HGGLBuffer::AttachRenderer(v10, this);
      v23.var0 = *(this + 3);
      std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100](this + 1216, &v23);
      result = 0;
      *(this + 310) = -1;
    }

    else
    {
      (*(*v10 + 24))(*(this + 3));
      *(this + 3) = 0;
      HGLogger::warning("BindBufferInternal() : buffer is tied to another renderer", v11, v12);
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    *(this + 290) = *(this + 158) != 0;
    if (*(this + 1281) == 1 && *(this + 311))
    {
      glFlush();
    }

    *(this + 311) = 0;
    v14 = *(this + 146);
    if (v14)
    {
      v15 = *(this + *(this + 290) + 143);
      if (v15)
      {
        HGGLContext::context(&v23, v15);
      }

      else
      {
        HGGLContextPtr::HGGLContextPtr(&v23, 0);
      }

      HGGLState::setCurrentContext(v14, &v23.var0);
      PCSharedCount::PCSharedCount(&v23);
    }

    return 0;
  }

  return result;
}

void HGGPURenderer::BindCachedFramebuffer(HGGPURenderer *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((atomic_load_explicit(&qword_280C5E3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E3A0))
  {
    operator new();
  }

  std::mutex::lock(qword_280C5E398);
  framebuffers = *(this + 298);
  if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
  {
    v8 = qword_280C5E3B8;
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else
  {
    HGGPURenderer::BindCachedFramebuffer();
    v8 = qword_280C5E3B8;
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
LABEL_4:
      if (v8 != &qword_280C5E3B0)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    }
  }

  HGGPURenderer::BindCachedFramebuffer();
  if (v8 == &qword_280C5E3B0)
  {
LABEL_7:
    v8 = &qword_280C5E3B0;
    goto LABEL_8;
  }

LABEL_5:
  while (*(v8 + 7) != framebuffers)
  {
    v8 = v8[1];
    if (v8 == &qword_280C5E3B0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
  {
    if (v8 == &qword_280C5E3B0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    HGGPURenderer::BindCachedFramebuffer();
    if (v8 == &qword_280C5E3B0)
    {
      goto LABEL_25;
    }
  }

  if (*(v8 + 4) != a2 || *(v8 + 5) != a3 || *(v8 + 6) != a4)
  {
LABEL_25:
    HGTraceGuard::HGTraceGuard(v23, "framebuffer", 2, "BindCachedFramebuffer()");
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      if (v8 == &qword_280C5E3B0)
      {
        goto LABEL_30;
      }
    }

    else
    {
      HGGPURenderer::UnBindCachedFramebuffer();
      if (v8 == &qword_280C5E3B0)
      {
        goto LABEL_30;
      }
    }

    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      HGLogger::log("framebuffer", 2, "done with framebuffer (%d) - marking unused\n", v13, v14, framebuffers);
    }

    *(v8 + 32) = 0;
LABEL_30:
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      v16 = qword_280C5E3B8;
      if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

    HGGPURenderer::UnBindCachedFramebuffer();
    v16 = qword_280C5E3B8;
    if ((atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire) & 1) == 0)
    {
LABEL_32:
      HGGPURenderer::UnBindCachedFramebuffer();
    }

LABEL_38:
    while (v16 != &qword_280C5E3B0)
    {
      if (*(v16 + 4) == a2 && *(v16 + 5) == a3 && *(v16 + 6) == a4 && !*(v16 + 32))
      {
        goto LABEL_45;
      }

      v16 = v16[1];
    }

    v16 = &qword_280C5E3B0;
LABEL_45:
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      if (v16 == &qword_280C5E3B0)
      {
        goto LABEL_47;
      }
    }

    else
    {
      HGGPURenderer::UnBindCachedFramebuffer();
      if (v16 == &qword_280C5E3B0)
      {
LABEL_47:
        glGenFramebuffers(1, &framebuffers);
        if ((atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire) & 1) == 0)
        {
          HGGPURenderer::UnBindCachedFramebuffer();
        }

        operator new();
      }
    }

    v17 = atomic_load(HGLogger::_enabled);
    if (v17)
    {
      HGLogger::log("framebuffer", 2, "found unused framebuffer (%d) [%d, %d, %d]\n", v13, v14, *(v16 + 7), a2, a3, a4);
    }

    *(v16 + 32) = 1;
    framebuffers = *(v16 + 7);
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
      {
        goto LABEL_55;
      }
    }

    else
    {
      HGGPURenderer::UnBindCachedFramebuffer();
      if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
      {
LABEL_55:
        v18 = qword_280C5E3B8;
        if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
        {
          goto LABEL_56;
        }

        goto LABEL_66;
      }
    }

    HGGPURenderer::UnBindCachedFramebuffer();
    v18 = qword_280C5E3B8;
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
LABEL_56:
      if (v16 != v18)
      {
        goto LABEL_57;
      }

      goto LABEL_59;
    }

LABEL_66:
    HGGPURenderer::UnBindCachedFramebuffer();
    if (v16 != v18)
    {
LABEL_57:
      v19 = v16[1];
      if (v19 != v18)
      {
        v20 = *v16;
        *(v20 + 8) = v19;
        *v19 = v20;
        v21 = *v18;
        *(v21 + 8) = v16;
        *v16 = v21;
        *v18 = v16;
        v16[1] = v18;
      }
    }

LABEL_59:
    glBindFramebuffer(0x8D40u, framebuffers);
    *(this + 298) = framebuffers;
    HGTraceGuard::~HGTraceGuard(v23);
    goto LABEL_60;
  }

  if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      goto LABEL_15;
    }
  }

  else
  {
    HGGPURenderer::BindCachedFramebuffer();
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
LABEL_15:
      v9 = qword_280C5E3B8;
      if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
      {
        goto LABEL_16;
      }

      goto LABEL_70;
    }
  }

  HGGPURenderer::BindCachedFramebuffer();
  v9 = qword_280C5E3B8;
  if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
  {
LABEL_16:
    if (v8 == v9)
    {
      goto LABEL_60;
    }

    goto LABEL_17;
  }

LABEL_70:
  HGGPURenderer::BindCachedFramebuffer();
  if (v8 == v9)
  {
    goto LABEL_60;
  }

LABEL_17:
  v10 = v8[1];
  if (v10 != v9)
  {
    v11 = *v8;
    *(v11 + 8) = v10;
    *v10 = v11;
    v12 = *v9;
    *(v12 + 8) = v8;
    *v8 = v12;
    *v9 = v8;
    v8[1] = v9;
  }

LABEL_60:
  if ((atomic_load_explicit(&qword_280C5E3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E3A0))
  {
    operator new();
  }

  std::mutex::unlock(qword_280C5E398);
  FBOStrategy::cleanupCache(v22);
}

void sub_25FC63268(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6327C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC63290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

BOOL HGGPURenderer::Clear(HGGPURenderer *this, HGRect a2, HGRect a3)
{
  v3 = *&a3.var2;
  var0 = a3.var0;
  v5 = *&a2.var2;
  v6 = a2.var0;
  var1 = a2.var1;
  v9 = a3.var1;
  HGTraceGuard::HGTraceGuard(v28, "gpu", 2, "clear texture borders to zero");
  v10 = var1 > v9;
  if (var1 > v9)
  {
    v11 = HGRectMake4i(var0, v9, v3, var1);
    v13 = v12;
    *&v29.var0 = v11;
    *&v29.var2 = v13;
    HGGPURenderer::Clear(this, v29, v13, v14);
  }

  if (SHIDWORD(v5) < SHIDWORD(v3))
  {
    v15 = HGRectMake4i(var0, HIDWORD(v5), v3, HIDWORD(v3));
    v17 = v16;
    *&v30.var0 = v15;
    *&v30.var2 = v17;
    HGGPURenderer::Clear(this, v30, v17, v18);
    v10 = 1;
  }

  if (v6 > var0)
  {
    v19 = HGRectMake4i(var0, var1, v6, HIDWORD(v5));
    v21 = v20;
    *&v31.var0 = v19;
    *&v31.var2 = v21;
    HGGPURenderer::Clear(this, v31, v21, v22);
    v10 = 1;
  }

  if (v5 < v3)
  {
    v23 = HGRectMake4i(v5, var1, v3, HIDWORD(v5));
    v25 = v24;
    *&v32.var0 = v23;
    *&v32.var2 = v25;
    HGGPURenderer::Clear(this, v32, v25, v26);
    v10 = 1;
  }

  HGTraceGuard::~HGTraceGuard(v28);
  return v10;
}

void HGGPURenderer::BindMultiSampleBuffer(HGGPURenderer *this, signed int a2, int a3, const char *a4, char *a5)
{
  v6 = a2;
  if (a2 == 1 && (a3 & 1) == 0)
  {
    v8 = atomic_load(HGLogger::_enabled);
    if (v8)
    {
      HGLogger::log("gpu", 1, "really?\n", a4, a5);
    }
  }

  v9 = *(this + 3);
  if (v9 && *(v9 + 16))
  {
    v10 = *(this + 297);
    if (!v10)
    {
      glGenFramebuffers(1, this + 297);
      v10 = *(this + 297);
    }

    glBindFramebuffer(0x8D40u, v10);
    if (*(this + 356) < v6)
    {
      v6 = *(this + 356);
    }

    Renderbuffer = HGTextureManager::createRenderbuffer(*(this + 184), v6, 32856);
    *(this + 299) = Renderbuffer;
    glBindRenderbuffer(0x8D41u, Renderbuffer);
    glRenderbufferStorageMultisampleAPPLE();
    glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, *(this + 299));
    if (a3)
    {
      v12 = HGTextureManager::createRenderbuffer(*(this + 184), v6, 33190);
      *(this + 300) = v12;
      glBindRenderbuffer(0x8D41u, v12);
      glRenderbufferStorageMultisampleAPPLE();
      glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, *(this + 300));
    }

    glClearColor(0.0, 0.0, 0.0, 0.0);
    glClearDepthf(1.0);
    glDepthMask(1u);
    glClear(0x4100u);
    glEnable(0xB71u);

    glDepthFunc(0x201u);
  }
}

void HGGPURenderer::ResolveMultiSampleBuffer(HGGPURenderer *this)
{
  glDepthMask(0);
  glDisable(0xB71u);
  glFlush();
  glBindFramebuffer(0x8CA9u, *(this + 298));
  v2 = *(this + 297);
  if (!v2)
  {
    glGenFramebuffers(1, this + 297);
    v2 = *(this + 297);
  }

  glBindFramebuffer(0x8CA8u, v2);
  glResolveMultisampleFramebufferAPPLE();
  glDiscardFramebufferEXT();
  glFramebufferRenderbuffer(0x8D40u, 0x8CE0u, 0x8D41u, 0);
  glFramebufferRenderbuffer(0x8D40u, 0x8D00u, 0x8D41u, 0);
  glBindRenderbuffer(0x8D41u, 0);
  glBindFramebuffer(0x8CA9u, 0);
  glBindFramebuffer(0x8CA8u, 0);
  v3 = *(this + 299);
  if (v3)
  {
    HGTextureManager::deleteRenderbuffer(*(this + 184), v3);
    *(this + 299) = 0;
  }

  v4 = *(this + 300);
  if (v4)
  {
    HGTextureManager::deleteRenderbuffer(*(this + 184), v4);
    *(this + 300) = 0;
  }

  glBindFramebuffer(0x8D40u, *(this + 298));
  glFramebufferTexture2D(0x8D40u, 0x8CE0u, *(*(this + 3) + 152), *(*(this + 3) + 156), 0);
}

void HGGPURenderer::SetLastMetalCmdBuffer(uint64_t a1)
{
  v2 = *(a1 + 1320);
  if (v2)
  {
    HGMetalCommandBufferRef::~HGMetalCommandBufferRef(v2);
    MEMORY[0x2666E9F00]();
  }

  *(a1 + 1320) = 0;
  operator new();
}

void HGGPURenderer::GetContext(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v3 = *(a1 + 8 * s_HGFormatInfos[8 * a2 + 4] + 1144);
  if (v3)
  {
    HGGLContext::context(a3, v3);
  }

  else
  {
    HGGLContextPtr::HGGLContextPtr(a3, 0);
  }
}

const char *HGGPURenderer::ValidateCurrentContext(const char *this)
{
  if (this[1281] == 1 && HG_RENDERER_ENV::VALIDATE_CURRENT_GL_CONTEXT == 1)
  {
    v2 = this;
    HGGLGetCurrentContext();
    CGColorSpace = PCColorSpaceHandle::getCGColorSpace(&v6);
    PCSharedCount::PCSharedCount(&v6);
    this = HGGLContext::ptr(*(v2 + 1144));
    if (CGColorSpace != this)
    {
      this = HGGLContext::ptr(*(v2 + 1152));
      if (CGColorSpace != this)
      {
        return HGLogger::warning("ValidateCurrentContext() : Invalid OpenGL context.", v4, v5);
      }
    }
  }

  return this;
}

uint64_t HGGPURenderer::BindTexture(_DWORD *a1, const char *a2, char *a3, uint64_t a4, int a5)
{
  if (a2 > 7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = a3;
  v10 = *(a1 + 146);
  if (v10)
  {
    v11 = *&a1[2 * a1[290] + 286];
    if (v11)
    {
      HGGLContext::context(&v52, v11);
    }

    else
    {
      HGGLContextPtr::HGGLContextPtr(&v52, 0);
    }

    HGGLState::setCurrentContext(v10, &v52.var0);
    PCSharedCount::PCSharedCount(&v52);
  }

  if (*(a1 + 1281) != 1)
  {
    goto LABEL_25;
  }

  v12 = *&a1[2 * a1[290] + 286];
  if (v12)
  {
    HGGLContext::context(&v52, v12);
  }

  else
  {
    HGGLContextPtr::HGGLContextPtr(&v52, 0);
  }

  CGColorSpace = PCColorSpaceHandle::getCGColorSpace(&v52);
  PCSharedCount::PCSharedCount(&v52);
  if (!CGColorSpace)
  {
LABEL_25:
    if (!v7)
    {
      return 0;
    }

    HGLogger::warning("BindTexture() : non-null buffer but OpenGL is disallowed", a2, a3);
    return 0xFFFFFFFFLL;
  }

  v16 = &a1[6 * a2];
  v18 = *(v16 + 4);
  v17 = *(v16 + 5);
  v19 = v16 + 8;
  if (v7)
  {
    v20 = a4;
  }

  else
  {
    v20 = 0;
  }

  if (v7 || v18)
  {
    HGTextureManager::activeTexture(*(a1 + 184), a2 | 0x84C0, a3, v14, v15);
  }

  if (v18 == v7)
  {
    result = 0;
    goto LABEL_59;
  }

  *v19 = 0;
  if (!v7)
  {
    HGTextureManager::bindTexture(*(a1 + 184), *(v18 + 160), 0);
    result = 0;
LABEL_48:
    v41 = result;
    v42 = *(v18 + 188) - 1;
    *(v18 + 188) = v42;
    if (!v42)
    {
      v43 = *(a1 + 152);
      v44 = *(a1 + 153);
      if (v43 != v44)
      {
        v45 = *(a1 + 152);
        while (*v45 != v18)
        {
          v45 += 8;
          v43 += 8;
          if (v45 == v44)
          {
            v43 = *(a1 + 153);
            break;
          }
        }
      }

      v46 = (v44 - (v43 + 8));
      if (v44 != v43 + 8)
      {
        memmove(v43, v43 + 8, v44 - (v43 + 8));
      }

      *(a1 + 153) = &v46[v43];
      a1[310] = -1;
      if ((*(v18 + 12) & 0x30) != 0)
      {
        HGGLTexture::DetachRenderer(v18);
      }
    }

    (*(*v18 + 24))(v18);
    result = v41;
    goto LABEL_59;
  }

  v21 = *(v7 + 12) & 0x30;
  if (!v21)
  {
    v7 = (*(*a1 + 352))(a1, *(v7 + 20), *(v7 + 28), v7);
    if (!v7)
    {
      v23 = 1;
      goto LABEL_43;
    }
  }

  v22 = *(v7 + 128);
  if (v22 && v22 != a1)
  {
    v23 = 0;
LABEL_43:
    HGTextureManager::bindTexture(*(a1 + 184), 0xDE1u, 0);
    HGLogger::warning("BindTexture() : buffer is tied to another renderer", v38, v39);
    result = 0xFFFFFFFFLL;
    goto LABEL_44;
  }

  v51 = v21;
  *v19 = v7;
  HGTextureManager::bindTexture(*(a1 + 184), *(v7 + 160), *(v7 + 168));
  v25 = *(a1 + 184);
  isES2 = HGGLContext::isES2(*&a1[2 * a1[290] + 286]);
  HGTextureManager::sizeHint(v25, v7, isES2, v27, v28);
  v31 = atomic_load(HGLogger::_enabled);
  if (v31)
  {
    v32 = "RECT";
    if (*(v7 + 160) == 3553)
    {
      v32 = "2D";
    }

    HGLogger::log("gpu", 1, "Binding %s texture ID %d to unit %d\n", v29, v30, v32, *(v7 + 168), a2);
  }

  *(v7 + 184) |= 1 << a1[290];
  (*(*v7 + 16))(v7);
  v33 = *(v7 + 188);
  *(v7 + 188) = v33 + 1;
  if (!v33)
  {
    HGGLTexture::AttachRenderer(v7, a1);
    v52.var0 = v7;
    std::vector<HGMetalDeviceInfo *>::push_back[abi:ne200100]((a1 + 304), &v52);
    a1[310] = -1;
  }

  v34 = *(v7 + 160);
  if (*HGBitmap::GetEdgePolicy(v7) == 1)
  {
    v37 = atomic_load(HGLogger::_enabled);
    if (v37)
    {
      HGLogger::log("gpu", 1, "texture mode : GL_CLAMP_TO_EDGE\n", v35, v36);
    }
  }

  glTexParameteri(v34, 0x2802u, 33071);
  glTexParameteri(v34, 0x2803u, 33071);
  v23 = 0;
  result = 0;
  v21 = v51;
LABEL_44:
  if (!v21 && (v23 & 1) == 0)
  {
    v40 = result;
    (*(*v7 + 24))(v7);
    result = v40;
  }

  if (v18)
  {
    goto LABEL_48;
  }

LABEL_59:
  if (*v19)
  {
    if (a5)
    {
      v47 = 9729;
    }

    else
    {
      v47 = 9728;
    }

    v48 = *(*v19 + 160);
    v49 = result;
    glTexParameteri(v48, 0x2801u, v47);
    glTexParameteri(v48, 0x2800u, v47);
    result = v49;
  }

  *(v19 + 1) = v20;
  v19[4] = a5;
  if (v17)
  {
    v50 = result;
    (*(*v17 + 24))(v17);
    return v50;
  }

  return result;
}

PCICCTransferFunctionLUT *HGGPURenderer::MarkBufferedOutput(PCICCTransferFunctionLUT **this, HGNode *a2)
{
  NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(this, a2);
  v5 = *(a2 + 4) & 0x1000;
  v6 = NodeRenderAPI == 1;
  if (NodeRenderAPI != 1 && v5)
  {
    v6 = *(a2 + 108);
  }

  v7 = NodeRenderAPI == 0;
  if (NodeRenderAPI && v5)
  {
    v7 = *(a2 + 107);
  }

  v8 = *(a2 + 44) - *(a2 + 42);
  v9 = *(a2 + 45) - *(a2 + 43);
  result = HGRenderer::GetOutputFormat(this, a2);
  v11 = result;
  if (*(a2 + 54) != -1 && *(this + 153) != 1)
  {
    goto LABEL_32;
  }

  if (*(this + 1281) != 1)
  {
    result = PCICCTransferFunctionLUT::getLUTEnd(this[139]);
    v15 = *(result + 12);
    v16 = v15 >= v8 && v15 >= v9;
    goto LABEL_27;
  }

  if (v6)
  {
    result = PCICCTransferFunctionLUT::getLUTEnd(this[139]);
    v12 = *(result + 12);
    v14 = v12 >= v8 && v12 >= v9;
    if ((v7 & v14 & 1) == 0)
    {
LABEL_33:
      v17 = *(a2 + 4);
      if (*(a2 + 52) >= 2)
      {
        goto LABEL_34;
      }

LABEL_40:
      v18 = 0;
      if (*(this + 153) == 2)
      {
        goto LABEL_41;
      }

      goto LABEL_43;
    }
  }

  else if ((v7 & 1) == 0)
  {
    LOBYTE(v14) = 1;
    v17 = *(a2 + 4);
    if (*(a2 + 52) < 2)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  result = this[184];
  if (!result)
  {
LABEL_32:
    LOBYTE(v14) = 0;
    goto LABEL_33;
  }

  result = HGTextureManager::maxTextureSizeGL(result, v11);
  v16 = result >= v8 && result >= v9;
LABEL_27:
  LOBYTE(v14) = v16;
  v17 = *(a2 + 4);
  if (*(a2 + 52) < 2)
  {
    goto LABEL_40;
  }

LABEL_34:
  if ((v17 & 0x100) != 0)
  {
    v18 = 1;
    if (*(this + 153) == 2)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v18 = *(this + 153) == 3;
    if (*(this + 153) == 2)
    {
      goto LABEL_41;
    }
  }

LABEL_43:
  LOBYTE(v19) = 0;
  if ((v17 & 8) != 0 || (v17 & 6) == 0 && !v18)
  {
    goto LABEL_42;
  }

  if (*(this + 1281) != 1)
  {
    result = PCICCTransferFunctionLUT::getLUTEnd(this[139]);
    LOBYTE(v19) = 0;
    v22 = *(result + 12);
    if (v22 < v8 || v22 < v9)
    {
      goto LABEL_42;
    }

    goto LABEL_63;
  }

  if (v6)
  {
    result = PCICCTransferFunctionLUT::getLUTEnd(this[139]);
    v20 = *(result + 12);
    LODWORD(v19) = v20 >= v8 && v20 >= v9;
    if ((v7 & v19 & 1) == 0)
    {
      if (!v19)
      {
        goto LABEL_42;
      }

      goto LABEL_63;
    }

    goto LABEL_60;
  }

  if (v7)
  {
LABEL_60:
    result = this[184];
    if (result)
    {
      result = HGTextureManager::maxTextureSizeGL(result, v11);
      LOBYTE(v19) = 0;
      if (result < v8 || result < v9)
      {
        goto LABEL_42;
      }

      goto LABEL_63;
    }

LABEL_41:
    LOBYTE(v19) = 0;
    goto LABEL_42;
  }

LABEL_63:
  if (v11 <= 41)
  {
    v19 = s_HGFormatInfos[8 * v11 + 3];
  }

  else
  {
    v19 = 0;
  }

  LOBYTE(v19) = v9 * v8 * v19 < this[157];
LABEL_42:
  *(a2 + 104) = (v14 | v19) & 1;
  return result;
}

uint64_t HGGPURenderer::RenderBufferedOutput(HGGPURenderer *this, HGNode *a2)
{
  v2 = *(a2 + 104);
  if (v2 == 1)
  {
    (*(*a2 + 416))(a2, this);
    (*(*a2 + 336))(a2, this, 1);
    v5 = (*(a2 + 4) & 0x2000) == 0;
    OutputFormat = HGRenderer::GetOutputFormat(this, a2);
    v7 = (*(*this + 168))(this, a2, *(a2 + 21), *(a2 + 22), OutputFormat, 0, 0, v5);
    if (*(a2 + 107) == 1)
    {
      if ((*(a2 + 108) & 1) == 0)
      {
        v8 = v7;
        v9 = HGGPURenderer::ConvertToGLTexture(this, *(a2 + 168), v7);
LABEL_7:
        *(a2 + 24) = v9;
        (*(*v8 + 24))(v8);
LABEL_9:
        (*(*this + 144))(this, 0);
        return v2;
      }
    }

    else if (*(a2 + 108))
    {
      v8 = v7;
      v9 = HGGPURenderer::ConvertToMetalTexture(this, *(a2 + 168), v7, 1);
      goto LABEL_7;
    }

    *(a2 + 24) = v7;
    goto LABEL_9;
  }

  return v2;
}

uint64_t HGGPURenderer::RenderTilesBegin(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 212);
  *(a2 + 212) = v2 + 1;
  if (v2)
  {
    return result;
  }

  v4 = result;
  *(a2 + 16) = (*(a2 + 16) >> 17) & 2 | *(a2 + 16) & 0xFFFFFFEF;
  v5 = *(a2 + 88);
  if (v5 > 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(*(a2 + 80) + 8 * v6);
      if (!v7)
      {
        goto LABEL_6;
      }

      v8 = *(v7 + 16);
      if (!v8)
      {
        goto LABEL_6;
      }

      v9 = *(v7 + 12);
      v10 = v9 & 0x2006;
      if ((v9 & 0x2006) != 0)
      {
        IsNull = HGRectIsNull(*(v7 + 32), *(v7 + 40));
        v8 = *(v7 + 16);
        if (!IsNull)
        {
          break;
        }
      }

      if ((*(a2 + 18) & 4) != 0)
      {
        goto LABEL_12;
      }

LABEL_5:
      (*(*v4 + 240))(v4, *(v8 + 144), *(v7 + 32), *(v7 + 40), v4[144]);
      v5 = *(a2 + 88);
LABEL_6:
      if (++v6 >= v5)
      {
        goto LABEL_15;
      }
    }

    (*(**(v8 + 144) + 136))(*(v8 + 144), 0xFFFFFFFFLL, v10);
    v8 = *(v7 + 16);
    if ((*(a2 + 18) & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_12:
    (*(**(v8 + 144) + 136))(*(v8 + 144), 0xFFFFFFFFLL, 2);
    v8 = *(v7 + 16);
    goto LABEL_5;
  }

LABEL_15:
  (*(*v4 + 320))(v4, a2, 1);
  v12 = HGRectIsNull(*(a2 + 168), *(a2 + 176));
  v13 = *v4;
  if (v12)
  {
    v14 = *(v13 + 232);

    return v14(v4, a2);
  }

  else
  {
    (*(v13 + 192))(v4, a2);
    (*(*v4 + 208))(v4, a2);
    result = (*(*v4 + 232))(v4, a2);
    if (*(a2 + 40) != 1)
    {
      v15 = *(*a2 + 336);

      return v15(a2, v4, 1);
    }
  }

  return result;
}

uint64_t HGGPURenderer::PostGetOutput(HGGPURenderer *this, HGNode *a2)
{
  result = HGGPURenderer::GetNodeRenderAPI(this, a2);
  if (*(a2 + 22) >= 1)
  {
    v5 = result;
    for (i = 0; i < *(a2 + 22); ++i)
    {
      v7 = *(*(a2 + 10) + 8 * i);
      if (!v7)
      {
        continue;
      }

      v8 = *(v7 + 16);
      if (!v8)
      {
        continue;
      }

      v9 = *(v8 + 144);
      if (v5 == 1)
      {
        *(v9 + 108) = 1;
        result = HGGPURenderer::GetNodeRenderAPI(this, v9);
        if (result == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (!v5)
        {
          *(v9 + 107) = 1;
        }

        result = HGGPURenderer::GetNodeRenderAPI(this, v9);
        if (result == v5)
        {
LABEL_13:
          if ((*(v7 + 13) & 0x10) == 0)
          {
            continue;
          }
        }
      }

      result = (*(*v9 + 136))(v9, 0xFFFFFFFFLL, 4096);
    }
  }

  return result;
}

char *HGGPURenderer::RenderTiles(uint64_t a1, const char *a2, char *a3, uint64_t a4, uint64_t a5, HGBitmap *a6, unsigned __int8 a7, unsigned __int8 a8)
{
  if (!a5)
  {
    HGLogger::error("RenderTiles() : format == kHGFormat_Null.\n", a2, a3);
    return 0;
  }

  HGAutoReleasePoolScopeGuard::HGAutoReleasePoolScopeGuard(&v27);
  v16 = *(a1 + 1144);
  if (v16 && HGGLContext::ptr(v16))
  {
    HGGLContext::getVirtualScreen(*(a1 + 1144));
    HGGLContext::setVirtualScreen(*(a1 + 1152));
  }

  if (!a6 || (*(a6 + 12) & 0x30) == 0)
  {
    v24 = 0;
    v23 = 1;
LABEL_12:
    v25 = HGGPURenderer::ProcessNode(a1, a2, a3, a4, a5, a6, v24, 0, a7, a8);
    (*(*a1 + 144))(a1, 0);
    if ((v23 & 1) == 0)
    {
      (*(*v24 + 24))(v24);
    }

    goto LABEL_14;
  }

  (*(*a6 + 16))(a6);
  if ((~*(a6 + 3) & 0x220) != 0 || (MetalStorage = HGMetalTexture::getMetalStorage(a6, v17)) == 0 || (v19 = *(HGMetalDeviceInfo::getDeviceInfo(MetalStorage[17]) + 24), LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(*(a1 + 1112)), v19 == *(LUTEnd + 24)))
  {
    v23 = 0;
    v24 = a6;
    a6 = 0;
    goto LABEL_12;
  }

  HGLogger::error("Device mismatch between renderer (0x%llx) and target texture (0x%llx).", v21, v22, *(LUTEnd + 24), v19);
  v25 = 0;
LABEL_14:
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&v27);
  return v25;
}

void sub_25FC64790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC647A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC647B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC647CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC647E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC647F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC64808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6481C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

char *HGGPURenderer::ProcessNode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8, unsigned __int8 a9, unsigned __int8 a10)
{
  if (a6)
  {
    LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(*(a1 + 1112));
    if (*(a6 + 12))
    {
      v23 = HGObject::operator new(0x80uLL);
      HGBuffer::HGBuffer(v23, *(a6 + 20), a6);
      v21 = HGGPURenderer::ProcessNodeInternal(a1, a2, a3, a4, a5, v23, a8, a9, a10);
      if (v23)
      {
        (*(*v23 + 24))(v23);
      }
    }

    else if (HGMetalDeviceInfo::isApple(LUTEnd) && *(a1 + 1268) == 1 && (*(a6 + 12) & 0x30) == 0 && HGMetalBuffer::canCreateFromBytes(a6, v18))
    {
      v19 = HGGPURenderer::ConvertToMetalTexture(a1, *(a6 + 20), a6, 1);
      v20 = HGObject::operator new(0x80uLL);
      *&v34.var0 = *(v19 + 20);
      *&v34.var2 = *(v19 + 28);
      HGBuffer::HGBuffer(v20, v34, v19);
      v21 = HGGPURenderer::ProcessNodeInternal(a1, a2, a3, a4, a5, v20, a8, a9, a10);
      HGGPURenderer::FinishMetalCommandBuffer(a1);
      if (v20)
      {
        (*(*v20 + 24))(v20);
      }

      (*(*v19 + 24))(v19);
    }

    else
    {
      v24 = HGGPURenderer::ProcessNodeInternal(a1, a2, a3, a4, a5, 0, a8, a9, a10);
      v26 = v24;
      v27 = *(v24 + 3);
      if ((v27 & 1) != 0 || (v27 & 0x30) == 0)
      {
        CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(v24, v25);
        if (CVBitmapStorage)
        {
          v31 = CVBitmapStorage;
        }

        else
        {
          v31 = v26;
        }

        if (CVBitmapStorage)
        {
          HGCVBitmap::lock(CVBitmapStorage, 0);
        }

        if (*(v31 + 4) == *(a6 + 16))
        {
          HGRenderUtils::BufferCopier::BufferCopier(v32);
        }

        HGRenderUtils::BufferReformatter::BufferReformatter(v32);
      }

      if ((v27 & 0x20) != 0)
      {
        HGGPURenderer::ReadbackMetalTexture(a1, v24, a6);
      }

      else if ((v27 & 0x100) != 0)
      {
        (*(*a1 + 144))(a1, v24);
        (*(*a1 + 344))(a1, a3, a4, a6);
      }

      else
      {
        *&v35.var0 = a3;
        *&v35.var2 = a4;
        Buffer = HGGPURenderer::CreateBuffer(a1, v35, a5, 0);
        (*(*a1 + 144))(a1, Buffer);
        (*(*a1 + 152))(a1, 0, v26, 0, 0);
        *&v36.var0 = a3;
        *&v36.var2 = a4;
        HGGPURenderer::Copy(a1, v36, 0, v29);
        (*(*a1 + 152))(a1, 0, 0, 0, 0);
        (*(*a1 + 344))(a1, a3, a4, a6);
        (*(*a1 + 144))(a1, 0);
        (*(*Buffer + 24))(Buffer);
      }

      (*(*a1 + 144))(a1, 0);
      (*(*v26 + 24))(v26);
      return 0;
    }

    return v21;
  }

  else
  {

    return HGGPURenderer::ProcessNodeInternal(a1, a2, a3, a4, a5, a7, a8, a9, a10);
  }
}

void sub_25FC64DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  HGObject::operator delete(v11);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

unsigned int *HGGPURenderer::GetNodeTexture(HGGPURenderer *this, HGNode *a2, HGRect a3, HGBuffer *a4, unsigned __int8 a5)
{
  v6 = *&a3.var2;
  v7 = *&a3.var0;
  NodeBitmap = HGGPURenderer::GetNodeBitmap(this, a2, a3, a4, a5);
  if (NodeBitmap)
  {
    v11 = NodeBitmap;
    if (!a4)
    {
      v7 = HGRectIntersection(v7, v6, *(a2 + 19), *(a2 + 20));
      v6 = v12;
    }

    *&v16.var0 = v7;
    *&v16.var2 = v6;
    v13 = HGGPURenderer::ConvertToGLTexture(this, v16, v11);
    (*(*v11 + 24))(v11);
    return v13;
  }

  else
  {

    return HGGPURenderer::LoadNullGLTexture(this);
  }
}

HGBitmap *HGGPURenderer::GetNodeBitmap(HGGPURenderer *this, HGNode *a2, HGRect a3, HGBuffer *a4, unsigned __int8 a5)
{
  if (!a2)
  {
    return 0;
  }

  v6 = *&a3.var2;
  v7 = *&a3.var0;
  v10 = *(a2 + 24);
  if (v10 || (v10 = *(a2 + 31)) != 0)
  {
    (*(*v10 + 16))(v10);
    if (a5)
    {
      return v10;
    }

    goto LABEL_5;
  }

  if (!a4)
  {
    v7 = HGRectIntersection(*&a3.var0, *&a3.var2, *(a2 + 19), *(a2 + 20));
    v6 = v20;
  }

  OutputFormat = HGRenderer::GetOutputFormat(this, a2);
  v10 = HGGPURenderer::ProcessNodeInternal(this, a2, v7, v6, OutputFormat, a4, 0, 0, a5);
  if ((a5 & 1) == 0)
  {
LABEL_5:
    if (HGBitmapUtils::isPadded(v10, v11))
    {
      v12 = *(v10 + 4);
      NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(this, a2);
      *&v22.var0 = v7;
      *&v22.var2 = v6;
      Buffer = HGGPURenderer::CreateBuffer(this, v22, v12, NodeRenderAPI, (*(a2 + 4) >> 12) & 1, 0, (*(this + 1336) & 1) == 0);
      *&v23.var0 = v7;
      *&v23.var2 = v6;
      HGGPURenderer::CopyBitmapIntoBuffer(this, Buffer, v23, v10);
      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        HGLogger::log("mtl_perf_validation", 1, "Helium WARNING -- buffer copy in HGGPURenderer::GetNodeBitmap(...) due to padding requirements.\n", v15, v16);
      }

      (*(*v10 + 24))(v10);
      return Buffer;
    }
  }

  return v10;
}

HGBitmap *HGGPURenderer::GetNodeMetalTexture(HGGPURenderer *this, HGNode *a2, HGRect a3, HGBuffer *a4, unsigned __int8 a5)
{
  v6 = *&a3.var2;
  v7 = *&a3.var0;
  NodeBitmap = HGGPURenderer::GetNodeBitmap(this, a2, a3, a4, a5);
  if (NodeBitmap)
  {
    v11 = NodeBitmap;
    if (!a4)
    {
      v7 = HGRectIntersection(v7, v6, *(a2 + 19), *(a2 + 20));
      v6 = v12;
    }

    *&v16.var0 = v7;
    *&v16.var2 = v6;
    v13 = HGGPURenderer::ConvertToMetalTexture(this, v16, v11, 1);
    (*(*v11 + 24))(v11);
    return v13;
  }

  else
  {

    return HGGPURenderer::LoadNullMetalTexture(this);
  }
}

uint64_t HGGPURenderer::CopyBitmapIntoBuffer(uint64_t this, HGBuffer *a2, HGRect a3, HGBitmap *a4)
{
  if (a2)
  {
    if (a4)
    {
      v5 = *&a3.var2;
      v6 = *&a3.var0;
      v8 = this;
      this = HGRectIsNull(*(a2 + 20), *(a2 + 28));
      if (!this)
      {
        v9 = (*(*v8 + 16))(v8, 43);
        MetalStorage = HGMetalTexture::getMetalStorage(a2, v10);
        CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a2, v12);
        if (MetalStorage || CVBitmapStorage && v9 == 1)
        {
          (*(*v8 + 18))(v8, 0);
          *&v28.var0 = v6;
          *&v28.var2 = v5;
          v14 = HGGPURenderer::ConvertToMetalTexture(v8, v28, a4, 1);
          __asm { FMOV            V0.4S, #1.0 }

          v26 = _Q0;
          v23 = 0;
          v24 = xmmword_26038F230;
          v25 = 0;
          *&v31.var0 = v6;
          *&v31.var2 = v5;
          HGGPURenderer::CopyMetal(v8, a2, v31, v14, &v23, &v26, 0);
          return (*(*v14 + 24))(v14);
        }

        else
        {
          *&v29.var0 = v6;
          *&v29.var2 = v5;
          v20 = HGGPURenderer::ConvertToGLTexture(v8, v29, a4);
          (*(*v8 + 18))(v8, a2);
          (*(*v8 + 19))(v8, 0, v20, 0, 0);
          *&v30.var0 = v6;
          *&v30.var2 = v5;
          HGGPURenderer::Copy(v8, v30, 0, v21);
          (*(*v8 + 19))(v8, 0, 0, 0, 0);
          v22 = *(*v20 + 24);

          return v22(v20);
        }
      }
    }
  }

  return this;
}

HGBitmap *HGGPURenderer::ConvertToNonGLTexture(HGGPURenderer *this, HGBitmap *a2)
{
  v3 = *(a2 + 3);
  if ((v3 & 0x10) != 0)
  {
    if (v3)
    {
      CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a2, a2);
      (*(*CVBitmapStorage + 16))(CVBitmapStorage);
    }

    else
    {
      v6 = *(a2 + 4);
      v7 = v6 > 0x21;
      v8 = (1 << v6) & 0x38401C000;
      if (v7 || v8 == 0)
      {
        kdebug_trace();
        if (*(this + 1281) == 1 && *(this + 311))
        {
          glFlush();
        }

        *(this + 311) = 0;
        v17 = atomic_load(HGLogger::_enabled);
        if (v17)
        {
          HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - HGGPURenderer::ConvertToNonGLTexture: extra copy from OpenGL texture to IOSurface\n", v15, v16);
        }

        CVBitmapStorage = HGGPURenderer::CreateBuffer(this, *(a2 + 20), *(a2 + 4), 0, 1, 0, (*(this + 1336) & 1) == 0);
        HGGPURenderer::BufferCopyOpenGL(this, CVBitmapStorage, *(a2 + 20), a2);
        kdebug_trace();
      }

      else
      {
        kdebug_trace();
        v12 = atomic_load(HGLogger::_enabled);
        if (v12)
        {
          HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - HGGPURenderer::ConvertToNonGLTexture: extra copy from OpenGL texture through system memory\n", v10, v11);
        }

        CVBitmapStorage = (*(*this + 96))(this, a2, *(a2 + 4));
        kdebug_trace();
      }
    }

    EdgePolicy = HGBitmap::GetEdgePolicy(a2);
    HGBitmap::SetEdgePolicy(CVBitmapStorage, EdgePolicy);
    return CVBitmapStorage;
  }

  else
  {
    (*(*a2 + 16))(a2);
    return a2;
  }
}

void sub_25FC65720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGSignPost::EventScopeGuard::~EventScopeGuard(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::BufferCopyOpenGL(HGGPURenderer *this, HGBuffer *a2, HGRect a3, HGBitmap *a4)
{
  if ((*(a4 + 12) & 0x20) != 0 || (*(a2 + 12) & 0x20) != 0)
  {

    HGLogger::warning("Can't OpenGL-copy between Metal objects.", a2, *&a3.var0, *&a3.var2);
  }

  else
  {
    v6 = *&a3.var0;
    v7 = *&a3.var2;
    if (!HGRectIsNull(*(a2 + 20), *(a2 + 28)))
    {
      v10 = this;
      *&v13.var0 = v6;
      *&v13.var2 = v7;
      v11 = HGGPURenderer::ConvertToGLTexture(this, v13, a4);
      (*(*this + 144))(this, a2);
      (*(*this + 152))(this, 0, v11, 0, 0);
      *&v14.var0 = v6;
      *&v14.var2 = v7;
      HGGPURenderer::Copy(this, v14, 0, v12);
      (*(*this + 152))(this, 0, 0, 0, 0);
      (*(*v11 + 24))(v11);
      if (*(this + 1281) == 1)
      {
        if (*(this + 311))
        {
          glFlush();
          v10 = this;
        }
      }

      *(v10 + 311) = 0;
    }
  }
}

HGBitmap *HGGPURenderer::ConvertToNonMetalTexture(HGGPURenderer *this, HGBitmap *a2)
{
  v3 = *(a2 + 3);
  if ((v3 & 0x20) != 0)
  {
    if (v3)
    {
      CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a2, a2);
      (*(*CVBitmapStorage + 16))(CVBitmapStorage);
    }

    else
    {
      v6 = *(a2 + 4);
      v7 = v6 > 0x21;
      v8 = (1 << v6) & 0x38401C000;
      if (v7 || v8 == 0)
      {
        kdebug_trace();
        (*(*this + 144))(this, 0);
        v16 = *(this + 164);
        if (v16)
        {
          if (v17)
          {
            v18 = v17;
            HGMetalHandler::FinalizeCommandBuffer(v17);
            HGMetalHandler::BindBuffer(v18, 0);
          }
        }

        v19 = *(this + 165);
        if (v19)
        {
          HGMetalCommandBufferRef::waitUntilCompleted(v19);
        }

        HGMetalTexture::getMetalStorage(a2, v15);
        v22 = atomic_load(HGLogger::_enabled);
        if (v22)
        {
          HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - HGGPURenderer::ConvertToNonMetalTexture: extra copy from Metal texture to IOSurface\n", v20, v21);
        }

        CVBitmapStorage = HGGPURenderer::CreateBuffer(this, *(a2 + 20), *(a2 + 4), 1, 1, 0, (*(this + 1336) & 1) == 0);
        HGGPURenderer::BufferCopyMetal(this, CVBitmapStorage, *(a2 + 20), a2);
        kdebug_trace();
      }

      else
      {
        kdebug_trace();
        v12 = atomic_load(HGLogger::_enabled);
        if (v12)
        {
          HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - HGGPURenderer::ConvertToNonMetalTexture: extra copy from Metal texture through system memory\n", v10, v11);
        }

        CVBitmapStorage = (*(*this + 96))(this, a2, *(a2 + 4));
        kdebug_trace();
      }
    }

    EdgePolicy = HGBitmap::GetEdgePolicy(a2);
    HGBitmap::SetEdgePolicy(CVBitmapStorage, EdgePolicy);
    return CVBitmapStorage;
  }

  else
  {
    (*(*a2 + 16))(a2);
    return a2;
  }
}

void sub_25FC65BFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGSignPost::EventScopeGuard::~EventScopeGuard(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::BufferCopyMetal(HGGPURenderer *this, HGBuffer *a2, HGRect a3, HGBitmap *a4)
{
  if ((*(a4 + 12) & 0x10) != 0 || (*(a2 + 12) & 0x10) != 0)
  {

    HGLogger::warning("Can't Metal-copy between OpenGL objects.", a2, *&a3.var0, *&a3.var2);
  }

  else
  {
    v8 = *&a3.var2;
    v9 = *&a3.var0;
    (*(*this + 144))(this, 0);
    __asm { FMOV            V0.4S, #1.0 }

    v22 = _Q0;
    v19 = 0;
    v20 = xmmword_26038F230;
    v21 = 0;
    *&v23.var0 = v9;
    *&v23.var2 = v8;
    HGGPURenderer::CopyMetal(this, a2, v23, a4, &v19, &v22, 0);
    (*(*this + 144))(this, 0);
    v15 = *(this + 164);
    if (v15)
    {
      if (v16)
      {
        v17 = v16;
        HGMetalHandler::FinalizeCommandBuffer(v16);
        HGMetalHandler::BindBuffer(v17, 0);
      }
    }

    v18 = *(this + 165);
    if (v18)
    {
      HGMetalCommandBufferRef::waitUntilCompleted(v18);
    }
  }
}

HGBitmap *HGGPURenderer::ConvertToMetalTexture(HGMetalTexture **this, HGBitmap *a2)
{
  *&v4.var0 = *(a2 + 20);
  *&v4.var2 = *(a2 + 28);
  return HGGPURenderer::ConvertToMetalTexture(this, v4, a2, 1);
}

HGBitmap *HGGPURenderer::ConvertToMetalTexture(HGMetalTexture **this, HGRect a2, HGBitmap *a3, int a4)
{
  v6 = *&a2.var2;
  v7 = *&a2.var0;
  v9 = HGGPURenderer::ConvertToNonGLTexture(this, a3);
  v10 = HGRectIntersection(v7, v6, *(v9 + 20), *(v9 + 28));
  if (HGRectIsNull(v10, v11))
  {
    goto LABEL_2;
  }

  v15 = *(v9 + 3);
  if ((v15 & 0x30) == 0)
  {
    if ((v15 & 1) == 0 && !*(v9 + 10))
    {
      goto LABEL_2;
    }

    *&v24.var0 = v6;
    *&v24.var2 = 1;
    HGMetalTexture::createFromBitmap(this[139], v9, v7, v24, 0, &v23);
    NullMetalTexture = v23;
    if (!v23 || !a4)
    {
      goto LABEL_3;
    }

LABEL_18:
    EdgePolicy = HGBitmap::GetEdgePolicy(a3);
    HGBitmap::SetEdgePolicy(NullMetalTexture, EdgePolicy);
    goto LABEL_3;
  }

  if ((v15 & 0x20) == 0)
  {
LABEL_2:
    NullMetalTexture = 0;
    goto LABEL_3;
  }

  if ((v15 & 0x100) != 0)
  {
    MetalStorage = HGMetalBuffer::getMetalStorage(v9, v12);
    v20 = this[139];
    v21 = HGRectIntersection(*(MetalStorage + 20), *(MetalStorage + 28), v7, v6);
    *&v25.var0 = v22;
    *&v25.var2 = 0;
    HGMetalTexture::createFromBuffer(v20, v20[12], MetalStorage, v21, v25, &v23);
    NullMetalTexture = v23;
    if (!v23)
    {
      goto LABEL_3;
    }

    HGBitmap::SetStorage(v23, MetalStorage);
    if (!a4)
    {
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  if ((v15 & 0x200) == 0)
  {
    goto LABEL_2;
  }

  v16 = HGMetalTexture::getMetalStorage(v9, v12);
  if (*(v16 + 17) != *(*(this[139] + 2) + 16))
  {
    goto LABEL_2;
  }

  NullMetalTexture = v16;
  (*(*v16 + 16))(v16);
  if (a4)
  {
    v17 = HGBitmap::GetEdgePolicy(a3);
    HGBitmap::SetEdgePolicy(NullMetalTexture, v17);
  }

LABEL_3:
  (*(*v9 + 24))(v9);
  if (NullMetalTexture || (NullMetalTexture = HGGPURenderer::LoadNullMetalTexture(this)) != 0)
  {
    (*(*NullMetalTexture + 16))(NullMetalTexture);
    (*(*NullMetalTexture + 24))(NullMetalTexture);
  }

  return NullMetalTexture;
}

std::string *HGGPURenderer::CopyMetal(HGGPURenderer *this, HGBitmap *a2, HGRect a3, HGBitmap *a4)
{
  __asm { FMOV            V0.4S, #1.0 }

  v13 = _Q0;
  v10 = 0;
  v11 = xmmword_26038F230;
  v12 = 0;
  return HGGPURenderer::CopyMetal(this, a2, a3, a4, &v10, &v13, 0);
}

BOOL HGGPURenderer::ClearBuffer(_BOOL8 this, HGBuffer *a2, HGRect a3, HGRect a4)
{
  if (a2)
  {
    v4 = *&a4.var2;
    v5 = *&a4.var0;
    v6 = *&a3.var2;
    v7 = *&a3.var0;
    v9 = this;
    this = HGRectIsNull(*(a2 + 20), *(a2 + 28));
    if (!this)
    {
      v10 = (*(*v9 + 128))(v9, 43);
      MetalStorage = HGMetalTexture::getMetalStorage(a2, v11);
      CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a2, v13);
      if (MetalStorage || CVBitmapStorage && v10 == 1)
      {
        (*(*v9 + 144))(v9, 0);
        *&v15.var0 = v7;
        *&v15.var2 = v6;
        *&v16.var0 = v5;
        *&v16.var2 = v4;

        return HGGPURenderer::ClearMetal(v9, a2, v15, v16);
      }

      else
      {
        (*(*v9 + 144))(v9, a2);
        *&v18.var0 = v7;
        *&v18.var2 = v6;
        *&v19.var0 = v5;
        *&v19.var2 = v4;
        this = HGGPURenderer::Clear(v9, v18, v19);
        if (this)
        {
          *(v9 + 311) = 1;
        }
      }
    }
  }

  return this;
}

BOOL HGGPURenderer::ClearMetal(HGGPURenderer *this, HGBuffer *a2, HGRect a3, HGRect a4)
{
  v4 = *&a4.var2;
  var0 = a4.var0;
  v6 = *&a3.var2;
  v7 = a3.var0;
  var1 = a3.var1;
  v11 = a4.var1;
  HGTraceGuard::HGTraceGuard(v18, "gpu", 2, "clear texture borders to zero");
  v12 = var1 > v11;
  if (var1 > v11)
  {
    *&v19.var0 = HGRectMake4i(var0, v11, v4, var1);
    *&v19.var2 = v13;
    HGGPURenderer::ClearMetal(this, a2, v19);
  }

  if (SHIDWORD(v6) < SHIDWORD(v4))
  {
    *&v20.var0 = HGRectMake4i(var0, HIDWORD(v6), v4, HIDWORD(v4));
    *&v20.var2 = v14;
    HGGPURenderer::ClearMetal(this, a2, v20);
    v12 = 1;
  }

  if (v7 > var0)
  {
    *&v21.var0 = HGRectMake4i(var0, var1, v7, HIDWORD(v6));
    *&v21.var2 = v15;
    HGGPURenderer::ClearMetal(this, a2, v21);
    v12 = 1;
  }

  if (v6 < v4)
  {
    *&v22.var0 = HGRectMake4i(v6, var1, v4, HIDWORD(v6));
    *&v22.var2 = v16;
    HGGPURenderer::ClearMetal(this, a2, v22);
    v12 = 1;
  }

  HGTraceGuard::~HGTraceGuard(v18);
  return v12;
}

uint64_t HGGPURenderer::ClearBuffer(uint64_t this, HGBuffer *a2, HGRect a3)
{
  if (a2)
  {
    v3 = *&a3.var2;
    v4 = *&a3.var0;
    v6 = this;
    this = HGRectIsNull(*(a2 + 20), *(a2 + 28));
    if (!this)
    {
      v7 = (*(*v6 + 128))(v6, 43);
      MetalStorage = HGMetalTexture::getMetalStorage(a2, v8);
      CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a2, v10);
      if (MetalStorage || CVBitmapStorage && v7 == 1)
      {
        (*(*v6 + 144))(v6, 0);
        *&v12.var0 = v4;
        *&v12.var2 = v3;

        return HGGPURenderer::ClearMetal(v6, a2, v12);
      }

      else
      {
        (*(*v6 + 144))(v6, a2);
        *&v16.var0 = v4;
        *&v16.var2 = v3;
        this = HGGPURenderer::Clear(v6, v16, v13, v14);
        *(v6 + 311) = 1;
      }
    }
  }

  return this;
}

std::string *HGGPURenderer::ClearMetal(HGGPURenderer *this, HGBitmap *a2, HGRect a3, char *a4)
{
  v4 = *&a3.var2;
  v5 = *&a3.var0;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("gpu", 2, "clear texture to zero [%d %d %d %d]\n", *&a3.var2, a4, *&a3.var0, a3.var1, *&a3.var2, a3.var3);
  }

  v9 = *(this + 161);
  v10 = HGString::zero(0x60B10, 1, __p);
  v13 = HGString::c_str(&__p[0].__r_.__value_.__l.__data_, v10, v11, v12);
  Entry = HGGLShaderCache::GetEntry(v9, v13);
  HGString::~HGString(__p);
  if ((*(*this + 432))(this, Entry))
  {
    v15 = 0;
  }

  else
  {
    v15 = Entry;
  }

  result = (*(*this + 368))(this, v15, this);
  if (result)
  {
    if (result)
    {
      v17 = result;
      *(&__p[0].__r_.__value_.__s + 23) = 5;
      strcpy(__p, "clear");
      HGMetalHandler::SetDebugLabel(result, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      HGMetalHandler::BindBuffer(v17, a2);
      (*(*v17 + 40))(v17);
      (*(*v17 + 192))(v17, v5, v4, 1);
      return (*(*this + 392))(this, v17);
    }
  }

  return result;
}

void sub_25FC6673C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGGPURenderer::Clear(HGGPURenderer *this, HGRect a2, const char *a3, char *a4)
{
  v4 = *&a2.var2;
  v5 = *&a2.var0;
  v7 = atomic_load(HGLogger::_enabled);
  if (v7)
  {
    HGLogger::log("gpu", 2, "clear texture to zero [%d %d %d %d]\n", a3, a4, *&a2.var0, a2.var1, *&a2.var2, a2.var3);
  }

  v8 = *(this + 161);
  v9 = HGString::zero(0x60620, 1, v17);
  v12 = HGString::c_str(v17, v9, v10, v11);
  Entry = HGGLShaderCache::GetEntry(v8, v12);
  HGString::~HGString(v17);
  result = (*(*this + 432))(this, Entry);
  if (result)
  {
    v15 = 1;
  }

  else
  {
    v15 = Entry == 0;
  }

  if (!v15)
  {
    v16 = (*(*this + 368))(this, Entry, this);
    (*(*v16 + 40))(v16);
    *&v18.var0 = v5;
    *&v18.var2 = v4;
    HGGPURenderer::Rect(this, v16, v18, 1);
    return (*(*this + 392))(this, v16);
  }

  return result;
}

void sub_25FC6690C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGString::~HGString(va);
  _Unwind_Resume(a1);
}

std::string *HGGPURenderer::ClearMetal(HGGPURenderer *this, HGBitmap *a2, HGRect a3, float *a4)
{
  v5 = *&a3.var2;
  v6 = *&a3.var0;
  v9 = atomic_load(HGLogger::_enabled);
  if (v9)
  {
    HGLogger::log("gpu", 2, "clear texture to uniform [%d %d %d %d]\n", *&a3.var2, a4, *&a3.var0, a3.var1, *&a3.var2, a3.var3);
  }

  v10 = *(this + 161);
  v11 = HGString::uniform(0x60B10, 1, __p);
  v14 = HGString::c_str(&__p[0].__r_.__value_.__l.__data_, v11, v12, v13);
  Entry = HGGLShaderCache::GetEntry(v10, v14);
  HGString::~HGString(__p);
  if ((*(*this + 432))(this, Entry))
  {
    v16 = 0;
  }

  else
  {
    v16 = Entry;
  }

  result = (*(*this + 368))(this, v16, this);
  if (result)
  {
    if (result)
    {
      v18 = result;
      *(&__p[0].__r_.__value_.__s + 23) = 11;
      strcpy(__p, "clear2color");
      HGMetalHandler::SetDebugLabel(result, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      HGMetalHandler::BindBuffer(v18, a2);
      (*(*v18 + 144))(v18, 0, a4, 1);
      (*(*v18 + 40))(v18);
      (*(*v18 + 192))(v18, v6, v5, 1);
      return (*(*this + 392))(this, v18);
    }
  }

  return result;
}

void sub_25FC66BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGGPURenderer::Clear(HGGPURenderer *this, HGRect a2, float *a3, char *a4)
{
  v5 = *&a2.var2;
  v6 = *&a2.var0;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("gpu", 2, "clear texture to uniform [%d %d %d %d]\n", a3, a4, *&a2.var0, a2.var1, *&a2.var2, a2.var3);
  }

  v9 = *(this + 161);
  v10 = HGString::uniform(0x60620, 1, v18);
  v13 = HGString::c_str(v18, v10, v11, v12);
  Entry = HGGLShaderCache::GetEntry(v9, v13);
  HGString::~HGString(v18);
  result = (*(*this + 432))(this, Entry);
  if (result)
  {
    v16 = 1;
  }

  else
  {
    v16 = Entry == 0;
  }

  if (!v16)
  {
    v17 = (*(*this + 368))(this, Entry, this);
    (*(*v17 + 144))(v17, 0, a3, 1);
    (*(*v17 + 40))(v17);
    *&v19.var0 = v6;
    *&v19.var2 = v5;
    HGGPURenderer::Rect(this, v17, v19, 1);
    return (*(*this + 392))(this, v17);
  }

  return result;
}

void sub_25FC66DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGString::~HGString(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::Rect(HGGPURenderer *this, HGHandler *a2, HGRect a3, uint64_t a4)
{
  v5 = *&a3.var2;
  v6 = *&a3.var0;
  if (!HGRenderer::RenderCheckPoint(this))
  {
    v9 = HIDWORD(v6);
    v10 = *(this + 3);
    if (v10)
    {
      v11 = *(v10 + 16);
      _ZF = v11 > 0x1F || ((1 << v11) & 0x8001C000) == 0;
      if (!_ZF)
      {
        v13.f32[0] = v5;
        v13.f32[1] = v6;
        __asm
        {
          FMOV            V0.2S, #6.0
          FMOV            V2.2S, #4.0
        }

        v19 = COERCE_DOUBLE(vmul_f32(vrndp_f32(vdiv_f32(v13, _D0)), _D2));
        v20 = COERCE_DOUBLE(vrndp_f32(vmul_f32(v13, 0x3F0000003F000000)));
        if (!(!_ZF & _CF))
        {
          v19 = v20;
        }

        v6 = HGRectMake4i(*(&v19 + 1), HIDWORD(v6), *&v19, HIDWORD(v5));
        v5 = v21;
        v9 = HIDWORD(v6);
      }
    }

    if (!a2 || HG_RENDERER_ENV::SCISSORED_LARGE_TRI_TILES == 1)
    {
      if (!HGRenderer::RenderCheckPoint(this))
      {
        HGLogger::warning("HGGPURenderer::Rect() needs a HGHandler!\n", v24, v25);
        *&v27.var0 = v6;
        *&v27.var2 = v5;
        HGGPURenderer::Clear(this, v27);
      }
    }

    else
    {
      (*(*a2 + 192))(a2, v6, v5, a4);
    }

    v26 = atomic_load(HGLogger::_enabled);
    if (v26)
    {
      HGLogger::log("gpu", 1, "rect[0..%d]: { %d, %d, %d, %d }\n", v22, v23, a4, v6, v9, v5, HIDWORD(v5));
    }

    *(this + 311) = 1;
  }
}

std::string *HGGPURenderer::CopyMetal(HGGPURenderer *this, HGBitmap *a2, HGRect a3, char *a4, uint64_t a5, __n128 *a6, int a7)
{
  v7 = *&a3.var2;
  v8 = *&a3.var0;
  if (a4)
  {
    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      HGLogger::log("gpu", 2, "copy texture to buffer [%d %d %d %d]\n", *&a3.var2, a4, *&a3.var0, a3.var1, *&a3.var2, a3.var3);
    }

    v16 = *(this + 161);
    v17 = HGString::sample2d(0x60B10, 0, *(this + 145) == 27, __p);
    v20 = HGString::c_str(&__p[0].__r_.__value_.__l.__data_, v17, v18, v19);
    Entry = HGGLShaderCache::GetEntry(v16, v20);
    HGString::~HGString(__p);
    if ((*(*this + 432))(this, Entry))
    {
      v22 = 0;
    }

    else
    {
      v22 = Entry;
    }

    result = (*(*this + 368))(this, v22, this);
    if (result)
    {
      if (result)
      {
        v24 = result;
        *(&__p[0].__r_.__value_.__s + 23) = 4;
        strcpy(__p, "copy");
        HGMetalHandler::SetDebugLabel(result, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (a7)
        {
          HGMetalHandler::EnableBlending(v24);
          HGMetalHandler::SetBlendingInfo(v24, a5);
          HGMetalHandler::SetBlendingColor(v24, a6);
        }

        HGMetalHandler::BindBuffer(v24, a2);
        HGMetalHandler::BindTexture(v24, 0, a4);
        *&v27.var0 = v8;
        *&v27.var2 = v7;
        HGMetalHandler::InitTextureUnit(v24, v27, 0);
        (*(v24->n128_u64[0] + 72))(v24, 0, 0);
        (*(v24->n128_u64[0] + 48))(v24, 0, 0);
        HGHandler::TexCoord(v24, 0, 0, 0, 0);
        if (!(*(*this + 128))(this, 46))
        {
          (*(v24->n128_u64[0] + 168))(v24);
        }

        (*(v24->n128_u64[0] + 40))(v24);
        (*(v24->n128_u64[0] + 192))(v24, v8, v7, 1);
        return (*(*this + 392))(this, v24);
      }
    }
  }

  else
  {

    return HGGPURenderer::ClearMetal(this, a2, a3, 0);
  }

  return result;
}

void sub_25FC67364(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGGPURenderer::Rect(HGGPURenderer *this, HGRect a2)
{
  v2 = *&a2.var2;
  v3 = *&a2.var0;
  result = HGRenderer::RenderCheckPoint(this);
  if (!result)
  {
    HGLogger::warning("HGGPURenderer::Rect() needs a HGHandler!\n", v6, v7);
    *&v10.var0 = v3;
    *&v10.var2 = v2;

    return HGGPURenderer::Clear(this, v10, v8, v9);
  }

  return result;
}

uint64_t HGGPURenderer::PageInit(PCICCTransferFunctionLUT **this, HGNode *a2, HGRect a3, HGRect *a4, int a5)
{
  if (*(a2 + 10))
  {
    v5 = a5;
    v8 = 0;
    v9 = 0;
    p_var2 = &a4[*(a2 + 71) + a5].var2;
    do
    {
      v11 = *(*(a2 + 10) + 8 * v9);
      if (!v11 || !*(v11 + 16))
      {
        goto LABEL_4;
      }

      IsMergedWithInput = HGNode::IsMergedWithInput(a2, v9);
      v13 = (*(*a2 + 400))(a2, this, v9, *&a3.var0, *&a3.var2);
      v15 = HGRectIntersection(v13, v14, *(*(*(v11 + 16) + 144) + 152), *(*(*(v11 + 16) + 144) + 160));
      v17 = v15;
      v18 = v16;
      if (IsMergedWithInput)
      {
        *&v47.var0 = v15;
        *&v47.var2 = v16;
        if (HGGPURenderer::PageInit(this, *(*(a2 + 37) + v8), v47, a4, *(*(a2 + 37) + v8 + 40) + v5))
        {
          return 0xFFFFFFFFLL;
        }

        goto LABEL_4;
      }

      *(p_var2 - 1) = v15;
      *p_var2 = v16;
      OutputFormat = HGRenderer::GetOutputFormat(this, *(*(v11 + 16) + 144));
      NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(this, *(*(v11 + 16) + 144));
      v20 = *(*(v11 + 16) + 144);
      v21 = *(v20 + 16) & 0x1000;
      v22 = NodeRenderAPI == 1;
      if (NodeRenderAPI != 1 && v21 != 0)
      {
        v22 = *(v20 + 108);
      }

      v24 = NodeRenderAPI == 0;
      if (NodeRenderAPI)
      {
        v25 = v21 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v24 = *(v20 + 107);
      }

      v26 = v18 - v17;
      v27 = HIDWORD(v18) - HIDWORD(v17);
      v28 = *(this + 165);
      if (*(v20 + 192))
      {
        v29 = 0;
        v30 = *(*(v11 + 16) + 144);
        if (v30[105])
        {
          goto LABEL_20;
        }

        goto LABEL_50;
      }

      if (*(this + 1281) == 1)
      {
        if (v22)
        {
          v32 = *(PCICCTransferFunctionLUT::getLUTEnd(this[139]) + 48);
          v34 = v32 >= v26 && v32 >= v27;
          if ((v24 & v34 & 1) == 0)
          {
            if (!v34)
            {
              goto LABEL_44;
            }

            goto LABEL_46;
          }
        }

        else if ((v24 & 1) == 0)
        {
          goto LABEL_46;
        }

        v37 = this[184];
        if (!v37)
        {
          goto LABEL_44;
        }

        v38 = HGTextureManager::maxTextureSizeGL(v37, OutputFormat);
        if (v38 < v26 || v38 < v27)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = *(PCICCTransferFunctionLUT::getLUTEnd(this[139]) + 48);
        if (v35 < v26 || v35 < v27)
        {
LABEL_44:
          v29 = 1;
          v30 = *(*(v11 + 16) + 144);
          if (v30[105])
          {
            goto LABEL_20;
          }

          goto LABEL_50;
        }
      }

LABEL_46:
      if (OutputFormat <= 41)
      {
        v40 = s_HGFormatInfos[8 * OutputFormat + 3];
      }

      else
      {
        v40 = 0;
      }

      v29 = v27 * v26 * v40 >= this[157];
      v30 = *(*(v11 + 16) + 144);
      if (v30[105])
      {
LABEL_20:
        v31 = 1;
        goto LABEL_51;
      }

LABEL_50:
      v31 = (*(*v30 + 304))(v30, this);
LABEL_51:
      v41 = v27 * v26 >= 2 * v28 * v28;
      v5 = a5;
      if ((v41 & ~v31 | v29))
      {
        return 0xFFFFFFFFLL;
      }

LABEL_4:
      ++v9;
      p_var2 += 4;
      v8 += 56;
    }

    while (v9 != 8);
  }

  return 0;
}

char *HGGPURenderer::ProcessNodeInternal(HGRenderer *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *Buffer, int a7, int a8, unsigned __int8 a9)
{
  v17 = HGRectIntersection(a3, a4, *(a2 + 152), *(a2 + 160));
  if (!a8 || (v19 = a3, v20 = a4, (*(a1 + 808) & 1) == 0))
  {
    v19 = v17;
    v20 = v18;
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  v29 = v18;
  v30 = v17;
  HGGPURenderer::BuildPagesList(a1, &__p, a2, v17, v18);
  if (v32 - __p == 144)
  {
    if (a7)
    {
      *&v37.var0 = a3;
      *&v37.var2 = a4;
      HGRenderer::SetTilesROI(a1, a2, v37);
      v35 = &unk_2872196F0;
      HGTraversal::RecursiveTraversal<(HGTraversal::NodeInput)1,(HGTraversal::InputOrder)0>::operator()(&v34, a1, a2, &v35);
      Buffer = HGGPURenderer::ProcessOnePage(a1, a2, a3, a4, __p, a5, Buffer, a8, a9);
      v35 = &unk_287219768;
      HGTraversal::RecursiveTraversal<(HGTraversal::NodeInput)1,(HGTraversal::InputOrder)0>::operator()(&v34, a1, a2, &v35);
    }

    else
    {
      Buffer = HGGPURenderer::ProcessOnePage(a1, a2, a3, a4, __p, a5, Buffer, a8, a9);
    }

    goto LABEL_26;
  }

  v35 = PageSortPredicate;
  v21 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v32 - __p) >> 4));
  if (v32 == __p)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(HGROIsInfo const&,HGROIsInfo const&),HGROIsInfo*,false>(__p, v32, &v35, v22, 1);
  if (!Buffer)
  {
    NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(a1, a2);
    *&v36.var0 = v19;
    *&v36.var2 = v20;
    Buffer = HGGPURenderer::CreateBuffer(a1, v36, a5, NodeRenderAPI, (*(a2 + 16) >> 12) & 1, a9 & ~a8, (*(a1 + 1336) & 1) == 0);
    v24 = __p;
    v23 = v32;
    if (__p == v32)
    {
      goto LABEL_23;
    }

LABEL_15:
    if (a7)
    {
      do
      {
        HGRenderer::SetTilesROI(a1, a2, *v24);
        v35 = &unk_2872196F0;
        HGTraversal::RecursiveTraversal<(HGTraversal::NodeInput)1,(HGTraversal::InputOrder)0>::operator()(&v34, a1, a2, &v35);
        v27 = HGGPURenderer::ProcessOnePage(a1, a2, v24->n128_u64[0], v24->n128_i64[1], v24, a5, Buffer, 0, a9);
        v35 = &unk_287219768;
        HGTraversal::RecursiveTraversal<(HGTraversal::NodeInput)1,(HGTraversal::InputOrder)0>::operator()(&v34, a1, a2, &v35);
        if (v27)
        {
          (*(*v27 + 24))(v27);
        }

        v24 += 9;
      }

      while (v24 != v23);
    }

    else
    {
      do
      {
        v26 = HGGPURenderer::ProcessOnePage(a1, a2, v24->n128_u64[0], v24->n128_i64[1], v24, a5, Buffer, 0, a9);
        if (v26)
        {
          (*(*v26 + 24))(v26);
        }

        v24 += 9;
      }

      while (v24 != v23);
    }

    goto LABEL_23;
  }

  (*(*Buffer + 16))(Buffer);
  v24 = __p;
  v23 = v32;
  if (__p != v32)
  {
    goto LABEL_15;
  }

LABEL_23:
  if (v32 == __p)
  {
    *&v39.var0 = a3;
    *&v39.var2 = a4;
    HGGPURenderer::ClearBuffer(a1, Buffer, v39);
  }

  else
  {
    *&v38.var2 = v29;
    *&v38.var0 = v30;
    *&v40.var0 = a3;
    *&v40.var2 = a4;
    HGGPURenderer::ClearBuffer(a1, Buffer, v38, v40);
  }

LABEL_26:
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  return Buffer;
}

void sub_25FC67B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL PageSortPredicate(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *a1 < *a2;
  }

  return 0;
}

void HGGPURenderer::BuildPagesList(uint64_t a1, uint64_t a2, HGNode *a3, uint64_t a4, uint64_t a5)
{
  while (1)
  {
    v5 = a5;
    v6 = a4;
    v7 = a3;
    v8 = a2;
    v9 = a1;
    *&v28 = a4;
    *(&v28 + 1) = a5;
    memset(v29, 0, sizeof(v29));
    if (HGRectIsNull(a4, a5) || (*&v31.var0 = v6, *&v31.var2 = v5, !HGGPURenderer::PageInit(v9, v7, v31, v29, 0)))
    {
      std::vector<HGROIsInfo>::push_back[abi:ne200100](v8, &v28);
      return;
    }

    v10 = HIDWORD(v6);
    v11 = HIDWORD(v5) - HIDWORD(v6);
    if ((v5 - v6) <= 1 && v11 < 2)
    {
      break;
    }

    if (v5 - v6 <= v11)
    {
      v22 = HGRectMake4i(v6, HIDWORD(v6), v5, (HIDWORD(v5) + HIDWORD(v6)) >> 1);
      v24 = v23;
      v25 = HGRectMake4i(v6, (HIDWORD(v5) + HIDWORD(v6)) >> 1, v5, HIDWORD(v5));
      v27 = v26;
      HGGPURenderer::BuildPagesList(v9, v8, v7, v22, v24);
      a1 = v9;
      a2 = v8;
      a3 = v7;
      a4 = v25;
      a5 = v27;
    }

    else
    {
      v15 = (v5 + v6) >> 1;
      v16 = HGRectMake4i(v6, HIDWORD(v6), v15, HIDWORD(v5));
      v18 = v17;
      v19 = HGRectMake4i(v15, v10, v5, HIDWORD(v5));
      v21 = v20;
      HGGPURenderer::BuildPagesList(v9, v8, v7, v16, v18);
      a1 = v9;
      a2 = v8;
      a3 = v7;
      a4 = v19;
      a5 = v21;
    }
  }

  v12 = *(v9 + 1448);
  if (!v12)
  {
LABEL_13:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v13 = v12;
      v14 = v12[4];
      if (v14 <= v7)
      {
        break;
      }

      v12 = *v13;
      if (!*v13)
      {
        goto LABEL_13;
      }
    }

    if (v14 >= v7)
    {
      break;
    }

    v12 = v13[1];
    if (!v12)
    {
      goto LABEL_13;
    }
  }
}

HGBuffer *HGGPURenderer::ProcessOnePage(int64x2_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, char *a7, int a8, unsigned __int8 a9)
{
  HGGPURenderer::PurgePostDeleteEvents(a1);
  if (a7)
  {
    (*(*a7 + 16))(a7);
  }

  v16 = *a5;
  v17 = *(a5 + 8);
  *&v44.var0 = a3;
  *&v44.var2 = a4;
  if (!a8 || (a1[50].i8[8] & 1) == 0)
  {
    a4 = *(a5 + 8);
    a3 = *a5;
  }

  IsNull = HGRectIsNull(v16, v17);
  if (IsNull | HGRenderer::RenderCheckPoint(a1))
  {
    if ((a8 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v19 = *(a2 + 192);
  if (v19 || (v19 = *(a2 + 248)) != 0)
  {
    (*(*v19 + 16))(v19);
    if ((a8 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v33 = a9;
    if ((a8 ^ 1) & 1) == 0 && !a7 && (a1[50].i8[8])
    {
      NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(a1, a2);
      Buffer = HGGPURenderer::CreateBuffer(a1, v44, a6, NodeRenderAPI, (*(a2 + 16) >> 12) & 1, (a8 ^ 1u) & a9, (a1[83].i8[8] & 1) == 0);
      v33 = a9;
      a7 = Buffer;
    }

    v36 = *(a5 + 96);
    v51 = *(a5 + 80);
    v52 = v36;
    v37 = *(a5 + 128);
    v53 = *(a5 + 112);
    v54 = v37;
    v38 = *(a5 + 32);
    v47 = *(a5 + 16);
    v48 = v38;
    v39 = *(a5 + 64);
    v49 = *(a5 + 48);
    v59 = a2;
    v60 = 0;
    v50 = v39;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v45[0] = a1;
    v45[1] = a7;
    v46 = a6;
    v45[2] = v16;
    v45[3] = v17;
    v61 = v33;
    v19 = HGGPURenderer::RenderPage(a1, a2, v45);
    v40 = a1[43].i32[2];
    if (*(a2 + 64))
    {
      ++v40;
    }

    a1[43].i32[2] = v40;
    a1[77].i32[3] = 1;
    if ((a8 & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  if (!v19)
  {
LABEL_17:
    if (!a7)
    {
      if (a1[50].i8[8] == 1)
      {
        v25 = a1[84].i64[1];
        if (!v25)
        {
          v25 = HGObject::operator new(0x80uLL);
          v26 = HGRectMake4i(0, 0, 0, 0);
          HGBitmap::HGBitmap(v25, v26, v27, 24);
          a1[84].i64[1] = v25;
        }

        (*(*v25 + 16))(v25);
        v19 = a1[84].i64[1];
        v28 = a1[79].i32[1];
        v29 = (*(a2 + 16) >> 12) & 1;
        v30 = (a1[83].i8[8] & 1) == 0;
        v31 = a1;
        v32 = v44;
        goto LABEL_43;
      }

      v21 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v21, 0, 0, a6);
      a7 = 0;
LABEL_19:
      v22 = a7 != 0;
      v23 = v21 != 0;
      v24 = a7;
      a7 = v21;
      if (!v21)
      {
        goto LABEL_52;
      }

LABEL_20:
      (*(*a7 + 16))(a7);
      v19 = a7;
      if (!v23)
      {
        return a7;
      }

      goto LABEL_50;
    }

LABEL_18:
    v21 = 0;
    goto LABEL_19;
  }

  if (HGRectIsEqual(*(v19 + 20), *(v19 + 28), a3, a4))
  {
    v20 = *(v19 + 3);
    if ((v20 & 1) == 0)
    {
      if ((~v20 & 0x120) == 0 || (*(a2 + 16) & 0x1000) != 0)
      {
        goto LABEL_38;
      }

LABEL_36:
      if (*(v19 + 4) == a6)
      {
        EdgePolicy = HGBitmap::GetEdgePolicy(v19);
        if (HGEdgePolicy::isDefault(EdgePolicy))
        {
          goto LABEL_44;
        }
      }

      goto LABEL_38;
    }

    if ((~v20 & 0x120) != 0)
    {
      goto LABEL_36;
    }
  }

LABEL_38:
  if (v19 == a7)
  {
    (*(*a7 + 24))(a7);
LABEL_42:
    v28 = a1[79].i32[1];
    v29 = (*(a2 + 16) >> 12) & 1;
    v30 = (a1[83].i8[8] & 1) == 0;
    v31 = a1;
    *&v32.var0 = a3;
    *&v32.var2 = a4;
LABEL_43:
    a7 = HGGPURenderer::CreateBuffer(v31, v32, a6, v28, v29, 0, v30);
    goto LABEL_44;
  }

  if (!a7)
  {
    goto LABEL_42;
  }

LABEL_44:
  v22 = a7 != 0;
  v23 = v19 != 0;
  if (a7 && v19)
  {
    if (v19 != a7)
    {
      HGGPURenderer::CopyBitmapIntoBuffer(a1, a7, v44, v19);
    }

    if (!HGRectIsEqual(v16, v17, *&v44.var0, *&v44.var2))
    {
      *&v62.var0 = v16;
      *&v62.var2 = v17;
      HGGPURenderer::ClearBuffer(a1, a7, v62, v44);
    }

LABEL_50:
    (*(*v19 + 24))(v19);
    return a7;
  }

  v24 = a7;
  a7 = v19;
  if (v19)
  {
    goto LABEL_20;
  }

LABEL_52:
  if (v22)
  {
    HGGPURenderer::ClearBuffer(a1, v24, v44);
    return v24;
  }

  else
  {
    a1[77].i32[3] = 1;
    return HGGPURenderer::LoadNullBuffer(a1);
  }
}

HGBitmap *HGGPURenderer::RenderPage(HGBitmap **this, HGNode *a2, HGPage *a3)
{
  NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(this, a2);
  v7 = NodeRenderAPI;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    if (NodeRenderAPI == 1)
    {
      v9 = "Metal";
    }

    else
    {
      v9 = "GLSL ";
    }

    v10 = (*(*a2 + 48))(a2);
    HGLogger::log("metal", 3, "node render API (%p) : %s  (%s)\n", v11, v12, a2, v9, v10);
  }

  HGGPURenderer::ValidateCurrentContext(this);
  v14 = *(a3 + 7);
  v13 = *(a3 + 8);
  v15 = *(a3 + 4);
  v16 = *(a3 + 5);
  v17 = *(a3 + 6);
  if (v7 != 1)
  {
    if (v7)
    {
      v29 = this[169];
      if (!v29)
      {
        v29 = HGObject::operator new(0x80uLL);
        v30 = HGRectMake4i(0, 0, 0, 0);
        HGBitmap::HGBitmap(v29, v30, v31, 24);
LABEL_34:
        this[169] = v29;
      }

LABEL_35:
      (*(*v29 + 16))(v29, v13, v15, v16, v17, v14);
      v28 = this[169];
      goto LABEL_36;
    }

    if (*(this + 319) < 1)
    {
LABEL_27:
      if (*(this + 1281) == 1)
      {
        v33 = *(a3 + 1);
        if (v33 && (*(v33 + 12) & 0x20) != 0)
        {
          *(a3 + 1) = 0;
        }

        v28 = (*(*a2 + 456))(a2, a3);
        goto LABEL_36;
      }

      v29 = this[169];
      if (!v29)
      {
        v29 = HGObject::operator new(0x80uLL);
        v34 = HGRectMake4i(0, 0, 0, 0);
        HGBitmap::HGBitmap(v29, v34, v35, 24);
        goto LABEL_34;
      }

      goto LABEL_35;
    }

    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v40);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v41, "OpenGL rendering : Using ", 25);
    v19 = (*(*a2 + 48))(a2);
    v20 = strlen(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "::RenderPage().", 15);
    std::stringbuf::str();
    v24 = v39;
    p_p = __p;
    if (v39 >= 0)
    {
      p_p = &__p;
    }

    v26 = *(this + 319);
    if (v26 == 2)
    {
      HGLogger::error("%s", v22, v23, p_p);
    }

    else
    {
      if (v26 != 1)
      {
LABEL_22:
        if (v24 < 0)
        {
          operator delete(__p);
        }

        v40[0] = *MEMORY[0x277D82818];
        v32 = *(MEMORY[0x277D82818] + 72);
        *(v40 + *(v40[0] - 24)) = *(MEMORY[0x277D82818] + 64);
        v41 = v32;
        v42 = MEMORY[0x277D82878] + 16;
        if (v44 < 0)
        {
          operator delete(v43[7].__locale_);
        }

        v42 = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v43);
        std::iostream::~basic_iostream();
        MEMORY[0x2666E9E10](&v45);
        goto LABEL_27;
      }

      HGLogger::warning("%s", v22, v23, p_p);
    }

    v24 = v39;
    goto LABEL_22;
  }

  v27 = *(a3 + 1);
  if (v27 && (*(v27 + 12) & 0x10) != 0)
  {
    *(a3 + 1) = 0;
  }

  v28 = (*(*a2 + 464))(a2, a3, v15, v16, v17, v14);
LABEL_36:
  HGGPURenderer::ValidateCurrentContext(this);
  if (v28)
  {
    HGRenderer::DotLogNodeBufferFormat(this, a2, v28);
    if (v7 == 1)
    {
      v36 = "purple";
    }

    else
    {
      v36 = "blue";
    }

    HGDotGraph::fontColor((this + 105), a2, v36);
    HGRenderer::DotLogBufferOutput(this, a2, v28);
  }

  return v28;
}

void sub_25FC68864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19);
    _Unwind_Resume(a1);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a19);
  _Unwind_Resume(a1);
}

void std::vector<HGROIsInfo>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    *v3 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    v7 = a2[4];
    *(v3 + 3) = a2[3];
    *(v3 + 4) = v7;
    *(v3 + 1) = v5;
    *(v3 + 2) = v6;
    v8 = a2[5];
    v9 = a2[6];
    v10 = a2[8];
    *(v3 + 7) = a2[7];
    *(v3 + 8) = v10;
    *(v3 + 5) = v8;
    *(v3 + 6) = v9;
    v11 = (v3 + 144);
LABEL_3:
    *(a1 + 8) = v11;
    return;
  }

  v12 = *a1;
  v13 = 0x8E38E38E38E38E39 * (&v3[-*a1] >> 4);
  v14 = v13 + 1;
  if (v13 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v15 = 0x8E38E38E38E38E39 * ((v4 - v12) >> 4);
  if (2 * v15 > v14)
  {
    v14 = 2 * v15;
  }

  if (v15 >= 0xE38E38E38E38E3)
  {
    v16 = 0x1C71C71C71C71C7;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    if (v16 <= 0x1C71C71C71C71C7)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v17 = a2[7];
  v18 = (16 * (&v3[-*a1] >> 4));
  v18[6] = a2[6];
  v18[7] = v17;
  v18[8] = a2[8];
  v19 = a2[3];
  v18[2] = a2[2];
  v18[3] = v19;
  v20 = a2[5];
  v18[4] = a2[4];
  v18[5] = v20;
  v21 = a2[1];
  v11 = 144 * v13 + 144;
  v22 = 144 * v13 - (v3 - v12);
  *v18 = *a2;
  v18[1] = v21;
  memcpy(v18 - (v3 - v12), v12, v3 - v12);
  *a1 = v22;
  *(a1 + 8) = v11;
  *(a1 + 16) = 0;
  if (!v12)
  {
    goto LABEL_3;
  }

  operator delete(v12);
  *(a1 + 8) = v11;
}

void HGGPURenderer::EnqueueTextureDelete(HGGPURenderer *this, const unsigned int *a2, HGBitmap *a3, char *a4, int a5)
{
  v10 = *(this + *(this + 290) + 143);
  if (v10)
  {
    HGGLContext::context(&v20, v10);
  }

  else
  {
    HGGLContextPtr::HGGLContextPtr(&v20, 0);
  }

  HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v21, &v20.var0);
  PCSharedCount::PCSharedCount(&v20);
  glFlush();
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v21);
  if (a4)
  {
    (*(*a3 + 16))(a3);
    v11 = *(this + 174);
    v12 = *(this + 173);
    if (v11 == v12)
    {
      v13 = 0;
    }

    else
    {
      v13 = ((v11 - v12) << 6) - 1;
    }

    v14 = *(this + 177);
    v15 = v14 + *(this + 176);
    if (v13 == v15)
    {
      std::deque<HGBitmap *>::__add_back_capacity(this + 172);
      v14 = *(this + 177);
      v12 = *(this + 173);
      v15 = *(this + 176) + v14;
    }

    *(*(v12 + ((v15 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v15 & 0x1FF)) = a3;
    *(this + 177) = v14 + 1;
    v16 = *(this + 184);
    v17 = a2;
    v18 = a4;
    v19 = a3;
    if (!a5)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = *(this + 184);
    v17 = a2;
    v18 = a4;
    v19 = 0;
    if (!a5)
    {
LABEL_11:
      HGTextureManager::dismissTexture(v16, v17, v18, v19);
      return;
    }
  }

  HGTextureManager::deleteTexture(v16, v17, v18, v19);
}

void sub_25FC68BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::ReleaseBitmap(int64x2_t *this, HGBitmap *a2, char *a3)
{
  HGGPURenderer::PurgePostDeleteEvents(this);
  if (!a2)
  {
    goto LABEL_9;
  }

  v8 = *(a2 + 3);
  if ((v8 & 0x30) == 0)
  {
    goto LABEL_9;
  }

  v9 = *(a2 + 16);
  if ((v8 & 0x100) == 0)
  {
    if (v9 == this)
    {
      v10 = (a2 + 168);
      if (*(a2 + 21))
      {
        if (*(a2 + 22))
        {
          HGGPURenderer::EnqueueTextureDelete(this, a2 + 44, a2, a3, 1);
          *(a2 + 22) = 0;
          result = 0;
          *v10 = 0;
        }

        else
        {
          if (!*(a2 + 17) && *(a2 + 192) == 1)
          {
            HGGPURenderer::EnqueueTextureDelete(this, a2 + 42, a2, a3, 0);
          }

          result = 0;
          *v10 = 0;
        }

        return result;
      }

      return 0;
    }

LABEL_9:
    HGLogger::warning("ReleaseBitmap() : buffer is tied to another renderer", v6, v7);
    return 0xFFFFFFFFLL;
  }

  if (v9 != this)
  {
    goto LABEL_9;
  }

  v12 = (a2 + 156);
  if (!*(a2 + 39))
  {
    return 0;
  }

  if (*(a2 + 40))
  {
    HGGPURenderer::EnqueueTextureDelete(this, a2 + 40, a2, a3, 1);
    *(a2 + 40) = 0;
  }

  else if (*(a2 + 181) == 1)
  {
    HGGPURenderer::EnqueueTextureDelete(this, a2 + 39, a2, a3, 0);
    result = 0;
    *v12 = 0;
    return result;
  }

  result = 0;
  *v12 = 0;
  return result;
}

uint64_t HGGPURenderer::ReleaseTexture(int64x2_t *this, HGGLTexture *a2, char *a3)
{
  v4 = *(a2 + 17);
  if (v4)
  {
    v5 = this[76].i64[0];
    v6 = this[76].i64[1];
    if (v5 != v6)
    {
      v7 = this[76].i64[0];
      while (*v7 != v4)
      {
        ++v7;
        v5 += 8;
        if (v7 == v6)
        {
          v5 = this[76].i64[1];
          break;
        }
      }
    }

    v8 = v6 - v5 - 8;
    if (v6 != (v5 + 8))
    {
      v9 = this;
      v10 = a2;
      v11 = a3;
      memmove(v5, (v5 + 8), v6 - v5 - 8);
      this = v9;
      a2 = v10;
      a3 = v11;
    }

    this[76].i64[1] = &v8[v5];
    this[77].i32[2] = -1;
    v3 = vars8;
  }

  return HGGPURenderer::ReleaseBitmap(this, a2, a3);
}

void HGGPURenderer::GetString(uint64_t a1@<X1>, HGString *a2@<X8>)
{
  if (a1)
  {
    HGString::HGString(a2, (a1 + 64));
  }

  else
  {
    HGString::HGString(a2, 0, 1, 0xFFu);
  }
}

uint64_t HGGPURenderer::BindProgram(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v97 = *MEMORY[0x277D85DE8];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  if (HGLimits::ismetal((v2 + 4)))
  {
    v5 = *v3 ^ (2 * (v3[2] ^ v3[1] ^ v3[3]));
    v6 = *(*(*(v4 + 1112) + 24) + 168);
    *(&source[0].__r_.__value_.__s + 23) = 12;
    strcpy(source, "fragmentFunc");
    *(&shaders.__r_.__value_.__s + 23) = 10;
    strcpy(&shaders, "vertexFunc");
    Function = HGMetalFunctionCache::getFunction(v6, source, v5);
    FunctionWithSource = HGMetalFunctionCache::getFunction(v6, &shaders, v5);
    if (Function)
    {
      goto LABEL_62;
    }

    v14 = HGString::c_str(v3 + 8, v11, v12, v13);
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    v94 = v15;
    if (v15)
    {
      v15 = memmove(__dst, v14, v15);
    }

    *(__dst + v19) = 0;
    v47 = __dst;
    if ((v94 & 0x80u) == 0)
    {
      v48 = v94;
    }

    else
    {
      v47 = __dst[0];
      v48 = __dst[1];
    }

    v49 = (v47 + v48);
    size = HIBYTE(shaders.__r_.__value_.__r.__words[2]);
    p_shaders = &shaders;
    if ((shaders.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = shaders.__r_.__value_.__l.__size_;
      p_shaders = shaders.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if (v48 < size || (v52 = v49 - size + 1, v52 == v47))
      {
LABEL_32:
        *length = 0;
        v91 = 0;
        v92 = 0;
        goto LABEL_56;
      }

      while (*v47 != p_shaders->__r_.__value_.__s.__data_[0])
      {
LABEL_48:
        v47 = (v47 + 1);
        if (v47 == v52)
        {
          goto LABEL_32;
        }
      }

      v65 = 1;
      while (size != v65)
      {
        v66 = *(v47 + v65);
        v67 = p_shaders->__r_.__value_.__s.__data_[v65++];
        if (v66 != v67)
        {
          goto LABEL_48;
        }
      }
    }

    *length = 0;
    v91 = 0;
    v92 = 0;
    if (v47 == v49)
    {
LABEL_56:
      HGMetalUtils::stringForMetalHeader(v15);
    }

    v68 = HGString::c_str(v3 + 8, v16, v17, v18);
    MEMORY[0x2666E99D0](length, v68);
    Function = HGMetalFunctionCache::getFunctionWithSource(v6, source, v5, length);
    if (!FunctionWithSource)
    {
      FunctionWithSource = HGMetalFunctionCache::getFunctionWithSource(v6, &shaders, v5, __dst);
    }

    if (SHIBYTE(v92) < 0)
    {
      operator delete(*length);
      if ((v94 & 0x80000000) == 0)
      {
LABEL_61:
        if (Function)
        {
          goto LABEL_62;
        }

        goto LABEL_73;
      }
    }

    else if ((v94 & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    operator delete(__dst[0]);
    if (Function)
    {
LABEL_62:
      v69 = atomic_load(HGLogger::_enabled);
      if (v69)
      {
        HGLogger::log("gpu", 1, "bind metal {\n", v8, v9);
      }

      HGLogger::indent(1);
      v73 = atomic_load(HGLogger::_enabled);
      if (v73)
      {
        v74 = HGString::c_str(v3 + 8, v70, v71, v72);
        HGLogger::log("gpu", 3, "\n%s\n", v75, v76, v74);
      }

      v36 = *(v4 + 1312);
      (*(*v36 + 16))(v36, v4);
      HGMetalHandler::AddMTLFunction(v36, Function);
      HGMetalHandler::SetAttributeFlags(v36, *(v3 + 24));
      HGMetalHandler::SetTextureCoords(v36, *(v3 + 26));
      if (FunctionWithSource)
      {
        HGMetalHandler::AddMTLFunction(v36, FunctionWithSource);
      }

      if ((SHIBYTE(shaders.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_80;
    }

LABEL_73:
    v78 = atomic_load(HGLogger::_enabled);
    if (v78)
    {
      HGLogger::log("gpu", 1, "bind metal shader failed(%d) {\n", v8, v9, 4294967237);
    }

    HGLogger::indent(1);
    v82 = atomic_load(HGLogger::_enabled);
    if (v82)
    {
      v83 = HGString::c_str(v3 + 8, v79, v80, v81);
      HGLogger::log("gpu", 3, "%s\n", v84, v85, v83);
    }

    HGLogger::indent(0xFFFFFFFFLL);
    v88 = atomic_load(HGLogger::_enabled);
    if (v88)
    {
      HGLogger::log("gpu", 1, "}\n", v86, v87);
    }

    HGGLShaderCache::DisableEntry(*(v4 + 1288), v3, -59);
    v36 = 0;
    if ((SHIBYTE(shaders.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_69:
      if ((SHIBYTE(source[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v36;
      }

LABEL_81:
      operator delete(source[0].__r_.__value_.__l.__data_);
      return v36;
    }

LABEL_80:
    operator delete(shaders.__r_.__value_.__l.__data_);
    if ((SHIBYTE(source[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v36;
    }

    goto LABEL_81;
  }

  v20 = HGGLShaderCache::Enable(*(v4 + 1288), v3, 0, 0);
  if (!v20)
  {
    if (HGLimits::isarb((v3 + 4)))
    {
      v39 = atomic_load(HGLogger::_enabled);
      if (v39)
      {
        HGLogger::log("gpu", 1, "bind arb {\n", v37, v38);
      }

      HGLogger::indent(1);
      v43 = atomic_load(HGLogger::_enabled);
      if (v43)
      {
        v44 = HGString::c_str(v3 + 8, v40, v41, v42);
        HGLogger::log("gpu", 3, "\n%s\n", v45, v46, v44);
      }
    }

    else if (v3[4] >> 9 >= 0x303)
    {
      v53 = atomic_load(HGLogger::_enabled);
      if (v53)
      {
        HGLogger::log("gpu", 1, "bind glsl {\n", v37, v38);
      }

      HGLogger::indent(1);
      v55 = atomic_load(HGLogger::_enabled);
      if ((v55 & 1) != 0 && HGLogger::getLevel("gpu", v54) >= 1)
      {
        v56 = *(*(v3 + 15) + 8);
        LODWORD(__dst[0]) = 0;
        glGetAttachedShaders(v56, 3, __dst, &shaders);
        v59 = atomic_load(HGLogger::_enabled);
        if (v59)
        {
          HGLogger::log("gpu", 1, "num attached shaders : %d\n", v57, v58, LODWORD(__dst[0]));
        }

        HGLogger::indent(1);
        if (SLODWORD(__dst[0]) >= 1)
        {
          v62 = 0;
          do
          {
            v63 = atomic_load(HGLogger::_enabled);
            if (v63)
            {
              HGLogger::log("gpu", 1, "shader #%d : %d\n", v60, v61, v62, *(&shaders.__r_.__value_.__l.__data_ + v62));
            }

            length[0] = 0;
            glGetShaderSource(*(&shaders.__r_.__value_.__l.__data_ + v62), 0x4000, length, source);
            v64 = atomic_load(HGLogger::_enabled);
            if (v64)
            {
              HGLogger::log("gpu", 3, "\n%s\n", v60, v61, source);
            }

            ++v62;
          }

          while (v62 < SLODWORD(__dst[0]));
        }

        HGLogger::indent(0xFFFFFFFFLL);
      }
    }

    if (HGLimits::isarb((v3 + 4)))
    {
      return (*(**(v4 + 1296) + 16))(*(v4 + 1296), v4);
    }

    if (v3[4] >> 9 < 0x303)
    {
      return 0;
    }

    return (*(**(v4 + 1304) + 208))(*(v4 + 1304), v4, *(*(v3 + 15) + 8));
  }

  v23 = atomic_load(HGLogger::_enabled);
  if (v23)
  {
    HGLogger::log("gpu", 1, "failed(%d) {\n", v21, v22, v20);
    HGLogger::indent(1);
    v27 = atomic_load(HGLogger::_enabled);
    if ((v27 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    HGLogger::indent(1);
    v31 = atomic_load(HGLogger::_enabled);
    if ((v31 & 1) == 0)
    {
LABEL_11:
      HGLogger::indent(0xFFFFFFFFLL);
      v30 = atomic_load(HGLogger::_enabled);
      if (v30)
      {
        goto LABEL_15;
      }

      return 0;
    }
  }

  v32 = HGString::c_str(v3 + 8, v24, v25, v26);
  HGLogger::log("gpu", 3, "%s\n", v33, v34, v32);
  HGLogger::indent(0xFFFFFFFFLL);
  v35 = atomic_load(HGLogger::_enabled);
  if (v35)
  {
LABEL_15:
    HGLogger::log("gpu", 1, "}\n", v28, v29);
  }

  return 0;
}

void sub_25FC697E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a49 < 0)
  {
    operator delete(a44);
    if (a55 < 0)
    {
LABEL_3:
      operator delete(__p);
      if (*(v61 + 39) < 0)
      {
LABEL_7:
        operator delete(*(v62 - 128));
        if ((a61 & 0x80000000) == 0)
        {
          goto LABEL_11;
        }

LABEL_10:
        operator delete(a56);
LABEL_11:
        _Unwind_Resume(a1);
      }

LABEL_9:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (a55 < 0)
  {
    goto LABEL_3;
  }

  if (*(v61 + 39) < 0)
  {
    goto LABEL_7;
  }

  goto LABEL_9;
}

uint64_t HGGPURenderer::BindProgramDescriptor(uint64_t a1, HGProgramDescriptor **a2)
{
  v4 = *(a1 + 1312);
  (*(*v4 + 16))(v4, a1);
  Hash = HGProgramDescriptor::GetHash(*a2, v5, v6);
  memset(&v47, 0, sizeof(v47));
  v8 = *(*(*(a1 + 1112) + 24) + 168);
  FragmentFunctionName = HGProgramDescriptor::GetFragmentFunctionName(*a2);
  v10 = strlen(FragmentFunctionName);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v10;
  if (v10)
  {
    memmove(&__dst, FragmentFunctionName, v10);
  }

  __dst.__r_.__value_.__s.__data_[v11] = 0;
  Function = HGMetalFunctionCache::getFunction(v8, &__dst, Hash);
  if (Function)
  {
    goto LABEL_21;
  }

  MetalLibPath = HGProgramDescriptor::GetMetalLibPath(*a2);
  v14 = strlen(MetalLibPath);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v14;
  if (v14)
  {
    memmove(&__p, MetalLibPath, v14);
  }

  __p.__r_.__value_.__s.__data_[v15] = 0;
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size && (HGProgramDescriptor::IsConcatenated(*a2) & 1) == 0)
  {
    Function = HGMetalFunctionCache::getFunctionWithLibrary(v8, &__dst, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_36;
    }
  }

  else
  {
    memset(&__str, 0, sizeof(__str));
    HGProgramDescriptor::EncodeShaderDeclarations(*a2, &__str);
    HGProgramDescriptor::EncodeShaderProgram(*a2, &__str, v17);
    HGProgramDescriptor::EncodeShaderBufferStruct(*a2, &__str);
    HGProgramDescriptor::EncodeShaderFunction(*a2, &__str);
    Function = HGMetalFunctionCache::getFunctionWithSource(v8, &__dst, Hash, &__str);
    std::string::operator=(&v47, &__str);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_36;
    }

    operator delete(__str.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_36:
      operator delete(__p.__r_.__value_.__l.__data_);
      if (!Function)
      {
        goto LABEL_37;
      }

LABEL_21:
      HGMetalHandler::AddMTLFunction(v4, Function);
      HGProgramDescriptor::GetSignature(*a2, &__p);
      HGMetalHandler::SetAttributeFlags(v4, v43);
      HGMetalHandler::SetTextureCoords(v4, v44);
      VertexFunctionName = HGProgramDescriptor::GetVertexFunctionName(*a2);
      v21 = strlen(VertexFunctionName);
      if (v21 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v21;
      if (v21 >= 0x17)
      {
        operator new();
      }

      *(&__p.__r_.__value_.__s + 23) = v21;
      if (v21)
      {
        memmove(&__p, VertexFunctionName, v21);
      }

      __p.__r_.__value_.__s.__data_[v22] = 0;
      v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v23 = __p.__r_.__value_.__l.__size_;
      }

      if (!v23)
      {
LABEL_67:
        HGProgramDescriptor::CopyDependencies(*a2);
      }

      FunctionWithSource = HGMetalFunctionCache::getFunction(v8, &__p, Hash);
      if (FunctionWithSource)
      {
LABEL_66:
        HGMetalHandler::AddMTLFunction(v4, FunctionWithSource);
        goto LABEL_67;
      }

      v25 = HGProgramDescriptor::GetMetalLibPath(*a2);
      v26 = strlen(v25);
      if (v26 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v27 = v26;
      if (v26 >= 0x17)
      {
        operator new();
      }

      *(&__str.__r_.__value_.__s + 23) = v26;
      if (v26)
      {
        memmove(&__str, v25, v26);
      }

      __str.__r_.__value_.__s.__data_[v27] = 0;
      v36 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v36 = __str.__r_.__value_.__l.__size_;
      }

      if (v36)
      {
        FunctionWithLibrary = HGMetalFunctionCache::getFunctionWithLibrary(v8, &__p, &__str);
      }

      else
      {
        v38 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v38 = v47.__r_.__value_.__l.__size_;
        }

        if (!v38)
        {
LABEL_60:
          memset(&v41, 0, sizeof(v41));
          HGProgramDescriptor::EncodeShaderDeclarations(*a2, &v41);
          HGProgramDescriptor::EncodeShaderProgram(*a2, &v41, v39);
          HGProgramDescriptor::EncodeShaderBufferStruct(*a2, &v41);
          HGProgramDescriptor::EncodeShaderFunction(*a2, &v41);
          FunctionWithSource = HGMetalFunctionCache::getFunctionWithSource(v8, &__p, Hash, &v41);
          if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v41.__r_.__value_.__l.__data_);
          }

LABEL_62:
          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
            if (!FunctionWithSource)
            {
              goto LABEL_67;
            }
          }

          else if (!FunctionWithSource)
          {
            goto LABEL_67;
          }

          goto LABEL_66;
        }

        FunctionWithLibrary = HGMetalFunctionCache::getFunctionWithSource(v8, &__p, Hash, &v47);
      }

      FunctionWithSource = FunctionWithLibrary;
      if (FunctionWithLibrary)
      {
        goto LABEL_62;
      }

      goto LABEL_60;
    }
  }

LABEL_20:
  if (Function)
  {
    goto LABEL_21;
  }

LABEL_37:
  v28 = atomic_load(HGLogger::_enabled);
  if (v28)
  {
    HGLogger::log("gpu", 1, "bind metal shader failed {\n", v18, v19);
  }

  HGLogger::indent(1);
  v31 = atomic_load(HGLogger::_enabled);
  if (v31)
  {
    v32 = &v47;
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v32 = v47.__r_.__value_.__r.__words[0];
    }

    HGLogger::log("gpu", 3, "%s\n", v29, v30, v32);
  }

  HGLogger::indent(0xFFFFFFFFLL);
  v35 = atomic_load(HGLogger::_enabled);
  if (v35)
  {
    HGLogger::log("gpu", 1, "}\n", v33, v34);
  }

  (*(*v4 + 16))(v4, a1);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_71;
    }
  }

  else if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_71:
    operator delete(v47.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_25FC6A1F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if (a21 < 0)
    {
LABEL_5:
      operator delete(a16);
      if ((a36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_9;
    }
  }

  else if (a21 < 0)
  {
    goto LABEL_5;
  }

  if ((a36 & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v36 - 89) < 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a31);
  if (*(v36 - 89) < 0)
  {
LABEL_7:
    operator delete(*(v36 - 112));
    _Unwind_Resume(a1);
  }

LABEL_10:
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::BindProgram(HGGPURenderer *this, const char *a2, void *a3)
{
  v8 = 0;
  HGString::HGString(v7, a2, 0, 0xFFu);
  v5 = (*(*this + 408))(this, v7, 0, &v8);
  HGString::~HGString(v7);
  if (v5)
  {
    return 0;
  }

  else
  {
    return (*(*this + 368))(this, v8, a3);
  }
}

void sub_25FC6A3D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGString::~HGString(va);
  _Unwind_Resume(a1);
}

void HGGPURenderer::UnBindProgram(HGGPURenderer *this, HGHandler *a2)
{
  if (a2)
  {
    HGLogger::indent(0xFFFFFFFFLL);
    v5 = atomic_load(HGLogger::_enabled);
    if (v5)
    {
      HGLogger::log("gpu", 1, "}\n", v3, v4);
    }

    v6 = *(*a2 + 200);

    v6(a2);
  }
}

uint64_t HGGPURenderer::GetConcatenationMask(HGGPURenderer *this, HGNode *a2)
{
  HGNode::GetProgramDescriptor(a2, &v11);
  HGProgramDescriptor::GetSignature(v11, v9);
  v4 = v10;
  if (v10)
  {
    v5 = 0;
    v6 = v10;
    do
    {
      if (v4)
      {
        if (HGRenderer::IsMergeable(this, a2, v5, 0))
        {
          v6 = v6;
        }

        else
        {
          v6 = v6 & ~(1 << v5);
        }
      }

      ++v5;
      v7 = v4 > 1;
      v4 >>= 1;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  return v6;
}

void sub_25FC6A558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGGPURenderer::GenProgram(HGGLShaderCache **this, HGNode *a2, int a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = (*(*a2 + 48))(a2);
  snprintf(__str, 0x100uLL, "GenProgram(node = %p, %s)", a2, v6);
  HGTraceGuard::HGTraceGuard(v36, "concat", 1, __str);
  if ((*(a2 + 16) & 0x10) != 0)
  {
    if (*(a2 + 8))
    {
      v8 = 0;
    }

    else
    {
      v8 = 0xFFFFFFFFLL;
    }

    goto LABEL_73;
  }

  if (HGGPURenderer::GetNodeRenderAPI(this, a2) == 1 || (*(this + 1281) & 1) == 0)
  {
    v9 = (*(*this + 16))(this, 32);
    (*(*this + 15))(this, 32, 396048);
    Program = HGRenderer::GetProgram(this, a2);
    (*(*this + 15))(this, 32, v9);
  }

  else
  {
    Program = HGRenderer::GetProgram(this, a2);
  }

  if (!Program || !*Program)
  {
    *(a2 + 40) = 0;
    if (*(a2 + 8))
    {
      HGNode::ClearNodeChain(a2);
      HGShaderBinding::reset((a2 + 260));
      *(a2 + 8) = 0;
    }

    v8 = 0xFFFFFFFFLL;
    goto LABEL_72;
  }

  Entry = HGGLShaderCache::GetEntry(this[161], Program);
  v11 = *(a2 + 8);
  v12 = Entry != v11;
  if (!*Program || (v13 = HGGLShaderCache::GetEntry(this[161], Program), (v14 = v13[7]) == 0))
  {
    *(a2 + 40) = Entry;
    if (Entry == v11)
    {
      goto LABEL_65;
    }

LABEL_51:
    if (*(a2 + 8))
    {
      HGNode::ClearNodeChain(a2);
      v28 = HGShaderBinding::reset((a2 + 260));
      if (a3 && (*(*this + 54))(this, Entry, v28))
      {
        Entry = 0;
      }

      goto LABEL_68;
    }

LABEL_65:
    if (!a3)
    {
      goto LABEL_69;
    }

    if ((*(*this + 54))(this, Entry))
    {
      Entry = 0;
    }

LABEL_68:
    *(a2 + 8) = Entry;
    goto LABEL_69;
  }

  v15 = 0;
  v16 = v13[7];
  do
  {
    if (v14)
    {
      if (HGRenderer::IsMergeable(this, a2, v15, 0))
      {
        v16 = v16;
      }

      else
      {
        v16 = v16 & ~(1 << v15);
      }
    }

    ++v15;
    v17 = v14 >= 2;
    v14 >>= 1;
  }

  while (v17);
  *(a2 + 40) = Entry;
  if (!v16)
  {
LABEL_50:
    if ((v12 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_51;
  }

  HGNode::InitNodeChain(a2, 8uLL);
  if (!*(a2 + 10))
  {
    if (Entry != v11)
    {
      goto LABEL_56;
    }

    goto LABEL_57;
  }

  v18 = 0;
  v19 = 8;
  v20 = v16;
  do
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_34;
    }

    v24 = *(*(a2 + 10) + 8 * v18);
    if (v24)
    {
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = *(v25 + 144);
        if (!*(v26 + 192) && !*(v26 + 248) && !HGRect::IsNull((v26 + 168)))
        {
          if (((*(*this + 40))(this, v26, 0) & 0x80000000) != 0 || (v27 = *(v26 + 64)) == 0 || !HGLimits::issafe((v27 + 16)))
          {
            v16 = v16 & ~(1 << v18);
          }

          v21 = *(v26 + 64) == *(*(a2 + 37) + v19);
          goto LABEL_30;
        }

        v16 = v16 & ~(1 << v18);
      }
    }

    v21 = *(*(a2 + 37) + v19) == 0;
LABEL_30:
    v22 = !v21;
    v12 |= v22;
LABEL_34:
    ++v18;
    v19 += 56;
    v23 = v20 > 1;
    v20 >>= 1;
  }

  while (v23);
  if (!v16)
  {
    goto LABEL_50;
  }

  if ((v12 & 1) == 0)
  {
    goto LABEL_57;
  }

LABEL_56:
  if (!HGGPURenderer::Concatenate(this, a2, Entry, v16))
  {
    v34 = *(a2 + 8);
    HGNode::ClearNodeChain(a2);
    if (v34 == Entry)
    {
      goto LABEL_65;
    }

    goto LABEL_51;
  }

LABEL_57:
  v29 = *(a2 + 37);
  v30 = *(a2 + 38);
  v31 = v30 - v29;
  if (v30 != v29)
  {
    v32 = 0;
    v33 = 0x6DB6DB6DB6DB6DB7 * (v31 >> 3);
    if (v33 <= 1)
    {
      v33 = 1;
    }

    do
    {
      if (*v29)
      {
        *v29 = *(*(*(*(a2 + 10) + 8 * v32) + 16) + 144);
      }

      ++v32;
      v29 += 56;
    }

    while (v33 != v32);
  }

LABEL_69:
  if (*(a2 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
  }

LABEL_72:
  *(a2 + 4) |= 0x10u;
LABEL_73:
  HGTraceGuard::~HGTraceGuard(v36);
  return v8;
}

void sub_25FC6AA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6AAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6AAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6AADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6AAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6AB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::GenProgram2(HGGPURenderer *this, HGNode *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 48))(a2);
  snprintf(__str, 0x100uLL, "GenProgram2(node = %p, %s)", a2, v4);
  HGTraceGuard::HGTraceGuard(v18, "concat", 1, __str);
  HGNode::GetProgramDescriptor(a2, &v17);
  if (!v17)
  {
    v6 = (a2 + 16);
    if ((*(a2 + 16) & 0x10) != 0)
    {
      v14 = 0xFFFFFFFFLL;
      goto LABEL_33;
    }

    goto LABEL_19;
  }

  IsComplete = HGProgramDescriptor::IsComplete(v17);
  v6 = (a2 + 16);
  if ((*(a2 + 16) & 0x10) != 0)
  {
    v14 = (IsComplete - 1);
    v15 = v17;
    if (!v17)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (!IsComplete)
  {
LABEL_19:
    *(a2 + 40) = 0;
    if (*(a2 + 8))
    {
      HGNode::ClearNodeChain(a2);
      HGShaderBinding::reset((a2 + 260));
      *(a2 + 8) = 0;
    }

    v14 = 0xFFFFFFFFLL;
    *v6 |= 0x10u;
    v15 = v17;
    if (v17)
    {
      goto LABEL_32;
    }

    goto LABEL_33;
  }

  ConcatenationMask = HGGPURenderer::GetConcatenationMask(this, a2);
  if (!ConcatenationMask)
  {
    if (!*(a2 + 10))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  HGNode::InitNodeChain(a2, 8uLL);
  if (*(a2 + 10))
  {
    v8 = 0;
    v9 = ConcatenationMask;
    do
    {
      if (ConcatenationMask)
      {
        v11 = *(*(a2 + 10) + 8 * v8);
        if (!v11 || (v12 = *(v11 + 16)) == 0 || (v13 = *(v12 + 144), *(v13 + 192)) || *(v13 + 248) || HGRect::IsNull((v13 + 168)) || ((*(*this + 320))(this, v13, 0) & 0x80000000) != 0)
        {
          HGProgramDescriptor::SetInput(v17, v8, 1);
          v9 &= ~(1 << v8);
        }
      }

      ++v8;
      v10 = ConcatenationMask >= 2;
      ConcatenationMask >>= 1;
    }

    while (v10);
    if (!v9 || !HGGPURenderer::Concatenate(this, a2, v9))
    {
LABEL_30:
      HGShaderBinding::reset((a2 + 260));
      HGNode::ClearNodeChain(a2);
    }
  }

LABEL_31:
  v14 = 0;
  *v6 |= 0x10u;
  v15 = v17;
  if (v17)
  {
LABEL_32:
    (*(*v15 + 24))(v15);
  }

LABEL_33:
  HGTraceGuard::~HGTraceGuard(v18);
  return v14;
}

void sub_25FC6ADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    (*(*a4 + 24))(a4);
  }

  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPURenderer::CreateDepthBufferManagers(uint64_t this)
{
  if (*(this + 1281) == 1 && *(this + 224) == *(this + 232))
  {
    operator new();
  }

  return this;
}

void FBOStrategy::cleanupCache(FBOStrategy *this)
{
  HGTraceGuard::HGTraceGuard(v13, "framebuffer", 2, "cleanupCache()");
  if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
  {
    v3 = qword_280C5E3C0;
    if (qword_280C5E3C0 < 0x20)
    {
      goto LABEL_18;
    }
  }

  else
  {
    HGGPURenderer::UnBindCachedFramebuffer();
    v3 = qword_280C5E3C0;
    if (qword_280C5E3C0 < 0x20)
    {
      goto LABEL_18;
    }
  }

  if ((atomic_load_explicit(&qword_280C5E3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E3A0))
  {
    operator new();
  }

  std::mutex::lock(qword_280C5E398);
  if ((atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire) & 1) == 0)
  {
    HGGPURenderer::UnBindCachedFramebuffer();
  }

  v4 = &qword_280C5E3B0;
  v5 = v3;
  do
  {
    if (atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire))
    {
      if (v4 == qword_280C5E3B8)
      {
        break;
      }
    }

    else
    {
      HGGPURenderer::UnBindCachedFramebuffer();
      if (v4 == qword_280C5E3B8)
      {
        break;
      }
    }

    v9 = *v4;
    if ((*(*v4 + 32) & 1) == 0)
    {
      framebuffers = *(v9 + 7);
      glDeleteFramebuffers(1, &framebuffers);
      if ((atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire) & 1) == 0)
      {
        HGGPURenderer::UnBindCachedFramebuffer();
      }

      v6 = *v4;
      v7 = **v4;
      v8 = *(*v4 + 8);
      *(v7 + 8) = v8;
      *v8 = v7;
      --qword_280C5E3C0;
      operator delete(v6);
      --v5;
      v9 = *v8;
    }

    v4 = v9;
  }

  while (v5 > 0x1F);
  if ((atomic_load_explicit(&qword_280C5E3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C5E3A0))
  {
    operator new();
  }

  std::mutex::unlock(qword_280C5E398);
  v10 = atomic_load(HGLogger::_enabled);
  if (v10)
  {
    HGLogger::log("framebuffer", 1, "removed %lu entries from cache\n", v1, v2, v3 - v5);
  }

LABEL_18:
  v11 = atomic_load(HGLogger::_enabled);
  if (v11)
  {
    if ((atomic_load_explicit(&qword_280C5E3A8, memory_order_acquire) & 1) == 0)
    {
      HGGPURenderer::UnBindCachedFramebuffer();
    }

    HGLogger::log("framebuffer", 2, "current size of cache = %lu\n", v1, v2, qword_280C5E3C0);
  }

  HGTraceGuard::~HGTraceGuard(v13);
}

void sub_25FC6B1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  __cxa_guard_abort(&qword_280C5E3A0);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6B1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6B208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6B21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC6B230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **,false>(uint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 > 2)
    {
      break;
    }

    if (v11 < 2)
    {
      return result;
    }

    if (v11 == 2)
    {
      v74 = *(a2 - 1);
      v75 = *v10;
      if (v74 < *v10)
      {
        *v10 = v74;
        *(a2 - 1) = v75;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v86 = v10 + 1;
      v88 = v10 == a2 || v86 == a2;
      if (a5)
      {
        if (!v88)
        {
          v89 = 0;
          v90 = v10;
          do
          {
            v93 = *v90;
            v92 = v90[1];
            v90 = v86;
            if (v92 < v93)
            {
              v94 = v89;
              do
              {
                *(v10 + v94 + 8) = v93;
                if (!v94)
                {
                  v91 = v10;
                  goto LABEL_128;
                }

                v93 = *(v10 + v94 - 8);
                v94 -= 8;
              }

              while (v92 < v93);
              v91 = (v10 + v94 + 8);
LABEL_128:
              *v91 = v92;
            }

            v86 = v90 + 1;
            v89 += 8;
          }

          while (v90 + 1 != a2);
        }
      }

      else if (!v88)
      {
        do
        {
          v100 = *v9;
          v99 = v9[1];
          v9 = v86;
          if (v99 < v100)
          {
            do
            {
              *v86 = v100;
              v100 = *(v86 - 2);
              --v86;
            }

            while (v99 < v100);
            *v86 = v99;
          }

          v86 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **,HGBitmap **>(v10, a2, a2);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 < 0x81)
    {
      v17 = *v10;
      v18 = *v12;
      if (*v10 < *v13)
      {
        if (v14 < v17)
        {
          *v13 = v14;
          goto LABEL_37;
        }

        *v13 = v17;
        *v10 = v18;
        v28 = *(a2 - 1);
        if (v28 < v18)
        {
          *v10 = v28;
LABEL_37:
          *(a2 - 1) = v18;
        }

LABEL_38:
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v14 >= v17)
      {
        goto LABEL_38;
      }

      *v10 = v14;
      *(a2 - 1) = v17;
      v20 = *v13;
      if (*v10 >= *v13)
      {
        goto LABEL_38;
      }

      *v13 = *v10;
      *v10 = v20;
      --a4;
      v21 = v20;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v10 - 1) < v21)
      {
        goto LABEL_62;
      }

      if (v21 >= *(a2 - 1))
      {
        v57 = v10 + 1;
        do
        {
          v10 = v57;
          if (v57 >= a2)
          {
            break;
          }

          ++v57;
        }

        while (v21 >= *v10);
      }

      else
      {
        do
        {
          v56 = v10[1];
          ++v10;
        }

        while (v21 >= v56);
      }

      v58 = a2;
      if (v10 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *--v58;
        }

        while (v21 < v59);
      }

      if (v10 < v58)
      {
        v60 = *v10;
        v61 = *v58;
        do
        {
          *v10 = v61;
          *v58 = v60;
          do
          {
            v62 = v10[1];
            ++v10;
            v60 = v62;
          }

          while (v21 >= v62);
          do
          {
            v63 = *--v58;
            v61 = v63;
          }

          while (v21 < v63);
        }

        while (v10 < v58);
      }

      v64 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v64;
      }

      a5 = 0;
      *v64 = v21;
    }

    else
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 >= v15)
        {
          *v10 = v15;
          *v12 = v16;
          v22 = *(a2 - 1);
          if (v22 >= v16)
          {
            goto LABEL_29;
          }

          *v12 = v22;
        }

        else
        {
          *v10 = v14;
        }

        *(a2 - 1) = v16;
      }

LABEL_29:
      v23 = v12 - 1;
      v24 = *(v12 - 1);
      v25 = v10[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v10[1];
          if (*v23 < v27)
          {
            v10[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 >= v24)
        {
          v10[1] = v24;
          *v23 = v25;
          v29 = *(a2 - 2);
          if (v29 >= v25)
          {
            goto LABEL_43;
          }

          *v23 = v29;
        }

        else
        {
          v10[1] = v26;
        }

        *(a2 - 2) = v25;
      }

LABEL_43:
      v32 = v12[1];
      v30 = v12 + 1;
      v31 = v32;
      v33 = v10[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v10[2];
          if (*v30 < v35)
          {
            v10[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 >= v31)
        {
          v10[2] = v31;
          *v30 = v33;
          v36 = *(a2 - 3);
          if (v36 >= v33)
          {
            goto LABEL_52;
          }

          *v30 = v36;
        }

        else
        {
          v10[2] = v34;
        }

        *(a2 - 3) = v33;
      }

LABEL_52:
      v37 = *v13;
      v38 = *v23;
      v39 = *v30;
      if (*v13 >= *v23)
      {
        if (v39 >= v37)
        {
          goto LABEL_60;
        }

        *v13 = v39;
        *v30 = v37;
        v30 = v13;
        v37 = v38;
        if (v39 < v38)
        {
LABEL_59:
          *v23 = v39;
          *v30 = v38;
LABEL_60:
          v41 = *v10;
          *v10 = v37;
          *v13 = v41;
          --a4;
          v21 = *v10;
          if ((a5 & 1) == 0)
          {
            goto LABEL_61;
          }

          goto LABEL_62;
        }

        v55 = *v10;
        *v10 = v39;
        *v13 = v55;
        --a4;
        v21 = *v10;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v39 < v37)
      {
        goto LABEL_59;
      }

      *v23 = v37;
      *v13 = v38;
      v23 = v13;
      v37 = v39;
      if (v39 < v38)
      {
        goto LABEL_59;
      }

      v40 = *v10;
      *v10 = v38;
      *v13 = v40;
      --a4;
      v21 = *v10;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v42 = 0;
      do
      {
        v43 = v10[++v42];
      }

      while (v43 < v21);
      v44 = &v10[v42];
      v45 = a2;
      if (v42 == 1)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *--v45;
        }

        while (v47 >= v21);
      }

      else
      {
        do
        {
          v46 = *--v45;
        }

        while (v46 >= v21);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 1;
        if (v44 - 1 == v10)
        {
          goto LABEL_80;
        }

LABEL_79:
        *v10 = *v53;
        goto LABEL_80;
      }

      v48 = *v45;
      v49 = &v10[v42];
      v50 = v45;
      do
      {
        *v49 = v48;
        *v50 = v43;
        do
        {
          v51 = v49[1];
          ++v49;
          v43 = v51;
        }

        while (v51 < v21);
        do
        {
          v52 = *--v50;
          v48 = v52;
        }

        while (v52 >= v21);
      }

      while (v49 < v50);
      v53 = v49 - 1;
      if (v49 - 1 != v10)
      {
        goto LABEL_79;
      }

LABEL_80:
      *v53 = v21;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **>(v10, v53);
      v10 = v53 + 1;
      result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **>(v53 + 1, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **,false>(v9, v53, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v53 + 1;
      }
    }
  }

  if (v11 != 3)
  {
    if (v11 == 4)
    {
      v79 = v10 + 1;
      v80 = v10[1];
      v81 = v10 + 2;
      v82 = v10[2];
      v83 = *v10;
      if (v80 >= *v10)
      {
        if (v82 < v80)
        {
          *v79 = v82;
          *v81 = v80;
          v84 = v10;
          v85 = v10 + 1;
          result = v80;
          if (v82 < v83)
          {
            goto LABEL_148;
          }

          goto LABEL_149;
        }

LABEL_157:
        v80 = v82;
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      else
      {
        v84 = v10;
        v85 = v10 + 2;
        result = *v10;
        if (v82 >= v80)
        {
          *v10 = v80;
          v10[1] = v83;
          v84 = v10 + 1;
          v85 = v10 + 2;
          result = v83;
          if (v82 >= v83)
          {
            goto LABEL_157;
          }
        }

LABEL_148:
        *v84 = v82;
        *v85 = v83;
        v80 = result;
LABEL_149:
        v98 = *(a2 - 1);
        if (v98 >= v80)
        {
          return result;
        }
      }

      *v81 = v98;
      *(a2 - 1) = v80;
      v101 = *v81;
      v102 = *v79;
      if (v101 < v102)
      {
        v10[1] = v101;
        v10[2] = v102;
        v103 = *v10;
        if (v101 < *v10)
        {
          *v10 = v101;
          v10[1] = v103;
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v65 = v10 + 1;
      v66 = v10[1];
      v68 = v10 + 2;
      v67 = v10[2];
      v69 = *v10;
      if (v66 >= *v10)
      {
        if (v67 >= v66)
        {
          v72 = *v10;
          v69 = v10[1];
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }

        else
        {
          v70 = v10;
          v71 = v10 + 1;
          *v65 = v67;
          *v68 = v66;
          v72 = v67;
          result = v69;
          v73 = v66;
          if (v67 < v69)
          {
            goto LABEL_162;
          }

          v72 = v69;
          v69 = v67;
          v67 = v66;
          v95 = v10[3];
          if (v95 >= v67)
          {
            goto LABEL_167;
          }
        }
      }

      else
      {
        if (v67 < v66)
        {
          v70 = v10;
          v71 = v10 + 2;
          v72 = v10[2];
          result = v10[1];
          v73 = *v10;
          goto LABEL_162;
        }

        v70 = v10 + 1;
        v71 = v10 + 2;
        *v10 = v66;
        v10[1] = v69;
        v72 = v66;
        result = v67;
        v73 = v69;
        if (v67 < v69)
        {
LABEL_162:
          *v70 = v67;
          *v71 = v69;
          v69 = result;
          v67 = v73;
          v95 = v10[3];
          if (v95 < v73)
          {
            goto LABEL_163;
          }

LABEL_167:
          v67 = v95;
LABEL_168:
          v104 = *(a2 - 1);
          if (v104 >= v67)
          {
            return result;
          }

          v10[3] = v104;
          *(a2 - 1) = v67;
          v105 = v10[2];
          v96 = v10[3];
          if (v96 >= v105)
          {
            return result;
          }

          v10[2] = v96;
          v10[3] = v105;
          v106 = v10[1];
          if (v96 >= v106)
          {
            return result;
          }

          v10[1] = v96;
          v10[2] = v106;
          v97 = *v10;
          if (v96 >= *v10)
          {
            return result;
          }

LABEL_172:
          *v10 = v96;
          v10[1] = v97;
          return result;
        }

        v72 = v66;
        v95 = v10[3];
        if (v95 >= v67)
        {
          goto LABEL_167;
        }
      }

LABEL_163:
      v10[2] = v95;
      v10[3] = v67;
      if (v95 < v69)
      {
        *v65 = v95;
        *v68 = v69;
        if (v95 < v72)
        {
          *v10 = v95;
          v10[1] = v72;
        }
      }

      goto LABEL_168;
    }

    goto LABEL_10;
  }

  v76 = *v10;
  v77 = v10[1];
  v78 = *(a2 - 1);
  if (v77 < *v10)
  {
    if (v78 >= v77)
    {
      *v10 = v77;
      v10[1] = v76;
      v107 = *(a2 - 1);
      if (v107 >= v76)
      {
        return result;
      }

      v10[1] = v107;
    }

    else
    {
      *v10 = v78;
    }

    *(a2 - 1) = v76;
    return result;
  }

  if (v78 < v77)
  {
    v10[1] = v78;
    *(a2 - 1) = v77;
    v97 = *v10;
    v96 = v10[1];
    if (v96 < *v10)
    {
      goto LABEL_172;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v47 = *(a2 - 1);
          if (v47 >= v16)
          {
            return 1;
          }

          a1[1] = v47;
          *(a2 - 1) = v16;
          return 1;
        }

        else
        {
          *a1 = v18;
          *(a2 - 1) = v16;
          return 1;
        }
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v34 = *a1;
      v33 = a1[1];
      if (v33 >= *a1)
      {
        return 1;
      }

LABEL_66:
      *a1 = v33;
      a1[1] = v34;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
LABEL_57:
            a1[2] = v42;
            a1[3] = v6;
            if (v42 < v8)
            {
              *v4 = v42;
              *v7 = v8;
              if (v42 < v11)
              {
                *a1 = v42;
                a1[1] = v11;
              }
            }

LABEL_62:
            v48 = *(a2 - 1);
            if (v48 >= v6)
            {
              return 1;
            }

            a1[3] = v48;
            *(a2 - 1) = v6;
            v49 = a1[2];
            v33 = a1[3];
            if (v33 >= v49)
            {
              return 1;
            }

            a1[2] = v33;
            a1[3] = v49;
            v50 = a1[1];
            if (v33 >= v50)
            {
              return 1;
            }

            a1[1] = v33;
            a1[2] = v50;
            v34 = *a1;
            if (v33 >= *a1)
            {
              return 1;
            }

            goto LABEL_66;
          }

LABEL_61:
          v6 = v42;
          goto LABEL_62;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          v42 = a1[3];
          if (v42 < v6)
          {
            goto LABEL_57;
          }

          goto LABEL_61;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      v42 = a1[3];
      if (v42 < v13)
      {
        goto LABEL_57;
      }

      goto LABEL_61;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
        goto LABEL_49;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v43 = *(a2 - 1);
        if (v43 >= v26)
        {
          return 1;
        }

        goto LABEL_50;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
LABEL_49:
          v26 = v28;
          v43 = *(a2 - 1);
          if (v43 >= v26)
          {
            return 1;
          }

LABEL_50:
          *v27 = v43;
          *(a2 - 1) = v26;
          v44 = *v27;
          v45 = *v25;
          if (v44 >= v45)
          {
            return 1;
          }

          a1[1] = v44;
          a1[2] = v45;
          v46 = *a1;
          if (v44 >= *a1)
          {
            return 1;
          }

          *a1 = v44;
          a1[1] = v46;
          return 1;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 != 2)
  {
LABEL_16:
    v20 = a1 + 2;
    v19 = a1[2];
    v21 = a1[1];
    v22 = *a1;
    if (v21 >= *a1)
    {
      if (v19 >= v21)
      {
        goto LABEL_30;
      }

      a1[1] = v19;
      *v20 = v21;
      v23 = a1;
      v24 = a1 + 1;
    }

    else
    {
      v23 = a1;
      v24 = a1 + 2;
      if (v19 < v21)
      {
LABEL_29:
        *v23 = v19;
        *v24 = v22;
        goto LABEL_30;
      }

      *a1 = v21;
      a1[1] = v22;
      v23 = a1 + 1;
      v24 = a1 + 2;
    }

    if (v19 < v22)
    {
      goto LABEL_29;
    }

LABEL_30:
    v35 = a1 + 3;
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v36 = 0;
    for (i = 24; ; i += 8)
    {
      v38 = *v35;
      v39 = *v20;
      if (*v35 < v39)
      {
        break;
      }

LABEL_33:
      v20 = v35++;
      if (v35 == a2)
      {
        return 1;
      }
    }

    v40 = i;
    do
    {
      *(a1 + v40) = v39;
      v41 = v40 - 8;
      if (v40 == 8)
      {
        *a1 = v38;
        if (++v36 != 8)
        {
          goto LABEL_33;
        }

        return v35 + 1 == a2;
      }

      v39 = *(a1 + v40 - 16);
      v40 -= 8;
    }

    while (v38 < v39);
    *(a1 + v41) = v38;
    if (++v36 != 8)
    {
      goto LABEL_33;
    }

    return v35 + 1 == a2;
  }

  v14 = *(a2 - 1);
  v15 = *a1;
  if (v14 >= *a1)
  {
    return 1;
  }

  *a1 = v14;
  *(a2 - 1) = v15;
  return 1;
}

unint64_t *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,HGBitmap **,HGBitmap **>(unint64_t *a1, unint64_t *a2, unint64_t *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      if (v4 >= v5)
      {
        v7 = (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL)) | 1;
        v8 = &a1[v7];
        if (2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2 >= v3)
        {
          v9 = *v8;
          v11 = &a1[v5];
          v12 = *v11;
          if (*v8 >= *v11)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v9 = v8[1];
          v10 = *v8 >= v9;
          if (*v8 < v9)
          {
            ++v8;
          }

          else
          {
            v9 = *v8;
          }

          if (!v10)
          {
            v7 = 2 * (v5 & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }

          v11 = &a1[v5];
          v12 = *v11;
          if (v9 >= *v11)
          {
LABEL_21:
            while (1)
            {
              *v11 = v9;
              v11 = v8;
              if (v4 < v7)
              {
                break;
              }

              v13 = (2 * v7) | 1;
              v8 = &a1[v13];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v9 = *v8;
                if (*v8 >= v8[1])
                {
                  v7 = v13;
                }

                else
                {
                  v9 = v8[1];
                  ++v8;
                }

                if (v9 < v12)
                {
                  break;
                }
              }

              else
              {
                v9 = *v8;
                v7 = v13;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
          }
        }
      }

      v6 = v5-- <= 0;
    }

    while (!v6);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      v15 = *a1;
      i = a2;
      do
      {
        v16 = *i;
        if (*i < v15)
        {
          *i = v15;
          *a1 = v16;
          v15 = v16;
        }

        ++i;
      }

      while (i != a3);
      goto LABEL_54;
    }

    v17 = a1 + 2;
    for (i = a2; i != a3; ++i)
    {
      v18 = *i;
      if (*i < *a1)
      {
        *i = *a1;
        *a1 = v18;
        v19 = a1[1];
        if (a2 - a1 == 16)
        {
          v20 = a1 + 1;
          v21 = 1;
          if (v19 >= v18)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v22 = v19 >= *v17;
          if (v19 >= *v17)
          {
            v20 = a1 + 1;
          }

          else
          {
            v19 = *v17;
            v20 = a1 + 2;
          }

          if (v22)
          {
            v21 = 1;
          }

          else
          {
            v21 = 2;
          }

          if (v19 >= v18)
          {
LABEL_45:
            v23 = a1;
            while (1)
            {
              *v23 = v19;
              v23 = v20;
              if (((v3 - 2) >> 1) < v21)
              {
                break;
              }

              v24 = (2 * v21) | 1;
              v20 = &a1[v24];
              v21 = 2 * v21 + 2;
              if (v21 < v3)
              {
                v19 = *v20;
                if (*v20 >= v20[1])
                {
                  v21 = v24;
                }

                else
                {
                  v19 = v20[1];
                  ++v20;
                }

                if (v19 < v18)
                {
                  break;
                }
              }

              else
              {
                v19 = *v20;
                v21 = v24;
                if (*v20 < v18)
                {
                  break;
                }
              }
            }

            *v23 = v18;
          }
        }
      }
    }
  }

LABEL_54:
  if (v3 >= 2)
  {
    do
    {
      v26 = 0;
      v27 = *a1;
      v28 = (v3 - 2) >> 1;
      v29 = a1;
      do
      {
        while (1)
        {
          v36 = &v29[v26];
          v35 = v36 + 1;
          v37 = (2 * v26) | 1;
          v26 = 2 * v26 + 2;
          if (v26 < v3)
          {
            break;
          }

          v26 = v37;
          *v29 = *v35;
          v29 = v36 + 1;
          if (v37 > v28)
          {
            goto LABEL_69;
          }
        }

        v32 = v36[2];
        v31 = v36 + 2;
        v30 = v32;
        v33 = *(v31 - 1);
        v34 = v33 >= v32;
        if (v33 < v32)
        {
          v35 = v31;
        }

        else
        {
          v30 = *(v31 - 1);
        }

        if (v34)
        {
          v26 = v37;
        }

        *v29 = v30;
        v29 = v35;
      }

      while (v26 <= v28);
LABEL_69:
      if (v35 == --a2)
      {
        *v35 = v27;
      }

      else
      {
        *v35 = *a2;
        *a2 = v27;
        v38 = (v35 - a1 + 8) >> 3;
        v6 = v38 < 2;
        v39 = v38 - 2;
        if (!v6)
        {
          v40 = v39 >> 1;
          v41 = &a1[v40];
          v42 = *v41;
          v43 = *v35;
          if (*v41 < *v35)
          {
            do
            {
              *v35 = v42;
              v35 = v41;
              if (!v40)
              {
                break;
              }

              v40 = (v40 - 1) >> 1;
              v41 = &a1[v40];
              v42 = *v41;
            }

            while (*v41 < v43);
            *v35 = v43;
          }
        }
      }

      v6 = v3-- <= 2;
    }

    while (!v6);
  }

  return i;
}

void HGGPURenderer::ProcessOnePageBegin(HGNode *)::RenderBufferedTilesVisitor::visitNodePost(uint64_t a1, HGRenderer *a2, uint64_t *a3)
{
  if (a3[24])
  {
    return;
  }

  v30[7] = v3;
  v30[8] = v4;
  (*(*a2 + 320))(a2, a3, 1);
  if (!HGRectIsNull(*(a3 + 220), *(a3 + 228)))
  {
    v7 = *(a2 + 154);
    if (v7 == 1 || v7 != 2 && *(a3 + 59) > 1)
    {
      v8 = atomic_load(HGLogger::_enabled);
      if (v8)
      {
        v9 = (*(*a3 + 48))(a3);
        HGLogger::log("nbfo", 1, "will buffer sub-tile of node %s (%p)\n", v10, v11, v9, a3);
      }

      (*(*a3 + 432))(a3, a2);
      v12 = *(a3 + 220);
      v13 = *(a3 + 228);
      v14 = a3[24];
      if (v14 || (v14 = a3[31]) != 0)
      {
        (*(*v14 + 16))(v14);
      }

      else
      {
        v24 = HGRectIntersection(*(a3 + 220), *(a3 + 228), a3[19], a3[20]);
        v26 = v25;
        OutputFormat = HGRenderer::GetOutputFormat(a2, a3);
        v28 = HGGPURenderer::ProcessNodeInternal(a2, a3, v24, v26, OutputFormat, 0, 0, 0, 1u);
        if (!v28)
        {
          NullGLTexture = HGGPURenderer::LoadNullGLTexture(a2);
          goto LABEL_12;
        }

        v14 = v28;
      }

      v15 = HGRectIntersection(v12, v13, a3[19], a3[20]);
      v17 = v16;
      *&v31.var0 = v15;
      *&v31.var2 = v17;
      NullGLTexture = HGGPURenderer::ConvertToGLTexture(a2, v31, v14);
      (*(*v14 + 24))(v14);
LABEL_12:
      a3[31] = NullGLTexture;
      (*(*a2 + 144))(a2, 0);
    }
  }

  v19 = *(a3 + 22);
  if (v19 >= 1)
  {
    for (i = 0; i < v19; ++i)
    {
      v21 = *(a3[10] + 8 * i);
      if (v21)
      {
        v22 = *(v21 + 16);
        if (v22)
        {
          if (a3[31])
          {
            v23 = *(v22 + 144);
            v30[0] = &unk_287219768;
            HGTraversal::RecursiveTraversal<(HGTraversal::NodeInput)1,(HGTraversal::InputOrder)0>::operator()(&v29, a2, v23, v30);
            v19 = *(a3 + 22);
          }
        }
      }
    }
  }
}

uint64_t HGGPURenderer::ProcessOnePageEnd(HGNode *)::ReleaseBufferedTilesVisitor::visitNodePost(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a3 + 248);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(a3 + 248) = 0;
  }

  return result;
}

uint64_t *std::list<FBOStrategy::FBOCacheEntry>::~list(uint64_t *a1)
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
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void *std::__call_once_proxy[abi:ne200100]<std::tuple<HGFormatUtils::adjustPrecision(unsigned int,unsigned int)::$_0 &&>>()
{
  v58 = *MEMORY[0x277D85DE8];
  v0 = _MergedGlobals_19;
  v1 = *(_MergedGlobals_19 + 8);
  if (!v1)
  {
LABEL_7:
    operator new();
  }

  v2 = *(_MergedGlobals_19 + 8);
  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 7);
      if (v4 < 2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4)
    {
      break;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  *(v3 + 8) = 0;
  while (1)
  {
    while (1)
    {
      v5 = v1;
      v6 = *(v1 + 7);
      if (v6 < 3)
      {
        break;
      }

      v1 = *v5;
      if (!*v5)
      {
        goto LABEL_13;
      }
    }

    if (v6 == 2)
    {
      break;
    }

    v1 = v5[1];
    if (!v1)
    {
LABEL_13:
      operator new();
    }
  }

  *(v5 + 8) = 1;
  v7 = *(v0 + 8);
  if (!v7)
  {
LABEL_20:
    operator new();
  }

  v8 = *(v0 + 8);
  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = *(v8 + 7);
      if (v10 < 5)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_20;
      }
    }

    if (v10 == 4)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_20;
    }
  }

  *(v9 + 8) = 2;
  while (1)
  {
    while (1)
    {
      v11 = v7;
      v12 = *(v7 + 7);
      if (v12 < 9)
      {
        break;
      }

      v7 = *v11;
      if (!*v11)
      {
        goto LABEL_26;
      }
    }

    if (v12 == 8)
    {
      break;
    }

    v7 = v11[1];
    if (!v7)
    {
LABEL_26:
      operator new();
    }
  }

  *(v11 + 8) = 3;
  v56 = xmmword_260812B20;
  v13 = *(qword_280C5E380 + 8);
  if (!v13)
  {
LABEL_33:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v14 = v13;
      v15 = *(v13 + 32);
      if (v15 < 8)
      {
        break;
      }

      v13 = *v14;
      if (!*v14)
      {
        goto LABEL_33;
      }
    }

    if (v15 == 7)
    {
      break;
    }

    v13 = v14[1];
    if (!v13)
    {
      goto LABEL_33;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v14 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812B30;
  v16 = *(qword_280C5E380 + 8);
  if (!v16)
  {
LABEL_40:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v17 = v16;
      v18 = *(v16 + 32);
      if (v18 < 0xC)
      {
        break;
      }

      v16 = *v17;
      if (!*v17)
      {
        goto LABEL_40;
      }
    }

    if (v18 == 11)
    {
      break;
    }

    v16 = v17[1];
    if (!v16)
    {
      goto LABEL_40;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v17 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812B40;
  v19 = *(qword_280C5E380 + 8);
  if (!v19)
  {
LABEL_47:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v20 = v19;
      v21 = *(v19 + 32);
      if (v21 < 4)
      {
        break;
      }

      v19 = *v20;
      if (!*v20)
      {
        goto LABEL_47;
      }
    }

    if (v21 == 3)
    {
      break;
    }

    v19 = v20[1];
    if (!v19)
    {
      goto LABEL_47;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v20 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812B50;
  v22 = *(qword_280C5E380 + 8);
  if (!v22)
  {
LABEL_54:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v23 = v22;
      v24 = *(v22 + 32);
      if (v24 < 0xE)
      {
        break;
      }

      v22 = *v23;
      if (!*v23)
      {
        goto LABEL_54;
      }
    }

    if (v24 == 13)
    {
      break;
    }

    v22 = v23[1];
    if (!v22)
    {
      goto LABEL_54;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v23 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812B60;
  v25 = *(qword_280C5E380 + 8);
  if (!v25)
  {
LABEL_61:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v26 = v25;
      v27 = *(v25 + 32);
      if (v27 < 6)
      {
        break;
      }

      v25 = *v26;
      if (!*v26)
      {
        goto LABEL_61;
      }
    }

    if (v27 == 5)
    {
      break;
    }

    v25 = v26[1];
    if (!v25)
    {
      goto LABEL_61;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v26 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812B70;
  v28 = *(qword_280C5E380 + 8);
  if (!v28)
  {
LABEL_68:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v29 = v28;
      v30 = *(v28 + 32);
      if (v30 < 0xA)
      {
        break;
      }

      v28 = *v29;
      if (!*v29)
      {
        goto LABEL_68;
      }
    }

    if (v30 == 9)
    {
      break;
    }

    v28 = v29[1];
    if (!v28)
    {
      goto LABEL_68;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v29 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812B80;
  v31 = *(qword_280C5E380 + 8);
  if (!v31)
  {
LABEL_75:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v32 = v31;
      v33 = *(v31 + 32);
      if (v33 < 2)
      {
        break;
      }

      v31 = *v32;
      if (!*v32)
      {
        goto LABEL_75;
      }
    }

    if (v33)
    {
      break;
    }

    v31 = v32[1];
    if (!v31)
    {
      goto LABEL_75;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v32 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812B90;
  v34 = *(qword_280C5E380 + 8);
  if (!v34)
  {
LABEL_82:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v35 = v34;
      v36 = *(v34 + 32);
      if (v36 < 0xF)
      {
        break;
      }

      v34 = *v35;
      if (!*v35)
      {
        goto LABEL_82;
      }
    }

    if (v36 == 14)
    {
      break;
    }

    v34 = v35[1];
    if (!v34)
    {
      goto LABEL_82;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v35 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812BA0;
  v37 = *(qword_280C5E380 + 8);
  if (!v37)
  {
LABEL_89:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v38 = v37;
      v39 = *(v37 + 32);
      if (v39 < 7)
      {
        break;
      }

      v37 = *v38;
      if (!*v38)
      {
        goto LABEL_89;
      }
    }

    if (v39 == 6)
    {
      break;
    }

    v37 = v38[1];
    if (!v37)
    {
      goto LABEL_89;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v38 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812BB0;
  v40 = *(qword_280C5E380 + 8);
  if (!v40)
  {
LABEL_96:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v41 = v40;
      v42 = *(v40 + 32);
      if (v42 < 0xB)
      {
        break;
      }

      v40 = *v41;
      if (!*v41)
      {
        goto LABEL_96;
      }
    }

    if (v42 == 10)
    {
      break;
    }

    v40 = v41[1];
    if (!v40)
    {
      goto LABEL_96;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v41 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812BC0;
  v43 = *(qword_280C5E380 + 8);
  if (!v43)
  {
LABEL_103:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v44 = v43;
      v45 = *(v43 + 32);
      if (v45 < 3)
      {
        break;
      }

      v43 = *v44;
      if (!*v44)
      {
        goto LABEL_103;
      }
    }

    if (v45 == 2)
    {
      break;
    }

    v43 = v44[1];
    if (!v43)
    {
      goto LABEL_103;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v44 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812BD0;
  v46 = *(qword_280C5E380 + 8);
  if (!v46)
  {
LABEL_110:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v47 = v46;
      v48 = *(v46 + 32);
      if (v48 < 0xD)
      {
        break;
      }

      v46 = *v47;
      if (!*v47)
      {
        goto LABEL_110;
      }
    }

    if (v48 == 12)
    {
      break;
    }

    v46 = v47[1];
    if (!v46)
    {
      goto LABEL_110;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v47 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812BE0;
  v49 = *(qword_280C5E380 + 8);
  if (!v49)
  {
LABEL_117:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v50 = v49;
      v51 = *(v49 + 32);
      if (v51 < 5)
      {
        break;
      }

      v49 = *v50;
      if (!*v50)
      {
        goto LABEL_117;
      }
    }

    if (v51 == 4)
    {
      break;
    }

    v49 = v50[1];
    if (!v49)
    {
      goto LABEL_117;
    }
  }

  std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v50 + 5, &v56, v57, 4uLL);
  v56 = xmmword_260812BF0;
  v52 = *(qword_280C5E380 + 8);
  if (!v52)
  {
LABEL_124:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v53 = v52;
      v54 = *(v52 + 32);
      if (v54 < 9)
      {
        break;
      }

      v52 = *v53;
      if (!*v53)
      {
        goto LABEL_124;
      }
    }

    if (v54 == 8)
    {
      return std::vector<unsigned int>::__assign_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(v53 + 5, &v56, v57, 4uLL);
    }

    v52 = v53[1];
    if (!v52)
    {
      goto LABEL_124;
    }
  }
}