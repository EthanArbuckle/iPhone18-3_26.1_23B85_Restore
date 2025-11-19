BOOL pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram::IsValid(pxrInternal__aapl__pxrReserved__::HgiGLShaderProgram *this)
{
  if (!*(this + 20))
  {
    return 0;
  }

  v1 = *(this + 79);
  if (v1 < 0)
  {
    v1 = *(this + 8);
  }

  return v1 == 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLTexture::HgiGLTexture(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x29EDCA608];
  v4 = pxrInternal__aapl__pxrReserved__::HgiTexture::HgiTexture(a1, a2);
  *(v4 + 96) = 0;
  *v4 = &unk_2A2074980;
  *(v4 + 104) = 0;
  v5 = (v4 + 104);
  *(v4 + 112) = 0;
  v32 = 0;
  v31 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(*(a2 + 28), *(a2 + 24), &v32, &v31, &v32 + 1);
  IsCompressed = pxrInternal__aapl__pxrReserved__::HgiIsCompressed(*(a2 + 28));
  if (IsCompressed)
  {
    v7 = *(a2 + 48);
    if (v7 == 2)
    {
      if ((*(a2 + 52) & 3) != 0 || (*(a2 + 56) & 3) != 0 || (*(a2 + 60) & 3) != 0)
      {
        v33 = "hgiGL/texture.cpp";
        v34 = "_IsValidCompression";
        v35 = 186;
        v36 = "BOOL pxrInternal__aapl__pxrReserved__::_IsValidCompression(const HgiTextureDesc &)";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Compressed texture with width, height or depthnot a multiple of 4");
        return a1;
      }
    }

    else
    {
      if (v7 != 1)
      {
        v33 = "hgiGL/texture.cpp";
        v34 = "_IsValidCompression";
        v35 = 192;
        v36 = "BOOL pxrInternal__aapl__pxrReserved__::_IsValidCompression(const HgiTextureDesc &)";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Compression not supported for given texture type");
        return a1;
      }

      if ((*(a2 + 52) & 3) != 0 || (*(a2 + 56) & 3) != 0)
      {
        v33 = "hgiGL/texture.cpp";
        v34 = "_IsValidCompression";
        v35 = 177;
        v36 = "BOOL pxrInternal__aapl__pxrReserved__::_IsValidCompression(const HgiTextureDesc &)";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Compressed texture with width or height not a multiple of 4");
        return a1;
      }
    }
  }

  if (*(a2 + 68) == 1)
  {
    v8 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateTextures;
    TextureType = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetTextureType(*(a2 + 48));
  }

  else
  {
    if (*(a2 + 48) != 1)
    {
      v33 = "hgiGL/texture.cpp";
      v34 = "HgiGLTexture";
      v35 = 224;
      v36 = "pxrInternal__aapl__pxrReserved__::HgiGLTexture::HgiGLTexture(const HgiTextureDesc &)";
      v37 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Only 2d multisample textures are supported");
    }

    v8 = pxrInternal__aapl__pxrReserved__::internal::GLApi::glCreateTextures;
    TextureType = 37120;
  }

  v8(TextureType, 1, v5);
  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (*(a1 + 31))
  {
LABEL_20:
    pxrInternal__aapl__pxrReserved__::HgiGLObjectLabel(5890, *v5, (a1 + 8));
  }

LABEL_21:
  v10 = *(a2 + 68);
  v11 = *v5;
  if (v10 != 1)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage2DMultisample(v11, v10, HIDWORD(v32), *(a2 + 52), *(a2 + 56), 1);
    goto LABEL_73;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(v11, 10242, 33071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 10243, 33071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 32882, 33071);
  v12 = *v5;
  if ((*(a2 + 24) & 6) != 0)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(v12, 10241, 9728);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 10240, 9728);
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(v12, 10241, 9987);
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 10240, 9729);
    LODWORD(v33) = 0x40000000;
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(34047, &v33);
    v14 = atomic_load(pxrInternal__aapl__pxrReserved__::HGI_MAX_ANISOTROPY);
    if (!v14)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    v13.n128_f32[0] = *v14;
    if (*&v33 <= v13.n128_f32[0])
    {
      v13.n128_f32[0] = *&v33;
    }

    (pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterf)(*v5, 34046, v13);
  }

  v15 = *(a2 + 66);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 33084, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 33085, (v15 - 1));
  v16 = *(a2 + 48);
  v17 = *v5;
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v18 = *(a2 + 60);
      goto LABEL_40;
    }

    v18 = *(a2 + 64);
    if (v16 != 3)
    {
      if (v16 != 4)
      {
        goto LABEL_42;
      }

LABEL_40:
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage3D(v17, v15, HIDWORD(v32), *(a2 + 52), *(a2 + 56), v18);
      goto LABEL_43;
    }

LABEL_38:
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage2D(v17, v15, HIDWORD(v32), *(a2 + 52), v18);
    goto LABEL_43;
  }

  if (!v16)
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureStorage1D(v17, v15, HIDWORD(v32), *(a2 + 52));
    goto LABEL_43;
  }

  if (v16 == 1)
  {
    v18 = *(a2 + 56);
    goto LABEL_38;
  }

LABEL_42:
  v33 = "hgiGL/texture.cpp";
  v34 = "_GlTextureStorageND";
  v35 = 60;
  v36 = "void pxrInternal__aapl__pxrReserved__::_GlTextureStorageND(const HgiTextureType, const GLuint, const GLsizei, const GLenum, const GfVec3i &, const GLsizei)";
  v37 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Unsupported HgiTextureType enum value");
LABEL_43:
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glPixelStorei(3317, 1);
  if (!*(a2 + 80))
  {
    goto LABEL_73;
  }

  v19 = *(a2 + 72);
  if (!v19)
  {
    goto LABEL_73;
  }

  pxrInternal__aapl__pxrReserved__::HgiGetMipInfos(*(a2 + 28), (a2 + 52), *(a2 + 64), v19, &__p);
  v20 = __p;
  if ((v39 - __p) >> 5 >= *(a2 + 66))
  {
    v21 = *(a2 + 66);
  }

  else
  {
    v21 = (v39 - __p) >> 5;
  }

  if (!v21)
  {
    goto LABEL_71;
  }

  v22 = 0;
  v23 = 0;
  v24 = *(a2 + 80);
  do
  {
    v25 = __p + v22;
    v26 = *(a2 + 48);
    v27 = *v5;
    if (IsCompressed)
    {
      v28 = *(v25 + 6) * *(a2 + 64);
      if (v26 == 2)
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage3D(v27, v23, 0, 0, 0, *(v25 + 2), *(__p + v22 + 12), *(__p + v22 + 16), __PAIR64__(v28, HIDWORD(v32)), v24 + *v25);
      }

      else if (v26 == 1)
      {
        pxrInternal__aapl__pxrReserved__::internal::GLApi::glCompressedTextureSubImage2D(v27, v23, 0, 0, *(v25 + 2), *(__p + v22 + 12), HIDWORD(v32), v28, v24 + *v25);
      }

      else
      {
        v33 = "hgiGL/texture.cpp";
        v34 = "_GlCompressedTextureSubImageND";
        v35 = 164;
        v36 = "void pxrInternal__aapl__pxrReserved__::_GlCompressedTextureSubImageND(const HgiTextureType, const GLuint, const GLint, const GfVec3i &, const GfVec3i &, const GLenum, const GLsizei, const void *)";
        v37 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Unsupported HgiTextureType enum value");
      }
    }

    else
    {
      if (v26 <= 1)
      {
        if (!v26)
        {
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage1D(v27, v23, 0, *(v25 + 2), v32, v31, v24 + *v25);
          goto LABEL_69;
        }

        if (v26 == 1)
        {
          v29 = *(__p + v22 + 12);
LABEL_62:
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage2D(v27, v23, 0, 0, *(v25 + 2), v29, v32, v31, v24 + *v25);
          goto LABEL_69;
        }
      }

      else
      {
        if (v26 == 2)
        {
          v29 = *(__p + v22 + 16);
LABEL_66:
          pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureSubImage3D(v27, v23, 0, 0, 0, *(v25 + 2), *(__p + v22 + 12), v29, __PAIR64__(v31, v32), v24 + *v25);
          goto LABEL_69;
        }

        v29 = *(a2 + 64);
        if (v26 == 3)
        {
          goto LABEL_62;
        }

        if (v26 == 4)
        {
          goto LABEL_66;
        }
      }

      v33 = "hgiGL/texture.cpp";
      v34 = "_GlTextureSubImageND";
      v35 = 125;
      v36 = "void pxrInternal__aapl__pxrReserved__::_GlTextureSubImageND(const HgiTextureType, const GLuint, const GLint, const GfVec3i &, const GfVec3i &, const uint32_t, const GLenum, const GLenum, const void *)";
      v37 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v33, 1, "Unsupported HgiTextureType enum value");
    }

LABEL_69:
    ++v23;
    v22 += 32;
  }

  while (v21 != v23);
  v20 = __p;
LABEL_71:
  if (v20)
  {
    v39 = v20;
    operator delete(v20);
  }

LABEL_73:
  LODWORD(__p) = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetComponentSwizzle(*(a2 + 32));
  HIDWORD(__p) = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetComponentSwizzle(*(a2 + 36));
  LODWORD(v39) = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetComponentSwizzle(*(a2 + 40));
  HIDWORD(v39) = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetComponentSwizzle(*(a2 + 44));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteriv(*v5, 36422, &__p);
  sub_29A008E78(&v33, "pxrInternal__aapl__pxrReserved__::HgiGLTexture::HgiGLTexture(const HgiTextureDesc &)");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(&v33);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  return a1;
}

{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*(a2 + 32));
  pxrInternal__aapl__pxrReserved__::HgiTexture::HgiTexture(a1, Descriptor);
  *(a1 + 96) = 0;
  *a1 = &unk_2A2074980;
  *(a1 + 104) = 0;
  v5 = (a1 + 104);
  *(a1 + 112) = 0;
  std::string::operator=((a1 + 8), a2);
  v6 = *(a2 + 24);
  *(a1 + 36) = v6;
  *(a1 + 72) = *(a2 + 28);
  v7 = *(a2 + 32);
  v18 = 0;
  pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetFormat(v6, *(a1 + 32), 0, 0, &v18);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGenTextures(1, a1 + 104);
  v8 = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v7);
  TextureType = pxrInternal__aapl__pxrReserved__::HgiGLConversions::GetTextureType(*(v8 + 48));
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureView(*(a1 + 104), TextureType, v7[26], v18, *(a2 + 50), *(a2 + 30), *(a2 + 48), *(a2 + 28));
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) != 0)
  {
    v10 = *(a2 + 8);
  }

  if (v10)
  {
    pxrInternal__aapl__pxrReserved__::HgiGLObjectLabel(5890, *v5, a2);
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 10242, 33071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 10243, 33071);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 32882, 33071);
  v11 = *(a2 + 30);
  v12 = v11 - 1;
  if (v11 <= 1)
  {
    v13 = 9729;
  }

  else
  {
    v13 = 9987;
  }

  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 10241, v13);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 10240, 9729);
  v17 = 2.0;
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetFloatv(34047, &v17);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameterf(*v5, 34046, v17);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 33084, 0);
  pxrInternal__aapl__pxrReserved__::internal::GLApi::glTextureParameteri(*v5, 33085, v12);
  sub_29A008E78(__p, "pxrInternal__aapl__pxrReserved__::HgiGLTexture::HgiGLTexture(const HgiTextureViewDesc &)");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_29ABA70AC(_Unwind_Exception *a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_29A0F6078(v24, a2);
  pxrInternal__aapl__pxrReserved__::HgiTexture::~HgiTexture(v23);
  _Unwind_Resume(a1);
}

void sub_29ABA7360(_Unwind_Exception *a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_29A0F6078(v15, a2);
  pxrInternal__aapl__pxrReserved__::HgiTexture::~HgiTexture(v14);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiGLTexture::~HgiGLTexture(pxrInternal__aapl__pxrReserved__::HgiGLTexture *this)
{
  v2 = (this + 104);
  if (*(this + 26))
  {
    pxrInternal__aapl__pxrReserved__::internal::GLApi::glDeleteTextures(1, v2);
    *v2 = 0;
  }

  sub_29A008E78(__p, "virtual pxrInternal__aapl__pxrReserved__::HgiGLTexture::~HgiGLTexture()");
  pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_29A0F6078(this + 12, v3);
  pxrInternal__aapl__pxrReserved__::HgiTexture::~HgiTexture(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiGLTexture::~HgiGLTexture(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiGLTexture::GetBindlessHandle(pxrInternal__aapl__pxrReserved__::HgiGLTexture *this)
{
  result = *(this + 14);
  if (!result)
  {
    TextureHandleARB = pxrInternal__aapl__pxrReserved__::internal::GLApi::glGetTextureHandleARB(*(this + 26));
    if (!pxrInternal__aapl__pxrReserved__::internal::GLApi::glIsTextureHandleResidentARB())
    {
      pxrInternal__aapl__pxrReserved__::internal::GLApi::glMakeTextureHandleResidentARB(TextureHandleARB);
    }

    *(this + 14) = TextureHandleARB;
    sub_29A008E78(__p, "uint64_t pxrInternal__aapl__pxrReserved__::HgiGLTexture::GetBindlessHandle()");
    pxrInternal__aapl__pxrReserved__::HgiGLPostPendingGLErrors(__p);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }

    return *(this + 14);
  }

  return result;
}

void sub_29ABA7514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::HgiMetalBlitCmds(pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *this, pxrInternal__aapl__pxrReserved__::HgiMetal *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HgiBlitCmds::HgiBlitCmds(this);
  *result = &unk_2A20749F0;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  *(result + 48) = 0;
  return result;
}

{
  result = pxrInternal__aapl__pxrReserved__::HgiBlitCmds::HgiBlitCmds(this);
  *result = &unk_2A20749F0;
  result[2] = a2;
  result[3] = 0;
  result[4] = 0;
  result[5] = 0;
  *(result + 48) = 0;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::~HgiMetalBlitCmds(pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *this, const char *a2, char *a3)
{
  if (*(this + 4))
  {
    v6[0] = "hgiMetal/blitCmds.mm";
    v6[1] = "~HgiMetalBlitCmds";
    v6[2] = 34;
    v6[3] = "virtual pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::~HgiMetalBlitCmds()";
    v7 = 0;
    v5 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Encoder created, but never commited.", a2, a3);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v6, "_blitEncoder == nil", v5);
  }

  v4 = *(this + 5);
  if (v4)
  {

    *(this + 5) = 0;
  }

  pxrInternal__aapl__pxrReserved__::HgiBlitCmds::~HgiBlitCmds(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::~HgiMetalBlitCmds(this, a2, a3);

  operator delete(v3);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::_CreateEncoder(pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *this)
{
  if (!*(this + 4))
  {
    PrimaryCommandBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryCommandBuffer(*(this + 2), this, 1);
    *(this + 3) = PrimaryCommandBuffer;
    if (!PrimaryCommandBuffer)
    {
      PrimaryCommandBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetSecondaryCommandBuffer(*(this + 2));
      *(this + 3) = PrimaryCommandBuffer;
      *(this + 48) = 1;
    }

    v3 = [PrimaryCommandBuffer blitCommandEncoder];
    *(this + 4) = v3;
    if (*(this + 5))
    {
      [v3 pushDebugGroup:?];

      *(this + 5) = 0;
    }

    if ((*(this + 48) & 1) == 0)
    {
      v4 = *(this + 2);

      pxrInternal__aapl__pxrReserved__::HgiMetal::SetHasWork(v4);
    }
  }
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::PushDebugGroup(pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *this, const char *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(this);
  if (result)
  {
    if (*(this + 4))
    {
      result = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(result);
      if (result)
      {
        v5 = *(this + 4);
        v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2];

        return [v5 pushDebugGroup:v6];
      }
    }

    else
    {
      result = [objc_msgSend(MEMORY[0x29EDBA0F8] stringWithUTF8String:{a2), "copy"}];
      *(this + 5) = result;
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::PopDebugGroup(void *this)
{
  if (this[4])
  {
    v1 = this;
    this = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(this);
    if (this)
    {
      v2 = v1[4];

      return [v2 popDebugGroup];
    }
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyTextureGpuToCpu(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = *a2;
  if (*a2 && pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(*a2) || (sub_29B2C3BC4(v36, a2, a3) & 1) != 0)
  {
    if (*(a2 + 48))
    {
      Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v5);
      if (pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(*(Descriptor + 28), *(Descriptor + 24)) != 260)
      {
        PrimaryDevice = pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(*(a1 + 16));
        v9 = *(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*(a1 + 16)) + 56);
        DataSizeOfFormat = pxrInternal__aapl__pxrReserved__::HgiGetDataSizeOfFormat(*(Descriptor + 28), 0, 0);
        v28 = [PrimaryDevice newBufferWithBytesNoCopy:*(a2 + 32) length:*(a2 + 48) options:v9 deallocator:0];
        v10 = *(Descriptor + 64);
        v11 = *(a2 + 24);
        v12 = *(a2 + 20);
        v13 = *(a2 + 16);
        v25 = *(Descriptor + 52) - v13;
        v14 = *(Descriptor + 56) - v12;
        v15 = *(Descriptor + 60);
        pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::_CreateEncoder(a1);
        v26 = *(a1 + 32);
        TextureId = pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(v5);
        if (v10 <= 1)
        {
          v17 = v11;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        v19 = v15 - v17;
        v20 = *(a2 + 28);
        if (v10 <= 1)
        {
          v21 = 0;
        }

        else
        {
          v21 = *(a2 + 24);
        }

        v31 = v13;
        v32 = v12;
        v33 = v18;
        v30[0] = v25;
        v30[1] = v14;
        v30[2] = v19;
        [v26 copyFromTexture:TextureId sourceSlice:v21 sourceLevel:v20 sourceOrigin:&v31 sourceSize:v30 toBuffer:v28 destinationOffset:0 destinationBytesPerRow:DataSizeOfFormat * *(Descriptor + 52) destinationBytesPerImage:DataSizeOfFormat * *(Descriptor + 52) * *(Descriptor + 56) options:0];
        v22 = *(a2 + 32) + *(a2 + 40);
        v23 = *(a2 + 48);
        v24 = *(a1 + 24);
        v29[0] = MEMORY[0x29EDCA5F8];
        v29[1] = 3254779904;
        v29[2] = sub_29ABA7A54;
        v29[3] = &unk_2A2074A68;
        v29[4] = v28;
        v29[5] = v22;
        v29[6] = v23;
        [v24 addCompletedHandler:v29];
        return;
      }

      v31 = "hgiMetal/blitCmds.mm";
      v32 = "CopyTextureGpuToCpu";
      v33 = 110;
      v34 = "virtual void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyTextureGpuToCpu(const HgiTextureGpuToCpuOp &)";
      v35 = 0;
      v7 = "Cannot read back depth stencil on Metal.";
    }

    else
    {
      v31 = "hgiMetal/blitCmds.mm";
      v32 = "CopyTextureGpuToCpu";
      v33 = 100;
      v34 = "virtual void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyTextureGpuToCpu(const HgiTextureGpuToCpuOp &)";
      v35 = 0;
      v7 = "The size of the data to copy was zero (aborted)";
    }

    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v31, v7, a3);
  }
}

void sub_29ABA7A54(uint64_t a1)
{
  memcpy(*(a1 + 40), [*(a1 + 32) contents], *(a1 + 48));
  v2 = *(a1 + 32);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyTextureCpuToGpu(uint64_t a1, uint64_t *a2)
{
  v4 = a2[4];
  TextureId = pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(v4);
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(v4);
  v8 = *(Descriptor + 52);
  v7 = *(Descriptor + 56);
  v9 = *(Descriptor + 60);
  v10 = [MEMORY[0x29EDBB670] texture2DDescriptorWithPixelFormat:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(*(Descriptor + 28) width:8) height:v8 mipmapped:v7, 0];
  [v10 setMipmapLevelCount:*(Descriptor + 66)];
  [v10 setArrayLength:*(Descriptor + 64)];
  [v10 setResourceOptions:*(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*(a1 + 16)) + 56)];
  [v10 setSampleCount:1];
  v11 = *(Descriptor + 48);
  if (v11 > 2)
  {
    if (v11 == 3)
    {
      v12 = 1;
    }

    else
    {
      if (v11 != 4)
      {
        goto LABEL_11;
      }

      v12 = 3;
    }
  }

  else if (v11)
  {
    if (v11 != 2)
    {
      goto LABEL_11;
    }

    [v10 setDepth:v9];
    v12 = 7;
  }

  else
  {
    v12 = 0;
  }

  [v10 setTextureType:v12];
LABEL_11:
  [v10 setUsage:1];
  v13 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(*(a1 + 16)) newTextureWithDescriptor:v10];
  v14 = v13;
  v15 = *(Descriptor + 48);
  if (v15 == 1)
  {
    v19 = a2[2];
    *&v20 = v19;
    *(&v20 + 1) = SHIDWORD(v19);
    v32 = v20;
    v33 = 0;
    v34 = v8;
    v35.i64[0] = v7;
    v35.i64[1] = 1;
    v16 = *(a2 + 7);
    v17 = *a2;
    v18 = a2[1] / v7;
    goto LABEL_15;
  }

  if (!v15)
  {
    v32 = *(a2 + 4);
    v33 = 0;
    v34 = v8;
    v35 = vdupq_n_s64(1uLL);
    v16 = *(a2 + 7);
    v17 = *a2;
    v18 = a2[1];
LABEL_15:
    [v13 replaceRegion:&v32 mipmapLevel:v16 withBytes:v17 bytesPerRow:v18];
    goto LABEL_23;
  }

  v21 = *(Descriptor + 64) > 1u;
  v22 = *(a2 + 7);
  v23 = *(a2 + 6);
  if (*(Descriptor + 64) <= 1u)
  {
    v24 = *(a2 + 6);
  }

  else
  {
    v24 = 0;
  }

  v25 = a2[2];
  *&v26 = v25;
  *(&v26 + 1) = SHIDWORD(v25);
  v32 = v26;
  v33 = v24;
  v34 = v8;
  v35.i64[0] = v7;
  v35.i64[1] = v9;
  if (v21)
  {
    v27 = v23;
  }

  else
  {
    v27 = 0;
  }

  [v13 replaceRegion:&v32 mipmapLevel:v22 slice:v27 withBytes:*a2 bytesPerRow:a2[1] / v7 / v8 bytesPerImage:a2[1] / v9];
LABEL_23:
  v28 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetQueue(*(a1 + 16)) commandBuffer];
  v29 = [v28 blitCommandEncoder];
  v30 = v29;
  if ((*(Descriptor + 48) - 3) >= 2)
  {
    v31 = 1;
  }

  else
  {
    v31 = *(Descriptor + 64);
  }

  [v29 copyFromTexture:v14 sourceSlice:0 sourceLevel:*(a2 + 7) toTexture:TextureId destinationSlice:0 destinationLevel:*(a2 + 7) sliceCount:v31 levelCount:{1, v32, v33, v34, *&v35}];
  [v30 endEncoding];
  [v28 commit];
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyBufferGpuToGpu(id *this, const char *a2, char *a3)
{
  v5 = *a2;
  if (*a2 && *(v5 + 64) || (sub_29B2C3C2C(v10, a2, a3) & 1) != 0)
  {
    v6 = *(a2 + 4);
    if (v6 && *(v6 + 64) || (sub_29B2C3C94(v9, a2, a3) & 1) != 0)
    {
      if (*(a2 + 3))
      {
        pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::_CreateEncoder(this);
        [this[4] copyFromBuffer:*(v5 + 64) sourceOffset:*(a2 + 2) toBuffer:*(v6 + 64) destinationOffset:*(a2 + 6) size:*(a2 + 3)];
      }

      else
      {
        v7[0] = "hgiMetal/blitCmds.mm";
        v7[1] = "CopyBufferGpuToGpu";
        v7[2] = 295;
        v7[3] = "virtual void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyBufferGpuToGpu(const HgiBufferGpuToGpuOp &)";
        v8 = 0;
        pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v7, "The size of the data to copy was zero (aborted)", a3);
      }
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyBufferCpuToGpu(uint64_t a1, void *a2)
{
  if (a2[5])
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v4 = a2[2];
    if (v4)
    {
      [*(v4 + 64) storageMode];
      v5 = [*(v4 + 64) contents];
      v6 = a2[4];
      v7 = a2[1];
      if (*a2 != v5 || v7 != v6)
      {
        v9 = a2[5];
        v10 = (v5 + v6);
        v11 = (*a2 + v7);

        memcpy(v10, v11, v9);
      }
    }
  }
}

pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyBufferGpuToCpu(pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *result, uint64_t a2)
{
  if (*(a2 + 24) && *(a2 + 32))
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = result;
      pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::_CreateEncoder(result);
      v5 = *(a2 + 32) + *(a2 + 40);
      CPUStagingAddress = pxrInternal__aapl__pxrReserved__::HgiMetalBuffer::GetCPUStagingAddress(v3);
      v7 = *(a2 + 24);
      v8 = &CPUStagingAddress[*(a2 + 16)];
      v9 = *(v4 + 3);
      v10[0] = MEMORY[0x29EDCA5F8];
      v10[1] = 3221225472;
      v10[2] = sub_29ABA7F30;
      v10[3] = &unk_29F296900;
      v10[4] = v5;
      v10[5] = v8;
      v10[6] = v7;
      return [v9 addCompletedHandler:v10];
    }
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyTextureToBuffer()
{
  v0[0] = "hgiMetal/blitCmds.mm";
  v0[1] = "CopyTextureToBuffer";
  v0[2] = 412;
  v0[3] = "virtual void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyTextureToBuffer(const HgiTextureToBufferOp &)";
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v0, 1, "Missing Implementation");
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyBufferToTexture()
{
  v0[0] = "hgiMetal/blitCmds.mm";
  v0[1] = "CopyBufferToTexture";
  v0[2] = 418;
  v0[3] = "virtual void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::CopyBufferToTexture(const HgiBufferToTextureOp &)";
  v1 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v0, 1, "Missing Implementation");
}

pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::FillBuffer(pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *result, pxrInternal__aapl__pxrReserved__::HgiBuffer **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = result;
    pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::_CreateEncoder(result);
    pxrInternal__aapl__pxrReserved__::HgiBuffer::GetDescriptor(v2);
    v4 = *(v3 + 4);

    return MEMORY[0x2A1C70FE8](v4, sel_fillBuffer_range_value_);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::IsFilterable(pxrInternal__aapl__pxrReserved__ *this, MTLPixelFormat a2)
{
  sub_29ABA80E0();
  v3 = qword_2A17488C0;
  if (!qword_2A17488C0)
  {
    goto LABEL_9;
  }

  v4 = &qword_2A17488C0;
  do
  {
    v5 = *(v3 + 32);
    v6 = v5 >= this;
    v7 = v5 < this;
    if (v6)
    {
      v4 = v3;
    }

    v3 = *(v3 + 8 * v7);
  }

  while (v3);
  if (v4 != &qword_2A17488C0 && v4[4] <= this)
  {
    v8 = 0;
  }

  else
  {
LABEL_9:
    v8 = 1;
  }

  sub_29ABA80E0();
  return v8;
}

void sub_29ABA80E0()
{
  v0[1] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17488D0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_2A17488D0))
    {
      v0[0] = 125;
      sub_29ABA83C4(&unk_2A17488B8, v0, 1);
      __cxa_guard_release(&qword_2A17488D0);
    }
  }
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::GenerateMipMaps(pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds *a1, pxrInternal__aapl__pxrReserved__::HgiTexture **a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return;
  }

  Descriptor = pxrInternal__aapl__pxrReserved__::HgiTexture::GetDescriptor(*a2);
  ComponentBaseFormat = pxrInternal__aapl__pxrReserved__::HgiGetComponentBaseFormat(Descriptor[7]);
  if (ComponentBaseFormat <= 0x16 && ((1 << ComponentBaseFormat) & 0x446000) != 0)
  {
    return;
  }

  v7 = Descriptor[13];
  v8 = Descriptor[14];
  v9 = Descriptor[12];
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      if (v7 <= 1 && v8 <= 1 && Descriptor[15] < 2)
      {
        return;
      }

      goto LABEL_28;
    }

    if (v9 != 4)
    {
      if (v9 != 3)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

LABEL_14:
    if (v7 <= 1 && v8 <= 1)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v9)
  {
    if (v9 != 1)
    {
LABEL_32:
      v16[0] = "hgiMetal/blitCmds.mm";
      v16[1] = "_HgiTextureCanBeFiltered";
      v16[2] = 467;
      v16[3] = "BOOL pxrInternal__aapl__pxrReserved__::_HgiTextureCanBeFiltered(const HgiTextureDesc &)";
      v17 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v16, 1, "Unsupported HgiTextureType enum value");
      return;
    }

    goto LABEL_14;
  }

LABEL_19:
  if (v7 <= 1)
  {
    return;
  }

LABEL_28:
  v13 = [pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(v2) pixelFormat];
  if (pxrInternal__aapl__pxrReserved__::IsFilterable(v13, v14))
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::_CreateEncoder(a1);
    v15 = *(a1 + 4);
    pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(v2);

    MEMORY[0x2A1C70FE8](v15, sel_generateMipmapsForTexture_);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::InsertMemoryBarrier(uint64_t this, const char *a2, char *a3)
{
  if (a2 != 1)
  {
    return sub_29B2C3CFC(this, a2, a3);
  }

  return this;
}

BOOL pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::_Submit(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    [*(a1 + 32) endEncoding];
    *(a1 + 32) = 0;
    v6 = *(a1 + 16);
    if (*(a1 + 48) == 1)
    {
      pxrInternal__aapl__pxrReserved__::HgiMetal::CommitSecondaryCommandBuffer(v6, *(a1 + 24), 2 * (a3 == 1));
    }

    else
    {
      if (a3 == 1)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(v6, v7, 0);
    }
  }

  if (*(a1 + 48) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetal::ReleaseSecondaryCommandBuffer();
  }

  result = v4 != 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_29ABA83C4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *a1 = a1 + 8;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_29ABA8444(a1, v4, a2, a2);
      ++a2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t *sub_29ABA8444(uint64_t **a1, void *a2, unint64_t *a3, uint64_t *a4)
{
  v6 = sub_29A1B2AD0(a1, a2, &v11, &v10, a3);
  v7 = *v6;
  if (!*v6)
  {
    v8 = v6;
    v7 = operator new(0x28uLL);
    v7[4] = *a4;
    sub_29A00B204(a1, v11, v8, v7);
  }

  return v7;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalBuffer::HgiMetalBuffer(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiMetal *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HgiBuffer::HgiBuffer(a1, a3);
  *v6 = &unk_2A2074AC0;
  v6[8] = 0;
  if (!*(a3 + 32))
  {
    v11[0] = "hgiMetal/buffer.mm";
    v11[1] = "HgiMetalBuffer";
    v11[2] = 25;
    v11[3] = "pxrInternal__aapl__pxrReserved__::HgiMetalBuffer::HgiMetalBuffer(HgiMetal *, const HgiBufferDesc &)";
    v12 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v11, 1, "Buffers must have a non-zero length");
  }

  v7 = *(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(a2) + 56);
  if (*(a3 + 48))
  {
    v8 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newBufferWithBytes:*(a3 + 48) length:*(a3 + 32) options:v7];
  }

  else
  {
    v8 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newBufferWithLength:*(a3 + 32) options:v7];
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = v8;
  if (pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(v8))
  {
    v9 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v9 = *v9;
    }

    [*(a1 + 64) setLabel:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v9)}];
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalBuffer::~HgiMetalBuffer(pxrInternal__aapl__pxrReserved__::HgiMetalBuffer *this)
{
  v2 = *(this + 8);
  if (v2)
  {

    *(this + 8) = 0;
  }

  pxrInternal__aapl__pxrReserved__::HgiBuffer::~HgiBuffer(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalBuffer::~HgiMetalBuffer(this);

  operator delete(v1);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalBuffer::GetCPUStagingAddress(pxrInternal__aapl__pxrReserved__::HgiMetalBuffer *this)
{
  result = *(this + 8);
  if (result)
  {
    return [result contents];
  }

  return result;
}

void sub_29ABA86A0()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIMETAL_ENABLE_INDIRECT_COMMAND_BUFFER))
  {
    sub_29B2C3D60();
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalCapabilities::HgiMetalCapabilities(uint64_t a1, void *a2)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 40) = 1;
  *a1 = &unk_2A2074B10;
  *(a1 + 48) = 4;
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIMETAL_ENABLE_INDIRECT_COMMAND_BUFFER))
  {
    pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<BOOL>();
  }

  *(a1 + 48) = *(a1 + 48) & 0xFFFC38A7 | 0x1C448;
  *(a1 + 56) = 0;
  *(a1 + 8) = xmmword_29B6C8D60;
  *(a1 + 24) = xmmword_29B6C8D70;
  *(a1 + 40) = 4096;
  *(a1 + 72) = 1;
  *(a1 + 74) = 0;
  [objc_msgSend(a2 "name")];
  *(a1 + 75) = 1;
  [objc_msgSend(a2 "name")];
  *(a1 + 73) = 1;
  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalCapabilities::~HgiMetalCapabilities(pxrInternal__aapl__pxrReserved__::HgiMetalCapabilities *this)
{
  pxrInternal__aapl__pxrReserved__::HgiCapabilities::~HgiCapabilities(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline *pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline::HgiMetalComputePipeline(pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline *this, pxrInternal__aapl__pxrReserved__::HgiMetal *a2, const pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc *a3)
{
  *pxrInternal__aapl__pxrReserved__::HgiComputePipeline::HgiComputePipeline(this, a3) = &unk_2A2074B58;
  v5 = objc_alloc_init(MEMORY[0x29EDBB570]);
  if (pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(v5))
  {
    v6 = (this + 8);
    if (*(this + 31) < 0)
    {
      v6 = *v6;
    }

    [v5 setLabel:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v6)}];
  }

  [v5 setComputeFunction:*(*(this + 4) + 96)];
  v12 = 0;
  *(this + 7) = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newComputePipelineStateWithDescriptor:v5 options:0 reflection:0 error:&v12];

  if (!*(this + 7))
  {
    v10[0] = "hgiMetal/computePipeline.mm";
    v10[1] = "HgiMetalComputePipeline";
    v10[2] = 47;
    v10[3] = "pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline::HgiMetalComputePipeline(HgiMetal *, const HgiComputePipelineDesc &)";
    v11 = 0;
    v7 = [objc_msgSend(v12 "localizedDescription")];
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(v10, "Failed to create compute pipeline state, error %s", v8, v7);
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline::~HgiMetalComputePipeline(void **this)
{
  pxrInternal__aapl__pxrReserved__::HgiComputePipeline::~HgiComputePipeline(this);

  operator delete(v1);
}

pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds *pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::HgiMetalComputeCmds(pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds *this, pxrInternal__aapl__pxrReserved__::HgiMetal *a2, const pxrInternal__aapl__pxrReserved__::HgiComputeCmdsDesc *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HgiComputeCmds::HgiComputeCmds(this);
  *v6 = &unk_2A2074B90;
  v6[2] = a2;
  *(v6 + 3) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 56) = 0;
  *(v6 + 15) = *a3;
  pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateEncoder(v6);
  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateEncoder(uint64_t this)
{
  if (!*(this + 48))
  {
    v1 = this;
    PrimaryCommandBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryCommandBuffer(*(this + 16), this, 0);
    *(v1 + 32) = PrimaryCommandBuffer;
    if (!PrimaryCommandBuffer)
    {
      PrimaryCommandBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetSecondaryCommandBuffer(*(v1 + 16));
      *(v1 + 32) = PrimaryCommandBuffer;
      *(v1 + 56) = 1;
    }

    this = [PrimaryCommandBuffer computeCommandEncoderWithDispatchType:*(v1 + 60) == 1];
    *(v1 + 48) = this;
  }

  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::~HgiMetalComputeCmds(pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds *this, const char *a2, char *a3)
{
  if (*(this + 6))
  {
    v5[0] = "hgiMetal/computeCmds.mm";
    v5[1] = "~HgiMetalComputeCmds";
    v5[2] = 37;
    v5[3] = "virtual pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::~HgiMetalComputeCmds()";
    v6 = 0;
    v4 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Encoder created, but never commited.", a2, a3);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v5, "_encoder == nil", v4);
  }

  pxrInternal__aapl__pxrReserved__::HgiComputeCmds::~HgiComputeCmds(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::~HgiMetalComputeCmds(this, a2, a3);

  operator delete(v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateArgumentBuffer(uint64_t this)
{
  if (!*(this + 40))
  {
    v1 = this;
    this = pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer(*(this + 16));
    *(v1 + 40) = this;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::BindPipeline(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateEncoder(a1);
  *(a1 + 24) = a2;
  v4 = *(a1 + 48);

  return pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline::BindPipeline(a2, v4);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::BindResources(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateEncoder(result);
    ArgBuffer = *(v3 + 40);
    if (!ArgBuffer)
    {
      ArgBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer(*(v3 + 16));
      *(v3 + 40) = ArgBuffer;
    }

    v5 = *(v3 + 16);
    v6 = *(v3 + 48);

    return pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(a2, v5, v6, ArgBuffer);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::SetConstantValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, const void *a6)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateEncoder(a1);
  ArgBuffer = *(a1 + 40);
  if (!ArgBuffer)
  {
    ArgBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer(*(a1 + 16));
    *(a1 + 40) = ArgBuffer;
  }

  return pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::SetConstantValues(ArgBuffer, 4, a4, a5, a6);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::Dispatch(uint64_t this, unsigned int a2, unsigned int a3)
{
  if (a2 && a3)
  {
    v5 = this;
    v6 = [pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline::GetMetalPipelineState(*(this + 24)) maxTotalThreadsPerThreadgroup];
    v7 = [pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline::GetMetalPipelineState(*(v5 + 24)) threadExecutionWidth];
    LODWORD(v8) = v6 / v7;
    if (v6 >= v7)
    {
      LODWORD(v9) = v7;
    }

    else
    {
      LODWORD(v9) = v6;
    }

    if (a3 == 1)
    {
      LODWORD(v8) = 1;
    }

    else
    {
      LODWORD(v9) = v7;
    }

    v10 = *(v5 + 48);
    v12[0] = a2;
    v12[1] = a3;
    v12[2] = 1;
    if (v9 >= a2)
    {
      v9 = a2;
    }

    else
    {
      v9 = v9;
    }

    if (v8 >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v8;
    }

    v11[0] = v9;
    v11[1] = v8;
    v11[2] = 1;
    this = [v10 dispatchThreads:v12 threadsPerThreadgroup:v11];
    if ((*(v5 + 56) & 1) == 0)
    {
      this = pxrInternal__aapl__pxrReserved__::HgiMetal::SetHasWork(*(v5 + 16));
    }

    *(v5 + 40) = 0;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::PushDebugGroup(pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds *this, const char *a2)
{
  Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateEncoder(this);
  result = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(Encoder);
  if (result)
  {
    v6 = *(this + 6);
    v7 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2];

    return [v6 pushDebugGroup:v7];
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::PopDebugGroup(void *this)
{
  if (this[6])
  {
    v1 = this;
    this = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(this);
    if (this)
    {
      v2 = v1[6];

      return [v2 popDebugGroup];
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::InsertMemoryBarrier(id *this, int a2)
{
  if (a2 == 1 || (result = sub_29B2C3D94(v4), (result & 1) != 0))
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_CreateEncoder(this);
    return [this[6] memoryBarrierWithScope:3];
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::_Submit(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    [v4 endEncoding];
    *(a1 + 48) = 0;
    v6 = 2 * (a3 == 1);
    v7 = *(a1 + 16);
    if (*(a1 + 56) == 1)
    {
      pxrInternal__aapl__pxrReserved__::HgiMetal::CommitSecondaryCommandBuffer(v7, *(a1 + 32), v6);
    }

    else
    {
      pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(v7, v6, 0);
    }
  }

  if (*(a1 + 56) == 1)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetal::ReleaseSecondaryCommandBuffer();
  }

  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return 1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(unsigned int a1, char a2)
{
  if (a1 == -1)
  {
    return 0;
  }

  if (a1 >= 0x23)
  {
    v3 = "hgiMetal/conversions.mm";
    v4 = "GetPixelFormat";
    v5 = 447;
    v6 = "static MTLPixelFormat pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(HgiFormat, HgiTextureUsage)";
    v7 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Unexpected HgiFormat %d");
    return 70;
  }

  if ((a2 & 2) != 0)
  {
    if (a1 == 33)
    {
      return 260;
    }

    else
    {
      return 252;
    }
  }

  else
  {
    if ((0x5F9111100uLL >> a1))
    {
      v3 = "hgiMetal/conversions.mm";
      v4 = "GetPixelFormat";
      v5 = 462;
      v6 = "static MTLPixelFormat pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(HgiFormat, HgiTextureUsage)";
      v7 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v3, 1, "Unsupported HgiFormat %d");
      return 70;
    }

    return *&asc_29B6C8E38[8 * a1];
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetVertexFormat(unsigned int a1)
{
  if (a1 >= 0x23)
  {
    v2 = "hgiMetal/conversions.mm";
    v3 = "GetVertexFormat";
    v4 = 473;
    v5 = "static MTLVertexFormat pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetVertexFormat(HgiFormat)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v2, 1, "Unexpected HgiFormat %d");
    return 31;
  }

  if (a1 - 27 <= 6)
  {
    v2 = "hgiMetal/conversions.mm";
    v3 = "GetVertexFormat";
    v4 = 480;
    v5 = "static MTLVertexFormat pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetVertexFormat(HgiFormat)";
    v6 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v2, 1, "Unsupported HgiFormat %d");
    return 31;
  }

  return qword_29B6C8F50[a1];
}

void sub_29ABA9270()
{
  if (!atomic_load(pxrInternal__aapl__pxrReserved__::HGIMETAL_DEBUG))
  {
    sub_29B2C3DE0();
  }
}

void sub_29ABA92A0()
{
  pxrInternal__aapl__pxrReserved__::TfEnum::_AddName(qword_2A2074C00, 0, "HGIMETAL_DEBUG_ERROR_STACKTRACE", 0);
  v0 = sub_29ABA93A8();

  pxrInternal__aapl__pxrReserved__::TfDebug::_RegisterDebugSymbolImpl(v0, "HGIMETAL_DEBUG_ERROR_STACKTRACE", "HgiMetal dump stack trace on Metal error");
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(pxrInternal__aapl__pxrReserved__ *this)
{
  if ((atomic_load_explicit(&qword_2A17488E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17488E0))
  {
    v2 = atomic_load(pxrInternal__aapl__pxrReserved__::HGIMETAL_DEBUG);
    if (!v2)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    byte_2A17488D8 = *v2 == 1;
    __cxa_guard_release(&qword_2A17488E0);
  }

  return byte_2A17488D8;
}

uint64_t sub_29ABA93A8()
{
  if ((atomic_load_explicit(&qword_2A14F9948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A14F9948))
  {
    v1 = operator new(4uLL);
    *v1 = 0;
    qword_2A14F9940 = v1;
    __cxa_guard_release(&qword_2A14F9948);
  }

  return qword_2A14F9940;
}

double pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::CachedEncoderState::CachedEncoderState(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::CachedEncoderState *this)
{
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 5) = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 5) = 0u;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::CachedEncoderState::ResetCachedEncoderState(void *this)
{
  this[14] = this[13];
  this[11] = 0;
  this[12] = 0;
  this[10] = 0;
  return this;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::HgiMetalGraphicsCmds(pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds *a1, uint64_t a2)
{
  v3 = pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds::HgiGraphicsCmds(a1);
  *v3 = &unk_2A2074C20;
  v3[2] = 850045863;
  *(v3 + 3) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 7) = 0u;
  v3[9] = 0;
  *(v3 + 10) = 0u;
  *(v3 + 11) = 0u;
  *(v3 + 12) = 0u;
  v3[26] = a2;
  *(v3 + 27) = 0u;
  *(v3 + 29) = 0u;
  *(v3 + 31) = 0u;
  v3[35] = 0;
  *(v3 + 33) = 0u;
  std::vector<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*,pxrInternal__aapl__pxrReserved__::HgiAttachmentDesc*>();
}

void sub_29ABA9AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds *a10)
{
  sub_29ABA9C7C(a10 + 480);
  sub_29AB905FC(a10 + 264);
  v11 = *(a10 + 29);
  if (v11)
  {
    *(a10 + 30) = v11;
    operator delete(v11);
  }

  v12 = *(a10 + 23);
  if (v12)
  {
    *(a10 + 24) = v12;
    operator delete(v12);
  }

  std::mutex::~mutex(a9);
  pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds::~HgiGraphicsCmds(a10);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds *this, unsigned int a2)
{
  v3 = *(this + 29);
  v4 = (*(this + 30) - v3) >> 3;
  if (!v4)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SetNumberParallelEncoders(this, 1u);
    v3 = *(this + 29);
    v4 = (*(this + 30) - v3) >> 3;
  }

  if (v4 > a2)
  {
    return *(v3 + 8 * a2);
  }

  v7[0] = "hgiMetal/graphicsCmds.mm";
  v7[1] = "GetEncoder";
  v7[2] = 388;
  v7[3] = "id<MTLRenderCommandEncoder> pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(uint32_t)";
  v8 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "Invalid render encoder index specified");
  return 0;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_CreateArgumentBuffer(uint64_t this)
{
  if (!*(this + 256))
  {
    v1 = this;
    this = pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer(*(this + 208));
    *(v1 + 256) = this;
  }

  return this;
}

uint64_t sub_29ABA9C7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::~HgiMetalGraphicsCmds(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds *this, const char *a2, char *a3)
{
  if (*(this + 29) != *(this + 30))
  {
    v16[0] = "hgiMetal/graphicsCmds.mm";
    v16[1] = "~HgiMetalGraphicsCmds";
    v16[2] = 241;
    v16[3] = "virtual pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::~HgiMetalGraphicsCmds()";
    v17 = 0;
    v15 = pxrInternal__aapl__pxrReserved__::Tf_VerifyStringFormat("Encoder created, but never commited.", a2, a3);
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(v16, "_encoders.empty()", v15);
  }

  v4 = *(this + 58);
  if (v4)
  {
  }

  *(this + 24) = *(this + 23);
  *(this + 21) = 0;
  *(this + 22) = 0;
  *(this + 20) = 0;
  v5 = *(this + 29);
  v6 = *(this + 30);
  while (v5 != v6)
  {

    *v5++ = 0;
  }

  v7 = *(this + 28);
  if (v7)
  {

    *(this + 28) = 0;
  }

  v8 = *(this + 63);
  if (v8)
  {
    *(this + 64) = v8;
    operator delete(v8);
  }

  v9 = *(this + 60);
  if (v9)
  {
    *(this + 61) = v9;
    operator delete(v9);
  }

  v10 = *(this + 49);
  if (v10)
  {
    *(this + 50) = v10;
    operator delete(v10);
  }

  v11 = *(this + 46);
  if (v11)
  {
    *(this + 47) = v11;
    operator delete(v11);
  }

  v12 = *(this + 33);
  if (v12)
  {
    *(this + 34) = v12;
    operator delete(v12);
  }

  v13 = *(this + 29);
  if (v13)
  {
    *(this + 30) = v13;
    operator delete(v13);
  }

  v14 = *(this + 23);
  if (v14)
  {
    *(this + 24) = v14;
    operator delete(v14);
  }

  std::mutex::~mutex((this + 16));
  pxrInternal__aapl__pxrReserved__::HgiGraphicsCmds::~HgiGraphicsCmds(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::~HgiMetalGraphicsCmds(this, a2, a3);

  operator delete(v3);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_VegaIndirectFix(uint64_t this)
{
  if (*(this + 475) == 1)
  {
    v1 = this;
    this = pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*(this + 208));
    if (*(this + 74) == 1)
    {
      Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(v1, 0);
      PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPrimitiveType(v1[112]);

      return [Encoder drawPrimitives:PrimitiveType vertexStart:0 vertexCount:0];
    }
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SetCachedEncoderState(uint64_t a1, void *a2)
{
  if (*(a1 + 472) == 1)
  {
    v4 = *(a1 + 96);
    v9 = *(a1 + 80);
    v10 = v4;
    v11 = *(a1 + 112);
    [a2 setViewport:&v9];
  }

  if (*(a1 + 473) == 1)
  {
    v5 = *(a1 + 144);
    v9 = *(a1 + 128);
    v10 = v5;
    [a2 setScissorRect:&v9];
  }

  v6 = *(a1 + 168);
  if (v6)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::BindPipeline(v6, a2);
  }

  v7 = *(a1 + 160);
  if (v7)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(v7, *(a1 + 208), a2, *(a1 + 176));
  }

  return sub_29ABA9F94(a2, (a1 + 184));
}

uint64_t sub_29ABA9F94(uint64_t result, unsigned int **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      if (*v2)
      {
        result = [v4 setVertexBuffer:*(*v2 + 64) offset:v2[4] atIndex:v2[5]];
      }

      v2 += 6;
    }

    while (v2 != v3);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SetNumberParallelEncoders(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds *this, unsigned int a2)
{
  std::mutex::lock((this + 16));
  v4 = *(this + 30) - *(this + 29);
  v5 = v4 >> 3;
  v6 = a2 - (v4 >> 3);
  if (a2 <= (v4 >> 3))
  {
    goto LABEL_18;
  }

  if (*(this + 474) == 1)
  {
    if (!*(this + 28))
    {
      v7 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryCommandBuffer(*(this + 26) this];
      *(this + 28) = v7;
      if (*(this + 58))
      {
        [v7 pushDebugGroup:?];
      }
    }

    do
    {
      v12[0] = [*(this + 28) renderCommandEncoder];
      sub_29A0A71C8(this + 232, v12);
      --v6;
    }

    while (v6);
LABEL_14:
    v9 = v4 & 0x7FFFFFFF8;
    v10 = a2 - v5;
    do
    {
      pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SetCachedEncoderState(this, *(*(this + 29) + v9));
      v9 += 8;
      --v10;
    }

    while (v10);
    v11 = *(this + 58);
    if (v11)
    {

      *(this + 58) = 0;
    }

    goto LABEL_18;
  }

  if (a2 >= 2)
  {
    v12[0] = "hgiMetal/graphicsCmds.mm";
    v12[1] = "_SetNumberParallelEncoders";
    v12[2] = 349;
    v12[3] = "void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SetNumberParallelEncoders(uint32_t)";
    v13 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v12, 1, "Only 1 encoder supported");
  }

  if (!v5)
  {
    v8 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryCommandBuffer(*(this + 26) this];
    v12[0] = v8;
    if (*(this + 58))
    {
      [v8 pushDebugGroup:?];
    }

    sub_29A0A71C8(this + 232, v12);
    goto LABEL_14;
  }

LABEL_18:
  std::mutex::unlock((this + 16));
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SyncArgumentBuffer(uint64_t this)
{
  if (*(this + 256))
  {
    *(this + 256) = 0;
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::SetViewport(uint64_t result, int *a2)
{
  v2 = result;
  v3 = a2[3];
  v4 = a2[2];
  v5 = a2[1] + v3;
  *(result + 80) = *a2;
  *(result + 88) = v5;
  v6 = (result + 80);
  *(result + 96) = v4;
  *(result + 104) = -v3;
  *(result + 112) = xmmword_29B432590;
  v7 = *(result + 232);
  v8 = *(result + 240);
  while (v7 != v8)
  {
    v9 = *v7++;
    v10 = v6[1];
    v11[0] = *v6;
    v11[1] = v10;
    v11[2] = v6[2];
    result = [v9 setViewport:v11];
  }

  *(v2 + 472) = 1;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::SetScissor(uint64_t result, void *a2)
{
  v2 = result;
  v3 = a2[1];
  *&v4 = *a2;
  *(&v4 + 1) = HIDWORD(*a2);
  v5 = v4;
  *&v4 = v3;
  *(&v4 + 1) = HIDWORD(v3);
  *(result + 128) = v5;
  *(result + 144) = v4;
  v6 = (result + 128);
  v7 = *(result + 232);
  v8 = *(result + 240);
  while (v7 != v8)
  {
    v9 = *v7++;
    v10 = v6[1];
    v11[0] = *v6;
    v11[1] = v10;
    result = [v9 setScissorRect:v11];
  }

  *(v2 + 473) = 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::BindPipeline(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline *this)
{
  v4 = *(a1 + 448);
  *(a1 + 475) = v4 != *(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(this) + 24);
  *(a1 + 448) = *(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(this) + 24);
  *(a1 + 452) = *(pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(this) + 320);
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(this);
  pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::Init((a1 + 480), Descriptor);
  *(a1 + 168) = this;
  if (this)
  {
    v6 = *(a1 + 232);
    v7 = *(a1 + 240);
    while (v6 != v7)
    {
      v8 = *v6++;
      pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::BindPipeline(*(a1 + 168), v8);
    }
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::BindResources(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 256);
  if (!result)
  {
    result = pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer(*(a1 + 208));
    *(a1 + 256) = result;
  }

  *(a1 + 160) = a2;
  *(a1 + 176) = result;
  if (a2)
  {
    v5 = *(a1 + 232);
    v6 = *(a1 + 240);
    while (v5 != v6)
    {
      v7 = *v5++;
      result = pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(*(a1 + 160), *(a1 + 208), v7, *(a1 + 256));
    }
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::SetConstantValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, const void *a7)
{
  ArgBuffer = *(a1 + 256);
  if (!ArgBuffer)
  {
    ArgBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer(*(a1 + 208));
    *(a1 + 256) = ArgBuffer;
  }

  return pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::SetConstantValues(ArgBuffer, a4, a5, a6, a7);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::BindVertexBuffers(uint64_t a1, uint64_t a2)
{
  pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::Bind((a1 + 480), a2);
  result = sub_29ABAB380((a1 + 184), *(a1 + 192), *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
  v6 = *(a1 + 232);
  v5 = *(a1 + 240);
  while (v6 != v5)
  {
    v7 = *v6++;
    result = sub_29ABA9F94(v7, a2);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::Draw(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds *this, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5)
{
  if (*(this + 32))
  {
    *(this + 32) = 0;
  }

  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPrimitiveType(*(this + 112));
  Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(this, 0);
  pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetVertexBufferOffsets(this + 60, Encoder, a5);
  if (*(this + 112) == 4)
  {
    [Encoder drawPatches:*(this + 113) patchStart:0 patchCount:a2 / *(this + 113) patchIndexBuffer:0 patchIndexBufferOffset:0 instanceCount:a4 baseInstance:a5];
  }

  else if (a4 == 1)
  {
    [Encoder drawPrimitives:PrimitiveType vertexStart:a3 vertexCount:a2];
  }

  else
  {
    [Encoder drawPrimitives:PrimitiveType vertexStart:a3 vertexCount:a2 instanceCount:a4 baseInstance:a5];
  }

  v12 = *(this + 26);

  return pxrInternal__aapl__pxrReserved__::HgiMetal::SetHasWork(v12);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::DrawIndirect(uint64_t a1, uint64_t a2, int a3, unsigned int a4, int a5)
{
  v18 = a5;
  v19 = a3;
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPrimitiveType(*(a1 + 448));
  v16 = *(*a2 + 64);
  v17 = PrimitiveType;
  if (*(a1 + 256))
  {
    *(a1 + 256) = 0;
  }

  v9 = a4 >> 8;
  if (a4 < 0x100)
  {
    v9 = 1;
  }

  if (*(a1 + 476) >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = *(a1 + 476);
  }

  v15 = v10;
  v14 = a4 / v10;
  v13 = a4 / v10 + a4 - a4 / v10 * v10;
  pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SetNumberParallelEncoders(a1, v10);
  v12[0] = &v15;
  v12[1] = &v14;
  v12[2] = &v13;
  v12[3] = a1;
  v12[4] = &v19;
  v12[5] = &v18;
  v12[6] = &v16;
  v12[7] = &v17;
  v20[0] = &unk_2A2074CC8;
  v20[1] = v12;
  tbb::interface7::internal::isolate_within_arena(v20, 0);
  return pxrInternal__aapl__pxrReserved__::HgiMetal::SetHasWork(*(a1 + 208));
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::DrawIndexed(uint64_t a1, uint64_t *a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7)
{
  if (*(a1 + 256))
  {
    *(a1 + 256) = 0;
  }

  v13 = *a2;
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPrimitiveType(*(a1 + 448));
  Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(a1, 0);
  pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetVertexBufferOffsets((a1 + 480), Encoder, a7);
  if (*(a1 + 448) == 4)
  {
    v16 = *(a1 + 452);
    pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetPatchBaseOffsets(a1 + 480, Encoder, a5);
    [Encoder drawIndexedPatches:v16 patchStart:a4 >> 2 patchCount:a3 patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:*(v13 + 64) controlPointIndexBufferOffset:0 instanceCount:a6 baseInstance:a7];
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_VegaIndirectFix(a1);
    [Encoder drawIndexedPrimitives:PrimitiveType indexCount:a3 indexType:1 indexBuffer:*(v13 + 64) indexBufferOffset:a4 instanceCount:a6 baseVertex:a5 baseInstance:a7];
  }

  v17 = *(a1 + 208);

  return pxrInternal__aapl__pxrReserved__::HgiMetal::SetHasWork(v17);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::DrawIndexedIndirect(uint64_t a1, uint64_t a2, uint64_t a3, int a4, unsigned int a5, int a6, uint64_t a7, int a8)
{
  v25 = a6;
  v26 = a4;
  v24 = a8;
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPrimitiveType(*(a1 + 448));
  v22 = *(*a3 + 64);
  v23 = PrimitiveType;
  v21 = *(*a2 + 64);
  if (*(a1 + 256))
  {
    *(a1 + 256) = 0;
  }

  v14 = a5 >> 8;
  if (a5 < 0x100)
  {
    v14 = 1;
  }

  if (*(a1 + 476) >= v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = *(a1 + 476);
  }

  v19 = a5 / v15;
  v20 = v15;
  v18 = a5 / v15 + a5 - a5 / v15 * v15;
  pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_SetNumberParallelEncoders(a1, v15);
  v17[0] = &v20;
  v17[1] = &v19;
  v17[2] = &v18;
  v17[3] = a1;
  v17[4] = &v24;
  v17[5] = &v25;
  v17[6] = a7;
  v17[7] = &v26;
  v17[8] = &v21;
  v17[9] = &v22;
  v17[10] = &v23;
  v27[0] = &unk_2A2074D50;
  v27[1] = v17;
  tbb::interface7::internal::isolate_within_arena(v27, 0);
  return pxrInternal__aapl__pxrReserved__::HgiMetal::SetHasWork(*(a1 + 208));
}

pxrInternal__aapl__pxrReserved__ *pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::PushDebugGroup(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds *this, const char *a2)
{
  result = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(this);
  if (result)
  {
    if (*(this + 28))
    {
      result = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(result);
      if (!result)
      {
        return result;
      }

      Encoder = *(this + 28);
    }

    else
    {
      if (*(this + 29) == *(this + 30))
      {
        result = [objc_msgSend(MEMORY[0x29EDBA0F8] stringWithUTF8String:{a2), "copy"}];
        *(this + 58) = result;
        return result;
      }

      result = pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(result);
      if (!result)
      {
        return result;
      }

      Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(this, 0);
    }

    v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:a2];

    return [Encoder pushDebugGroup:v6];
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::PopDebugGroup(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds *this)
{
  if (*(this + 28))
  {
    if (!pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(this))
    {
      goto LABEL_8;
    }

    Encoder = *(this + 28);
  }

  else
  {
    if (*(this + 29) == *(this + 30) || !pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(this))
    {
      goto LABEL_8;
    }

    Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(this, 0);
  }

  [Encoder popDebugGroup];
LABEL_8:
  v3 = *(this + 58);
  if (v3)
  {

    *(this + 58) = 0;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::InsertMemoryBarrier(uint64_t this, const char *a2, char *a3)
{
  if (a2 != 1)
  {
    return sub_29B2C3E14(this, a2, a3);
  }

  return this;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_Submit(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v22 = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 232);
  if (*(a1 + 224))
  {
    v7 = *(a1 + 240);
    v19[0] = 0;
    v20 = 65539;
    v21 = 55;
    tbb::task_group_context::init(v19, a2, a3, a4);
    if (v6 < v7)
    {
      v18 = v19;
      v8 = tbb::internal::allocate_root_with_context_proxy::allocate(&v18, 0x38uLL);
      *(v8 - 11) = 1;
      *v8 = &unk_2A2074DD8;
      *(v8 + 8) = v7;
      *(v8 + 16) = v6;
      *(v8 + 24) = 1;
      *(v8 + 32) = &v17;
      initial_auto_partitioner_divisor = tbb::internal::get_initial_auto_partitioner_divisor(v8);
      *(v8 + 48) = 0;
      *(v8 + 52) = 5;
      *(v8 + 40) = (initial_auto_partitioner_divisor >> 1) & 0x7FFFFFFFFFFFFFFELL;
      (*(**(v8 - 40) + 16))(*(v8 - 40), v8, v8 - 8);
    }

    tbb::task_group_context::~task_group_context(v19);
    [*(a1 + 224) endEncoding];
    *(a1 + 224) = 0;
    v10 = *(a1 + 208);
    v11 = sub_29ABAAC4C(a3);
    pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(v10, v11, 0);
  }

  else
  {
    v12 = *(a1 + 240);
    if (v6 != v12)
    {
      do
      {
        v13 = *v6++;
        [v13 endEncoding];
      }

      while (v6 != v12);
      v14 = *(a1 + 208);
      v15 = sub_29ABAAC4C(a3);
      pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(v14, v15, 0);
    }
  }

  std::mutex::lock((a1 + 16));
  *(a1 + 256) = 0;
  *(a1 + 240) = *(a1 + 232);
  *(a1 + 192) = *(a1 + 184);
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  std::mutex::unlock((a1 + 16));
  return 1;
}

void sub_29ABAAC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15)
{
  tbb::internal::allocate_root_with_context_proxy::free(&a11, v15);
  tbb::task_group_context::~task_group_context(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_29ABAAC4C(uint64_t result)
{
  if (result)
  {
    if (result != 1)
    {
      v5 = v1;
      v6 = v2;
      v3[0] = "hgiMetal/graphicsCmds.mm";
      v3[1] = "_ToHgiMetal";
      v3[2] = 849;
      v3[3] = "HgiMetal::CommitCommandBufferWaitType pxrInternal__aapl__pxrReserved__::_ToHgiMetal(const HgiSubmitWaitType)";
      v4 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v3, 1, "Bad enum value for HgiSubmitWaitType");
    }

    return 2;
  }

  return result;
}

void sub_29ABAACC4(uint64_t a1)
{
  v13[9] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = v1[3];
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v11);
  v3 = **v1;
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *v1[1];
      v6 = v5;
      if (i == v3 - 1)
      {
        v6 = *v1[2];
      }

      v8 = *(v1 + 3);
      v9 = *(v1 + 2);
      v10[0] = 0;
      v10[1] = v12;
      v7 = tbb::internal::allocate_additional_child_of_proxy::allocate(v10, 0x48uLL);
      *(v7 - 11) = 1;
      *v7 = &unk_2A2074D08;
      *(v7 + 8) = i;
      *(v7 + 12) = v5 * i;
      *(v7 + 16) = v6;
      *(v7 + 24) = v2;
      *(v7 + 32) = v9;
      *(v7 + 48) = v8;
      *(v7 + 64) = v13;
      (***(v7 - 40))();
      v3 = **v1;
    }
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v11);
}

uint64_t sub_29ABAAE58(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v12);
  v2 = *(a1 + 24);
  Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(v2, *(a1 + 8));
  if (*(v2 + 448) == 4)
  {
    v4 = *(a1 + 12);
    if (v4 < *(a1 + 16) + v4)
    {
      v5 = *(v2 + 452);
      do
      {
        pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetVertexBufferOffsets((v2 + 480), Encoder, v4);
        [Encoder drawPatches:v5 patchIndexBuffer:0 patchIndexBufferOffset:0 indirectBuffer:**(a1 + 48) indirectBufferOffset:**(a1 + 32) + **(a1 + 40) * v4++];
      }

      while (v4 < *(a1 + 16) + *(a1 + 12));
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_VegaIndirectFix(v2);
    v10 = *(a1 + 12);
    for (i = *(a1 + 16) + v10; v10 < i; i = *(a1 + 16) + *(a1 + 12))
    {
      pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetVertexBufferOffsets((v2 + 480), Encoder, v10);
      [Encoder drawPrimitives:**(a1 + 56) indirectBuffer:**(a1 + 48) indirectBufferOffset:**(a1 + 32) + **(a1 + 40) * v10++];
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v12;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v12, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v12, *(a1 + 64));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v12);
  return 0;
}

void sub_29ABAAFD0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

void sub_29ABAAFF0(uint64_t a1)
{
  v15[9] = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 8);
  v2 = v1[3];
  pxrInternal__aapl__pxrReserved__::WorkDispatcher::WorkDispatcher(v13);
  v3 = **v1;
  if (v3)
  {
    for (i = 0; i < v3; ++i)
    {
      v5 = *v1[1];
      v6 = v5;
      if (i == v3 - 1)
      {
        v6 = *v1[2];
      }

      v10 = *(v1 + 3);
      v11 = *(v1 + 2);
      v9 = *(v1 + 4);
      v7 = v1[10];
      v12[0] = 0;
      v12[1] = v14;
      v8 = tbb::internal::allocate_additional_child_of_proxy::allocate(v12, 0x60uLL);
      *(v8 - 11) = 1;
      *v8 = &unk_2A2074D90;
      *(v8 + 8) = i;
      *(v8 + 12) = v5 * i;
      *(v8 + 16) = v6;
      *(v8 + 24) = v2;
      *(v8 + 32) = v11;
      *(v8 + 48) = v10;
      *(v8 + 64) = v9;
      *(v8 + 80) = v7;
      *(v8 + 88) = v15;
      (***(v8 - 40))();
      v3 = **v1;
    }
  }

  pxrInternal__aapl__pxrReserved__::WorkDispatcher::~WorkDispatcher(v13);
}

uint64_t sub_29ABAB1A0(uint64_t a1)
{
  pxrInternal__aapl__pxrReserved__::TfErrorMark::TfErrorMark(&v12);
  v2 = *(a1 + 24);
  Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(v2, *(a1 + 8));
  if (*(v2 + 448) == 4)
  {
    v4 = *(a1 + 12);
    if (v4 < *(a1 + 16) + v4)
    {
      v5 = *(v2 + 452);
      do
      {
        pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetVertexBufferOffsets((v2 + 480), Encoder, v4);
        pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetPatchBaseOffsets(v2 + 480, Encoder, *(**(a1 + 48) + ((**(a1 + 32) + **(a1 + 40) * v4) & 0xFFFFFFFC)));
        [Encoder drawIndexedPatches:v5 patchIndexBuffer:0 patchIndexBufferOffset:0 controlPointIndexBuffer:**(a1 + 64) controlPointIndexBufferOffset:0 indirectBuffer:**(a1 + 72) indirectBufferOffset:**(a1 + 56) + **(a1 + 40) * v4++];
      }

      while (v4 < *(a1 + 16) + *(a1 + 12));
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::_VegaIndirectFix(v2);
    v10 = *(a1 + 12);
    for (i = *(a1 + 16) + v10; v10 < i; i = *(a1 + 16) + *(a1 + 12))
    {
      pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::SetVertexBufferOffsets((v2 + 480), Encoder, v10);
      [Encoder drawIndexedPrimitives:**(a1 + 80) indexType:1 indexBuffer:**(a1 + 64) indexBufferOffset:0 indirectBuffer:**(a1 + 72) indirectBufferOffset:**(a1 + 56) + **(a1 + 40) * v10++];
    }
  }

  v6 = atomic_load(&pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_instance);
  if (!v6)
  {
    pxrInternal__aapl__pxrReserved__::TfSingleton<pxrInternal__aapl__pxrReserved__::TfDiagnosticMgr>::_CreateInstance();
  }

  v7 = v12;
  v8 = atomic_load((v6 + 144));
  if (v7 < v8 && !pxrInternal__aapl__pxrReserved__::TfErrorMark::_IsCleanImpl(&v12, v6))
  {
    pxrInternal__aapl__pxrReserved__::WorkDispatcher::_TransportErrors(&v12, *(a1 + 88));
  }

  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(&v12);
  return 0;
}

void sub_29ABAB364(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  pxrInternal__aapl__pxrReserved__::TfErrorMark::~TfErrorMark(va);
  _Unwind_Resume(a1);
}

char *sub_29ABAB380(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v7 = __src;
    v9 = a1[1];
    v10 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3)) >= a5)
    {
      v18 = v9 - __dst;
      if ((0xAAAAAAAAAAAAAAABLL * ((v9 - __dst) >> 3)) >= a5)
      {
        v23 = 3 * a5;
        v24 = &__dst[24 * a5];
        v25 = &v9[-24 * a5];
        v26 = a1[1];
        while (v25 < v9)
        {
          v27 = *v25;
          *(v26 + 16) = *(v25 + 2);
          *v26 = v27;
          v26 += 24;
          v25 += 24;
        }

        a1[1] = v26;
        if (v9 != v24)
        {
          memmove(&__dst[24 * a5], __dst, v9 - v24);
        }

        v32 = 8 * v23;
        v33 = v5;
        v34 = v7;
      }

      else
      {
        v19 = &__src[v18];
        v20 = a1[1];
        v21 = v20;
        while (v19 != a4)
        {
          v22 = *v19;
          *(v21 + 16) = *(v19 + 2);
          *v21 = v22;
          v21 += 24;
          v19 += 24;
          v20 += 24;
        }

        a1[1] = v20;
        if (v18 < 1)
        {
          return v5;
        }

        v28 = &__dst[24 * a5];
        v29 = v20 - 24 * a5;
        v30 = v20;
        while (v29 < v9)
        {
          v31 = *v29;
          *(v30 + 16) = *(v29 + 16);
          *v30 = v31;
          v30 += 24;
          v29 += 24;
        }

        a1[1] = v30;
        if (v21 != v28)
        {
          memmove(&__dst[24 * a5], __dst, v20 - v28);
        }

        v33 = v5;
        v34 = v7;
        v32 = v18;
      }

      memmove(v33, v34, v32);
      return v5;
    }

    v11 = *a1;
    v12 = a5 - 0x5555555555555555 * (&v9[-*a1] >> 3);
    if (v12 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v13 = __dst - v11;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3);
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v12;
    }

    v16 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    if (v15)
    {
      v17 = sub_29A012C48(a1, v15);
    }

    else
    {
      v17 = 0;
    }

    v35 = &v17[24 * v16];
    v36 = 3 * a5;
    v37 = &v35[24 * a5];
    v38 = 8 * v36;
    v39 = v35;
    do
    {
      v40 = *v7;
      *(v39 + 2) = *(v7 + 2);
      *v39 = v40;
      v39 += 24;
      v7 += 24;
      v38 -= 24;
    }

    while (v38);
    v41 = &v17[24 * v15];
    memcpy(v37, v5, a1[1] - v5);
    v42 = *a1;
    v43 = &v37[a1[1] - v5];
    a1[1] = v5;
    v44 = v5 - v42;
    v45 = &v35[-(v5 - v42)];
    memcpy(v45, v42, v44);
    v46 = *a1;
    *a1 = v45;
    a1[1] = v43;
    a1[2] = v41;
    if (v46)
    {
      operator delete(v46);
    }

    return v35;
  }

  return v5;
}

uint64_t sub_29ABAB5F8(tbb::internal::allocate_continuation_proxy *this)
{
  v36 = *MEMORY[0x29EDCA608];
  if (!*(this + 5))
  {
    *(this + 5) = 1;
    if (*(this - 11) < 0)
    {
      v2 = *(this - 4);
      if (*(v2 - 24) >= 2)
      {
        __dmb(0xBu);
        *(v2 + 8) = 1;
        v3 = *(this + 52);
        if (v3 <= 1)
        {
          LOBYTE(v3) = 1;
        }

        *(this + 52) = v3 + 1;
      }
    }
  }

  v5 = (this + 8);
  v4 = *(this + 1);
  v7 = *(this + 2);
  v6 = *(this + 3);
  v8 = v4 - v7;
  if (v6 < v8)
  {
    v9 = *(this + 5);
    if (v9 > 1)
    {
      goto LABEL_12;
    }

    if (v9 && *(this + 52))
    {
      --*(this + 52);
      *(this + 5) = 0;
LABEL_12:
      while (1)
      {
        v10 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v10 - 11) = 1;
        *v10 = &unk_2A204C520;
        __dmb(0xBu);
        v10[8] = 0;
        *(this - 4) = v10;
        *(v10 - 3) = 2;
        v11 = tbb::internal::allocate_child_proxy::allocate(v10, 0x38uLL);
        *(v11 - 11) = 1;
        *v11 = &unk_2A2074DD8;
        v12 = *(this + 1);
        *(v11 + 8) = v12;
        v13 = *(this + 2) + 8 * ((((v12 - *(this + 2)) >> 3) + ((v12 - *(this + 2)) >> 63)) >> 1);
        *(this + 1) = v13;
        *(v11 + 16) = v13;
        *(v11 + 24) = *(this + 3);
        *(v11 + 32) = *(this + 4);
        v14 = *(this + 5) >> 1;
        *(this + 5) = v14;
        *(v11 + 40) = v14;
        *(v11 + 48) = 2;
        *(v11 + 52) = *(this + 52);
        (***(v11 - 40))();
        v7 = *(this + 2);
        v6 = *(this + 3);
        v4 = *(this + 1);
        v8 = v4 - v7;
        if (v6 >= v8)
        {
          break;
        }

        v15 = *(this + 5);
        if (v15 <= 1)
        {
          if (!v15 || !*(this + 52))
          {
            break;
          }

          --*(this + 52);
          *(this + 5) = 0;
        }
      }
    }
  }

  if (v6 < v8 && *(this + 52))
  {
    *v33 = 0x10000;
    v34 = *v5;
    v35 = *(this + 3);
    while (1)
    {
      *&v16 = sub_29A4C1E3C(v33, *(this + 52)).n128_u64[0];
      v17 = *(*(this - 4) + 8);
      __dmb(0xBu);
      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = *(this + 52) + 1;
      *(this + 52) = v18;
      v19 = v33[2];
      if (v33[2] < 2u)
      {
        v27 = v33[0];
        if (v33[v33[0] + 3] >= v18 || *(&v34 + 3 * v33[0] + 2) >= ((*(&v34 + 3 * v33[0]) - *(&v34 + 3 * v33[0] + 1)) >> 3))
        {
          goto LABEL_24;
        }
      }

      else
      {
        v20 = v33[1];
        v21 = v33[v33[1] + 3];
        v22 = tbb::internal::allocate_continuation_proxy::allocate(this, 0x10uLL);
        *(v22 - 11) = 1;
        *v22 = &unk_2A204C520;
        __dmb(0xBu);
        v22[8] = 0;
        *(this - 4) = v22;
        *(v22 - 3) = 2;
        v23 = tbb::internal::allocate_child_proxy::allocate(v22, 0x38uLL);
        v24 = &v34 + 24 * v20;
        *(v23 - 11) = 1;
        *v23 = &unk_2A2074DD8;
        v25 = *v24;
        *(v23 + 24) = *(v24 + 2);
        *(v23 + 8) = v25;
        *(v23 + 32) = *(this + 4);
        v26 = *(this + 5) >> 1;
        *(this + 5) = v26;
        *(v23 + 40) = v26;
        *(v23 + 48) = 2;
        *(v23 + 52) = *(this + 52) - v21;
        (***(v23 - 40))();
        v19 = --v33[2];
        v33[1] = (v33[1] + 1) & 7;
      }

LABEL_28:
      if (!v19 || tbb::task_group_context::is_group_execution_cancelled(*(this - 7)))
      {
        return 0;
      }
    }

    v27 = v33[0];
LABEL_24:
    v28 = &v34 + 3 * v27;
    v29 = *v28;
    v30 = v28[1];
    if (v30 != *v28)
    {
      do
      {
        [*v30++ endEncoding];
      }

      while (v30 != v29);
      LOBYTE(v27) = v33[0];
    }

    v19 = --v33[2];
    v33[0] = (v27 - 1) & 7;
    goto LABEL_28;
  }

  while (v7 != v4)
  {
    v31 = *v7++;
    [v31 endEncoding];
  }

  return 0;
}

id pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::_CreateVertexDescriptor(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline *this)
{
  result = objc_alloc_init(MEMORY[0x29EDBB680]);
  *(this + 45) = result;
  v3 = *(this + 23);
  v4 = *(this + 24);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      [objc_msgSend(objc_msgSend(*(this + 45) "layouts")];
      v6 = v3[8];
      if (v6 > 5)
      {
        v7 = 1;
        v8 = 1;
      }

      else
      {
        v7 = qword_29B6C9AD8[v6];
        v8 = qword_29B6C9B08[v6];
      }

      [objc_msgSend(objc_msgSend(*(this + 45) "layouts")];
      result = [objc_msgSend(objc_msgSend(*(this + 45) "layouts")];
      v9 = *(v3 + 1);
      v10 = *(v3 + 2);
      while (v9 != v10)
      {
        v11 = v9[2];
        [objc_msgSend(objc_msgSend(*(this + 45) "attributes")];
        [objc_msgSend(objc_msgSend(*(this + 45) "attributes")];
        result = [objc_msgSend(objc_msgSend(*(this + 45) "attributes")];
        v9 += 3;
      }

      ++v5;
      v3 += 10;
    }

    while (v3 != v4);
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::_CreateDepthStencilState(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline *this, pxrInternal__aapl__pxrReserved__::HgiMetal *a2)
{
  v4 = objc_alloc_init(MEMORY[0x29EDBB5A0]);
  if (pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(v4))
  {
    v5 = (this + 8);
    if (*(this + 31) < 0)
    {
      v5 = *v5;
    }

    [v4 setLabel:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v5)}];
  }

  if (*(this + 56) == 1)
  {
    [v4 setDepthCompareFunction:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetCompareFunction(*(this + 15))];
    v6 = *(this + 57);
  }

  else
  {
    [v4 setDepthCompareFunction:7];
    v6 = 0;
  }

  [v4 setDepthWriteEnabled:v6 & 1];
  if (*(this + 76) == 1)
  {
    [v4 setBackFaceStencil:sub_29ABAC2D0(this + 20)];
    [v4 setFrontFaceStencil:sub_29ABAC2D0(this + 27)];
  }

  *(this + 46) = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newDepthStencilStateWithDescriptor:v4];

  if (!*(this + 46))
  {
    sub_29B2C3E78(v9, v7, v8);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::_CreateRenderPipelineState(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline *this, pxrInternal__aapl__pxrReserved__::HgiMetal *a2)
{
  v4 = objc_alloc_init(MEMORY[0x29EDBB608]);
  if (pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(v4))
  {
    v5 = (this + 8);
    if (*(this + 31) < 0)
    {
      v5 = *v5;
    }

    [v4 setLabel:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v5)}];
  }

  [v4 setRasterSampleCount:*(this + 35)];
  [v4 setSupportIndirectCommandBuffers:(*(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(a2) + 48) >> 17) & 1];
  [v4 setInputPrimitiveTopology:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPrimitiveClass(*(this + 8))];
  v6 = *(this + 5);
  if (*(this + 8) != 4)
  {
    [v4 setVertexFunction:*(v6 + 10)];
    goto LABEL_33;
  }

  v7 = *(this + 83);
  if (v7 != 2)
  {
    if (v7 == 1)
    {
      [v4 setVertexFunction:*(v6 + 14)];
      [v4 setTessellationFactorStepFunction:0];
      [v4 setTessellationPartitionMode:0];
    }

    else if (v7)
    {
      v31 = "hgiMetal/graphicsPipeline.mm";
      v32 = "_CreateRenderPipelineState";
      v33 = 202;
      v34 = "void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::_CreateRenderPipelineState(HgiMetal *)";
      v35 = 0;
      pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "Unexpected tess factor mode");
    }

    else
    {
      [v4 setVertexFunction:*(v6 + 13)];
      [v4 setTessellationFactorStepFunction:0];
    }

    goto LABEL_28;
  }

  [v4 setVertexFunction:*(v6 + 13)];
  [v4 setTessellationFactorStepFunction:1];
  ShaderFunctions = pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram::GetShaderFunctions(v6);
  v10 = *ShaderFunctions;
  v9 = ShaderFunctions[1];
  if (*ShaderFunctions == v9)
  {
    goto LABEL_27;
  }

  v11 = 0;
  v12 = *ShaderFunctions;
  do
  {
    v13 = *v12;
    v12 += 2;
    if (*(pxrInternal__aapl__pxrReserved__::HgiShaderFunction::GetDescriptor(v13) + 24) == 128)
    {
      v11 = v10;
    }

    v10 = v12;
  }

  while (v12 != v9);
  if (!v11)
  {
LABEL_27:
    v31 = "hgiMetal/graphicsPipeline.mm";
    v32 = "_SetTessellationStateFromShaderFunctions";
    v33 = 116;
    v34 = "void pxrInternal__aapl__pxrReserved__::_SetTessellationStateFromShaderFunctions(MTLRenderPipelineDescriptor *, const HgiShaderFunctionHandleVector &)";
    v35 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v31, 1, "Did not find a post tess vertex function");
  }

  else
  {
    v14 = *(pxrInternal__aapl__pxrReserved__::HgiShaderFunction::GetDescriptor(*v11) + 268);
    v15 = 1;
    if (v14 == 2)
    {
      v15 = 2;
    }

    if (v14 == 1)
    {
      v16 = 3;
    }

    else
    {
      v16 = v15;
    }

    [v4 setTessellationPartitionMode:v16];
    v17 = *(pxrInternal__aapl__pxrReserved__::HgiShaderFunction::GetDescriptor(*v11) + 272);
    if (v17 == 1)
    {
      v18 = v4;
      v19 = 1;
      goto LABEL_49;
    }

    if (!v17)
    {
      v18 = v4;
      v19 = 0;
LABEL_49:
      [v18 setTessellationOutputWindingOrder:v19];
    }
  }

LABEL_28:
  if ([v4 inputPrimitiveTopology] == 2)
  {
    [v4 setInputPrimitiveTopology:3];
  }

  if (*(this + 81) == 2)
  {
    *(this + 36) = 1;
  }

  [v4 setTessellationOutputWindingOrder:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetWinding(*(this + 39)) == 0];
  [v4 setTessellationControlPointIndexType:2];
  [v4 setMaxTessellationFactor:64];
LABEL_33:
  v20 = *(v6 + 11);
  if (v20)
  {
    if (*(this + 160) == 1)
    {
      [v4 setFragmentFunction:?];
      v20 = 1;
    }

    else
    {
      v20 = 0;
    }
  }

  [v4 setRasterizationEnabled:v20];
  v21 = *(this + 26);
  if (*(this + 27) != v21)
  {
    v22 = 0;
    v23 = 0;
    do
    {
      v24 = v21 + v22;
      v25 = [objc_msgSend(v4 "colorAttachments")];
      [v25 setPixelFormat:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(*v24, *(v24 + 4))];
      [v25 setWriteMask:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetColorWriteMask(*(v24 + 32))];
      if (*(v24 + 36) == 1)
      {
        [v25 setBlendingEnabled:1];
        [v25 setSourceRGBBlendFactor:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetBlendFactor(*(v24 + 40))];
        [v25 setDestinationRGBBlendFactor:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetBlendFactor(*(v24 + 44))];
        [v25 setSourceAlphaBlendFactor:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetBlendFactor(*(v24 + 52))];
        [v25 setDestinationAlphaBlendFactor:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetBlendFactor(*(v24 + 56))];
        [v25 setRgbBlendOperation:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetBlendEquation(*(v24 + 48))];
        [v25 setAlphaBlendOperation:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetBlendEquation(*(v24 + 60))];
      }

      else
      {
        [v25 setBlendingEnabled:0];
      }

      ++v23;
      v21 = *(this + 26);
      v22 += 80;
    }

    while (v23 < 0xCCCCCCCCCCCCCCCDLL * ((*(this + 27) - v21) >> 4));
  }

  PixelFormat = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPixelFormat(*(this + 58), *(this + 59));
  [v4 setDepthAttachmentPixelFormat:PixelFormat];
  if ((*(this + 236) & 4) != 0)
  {
    [v4 setStencilAttachmentPixelFormat:PixelFormat];
  }

  [v4 setSampleCount:*(this + 35)];
  [v4 setAlphaToCoverageEnabled:*(this + 137)];
  [v4 setAlphaToOneEnabled:*(this + 138)];
  [v4 setVertexDescriptor:*(this + 45)];
  v30 = 0;
  *(this + 47) = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newRenderPipelineStateWithDescriptor:v4 error:&v30];

  if (!*(this + 47))
  {
    v27 = [v30 localizedDescription];
    v31 = "hgiMetal/graphicsPipeline.mm";
    v32 = "_CreateRenderPipelineState";
    v33 = 322;
    v34 = "void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::_CreateRenderPipelineState(HgiMetal *)";
    v35 = 0;
    v28 = [v27 UTF8String];
    pxrInternal__aapl__pxrReserved__::Tf_PostWarningHelper(&v31, "Failed to created pipeline state, error %s", v29, v28);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::~HgiMetalGraphicsPipeline(pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline *this)
{
  v2 = *(this + 47);
  if (v2)
  {
  }

  v3 = *(this + 46);
  if (v3)
  {
  }

  v4 = *(this + 45);
  if (v4)
  {
  }

  v5 = *(this + 48);
  if (v5)
  {
  }

  pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::~HgiGraphicsPipeline(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::~HgiMetalGraphicsPipeline(this);

  operator delete(v1);
}

id sub_29ABAC2D0(unsigned int *a1)
{
  v2 = objc_alloc_init(MEMORY[0x29EDBB640]);
  [v2 setStencilCompareFunction:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetCompareFunction(*a1)];
  [v2 setStencilFailureOperation:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetStencilOp(a1[2])];
  [v2 setDepthFailureOperation:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetStencilOp(a1[3])];
  [v2 setDepthStencilPassOperation:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetStencilOp(a1[4])];
  [v2 setReadMask:a1[5]];
  [v2 setWriteMask:a1[6]];
  return v2;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::BindPipeline(uint64_t a1, void *a2)
{
  [a2 setRenderPipelineState:*(a1 + 376)];
  if (*(a1 + 32) == 4)
  {
    v6 = *(a1 + 384);
    if (!v6)
    {
      if (*(a1 + 324))
      {
        v13 = 0;
        v12 = vdup_n_s16(0x3C00u);
        v7 = [a2 device];
        v8 = 12;
      }

      else
      {
        v12 = 0x3C003C003C00;
        v7 = [a2 device];
        v8 = 8;
      }

      v6 = [v7 newBufferWithBytes:&v12 length:v8 options:0];
      *(a1 + 384) = v6;
    }

    [a2 setTessellationFactorBuffer:v6 offset:0 instanceStride:0];
  }

  if (*(a1 + 64) == 1)
  {
    LODWORD(v4) = *(a1 + 68);
    LODWORD(v5) = *(a1 + 72);
    [a2 setDepthBias:v4 slopeScale:v5 clamp:0.0];
  }

  if (*(a1 + 76) == 1)
  {
    [a2 setStencilFrontReferenceValue:*(a1 + 84) backReferenceValue:*(a1 + 112)];
  }

  [a2 setCullMode:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetCullMode(*(a1 + 152))];
  [a2 setTriangleFillMode:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPolygonMode(*(a1 + 144))];
  [a2 setFrontFacingWinding:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetWinding(*(a1 + 156))];
  result = [a2 setDepthStencilState:*(a1 + 368)];
  if (*(a1 + 161) == 1)
  {
    result = [a2 setDepthClipMode:1];
  }

  if (*(a1 + 148) != 1.0)
  {
    return sub_29B2C3EE0(&v12, v10, v11);
  }

  return result;
}

uint64_t sub_29ABAC4EC()
{
  v1 = nullsub_1597;
  return sub_29ABADA1C(&var8);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::HgiMetal(uint64_t a1, id a2)
{
  v22[1] = *MEMORY[0x29EDCA608];
  v4 = pxrInternal__aapl__pxrReserved__::Hgi::Hgi(a1);
  *v4 = &unk_2A2074E58;
  v4[2] = a2;
  *(v4 + 9) = 0u;
  v4[18] = 850045863;
  *(v4 + 11) = 0u;
  *(v4 + 13) = 0u;
  *(v4 + 15) = 0u;
  *(v4 + 27) = 0u;
  v5 = (v4 + 27);
  v4[17] = 0;
  *(v4 + 19) = 0u;
  *(v4 + 21) = 0u;
  *(v4 + 23) = 0u;
  *(v4 + 25) = 0u;
  *(v4 + 229) = 0;
  v6 = operator new(8uLL);
  *v6 = 0;
  *(a1 + 240) = v6;
  if (!a2)
  {
    a2 = MTLCreateSystemDefaultDevice();
    *(a1 + 16) = a2;
  }

  v7 = [a2 newCommandQueueWithMaxCommandBufferCount:256];
  *(a1 + 24) = v7;
  v8 = [v7 commandBuffer];
  *(a1 + 32) = v8;
  v9 = v8;
  v10 = operator new(0x50uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalCapabilities::HgiMetalCapabilities(v10, *(a1 + 16));
  sub_29ABAC84C(v5, v10);
  v11 = operator new(0xC8uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::HgiMetalIndirectCommandEncoder(v11, a1);
  sub_29ABAC888((a1 + 224), v11);
  v12 = objc_alloc_init(MEMORY[0x29EDBB518]);
  [v12 setDataType:60];
  v13 = *(a1 + 16);
  v22[0] = v12;
  *(a1 + 48) = [v13 newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", v22, 1)}];

  v14 = objc_alloc_init(MEMORY[0x29EDBB518]);
  [v14 setDataType:59];
  v15 = *(a1 + 16);
  v21 = v14;
  *(a1 + 56) = [v15 newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", &v21, 1)}];

  v16 = objc_alloc_init(MEMORY[0x29EDBB518]);
  [v16 setDataType:58];
  v17 = *(a1 + 16);
  v20 = v16;
  *(a1 + 64) = [v17 newArgumentEncoderWithArguments:{objc_msgSend(MEMORY[0x29EDB8D80], "arrayWithObjects:count:", &v20, 1)}];

  pxrInternal__aapl__pxrReserved__::HgiMetalSetupMetalDebug(v18);
  *(a1 + 40) = [objc_msgSend(MEMORY[0x29EDBB540] "sharedCaptureManager")];
  [*(a1 + 40) setLabel:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithFormat:", @"Full Hydra Frame"}];
  [objc_msgSend(MEMORY[0x29EDBB540] "sharedCaptureManager")];
  return a1;
}

void sub_29ABAC7C4(_Unwind_Exception *a1)
{
  operator delete(v5);
  v7 = *(v1 + 240);
  *(v1 + 240) = 0;
  if (v7)
  {
    sub_29ABADB3C(v1 + 240, v7);
  }

  sub_29ABAC888((v1 + 224), 0);
  sub_29ABAC84C(v4, 0);
  std::mutex::~mutex(v3);
  v8 = *(v1 + 120);
  if (v8)
  {
    *(v1 + 128) = v8;
    operator delete(v8);
  }

  sub_29A10C468(v2);
  pxrInternal__aapl__pxrReserved__::Hgi::~Hgi(v1);
  _Unwind_Resume(a1);
}

void sub_29ABAC84C(pxrInternal__aapl__pxrReserved__::HgiMetalCapabilities **a1, pxrInternal__aapl__pxrReserved__::HgiMetalCapabilities *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalCapabilities::~HgiMetalCapabilities(v3);

    operator delete(v4);
  }
}

void sub_29ABAC888(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder **a1, pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::~HgiMetalIndirectCommandEncoder(v3);

    operator delete(v4);
  }
}

void pxrInternal__aapl__pxrReserved__::HgiMetal::~HgiMetal(pxrInternal__aapl__pxrReserved__::HgiMetal *this)
{
  [*(this + 4) commit];
  [*(this + 4) waitUntilCompleted];

  std::mutex::lock((this + 144));
  while (1)
  {
    v2 = *(this + 14);
    if (!v2)
    {
      break;
    }

    --*(this + 14);
    sub_29A10FFEC(this + 9, 1);
  }

  std::mutex::unlock((this + 144));
  v3 = *(this + 30);
  *(this + 30) = 0;
  if (v3)
  {
    sub_29ABADB3C(this + 240, v3);
  }

  sub_29ABAC888(this + 28, 0);
  sub_29ABAC84C(this + 27, 0);
  std::mutex::~mutex((this + 144));
  v4 = *(this + 15);
  if (v4)
  {
    *(this + 16) = v4;
    operator delete(v4);
  }

  sub_29A10C468(this + 9);

  pxrInternal__aapl__pxrReserved__::Hgi::~Hgi(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetal::~HgiMetal(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::CreateGraphicsCmds@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x218uLL);
  result = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::HgiMetalGraphicsCmds(v6, a1, a2);
  *a3 = v6;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::CreateComputeCmds@<X0>(pxrInternal__aapl__pxrReserved__::HgiMetal *this@<X0>, const pxrInternal__aapl__pxrReserved__::HgiComputeCmdsDesc *a2@<X1>, pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds **a3@<X8>)
{
  v6 = operator new(0x40uLL);
  result = pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::HgiMetalComputeCmds(v6, this, a2);
  if (!*(this + 26))
  {
    *(this + 26) = v6;
  }

  *a3 = v6;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateBlitCmds@<X0>(pxrInternal__aapl__pxrReserved__::HgiMetal *this@<X0>, pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds **a2@<X8>)
{
  v4 = operator new(0x38uLL);
  result = pxrInternal__aapl__pxrReserved__::HgiMetalBlitCmds::HgiMetalBlitCmds(v4, this);
  if (!*(this + 26))
  {
    *(this + 26) = v4;
  }

  *a2 = v4;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateTexture(id *a1, uint64_t a2)
{
  v12 = 0;
  v4 = [a1[2] heapTextureSizeAndAlignWithDescriptor:{pxrInternal__aapl__pxrReserved__::HgiMetalTexture::CreateMetalTextureDescriptor(a1, a2, &v12)}];
  v5 = getpagesize();
  v6 = (ceil(v4 / v5) * v5);
  v7 = [a1[2] recommendedMaxWorkingSetSize];
  if (v7 - [a1[2] currentAllocatedSize] <= v6)
  {
    v10[0] = "hgiMetal/hgi.mm";
    v10[1] = "CreateTexture";
    v10[2] = 213;
    v10[3] = "virtual HgiTextureHandle pxrInternal__aapl__pxrReserved__::HgiMetal::CreateTexture(const HgiTextureDesc &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v10, 1, "Texture size exceeds recommended threshold");
    return 0;
  }

  else
  {
    v8 = operator new(0x68uLL);
    pxrInternal__aapl__pxrReserved__::HgiMetalTexture::HgiMetalTexture(v8, a1, a2);
    pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  }

  return v8;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyTexture(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateTextureView(atomic_ullong *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    v8.n128_u64[0] = "hgiMetal/hgi.mm";
    v8.n128_u64[1] = "CreateTextureView";
    v9 = 230;
    v10 = "virtual HgiTextureViewHandle pxrInternal__aapl__pxrReserved__::HgiMetal::CreateTextureView(const HgiTextureViewDesc &)";
    v11 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(&v8, 1, "Source texture is null");
  }

  v4 = operator new(0x68uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalTexture::HgiMetalTexture(v4, a1, a2);
  UniqueId = pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  v8.n128_u64[0] = v4;
  v8.n128_u64[1] = UniqueId;
  v6 = operator new(0x18uLL);
  pxrInternal__aapl__pxrReserved__::HgiTextureView::HgiTextureView(v6);
  pxrInternal__aapl__pxrReserved__::HgiTextureView::SetViewTexture(v6, &v8);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  return v6;
}

pxrInternal__aapl__pxrReserved__::HgiTextureView *pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyTextureView(uint64_t a1, uint64_t a2)
{
  ViewTexture = pxrInternal__aapl__pxrReserved__::HgiTextureView::GetViewTexture(*a2);
  v5 = *ViewTexture;
  if (*(a1 + 236) == 1)
  {
    v6 = ViewTexture[1];
    v7 = *(a1 + 32);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3321888768;
    v12[2] = sub_29ABACEF8;
    v12[3] = &unk_2A2074F48;
    v12[4] = v5;
    v12[5] = v6;
    [v7 addCompletedHandler:v12];
  }

  else if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v8 = *a2;
  v11 = 0uLL;
  v9 = pxrInternal__aapl__pxrReserved__::HgiTextureView::SetViewTexture(v8, &v11);
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result, v9);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_29ABACEF8(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 sub_29ABACF28(__n128 *a1, __n128 *a2)
{
  result = a2[2];
  a1[2] = result;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateSampler(atomic_ullong *a1, uint64_t a2)
{
  v4 = operator new(0x58uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalSampler::HgiMetalSampler(v4, a1, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroySampler(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = [*(a1 + 16) recommendedMaxWorkingSetSize];
  if (v5 - [*(a1 + 16) currentAllocatedSize] <= v4)
  {
    v8[0] = "hgiMetal/hgi.mm";
    v8[1] = "CreateBuffer";
    v8[2] = 276;
    v8[3] = "virtual HgiBufferHandle pxrInternal__aapl__pxrReserved__::HgiMetal::CreateBuffer(const HgiBufferDesc &)";
    v9 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v8, 1, "Buffer size exceeds recommended threshold");
    return 0;
  }

  else
  {
    v6 = operator new(0x48uLL);
    pxrInternal__aapl__pxrReserved__::HgiMetalBuffer::HgiMetalBuffer(v6, a1, a2);
    pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(a1);
  }

  return v6;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyBuffer(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateShaderFunction(pxrInternal__aapl__pxrReserved__::HgiMetal *this, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a2)
{
  v4 = operator new(0x198uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::HgiMetalShaderFunction(v4, this, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyShaderFunction(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateShaderProgram(atomic_ullong *this, const pxrInternal__aapl__pxrReserved__::HgiShaderProgramDesc *a2)
{
  v4 = operator new(0x78uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderProgram::HgiMetalShaderProgram(v4, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyShaderProgram(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyResourceBindings(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateGraphicsPipeline(pxrInternal__aapl__pxrReserved__::HgiMetal *this, const pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *a2)
{
  v4 = operator new(0x188uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::HgiMetalGraphicsPipeline(v4, this, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyGraphicsPipeline(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline *pxrInternal__aapl__pxrReserved__::HgiMetal::CreateComputePipeline(pxrInternal__aapl__pxrReserved__::HgiMetal *this, const pxrInternal__aapl__pxrReserved__::HgiComputePipelineDesc *a2)
{
  v4 = operator new(0x40uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalComputePipeline::HgiMetalComputePipeline(v4, this, a2);
  pxrInternal__aapl__pxrReserved__::Hgi::GetUniqueId(this);
  return v4;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::DestroyComputePipeline(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (*a2)
  {
    result = (*(*result + 8))(result);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::GetAPIName(pxrInternal__aapl__pxrReserved__::HgiMetal *this)
{
  v1 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  if (!v1)
  {
    v1 = sub_29AB8834C(&pxrInternal__aapl__pxrReserved__::HgiTokens);
  }

  return v1 + 24;
}

void **pxrInternal__aapl__pxrReserved__::HgiMetal::StartFrame(pxrInternal__aapl__pxrReserved__::HgiMetal *this)
{
  v2 = *(this + 30);
  result = objc_alloc_init(MEMORY[0x29EDB9F38]);
  *v2 = result;
  v4 = *(this + 58);
  *(this + 58) = v4 + 1;
  if (!v4)
  {
    [*(this + 5) beginScope];
    result = [objc_msgSend(MEMORY[0x29EDBB540] "sharedCaptureManager")];
    if (result)
    {

      return pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(this, 0, 1);
    }
  }

  return result;
}

void **pxrInternal__aapl__pxrReserved__::HgiMetal::CommitPrimaryCommandBuffer(void **result, int a2, int a3)
{
  v3 = result;
  if ((*(result + 236) & 1) != 0 || a3)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetal::CommitSecondaryCommandBuffer(result, result[4], a2);

    v4 = [v3[3] commandBuffer];
    v3[4] = v4;
    result = v4;
    *(v3 + 236) = 0;
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::HgiMetal::EndFrame(pxrInternal__aapl__pxrReserved__::HgiMetal *this)
{
  v2 = *(this + 58) - 1;
  *(this + 58) = v2;
  if (!v2)
  {
    [*(this + 5) endScope];
  }

  v3 = *(this + 30);
  result = *v3;
  if (*v3)
  {
    result = [result drain];
    *v3 = 0;
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryCommandBuffer(pxrInternal__aapl__pxrReserved__::HgiMetal *this, pxrInternal__aapl__pxrReserved__::HgiCmds *a2, int a3)
{
  if (*(this + 236) == 1)
  {
    v3 = *(this + 26);
    if (v3 && v3 != a2)
    {
      return 0;
    }
  }

  if (a3)
  {
    *(this + 236) = 1;
  }

  return *(this + 4);
}

void *pxrInternal__aapl__pxrReserved__::HgiMetal::GetSecondaryCommandBuffer(id *this)
{
  v1 = [this[3] commandBuffer];
  v2 = v1;
  return v1;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::CommitSecondaryCommandBuffer(void *a1, void *a2, int a3)
{
  v6 = a1[15];
  v5 = a1[16];
  if (v6 != v5)
  {
    a1[15] = 0;
    a1[16] = 0;
    a1[17] = 0;
    v7 = a1[4];
    v9 = MEMORY[0x29EDCA5F8];
    v10 = 3321888768;
    v11 = sub_29ABAD7E0;
    v12 = &unk_2A2074F78;
    v13 = a1;
    __p = 0;
    v15 = 0;
    v16 = 0;
    sub_29ABADDD0(&__p, v6, v5, (v5 - v6) >> 3);
    [v7 addCompletedHandler:&v9];
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }

    if (v6)
    {
      operator delete(v6);
    }
  }

  result = [a2 commit];
  if (a3 == 2)
  {
    return [a2 waitUntilCompleted];
  }

  if (a3 == 1)
  {
    return [a2 waitUntilScheduled];
  }

  return result;
}

void sub_29ABAD7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABAD7E0(void *a1)
{
  v2 = a1[4];
  std::mutex::lock((v2 + 144));
  v4 = a1[5];
  v3 = a1[6];
  while (v4 != v3)
  {
    v5 = *v4;
    sub_29ABADB90(v2 + 72, &v5);
    ++v4;
  }

  std::mutex::unlock((v2 + 144));
}

void *sub_29ABAD860(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v2 = (a1 + 40);
  v2[2] = 0;
  return sub_29ABADDD0(v2, *(a2 + 40), *(a2 + 48), (*(a2 + 48) - *(a2 + 40)) >> 3);
}

void sub_29ABAD87C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer(pxrInternal__aapl__pxrReserved__::HgiMetal *this)
{
  v2 = *(*(this + 27) + 56);
  std::mutex::lock((this + 144));
  v3 = *(this + 14);
  if (v3)
  {
    v4 = v3 - 1;
    v9 = *(*(*(this + 10) + (((*(this + 13) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 13) + v4) & 0x1FF));
    v5 = v9;
    *(this + 14) = v4;
    sub_29A10FFEC(this + 9, 1);
    bzero([v5 contents], objc_msgSend(v5, "length"));
  }

  else
  {
    v9 = [*(this + 2) newBufferWithLength:4096 options:v2];
  }

  std::mutex::unlock((this + 144));
  if (!*(this + 4))
  {
    v7[0] = "hgiMetal/hgi.mm";
    v7[1] = "GetArgBuffer";
    v7[2] = 530;
    v7[3] = "id<MTLBuffer> pxrInternal__aapl__pxrReserved__::HgiMetal::GetArgBuffer()";
    v8 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v7, 1, "_commandBuffer is null");
  }

  sub_29A0A71C8(this + 120, &v9);
  return v9;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetal::_SubmitCmds(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pxrInternal__aapl__pxrReserved__::Hgi::_SubmitCmds(a1, a2);
    if (*(a1 + 208) == a2)
    {
      *(a1 + 208) = 0;
    }
  }

  return *(a1 + 236);
}

uint64_t sub_29ABADA1C(uint64_t *a1)
{
  v2 = operator new(8uLL);
  *v2 = &unk_2A2074FD0;
  v4 = v2;
  pxrInternal__aapl__pxrReserved__::TfType::SetFactory(a1, &v4);
  result = v4;
  v4 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_29ABADAA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_29B293128(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_29ABADACC(pxrInternal__aapl__pxrReserved__::TfType::FactoryBase *a1)
{
  pxrInternal__aapl__pxrReserved__::TfType::FactoryBase::~FactoryBase(a1);

  operator delete(v1);
}

void *sub_29ABADAF4()
{
  v0 = operator new(0xF8uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetal::HgiMetal(v0, 0);
  return v0;
}

void sub_29ABADB3C(int a1, id *__p)
{
  if (__p)
  {
    if (*__p)
    {
      [*__p drain];
    }

    operator delete(__p);
  }
}

void sub_29ABADB90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 8);
  v6 = ((v4 - v5) << 6) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = *(a1 + 40) + *(a1 + 32);
  if (v6 == v7)
  {
    sub_29ABADC1C(a1);
    v5 = *(a1 + 8);
    v7 = *(a1 + 40) + *(a1 + 32);
  }

  *(*(v5 + ((v7 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v7 & 0x1FF)) = *a2;
  ++*(a1 + 40);
}

void sub_29ABADC1C(void **a1)
{
  v2 = a1[4];
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
  if (v3)
  {
    a1[4] = v4;
    goto LABEL_4;
  }

  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 - a1[1];
  v9 = v7 - *a1;
  if (v8 < v9)
  {
    if (v7 != v6)
    {
      *&v20 = operator new(0x1000uLL);
      sub_29A0D6614(a1, &v20);
      return;
    }

    *&v20 = operator new(0x1000uLL);
    sub_29A0D671C(a1, &v20);
LABEL_4:
    v5 = a1[1];
    *&v20 = *v5;
    a1[1] = v5 + 1;
    sub_29A0D6614(a1, &v20);
    return;
  }

  if (v7 == *a1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 >> 2;
  }

  v22 = a1;
  *&v20 = sub_29A00C9BC(a1, v10);
  *(&v20 + 1) = v20 + v8;
  *&v21 = v20 + v8;
  *(&v21 + 1) = v20 + 8 * v11;
  v19 = operator new(0x1000uLL);
  sub_29A0D6828(&v20, &v19);
  v12 = a1[2];
  for (i = -7 - v12; ; i += 8)
  {
    v14 = a1[1];
    if (v12 == v14)
    {
      break;
    }

    sub_29A0D6930(&v20, --v12);
  }

  v15 = *a1;
  v16 = v20;
  v17 = v21;
  *&v20 = *a1;
  *(&v20 + 1) = v14;
  v18 = *(a1 + 1);
  *a1 = v16;
  *(a1 + 1) = v17;
  v21 = v18;
  if (v12 != v18)
  {
    *&v21 = v18 + (-(v18 + i) & 0xFFFFFFFFFFFFFFF8);
  }

  if (v15)
  {
    operator delete(v15);
  }
}

void sub_29ABADD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_29ABADDD0(void *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v6 = result;
    result = sub_29A00C968(result, a4);
    v7 = v6[1];
    v8 = a3 - a2;
    if (v8)
    {
      result = memmove(v6[1], a2, v8);
    }

    v6[1] = v7 + v8;
  }

  return result;
}

void sub_29ABADE30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::HgiMetalIndirectCommandEncoder(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *this, pxrInternal__aapl__pxrReserved__::Hgi *a2)
{
  v4 = pxrInternal__aapl__pxrReserved__::HgiIndirectCommandEncoder::HgiIndirectCommandEncoder(this);
  *(v4 + 3) = 0u;
  v5 = (v4 + 3);
  v4[11] = 850045863;
  *v4 = &unk_2A2075010;
  *(v4 + 5) = 0u;
  v4[7] = 0;
  v4[9] = 0;
  v4[10] = 0;
  *(v4 + 6) = 0u;
  *(v4 + 7) = 0u;
  *(v4 + 8) = 0u;
  v4[18] = 0;
  v4[20] = 0;
  v4[19] = v4 + 20;
  v4[23] = 0;
  v4[21] = 0;
  v4[22] = v4 + 23;
  v4[24] = 0;
  v4[2] = a2;
  *(this + 3) = pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2);
  v6 = *(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*(this + 2)) + 56);
  *(this + 8) = v6;
  v10[3] = 0;
  v10[0] = 15360;
  v10[1] = 15360;
  v10[2] = 15360;
  *(this + 9) = [*v5 newBufferWithBytes:v10 length:8 options:v6];
  v9 = 0;
  v8 = vdup_n_s16(0x3C00u);
  *(this + 10) = [*(this + 3) newBufferWithBytes:&v8 length:12 options:*(this + 8)];
  return this;
}

void sub_29ABADF90(_Unwind_Exception *a1)
{
  sub_29A082B84(v4, *(v1 + 184));
  sub_29A082B84(v3, *(v1 + 160));
  std::mutex::~mutex(v2);
  v6 = *(v1 + 40);
  if (v6)
  {
    *(v1 + 48) = v6;
    operator delete(v6);
  }

  pxrInternal__aapl__pxrReserved__::HgiIndirectCommandEncoder::~HgiIndirectCommandEncoder(v1);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::~HgiMetalIndirectCommandEncoder(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *this)
{
  sub_29A082B84(this + 176, *(this + 23));
  sub_29A082B84(this + 152, *(this + 20));
  std::mutex::~mutex((this + 88));
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  pxrInternal__aapl__pxrReserved__::HgiIndirectCommandEncoder::~HgiIndirectCommandEncoder(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::~HgiMetalIndirectCommandEncoder(this);

  operator delete(v1);
}

void pxrInternal__aapl__pxrReserved__::_ArgId(int a1@<W0>, std::string *a2@<X8>)
{
  std::to_string(&v6, a1);
  v3 = std::string::insert(&v6, 0, "[[ id(");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ") ]]");
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_29ABAE12C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::_Buffer(pxrInternal__aapl__pxrReserved__ *this@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v6, this);
  v3 = std::string::insert(&v6, 0, "[[ buffer(");
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ") ]]");
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_29ABAE204(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::_MainArgBuffer(pxrInternal__aapl__pxrReserved__ *this@<X0>, unsigned int a2@<W1>, std::string *a3@<X8>)
{
  std::to_string(&v13, this);
  v5 = std::string::insert(&v13, 0, "(const device uint8_t*)args->mainArgumentBuffer + ");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v14, ", ");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a2);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v15, p_p, size);
  *a3 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_29ABAE350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

__n128 pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_GetFunction@<Q0>(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *this@<X0>, const pxrInternal__aapl__pxrReserved__::HgiGraphicsPipelineDesc *a2@<X1>, unsigned int a3@<W2>, __n128 *a4@<X8>)
{
  if ((atomic_load_explicit(&qword_2A1748900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748900))
  {
    pxrInternal__aapl__pxrReserved__::_ArgId(0, &v219);
    v22 = std::string::insert(&v219, 0, "#include <metal_stdlib>\nusing namespace metal;\nstruct StepFunctionDesc\n{\n  uint32_t bindingIndex;\n  uint32_t byteOffset;\n  uint32_t stride;\n};\nstruct ArgBuffer\n{\n  command_buffer commandBuffer ");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v220.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
    *&v220.__r_.__value_.__l.__data_ = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    v24 = std::string::append(&v220, ";\n  const device uint32_t* indexBuffer ");
    v25 = *&v24->__r_.__value_.__l.__data_;
    v221.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v221.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(1, &v218);
    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &v218;
    }

    else
    {
      v26 = v218.__r_.__value_.__r.__words[0];
    }

    if ((v218.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v218.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v218.__r_.__value_.__l.__size_;
    }

    v28 = std::string::append(&v221, v26, size);
    v29 = *&v28->__r_.__value_.__l.__data_;
    v222.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
    *&v222.__r_.__value_.__l.__data_ = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v30 = std::string::append(&v222, ";\n  const device void* mainArgumentBuffer ");
    v31 = *&v30->__r_.__value_.__l.__data_;
    v223.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&v223.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(2, &v217);
    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v32 = &v217;
    }

    else
    {
      v32 = v217.__r_.__value_.__r.__words[0];
    }

    if ((v217.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = HIBYTE(v217.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v33 = v217.__r_.__value_.__l.__size_;
    }

    v34 = std::string::append(&v223, v32, v33);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v224.__r_.__value_.__r.__words[2] = v34->__r_.__value_.__r.__words[2];
    *&v224.__r_.__value_.__l.__data_ = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    v36 = std::string::append(&v224, ";\n  const device void* patchFactorsBuffer ");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v225.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v225.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(3, &v216);
    if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v38 = &v216;
    }

    else
    {
      v38 = v216.__r_.__value_.__r.__words[0];
    }

    if ((v216.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v39 = HIBYTE(v216.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v39 = v216.__r_.__value_.__l.__size_;
    }

    v40 = std::string::append(&v225, v38, v39);
    v41 = *&v40->__r_.__value_.__l.__data_;
    v226.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v226.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v226, ";\n  primitive_type type ");
    v43 = *&v42->__r_.__value_.__l.__data_;
    v227.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
    *&v227.__r_.__value_.__l.__data_ = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(4, &v215);
    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v44 = &v215;
    }

    else
    {
      v44 = v215.__r_.__value_.__r.__words[0];
    }

    if ((v215.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v215.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v215.__r_.__value_.__l.__size_;
    }

    v46 = std::string::append(&v227, v44, v45);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v228.__r_.__value_.__r.__words[2] = v46->__r_.__value_.__r.__words[2];
    *&v228.__r_.__value_.__l.__data_ = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v48 = std::string::append(&v228, ";\n  StepFunctionDesc drawStepFunc ");
    v49 = *&v48->__r_.__value_.__l.__data_;
    v229.__r_.__value_.__r.__words[2] = v48->__r_.__value_.__r.__words[2];
    *&v229.__r_.__value_.__l.__data_ = v49;
    v48->__r_.__value_.__l.__size_ = 0;
    v48->__r_.__value_.__r.__words[2] = 0;
    v48->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(5, &v214);
    if ((v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v50 = &v214;
    }

    else
    {
      v50 = v214.__r_.__value_.__r.__words[0];
    }

    if ((v214.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v51 = HIBYTE(v214.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v51 = v214.__r_.__value_.__l.__size_;
    }

    v52 = std::string::append(&v229, v50, v51);
    v53 = *&v52->__r_.__value_.__l.__data_;
    v230.__r_.__value_.__r.__words[2] = v52->__r_.__value_.__r.__words[2];
    *&v230.__r_.__value_.__l.__data_ = v53;
    v52->__r_.__value_.__l.__size_ = 0;
    v52->__r_.__value_.__r.__words[2] = 0;
    v52->__r_.__value_.__r.__words[0] = 0;
    v54 = std::string::append(&v230, ";\n  uint32_t numPatchStepFuncs ");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v231.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v231.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(8, &v213);
    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v56 = &v213;
    }

    else
    {
      v56 = v213.__r_.__value_.__r.__words[0];
    }

    if ((v213.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = HIBYTE(v213.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v57 = v213.__r_.__value_.__l.__size_;
    }

    v58 = std::string::append(&v231, v56, v57);
    v59 = *&v58->__r_.__value_.__l.__data_;
    v232.__r_.__value_.__r.__words[2] = v58->__r_.__value_.__r.__words[2];
    *&v232.__r_.__value_.__l.__data_ = v59;
    v58->__r_.__value_.__l.__size_ = 0;
    v58->__r_.__value_.__r.__words[2] = 0;
    v58->__r_.__value_.__r.__words[0] = 0;
    v60 = std::string::append(&v232, ";\n  array<StepFunctionDesc, ");
    v61 = *&v60->__r_.__value_.__l.__data_;
    v233.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
    *&v233.__r_.__value_.__l.__data_ = v61;
    v60->__r_.__value_.__l.__size_ = 0;
    v60->__r_.__value_.__r.__words[2] = 0;
    v60->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v212, 0x10u);
    if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v62 = &v212;
    }

    else
    {
      v62 = v212.__r_.__value_.__r.__words[0];
    }

    if ((v212.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v63 = HIBYTE(v212.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v63 = v212.__r_.__value_.__l.__size_;
    }

    v64 = std::string::append(&v233, v62, v63);
    v65 = *&v64->__r_.__value_.__l.__data_;
    v234.__r_.__value_.__r.__words[2] = v64->__r_.__value_.__r.__words[2];
    *&v234.__r_.__value_.__l.__data_ = v65;
    v64->__r_.__value_.__l.__size_ = 0;
    v64->__r_.__value_.__r.__words[2] = 0;
    v64->__r_.__value_.__r.__words[0] = 0;
    v66 = std::string::append(&v234, "> patchStepFuncs ");
    v67 = *&v66->__r_.__value_.__l.__data_;
    v235.__r_.__value_.__r.__words[2] = v66->__r_.__value_.__r.__words[2];
    *&v235.__r_.__value_.__l.__data_ = v67;
    v66->__r_.__value_.__l.__size_ = 0;
    v66->__r_.__value_.__r.__words[2] = 0;
    v66->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(9, &v211);
    if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = &v211;
    }

    else
    {
      v68 = v211.__r_.__value_.__r.__words[0];
    }

    if ((v211.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v69 = HIBYTE(v211.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v69 = v211.__r_.__value_.__l.__size_;
    }

    v70 = std::string::append(&v235, v68, v69);
    v71 = *&v70->__r_.__value_.__l.__data_;
    v236.__r_.__value_.__r.__words[2] = v70->__r_.__value_.__r.__words[2];
    *&v236.__r_.__value_.__l.__data_ = v71;
    v70->__r_.__value_.__l.__size_ = 0;
    v70->__r_.__value_.__r.__words[2] = 0;
    v70->__r_.__value_.__r.__words[0] = 0;
    v72 = std::string::append(&v236, ";\n  uint32_t numControlPoints ");
    v73 = *&v72->__r_.__value_.__l.__data_;
    v237.__r_.__value_.__r.__words[2] = v72->__r_.__value_.__r.__words[2];
    *&v237.__r_.__value_.__l.__data_ = v73;
    v72->__r_.__value_.__l.__size_ = 0;
    v72->__r_.__value_.__r.__words[2] = 0;
    v72->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(57, &v210);
    if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v74 = &v210;
    }

    else
    {
      v74 = v210.__r_.__value_.__r.__words[0];
    }

    if ((v210.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v75 = HIBYTE(v210.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v75 = v210.__r_.__value_.__l.__size_;
    }

    v76 = std::string::append(&v237, v74, v75);
    v77 = *&v76->__r_.__value_.__l.__data_;
    v238.__r_.__value_.__r.__words[2] = v76->__r_.__value_.__r.__words[2];
    *&v238.__r_.__value_.__l.__data_ = v77;
    v76->__r_.__value_.__l.__size_ = 0;
    v76->__r_.__value_.__r.__words[2] = 0;
    v76->__r_.__value_.__r.__words[0] = 0;
    v78 = std::string::append(&v238, ";\n  uint32_t patchBaseVertexByteOffset ");
    v79 = *&v78->__r_.__value_.__l.__data_;
    v239.__r_.__value_.__r.__words[2] = v78->__r_.__value_.__r.__words[2];
    *&v239.__r_.__value_.__l.__data_ = v79;
    v78->__r_.__value_.__l.__size_ = 0;
    v78->__r_.__value_.__r.__words[2] = 0;
    v78->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(58, &v209);
    if ((v209.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v80 = &v209;
    }

    else
    {
      v80 = v209.__r_.__value_.__r.__words[0];
    }

    if ((v209.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = HIBYTE(v209.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v81 = v209.__r_.__value_.__l.__size_;
    }

    v82 = std::string::append(&v239, v80, v81);
    v83 = *&v82->__r_.__value_.__l.__data_;
    v240.__r_.__value_.__r.__words[2] = v82->__r_.__value_.__r.__words[2];
    *&v240.__r_.__value_.__l.__data_ = v83;
    v82->__r_.__value_.__l.__size_ = 0;
    v82->__r_.__value_.__r.__words[2] = 0;
    v82->__r_.__value_.__r.__words[0] = 0;
    v84 = std::string::append(&v240, ";\n  uint32_t numBuffers ");
    v85 = *&v84->__r_.__value_.__l.__data_;
    v241.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
    *&v241.__r_.__value_.__l.__data_ = v85;
    v84->__r_.__value_.__l.__size_ = 0;
    v84->__r_.__value_.__r.__words[2] = 0;
    v84->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(59, &v208);
    if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v208;
    }

    else
    {
      v86 = v208.__r_.__value_.__r.__words[0];
    }

    if ((v208.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v87 = HIBYTE(v208.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v87 = v208.__r_.__value_.__l.__size_;
    }

    v88 = std::string::append(&v241, v86, v87);
    v89 = *&v88->__r_.__value_.__l.__data_;
    v242.__r_.__value_.__r.__words[2] = v88->__r_.__value_.__r.__words[2];
    *&v242.__r_.__value_.__l.__data_ = v89;
    v88->__r_.__value_.__l.__size_ = 0;
    v88->__r_.__value_.__r.__words[2] = 0;
    v88->__r_.__value_.__r.__words[0] = 0;
    v90 = std::string::append(&v242, ";\n  array<const device void*, ");
    v91 = *&v90->__r_.__value_.__l.__data_;
    v243.__r_.__value_.__r.__words[2] = v90->__r_.__value_.__r.__words[2];
    *&v243.__r_.__value_.__l.__data_ = v91;
    v90->__r_.__value_.__l.__size_ = 0;
    v90->__r_.__value_.__r.__words[2] = 0;
    v90->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v207, 0x40u);
    if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v92 = &v207;
    }

    else
    {
      v92 = v207.__r_.__value_.__r.__words[0];
    }

    if ((v207.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v93 = HIBYTE(v207.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v93 = v207.__r_.__value_.__l.__size_;
    }

    v94 = std::string::append(&v243, v92, v93);
    v95 = *&v94->__r_.__value_.__l.__data_;
    v244.__r_.__value_.__r.__words[2] = v94->__r_.__value_.__r.__words[2];
    *&v244.__r_.__value_.__l.__data_ = v95;
    v94->__r_.__value_.__l.__size_ = 0;
    v94->__r_.__value_.__r.__words[2] = 0;
    v94->__r_.__value_.__r.__words[0] = 0;
    v96 = std::string::append(&v244, "> buffers ");
    v97 = *&v96->__r_.__value_.__l.__data_;
    v245.__r_.__value_.__r.__words[2] = v96->__r_.__value_.__r.__words[2];
    *&v245.__r_.__value_.__l.__data_ = v97;
    v96->__r_.__value_.__l.__size_ = 0;
    v96->__r_.__value_.__r.__words[2] = 0;
    v96->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_ArgId(60, &v206);
    if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v98 = &v206;
    }

    else
    {
      v98 = v206.__r_.__value_.__r.__words[0];
    }

    if ((v206.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v99 = HIBYTE(v206.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v99 = v206.__r_.__value_.__l.__size_;
    }

    v100 = std::string::append(&v245, v98, v99);
    v101 = *&v100->__r_.__value_.__l.__data_;
    v246.__r_.__value_.__r.__words[2] = v100->__r_.__value_.__r.__words[2];
    *&v246.__r_.__value_.__l.__data_ = v101;
    v100->__r_.__value_.__l.__size_ = 0;
    v100->__r_.__value_.__r.__words[2] = 0;
    v100->__r_.__value_.__r.__words[0] = 0;
    v102 = std::string::append(&v246, ";\n};\nvoid SetMainBuffers(\n  thread render_command& cmd,\n  const device ArgBuffer* args)\n{\n  cmd.set_vertex_buffer(");
    v103 = *&v102->__r_.__value_.__l.__data_;
    v247.__r_.__value_.__r.__words[2] = v102->__r_.__value_.__r.__words[2];
    *&v247.__r_.__value_.__l.__data_ = v103;
    v102->__r_.__value_.__l.__size_ = 0;
    v102->__r_.__value_.__r.__words[2] = 0;
    v102->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0, 0x1Eu, &v205);
    if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = &v205;
    }

    else
    {
      v104 = v205.__r_.__value_.__r.__words[0];
    }

    if ((v205.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v105 = HIBYTE(v205.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v105 = v205.__r_.__value_.__l.__size_;
    }

    v106 = std::string::append(&v247, v104, v105);
    v107 = *&v106->__r_.__value_.__l.__data_;
    v248.__r_.__value_.__r.__words[2] = v106->__r_.__value_.__r.__words[2];
    *&v248.__r_.__value_.__l.__data_ = v107;
    v106->__r_.__value_.__l.__size_ = 0;
    v106->__r_.__value_.__r.__words[2] = 0;
    v106->__r_.__value_.__r.__words[0] = 0;
    v108 = std::string::append(&v248, ");\n  cmd.set_fragment_buffer(");
    v109 = *&v108->__r_.__value_.__l.__data_;
    v249.__r_.__value_.__r.__words[2] = v108->__r_.__value_.__r.__words[2];
    *&v249.__r_.__value_.__l.__data_ = v109;
    v108->__r_.__value_.__l.__size_ = 0;
    v108->__r_.__value_.__r.__words[2] = 0;
    v108->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0x200, 0x1Eu, &v204);
    if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = &v204;
    }

    else
    {
      v110 = v204.__r_.__value_.__r.__words[0];
    }

    if ((v204.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = HIBYTE(v204.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v111 = v204.__r_.__value_.__l.__size_;
    }

    v112 = std::string::append(&v249, v110, v111);
    v113 = *&v112->__r_.__value_.__l.__data_;
    v250.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
    *&v250.__r_.__value_.__l.__data_ = v113;
    v112->__r_.__value_.__l.__size_ = 0;
    v112->__r_.__value_.__r.__words[2] = 0;
    v112->__r_.__value_.__r.__words[0] = 0;
    v114 = std::string::append(&v250, ");\n  cmd.set_vertex_buffer(");
    v115 = *&v114->__r_.__value_.__l.__data_;
    v251.__r_.__value_.__r.__words[2] = v114->__r_.__value_.__r.__words[2];
    *&v251.__r_.__value_.__l.__data_ = v115;
    v114->__r_.__value_.__l.__size_ = 0;
    v114->__r_.__value_.__r.__words[2] = 0;
    v114->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0x800, 0x1Du, &v203);
    if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v116 = &v203;
    }

    else
    {
      v116 = v203.__r_.__value_.__r.__words[0];
    }

    if ((v203.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v117 = HIBYTE(v203.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v117 = v203.__r_.__value_.__l.__size_;
    }

    v118 = std::string::append(&v251, v116, v117);
    v119 = *&v118->__r_.__value_.__l.__data_;
    v252.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
    *&v252.__r_.__value_.__l.__data_ = v119;
    v118->__r_.__value_.__l.__size_ = 0;
    v118->__r_.__value_.__r.__words[2] = 0;
    v118->__r_.__value_.__r.__words[0] = 0;
    v120 = std::string::append(&v252, ");\n  cmd.set_fragment_buffer(");
    v121 = *&v120->__r_.__value_.__l.__data_;
    v253.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
    *&v253.__r_.__value_.__l.__data_ = v121;
    v120->__r_.__value_.__l.__size_ = 0;
    v120->__r_.__value_.__r.__words[2] = 0;
    v120->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0xA00, 0x1Du, &v202);
    if ((v202.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v122 = &v202;
    }

    else
    {
      v122 = v202.__r_.__value_.__r.__words[0];
    }

    if ((v202.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v123 = HIBYTE(v202.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v123 = v202.__r_.__value_.__l.__size_;
    }

    v124 = std::string::append(&v253, v122, v123);
    v125 = *&v124->__r_.__value_.__l.__data_;
    v254.__r_.__value_.__r.__words[2] = v124->__r_.__value_.__r.__words[2];
    *&v254.__r_.__value_.__l.__data_ = v125;
    v124->__r_.__value_.__l.__size_ = 0;
    v124->__r_.__value_.__r.__words[2] = 0;
    v124->__r_.__value_.__r.__words[0] = 0;
    v126 = std::string::append(&v254, ");\n  cmd.set_vertex_buffer(");
    v127 = *&v126->__r_.__value_.__l.__data_;
    v255.__r_.__value_.__r.__words[2] = v126->__r_.__value_.__r.__words[2];
    *&v255.__r_.__value_.__l.__data_ = v127;
    v126->__r_.__value_.__l.__size_ = 0;
    v126->__r_.__value_.__r.__words[2] = 0;
    v126->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0x400, 0x1Cu, &v201);
    if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v128 = &v201;
    }

    else
    {
      v128 = v201.__r_.__value_.__r.__words[0];
    }

    if ((v201.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v129 = HIBYTE(v201.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v129 = v201.__r_.__value_.__l.__size_;
    }

    v130 = std::string::append(&v255, v128, v129);
    v131 = *&v130->__r_.__value_.__l.__data_;
    v256.__r_.__value_.__r.__words[2] = v130->__r_.__value_.__r.__words[2];
    *&v256.__r_.__value_.__l.__data_ = v131;
    v130->__r_.__value_.__l.__size_ = 0;
    v130->__r_.__value_.__r.__words[2] = 0;
    v130->__r_.__value_.__r.__words[0] = 0;
    v132 = std::string::append(&v256, ");\n  cmd.set_fragment_buffer(");
    v133 = *&v132->__r_.__value_.__l.__data_;
    v257.__r_.__value_.__r.__words[2] = v132->__r_.__value_.__r.__words[2];
    *&v257.__r_.__value_.__l.__data_ = v133;
    v132->__r_.__value_.__l.__size_ = 0;
    v132->__r_.__value_.__r.__words[2] = 0;
    v132->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0x600, 0x1Cu, &v200);
    if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v134 = &v200;
    }

    else
    {
      v134 = v200.__r_.__value_.__r.__words[0];
    }

    if ((v200.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v135 = HIBYTE(v200.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v135 = v200.__r_.__value_.__l.__size_;
    }

    v136 = std::string::append(&v257, v134, v135);
    v137 = *&v136->__r_.__value_.__l.__data_;
    v258.__r_.__value_.__r.__words[2] = v136->__r_.__value_.__r.__words[2];
    *&v258.__r_.__value_.__l.__data_ = v137;
    v136->__r_.__value_.__l.__size_ = 0;
    v136->__r_.__value_.__r.__words[2] = 0;
    v136->__r_.__value_.__r.__words[0] = 0;
    v138 = std::string::append(&v258, ");\n  cmd.set_vertex_buffer(");
    v139 = *&v138->__r_.__value_.__l.__data_;
    v259.__r_.__value_.__r.__words[2] = v138->__r_.__value_.__r.__words[2];
    *&v259.__r_.__value_.__l.__data_ = v139;
    v138->__r_.__value_.__l.__size_ = 0;
    v138->__r_.__value_.__r.__words[2] = 0;
    v138->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0xC00, 0x1Bu, &v199);
    if ((v199.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v140 = &v199;
    }

    else
    {
      v140 = v199.__r_.__value_.__r.__words[0];
    }

    if ((v199.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v141 = HIBYTE(v199.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v141 = v199.__r_.__value_.__l.__size_;
    }

    v142 = std::string::append(&v259, v140, v141);
    v143 = *&v142->__r_.__value_.__l.__data_;
    v260.__r_.__value_.__r.__words[2] = v142->__r_.__value_.__r.__words[2];
    *&v260.__r_.__value_.__l.__data_ = v143;
    v142->__r_.__value_.__l.__size_ = 0;
    v142->__r_.__value_.__r.__words[2] = 0;
    v142->__r_.__value_.__r.__words[0] = 0;
    v144 = std::string::append(&v260, ");\n  cmd.set_fragment_buffer(");
    v145 = *&v144->__r_.__value_.__l.__data_;
    v261.__r_.__value_.__r.__words[2] = v144->__r_.__value_.__r.__words[2];
    *&v261.__r_.__value_.__l.__data_ = v145;
    v144->__r_.__value_.__l.__size_ = 0;
    v144->__r_.__value_.__r.__words[2] = 0;
    v144->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_MainArgBuffer(0xC00, 0x1Bu, &v198);
    if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v146 = &v198;
    }

    else
    {
      v146 = v198.__r_.__value_.__r.__words[0];
    }

    if ((v198.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v147 = HIBYTE(v198.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v147 = v198.__r_.__value_.__l.__size_;
    }

    v148 = std::string::append(&v261, v146, v147);
    v149 = *&v148->__r_.__value_.__l.__data_;
    v262.__r_.__value_.__r.__words[2] = v148->__r_.__value_.__r.__words[2];
    *&v262.__r_.__value_.__l.__data_ = v149;
    v148->__r_.__value_.__l.__size_ = 0;
    v148->__r_.__value_.__r.__words[2] = 0;
    v148->__r_.__value_.__r.__words[0] = 0;
    v150 = std::string::append(&v262, ");\n}\nconst device uint8_t* GetDrawCmdPtr(\n  const device ArgBuffer* args,\n  uint drawItemIndex)\n{\n  return\n    (const device uint8_t*)args->buffers[args->drawStepFunc.bindingIndex]    + args->drawStepFunc.byteOffset\n    + (drawItemIndex * args->drawStepFunc.stride);\n}\nconst device uint8_t* BufferOffset(\n  const device uint8_t* bufferPtr,  const device StepFunctionDesc& stepFuncDesc,  uint32_t base)\n{\n  return bufferPtr + stepFuncDesc.byteOffset + (base * stepFuncDesc.stride);\n}\n// From _DrawNonIndexedCommand\nstruct DrawPrimitivesCmd\n{\n  uint vertexCount;\n  uint instanceCount;\n  uint vertexStart;\n  uint baseInstance;\n};\nkernel void\nMultiDrawPrimitives(uint drawItemIndex [[ thread_position_in_grid ]],\ndevice ArgBuffer *args ");
    v151 = *&v150->__r_.__value_.__l.__data_;
    v263.__r_.__value_.__r.__words[2] = v150->__r_.__value_.__r.__words[2];
    *&v263.__r_.__value_.__l.__data_ = v151;
    v150->__r_.__value_.__l.__size_ = 0;
    v150->__r_.__value_.__r.__words[2] = 0;
    v150->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_Buffer(0x1A, &v197);
    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v152 = &v197;
    }

    else
    {
      v152 = v197.__r_.__value_.__r.__words[0];
    }

    if ((v197.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v153 = HIBYTE(v197.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v153 = v197.__r_.__value_.__l.__size_;
    }

    v154 = std::string::append(&v263, v152, v153);
    v155 = *&v154->__r_.__value_.__l.__data_;
    v264.__r_.__value_.__r.__words[2] = v154->__r_.__value_.__r.__words[2];
    *&v264.__r_.__value_.__l.__data_ = v155;
    v154->__r_.__value_.__l.__size_ = 0;
    v154->__r_.__value_.__r.__words[2] = 0;
    v154->__r_.__value_.__r.__words[0] = 0;
    v156 = std::string::append(&v264, ")\n{\n  render_command cmd(args->commandBuffer, drawItemIndex);\n  SetMainBuffers(cmd, args);\n  const device uint8_t* drawCmdU8 = GetDrawCmdPtr(args, drawItemIndex);\n  const device DrawPrimitivesCmd* drawCmd =     (const device DrawPrimitivesCmd*)drawCmdU8;\n  for (uint32_t i = 0; i < args->numBuffers; ++i)\n  {\n    const device uint8_t* bufferPtr = (device uint8_t*)args->buffers[i];\n    if (i == args->drawStepFunc.bindingIndex) {\n      bufferPtr = BufferOffset(bufferPtr, args->drawStepFunc, drawCmd->baseInstance);\n    }\n    cmd.set_vertex_buffer(bufferPtr, i);\n  }\n  cmd.draw_primitives(\n    args->type,\n    drawCmd->vertexStart,\n    drawCmd->vertexCount,\n    drawCmd->instanceCount,\n    drawCmd->baseInstance);\n}\n// From _DrawIndexedCommand\nstruct DrawIndexedCmd\n{\n  uint32_t indexCount;\n  uint32_t instanceCount;\n  uint32_t indexStart;\n  int32_t  baseVertex;\n  uint32_t baseInstance;\n};\nkernel void\nMultiDrawIndexedPrimitives(uint drawItemIndex [[ thread_position_in_grid ]],\ndevice ArgBuffer *args ");
    v157 = *&v156->__r_.__value_.__l.__data_;
    v265.__r_.__value_.__r.__words[2] = v156->__r_.__value_.__r.__words[2];
    *&v265.__r_.__value_.__l.__data_ = v157;
    v156->__r_.__value_.__l.__size_ = 0;
    v156->__r_.__value_.__r.__words[2] = 0;
    v156->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_Buffer(0x1A, &v196);
    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v158 = &v196;
    }

    else
    {
      v158 = v196.__r_.__value_.__r.__words[0];
    }

    if ((v196.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v159 = HIBYTE(v196.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v159 = v196.__r_.__value_.__l.__size_;
    }

    v160 = std::string::append(&v265, v158, v159);
    v161 = *&v160->__r_.__value_.__l.__data_;
    v266.__r_.__value_.__r.__words[2] = v160->__r_.__value_.__r.__words[2];
    *&v266.__r_.__value_.__l.__data_ = v161;
    v160->__r_.__value_.__l.__size_ = 0;
    v160->__r_.__value_.__r.__words[2] = 0;
    v160->__r_.__value_.__r.__words[0] = 0;
    v162 = std::string::append(&v266, ")\n{\n  render_command cmd(args->commandBuffer, drawItemIndex);\n  SetMainBuffers(cmd, args);\n  const device uint8_t* drawCmdU8 = GetDrawCmdPtr(args, drawItemIndex);\n  const device DrawIndexedCmd* drawCmd =     (const device DrawIndexedCmd*)drawCmdU8;\n  for (uint32_t i = 0; i < args->numBuffers; ++i)\n  {\n    const device uint8_t* bufferPtr = (device uint8_t*)args->buffers[i];\n    if (i == args->drawStepFunc.bindingIndex) {\n      bufferPtr = BufferOffset(bufferPtr, args->drawStepFunc, drawCmd->baseInstance);\n    }\n    cmd.set_vertex_buffer(bufferPtr, i);\n  }\n  cmd.draw_indexed_primitives(\n    args->type,\n    drawCmd->indexCount,\n    args->indexBuffer + drawCmd->indexStart,\n    drawCmd->instanceCount,\n    drawCmd->baseVertex,\n    drawCmd->baseInstance);\n}\n// From MTLDrawPatchIndirectArguments\nstruct DrawPatchCmd\n{\n  uint32_t patchCount;\n  uint32_t instanceCount;\n  uint32_t patchStart;\n  uint32_t baseInstance;\n};\nconst device DrawPatchCmd* SetPatchVertexBuffers(\n  thread render_command& cmd,\n  const device ArgBuffer* args,\n  uint drawItemIndex)\n{\n  const device uint8_t* drawCmdU8 = GetDrawCmdPtr(args, drawItemIndex);\n  const device DrawPatchCmd* drawCmd = (const device DrawPatchCmd*)drawCmdU8;\n  uint32_t baseVertexIndex = \n    (args->patchBaseVertexByteOffset + drawItemIndex * args->drawStepFunc.stride) / sizeof(uint32_t);\n  const device uint32_t* drawCmdU32 = (const device uint32_t*)(args->buffers[args->drawStepFunc.bindingIndex]);\n  uint32_t baseVertex = drawCmdU32[baseVertexIndex];\n  for (uint32_t i = 0; i < args->numBuffers; ++i)\n  {\n    const device uint8_t* bufferPtr = (device uint8_t*)args->buffers[i];\n    if (i == args->drawStepFunc.bindingIndex) {\n      bufferPtr = BufferOffset(bufferPtr, args->drawStepFunc, drawCmd->baseInstance);\n    } else {\n      for (uint32_t j = 0; j < args->numPatchStepFuncs; ++j) {\n        if (args->patchStepFuncs[j].bindingIndex == i) {\n          bufferPtr = BufferOffset(bufferPtr, args->patchStepFuncs[j], baseVertex);\n        }\n      }\n    }\n    cmd.set_vertex_buffer(bufferPtr, i);\n  }\n  return drawCmd;\n}\nkernel void\nMultiDrawTriPatches(uint drawItemIndex [[ thread_position_in_grid ]],\ndevice ArgBuffer *args ");
    v163 = *&v162->__r_.__value_.__l.__data_;
    v267.__r_.__value_.__r.__words[2] = v162->__r_.__value_.__r.__words[2];
    *&v267.__r_.__value_.__l.__data_ = v163;
    v162->__r_.__value_.__l.__size_ = 0;
    v162->__r_.__value_.__r.__words[2] = 0;
    v162->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_Buffer(0x1A, &v195);
    if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v164 = &v195;
    }

    else
    {
      v164 = v195.__r_.__value_.__r.__words[0];
    }

    if ((v195.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v165 = HIBYTE(v195.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v165 = v195.__r_.__value_.__l.__size_;
    }

    v166 = std::string::append(&v267, v164, v165);
    v167 = *&v166->__r_.__value_.__l.__data_;
    v268.__r_.__value_.__r.__words[2] = v166->__r_.__value_.__r.__words[2];
    *&v268.__r_.__value_.__l.__data_ = v167;
    v166->__r_.__value_.__l.__size_ = 0;
    v166->__r_.__value_.__r.__words[2] = 0;
    v166->__r_.__value_.__r.__words[0] = 0;
    v168 = std::string::append(&v268, ")\n{\n  render_command cmd(args->commandBuffer, drawItemIndex);\n  SetMainBuffers(cmd, args);\n  const device DrawPatchCmd* drawCmd =\n    SetPatchVertexBuffers(cmd, args, drawItemIndex);\n  cmd.draw_patches(\n    args->numControlPoints,\n    drawCmd->patchStart,\n    drawCmd->patchCount,\n    (const device uint*)nullptr,\n    drawCmd->instanceCount,\n    drawCmd->baseInstance,\n    (const device MTLTriangleTessellationFactorsHalf*)args->patchFactorsBuffer);\n}\nkernel void\nMultiDrawIndexedTriPatches(uint drawItemIndex [[ thread_position_in_grid ]],\ndevice ArgBuffer *args ");
    v169 = *&v168->__r_.__value_.__l.__data_;
    v269.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
    *&v269.__r_.__value_.__l.__data_ = v169;
    v168->__r_.__value_.__l.__size_ = 0;
    v168->__r_.__value_.__r.__words[2] = 0;
    v168->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_Buffer(0x1A, &v194);
    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v170 = &v194;
    }

    else
    {
      v170 = v194.__r_.__value_.__r.__words[0];
    }

    if ((v194.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v171 = HIBYTE(v194.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v171 = v194.__r_.__value_.__l.__size_;
    }

    v172 = std::string::append(&v269, v170, v171);
    v173 = *&v172->__r_.__value_.__l.__data_;
    v270.__r_.__value_.__r.__words[2] = v172->__r_.__value_.__r.__words[2];
    *&v270.__r_.__value_.__l.__data_ = v173;
    v172->__r_.__value_.__l.__size_ = 0;
    v172->__r_.__value_.__r.__words[2] = 0;
    v172->__r_.__value_.__r.__words[0] = 0;
    v174 = std::string::append(&v270, ")\n{\n  render_command cmd(args->commandBuffer, drawItemIndex);\n  SetMainBuffers(cmd, args);\n  const device DrawPatchCmd* drawCmd =\n    SetPatchVertexBuffers(cmd, args, drawItemIndex);\n  cmd.draw_indexed_patches(\n    args->numControlPoints,\n    drawCmd->patchStart,\n    drawCmd->patchCount,\n    (const device uint*)nullptr,\n    args->indexBuffer,\n    drawCmd->instanceCount,\n    drawCmd->baseInstance,\n    (const device MTLTriangleTessellationFactorsHalf*)args->patchFactorsBuffer);\n}\nkernel void\nMultiDrawQuadPatches(uint drawItemIndex [[ thread_position_in_grid ]],\ndevice ArgBuffer *args ");
    v175 = *&v174->__r_.__value_.__l.__data_;
    v271.__r_.__value_.__r.__words[2] = v174->__r_.__value_.__r.__words[2];
    *&v271.__r_.__value_.__l.__data_ = v175;
    v174->__r_.__value_.__l.__size_ = 0;
    v174->__r_.__value_.__r.__words[2] = 0;
    v174->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_Buffer(0x1A, &v193);
    if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v176 = &v193;
    }

    else
    {
      v176 = v193.__r_.__value_.__r.__words[0];
    }

    if ((v193.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v177 = HIBYTE(v193.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v177 = v193.__r_.__value_.__l.__size_;
    }

    v178 = std::string::append(&v271, v176, v177);
    v179 = *&v178->__r_.__value_.__l.__data_;
    v272.__r_.__value_.__r.__words[2] = v178->__r_.__value_.__r.__words[2];
    *&v272.__r_.__value_.__l.__data_ = v179;
    v178->__r_.__value_.__l.__size_ = 0;
    v178->__r_.__value_.__r.__words[2] = 0;
    v178->__r_.__value_.__r.__words[0] = 0;
    v180 = std::string::append(&v272, ")\n{\n  render_command cmd(args->commandBuffer, drawItemIndex);\n  SetMainBuffers(cmd, args);\n  const device DrawPatchCmd* drawCmd =\n    SetPatchVertexBuffers(cmd, args, drawItemIndex);\n  cmd.draw_patches(\n    args->numControlPoints,\n    drawCmd->patchStart,\n    drawCmd->patchCount,\n    (const device uint*)nullptr,\n    drawCmd->instanceCount,\n    drawCmd->baseInstance,\n    (const device MTLQuadTessellationFactorsHalf*)args->patchFactorsBuffer);\n}\nkernel void\nMultiDrawIndexedQuadPatches(uint drawItemIndex [[ thread_position_in_grid ]],\ndevice ArgBuffer *args ");
    v181 = *&v180->__r_.__value_.__l.__data_;
    v273.__r_.__value_.__r.__words[2] = v180->__r_.__value_.__r.__words[2];
    *&v273.__r_.__value_.__l.__data_ = v181;
    v180->__r_.__value_.__l.__size_ = 0;
    v180->__r_.__value_.__r.__words[2] = 0;
    v180->__r_.__value_.__r.__words[0] = 0;
    pxrInternal__aapl__pxrReserved__::_Buffer(0x1A, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v183 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v183 = __p.__r_.__value_.__l.__size_;
    }

    v184 = std::string::append(&v273, p_p, v183);
    v185 = *&v184->__r_.__value_.__l.__data_;
    v188.__r_.__value_.__r.__words[2] = v184->__r_.__value_.__r.__words[2];
    *&v188.__r_.__value_.__l.__data_ = v185;
    v184->__r_.__value_.__l.__size_ = 0;
    v184->__r_.__value_.__r.__words[2] = 0;
    v184->__r_.__value_.__r.__words[0] = 0;
    v186 = std::string::append(&v188, ")\n{\n  render_command cmd(args->commandBuffer, drawItemIndex);\n  SetMainBuffers(cmd, args);\n  const device DrawPatchCmd* drawCmd =\n    SetPatchVertexBuffers(cmd, args, drawItemIndex);\n  cmd.draw_indexed_patches(\n    args->numControlPoints,\n    drawCmd->patchStart,\n    drawCmd->patchCount,\n    (const device uint*)nullptr,\n    args->indexBuffer,\n    drawCmd->instanceCount,\n    drawCmd->baseInstance,\n    (const device MTLQuadTessellationFactorsHalf*)args->patchFactorsBuffer);\n}\n");
    v187 = *&v186->__r_.__value_.__l.__data_;
    unk_2A17488F8 = *(&v186->__r_.__value_.__l + 2);
    xmmword_2A17488E8 = v187;
    v186->__r_.__value_.__l.__size_ = 0;
    v186->__r_.__value_.__r.__words[2] = 0;
    v186->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v188.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v188.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v273.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v273.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v272.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v272.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v193.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v193.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v271.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v271.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v270.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v270.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v194.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v194.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v269.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v268.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v195.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v195.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v267.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v267.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v266.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v196.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v196.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v265.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v265.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v264.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v197.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v197.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v263.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v262.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v198.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v198.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v261.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v261.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v260.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v199.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v199.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v259.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v258.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v200.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v200.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v257.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v256.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v201.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v201.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v255.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v255.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v254.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v254.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v202.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v202.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v253.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v253.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v252.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v252.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v203.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v203.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v251.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v250.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v204.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v204.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v249.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v249.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v248.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v205.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v205.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v247.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v247.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v246.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v246.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v206.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v206.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v245.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v245.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v244.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v244.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v207.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v207.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v243.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v243.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v242.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v242.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v208.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v208.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v241.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v241.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v240.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v240.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v209.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v209.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v239.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v239.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v238.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v210.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v210.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v237.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v236.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v236.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v211.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v211.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v235.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v235.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v234.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v234.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v212.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v212.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v233.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v233.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v232.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v232.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v213.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v213.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v231.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v231.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v230.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v230.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v214.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v214.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v229.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v229.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v228.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v228.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v215.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v215.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v227.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v227.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v216.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v216.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v225.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v225.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v224.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v217.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v217.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v223.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v223.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v222.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v222.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v218.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v218.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v221.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v221.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v220.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v220.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v219.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v219.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A17488E8, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748900);
  }

  if (!*(this + 4))
  {
    v273.__r_.__value_.__r.__words[0] = 0;
    v8 = objc_alloc_init(MEMORY[0x29EDBB558]);
    [v8 setFastMathEnabled:1];
    v9 = byte_2A17488FF >= 0 ? &xmmword_2A17488E8 : xmmword_2A17488E8;
    *(this + 4) = [*(this + 3) newLibraryWithSource:objc_msgSend(MEMORY[0x29EDBA0F8] options:"stringWithUTF8String:" error:{v9), v8, &v273}];
    sub_29ABAFF64(this + 5, 6uLL);

    if (!*(this + 4))
    {
      v10 = [v273.__r_.__value_.__l.__data_ localizedDescription];
      v188.__r_.__value_.__r.__words[0] = "hgiMetal/indirectCommandEncoder.mm";
      v188.__r_.__value_.__l.__size_ = "_GetFunction";
      v188.__r_.__value_.__r.__words[2] = 412;
      v189 = "HgiMetalIndirectCommandEncoder::FunctionState pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_GetFunction(const HgiGraphicsPipelineDesc &, BOOL)";
      v190 = 0;
      v191 = 1;
      v11 = [v10 UTF8String];
      pxrInternal__aapl__pxrReserved__::Tf_DiagnosticHelper::IssueFatalError(&v188, "Failed to create multidraw pipeline state: %s", v12, v11);
    }
  }

  if (*(a2 + 6) == 4)
  {
    v13 = 4;
    if (a3)
    {
      v13 = 5;
    }

    v14 = 2;
    if (a3)
    {
      v14 = 3;
    }

    if (*(a2 + 79))
    {
      v15 = v13;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = a3;
  }

  v16 = (*(this + 5) + 24 * v15);
  result = *v16;
  *a4 = *v16;
  a4[1].n128_u64[0] = v16[1].n128_u64[0];
  v188.__r_.__value_.__r.__words[0] = 0;
  if (!a4->n128_u64[0])
  {
    v18 = *(&off_29F296920 + v15);
    v19 = [*(this + 4) newFunctionWithName:v18];
    a4->n128_u64[0] = v19;
    [v19 setLabel:v18];
    a4->n128_u64[1] = [*(this + 3) newComputePipelineStateWithFunction:v19 error:&v188];
    v20 = [v19 newArgumentEncoderWithBufferIndex:26];
    a4[1].n128_u64[0] = v20;
    v21 = *(this + 5) + 24 * v15;
    *(v21 + 16) = v20;
    result = *a4;
    *v21 = *a4;
  }

  return result;
}

void sub_29ABAF784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (*(v91 - 73) < 0)
  {
    operator delete(*(v91 - 96));
  }

  if (*(v91 - 105) < 0)
  {
    operator delete(*(v91 - 128));
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v91 - 137) < 0)
  {
    operator delete(*(v91 - 160));
  }

  if (*(v91 - 169) < 0)
  {
    operator delete(*(v91 - 192));
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (*(v91 - 201) < 0)
  {
    operator delete(*(v91 - 224));
  }

  if (*(v91 - 233) < 0)
  {
    operator delete(*(v91 - 256));
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (SLOBYTE(STACK[0x8D7]) < 0)
  {
    operator delete(STACK[0x8C0]);
  }

  if (SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (SLOBYTE(STACK[0x897]) < 0)
  {
    operator delete(STACK[0x880]);
  }

  if (SLOBYTE(STACK[0x877]) < 0)
  {
    operator delete(STACK[0x860]);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (SLOBYTE(STACK[0x857]) < 0)
  {
    operator delete(STACK[0x840]);
  }

  if (SLOBYTE(STACK[0x837]) < 0)
  {
    operator delete(STACK[0x820]);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (SLOBYTE(STACK[0x817]) < 0)
  {
    operator delete(STACK[0x800]);
  }

  if (SLOBYTE(STACK[0x7F7]) < 0)
  {
    operator delete(STACK[0x7E0]);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (SLOBYTE(STACK[0x7D7]) < 0)
  {
    operator delete(STACK[0x7C0]);
  }

  if (SLOBYTE(STACK[0x7B7]) < 0)
  {
    operator delete(STACK[0x7A0]);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  if (SLOBYTE(STACK[0x797]) < 0)
  {
    operator delete(STACK[0x780]);
  }

  if (SLOBYTE(STACK[0x777]) < 0)
  {
    operator delete(STACK[0x760]);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (SLOBYTE(STACK[0x757]) < 0)
  {
    operator delete(STACK[0x740]);
  }

  if (SLOBYTE(STACK[0x737]) < 0)
  {
    operator delete(STACK[0x720]);
  }

  if (a76 < 0)
  {
    operator delete(a75);
  }

  if (SLOBYTE(STACK[0x717]) < 0)
  {
    operator delete(STACK[0x700]);
  }

  if (SLOBYTE(STACK[0x6F7]) < 0)
  {
    operator delete(STACK[0x6E0]);
  }

  if (a78 < 0)
  {
    operator delete(a77);
  }

  if (SLOBYTE(STACK[0x6D7]) < 0)
  {
    operator delete(STACK[0x6C0]);
  }

  if (SLOBYTE(STACK[0x6B7]) < 0)
  {
    operator delete(STACK[0x6A0]);
  }

  if (a80 < 0)
  {
    operator delete(a79);
  }

  if (SLOBYTE(STACK[0x697]) < 0)
  {
    operator delete(STACK[0x680]);
  }

  if (SLOBYTE(STACK[0x677]) < 0)
  {
    operator delete(STACK[0x660]);
  }

  if (a82 < 0)
  {
    operator delete(a81);
  }

  if (SLOBYTE(STACK[0x657]) < 0)
  {
    operator delete(STACK[0x640]);
  }

  if (SLOBYTE(STACK[0x637]) < 0)
  {
    operator delete(STACK[0x620]);
  }

  if (a84 < 0)
  {
    operator delete(a83);
  }

  if (SLOBYTE(STACK[0x617]) < 0)
  {
    operator delete(STACK[0x600]);
  }

  if (SLOBYTE(STACK[0x5F7]) < 0)
  {
    operator delete(STACK[0x5E0]);
  }

  if (a86 < 0)
  {
    operator delete(a85);
  }

  if (SLOBYTE(STACK[0x5D7]) < 0)
  {
    operator delete(STACK[0x5C0]);
  }

  if (SLOBYTE(STACK[0x5B7]) < 0)
  {
    operator delete(STACK[0x5A0]);
  }

  if (a88 < 0)
  {
    operator delete(a87);
  }

  if (SLOBYTE(STACK[0x597]) < 0)
  {
    operator delete(STACK[0x580]);
  }

  if (SLOBYTE(STACK[0x577]) < 0)
  {
    operator delete(STACK[0x560]);
  }

  if (a90 < 0)
  {
    operator delete(a89);
  }

  if (SLOBYTE(STACK[0x557]) < 0)
  {
    operator delete(STACK[0x540]);
  }

  if (SLOBYTE(STACK[0x537]) < 0)
  {
    operator delete(STACK[0x520]);
  }

  if (SLOBYTE(STACK[0x207]) < 0)
  {
    operator delete(a91);
  }

  if (SLOBYTE(STACK[0x517]) < 0)
  {
    operator delete(STACK[0x500]);
  }

  if (SLOBYTE(STACK[0x4F7]) < 0)
  {
    operator delete(STACK[0x4E0]);
  }

  if (SLOBYTE(STACK[0x21F]) < 0)
  {
    operator delete(STACK[0x208]);
  }

  if (SLOBYTE(STACK[0x4D7]) < 0)
  {
    operator delete(STACK[0x4C0]);
  }

  if (SLOBYTE(STACK[0x4B7]) < 0)
  {
    operator delete(STACK[0x4A0]);
  }

  if (SLOBYTE(STACK[0x237]) < 0)
  {
    operator delete(STACK[0x220]);
  }

  if (SLOBYTE(STACK[0x497]) < 0)
  {
    operator delete(STACK[0x480]);
  }

  if (SLOBYTE(STACK[0x477]) < 0)
  {
    operator delete(STACK[0x460]);
  }

  if (SLOBYTE(STACK[0x24F]) < 0)
  {
    operator delete(STACK[0x238]);
  }

  if (SLOBYTE(STACK[0x457]) < 0)
  {
    operator delete(STACK[0x440]);
  }

  if (SLOBYTE(STACK[0x437]) < 0)
  {
    operator delete(STACK[0x420]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x417]) < 0)
  {
    operator delete(STACK[0x400]);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (SLOBYTE(STACK[0x3B7]) < 0)
  {
    operator delete(STACK[0x3A0]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  if (SLOBYTE(STACK[0x397]) < 0)
  {
    operator delete(STACK[0x380]);
  }

  if (SLOBYTE(STACK[0x377]) < 0)
  {
    operator delete(STACK[0x360]);
  }

  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  if (SLOBYTE(STACK[0x357]) < 0)
  {
    operator delete(STACK[0x340]);
  }

  if (SLOBYTE(STACK[0x337]) < 0)
  {
    operator delete(STACK[0x320]);
  }

  if (SLOBYTE(STACK[0x2C7]) < 0)
  {
    operator delete(STACK[0x2B0]);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  __cxa_guard_abort(&qword_2A1748900);
  _Unwind_Resume(a1);
}

void sub_29ABAFF64(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_29ABB0A10(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_AllocateCommandBuffer(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *this, unsigned int a2)
{
  v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if (a2 >= 2)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 1;
  }

  std::mutex::lock((this + 88));
  v7 = *(this + 20);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = this + 160;
  do
  {
    v9 = *(v7 + 8);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *&v7[8 * v11];
  }

  while (v7);
  if (v8 == this + 160 || v6 < *(v8 + 8))
  {
LABEL_12:
    std::mutex::unlock((this + 88));
LABEL_13:
    v12 = objc_opt_new();
    [v12 setCommandTypes:15];
    [v12 setInheritBuffers:0];
    [v12 setInheritPipelineState:1];
    [v12 setMaxVertexBufferBindCount:31];
    [v12 setMaxFragmentBufferBindCount:31];
    v13 = [*(this + 3) newIndirectCommandBufferWithDescriptor:v12 maxCommandCount:v6 options:32];

    return v13;
  }

  v15 = *(v8 + 5);
  sub_29A03AFE8(this + 19, v8);
  operator delete(v8);
  std::mutex::unlock((this + 88));
  if (!v15)
  {
    goto LABEL_13;
  }

  return v15;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_AllocateArgumentBuffer(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *this, unsigned int a2)
{
  v3 = (a2 - 1) | ((a2 - 1) >> 1) | (((a2 - 1) | ((a2 - 1) >> 1)) >> 2);
  v4 = v3 | (v3 >> 4) | ((v3 | (v3 >> 4)) >> 8);
  v5 = v4 | HIWORD(v4);
  if (a2 >= 2)
  {
    v6 = (v5 + 1);
  }

  else
  {
    v6 = 1;
  }

  std::mutex::lock((this + 88));
  v7 = *(this + 23);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = this + 184;
  do
  {
    v9 = *(v7 + 8);
    v10 = v9 >= v6;
    v11 = v9 < v6;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *&v7[8 * v11];
  }

  while (v7);
  if (v8 != this + 184 && v6 >= *(v8 + 8))
  {
    v15 = *(v8 + 5);
    sub_29A03AFE8(this + 22, v8);
    operator delete(v8);
    std::mutex::unlock((this + 88));
    if (v15)
    {
      return v15;
    }
  }

  else
  {
LABEL_12:
    std::mutex::unlock((this + 88));
  }

  v12 = *(this + 3);
  v13 = *(this + 8);

  return [v12 newBufferWithLength:v6 options:v13];
}

void pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_EncodeDraw(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *a1@<X0>, pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds *a2@<X1>, pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline **a3@<X2>, pxrInternal__aapl__pxrReserved__::HgiResourceBindings **a4@<X3>, uint64_t **a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, unsigned int a8@<W7>, void *a9@<X8>, int a10, int a11)
{
  Descriptor = pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline::GetDescriptor(*a3);
  v70 = 0uLL;
  v71 = 0;
  v56 = a6;
  v59 = Descriptor;
  pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_GetFunction(a1, Descriptor, *a6 != 0, &v70);
  CommandBuffer = pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_AllocateCommandBuffer(a1, a8);
  v19 = v71;
  ArgumentBuffer = pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_AllocateArgumentBuffer(a1, [v71 encodedLength]);
  v21 = a1;
  v22 = pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_AllocateArgumentBuffer(a1, 0x1000u);
  v23 = operator new(0x48uLL);
  v55 = a8;
  v23[2] = a8;
  v24 = a4;
  v25 = *a4;
  *(v23 + 1) = *a3;
  *(v23 + 2) = v25;
  *v23 = &unk_2A2075098;
  *(v23 + 6) = CommandBuffer;
  *(v23 + 7) = ArgumentBuffer;
  *(v23 + 8) = v22;
  [v19 setArgumentBuffer:ArgumentBuffer offset:0];
  Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds::GetEncoder(a2);
  [v19 setIndirectCommandBuffer:*(v23 + 6) atIndex:0];
  [Encoder useResource:*(v23 + 6) usage:3];
  [v19 setBuffer:*(v23 + 8) offset:0 atIndex:2];
  [Encoder useResource:*(v23 + 8) usage:3];
  PrimitiveType = pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetPrimitiveType(v59[6]);
  v28 = v21;
  pxrInternal__aapl__pxrReserved__::HgiMetalStepFunctions::HgiMetalStepFunctions(v66, v59, a5);
  v29 = v69;
  if (0xAAAAAAAAAAAAAAABLL * ((v68 - __p) >> 2) >= 0x11)
  {
    v62 = "hgiMetal/indirectCommandEncoder.mm";
    v63.i64[0] = "_EncodeDraw";
    v63.i64[1] = 605;
    v64 = "HgiIndirectCommandsUniquePtr pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_EncodeDraw(HgiComputeCmds *, const HgiGraphicsPipelineHandle &, const HgiResourceBindingsHandle &, const HgiVertexBufferBindingVector &, const HgiBufferHandle &, uint32_t, uint32_t, uint32_t, uint32_t)";
    v65 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v62, "stepFunctions.GetPatchBaseDescs().size() <= MaxStepFunctions", 0);
  }

  v30 = v59[80];
  *[v19 constantDataAtIndex:4] = PrimitiveType;
  v31 = [v19 constantDataAtIndex:5];
  *v31 = v29 | (a7 << 32);
  *(v31 + 8) = a10;
  *[v19 constantDataAtIndex:57] = v30;
  *[v19 constantDataAtIndex:58] = a11;
  v33 = *a5;
  v32 = a5[1];
  *[v19 constantDataAtIndex:59] = 0xAAAAAAAAAAAAAAABLL * (v32 - v33);
  v35 = __p;
  v34 = v68;
  *[v19 constantDataAtIndex:8] = -1431655765 * ((v34 - v35) >> 2);
  v36 = [v19 constantDataAtIndex:9];
  v37 = __p;
  v38 = v68;
  while (v37 != v38)
  {
    v39 = *v37;
    *(v36 + 8) = v37[2];
    *v36 = v39;
    v36 += 12;
    v37 += 3;
  }

  v40 = pxrInternal__aapl__pxrReserved__::HgiResourceBindings::GetDescriptor(*v24);
  v41 = *(v40 + 24);
  v42 = *(v40 + 32);
  if (v41 == v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0;
    do
    {
      if (*(v41 + 18) == 6)
      {
        v44 = **v41;
        if (v44)
        {
          [v19 setBuffer:*(v44 + 64) offset:*v41[3] atIndex:3];
          v43 = 1;
        }
      }

      v41 += 11;
    }

    while (v41 != v42);
  }

  if (v59[6] == 4 && (v43 & 1) == 0)
  {
    v45 = 72;
    if (v59[79] == 1)
    {
      v45 = 80;
    }

    v46 = *(v21 + v45);
    [v19 setBuffer:v46 offset:0 atIndex:3];
    [Encoder useResource:v46 usage:3];
  }

  v47 = *v56;
  if (*v56)
  {
    [v19 setBuffer:*(v47 + 64) offset:0 atIndex:1];
    [Encoder useResource:*(v47 + 64) usage:3];
  }

  v48 = *a5;
  v49 = a5[1];
  if (0xAAAAAAAAAAAAAAABLL * (v49 - *a5) >= 0x40)
  {
    v62 = "hgiMetal/indirectCommandEncoder.mm";
    v63.i64[0] = "_EncodeDraw";
    v63.i64[1] = 666;
    v64 = "HgiIndirectCommandsUniquePtr pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_EncodeDraw(HgiComputeCmds *, const HgiGraphicsPipelineHandle &, const HgiResourceBindingsHandle &, const HgiVertexBufferBindingVector &, const HgiBufferHandle &, uint32_t, uint32_t, uint32_t, uint32_t)";
    v65 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v62, "bindings.size() < MaxVertexBufferBindings", 0);
    v48 = *a5;
    v49 = a5[1];
  }

  if (v48 != v49)
  {
    v50 = 60;
    do
    {
      v51 = *v48;
      if (*v48)
      {
        [v19 setBuffer:*(v51 + 64) offset:*(v48 + 4) atIndex:v50];
        [Encoder useResource:*(v51 + 64) usage:3];
      }

      v48 += 3;
      ++v50;
    }

    while (v48 != v49);
  }

  if (*(v28 + 8))
  {
    objc_opt_respondsToSelector();
  }

  v52 = v70.n128_u64[1];
  [Encoder setComputePipelineState:v70.n128_u64[1]];
  [Encoder setBuffer:*(v23 + 7) offset:0 atIndex:26];
  v53 = [v52 threadExecutionWidth];
  v62 = v55;
  v63 = vdupq_n_s64(1uLL);
  v60 = v53;
  v61 = v63;
  [Encoder dispatchThreads:&v62 threadsPerThreadgroup:&v60];
  *a9 = v23;
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

  if (v66[0])
  {
    v66[1] = v66[0];
    operator delete(v66[0]);
  }
}

void sub_29ABB06C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_29ABA9C7C(va);
  (*(*v16 + 8))(v16);
  _Unwind_Resume(a1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::ExecuteDraw(pxrInternal__aapl__pxrReserved__::HgiMetal **a1, pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds *this, uint64_t a3)
{
  Encoder = pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsCmds::GetEncoder(this, 0);
  PrimaryCommandBuffer = pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryCommandBuffer(a1[2], a1, 0);
  pxrInternal__aapl__pxrReserved__::HgiMetalGraphicsPipeline::BindPipeline(*(a3 + 16), Encoder);
  v7 = *(a3 + 64);
  pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(*(a3 + 32), a1[2], Encoder, v7);
  if ([v7 storageMode])
  {
    objc_opt_respondsToSelector();
  }

  v8 = *(a3 + 48);
  v9 = *(a3 + 56);
  [Encoder setVertexBuffer:v9 offset:0 atIndex:26];
  [Encoder executeCommandsInBuffer:v8 withRange:{0, *(a3 + 8)}];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3254779904;
  v11[2] = sub_29ABB0864;
  v11[3] = &unk_2A2075040;
  v11[4] = v7;
  v11[5] = v9;
  v11[6] = v8;
  v11[7] = a1;
  return [PrimaryCommandBuffer addCompletedHandler:v11];
}

void sub_29ABB0864(uint64_t a1)
{
  v2 = *(a1 + 56);
  std::mutex::lock((v2 + 88));
  LODWORD(v3) = [*(a1 + 32) length];
  *(&v3 + 1) = *(a1 + 32);
  sub_29ABB0B8C((v2 + 176), &v3);
  LODWORD(v3) = [*(a1 + 40) length];
  *(&v3 + 1) = *(a1 + 40);
  sub_29ABB0B8C((v2 + 176), &v3);
  LODWORD(v3) = [*(a1 + 48) size];
  *(&v3 + 1) = *(a1 + 48);
  sub_29ABB0B8C((v2 + 152), &v3);
  std::mutex::unlock((v2 + 88));
}

void sub_29ABB091C(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 3);
  _Block_object_assign((a1 + 40), *(a2 + 40), 3);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 3);
}

void sub_29ABB097C(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 3);
  _Block_object_dispose(*(a1 + 40), 3);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 3);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::EncodeDraw(pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder *a1@<X0>, pxrInternal__aapl__pxrReserved__::HgiMetalComputeCmds *a2@<X1>, pxrInternal__aapl__pxrReserved__::HgiGraphicsPipeline **a3@<X2>, pxrInternal__aapl__pxrReserved__::HgiResourceBindings **a4@<X3>, uint64_t **a5@<X4>, uint64_t a6@<X6>, unsigned int a7@<W7>, void *a8@<X8>, int a9)
{
  v9[0] = 0;
  v9[1] = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalIndirectCommandEncoder::_EncodeDraw(a1, a2, a3, a4, a5, v9, a6, a7, a8, a9, 0);
}

void sub_29ABB0A10(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v11);
      v5 += v11;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_29A00C9A4();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = sub_29A012C48(a1, v9);
    }

    else
    {
      v10 = 0;
    }

    v12 = &v10[24 * v6];
    v13 = &v10[24 * v9];
    v14 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v12, v14);
    v15 = &v12[v14];
    v16 = *(a1 + 8) - *a1;
    v17 = &v12[-v16];
    memcpy(&v12[-v16], *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v15;
    *(a1 + 16) = v13;
    if (v18)
    {

      operator delete(v18);
    }
  }
}

_OWORD *sub_29ABB0B8C(uint64_t **a1, _OWORD *a2)
{
  v4 = operator new(0x30uLL);
  v5 = v4;
  v4[2] = *a2;
  v6 = a1 + 1;
  v7 = a1[1];
  if (v7)
  {
    do
    {
      while (1)
      {
        v6 = v7;
        if (*(v4 + 8) >= *(v7 + 8))
        {
          break;
        }

        v7 = *v7;
        v8 = v6;
        if (!*v6)
        {
          goto LABEL_8;
        }
      }

      v7 = v7[1];
    }

    while (v7);
    v8 = v6 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_8:
  sub_29A00B204(a1, v6, v8, v4);
  return v5;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::HgiMetalResourceBindings(pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings *this, const pxrInternal__aapl__pxrReserved__::HgiResourceBindingsDesc *a2)
{
  pxrInternal__aapl__pxrReserved__::HgiResourceBindings::HgiResourceBindings(this, a2);
}

{
  pxrInternal__aapl__pxrReserved__::HgiResourceBindings::HgiResourceBindings(this, a2);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::~HgiMetalResourceBindings(void **this)
{
  pxrInternal__aapl__pxrReserved__::HgiResourceBindings::~HgiResourceBindings(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiMetal *this, void *a3, uint64_t a4)
{
  BufferArgumentEncoder = pxrInternal__aapl__pxrReserved__::HgiMetal::GetBufferArgumentEncoder(this);
  SamplerArgumentEncoder = pxrInternal__aapl__pxrReserved__::HgiMetal::GetSamplerArgumentEncoder(this);
  TextureArgumentEncoder = pxrInternal__aapl__pxrReserved__::HgiMetal::GetTextureArgumentEncoder(this);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v29 = a1;
  if (v12 != v11)
  {
    v13 = TextureArgumentEncoder;
    while (1)
    {
      v14 = *v12;
      if (*(v12 + 8) - *v12 == 16)
      {
        goto LABEL_4;
      }

      v31 = "hgiMetal/resourceBindings.mm";
      v32 = "BindResources";
      v33 = 40;
      v34 = "void pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(HgiMetal *, id<MTLRenderCommandEncoder>, id<MTLBuffer>)";
      v35 = 0;
      if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v31, "texDesc.textures.size() == 1", 0))
      {
        break;
      }

LABEL_22:
      v12 += 64;
      if (v12 == v11)
      {
        goto LABEL_26;
      }
    }

    v14 = *v12;
LABEL_4:
    if (*v14)
    {
      TextureId = pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(*v14);
    }

    else
    {
      TextureId = 0;
    }

    v16 = *(v12 + 24);
    if (*(v12 + 32) == v16 || !*v16)
    {
      SamplerId = 0;
    }

    else
    {
      SamplerId = pxrInternal__aapl__pxrReserved__::HgiMetalSampler::GetSamplerId(*v16);
    }

    v18 = *(v12 + 56);
    if ((v18 & 0x81) != 0)
    {
      [SamplerArgumentEncoder setArgumentBuffer:a4 offset:8 * *(v12 + 52) + 1024];
      [SamplerArgumentEncoder setSamplerState:SamplerId atIndex:0];
      [v13 setArgumentBuffer:a4 offset:8 * *(v12 + 52) + 2048];
      [v13 setTexture:TextureId atIndex:0];
      v18 = *(v12 + 56);
    }

    if ((v18 & 2) != 0)
    {
      [SamplerArgumentEncoder setArgumentBuffer:a4 offset:8 * *(v12 + 52) + 1536];
      [SamplerArgumentEncoder setSamplerState:SamplerId atIndex:0];
      [v13 setArgumentBuffer:a4 offset:8 * *(v12 + 52) + 2560];
      [v13 setTexture:TextureId atIndex:0];
    }

    if (TextureId)
    {
      v19 = 5;
      if (!SamplerId)
      {
        v19 = 1;
      }

      if (*(v12 + 60))
      {
        v20 = v19 | 2;
      }

      else
      {
        v20 = v19;
      }

      [a3 useResource:TextureId usage:{v20, v29}];
    }

    goto LABEL_22;
  }

LABEL_26:
  [a3 setVertexBuffer:a4 offset:1024 atIndex:{28, v29}];
  [a3 setVertexBuffer:a4 offset:2048 atIndex:29];
  [a3 setFragmentBuffer:a4 offset:1536 atIndex:28];
  [a3 setFragmentBuffer:a4 offset:2560 atIndex:29];
  v21 = *(v30 + 32);
  v22 = *(v30 + 40);
  if (v21 != v22)
  {
    while (1)
    {
      v23 = *v21;
      if (v21[1] - *v21 == 16)
      {
        goto LABEL_28;
      }

      v31 = "hgiMetal/resourceBindings.mm";
      v32 = "BindResources";
      v33 = 127;
      v34 = "void pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(HgiMetal *, id<MTLRenderCommandEncoder>, id<MTLBuffer>)";
      v35 = 0;
      if (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v31, "bufDesc.buffers.size() == 1", 0))
      {
        break;
      }

LABEL_38:
      v21 += 11;
      if (v21 == v22)
      {
        goto LABEL_42;
      }
    }

    v23 = *v21;
LABEL_28:
    v24 = *(*v23 + 64);
    v25 = *v21[3];
    if (*(v21 + 18) == 6)
    {
      [a3 setTessellationFactorBuffer:v24 offset:*v21[3] instanceStride:0];
    }

    else
    {
      v26 = *(v21 + 20);
      if ((v26 & 0xC1) != 0)
      {
        [BufferArgumentEncoder setArgumentBuffer:a4 offset:8 * *(v21 + 19)];
        [BufferArgumentEncoder setBuffer:v24 offset:v25 atIndex:0];
        v26 = *(v21 + 20);
      }

      if ((v26 & 2) != 0)
      {
        [BufferArgumentEncoder setArgumentBuffer:a4 offset:8 * *(v21 + 19) + 512];
        [BufferArgumentEncoder setBuffer:v24 offset:v25 atIndex:0];
      }

      if (*(v21 + 84))
      {
        v27 = 3;
      }

      else
      {
        v27 = 1;
      }

      [a3 useResource:v24 usage:v27];
    }

    goto LABEL_38;
  }

LABEL_42:
  [a3 setVertexBuffer:a4 offset:0 atIndex:30];
  [a3 setFragmentBuffer:a4 offset:512 atIndex:30];
  [BufferArgumentEncoder setArgumentBuffer:a4 offset:3072];
  [a3 setVertexBuffer:a4 offset:3072 atIndex:27];
  return [a3 setFragmentBuffer:a4 offset:3072 atIndex:27];
}

{
  BufferArgumentEncoder = pxrInternal__aapl__pxrReserved__::HgiMetal::GetBufferArgumentEncoder(this);
  SamplerArgumentEncoder = pxrInternal__aapl__pxrReserved__::HgiMetal::GetSamplerArgumentEncoder(this);
  TextureArgumentEncoder = pxrInternal__aapl__pxrReserved__::HgiMetal::GetTextureArgumentEncoder(this);
  v12 = *(a1 + 56);
  v11 = *(a1 + 64);
  v24 = a1;
  if (v12 != v11)
  {
    v13 = TextureArgumentEncoder;
    do
    {
      if (*(v12 + 8) - *v12 == 16 || (v26 = "hgiMetal/resourceBindings.mm", v27 = "BindResources", v28 = 209, v29 = "void pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(HgiMetal *, id<MTLComputeCommandEncoder>, id<MTLBuffer>)", v30 = 0, (pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "texDesc.textures.size() == 1", 0) & 1) != 0))
      {
        if ((*(v12 + 56) & 4) != 0)
        {
          v14 = **(v12 + 24);
          v15 = **v12;
          [SamplerArgumentEncoder setArgumentBuffer:a4 offset:8 * *(v12 + 52) + 1024];
          [SamplerArgumentEncoder setSamplerState:pxrInternal__aapl__pxrReserved__::HgiMetalSampler::GetSamplerId(v14) atIndex:0];
          [v13 setArgumentBuffer:a4 offset:8 * *(v12 + 52) + 2048];
          if (*(v12 + 60))
          {
            v16 = 3;
          }

          else
          {
            v16 = 1;
          }

          [v13 setTexture:pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(v15) atIndex:0];
          if (v14)
          {
            v17 = v16 | 4;
          }

          else
          {
            v17 = v16;
          }

          [a3 useResource:pxrInternal__aapl__pxrReserved__::HgiMetalTexture::GetTextureId(v15) usage:v17];
        }
      }

      v12 += 64;
    }

    while (v12 != v11);
  }

  [a3 setBuffer:a4 offset:1024 atIndex:{28, v24}];
  [a3 setBuffer:a4 offset:2048 atIndex:29];
  v18 = *(v25 + 32);
  for (i = *(v25 + 40); v18 != i; v18 += 88)
  {
    if (*(v18 + 8) - *v18 != 16)
    {
      v26 = "hgiMetal/resourceBindings.mm";
      v27 = "BindResources";
      v28 = 258;
      v29 = "void pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::BindResources(HgiMetal *, id<MTLComputeCommandEncoder>, id<MTLBuffer>)";
      v30 = 0;
      if ((pxrInternal__aapl__pxrReserved__::Tf_FailedVerifyHelper(&v26, "bufDesc.buffers.size() == 1", 0) & 1) == 0)
      {
        continue;
      }
    }

    if ((*(v18 + 80) & 4) != 0)
    {
      v20 = *(**v18 + 64);
      v21 = **(v18 + 24);
      [BufferArgumentEncoder setArgumentBuffer:a4 offset:8 * *(v18 + 76)];
      [BufferArgumentEncoder setBuffer:v20 offset:v21 atIndex:0];
      if (*(v18 + 84))
      {
        v22 = 3;
      }

      else
      {
        v22 = 1;
      }

      [a3 useResource:v20 usage:v22];
    }
  }

  [a3 setBuffer:a4 offset:0 atIndex:30];
  [BufferArgumentEncoder setArgumentBuffer:a4 offset:3072];
  return [a3 setBuffer:a4 offset:3072 atIndex:27];
}

void *pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::SetConstantValues(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, const void *a5)
{
  LODWORD(v6) = a4;
  if ([a1 length] - 3072 >= a4)
  {
    v6 = v6;
  }

  else
  {
    v9[0] = "hgiMetal/resourceBindings.mm";
    v9[1] = "SetConstantValues";
    v9[2] = 306;
    v9[3] = "static void pxrInternal__aapl__pxrReserved__::HgiMetalResourceBindings::SetConstantValues(id<MTLBuffer>, HgiShaderStage, uint32_t, uint32_t, const void *)";
    v10 = 0;
    pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v9, 1, "Not enough space reserved for constants");
    v6 = [a1 length] - 3072;
  }

  return memcpy(([a1 contents] + 3072), a5, v6);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalSampler::HgiMetalSampler(uint64_t a1, pxrInternal__aapl__pxrReserved__::HgiMetal *a2, uint64_t a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HgiSampler::HgiSampler(a1, a3);
  *v6 = &unk_2A2075118;
  v6[9] = 0;
  v7 = v6 + 9;
  v6[10] = 0;
  v8 = objc_opt_new();
  [v8 setSAddressMode:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetSamplerAddressMode(*(a3 + 36))];
  [v8 setTAddressMode:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetSamplerAddressMode(*(a3 + 40))];
  [v8 setRAddressMode:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetSamplerAddressMode(*(a3 + 44))];
  [v8 setMinFilter:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetMinMagFilter(*(a3 + 28))];
  [v8 setMagFilter:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetMinMagFilter(*(a3 + 24))];
  [v8 setMipFilter:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetMipFilter(*(a3 + 32))];
  [v8 setSupportArgumentBuffers:1];
  [v8 setBorderColor:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetBorderColor(*(a3 + 48))];
  v9 = [v8 setCompareFunction:pxrInternal__aapl__pxrReserved__::HgiMetalConversions::GetCompareFunction(*(a3 + 56))];
  v10 = *(a3 + 32) != 2 && *(a3 + 28) == 0;
  if (!v10 && *(a3 + 24))
  {
    v11 = atomic_load(pxrInternal__aapl__pxrReserved__::HGI_MAX_ANISOTROPY);
    if (!v11)
    {
      pxrInternal__aapl__pxrReserved__::Tf_InitializeEnvSetting<int>();
    }

    v12 = fminf(*(a3 + 60), 16.0);
    if (v12 > *v11)
    {
      v12 = *v11;
    }

    v9 = [v8 setMaxAnisotropy:v12];
  }

  if (pxrInternal__aapl__pxrReserved__::HgiMetalDebugEnabled(v9))
  {
    v13 = (a1 + 8);
    if (*(a1 + 31) < 0)
    {
      v13 = *v13;
    }

    [v8 setLabel:{objc_msgSend(MEMORY[0x29EDBA0F8], "stringWithUTF8String:", v13)}];
  }

  *v7 = [pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2) newSamplerStateWithDescriptor:v8];

  return a1;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalSampler::~HgiMetalSampler(pxrInternal__aapl__pxrReserved__::HgiMetalSampler *this)
{
  v2 = *(this + 10);
  if (v2)
  {

    *(this + 10) = 0;
  }

  v3 = *(this + 9);
  if (v3)
  {

    *(this + 9) = 0;
  }

  pxrInternal__aapl__pxrReserved__::HgiSampler::~HgiSampler(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalSampler::~HgiMetalSampler(this);

  operator delete(v1);
}

void sub_29ABB1924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::~HgiMetalShaderGenerator(va);
  if (v7[399] < 0)
  {
    operator delete(*v8);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunction::~HgiShaderFunction(v7);
  _Unwind_Resume(a1);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::~HgiMetalShaderFunction(id *this)
{
  this[50] = 0;
  if (*(this + 399) < 0)
  {
    operator delete(this[47]);
  }

  pxrInternal__aapl__pxrReserved__::HgiShaderFunction::~HgiShaderFunction(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::~HgiMetalShaderFunction(this);

  operator delete(v1);
}

BOOL pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction::IsValid(pxrInternal__aapl__pxrReserved__::HgiMetalShaderFunction *this)
{
  v1 = *(this + 399);
  if (v1 < 0)
  {
    v1 = *(this + 48);
  }

  return v1 == 0;
}

char *pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetOutputInstanceName@<X0>(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 95) >= 0)
  {
    v3 = *(this + 95);
  }

  else
  {
    v3 = *(this + 10);
  }

  result = sub_29A022DE0(a2, v3 + 6);
  if (result[23] >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v3)
  {
    v8 = *(this + 9);
    v7 = this + 72;
    v6 = v8;
    if (v7[23] >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    result = memmove(v5, v9, v3);
  }

  strcpy(&v5[v3], "Output");
  return result;
}

uint64_t *pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetScopeInstanceName(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this)
{
  if ((atomic_load_explicit(&qword_2A1748920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748920))
  {
    sub_29A008E78(&qword_2A1748908, "scope");
    __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1748908, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748920);
  }

  return &qword_2A1748908;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetConstantBufferTypeName(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this)
{
  sub_29A008864(v9);
  v2 = sub_29A00911C(&v10, "MSL", 3);
  v3 = this + 72;
  v4 = this + 72;
  if (*(this + 95) < 0)
  {
    v4 = *v3;
  }

  v15 = __toupper(*v4);
  v5 = sub_29A00911C(v2, &v15, 1);
  if (*(this + 95) < 0)
  {
    v3 = *v3;
  }

  v15 = v3[1];
  v6 = sub_29A00911C(v5, &v15, 1);
  sub_29A00911C(v6, "Uniforms", 8);
  std::stringbuf::str();
  v9[0] = *MEMORY[0x29EDC9528];
  v7 = *(MEMORY[0x29EDC9528] + 72);
  *(v9 + *(v9[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v10 = v7;
  v11 = MEMORY[0x29EDC9570] + 16;
  if (v13 < 0)
  {
    operator delete(v12[7].__locale_);
  }

  v11 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](&v14);
}

char *pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetConstantBufferInstanceName@<X0>(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 95) >= 0)
  {
    v3 = *(this + 95);
  }

  else
  {
    v3 = *(this + 10);
  }

  result = sub_29A022DE0(a2, v3 + 8);
  if (result[23] >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  if (v3)
  {
    v8 = *(this + 9);
    v7 = this + 72;
    v6 = v8;
    if (v7[23] >= 0)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    result = memmove(v5, v9, v3);
  }

  strcpy(&v5[v3], "Uniforms");
  return result;
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetInputsTypeName(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this@<X0>, void *a2@<X8>)
{
  if (*(this + 239) < 0)
  {
    sub_29A008D14(__p, *(this + 27), *(this + 28));
  }

  else
  {
    *__p = *(this + 216);
    v8 = *(this + 29);
  }

  v3 = HIBYTE(v8);
  if (SHIBYTE(v8) < 0)
  {
    if (__p[1])
    {
      v4 = __p[0];
LABEL_9:
      v5 = __toupper(*v4);
      v6 = __p;
      if (v8 < 0)
      {
        v6 = __p[0];
      }

      *v6 = v5;
      std::operator+<char>();
      if (v8 < 0)
      {
        goto LABEL_12;
      }

      return;
    }
  }

  else if (HIBYTE(v8))
  {
    v4 = __p;
    goto LABEL_9;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (v3 < 0)
  {
LABEL_12:
    operator delete(__p[0]);
  }
}

void sub_29ABB1F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetBindingsBufferTypeName(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this)
{
  v1 = atomic_load(&qword_2A1748928);
  if (!v1)
  {
    v1 = sub_29ABB8958();
  }

  if ((*v1 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v1 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v1);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__p, *EmptyString, EmptyString[1]);
  }

  else
  {
    v3 = *EmptyString;
    v8 = EmptyString[2];
    *__p = v3;
  }

  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = __toupper(*v4);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *v6 = v5;
  std::operator+<char>();
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABB2020(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetBindingsSamplerTypeName(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this)
{
  v1 = atomic_load(&qword_2A1748928);
  if (!v1)
  {
    v1 = sub_29ABB8958();
  }

  if ((*(v1 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v1 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v1);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__p, *EmptyString, EmptyString[1]);
  }

  else
  {
    v3 = *EmptyString;
    v8 = EmptyString[2];
    *__p = v3;
  }

  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = __toupper(*v4);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *v6 = v5;
  std::operator+<char>();
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABB2110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetBindingsTextureTypeName(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this)
{
  v1 = atomic_load(&qword_2A1748928);
  if (!v1)
  {
    v1 = sub_29ABB8958();
  }

  if ((*(v1 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*(v1 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v1);
  }

  if (*(EmptyString + 23) < 0)
  {
    sub_29A008D14(__p, *EmptyString, EmptyString[1]);
  }

  else
  {
    v3 = *EmptyString;
    v8 = EmptyString[2];
    *__p = v3;
  }

  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v5 = __toupper(*v4);
  if (v8 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  *v6 = v5;
  std::operator+<char>();
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29ABB2200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::_Init(pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint *this, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, uint64_t a8)
{
  *(&v70 + 1) = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A1748948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748948))
  {
    std::to_string(&v64, 27);
    v32 = std::string::insert(&v64, 0, "buffer(");
    v33 = *&v32->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    v34 = std::string::append(&v67, ")");
    v35 = *&v34->__r_.__value_.__l.__data_;
    unk_2A1748940 = *(&v34->__r_.__value_.__l + 2);
    xmmword_2A1748930 = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1748930, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748948);
  }

  if ((atomic_load_explicit(&qword_2A1748968, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748968))
  {
    std::to_string(&v64, 28);
    v36 = std::string::insert(&v64, 0, "buffer(");
    v37 = *&v36->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v36->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v37;
    v36->__r_.__value_.__l.__size_ = 0;
    v36->__r_.__value_.__r.__words[2] = 0;
    v36->__r_.__value_.__r.__words[0] = 0;
    v38 = std::string::append(&v67, ")");
    v39 = *&v38->__r_.__value_.__l.__data_;
    unk_2A1748960 = *(&v38->__r_.__value_.__l + 2);
    xmmword_2A1748950 = v39;
    v38->__r_.__value_.__l.__size_ = 0;
    v38->__r_.__value_.__r.__words[2] = 0;
    v38->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1748950, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748968);
  }

  if ((atomic_load_explicit(&qword_2A1748988, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1748988))
  {
    std::to_string(&v64, 29);
    v40 = std::string::insert(&v64, 0, "buffer(");
    v41 = *&v40->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v41;
    v40->__r_.__value_.__l.__size_ = 0;
    v40->__r_.__value_.__r.__words[2] = 0;
    v40->__r_.__value_.__r.__words[0] = 0;
    v42 = std::string::append(&v67, ")");
    v43 = *&v42->__r_.__value_.__l.__data_;
    unk_2A1748980 = *(&v42->__r_.__value_.__l + 2);
    xmmword_2A1748970 = v43;
    v42->__r_.__value_.__l.__size_ = 0;
    v42->__r_.__value_.__r.__words[2] = 0;
    v42->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1748970, &dword_299FE7000);
    __cxa_guard_release(&qword_2A1748988);
  }

  if ((atomic_load_explicit(&qword_2A17489A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17489A8))
  {
    std::to_string(&v64, 30);
    v44 = std::string::insert(&v64, 0, "buffer(");
    v45 = *&v44->__r_.__value_.__l.__data_;
    v67.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
    *&v67.__r_.__value_.__l.__data_ = v45;
    v44->__r_.__value_.__l.__size_ = 0;
    v44->__r_.__value_.__r.__words[2] = 0;
    v44->__r_.__value_.__r.__words[0] = 0;
    v46 = std::string::append(&v67, ")");
    v47 = *&v46->__r_.__value_.__l.__data_;
    unk_2A17489A0 = *(&v46->__r_.__value_.__l + 2);
    xmmword_2A1748990 = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v64.__r_.__value_.__l.__data_);
    }

    __cxa_atexit(MEMORY[0x29EDC9388], &xmmword_2A1748990, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17489A8);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetConstantBufferTypeName(&v67, this);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetConstantBufferInstanceName(this, &v64);
  if (byte_2A1748947 >= 0)
  {
    v16 = &xmmword_2A1748930;
  }

  else
  {
    v16 = xmmword_2A1748930;
  }

  sub_29A008E78(&v62, v16);
  sub_29A008E78(v60, "const device");
  __p[0] = 0;
  __p[1] = 0;
  v59 = 0;
  *this = sub_29ABB2DB4(&v67, &v64, &v62, v60, 1u, a2, a8, __p);
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetInputsTypeName(this, &v67);
  sub_29A008E78(&v64, "stage_in");
  v62 = 0uLL;
  v63 = 0;
  if (*(this + 71) < 0)
  {
    sub_29A008D14(__dst, *(this + 6), *(this + 7));
  }

  else
  {
    *__dst = *(this + 3);
    v57 = *(this + 8);
  }

  *(this + 1) = sub_29ABB2DB4(&v67, this + 216, &v64, &v62, 0, a3, a8, __dst);
  if (SHIBYTE(v57) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  OutputInstanceName = pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetOutputInstanceName(this, &v62);
  v60[0] = 0;
  v60[1] = 0;
  v61 = 0;
  v54[1] = 0;
  v55 = 0;
  v54[0] = 0;
  v66 = 0;
  v18 = *(this + 167);
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(this + 19);
  }

  if (!v18 || *a4 == a4[1])
  {
    *(this + 2) = 0;
  }

  else
  {
    v65 = sub_29ABB8B70(a8, this + 144, a4, v54);
    memset(&v67, 0, sizeof(v67));
    sub_29A008E78(&v68, "");
    memset(&v64, 0, sizeof(v64));
    sub_29AB96C94(&v64, &v67, &v70, 1uLL);
    if (v69 < 0)
    {
      operator delete(v68);
    }

    if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v67.__r_.__value_.__l.__data_);
    }

    v19 = sub_29ABB8DDC(a8, &v62, &v64, v60, &v66, &v65);
    v67.__r_.__value_.__r.__words[0] = &v64;
    sub_29A0D2770(&v67);
    v20 = SHIBYTE(v55);
    *(this + 2) = v19;
    if (v20 < 0)
    {
      operator delete(v54[0]);
    }
  }

  if (SHIBYTE(v61) < 0)
  {
    operator delete(v60[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetBindingsBufferTypeName(OutputInstanceName);
  v21 = atomic_load(&qword_2A1748928);
  if (!v21)
  {
    v21 = sub_29ABB8958();
  }

  if ((*v21 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    EmptyString = ((*v21 & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    EmptyString = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v21);
  }

  if (byte_2A17489A7 >= 0)
  {
    v23 = &xmmword_2A1748990;
  }

  else
  {
    v23 = xmmword_2A1748990;
  }

  sub_29A008E78(&v64, v23);
  sub_29A008E78(&v62, "const device");
  v52[0] = 0;
  v52[1] = 0;
  v53 = 0;
  v24 = sub_29ABB2F58(&v67, EmptyString, &v64, &v62, a5, a8, v52);
  *(this + 3) = v24;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetBindingsSamplerTypeName(v24);
  v25 = atomic_load(&qword_2A1748928);
  if (!v25)
  {
    v25 = sub_29ABB8958();
  }

  if ((*(v25 + 1) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v26 = ((*(v25 + 1) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v26 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v25);
  }

  if (byte_2A1748967 >= 0)
  {
    v27 = &xmmword_2A1748950;
  }

  else
  {
    v27 = xmmword_2A1748950;
  }

  sub_29A008E78(&v64, v27);
  sub_29A008E78(&v62, "const device");
  v50[0] = 0;
  v50[1] = 0;
  v51 = 0;
  v28 = sub_29ABB2F58(&v67, v26, &v64, &v62, a6, a8, v50);
  *(this + 4) = v28;
  if (SHIBYTE(v51) < 0)
  {
    operator delete(v50[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }

  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetBindingsTextureTypeName(v28);
  v29 = atomic_load(&qword_2A1748928);
  if (!v29)
  {
    v29 = sub_29ABB8958();
  }

  if ((*(v29 + 2) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v30 = ((*(v29 + 2) & 0xFFFFFFFFFFFFFFF8) + 16);
  }

  else
  {
    v30 = pxrInternal__aapl__pxrReserved__::TfToken::_GetEmptyString(v29);
  }

  if (byte_2A1748987 >= 0)
  {
    v31 = &xmmword_2A1748970;
  }

  else
  {
    v31 = xmmword_2A1748970;
  }

  sub_29A008E78(&v64, v31);
  sub_29A008E78(&v62, "const device");
  v48[0] = 0;
  v48[1] = 0;
  v49 = 0;
  *(this + 5) = sub_29ABB2F58(&v67, v30, &v64, &v62, a7, a8, v48);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(v48[0]);
  }

  if (SHIBYTE(v63) < 0)
  {
    operator delete(v62);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
  }
}

void sub_29ABB2B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *__p, uint64_t a53, int a54, __int16 a55, char a56, char a57)
{
  if (*(v57 - 121) < 0)
  {
    operator delete(*(v57 - 144));
  }

  if (*(v57 - 161) < 0)
  {
    operator delete(*(v57 - 184));
  }

  __cxa_guard_abort(&qword_2A17489A8);
  _Unwind_Resume(a1);
}

void *sub_29ABB2DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, void *a6, uint64_t a7, uint64_t a8)
{
  *(&v22 + 1) = *MEMORY[0x29EDCA608];
  v17 = a5;
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (!v8 || *a6 == a6[1])
  {
    return 0;
  }

  v16 = sub_29ABB8B70(a7, a1, a6, a8);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v19 = *(a3 + 16);
  }

  sub_29A008E78(&__p, "");
  memset(v15, 0, sizeof(v15));
  sub_29AB96C94(v15, __dst, &v22, 1uLL);
  if (v21 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__dst[0]);
  }

  v13 = sub_29ABB8C88(a7, a2, v15, a4, &v17, &v16);
  __dst[0] = v15;
  sub_29A0D2770(__dst);
  return v13;
}

void *sub_29ABB2F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  *(&v21 + 1) = *MEMORY[0x29EDCA608];
  v16 = 1;
  v7 = *(a1 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 8);
  }

  if (!v7 || *a5 == a5[1])
  {
    return 0;
  }

  v15 = sub_29ABB8B70(a6, a1, a5, a7);
  if (*(a3 + 23) < 0)
  {
    sub_29A008D14(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v18 = *(a3 + 16);
  }

  sub_29A008E78(&__p, "");
  memset(v14, 0, sizeof(v14));
  sub_29AB96C94(v14, __dst, &v21, 1uLL);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  v12 = sub_29ABB8EC4(a6, a2, v14, a4, &v16, &v15);
  __dst[0] = v14;
  sub_29A0D2770(__dst);
  return v12;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::_BuildKeywordInputShaderSections(pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator *this, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a2)
{
  *(&v15 + 1) = *MEMORY[0x29EDCA608];
  v4 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  if (!v4)
  {
    v4 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
  }

  sub_29ABB6524(&__dst, v4 + 17, "thread_position_in_grid");
  sub_29AB974A4(v11, &__dst.__r_.__value_.__l.__data_, 1);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 19);
  if (*(a2 + 20) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      memset(&v10, 0, sizeof(v10));
      if (sub_29ABB3370(v5 + v6, &v10))
      {
        if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_29A008D14(&__dst, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v10;
        }

        sub_29A008E78(&__p, "");
        memset(v9, 0, sizeof(v9));
        sub_29AB96C94(v9, &__dst, &v15, 1uLL);
        if (v14 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        sub_29ABB378C(this, v5 + v6, v5 + v6 + 24, v9);
        __dst.__r_.__value_.__r.__words[0] = v9;
        sub_29A0D2770(&__dst);
      }

      if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v10.__r_.__value_.__l.__data_);
      }

      ++v7;
      v5 = *(a2 + 19);
      v6 += 120;
    }

    while (v7 < 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 20) - v5) >> 3));
  }

  return sub_29A89AD9C(v11);
}

uint64_t sub_29ABB3370(uint64_t a1, std::string *a2)
{
  v32[6] = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A17489F8, memory_order_acquire) & 1) == 0)
  {
    v20 = a1;
    v6 = __cxa_guard_acquire(&qword_2A17489F8);
    a1 = v20;
    if (v6)
    {
      v7 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v7)
      {
        v7 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29ABB65B4(__dst, v7 + 4, "vertex_id");
      v8 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v8)
      {
        v8 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB958B4(&v22, v8 + 5, "instance_id");
      v9 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v9)
      {
        v9 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB958B4(&v23, v9 + 12, "base_vertex");
      v10 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v10)
      {
        v10 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95944(&v24, v10 + 13, "base_instance");
      v11 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v11)
      {
        v11 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29ABB6524(&v25, v11 + 17, "thread_position_in_grid");
      v12 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v12)
      {
        v12 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95CA4(&v26, v12 + 16, "patch_id");
      v13 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v13)
      {
        v13 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95AF4(&v27, v13 + 15, "position_in_patch");
      v14 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v14)
      {
        v14 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95B84(&v28, v14 + 6, "primitive_id");
      v15 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v15)
      {
        v15 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95B84(&v29, v15 + 10, "front_facing");
      v16 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v16)
      {
        v16 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95CA4(&v30, v16, "position");
      v17 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v17)
      {
        v17 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95AF4(&v31, v17 + 18, "barycentric_coord");
      v18 = atomic_load(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      if (!v18)
      {
        v18 = sub_29AB97418(&pxrInternal__aapl__pxrReserved__::HgiShaderKeywordTokens);
      }

      sub_29AB95CA4(v32, v18 + 9, "position");
      sub_29AB974A4(qword_2A17489D0, __dst, 12);
      for (i = 66; i != -6; i -= 6)
      {
        sub_29A0D2850(&__dst[i]);
      }

      __cxa_atexit(sub_29AB95148, qword_2A17489D0, &dword_299FE7000);
      __cxa_guard_release(&qword_2A17489F8);
      a1 = v20;
    }
  }

  v3 = *(a1 + 95);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 80);
  }

  if (v3)
  {
    v4 = sub_29A8877BC(qword_2A17489D0, (a1 + 72));
    if (a2 && v4)
    {
      std::string::operator=(a2, (v4 + 5));
      return 1;
    }

    if (v4)
    {
      return 1;
    }
  }

  return 0;
}

void sub_29ABB372C(_Unwind_Exception *a1)
{
  v3 = v1 + 528;
  v4 = -576;
  do
  {
    v3 = sub_29A0D2850(v3) - 48;
    v4 += 48;
  }

  while (v4);
  __cxa_guard_abort(&qword_2A17489F8);
  _Unwind_Resume(a1);
}

void *sub_29ABB378C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = operator new(0x98uLL);
  pxrInternal__aapl__pxrReserved__::HgiMetalKeywordInputShaderSection::HgiMetalKeywordInputShaderSection(v8, a2, a3, a4);
  v12 = v8;
  v13 = 0;
  sub_29AB94DF4((a1 + 48), &v12);
  v9 = v12;
  v12 = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = v13;
    v13 = 0;
    if (v10)
    {
      sub_29ABB8FC8(&v13, v10);
    }
  }

  return v8;
}

void sub_29ABB3844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a9)
  {
    sub_29B2C3F48();
  }

  _Unwind_Resume(exception_object);
}

void *pxrInternal__aapl__pxrReserved__::_BuildTessAttribute(uint64_t a1, uint64_t a2)
{
  sub_29A00911C((a1 + 16), "[[patch(", 8);
  if (*a2 == 1)
  {
    v4 = "quad, ";
    v5 = (a1 + 16);
    v6 = 6;
    goto LABEL_5;
  }

  if (!*a2)
  {
    v4 = "triangle, ";
    v5 = (a1 + 16);
    v6 = 10;
LABEL_5:
    sub_29A00911C(v5, v4, v6);
    goto LABEL_7;
  }

  v15[0] = "hgiMetal/shaderGenerator.mm";
  v15[1] = "_BuildTessAttribute";
  v15[2] = 1258;
  v15[3] = "void pxrInternal__aapl__pxrReserved__::_BuildTessAttribute(std::stringstream &, const HgiShaderFunctionTessellationDesc &)";
  v16 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v15, 1, "Unknown patch type");
LABEL_7:
  v9 = *(a2 + 16);
  v8 = a2 + 16;
  v7 = v9;
  v10 = *(v8 + 23);
  if (v10 >= 0)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (v10 >= 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = *(v8 + 8);
  }

  v13 = sub_29A00911C((a1 + 16), v11, v12);
  return sub_29A00911C(v13, ")]]", 3);
}

void *pxrInternal__aapl__pxrReserved__::_BuildFragmentAttribute(void *result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    return sub_29A00911C(result + 2, "[[early_fragment_tests]]\n", 25);
  }

  return result;
}

void *pxrInternal__aapl__pxrReserved__::_BuildComputeAttribute(void *result, int *a2)
{
  if (*a2 >= 1 && a2[1] >= 1 && a2[2] >= 1)
  {
    v3 = sub_29A00911C(result + 2, "[[max_total_threads_per_threadgroup(", 36);
    v4 = MEMORY[0x29C2C1ED0](v3, *a2);
    v5 = sub_29A00911C(v4, " * ", 3);
    v6 = MEMORY[0x29C2C1ED0](v5, a2[1]);
    v7 = sub_29A00911C(v6, " * ", 3);
    v8 = MEMORY[0x29C2C1ED0](v7, a2[2]);

    return sub_29A00911C(v8, ")]]\n", 4);
  }

  return result;
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::_BuildShaderStageEntryPoints@<X0>(pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator *this@<X0>, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a2@<X1>, void *a3@<X8>)
{
  v70[19] = *MEMORY[0x29EDCA608];
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::_BuildKeywordInputShaderSections(this, a2);
  v6 = *(a2 + 6);
  if (v6 == 128 || v6 == 64)
  {
    v8 = "patch_control_point";
  }

  else
  {
    v8 = "";
  }

  sub_29A008E78(&v46, v8);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  sub_29ABB6644(a2 + 13, this, 0, v50);
  sub_29ABB6DF0(a2 + 25, this, v51);
  sub_29ABB6DF0(a2 + 28, this, v52);
  v9 = *(a2 + 6);
  v10 = 1;
  if (v9 != 1 && v9 != 64)
  {
    v10 = v9 == 128;
  }

  sub_29ABB6644(a2 + 19, this, v10, __p);
  sub_29ABB7270(v51, __p, v53);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  sub_29ABB6644(a2 + 22, this, 0, __p);
  sub_29ABB7270(v52, __p, v54);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  memset(v55, 0, sizeof(v55));
  __p[0] = 0;
  sub_29ABB7C70(v40, 0x20uLL, __p);
  v11 = *(a2 + 10);
  v39 = a3;
  if (*(a2 + 11) == v11)
  {
    v18 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    LODWORD(v14) = 0;
    do
    {
      v15 = *(v11 + v12 + 48);
      if (v14 <= v15)
      {
        v14 = v15;
      }

      else
      {
        v14 = v14;
      }

      v16 = v40[0];
      v17 = (v40[1] - v40[0]) >> 3;
      if (v17 <= v14)
      {
        __p[0] = 0;
        sub_29ABB7A3C(v40, v17 + 32, __p);
        v11 = *(a2 + 10);
        v16 = v40[0];
      }

      v16[v15] = v11 + v12;
      ++v13;
      v11 = *(a2 + 10);
      v12 += 64;
    }

    while (v13 < (*(a2 + 11) - v11) >> 6);
    v18 = (v14 + 1);
  }

  v19 = 0;
  do
  {
    v20 = *(v40[0] + v19);
    sub_29A008E78(__p, "id");
    std::to_string(&v66, v19);
    v62 = 0uLL;
    v63 = 0;
    sub_29AB96C94(&v62, __p, v67, 1uLL);
    if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v66.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p[0]);
      if (v20)
      {
LABEL_29:
        v21 = atomic_load(&qword_2A1748928);
        if (!v21)
        {
          v21 = sub_29ABB8958();
        }

        v22 = sub_29ABB7A6C(this, v20, v21, v20 + 24, (v20 + 56), (v20 + 60), &v62);
        goto LABEL_37;
      }
    }

    else if (v20)
    {
      goto LABEL_29;
    }

    std::to_string(&v61, v19);
    v23 = std::string::insert(&v61, 0, "_unused");
    v24 = *&v23->__r_.__value_.__l.__data_;
    v65 = v23->__r_.__value_.__r.__words[2];
    *__p = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    v22 = sub_29ABB7B94(this, __p, &v62);
    if (SHIBYTE(v65) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

LABEL_37:
    __p[0] = v22;
    sub_29A0A71C8(v55, __p);
    __p[0] = &v62;
    sub_29A0D2770(__p);
    ++v19;
  }

  while (v18 != v19);
  if (v40[0])
  {
    v40[1] = v40[0];
    operator delete(v40[0]);
  }

  memset(v56, 0, sizeof(v56));
  memset(&v61, 0, sizeof(v61));
  v25 = *(a2 + 7);
  if (*(a2 + 8) != v25)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      sub_29A008E78(__p, "id");
      std::to_string(&v66, v27);
      v40[0] = 0;
      v40[1] = 0;
      v41 = 0;
      sub_29AB96C94(v40, __p, v67, 1uLL);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p[0]);
      }

      sub_29A008E78(__p, "id");
      std::to_string(&v66, v27);
      v62 = 0uLL;
      v63 = 0;
      sub_29AB96C94(&v62, __p, v67, 1uLL);
      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p[0]);
      }

      v28 = atomic_load(&qword_2A1748928);
      if (!v28)
      {
        v28 = sub_29ABB8958();
      }

      *&v59 = sub_29ABB7F88(this, v25 + v26, (v28 + 8), (*(a2 + 7) + v26 + 40), v40);
      __p[0] = v59;
      sub_29A0A71C8(v56, __p);
      v29 = atomic_load(&qword_2A1748928);
      if (!v29)
      {
        v29 = sub_29ABB8958();
      }

      v30 = *(a2 + 7) + v26;
      v31 = *(v30 + 32);
      LOBYTE(v57[0]) = v31 == 2;
      LOBYTE(v44) = v31 == 1;
      __p[0] = 0;
      __p[1] = 0;
      v65 = 0;
      v32 = sub_29ABB8098(this, (v25 + v26), (v29 + 16), &v62, &v59, (v30 + 24), (v30 + 28), v57, (v30 + 40), &v44, (v30 + 48), __p);
      if (SHIBYTE(v65) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = v32;
      sub_29A0A71C8(&v61, __p);
      __p[0] = &v62;
      sub_29A0D2770(__p);
      __p[0] = v40;
      sub_29A0D2770(__p);
      ++v27;
      v25 = *(a2 + 7);
      v26 += 56;
    }

    while (v27 < 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - v25) >> 3));
    if (v56[1].__r_.__value_.__r.__words[0])
    {
      v56[1].__r_.__value_.__l.__size_ = v56[1].__r_.__value_.__r.__words[0];
      operator delete(v56[1].__r_.__value_.__l.__data_);
    }
  }

  v56[1] = v61;
  sub_29A008864(__p);
  v33 = *(a2 + 6);
  if (v33 <= 3)
  {
    if (v33 == 1)
    {
      std::stringbuf::str();
      v34 = operator new(0xF0uLL);
      sub_29A008E78(v40, "vsInput");
      sub_29A008E78(&v62, "vsInput");
      sub_29A008E78(&v61, "vertex");
      sub_29A008E78(&v59, "vsInput");
      sub_29ABB9018(v34, &v46, this, v40, &v62, &v61, &v59, v57);
    }

    else
    {
      if (v33 != 2)
      {
        goto LABEL_84;
      }

      if (*(a2 + 360) == 1)
      {
        sub_29A00911C(&v65, "[[early_fragment_tests]]\n", 25);
      }

      std::stringbuf::str();
      v34 = operator new(0xF0uLL);
      sub_29A008E78(v40, "fs");
      sub_29A008E78(&v62, "Frag");
      sub_29A008E78(&v61, "fragment");
      sub_29A008E78(&v59, "vsOutput");
      sub_29ABB9018(v34, &v46, this, v40, &v62, &v61, &v59, v57);
    }

    goto LABEL_73;
  }

  switch(v33)
  {
    case 4:
      pxrInternal__aapl__pxrReserved__::_BuildComputeAttribute(__p, a2 + 62);
      std::stringbuf::str();
      v35 = operator new(0xF0uLL);
      sub_29A008E78(v40, "cs");
      sub_29A008E78(&v62, "Compute");
      sub_29A008E78(&v61, "kernel");
      sub_29A008E78(&v59, "void");
      sub_29A008E78(v57, "computeEntryPoint");
      *(v35 + 6) = 0;
      *(v35 + 7) = 0;
      *(v35 + 8) = 0;
      if (SHIBYTE(v41) < 0)
      {
        sub_29A008D14(v35 + 72, v40[0], v40[1]);
      }

      else
      {
        *(v35 + 72) = *v40;
        *(v35 + 11) = v41;
      }

      if (SHIBYTE(v63) < 0)
      {
        sub_29A008D14(v35 + 96, v62, *(&v62 + 1));
      }

      else
      {
        *(v35 + 6) = v62;
        *(v35 + 14) = v63;
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_29A008D14(v35 + 120, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
      }

      else
      {
        *(v35 + 5) = v61;
      }

      if (SHIBYTE(v60) < 0)
      {
        sub_29A008D14(v35 + 144, v59, *(&v59 + 1));
      }

      else
      {
        *(v35 + 9) = v59;
        *(v35 + 20) = v60;
      }

      if (SHIBYTE(v58) < 0)
      {
        sub_29A008D14(v35 + 168, v57[0], v57[1]);
      }

      else
      {
        *(v35 + 168) = *v57;
        *(v35 + 23) = v58;
      }

      *(v35 + 12) = 0u;
      *(v35 + 13) = 0u;
      *(v35 + 14) = 0u;
      pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::_Init(v35, v50, v53, v54, v55, v56, v56[1].__r_.__value_.__r.__words, this);
      *v39 = v35;
      if (SHIBYTE(v58) < 0)
      {
        operator delete(v57[0]);
      }

      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if ((v45 & 0x80000000) == 0)
      {
        goto LABEL_109;
      }

      v36 = v44;
LABEL_83:
      operator delete(v36);
      goto LABEL_109;
    case 64:
      pxrInternal__aapl__pxrReserved__::_BuildTessAttribute(__p, a2 + 264);
      std::stringbuf::str();
      v34 = operator new(0xF0uLL);
      sub_29A008E78(v40, "ptc");
      sub_29A008E78(&v62, "TessControl");
      sub_29A008E78(&v61, "vertex");
      sub_29A008E78(&v59, "tcInput");
      sub_29ABB9018(v34, &v46, this, v40, &v62, &v61, &v59, v57);
LABEL_73:
      *v39 = v34;
      if (SHIBYTE(v60) < 0)
      {
        operator delete(v59);
      }

      if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v61.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v63) < 0)
      {
        operator delete(v62);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[0]);
      }

      if ((SHIBYTE(v58) & 0x80000000) == 0)
      {
        goto LABEL_109;
      }

      v36 = v57[0];
      goto LABEL_83;
    case 128:
      pxrInternal__aapl__pxrReserved__::_BuildTessAttribute(__p, a2 + 264);
      std::stringbuf::str();
      v34 = operator new(0xF0uLL);
      sub_29A008E78(v40, "tv");
      sub_29A008E78(&v62, "TessVert");
      sub_29A008E78(&v61, "vertex");
      sub_29A008E78(&v59, "tvInput");
      sub_29ABB9018(v34, &v46, this, v40, &v62, &v61, &v59, v57);
      goto LABEL_73;
  }

LABEL_84:
  v40[0] = "hgiMetal/shaderGenerator.mm";
  v40[1] = "_BuildShaderStageEntryPoints";
  v41 = 1369;
  v42 = "std::unique_ptr<HgiMetalShaderStageEntryPoint> pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::_BuildShaderStageEntryPoints(const HgiShaderFunctionDesc &)";
  v43 = 0;
  pxrInternal__aapl__pxrReserved__::Tf_PostErrorHelper(v40, 1, "Unknown shader stage");
  *v39 = 0;
LABEL_109:
  __p[0] = *MEMORY[0x29EDC9528];
  v37 = *(MEMORY[0x29EDC9528] + 72);
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x29EDC9528] + 64);
  v65 = v37;
  v66.__r_.__value_.__r.__words[0] = MEMORY[0x29EDC9570] + 16;
  if (v69 < 0)
  {
    operator delete(v68);
  }

  v66.__r_.__value_.__r.__words[0] = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v66.__r_.__value_.__r.__words[1]);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](v70);
  return sub_29ABB4AF4(&v46);
}

void sub_29ABB4658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  a71 = &a68;
  sub_29A0D2770(&a71);
  a71 = &a15;
  sub_29A0D2770(&a71);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  if (a56)
  {
    a57 = a56;
    operator delete(a56);
  }

  if (a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  if (a47)
  {
    a48 = a47;
    operator delete(a47);
  }

  if (a44)
  {
    a45 = a44;
    operator delete(a44);
  }

  if (a41)
  {
    a42 = a41;
    operator delete(a41);
  }

  if (a38)
  {
    a39 = a38;
    operator delete(a38);
  }

  if (a35)
  {
    a36 = a35;
    operator delete(a35);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29ABB4AF4(uint64_t a1)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 168);
  if (v4)
  {
    *(a1 + 176) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 144);
  if (v5)
  {
    *(a1 + 152) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    *(a1 + 128) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    *(a1 + 104) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    *(a1 + 56) = v9;
    operator delete(v9);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

pxrInternal__aapl__pxrReserved__::HgiMetal **pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::HgiMetalShaderGenerator(pxrInternal__aapl__pxrReserved__::HgiMetal **this, const pxrInternal__aapl__pxrReserved__::HgiMetal *a2, const pxrInternal__aapl__pxrReserved__::HgiShaderFunctionDesc *a3)
{
  v6 = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::HgiShaderGenerator(this, a3);
  *v6 = &unk_2A20751B0;
  *(v6 + 5) = a2;
  *(v6 + 6) = 0;
  *(v6 + 7) = 0;
  *(v6 + 8) = 0;
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::_BuildShaderStageEntryPoints(v6, a3, v6 + 9);
  if ((atomic_load_explicit(&qword_2A17489C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A17489C8))
  {
    sub_29A008E78(qword_2A17489B0, "");
    __cxa_atexit(MEMORY[0x29EDC9388], qword_2A17489B0, &dword_299FE7000);
    __cxa_guard_release(&qword_2A17489C8);
  }

  v7 = *(a3 + 16);
  v8 = *(a3 + 17);
  if (v7 != v8)
  {
    do
    {
      v28[0] = 0;
      v28[1] = 0;
      v9 = v7 + 96;
      v29 = 0;
      sub_29ABB503C(this, v7, v7 + 24, qword_2A17489B0, v28, v7 + 96);
      __p[0] = v28;
      sub_29A0D2770(__p);
      v7 = v9 + 24;
    }

    while (v9 + 24 != v8);
  }

  sub_29A008864(v28);
  PrimaryDevice = pxrInternal__aapl__pxrReserved__::HgiMetal::GetPrimaryDevice(a2);
  v11 = *(a3 + 6);
  if ((atomic_load_explicit(&qword_2A1748A38, memory_order_acquire) & 1) == 0)
  {
    v25 = PrimaryDevice;
    if (__cxa_guard_acquire(&qword_2A1748A38))
    {
      sub_29ABB82D4(v25, v11);
      __cxa_atexit(MEMORY[0x29EDC9388], &qword_2A1748A20, &dword_299FE7000);
      __cxa_guard_release(&qword_2A1748A38);
    }
  }

  if (byte_2A1748A37 >= 0)
  {
    v12 = &qword_2A1748A20;
  }

  else
  {
    v12 = qword_2A1748A20;
  }

  if (byte_2A1748A37 >= 0)
  {
    v13 = byte_2A1748A37;
  }

  else
  {
    v13 = unk_2A1748A28;
  }

  sub_29A00911C(&v29, v12, v13);
  v14 = *(a3 + 6);
  if (v14 == 128 || v14 == 64)
  {
    v15 = sub_29A00911C(&v29, "#define VERTEX_CONTROL_POINTS_PER_PATCH ", 40);
    v16 = *(a3 + 303);
    if (v16 >= 0)
    {
      v17 = a3 + 280;
    }

    else
    {
      v17 = *(a3 + 35);
    }

    if (v16 >= 0)
    {
      v18 = *(a3 + 303);
    }

    else
    {
      v18 = *(a3 + 36);
    }

    v19 = sub_29A00911C(v15, v17, v18);
    sub_29A00911C(v19, "\n", 1);
  }

  Capabilities = pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(this[5]);
  if (*(Capabilities + 75))
  {
    v21 = "#define discard discard_fragment(); discarded_fragment = true;\n";
  }

  else
  {
    v21 = "#define discard discard_fragment();\n";
  }

  if (*(Capabilities + 75))
  {
    v22 = 63;
  }

  else
  {
    v22 = 36;
  }

  sub_29A00911C(&v29, v21, v22);
  std::stringbuf::str();
  sub_29ABB5104(this, __p, "Headers");
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

  v28[0] = *MEMORY[0x29EDC9528];
  v23 = *(MEMORY[0x29EDC9528] + 72);
  *(v28 + *(v28[0] - 24)) = *(MEMORY[0x29EDC9528] + 64);
  v29 = v23;
  v30 = MEMORY[0x29EDC9570] + 16;
  if (v32 < 0)
  {
    operator delete(v31[7].__locale_);
  }

  v30 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v31);
  std::iostream::~basic_iostream();
  MEMORY[0x29C2C4390](&v33);
  return this;
}

void sub_29ABB4F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  __cxa_guard_abort(&qword_2A1748A38);
  sub_29A008B0C(&a15);
  sub_29ABB94B0((v15 + 72), 0);
  sub_29AB95E54(&a15);
  pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::~HgiShaderGenerator(v15);
  _Unwind_Resume(a1);
}

pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection *sub_29ABB503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29ABB8848(a2, a3, a4, a5, a6, &v13);
  v7 = v13;
  v12 = v13;
  v13 = 0;
  sub_29AB94DF4((a1 + 48), &v12);
  v8 = v12;
  v12 = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  v9 = v13;
  v13 = 0;
  if (v9)
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection::~HgiMetalMemberShaderSection(v9);
    operator delete(v10);
  }

  return v7;
}

void sub_29ABB50DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, pxrInternal__aapl__pxrReserved__::HgiMetalMemberShaderSection *a10)
{
  v11 = a9;
  a9 = 0;
  if (v11)
  {
    sub_29B2C2CDC();
  }

  sub_29B2C3F94(&a9, &a10);
  _Unwind_Resume(a1);
}

void *sub_29ABB5104(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = operator new(0x98uLL);
  sub_29A008E78(__p, a3);
  pxrInternal__aapl__pxrReserved__::HgiMetalMacroShaderSection::HgiMetalMacroShaderSection(v6, a2, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = 0;
  __p[0] = v6;
  sub_29AB94DF4((a1 + 48), __p);
  v7 = __p[0];
  __p[0] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
    v9 = 0;
  }

  return v6;
}

void sub_29ABB51CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (__p)
  {
    sub_29B2C3F48();
  }

  _Unwind_Resume(exception_object);
}

void pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::~HgiMetalShaderGenerator(pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator *this)
{
  sub_29ABB94B0(this + 9, 0);
  v2 = (this + 48);
  sub_29AB95E54(&v2);
  pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::~HgiShaderGenerator(this);
}

{
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::~HgiMetalShaderGenerator(this);

  operator delete(v1);
}

uint64_t pxrInternal__aapl__pxrReserved__::HgiMetalShaderGenerator::_Execute(uint64_t a1, void *a2)
{
  sub_29A00911C(a2, "\n// //////// Global Macros ////////\n", 36);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  while (v4 != v5)
  {
    v6 = *v4++;
    (*(*v6 + 64))(v6, a2);
  }

  ShaderCodeDeclarations = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderCodeDeclarations(a1);
  v8 = strlen(ShaderCodeDeclarations);
  sub_29A00911C(a2, ShaderCodeDeclarations, v8);
  sub_29A00911C(a2, "\n// //////// Global Member Declarations ////////\n", 49);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(*v11 + 72))(v11, a2);
  }

  v123 = a2;
  v12 = sub_29A00911C(a2, "struct ", 7);
  std::operator+<char>();
  if (v137 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v137 >= 0)
  {
    v14 = HIBYTE(v137);
  }

  else
  {
    v14 = v136;
  }

  v15 = sub_29A00911C(v12, p_p, v14);
  sub_29A00911C(v15, " { \n", 4);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p);
  }

  sub_29A00911C(a2, "\n// //////// Scope Structs ////////\n", 36);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  while (v16 != v17)
  {
    v18 = *v16++;
    (*(*v18 + 80))(v18, a2);
  }

  sub_29A00911C(a2, "\n// //////// Scope Member Declarations ////////\n", 48);
  if ((*(pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*(a1 + 40)) + 75) & 1) != 0 && pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderStage(a1) == 2)
  {
    sub_29A00911C(a2, "BOOL discarded_fragment;\n", 25);
  }

  v19 = *(a1 + 48);
  v20 = *(a1 + 56);
  while (v19 != v20)
  {
    v21 = *v19++;
    (*(*v21 + 88))(v21, a2);
  }

  sub_29A00911C(a2, "\n// //////// Scope Function Definitions ////////\n", 49);
  v22 = *(a1 + 48);
  v23 = *(a1 + 56);
  while (v22 != v23)
  {
    v24 = *v22++;
    (*(*v24 + 96))(v24, a2);
  }

  std::operator+<char>();
  if (v137 >= 0)
  {
    v25 = &__p;
  }

  else
  {
    v25 = __p;
  }

  if (v137 >= 0)
  {
    v26 = HIBYTE(v137);
  }

  else
  {
    v26 = v136;
  }

  v27 = sub_29A00911C(a2, v25, v26);
  sub_29A00911C(v27, "(\n", 2);
  if (SHIBYTE(v137) < 0)
  {
    operator delete(__p);
  }

  v28 = a2;
  sub_29A00911C(a2, "\n// //////// Scope Constructor Declarations ////////\n", 53);
  v30 = *(a1 + 48);
  v29 = *(a1 + 56);
  v118 = a1;
  if (v30 == v29)
  {
    sub_29A00911C(a2, ")", 1);
    v119 = 0;
  }

  else
  {
    v119 = 0;
    v120 = *MEMORY[0x29EDC9528];
    v31 = *(MEMORY[0x29EDC9528] + 64);
    v32 = *(MEMORY[0x29EDC9528] + 72);
    v33 = 1;
    do
    {
      sub_29A008864(&__p);
      if ((*(**v30 + 104))(*v30, &v137))
      {
        if ((v33 & 1) == 0)
        {
          sub_29A00911C(v123, ",\n", 2);
        }

        std::stringbuf::str();
        if (v129 >= 0)
        {
          v34 = &v127;
        }

        else
        {
          v34 = v127;
        }

        if (v129 >= 0)
        {
          v35 = HIBYTE(v129);
        }

        else
        {
          v35 = v128;
        }

        sub_29A00911C(v123, v34, v35);
        if (SHIBYTE(v129) < 0)
        {
          operator delete(v127);
        }

        v33 = 0;
        v119 = 1;
      }

      __p = v120;
      *(&__p + *(v120 - 3)) = v31;
      v137 = v32;
      v138 = MEMORY[0x29EDC9570] + 16;
      if (v141 < 0)
      {
        operator delete(v140);
      }

      v138 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v139);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](v142);
      ++v30;
    }

    while (v30 != v29);
    v28 = v123;
    sub_29A00911C(v123, ")", 1);
    if (v119)
    {
      sub_29A00911C(v123, ":\n", 2);
      sub_29A00911C(v123, "\n// //////// Scope Constructor Initialization ////////\n", 55);
      v36 = *(v118 + 48);
      v37 = *(v118 + 56);
      if (v36 == v37)
      {
        v119 = 1;
      }

      else
      {
        v38 = 1;
        do
        {
          sub_29A008864(&__p);
          if ((*(**v36 + 112))(*v36, &v137))
          {
            if ((v38 & 1) == 0)
            {
              sub_29A00911C(v123, ",\n", 2);
            }

            std::stringbuf::str();
            if (v129 >= 0)
            {
              v39 = &v127;
            }

            else
            {
              v39 = v127;
            }

            if (v129 >= 0)
            {
              v40 = HIBYTE(v129);
            }

            else
            {
              v40 = v128;
            }

            sub_29A00911C(v123, v39, v40);
            if (SHIBYTE(v129) < 0)
            {
              operator delete(v127);
            }

            v38 = 0;
          }

          __p = v120;
          *(&__p + *(v120 - 3)) = v31;
          v137 = v32;
          v138 = MEMORY[0x29EDC9570] + 16;
          if (v141 < 0)
          {
            operator delete(v140);
          }

          v138 = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(v139);
          std::iostream::~basic_iostream();
          MEMORY[0x29C2C4390](v142);
          ++v36;
        }

        while (v36 != v37);
      }

      v28 = v123;
    }

    else
    {
      v119 = 0;
    }

    a1 = v118;
  }

  sub_29A00911C(v28, "{};\n\n", 5);
  ShaderCode = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderCode(a1);
  v42 = strlen(ShaderCode);
  sub_29A00911C(v28, ShaderCode, v42);
  sub_29A00911C(v28, "};\n\n", 4);
  v43 = *(*(a1 + 72) + 16);
  sub_29A008864(&__p);
  v117 = v43;
  if (v43 && pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderStage(a1) != 64)
  {
    StructTypeDeclaration = pxrInternal__aapl__pxrReserved__::HgiMetalStructInstanceShaderSection::GetStructTypeDeclaration(v43);
    pxrInternal__aapl__pxrReserved__::HgiShaderSection::WriteIdentifier(StructTypeDeclaration, &v137);
  }

  else
  {
    sub_29A00911C(&v137, "void", 4);
  }

  v45 = *(a1 + 72);
  v48 = *(v45 + 192);
  v46 = v45 + 192;
  v47 = v48;
  v49 = *(v46 + 23);
  if (v49 >= 0)
  {
    v50 = v46;
  }

  else
  {
    v50 = v47;
  }

  if (v49 >= 0)
  {
    v51 = *(v46 + 23);
  }

  else
  {
    v51 = *(v46 + 8);
  }

  sub_29A00911C(v123, v50, v51);
  v52 = *(a1 + 72);
  v55 = *(v52 + 120);
  v53 = v52 + 120;
  v54 = v55;
  v56 = *(v53 + 23);
  if (v56 >= 0)
  {
    v57 = v53;
  }

  else
  {
    v57 = v54;
  }

  if (v56 >= 0)
  {
    v58 = *(v53 + 23);
  }

  else
  {
    v58 = *(v53 + 8);
  }

  sub_29A00911C(v123, v57, v58);
  v59 = sub_29A00911C(v123, " ", 1);
  std::stringbuf::str();
  if (v129 >= 0)
  {
    v60 = &v127;
  }

  else
  {
    v60 = v127;
  }

  if (v129 >= 0)
  {
    v61 = HIBYTE(v129);
  }

  else
  {
    v61 = v128;
  }

  v62 = sub_29A00911C(v59, v60, v61);
  v63 = sub_29A00911C(v62, " ", 1);
  v64 = *(a1 + 72);
  v67 = *(v64 + 168);
  v65 = v64 + 168;
  v66 = v67;
  v68 = *(v65 + 23);
  if (v68 >= 0)
  {
    v69 = v65;
  }

  else
  {
    v69 = v66;
  }

  if (v68 >= 0)
  {
    v70 = *(v65 + 23);
  }

  else
  {
    v70 = *(v65 + 8);
  }

  v71 = sub_29A00911C(v63, v69, v70);
  sub_29A00911C(v71, "(\n", 2);
  if (SHIBYTE(v129) < 0)
  {
    operator delete(v127);
  }

  sub_29A00911C(v123, "\n// //////// Entry Point Parameter Declarations ////////\n", 57);
  v72 = *(a1 + 48);
  v73 = *(a1 + 56);
  if (v72 != v73)
  {
    v121 = *MEMORY[0x29EDC9528];
    v74 = *(MEMORY[0x29EDC9528] + 64);
    v75 = *(MEMORY[0x29EDC9528] + 72);
    v76 = 1;
    do
    {
      sub_29A008864(&v127);
      if ((*(**v72 + 128))(*v72, &v129))
      {
        if ((v76 & 1) == 0)
        {
          sub_29A00911C(v123, ",\n", 2);
        }

        std::stringbuf::str();
        if ((v126 & 0x80u) == 0)
        {
          v77 = &v124;
        }

        else
        {
          v77 = v124;
        }

        if ((v126 & 0x80u) == 0)
        {
          v78 = v126;
        }

        else
        {
          v78 = v125;
        }

        sub_29A00911C(v123, v77, v78);
        if (v126 < 0)
        {
          operator delete(v124);
        }

        v76 = 0;
      }

      v127 = v121;
      *(&v127 + *(v121 - 3)) = v74;
      v129 = v75;
      v130 = MEMORY[0x29EDC9570] + 16;
      if (v133 < 0)
      {
        operator delete(v132);
      }

      v130 = MEMORY[0x29EDC9568] + 16;
      std::locale::~locale(v131);
      std::iostream::~basic_iostream();
      MEMORY[0x29C2C4390](v134);
      ++v72;
    }

    while (v72 != v73);
  }

  sub_29A00911C(v123, "){\n", 3);
  v79 = v118;
  v80 = MEMORY[0x29EDC9528];
  std::operator+<char>();
  if (v129 >= 0)
  {
    v81 = &v127;
  }

  else
  {
    v81 = v127;
  }

  if (v129 >= 0)
  {
    v82 = HIBYTE(v129);
  }

  else
  {
    v82 = v128;
  }

  v83 = sub_29A00911C(v123, v81, v82);
  v84 = sub_29A00911C(v83, " ", 1);
  pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetScopeInstanceName(v84);
  if (byte_2A174891F >= 0)
  {
    v85 = &qword_2A1748908;
  }

  else
  {
    v85 = qword_2A1748908;
  }

  if (byte_2A174891F >= 0)
  {
    v86 = byte_2A174891F;
  }

  else
  {
    v86 = unk_2A1748910;
  }

  sub_29A00911C(v84, v85, v86);
  if (SHIBYTE(v129) < 0)
  {
    operator delete(v127);
  }

  if (v119)
  {
    sub_29A00911C(v123, "(\n", 2);
    sub_29A00911C(v123, "\n// //////// Scope Constructor Instantiation ////////\n", 54);
    v87 = *(v118 + 48);
    v88 = *(v118 + 56);
    if (v87 != v88)
    {
      v122 = *MEMORY[0x29EDC9528];
      v89 = *(MEMORY[0x29EDC9528] + 64);
      v90 = *(MEMORY[0x29EDC9528] + 72);
      v91 = 1;
      do
      {
        sub_29A008864(&v127);
        if ((*(**v87 + 120))(*v87, &v129))
        {
          if ((v91 & 1) == 0)
          {
            sub_29A00911C(v123, ",\n", 2);
          }

          std::stringbuf::str();
          if ((v126 & 0x80u) == 0)
          {
            v92 = &v124;
          }

          else
          {
            v92 = v124;
          }

          if ((v126 & 0x80u) == 0)
          {
            v93 = v126;
          }

          else
          {
            v93 = v125;
          }

          sub_29A00911C(v123, v92, v93);
          if (v126 < 0)
          {
            operator delete(v124);
          }

          v91 = 0;
        }

        v127 = v122;
        *(&v127 + *(v122 - 3)) = v89;
        v129 = v90;
        v130 = MEMORY[0x29EDC9570] + 16;
        if (v133 < 0)
        {
          operator delete(v132);
        }

        v130 = MEMORY[0x29EDC9568] + 16;
        std::locale::~locale(v131);
        std::iostream::~basic_iostream();
        MEMORY[0x29C2C4390](v134);
        ++v87;
      }

      while (v87 != v88);
    }

    sub_29A00911C(v123, ")", 1);
    v79 = v118;
    v80 = MEMORY[0x29EDC9528];
  }

  sub_29A00911C(v123, ";\n", 2);
  sub_29A00911C(v123, "\n// //////// Entry Point Function Executions ////////\n", 54);
  Capabilities = pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*(v79 + 40));
  if (*(Capabilities + 75) == 1)
  {
    Capabilities = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderStage(v79);
    if (Capabilities == 2)
    {
      pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetScopeInstanceName(Capabilities);
      if (byte_2A174891F >= 0)
      {
        v95 = &qword_2A1748908;
      }

      else
      {
        v95 = qword_2A1748908;
      }

      if (byte_2A174891F >= 0)
      {
        v96 = byte_2A174891F;
      }

      else
      {
        v96 = unk_2A1748910;
      }

      v97 = sub_29A00911C(v123, v95, v96);
      Capabilities = sub_29A00911C(v97, ".discarded_fragment = false;\n", 29);
    }
  }

  v98 = *(v79 + 48);
  for (i = *(v79 + 56); v98 != i; ++v98)
  {
    v100 = *v98;
    pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetScopeInstanceName(Capabilities);
    Capabilities = (*(*v100 + 136))(v100, v123, &qword_2A1748908);
    if (Capabilities)
    {
      Capabilities = sub_29A00911C(v123, "\n", 1);
    }
  }

  ShaderStage = pxrInternal__aapl__pxrReserved__::HgiMetal::GetCapabilities(*(v79 + 40));
  if (*(ShaderStage + 75) == 1)
  {
    ShaderStage = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderStage(v79);
    if (ShaderStage == 2)
    {
      v102 = sub_29A00911C(v123, "if (", 4);
      pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetScopeInstanceName(v102);
      if (byte_2A174891F >= 0)
      {
        v103 = &qword_2A1748908;
      }

      else
      {
        v103 = qword_2A1748908;
      }

      if (byte_2A174891F >= 0)
      {
        v104 = byte_2A174891F;
      }

      else
      {
        v104 = unk_2A1748910;
      }

      v105 = sub_29A00911C(v102, v103, v104);
      sub_29A00911C(v105, ".discarded_fragment)\n", 21);
      sub_29A00911C(v123, "{\n", 2);
      if (v117)
      {
        v106 = "    return {};\n";
      }

      else
      {
        v106 = "    return;\n";
      }

      if (v117)
      {
        v107 = 15;
      }

      else
      {
        v107 = 12;
      }

      sub_29A00911C(v123, v106, v107);
      ShaderStage = sub_29A00911C(v123, "}\n", 2);
    }
  }

  if (v117 && (ShaderStage = pxrInternal__aapl__pxrReserved__::HgiShaderGenerator::_GetShaderStage(v79), ShaderStage != 64))
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetOutputInstanceName(*(v79 + 72), &v127);
    v111 = sub_29A00911C(v123, "return ", 7);
    if (v129 >= 0)
    {
      v112 = &v127;
    }

    else
    {
      v112 = v127;
    }

    if (v129 >= 0)
    {
      v113 = HIBYTE(v129);
    }

    else
    {
      v113 = v128;
    }

    v114 = sub_29A00911C(v111, v112, v113);
    sub_29A00911C(v114, ";\n", 2);
    if (SHIBYTE(v129) < 0)
    {
      operator delete(v127);
    }
  }

  else
  {
    pxrInternal__aapl__pxrReserved__::HgiMetalShaderStageEntryPoint::GetScopeInstanceName(ShaderStage);
    if (byte_2A174891F >= 0)
    {
      v108 = &qword_2A1748908;
    }

    else
    {
      v108 = qword_2A1748908;
    }

    if (byte_2A174891F >= 0)
    {
      v109 = byte_2A174891F;
    }

    else
    {
      v109 = unk_2A1748910;
    }

    v110 = sub_29A00911C(v123, v108, v109);
    sub_29A00911C(v110, ".main();\n", 9);
  }

  sub_29A00911C(v123, "}\n", 2);
  __p = *v80;
  v115 = *(v80 + 72);
  *(&__p + *(__p - 3)) = *(v80 + 64);
  v137 = v115;
  v138 = MEMORY[0x29EDC9570] + 16;
  if (v141 < 0)
  {
    operator delete(v140);
  }

  v138 = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(v139);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C2C4390](v142);
}