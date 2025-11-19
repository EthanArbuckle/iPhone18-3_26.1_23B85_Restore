void sub_25FF6BAC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  LiSceneDrawer::~LiSceneDrawer(&a53);
  ProGL::GL::~GL((v53 - 136));
  _Unwind_Resume(a1);
}

ProShade::UniformData *LiSolidRenderer::setupClipPlanes(LiSolidRenderer *this, LiSceneObject *a2, const LiClipSet *a3)
{
  result = ProShade::UniformData::getCurrentContextUniformData(this);
  if (*(a3 + 3) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = LiClipPlaneInfo::get(v7);
      if (v7 >= *(a3 + 3))
      {
        PCArray_base::badIndex(v8);
      }

      result = ProShade::UniformData::set<PCVector4<double>>(v5, v8, (*(a3 + 2) + v6));
      v7 = (v7 + 1);
      v6 += 32;
    }

    while (v7 < *(a3 + 3));
  }

  return result;
}

uint64_t LiSolidRenderer::setupFilters(uint64_t this)
{
  if (*(this + 540) >= 1)
  {
    v1 = this;
    v2 = 0;
    v3 = 0;
    do
    {
      v4 = *(*(v1 + 544) + v2);
      if (!v4)
      {
        throw_PCNullPointerException(1);
      }

      this = (*(*v4 + 32))(v4, v3++);
      v2 += 16;
    }

    while (v3 < *(v1 + 540));
  }

  return this;
}

void LiSolidRenderer::renderMultisampleTile(LiSolidRenderer *this, ProGL::GL *a2, LiSceneObject *a3, const LiTextureCoordinator *a4, ProGL::Framebuffer *a5, ProGL::Framebuffer *a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13, unsigned int a14, GLuint a15, GLuint a16, BOOL a17)
{
  ProGL::Framebuffer::bind(a5, a2, 0x8D40u);
  RGBOperation = HGGLBlendingInfo::GetRGBOperation(a5);
  (*(*this + 48))(this, a3, a4, RGBOperation, a16, a7, a8, a9, __PAIR64__(a13, a10), a14);
  ProGL::Framebuffer::bind(a6, a2, 0x8D40u);
  ProGL::Framebuffer::attach(a6, a2, 0x8D40u, 0x8CE0u, 0xDE1u, a15, 0);
  if ((*(this + 636) & 1) != 0 || a17)
  {
    ProGL::Framebuffer::attach(a6, a2, 0x8D40u, 0x8D00u, 0xDE1u, a16, 0);
  }

  v23 = HGGLBlendingInfo::GetRGBOperation(a5);
  glBindFramebuffer(0x8CA8u, v23);
  v24 = HGGLBlendingInfo::GetRGBOperation(a6);
  glBindFramebuffer(0x8CA9u, v24);
  v25 = HGGLBlendingInfo::GetRGBOperation(a5);
  glBindFramebuffer(0x8D40u, v25);
  ProGL::Framebuffer::detach(a6, a2, 0x8CE0u, 0xDE1u);

  ProGL::Framebuffer::detach(a6, a2, 0x8D00u, 0xDE1u);
}

uint64_t LiSolidRenderer::renderNonMultisampleTile(LiSolidRenderer *this, ProGL::GL *a2, LiSceneObject *a3, const LiTextureCoordinator *a4, ProGL::Framebuffer *a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, unsigned int a10, GLuint a11, GLuint a12, unsigned int a13, BOOL a14)
{
  ProGL::Framebuffer::bind(a5, a2, 0x8D40u);
  ProGL::Framebuffer::attach(a5, a2, 0x8D40u, 0x8CE0u, 0xDE1u, a11, 0);
  ProGL::Framebuffer::attach(a5, a2, 0x8D40u, 0x8D00u, 0xDE1u, a12, 0);
  RGBOperation = HGGLBlendingInfo::GetRGBOperation(a5);
  v20 = *(*this + 48);

  return v20(this, a3, a4, RGBOperation, a12, a6, a7, a8, a9);
}

void LiSolidRenderer::drawTile(LiSolidRenderer *this, unsigned int a2, unsigned int a3, int a4, int a5, unsigned int a6, unsigned int a7, GLuint a8)
{
  ProGL::GL::GL(v29);
  glDisable(0xBE2u);
  glDisable(0xB71u);
  glDisable(0xB44u);
  glUseProgram(0);
  glViewport(0, 0, a2, a3);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, a8);
  glEnable(0xDE1u);
  glTexParameterf(0xDE1u, 0x2800u, 9729.0);
  glTexParameterf(0xDE1u, 0x2801u, 9729.0);
  glTexParameteri(0xDE1u, 0x2802u, 33071);
  glTexParameteri(0xDE1u, 0x2803u, 33071);
  v16 = (a6 * a4) - vcvtd_n_f64_u32(a2, 1uLL);
  v17 = (a7 * a5) - vcvtd_n_f64_u32(a3, 1uLL);
  v18 = v17 + a7;
  *&v19 = v16;
  *&v17 = v17;
  v28 = __PAIR64__(LODWORD(v17), v19);
  v20 = v16 + a6;
  *&v20 = v20;
  v27 = __PAIR64__(LODWORD(v17), LODWORD(v20));
  *&v17 = v18;
  v26 = __PAIR64__(LODWORD(v17), LODWORD(v20));
  v25 = __PAIR64__(LODWORD(v17), v19);
  LODWORD(v20) = *(this + 99);
  v21 = *&v20;
  *&v22 = v21 / (v21 + v21 + a6);
  *&v21 = v21 / (v21 + v21 + a7);
  v24 = __PAIR64__(LODWORD(v21), v22);
  LiSolidUtils::drawRect(v29, &v28, &v27, &v26, &v25, 33984, &v24);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, 0);
  glDisable(0xDE1u);
  LiSolidUtils::getGLRenderer(v29, v23);
  ProGL::GL::~GL(v29);
}

void sub_25FF6C0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

void LiSolidRenderer::renderScene(LiSolidRenderer *this, ProGL::GL *a2, LiSceneObject *a3, const LiTextureCoordinator *a4, LiSceneObject *a5, uint64_t a6)
{
  v9 = a6;
  v10 = a5;
  v63 = *MEMORY[0x277D85DE8];
  if (*(this + 392) == 1)
  {
    v61 = 0;
    (*(*this + 64))(this, a5, a6, &v61 + 4, &v61);
    LODWORD(v6) = HIDWORD(v61);
    LODWORD(v7) = v61;
    LODWORD(v8) = *(this + 99);
    LiSolidRenderer::setupTransparency(this, v13, a3, a4);
    if (*(this + 138) < 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = (*(this + 111) != 1);
    }

    v19 = *(this + 109);
    ProGL::Framebuffer::Framebuffer(params, a2);
    ProGL::Framebuffer::Framebuffer(v59, a2);
    PCWorkingColorVector::PCWorkingColorVector(v57);
    PCWorkingColorVector::PCWorkingColorVector(&v56);
    PCWorkingColorVector::PCWorkingColorVector(&v55);
    PCWorkingColorVector::PCWorkingColorVector(&v54);
    PCWorkingColorVector::PCWorkingColorVector(&v53);
    v20 = v6;
    v21 = v8 + v8;
    v22 = v7;
    v52 = 0;
    v48 = (v21 + v22);
    v49 = (v21 + v20);
    (*(*this + 32))(this, &v52 + 4, &v52);
    if ((v14 & 1) == 0 && (*(this + 636) & 1) == 0 && v19)
    {
LABEL_22:
      LiSolidUtils::createMultisampleColorBuffer(a2, *(this + 109));
    }

    LiSolidUtils::createRedTexture(v62);
    v23 = v62[0];
    v62[0] = 0uLL;
    v24 = *(&v56 + 1);
    v56 = v23;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      if (*(&v62[0] + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62[0] + 1));
      }
    }

    Name = ProGL::TextureHandle::getName(&v56);
    if (v19)
    {
      v25 = 0;
    }

    else
    {
      v25 = v14;
    }

    if (v25 == 1)
    {
      LiSolidUtils::createRedTexture(v62);
      v26 = v62[0];
      v62[0] = 0uLL;
      v27 = *(&v55 + 1);
      v55 = v26;
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        if (*(&v62[0] + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v62[0] + 1));
        }
      }

      v45 = ProGL::TextureHandle::getName(&v55);
    }

    else
    {
      if (v19)
      {
        goto LABEL_22;
      }

      v45 = 0;
    }

    memset(v62, 0, sizeof(v62));
    if ((*(this + 456) & 1) == 0 && Multipass::multipassNeeded(a3, v14))
    {
      operator new();
    }

    v42 = vcvtpd_u64_f64(v9 / v22);
    if (v42)
    {
      v28 = 0;
      v43 = vcvtpd_u64_f64(v10 / v20);
      v44 = v14;
      do
      {
        if (v43)
        {
          v29 = 0;
          do
          {
            for (i = 0; i != 1; ++i)
            {
              if (v14)
              {
                v30 = *(this + 138);
                if (v30 >= 1)
                {
                  v31 = v9;
                  v14 = v10;
                  v32 = 0;
                  v33 = v19;
                  v34 = v45;
                  v35 = Name;
                  do
                  {
                    *(this + 139) = v32;
                    v36 = *(v62 + v32);
                    v37 = v33;
                    if (v33)
                    {
                      LiSolidRenderer::renderMultisampleTile(this, a2, a3, a4, params, v59, v29, v28, HIDWORD(v61), v61, v40, HIDWORD(v40), v14, v31, v36, v35, 1);
                    }

                    else
                    {
                      LiSolidRenderer::renderNonMultisampleTile(this, a2, a3, a4, v59, v29, v28, HIDWORD(v61), __SPAIR64__(v14, v61), v31, v36, v35, v41, 0);
                    }

                    if (*(this + 636) == 1)
                    {
                      (*(*this + 72))(this, a2, this + 560, *(v62 + v32), v35, v49, v48);
                    }

                    v33 = v37;
                    if (v37)
                    {
                      v38 = v35;
                    }

                    else
                    {
                      v38 = v34;
                    }

                    if (!v37)
                    {
                      v34 = v35;
                    }

                    ++v32;
                    v30 = *(this + 138);
                    v35 = v38;
                  }

                  while (v32 < v30);
                  v10 = v14;
                  v9 = v31;
                  LODWORD(v14) = v44;
                  v19 = v37;
                }

                OZChannelBase::setRangeName(a2, v30);
              }

              else
              {
                if (v19 && *(this + 520) != 1)
                {
                  LiSolidRenderer::renderMultisampleTile(this, a2, a3, a4, params, v59, v29, v28, HIDWORD(v61), v61, v40, HIDWORD(v40), v10, v9, 0, Name, 0);
                }

                else
                {
                  LiSolidRenderer::renderNonMultisampleTile(this, a2, a3, a4, v59, v29, v28, HIDWORD(v61), __SPAIR64__(v10, v61), v9, 0, Name, v41, 0);
                }

                if (*(this + 636) == 1)
                {
                  (*(*this + 72))(this, a2, this + 560, 0, Name, v49, v48);
                }
              }
            }

            if (*(this + 448))
            {
              v39 = *(this + 113);
            }

            else
            {
              v39 = 0;
            }

            glBindFramebuffer(0x8D40u, v39);
            (*(*this + 56))(this, v10, v9, v29, v28, HIDWORD(v61), v61, 0);
            v29 = (v29 + 1);
          }

          while (v29 != v43);
        }

        v28 = (v28 + 1);
      }

      while (v28 != v42);
    }

    if (*(&v53 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
    }

    if (*(&v54 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v54 + 1));
    }

    if (*(&v55 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v55 + 1));
    }

    if (*(&v56 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v56 + 1));
    }

    if (v58)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    ProGL::Framebuffer::~Framebuffer(v59);
    ProGL::Framebuffer::~Framebuffer(params);
  }

  else
  {
    params[0] = 0;
    ProGL::GL_Wrap::getIntegerv(a2, 0x8CA6u, params);
    *(this + 138) = 0;
    v15 = *(this + 50);
    v16 = *(this + 51);
    v17 = *(this + 52);
    v18 = *(this + 53);
    glClearColor(v15, v16, v17, v18);
    glDepthMask(1u);
    glViewport(0, 0, v10, v9);
    glClear(0x4100u);
    (*(*this + 48))(this, a3, a4, params[0], 0, 0, 0, v10, __PAIR64__(v10, v9), v9);
  }
}

void sub_25FF6C8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, std::__shared_weak_count *a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, char a34)
{
  if (a2)
  {
    MEMORY[0x2666E9F00](v34, 0x10E0C4017AFA08ELL);
    if (a24)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a24);
    }

    if (a26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a26);
    }

    if (a28)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a28);
    }

    if (a30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a30);
    }

    if (a33)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a33);
    }

    ProGL::Framebuffer::~Framebuffer(&a34);
    ProGL::Framebuffer::~Framebuffer((v35 - 232));
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    JUMPOUT(0x25FF6C870);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiSolidRenderer::setupTransparency(uint64_t this, ProGL::GL *a2, LiSceneObject *a3, const LiTextureCoordinator *a4)
{
  if (*(this + 440) >= 2u)
  {
    v5 = this;
    this = LiSolidUtils::anyTransparencyInScene(a3, a2);
    if (this == 1 || (*(a4 + 8) & 1) != 0)
    {
      v6 = *(v5 + 440);
    }

    else
    {
      v6 = 0;
      if (this == 2)
      {
        *(v5 + 520) = 1;
        *(v5 + 524) = *(v5 + 436);
      }
    }

    *(v5 + 552) = v6;
  }

  return this;
}

uint64_t Multipass::multipassNeeded(Multipass *this, LiSceneObject *a2)
{
  v2 = a2;
  ProGL::GL::GL(&v14);
  if (LiSolidUtils::getGLRenderer(&v14, v4) == 1)
  {
    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::LiSceneIterator(v16, this);
    while (1)
    {
      if (!v17)
      {
        LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::~LiSceneIterator(v16);
        goto LABEL_7;
      }

      if (BYTE2(v17[6].var2))
      {
        break;
      }

      LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::operator++(v16);
    }

    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::~LiSceneIterator(v16);
    ProGL::GL::~GL(&v14);
    v7 = 1;
  }

  else
  {
LABEL_7:
    ProGL::GL::~GL(&v14);
    params = 0;
    glGetIntegerv(0x8872u, &params);
    v21 = 0;
    v22 = 0;
    v20 = &unk_2871F25A8;
    v23 = 0;
    LiSceneIterator<LiLight,LiSceneIteratorAlways>::LiSceneIterator(v16, this);
    v5 = 0;
    while (1)
    {
      v6 = v17;
      if (!v17)
      {
        break;
      }

      if (SHIDWORD(v21) <= 7)
      {
        LiLightSet::add(&v20, v17);
      }

      if ((LODWORD(v6[5].var12) - 1) <= 2)
      {
        v5 += BYTE1(v6[6].var6);
      }

      LiSceneIterator<LiLight,LiSceneIteratorAlways>::operator++(v16);
    }

    LiSceneIterator<LiLight,LiSceneIteratorAlways>::~LiSceneIterator(v16);
    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::LiSceneIterator(v16, this);
    v7 = 0;
    if (v5 <= 0)
    {
      v8 = v5 + v2;
    }

    else
    {
      v8 = v5 + v2 + 1;
    }

    while (v17 && (v7 & 1) == 0)
    {
      isObjectRef = OZChannelBase::isObjectRef(v17);
      v7 = v8 + isObjectRef > params;
      LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::operator++(v16);
    }

    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::~LiSceneIterator(v16);
    LiContext::LiContext(v16);
    v19 = 0;
    LiContext::setLights(v16, &v20);
    if (v2)
    {
      PCSharedCount::PCSharedCount(&v14);
      v18 = 0x100000002;
    }

    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::LiSceneIterator(&v14, this);
    while (1)
    {
      v10 = v15;
      if (!v15 || (v7 & 1) != 0)
      {
        break;
      }

      v12 = 0;
      PCSharedCount::PCSharedCount(&v13);
      v7 = LiSceneDrawer::buildProgram(v10, v16, &v12) ^ 1;
      PCSharedCount::~PCSharedCount(&v13);
      LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::operator++(&v14);
    }

    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::~LiSceneIterator(&v14);
    LiContext::~LiContext(v16);
    PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(&v20);
  }

  return v7 & 1;
}

void sub_25FF6CC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  LiContext::~LiContext(&a33);
  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v33 - 88);
  _Unwind_Resume(a1);
}

uint64_t Multipass::verifyShaders(Multipass *this)
{
  v2 = *(this + 9);
  v17[1] = 0;
  v17[2] = 0;
  v17[0] = &unk_2871F25A8;
  v18 = 0;
  LiSceneIterator<LiLight,LiSceneIteratorAlways>::LiSceneIterator(v11, *(this + 3));
  v3 = 2 * v2;
  while (v12)
  {
    LiLightSet::add(v17, v12);
    LiSceneIterator<LiLight,LiSceneIteratorAlways>::operator++(v11);
  }

  LiSceneIterator<LiLight,LiSceneIteratorAlways>::~LiSceneIterator(v11);
  if (v2 < 0)
  {
    v5 = 1;
  }

  else
  {
    v4 = 0;
    v5 = 1;
    v6 = v3 & ~(v3 >> 31);
    do
    {
      Multipass::setupForPass(this, v4);
      LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::LiSceneIterator(v15, *(this + 3));
      while (1)
      {
        v7 = v16;
        if (!v16)
        {
          break;
        }

        if ((LiLayeredMaterial::getErrorState(v16) & 1) == 0)
        {
          LiContext::LiContext(v11);
          v14 = 0;
          LiContext::setLights(v11, v17);
          if (*(this + 16) == 1)
          {
            PCSharedCount::PCSharedCount(&v10);
            v13 = 0x100000002;
          }

          if ((LiSceneDrawer::buildProgram(v7, v11, 0) & 1) == 0)
          {
            LiLayeredMaterial::setErrorState(v7);
            v5 = 0;
          }

          LiContext::~LiContext(v11);
        }

        LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::operator++(v15);
      }

      LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::~LiSceneIterator(v15);
    }

    while (v4++ != v6);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::~PCArray(v17);
  return v5 & 1;
}

uint64_t Multipass::setupForPass(Multipass *this, int a2)
{
  *(this + 8) = a2;
  result = Multipass::setStateOfEverything(this, 0);
  v5 = *(this + 9);
  v7 = *(this + 10);
  v6 = *(this + 11);
  v8 = *(this + 16);
  v9 = *(this + 17);
  v10 = a2 / v5;
  while (v8 != v9)
  {
    switch(v10)
    {
      case 2:
        LiLayeredMaterial::setUseDiffuseContributions(*v8, 1);
        result = LiLayeredMaterial::setDiffuseAlphaOnly(*v8, 1);
        break;
      case 1:
        result = LiLayeredMaterial::setUseSpecularContributions(*v8, 1);
        break;
      case 0:
        result = LiLayeredMaterial::setUseDiffuseContributions(*v8, 1);
        break;
    }

    ++v8;
  }

  if (v10 < 2)
  {
    v11 = a2 % v5;
    v12 = (v6 - v7) >> 3;
    if (a2 % v5 >= v12)
    {
      v13 = v11 - v12;
      v14 = *(this + 13);
      if (v13 >= (*(this + 14) - v14) >> 3)
      {
        v16 = *(this + 7);
        for (i = *(this + 8); v16 != i; *(v18 + 720) = 1)
        {
          v18 = *v16++;
        }
      }

      else
      {
        v15 = *(v14 + 8 * v13);

        return LiLayeredMaterial::setUseEnvironmentMap(v15, 1);
      }
    }

    else
    {
      *(*(*(this + 10) + 8 * v11) + 720) = 1;
    }
  }

  return result;
}

uint64_t ProShade::UniformData::set<PCVector4<double>>(ProShade::UniformData *a1, uint64_t a2, const void *a3)
{
  v7[18] = *MEMORY[0x277D85DE8];
  ProShade::Value::Value(v7);
  ProShade::Value::set(v7, 3, 4, a3);
  return ProShade::UniformData::set(a1, *(a2 + 16), v7);
}

uint64_t LiSolidRenderer::setRenderingParameter(uint64_t result, int a2, int *a3)
{
  if (!a2)
  {
    if (a3)
    {
      v3 = *a3;
      if (*a3 >= gMaxSamples)
      {
        v3 = gMaxSamples;
      }

      *(result + 436) = v3;
    }

    else
    {
      v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "Invalid object type sent to LiSolidRenderer::setRenderingParameter()", 68);
      std::ios_base::getloc((v4 + *(*v4 - 24)));
      v5 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
      (v5->__vftable[2].~facet_0)(v5, 10);
      std::locale::~locale(&v6);
      std::ostream::put();
      return std::ostream::flush();
    }
  }

  return result;
}

void LiSolidRenderer::getTileSize(LiSolidRenderer *this, unsigned int a2, unsigned int a3, unsigned int *a4, unsigned int *a5)
{
  v5 = gTileSize;
  *a4 = gTileSize;
  *a5 = v5;
}

uint64_t LiTextureCoordinator::textureForImage(LiTextureCoordinator *this, LiImageSource *a2)
{
  v4 = *(this + 3);
  v2 = this + 24;
  v3 = v4;
  if (!v4)
  {
    return 0;
  }

  v5 = v2;
  do
  {
    v6 = *(v3 + 4);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * v8];
  }

  while (v3);
  if (v5 != v2 && *(v5 + 4) <= a2)
  {
    return *(v5 + 5);
  }

  else
  {
    return 0;
  }
}

void LiMaterialTextureInfo::setTexture(LiMaterialTextureInfo *this, const ProGL::TextureHandle *a2)
{
  v3 = *a2;
  v2 = *(a2 + 1);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(this + 26);
  *(this + 25) = v3;
  *(this + 26) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t LiSceneIterator<LiLight,LiSceneIteratorAlways>::operator++(uint64_t a1)
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

uint64_t LiSceneIterator<LiLight,LiSceneIteratorAlways>::~LiSceneIterator(uint64_t a1)
{
  v2 = a1 + 16;
  *(a1 + 16) = &unk_28725F378;
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

uint64_t LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::operator++(uint64_t a1)
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

uint64_t LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::~LiSceneIterator(uint64_t a1)
{
  v2 = a1 + 16;
  *(a1 + 16) = &unk_28725F340;
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

void LiContext::setLights(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 12);
  if (*(a1 + 448) < v4)
  {
    v5 = 2 * v4 + 1;
  }

  else
  {
    v5 = *(a1 + 448);
  }

  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(a1 + 440, v4, v5);
  if (*(a2 + 12) >= 1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      LiLight::operator=(*(a1 + 456) + v6, *(a2 + 16) + v6);
      ++v7;
      v6 += 944;
    }

    while (v7 < *(a2 + 12));
  }

  *(a1 + 464) = *(a2 + 24);
}

void Multipass::Multipass(Multipass *this, ProGL::GL *a2, ProGL::GL *a3, int a4, LiSceneObject *a5, char a6)
{
  *this = a2;
  *(this + 2) = a3;
  *(this + 3) = a4;
  *(this + 16) = a6;
  *(this + 3) = a5;
  *(this + 4) = 0xFFFFFFFFLL;
  PCWorkingColorVector::PCWorkingColorVector((this + 40));
  *(this + 56) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 120) = 0u;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  LiSolidUtils::createColorTexture(*this, a3, a4, 6408, v15, v13, SHIDWORD(v13));
  v9 = v15[0];
  v15[0] = 0uLL;
  v10 = *(this + 6);
  *(this + 40) = v9;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    if (*(&v15[0] + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15[0] + 1));
    }
  }

  LiSceneIterator<LiLight,LiSceneIteratorAlways>::LiSceneIterator(v15, *(this + 3));
  while (*(&v15[0] + 1))
  {
    v14 = *(&v15[0] + 1);
    if (*(*(&v15[0] + 1) + 720))
    {
      if ((*(*(&v15[0] + 1) + 656) - 1) > 2 || (v11 = this + 80, (*(*(&v15[0] + 1) + 721) & 1) == 0))
      {
        v11 = this + 56;
      }

      std::vector<TXTabStop *>::push_back[abi:ne200100](v11, &v14);
    }

    LiSceneIterator<LiLight,LiSceneIteratorAlways>::operator++(v15);
  }

  LiSceneIterator<LiLight,LiSceneIteratorAlways>::~LiSceneIterator(v15);
  LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::LiSceneIterator(v15, *(this + 3));
  while (*(&v15[0] + 1))
  {
    v14 = *(&v15[0] + 1);
    std::vector<TXTabStop *>::push_back[abi:ne200100](this + 128, &v14);
    if (OZChannelBase::isObjectRef(v14))
    {
      std::vector<TXTabStop *>::push_back[abi:ne200100](this + 104, &v14);
    }

    LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::operator++(v15);
  }

  LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::~LiSceneIterator(v15);
  v12 = ((*(this + 14) - *(this + 13)) >> 3) + ((*(this + 11) - *(this + 10)) >> 3);
  *(this + 9) = v12;
  if (*(this + 8) != *(this + 7))
  {
    *(this + 9) = v12 + 1;
  }
}

void sub_25FF6D6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, char a11)
{
  v15 = v11[16];
  if (v15)
  {
    v11[17] = v15;
    operator delete(v15);
  }

  v16 = *v12;
  if (*v12)
  {
    v11[14] = v16;
    operator delete(v16);
  }

  v17 = *v14;
  if (*v14)
  {
    v11[11] = v17;
    operator delete(v17);
  }

  v18 = *v13;
  if (*v13)
  {
    v11[8] = v18;
    operator delete(v18);
  }

  v19 = v11[6];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  _Unwind_Resume(a1);
}

void Multipass::~Multipass(Multipass *this)
{
  Multipass::setStateOfEverything(this, 1);
  v2 = *(this + 16);
  if (v2)
  {
    *(this + 17) = v2;
    operator delete(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void *Multipass::setStateOfEverything(void *this, char a2)
{
  v3 = this;
  v4 = this[10];
  v5 = this[11];
  while (v4 != v5)
  {
    v6 = *v4++;
    *(v6 + 720) = a2;
  }

  v7 = this[7];
  v8 = this[8];
  while (v7 != v8)
  {
    v9 = *v7++;
    *(v9 + 720) = a2;
  }

  v10 = this[13];
  v11 = this[14];
  while (v10 != v11)
  {
    v12 = *v10++;
    this = LiLayeredMaterial::setUseEnvironmentMap(v12, a2);
  }

  v14 = v3[16];
  v13 = v3[17];
  while (v14 != v13)
  {
    LiLayeredMaterial::setMultipass(*v14, 1);
    LiLayeredMaterial::setDiffuseAlphaOnly(*v14, 0);
    LiLayeredMaterial::setUnlimitedSamplers(*v14, 0);
    LiLayeredMaterial::setUseDiffuseContributions(*v14, a2);
    v15 = *v14++;
    this = LiLayeredMaterial::setUseSpecularContributions(v15, a2);
  }

  return this;
}

void Multipass::combine(ProGL::GL **a1)
{
  v2 = *a1;
  ProGL::Framebuffer::Framebuffer(v3, *a1);
  ProGL::Framebuffer::bind(v3, v2, 0x8D40u);
  ProGL::Framebuffer::attach(v3, v2, 0x8D40u, 0x8CE0u, a1 + 5, 0);
  ProGL::Framebuffer::~Framebuffer(v3);
}

void PCArray<PCPtr<LiMaterialFilter>,PCArray_Traits<PCPtr<LiMaterialFilter>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725F308;
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

uint64_t PCArray<PCPtr<LiMaterialFilter>,PCArray_Traits<PCPtr<LiMaterialFilter>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725F308;
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

uint64_t ProShade::UniformData::set(ProShade::UniformData *this, ProShade::UniformNode *a2, const PCString *a3)
{
  v6[0] = a2;
  v6[2] = v6;
  v4 = std::__tree<std::__value_type<ProShade::UniformNode *,ProShade::Value>,std::__map_value_compare<ProShade::UniformNode *,std::__value_type<ProShade::UniformNode *,ProShade::Value>,std::less<ProShade::UniformNode *>,true>,std::allocator<std::__value_type<ProShade::UniformNode *,ProShade::Value>>>::__emplace_unique_key_args<ProShade::UniformNode *,std::piecewise_construct_t const&,std::tuple<ProShade::UniformNode * const&>,std::tuple<>>(this, v6);
  return ProShade::Value::operator=((v4 + 5), a3);
}

void *std::__tree<std::__value_type<ProShade::UniformNode *,ProShade::Value>,std::__map_value_compare<ProShade::UniformNode *,std::__value_type<ProShade::UniformNode *,ProShade::Value>,std::less<ProShade::UniformNode *>,true>,std::allocator<std::__value_type<ProShade::UniformNode *,ProShade::Value>>>::__emplace_unique_key_args<ProShade::UniformNode *,std::piecewise_construct_t const&,std::tuple<ProShade::UniformNode * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<ProShade::UniformNode *,ProShade::Value>,std::__map_value_compare<ProShade::UniformNode *,std::__value_type<ProShade::UniformNode *,ProShade::Value>,std::less<ProShade::UniformNode *>,true>,std::allocator<std::__value_type<ProShade::UniformNode *,ProShade::Value>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<ProShade::UniformNode * const&>,std::tuple<>>();
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

void sub_25FF6DBBC(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::LiSceneIterator(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_28725F340;
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

double LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::next(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    if (v3 && (v4 = v3, v3 = (*(*v3 + 136))(v3), v3))
    {
      v5 = *(a1 + 28);
      if (*(a1 + 24) <= v5)
      {
        v6 = 2 * (v5 + 1) + 1;
      }

      else
      {
        v6 = *(a1 + 24);
      }

      PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::resize(a1 + 16, v5 + 1, v6);
      v7 = *(a1 + 32) + 144 * *(a1 + 28);
      *(v7 - 144) = v4;
      *(v7 - 136) = 0;
      v8 = (a1 + 40);
      v9 = v7 - 128;
      if (a1 + 40 != v7 - 128)
      {
        v10 = 0;
        v11 = a1 + 40;
        v12 = v9;
        do
        {
          for (i = 0; i != 32; i += 8)
          {
            *(v12 + i) = *(v11 + i);
          }

          ++v10;
          v12 += 32;
          v11 += 32;
        }

        while (v10 != 4);
      }

      v14 = (*(*v4 + 144))(v4, 0);
      *(a1 + 8) = v14;
      PCMatrix44Tmpl<double>::operator*(v9, (v14 + 8), v32);
      if (v32 != v8)
      {
        for (j = 0; j != 8; j += 2)
        {
          v17 = &v8[j];
          v15 = v32[j];
          v18 = v32[j + 1];
          *v17 = v15;
          v17[1] = v18;
        }
      }
    }

    else
    {
      v19 = *(a1 + 28);
      if (v19)
      {
        v20 = (a1 + 40);
        while (1)
        {
          if (v19 <= 0)
          {
            PCArray_base::badIndex(v3);
          }

          v21 = *(a1 + 32) + 144 * v19;
          v22 = *(v21 - 144);
          v23 = *(v21 - 136);
          if (v23 < ((*(*v22 + 136))(v22) - 1))
          {
            break;
          }

          v24 = *(a1 + 28) - 1;
          if (*(a1 + 24) < v24)
          {
            v25 = 2 * v24 + 1;
          }

          else
          {
            v25 = *(a1 + 24);
          }

          v3 = PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::resize(a1 + 16, v24, v25);
          v19 = *(a1 + 28);
          if (!v19)
          {
            goto LABEL_25;
          }
        }

        ++*(v21 - 136);
        v26 = (*(*v22 + 144))(v22);
        *(a1 + 8) = v26;
        PCMatrix44Tmpl<double>::operator*(v21 - 128, (v26 + 8), v32);
        if (v32 != v20)
        {
          v27 = v36;
          *(a1 + 104) = v35;
          *(a1 + 120) = v27;
          v28 = v38;
          *(a1 + 136) = v37;
          *(a1 + 152) = v28;
          v29 = v32[1];
          *v20 = v32[0];
          *(a1 + 56) = v29;
          *&v15 = v33;
          v30 = v34;
          *(a1 + 72) = v33;
          *(a1 + 88) = v30;
        }
      }

      else
      {
LABEL_25:
        *(a1 + 8) = 0;
        *(a1 + 160) = 0x3FF0000000000000;
        *(a1 + 120) = 0x3FF0000000000000;
        *(a1 + 80) = 0x3FF0000000000000;
        *(a1 + 40) = 0x3FF0000000000000;
        *&v15 = 0;
        *(a1 + 48) = 0u;
        *(a1 + 64) = 0u;
        *(a1 + 88) = 0u;
        *(a1 + 104) = 0u;
        *(a1 + 128) = 0u;
        *(a1 + 144) = 0u;
      }
    }
  }

  return *&v15;
}

void PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725F340;
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

uint64_t PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::resize(uint64_t result, int a2, int a3)
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
    PCString::PCString(&v24, "PCArray::resize");
    PCException::PCException(exception, &v24);
    *exception = &unk_2872DE188;
  }

  v5 = result;
  if (v3 == *(result + 8))
  {
    v6 = *(result + 12);
    if (v6 < a2)
    {
      v7 = 144 * v6 + 96;
      v8 = a2 - v6;
      do
      {
        v9 = *(result + 16) + v7;
        *(v9 - 96) = 0;
        *(v9 - 88) = 0;
        *(v9 + 40) = 0x3FF0000000000000;
        *v9 = 0x3FF0000000000000;
        *(v9 - 40) = 0x3FF0000000000000;
        *(v9 - 80) = 0x3FF0000000000000;
        *(v9 - 72) = 0uLL;
        *(v9 - 56) = 0uLL;
        *(v9 - 32) = 0uLL;
        *(v9 - 16) = 0uLL;
        *(v9 + 8) = 0uLL;
        v7 += 144;
        *(v9 + 24) = 0uLL;
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

    v10 = *(result + 12);
    if (a2 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = a2;
    }

    if (v11 < 1)
    {
      LODWORD(v11) = 0;
    }

    else
    {
      v12 = *(result + 16);
      v13 = v11;
      v14 = 0;
      do
      {
        *v14 = *v12;
        v15 = v12[1];
        v16 = v12[2];
        v17 = v12[4];
        v14[3] = v12[3];
        v14[4] = v17;
        v14[1] = v15;
        v14[2] = v16;
        v18 = v12[5];
        v19 = v12[6];
        v20 = v12[8];
        v14[7] = v12[7];
        v14[8] = v20;
        v14[5] = v18;
        v14[6] = v19;
        v12 += 9;
        v14 += 9;
        --v13;
      }

      while (v13);
    }

    if (v11 <= v10)
    {
      LODWORD(v11) = v10;
    }

    if (v11 < a2)
    {
      v21 = a2 - v11;
      v22 = 144 * v11 + 96;
      do
      {
        *(v22 - 96) = 0;
        *(v22 - 88) = 0;
        *(v22 + 40) = 0x3FF0000000000000;
        *v22 = 0x3FF0000000000000;
        *(v22 - 40) = 0x3FF0000000000000;
        *(v22 - 80) = 0x3FF0000000000000;
        *(v22 - 72) = 0uLL;
        *(v22 - 56) = 0uLL;
        *(v22 - 32) = 0uLL;
        *(v22 - 16) = 0uLL;
        *(v22 + 8) = 0uLL;
        *(v22 + 24) = 0uLL;
        v22 += 144;
        --v21;
      }

      while (v21);
    }

    result = *(result + 16);
    if (result)
    {
      result = MEMORY[0x2666E9ED0](result, 0x1000C8077774924);
    }

    *(v5 + 16) = 0;
  }

  *(v5 + 8) = v3;
  *(v5 + 12) = a2;
  return result;
}

uint64_t PCArray<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLayeredMaterial,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725F340;
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

uint64_t LiSceneIterator<LiLight,LiSceneIteratorAlways>::LiSceneIterator(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_28725F378;
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

void PCArray<LiSceneIterator<LiLight,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLight,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725F378;
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

uint64_t PCArray<LiSceneIterator<LiLight,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiLight,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_28725F378;
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

double LiDrawnRegion::Rect::Rect(LiDrawnRegion::Rect *this)
{
  result = 0.0;
  *this = xmmword_260343AA0;
  *(this + 4) = 0;
  return result;
}

__n128 LiDrawnRegion::Rect::Rect(LiDrawnRegion::Rect *this, const LiDrawnRegion::Rect *a2)
{
  result = *a2;
  *this = *a2;
  *(this + 4) = *(a2 + 4);
  return result;
}

void LiDrawnRegion::clear(LiDrawnRegion *this, __n128 a2)
{
  if (*(this + 2) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 2);
  }

  PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(this, 0, v2, a2);
}

uint64_t LiDrawnRegion::add(uint64_t a1, int32x2_t *a2, int a3, int a4, unsigned int a5)
{
  v7 = *(a1 + 12);
  isAbelian = PCBlend::isAbelian(a5);
  v56 = v7;
  if (v7 < 1)
  {
    v11 = 0;
    v10 = 0;
    v54 = -1;
    v12 = -1;
    goto LABEL_41;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v52 = isAbelian ^ 1;
  v53 = 0;
  v12 = -1;
  v13 = 8;
  v54 = -1;
  while (1)
  {
    if (v9 >= *(a1 + 12))
    {
      PCArray_base::badIndex(isAbelian);
    }

    v14 = *(a1 + 16);
    v15 = (v14 + v13 - 8);
    v16 = *(v14 + v13 + 8);
    isAbelian = PCRect<int>::intersects(a2, v15);
    if (!isAbelian)
    {
      if (v16 == a5)
      {
        isAbelian = operator|<int>(a2, (v14 + v13 - 8), &v57);
        v28 = HIDWORD(v57) * DWORD2(v57);
        if ((DWORD2(v57) | HIDWORD(v57)) < 0)
        {
          v28 = 0;
        }

        v30 = v53;
        v29 = v54;
        if (v54 < 0 || v53 > v28)
        {
          v29 = v9;
          v30 = v28;
        }

        v53 = v30;
        v54 = v29;
      }

      goto LABEL_37;
    }

    if (v16 == a5)
    {
      v17 = a2->i32[1];
      if (a2->i32[0] <= *v15)
      {
        v18 = *v15;
      }

      else
      {
        v18 = a2->i32[0];
      }

      v19 = *(v14 + v13) + *v15;
      if (a2[1].i32[0] + a2->i32[0] < v19)
      {
        v19 = a2[1].i32[0] + a2->i32[0];
      }

      v20 = *(v14 + v13 - 4);
      if (v17 <= v20)
      {
        v21 = *(v14 + v13 - 4);
      }

      else
      {
        v21 = a2->i32[1];
      }

      v22 = a2[1].i32[1] + v17;
      v23 = *(v14 + v13 + 4) + v20;
      if (v22 < v23)
      {
        v23 = v22;
      }

      v24 = v19 - v18;
      v25 = v23 - v21;
      v26 = v24 | v25;
      v27 = v25 * v24;
      if (v26 < 0)
      {
        v27 = 0;
      }

      if (v11 < v27)
      {
        v12 = v9;
      }

      if (v11 <= v27)
      {
        v11 = v27;
      }

      if (((v56 < 10) & ((v16 != a5) | v52 | v10)) != 0)
      {
        break;
      }
    }

    v10 |= (v16 != a5) | v52;
LABEL_37:
    ++v9;
    v13 += 20;
    if (v56 == v9)
    {
      goto LABEL_41;
    }
  }

  v10 = 1;
LABEL_41:
  v33 = a2[1].i32[0];
  v34 = a2[1].i32[1];
  v35 = v33 | v34;
  v36 = v34 * v33;
  if (v35 < 0)
  {
    v36 = 0;
  }

  if (v11 != v36)
  {
    if (v10)
    {
      if (a3)
      {
        v37 = *(a1 + 12);
        if (v12 < 0)
        {
          goto LABEL_65;
        }

        if (v37 <= v12)
        {
          PCArray_base::badIndex(isAbelian);
        }

        v38 = *(a1 + 16);
        v39 = v38 + 20 * v12;
        v40 = *(v39 + 8);
        if (v40 < 0)
        {
          v42 = 0;
        }

        else
        {
          v41 = *(v39 + 12);
          v42 = v41 * v40;
          if (v41 < 0)
          {
            v42 = 0;
          }
        }

        v37 = *(a1 + 12);
        if (v11 != v42 && v56 <= 9)
        {
LABEL_65:
          v44 = *a2->i8;
          v57 = *a2->i8;
          v46 = v37 + 1;
          if (*(a1 + 8) <= v37)
          {
            v47 = 2 * (v37 + 1) + 1;
          }

          else
          {
            v47 = *(a1 + 8);
          }

          goto LABEL_68;
        }

        if (v37 <= v12)
        {
          PCArray_base::badIndex(isAbelian);
        }

        v43 = (v38 + 20 * v12);
LABEL_72:
        PCRect<int>::operator|=(v43, a2);
      }
    }

    else if (a4)
    {
      if (v56 >= 10 && (v54 & 0x80000000) == 0)
      {
        if (*(a1 + 12) <= v54)
        {
          PCArray_base::badIndex(isAbelian);
        }

        v43 = (*(a1 + 16) + 20 * v54);
        goto LABEL_72;
      }

      v44 = *a2->i8;
      v57 = *a2->i8;
      v45 = *(a1 + 12);
      v46 = v45 + 1;
      if (*(a1 + 8) <= v45)
      {
        v47 = 2 * (v45 + 1) + 1;
      }

      else
      {
        v47 = *(a1 + 8);
      }

LABEL_68:
      PCArray<LiDrawnRegion::Rect,PCArray_Traits<LiDrawnRegion::Rect>>::resize(a1, v46, v47, v44);
      v48 = *(a1 + 16) + 20 * *(a1 + 12);
      *(v48 - 20) = v57;
      *(v48 - 4) = a5;
    }
  }

  return v10 & 1;
}

BOOL PCRect<int>::intersects(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[2];
  if (v2 < 0)
  {
    return 0;
  }

  v3 = a1[3];
  if (v3 < 0)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2[2];
  if ((v5 & 0x80000000) == 0)
  {
    v6 = a2[3];
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *a1 + v2;
      if (*a1 <= *a2 + v5 && v7 >= *a2)
      {
        v10 = a1[1];
        v11 = a2[1];
        v12 = v3 + v10 >= v11;
        return v10 <= v6 + v11 && v12;
      }

      return 0;
    }
  }

  return v4;
}

int32x2_t *operator|<int>@<X0>(int32x2_t *result@<X0>, int32x2_t *a2@<X1>, int32x2_t *a3@<X8>)
{
  v3 = result[1];
  if (v3.i32[0] < 0 || v3.i32[1] < 0)
  {
    v7 = *a2->i8;
  }

  else
  {
    v4 = a2[1];
    if ((v4.i32[0] & 0x80000000) == 0 && (v4.i32[1] & 0x80000000) == 0)
    {
      v5 = vmin_s32(*result, *a2);
      v6 = vsub_s32(vmax_s32(vadd_s32(v3, *result), vadd_s32(v4, *a2)), v5);
      *a3 = v5;
      a3[1] = v6;
      return result;
    }

    v7 = *result->i8;
  }

  *a3->i8 = v7;
  return result;
}

void ProShade::Texture::Texture(PCSharedCount *this)
{
  this->var0 = &unk_28725F3B0;
  this[1].var0 = 0;
  PCSharedCount::PCSharedCount(this + 2);
  operator new();
}

void sub_25FF6EA78(_Unwind_Exception *a1)
{
  LiString::dec(v4);
  *(v2 + 40) = &unk_2872DEA38;
  *(v2 + 56) = 0;
  PCWeakCount::~PCWeakCount(v3);
  MEMORY[0x2666E9F00](v2, 0x10B1C40512DA185);
  PCSharedCount::~PCSharedCount(v1 + 2);
  _Unwind_Resume(a1);
}

void ProShade::Texture::~Texture(PCSharedCount *this)
{
  this->var0 = &unk_28725F3B0;
  PCSharedCount::~PCSharedCount(this + 2);
}

{
  this->var0 = &unk_28725F3B0;
  PCSharedCount::~PCSharedCount(this + 2);

  JUMPOUT(0x2666E9F00);
}

int8x8_t *ProShade::Texture::computeHash(ProShade::Texture *this, int8x8_t *a2)
{
  result = PCHashWriteStream::writeValue(a2, "Texture");
  v5 = *(this + 1);
  if (v5)
  {
    v6 = *(v5 + 32);
    v7 = *(*a2 + 48);

    return v7(a2, v6);
  }

  return result;
}

uint64_t LiPerContextValue<ProShade::SamplerNode::Binding>::~LiPerContextValue(uint64_t a1)
{
  PCSpinLock::~PCSpinLock((a1 + 24));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a1, *(a1 + 8));
  return a1;
}

void ProShade::InputNode::~InputNode(ProShade::InputNode *this, uint64_t a2)
{
  v2 = *(a2 + 8);
  *this = v2;
  *(this + *(v2 - 24)) = *(a2 + 32);
  LiString::dec((this + 32));
}

ProShade::SamplerNode *ProShade::SamplerNode::SamplerNode(ProShade::SamplerNode *this, ProShade *a2, const PCString *a3, char a4, char a5)
{
  v7 = a3;
  v8 = a2;
  *(this + 13) = 0;
  *(this + 12) = &unk_2872DEA38;
  *(this + 112) = 1;
  v10 = ProShade::shapeTexture(a2, a3);
  ProShade::InputNode::InputNode(this, off_28725F4D0, 2, v10, 4);
  *this = &unk_28725F3E0;
  *(this + 12) = &unk_28725F4B0;
  *(this + 14) = v8;
  *(this + 60) = v7;
  *(this + 61) = a4;
  *(this + 62) = a5;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 10) = 1;
  LiString::LiString(&v21, "_sampler");
  LiString::format(*(this + 12), &v20);
  v11 = v21;
  if (v21)
  {
    v12 = *(v21 - 2);
  }

  else
  {
    v12 = 0;
  }

  v13 = v20;
  if (v20)
  {
    v14 = *(v20 - 2);
  }

  else
  {
    v14 = 0;
  }

  v15 = v14 + v12;
  v16 = malloc_type_malloc(v15 + 13, 0x10000403E1C8BA9uLL);
  v16[1] = v15;
  v16[2] = v15 + 1;
  atomic_store(1u, v16);
  atomic_store(0, v16);
  memcpy(v16 + 3, v11, v12);
  memcpy(v16 + v12 + 12, v13, v14);
  *(v16 + v15 + 12) = 0;
  atomic_fetch_add(v16, 1u);
  LiString::dec((this + 32));
  *(this + 4) = v16 + 3;
  atomic_fetch_add(v16, 1u);
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (v20 && atomic_fetch_add(v20 - 3, 0xFFFFFFFF) == 1)
  {
    *v20 = 0;
    if (v20)
    {
      v17 = v20 - 12;
    }

    else
    {
      v17 = 0;
    }

    free(v17);
  }

  if (v21 && atomic_fetch_add(v21 - 3, 0xFFFFFFFF) == 1)
  {
    *v21 = 0;
    if (v21)
    {
      v18 = v21 - 12;
    }

    else
    {
      v18 = 0;
    }

    free(v18);
  }

  return this;
}

void sub_25FF6EF5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, atomic_uint *a11, atomic_uint *a12)
{
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (a11 && atomic_fetch_add(a11 - 3, 0xFFFFFFFF) == 1)
  {
    *a11 = 0;
    free(a11 - 3);
  }

  if (a12)
  {
    if (atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
    {
      *a12 = 0;
      free(a12 - 3);
    }
  }

  LiPerContextValue<ProShade::SamplerNode::Binding>::~LiPerContextValue(a9);
  ProShade::InputNode::~InputNode(v12, off_28725F4D0);
  *(v12 + 96) = a10;
  *(v12 + 112) = 0;
  PCWeakCount::~PCWeakCount(v13);
  _Unwind_Resume(a1);
}

ProShade::SamplerNode *ProShade::SamplerNode::SamplerNode(ProShade::SamplerNode *this, ProShade *a2, const PCString *a3, char a4, char a5, const LiString *a6)
{
  v9 = a3;
  v10 = a2;
  *(this + 13) = 0;
  *(this + 12) = &unk_2872DEA38;
  *(this + 112) = 1;
  v12 = ProShade::shapeTexture(a2, a3);
  ProShade::InputNode::InputNode(this, off_28725F4D0, 2, v12, 4);
  *this = &unk_28725F3E0;
  *(this + 12) = &unk_28725F4B0;
  *(this + 14) = v10;
  *(this + 60) = v9;
  *(this + 61) = a4;
  *(this + 62) = a5;
  *(this + 9) = 0;
  *(this + 8) = this + 72;
  *(this + 10) = 0;
  *(this + 22) = 0;
  *(this + 10) = 1;
  if ((this + 32) != a6)
  {
    LiString::dec((this + 32));
    v13 = *a6;
    *(this + 4) = *a6;
    if (v13)
    {
      atomic_fetch_add((v13 - 12), 1u);
    }
  }

  return this;
}

void sub_25FF6F184(_Unwind_Exception *a1)
{
  LiPerContextValue<ProShade::SamplerNode::Binding>::~LiPerContextValue(v4);
  ProShade::InputNode::~InputNode(v1, off_28725F4D0);
  *(v1 + 96) = v3;
  *(v1 + 112) = 0;
  PCWeakCount::~PCWeakCount(v2);
  _Unwind_Resume(a1);
}

void ProShade::SamplerNode::~SamplerNode(PCSpinLock *this, uint64_t *a2)
{
  v4 = *a2;
  *&this->_lock._os_unfair_lock_opaque = *a2;
  *(&this->_lock._os_unfair_lock_opaque + *(v4 - 24)) = a2[7];
  PCSpinLock::~PCSpinLock(this + 22);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&this[16], *&this[18]._lock._os_unfair_lock_opaque);

  ProShade::InputNode::~InputNode(this, (a2 + 1));
}

void ProShade::SamplerNode::~SamplerNode(PCSpinLock *this)
{
  *(v1 + 96) = &unk_2872DEA38;
  *(v1 + 112) = 0;
  PCWeakCount::~PCWeakCount((v1 + 104));
}

{
  *(v1 + 96) = &unk_2872DEA38;
  *(v1 + 112) = 0;
  PCWeakCount::~PCWeakCount((v1 + 104));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::SamplerNode::~SamplerNode(ProShade::SamplerNode *this)
{
  *(v1 + 96) = &unk_2872DEA38;
  *(v1 + 112) = 0;
  v2 = (v1 + 104);

  PCWeakCount::~PCWeakCount(v2);
}

{
  ProShade::SamplerNode::~SamplerNode((this + *(*this - 24)));
}

uint64_t ProShade::SamplerNode::repr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 - 12), 1u);
  }

  return this;
}

void ProShade::SamplerNode::description(ProShade::SamplerNode *this@<X0>, void *a2@<X8>)
{
  ProShade::shapeString(*(this + 7), *(this + 6), &v15);
  v4 = v15;
  if (v15)
  {
    v5 = *(v15 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = malloc_type_malloc(v5 + 14, 0x10000403E1C8BA9uLL);
  v7[1] = v6 + 1;
  v7[2] = v6 + 2;
  atomic_store(1u, v7);
  v8 = v7 + 3;
  atomic_store(0, v7);
  memcpy(v7 + 3, v4, v6);
  v8[v6] = 32;
  v8[v6 + 1] = 0;
  atomic_fetch_add(v7, 1u);
  v9 = v7[1];
  v10 = *(this + 4);
  if (v10)
  {
    v11 = *(v10 - 2);
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 + v11;
  v13 = malloc_type_malloc(v12 + 13, 0x10000403E1C8BA9uLL);
  v13[1] = v12;
  v13[2] = v12 + 1;
  atomic_store(1u, v13);
  atomic_store(0, v13);
  memcpy(v13 + 3, v8, v9);
  memcpy(v13 + v9 + 12, v10, v11);
  *(v13 + v12 + 12) = 0;
  *a2 = v13 + 3;
  atomic_fetch_add(v13, 1u);
  if (atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    free(v7);
  }

  if (v15 && atomic_fetch_add(v15 - 3, 0xFFFFFFFF) == 1)
  {
    *v15 = 0;
    if (v15)
    {
      v14 = v15 - 12;
    }

    else
    {
      v14 = 0;
    }

    free(v14);
  }
}

void sub_25FF6F5AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, atomic_uint *a10)
{
  if (atomic_fetch_add(v10, 0xFFFFFFFF) == 1)
  {
    free(v10);
  }

  if (a10)
  {
    if (atomic_fetch_add(a10 - 3, 0xFFFFFFFF) == 1)
    {
      *a10 = 0;
      free(a10 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

int8x8_t *ProShade::SamplerNode::computeHash(ProShade::SamplerNode *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, "SamplerNode");
  (*(*a2 + 56))(a2, *(this + 14));
  PCHashWriteStream::writeValue(a2, *(this + 60));
  PCHashWriteStream::writeValue(a2, *(this + 61));
  PCHashWriteStream::writeValue(a2, *(this + 62));
  if (*(this + 4))
  {
    v4 = *(this + 4);
  }

  else
  {
    v4 = "";
  }

  return PCHashWriteStream::writeValue(a2, v4);
}

void ProShade::SamplerNode::inputs(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v2);
}

void ProShade::SamplerNode::clone(ProShade::SamplerNode *this)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v3, "not implemented yet");
  PCString::PCString(&v2, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSTexture.cpp");
  PCException::PCException(exception, &v3, &v2, 124);
  *exception = &unk_2871F6178;
}

void sub_25FF6F788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void ProShade::SamplerNode::setTexture(os_unfair_lock_s *this, uint32_t a2)
{
  v4 = this + 22;
  v7[2] = &this[22];
  PCSpinLock::lock(this + 22);
  v7[1] = 0;
  v7[0] = LiGLState::getCurrentContext(v5);
  v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(&this[16], v7);
  if (&this[18] == v6)
  {
    v7[4] = v7;
    v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(&this[16], v7);
  }

  PCSpinLock::unlock(v4);
  v6[12]._os_unfair_lock_opaque = a2;
  v6[13]._os_unfair_lock_opaque = a2;
}

void sub_25FF6F870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProShade::SamplerNode::setWrapMode(os_unfair_lock_s *a1, int a2)
{
  v4 = a1 + 22;
  v7[2] = &a1[22];
  PCSpinLock::lock(a1 + 22);
  v7[1] = 0;
  v7[0] = LiGLState::getCurrentContext(v5);
  v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(&a1[16], v7);
  if (&a1[18] == v6)
  {
    v7[4] = v7;
    v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(&a1[16], v7);
  }

  PCSpinLock::unlock(v4);
  *(v6 + 56) = a2;
}

void sub_25FF6F930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t ProShade::SamplerNode::getWrapMode(os_unfair_lock_s *this)
{
  v2 = this + 22;
  v6[2] = &this[22];
  PCSpinLock::lock(this + 22);
  v6[1] = 0;
  v6[0] = LiGLState::getCurrentContext(v3);
  v4 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(&this[16], v6);
  if (&this[18] == v4)
  {
    v6[4] = v6;
    v4 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(&this[16], v6);
  }

  PCSpinLock::unlock(v2);
  return v4[14];
}

void sub_25FF6F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

BOOL ProShade::SamplerNode::getTextureID(os_unfair_lock_s *this, int *a2)
{
  v4 = this + 22;
  v9[2] = &this[22];
  PCSpinLock::lock(this + 22);
  v9[1] = 0;
  v9[0] = LiGLState::getCurrentContext(v5);
  v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::find<LiOpenGLContextGetter::C>(&this[16], v9);
  if (&this[18] == v6)
  {
    v9[4] = v9;
    v6 = std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(&this[16], v9);
  }

  PCSpinLock::unlock(v4);
  os_unfair_lock_opaque = v6[12]._os_unfair_lock_opaque;
  if ((os_unfair_lock_opaque & 0x80000000) == 0)
  {
    *a2 = os_unfair_lock_opaque;
  }

  return os_unfair_lock_opaque >= 0;
}

void sub_25FF6FABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProShade::Sampler::Sampler(PCSharedCount *this)
{
  this->var0 = &unk_28725E920;
  this[2].var0 = 0;
  PCSharedCount::PCSharedCount(this + 3);
  this->var0 = &unk_28725E878;
  ProShade::Uniform::Uniform();
}

void sub_25FF6FBAC(_Unwind_Exception *a1)
{
  v1[4].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v1 + 7);
  v1->var0 = v2;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

void sub_25FF6FC9C(_Unwind_Exception *a1)
{
  v1[4].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v1 + 7);
  v1->var0 = &unk_28725E920;
  PCSharedCount::~PCSharedCount(v1 + 3);
  _Unwind_Resume(a1);
}

PCSharedCount *ProShade::VarT<ProShade::SamplerNode>::VarT(PCSharedCount *a1, PCShared_base *a2)
{
  a1->var0 = &unk_28725E920;
  a1[2].var0 = a2;
  if (a2)
  {
    a2 = (a2 + *(*a2 - 24));
  }

  PCSharedCount::PCSharedCount(a1 + 3, a2);
  return a1;
}

void ProShade::Sampler::setTexture(ProShade::Sampler *this, uint32_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    throw_PCNullPointerException(1);
  }

  ProShade::SamplerNode::setTexture(v2, a2);
}

void ProShade::Sampler::setWrapMode(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    throw_PCNullPointerException(1);
  }

  ProShade::SamplerNode::setWrapMode(v2, a2);
}

void ProShade::TextureFunc::TextureFunc(uint64_t a1, uint64_t a2)
{
  *(a1 + 168) = &unk_2872DEA38;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  ProShade::Node::Node(a1, &off_28725F5F8);
  *a1 = &unk_28725F520;
  *(a1 + 168) = &unk_28725F5D8;
  *(a1 + 48) = &unk_28725E920;
  *(a1 + 56) = *(a2 + 8);
  *(a1 + 64) = *(a2 + 16);
  PCSharedCount::PCSharedCount((a1 + 72), (a2 + 24));
  ProShade::Texture::Texture((a1 + 80));
}

void sub_25FF70018(_Unwind_Exception *a1)
{
  v10 = v5;
  *v9 = v10;
  PCSharedCount::~PCSharedCount((v1 + 160));
  *v8 = v6;
  PCSharedCount::~PCSharedCount((v1 + 128));
  *(v1 + 80) = &unk_28725F3B0;
  PCSharedCount::~PCSharedCount((v1 + 96));
  *v7 = v4;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, &off_28725F5F8);
  *(v1 + 168) = v2;
  *(v1 + 184) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void ProShade::Sampler::sample(const PCSharedCount *a1, uint64_t a2)
{
  v6[12] = *MEMORY[0x277D85DE8];
  v4 = &unk_28725E328;
  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v5, a1 + 10);
  ProShade::operator*(v6, &v4, a2);
  ProShade::Selector_base::_select(&a1[5], 4);
}

void sub_25FF702EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, PCSharedCount a23, void *a24, uint64_t a25, uint64_t a26, PCSharedCount a27, void *a28, uint64_t a29, uint64_t a30, PCSharedCount a31)
{
  *(v34 - 120) = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v33 + 3);
  PCSharedCount::~PCSharedCount(v32 + 3);
  a28 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a31);
  PCSharedCount::~PCSharedCount(v31 + 3);
  a24 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&a27);
  PCSharedCount::~PCSharedCount(&a23);
  _Unwind_Resume(a1);
}

double ProShade::TextureFunc::setFrequency(ProShade::TextureFunc *this)
{
  v1 = *(this + 15);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(v1 + 40);
  if (v2 == 2)
  {
    v2 = 3;
  }

  *(this + 10) = v2;
  *&result = 0x400000003;
  *(this + 3) = 0x400000003;
  return result;
}

PCSharedCount *ProShade::TextureFunc::TextureFunc(PCSharedCount *this, const ProShade::TextureFunc *a2)
{
  this[21].var0 = &unk_2872DEA38;
  this[22].var0 = 0;
  LOBYTE(this[23].var0) = 1;
  ProShade::Node::Node(this, &off_28725F5F8);
  this->var0 = &unk_28725F520;
  this[21].var0 = &unk_28725F5D8;
  this[6].var0 = &unk_28725E920;
  LOBYTE(this[7].var0) = *(a2 + 56);
  this[8].var0 = *(a2 + 64);
  PCSharedCount::PCSharedCount(this + 9, a2 + 9);
  v4 = *(a2 + 11);
  this[10].var0 = &unk_28725F3B0;
  this[11].var0 = v4;
  PCSharedCount::PCSharedCount(this + 12, a2 + 12);
  this[13].var0 = &unk_28725E328;
  LOBYTE(this[14].var0) = *(a2 + 112);
  this[15].var0 = *(a2 + 120);
  PCSharedCount::PCSharedCount(this + 16, a2 + 16);
  this[17].var0 = &unk_28725E328;
  this[19].var0 = 0;
  PCSharedCount::PCSharedCount(this + 20);
  ProShade::TextureFunc::setFrequency(this);
  return this;
}

void sub_25FF705E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = v15;
  *v11 = v20;
  PCSharedCount::~PCSharedCount((v10 + 160));
  *v19 = v16;
  PCSharedCount::~PCSharedCount((v10 + 128));
  *v18 = v14;
  PCSharedCount::~PCSharedCount((v10 + 96));
  *v17 = v13;
  PCSharedCount::~PCSharedCount((v10 + 72));
  ProShade::Node::~Node(v10, &off_28725F5F8);
  *(v10 + 168) = a10;
  *(v10 + 184) = 0;
  PCWeakCount::~PCWeakCount(v12);
  _Unwind_Resume(a1);
}

uint64_t ProShade::TextureFunc::TextureFunc(uint64_t a1, uint64_t a2, const PCSharedCount *a3, uint64_t a4)
{
  *(a1 + 168) = &unk_2872DEA38;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  ProShade::Node::Node(a1, &off_28725F5F8);
  *a1 = &unk_28725F520;
  *(a1 + 168) = &unk_28725F5D8;
  v8 = *(a2 + 16);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  ProShade::VarT<ProShade::SamplerNode>::VarT((a1 + 48), v9);
  var0 = a3[1].var0;
  *(a1 + 80) = &unk_28725F3B0;
  *(a1 + 88) = var0;
  PCSharedCount::PCSharedCount((a1 + 96), a3 + 2);
  *(a1 + 104) = &unk_28725E328;
  *(a1 + 112) = *(a4 + 8);
  *(a1 + 120) = *(a4 + 16);
  PCSharedCount::PCSharedCount((a1 + 128), (a4 + 24));
  *(a1 + 136) = &unk_28725E328;
  *(a1 + 152) = 0;
  PCSharedCount::PCSharedCount((a1 + 160));
  ProShade::TextureFunc::setFrequency(a1);
  return a1;
}

void sub_25FF70844(_Unwind_Exception *a1)
{
  v10 = v4;
  *v9 = v10;
  PCSharedCount::~PCSharedCount((v1 + 160));
  *v8 = v6;
  PCSharedCount::~PCSharedCount((v1 + 128));
  *v7 = v5;
  PCSharedCount::~PCSharedCount((v1 + 96));
  *(v1 + 48) = &unk_28725E920;
  PCSharedCount::~PCSharedCount((v1 + 72));
  ProShade::Node::~Node(v1, &off_28725F5F8);
  *(v1 + 168) = v2;
  *(v1 + 184) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::TextureFunc::TextureFunc(uint64_t a1, uint64_t a2, const PCSharedCount *a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 168) = &unk_2872DEA38;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  ProShade::Node::Node(a1, &off_28725F5F8);
  *a1 = &unk_28725F520;
  *(a1 + 168) = &unk_28725F5D8;
  v10 = *(a2 + 16);
  if (v10)
  {
  }

  else
  {
    v11 = 0;
  }

  ProShade::VarT<ProShade::SamplerNode>::VarT((a1 + 48), v11);
  var0 = a3[1].var0;
  *(a1 + 80) = &unk_28725F3B0;
  *(a1 + 88) = var0;
  PCSharedCount::PCSharedCount((a1 + 96), a3 + 2);
  *(a1 + 104) = &unk_28725E328;
  *(a1 + 112) = *(a4 + 8);
  *(a1 + 120) = *(a4 + 16);
  PCSharedCount::PCSharedCount((a1 + 128), (a4 + 24));
  *(a1 + 136) = &unk_28725E328;
  *(a1 + 144) = *(a5 + 8);
  *(a1 + 152) = *(a5 + 16);
  PCSharedCount::PCSharedCount((a1 + 160), (a5 + 24));
  ProShade::TextureFunc::setFrequency(a1);
  return a1;
}

void sub_25FF70AD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *v11 = v13;
  PCSharedCount::~PCSharedCount((v10 + 160));
  *v17 = v15;
  PCSharedCount::~PCSharedCount((v10 + 128));
  *v16 = v14;
  PCSharedCount::~PCSharedCount((v10 + 96));
  *(v10 + 48) = &unk_28725E920;
  PCSharedCount::~PCSharedCount((v10 + 72));
  ProShade::Node::~Node(v10, &off_28725F5F8);
  *(v10 + 168) = a10;
  *(v10 + 184) = 0;
  PCWeakCount::~PCWeakCount(v12);
  _Unwind_Resume(a1);
}

void ProShade::TextureFunc::~TextureFunc(PCSharedCount *this, PC_Sp_counted_base **a2)
{
  v4 = *a2;
  this->var0 = *a2;
  *(&this->var0 + *(v4 - 3)) = a2[5];
  this[17].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 20);
  this[13].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 16);
  this[10].var0 = &unk_28725F3B0;
  PCSharedCount::~PCSharedCount(this + 12);
  this[6].var0 = &unk_28725E920;
  PCSharedCount::~PCSharedCount(this + 9);
  v5 = a2[1];
  this->var0 = v5;
  *(&this->var0 + *(v5 - 3)) = a2[4];
  LiString::dec(&this[4]);
}

void ProShade::TextureFunc::~TextureFunc(PCSharedCount *this)
{
  *(v1 + 168) = &unk_2872DEA38;
  *(v1 + 184) = 0;
  PCWeakCount::~PCWeakCount((v1 + 176));
}

{
  *(v1 + 168) = &unk_2872DEA38;
  *(v1 + 184) = 0;
  PCWeakCount::~PCWeakCount((v1 + 176));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::TextureFunc::~TextureFunc(ProShade::TextureFunc *this)
{
  *(v1 + 168) = &unk_2872DEA38;
  *(v1 + 184) = 0;
  v2 = (v1 + 176);

  PCWeakCount::~PCWeakCount(v2);
}

{
  ProShade::TextureFunc::~TextureFunc((this + *(*this - 24)));
}

void ProShade::TextureFunc::repr(ProShade::TextureFunc *this@<X0>, const PCString *a2@<X1>, void *a3@<X8>)
{
  v5 = *(this + 8);
  v147 = a3;
  if (v5)
  {
    v6 = *(v5 + 56);
    if (v6 == 34067)
    {
      if (*(v5 + 60))
      {
        ProShade::VarT<ProShade::SamplerNode>::repr(this + 48);
        var0 = v150.var0;
        if (v150.var0)
        {
          length = v150.var0[-1].length;
        }

        else
        {
          length = 0;
        }

        v34 = malloc_type_malloc(length + 24, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v34);
        atomic_store(0, v34);
        *(v34 + 12) = *"shadowCube(";
        v35 = length + 11;
        *(v34 + 1) = v35;
        *(v34 + 2) = length + 12;
        *(v34 + 19) = 677732981;
        memcpy(v34 + 23, var0, length);
        v34[v35 + 12] = 0;
        atomic_fetch_add(v34, 1u);
        v36 = *(v34 + 1);
        v37 = malloc_type_malloc(v36 + 15, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v37);
        v38 = v37 + 3;
        atomic_store(0, v37);
        v37[1] = v36 + 2;
        v37[2] = v36 + 3;
        memcpy(v37 + 3, v34 + 12, v36);
        *&v38[v36] = 8236;
        v38[v36 + 2] = 0;
        atomic_fetch_add(v37, 1u);
        v39 = *(this + 15);
        if (!v39)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v39 + 16))(&v149);
        v40 = v37[1];
        v41 = v149.var0;
        if (v149.var0)
        {
          v42 = v149.var0[-1].length;
        }

        else
        {
          v42 = 0;
        }

        goto LABEL_101;
      }

      if ((*(v5 + 61) & 1) == 0)
      {
        if ((*(v5 + 62) & 1) == 0)
        {
          ProShade::VarT<ProShade::SamplerNode>::repr(this + 48);
          v56 = v150.var0;
          if (v150.var0)
          {
            v57 = v150.var0[-1].length;
          }

          else
          {
            v57 = 0;
          }

          v34 = malloc_type_malloc(v57 + 25, 0x10000403E1C8BA9uLL);
          atomic_store(1u, v34);
          atomic_store(0, v34);
          *(v34 + 12) = *"textureCube(";
          v115 = v57 + 12;
          *(v34 + 1) = v115;
          *(v34 + 2) = v57 + 13;
          *(v34 + 5) = 677732981;
          memcpy(v34 + 24, v56, v57);
          v34[v115 + 12] = 0;
          atomic_fetch_add(v34, 1u);
          v116 = *(v34 + 1);
          v37 = malloc_type_malloc(v116 + 15, 0x10000403E1C8BA9uLL);
          atomic_store(1u, v37);
          v117 = v37 + 3;
          atomic_store(0, v37);
          v37[1] = v116 + 2;
          v37[2] = v116 + 3;
          memcpy(v37 + 3, v34 + 12, v116);
          *&v117[v116] = 8236;
          v117[v116 + 2] = 0;
          atomic_fetch_add(v37, 1u);
          v118 = *(this + 15);
          if (!v118)
          {
            throw_PCNullPointerException(1);
          }

          (*(*v118 + 16))(&v149);
          v119 = v37[1];
          v120 = v149.var0;
          if (v149.var0)
          {
            v121 = v149.var0[-1].length;
          }

          else
          {
            v121 = 0;
          }

          v129 = v119 + v121;
          v92 = malloc_type_malloc(v129 + 13, 0x10000403E1C8BA9uLL);
          v92[1] = v129;
          v92[2] = v129 + 1;
          atomic_store(1u, v92);
          atomic_store(0, v92);
          memcpy(v92 + 3, v117, v119);
          memcpy(v92 + v119 + 12, v120, v121);
          *(v92 + v129 + 12) = 0;
          atomic_fetch_add(v92, 1u);
          v130 = v92[1];
          v131 = malloc_type_malloc(v130 + 14, 0x10000403E1C8BA9uLL);
          atomic_store(1u, v131);
          v132 = v131 + 3;
          atomic_store(0, v131);
          v131[1] = v130 + 1;
          v131[2] = v130 + 2;
          memcpy(v131 + 3, v92 + 3, v130);
          *(v132 + v130) = 41;
          *(v132 + v130 + 1) = 0;
          *a3 = v131 + 3;
          atomic_fetch_add(v131, 1u);
LABEL_102:
          if (atomic_fetch_add(v92, 0xFFFFFFFF) == 1)
          {
            free(v92);
          }

          if (v149.var0 && atomic_fetch_add(&v149.var0[-1].data + 1, 0xFFFFFFFF) == 1)
          {
            LOBYTE(v149.var0->isa) = 0;
            if (v149.var0)
            {
              v96 = &v149.var0[-1].data + 4;
            }

            else
            {
              v96 = 0;
            }

            free(v96);
          }

          if (atomic_fetch_add(v37, 0xFFFFFFFF) == 1)
          {
            free(v37);
          }

          if (atomic_fetch_add(v34, 0xFFFFFFFF) == 1)
          {
            v97 = v34;
LABEL_160:
            free(v97);
            goto LABEL_161;
          }

          goto LABEL_161;
        }

        ProShade::VarT<ProShade::SamplerNode>::repr(this + 48);
        v30 = v150.var0;
        if (v150.var0)
        {
          v31 = v150.var0[-1].length;
        }

        else
        {
          v31 = 0;
        }

        v106 = malloc_type_malloc(v31 + 25, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v106);
        atomic_store(0, v106);
        *(v106 + 12) = *"textureCube(";
        v107 = v31 + 12;
        *(v106 + 1) = v107;
        *(v106 + 2) = v31 + 13;
        *(v106 + 5) = 677732981;
        memcpy(v106 + 24, v30, v31);
        v106[v107 + 12] = 0;
        atomic_fetch_add(v106, 1u);
        v108 = *(v106 + 1);
        v146 = v106;
        v109 = malloc_type_malloc(v108 + 15, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v109);
        v110 = v109 + 3;
        atomic_store(0, v109);
        v109[1] = v108 + 2;
        v109[2] = v108 + 3;
        memcpy(v109 + 3, v106 + 12, v108);
        *&v110[v108] = 8236;
        v110[v108 + 2] = 0;
        atomic_fetch_add(v109, 1u);
        v111 = *(this + 15);
        v143 = v109;
        if (!v111)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v111 + 16))(&v149);
        v112 = v109[1];
        v113 = v149.var0;
        if (v149.var0)
        {
          v114 = v149.var0[-1].length;
        }

        else
        {
          v114 = 0;
        }

        v122 = v112 + v114;
        v80 = malloc_type_malloc(v122 + 13, 0x10000403E1C8BA9uLL);
        v80[1] = v122;
        v80[2] = v122 + 1;
        atomic_store(1u, v80);
        atomic_store(0, v80);
        memcpy(v80 + 3, v110, v112);
        memcpy(v80 + v112 + 12, v113, v114);
        *(v80 + v122 + 12) = 0;
        atomic_fetch_add(v80, 1u);
        v123 = v80[1];
        v82 = malloc_type_malloc(v123 + 15, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v82);
        v124 = v82 + 3;
        atomic_store(0, v82);
        v82[1] = v123 + 2;
        v82[2] = v123 + 3;
        memcpy(v82 + 3, v80 + 3, v123);
        *&v124[v123] = 8236;
        v124[v123 + 2] = 0;
        atomic_fetch_add(v82, 1u);
        v125 = *(this + 19);
        if (!v125)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v125 + 16))(&v148);
        v126 = v82[1];
        v127 = v148;
        if (v148)
        {
          v128 = *(v148 - 2);
        }

        else
        {
          v128 = 0;
        }

        v133 = v126 + v128;
        v134 = malloc_type_malloc(v133 + 13, 0x10000403E1C8BA9uLL);
        v134[1] = v133;
        v134[2] = v133 + 1;
        atomic_store(1u, v134);
        atomic_store(0, v134);
        memcpy(v134 + 3, v124, v126);
        memcpy(v134 + v126 + 12, v127, v128);
        *(v134 + v133 + 12) = 0;
        atomic_fetch_add(v134, 1u);
        v135 = v134[1];
        v136 = malloc_type_malloc(v135 + 14, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v136);
        v137 = v136 + 3;
        atomic_store(0, v136);
        v136[1] = v135 + 1;
        v136[2] = v135 + 2;
        memcpy(v136 + 3, v134 + 3, v135);
        *(v137 + v135) = 41;
        *(v137 + v135 + 1) = 0;
        *v147 = v136 + 3;
        atomic_fetch_add(v136, 1u);
        if (atomic_fetch_add(v134, 0xFFFFFFFF) == 1)
        {
          free(v134);
        }

        v104 = v148;
        v103 = v143;
        v105 = v146;
        if (!v148)
        {
LABEL_146:
          if (atomic_fetch_add(v82, 0xFFFFFFFF) == 1)
          {
            free(v82);
          }

          if (atomic_fetch_add(v80, 0xFFFFFFFF) == 1)
          {
            free(v80);
          }

          if (v149.var0 && atomic_fetch_add(&v149.var0[-1].data + 1, 0xFFFFFFFF) == 1)
          {
            LOBYTE(v149.var0->isa) = 0;
            if (v149.var0)
            {
              v139 = &v149.var0[-1].data + 4;
            }

            else
            {
              v139 = 0;
            }

            free(v139);
          }

          if (atomic_fetch_add(v103, 0xFFFFFFFF) == 1)
          {
            free(v103);
          }

          if (atomic_fetch_add(v105, 0xFFFFFFFF) == 1)
          {
            v97 = v105;
            goto LABEL_160;
          }

LABEL_161:
          if (v150.var0 && atomic_fetch_add(&v150.var0[-1].data + 1, 0xFFFFFFFF) == 1)
          {
            LOBYTE(v150.var0->isa) = 0;
            if (v150.var0)
            {
              v55 = &v150.var0[-1].data + 1;
            }

            else
            {
              v55 = 0;
            }

            goto LABEL_166;
          }

          return;
        }

LABEL_141:
        if (atomic_fetch_add(v104 - 3, 0xFFFFFFFF) == 1)
        {
          *v148 = 0;
          if (v148)
          {
            v138 = v148 - 12;
          }

          else
          {
            v138 = 0;
          }

          free(v138);
        }

        goto LABEL_146;
      }

      ProShade::VarT<ProShade::SamplerNode>::repr(this + 48);
      v16 = v150.var0;
      if (v150.var0)
      {
        v17 = v150.var0[-1].length;
      }

      else
      {
        v17 = 0;
      }

      v58 = malloc_type_malloc(v17 + 28, 0x10000403E1C8BA9uLL);
      atomic_store(1u, v58);
      atomic_store(0, v58);
      qmemcpy(v58 + 3, "textureCubeLod(", 15);
      v59 = v17 + 15;
      v58[1] = v59;
      v58[2] = v17 + 16;
      memcpy(v58 + 27, v16, v17);
      *(v58 + v59 + 12) = 0;
      atomic_fetch_add(v58, 1u);
      v60 = v58[1];
      v145 = v58;
      v61 = malloc_type_malloc(v60 + 15, 0x10000403E1C8BA9uLL);
      atomic_store(1u, v61);
      v62 = v61 + 3;
      atomic_store(0, v61);
      v61[1] = v60 + 2;
      v61[2] = v60 + 3;
      memcpy(v61 + 3, v58 + 3, v60);
      *&v62[v60] = 8236;
      v62[v60 + 2] = 0;
      atomic_fetch_add(v61, 1u);
      v63 = *(this + 15);
      v142 = v61;
      if (!v63)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v63 + 16))(&v149);
      v64 = v61[1];
      v65 = v149.var0;
      if (v149.var0)
      {
        v66 = v149.var0[-1].length;
      }

      else
      {
        v66 = 0;
      }

      v79 = v64 + v66;
      v80 = malloc_type_malloc(v79 + 13, 0x10000403E1C8BA9uLL);
      v80[1] = v79;
      v80[2] = v79 + 1;
      atomic_store(1u, v80);
      atomic_store(0, v80);
      memcpy(v80 + 3, v62, v64);
      memcpy(v80 + v64 + 12, v65, v66);
      *(v80 + v79 + 12) = 0;
      atomic_fetch_add(v80, 1u);
      v81 = v80[1];
      v82 = malloc_type_malloc(v81 + 15, 0x10000403E1C8BA9uLL);
      atomic_store(1u, v82);
      v83 = v82 + 3;
      atomic_store(0, v82);
      v82[1] = v81 + 2;
      v82[2] = v81 + 3;
      memcpy(v82 + 3, v80 + 3, v81);
      *&v83[v81] = 8236;
      v83[v81 + 2] = 0;
      atomic_fetch_add(v82, 1u);
      v84 = *(this + 19);
      if (!v84)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v84 + 16))(&v148);
      v85 = v82[1];
      v86 = v148;
      if (v148)
      {
        v87 = *(v148 - 2);
      }

      else
      {
        v87 = 0;
      }
    }

    else
    {
      if (v6 != 3553)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v150, "not implemented yet");
        PCString::PCString(&v149, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSTexture.cpp");
        PCException::PCException(exception, &v150, &v149, 286);
        *exception = &unk_2871F6178;
      }

      if (*(v5 + 60))
      {
        ProShade::VarT<ProShade::SamplerNode>::repr(this + 48);
        v7 = v150.var0;
        if (v150.var0)
        {
          v8 = v150.var0[-1].length;
        }

        else
        {
          v8 = 0;
        }

        v34 = malloc_type_malloc(v8 + 22, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v34);
        atomic_store(0, v34);
        *(v34 + 12) = *"shadow2D(";
        v43 = v8 + 9;
        *(v34 + 1) = v43;
        *(v34 + 2) = v8 + 10;
        v34[20] = 40;
        memcpy(v34 + 21, v7, v8);
        v34[v43 + 12] = 0;
        atomic_fetch_add(v34, 1u);
        v44 = *(v34 + 1);
        v37 = malloc_type_malloc(v44 + 15, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v37);
        v38 = v37 + 3;
        atomic_store(0, v37);
        v37[1] = v44 + 2;
        v37[2] = v44 + 3;
        memcpy(v37 + 3, v34 + 12, v44);
        *&v38[v44] = 8236;
        v38[v44 + 2] = 0;
        atomic_fetch_add(v37, 1u);
        v45 = *(this + 15);
        if (!v45)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v45 + 16))(&v149);
        v40 = v37[1];
        v41 = v149.var0;
        if (v149.var0)
        {
          v42 = v149.var0[-1].length;
        }

        else
        {
          v42 = 0;
        }

LABEL_101:
        v91 = v40 + v42;
        v92 = malloc_type_malloc(v91 + 13, 0x10000403E1C8BA9uLL);
        v92[1] = v91;
        v92[2] = v91 + 1;
        atomic_store(1u, v92);
        atomic_store(0, v92);
        memcpy(v92 + 3, v38, v40);
        memcpy(v92 + v40 + 12, v41, v42);
        *(v92 + v91 + 12) = 0;
        atomic_fetch_add(v92, 1u);
        v93 = v92[1];
        v94 = malloc_type_malloc(v93 + 14, 0x10000403E1C8BA9uLL);
        v94[2] = v93 + 2;
        atomic_store(1u, v94);
        v95 = v94 + 3;
        atomic_store(0, v94);
        v94[1] = v93 + 1;
        memcpy(v94 + 3, v92 + 3, v93);
        *(v95 + v93) = 41;
        *(v95 + v93 + 1) = 0;
        *v147 = v94 + 3;
        atomic_fetch_add(v94, 1u);
        goto LABEL_102;
      }

      if (*(v5 + 61))
      {
        v141 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v150, "not implemented yet");
        PCString::PCString(&v149, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/Shading/PSTexture.cpp");
        PCException::PCException(v141, &v150, &v149, 269);
        *v141 = &unk_2871F6178;
      }

      if ((*(v5 + 62) & 1) == 0)
      {
        ProShade::VarT<ProShade::SamplerNode>::repr(this + 48);
        v32 = v150.var0;
        if (v150.var0)
        {
          v33 = v150.var0[-1].length;
        }

        else
        {
          v33 = 0;
        }

        v34 = malloc_type_malloc(v33 + 23, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v34);
        atomic_store(0, v34);
        *(v34 + 12) = *"texture2D(";
        v76 = v33 + 10;
        *(v34 + 1) = v76;
        *(v34 + 2) = v33 + 11;
        *(v34 + 10) = 10308;
        memcpy(v34 + 22, v32, v33);
        v34[v76 + 12] = 0;
        atomic_fetch_add(v34, 1u);
        v77 = *(v34 + 1);
        v37 = malloc_type_malloc(v77 + 15, 0x10000403E1C8BA9uLL);
        atomic_store(1u, v37);
        v38 = v37 + 3;
        atomic_store(0, v37);
        v37[1] = v77 + 2;
        v37[2] = v77 + 3;
        memcpy(v37 + 3, v34 + 12, v77);
        *&v38[v77] = 8236;
        v38[v77 + 2] = 0;
        atomic_fetch_add(v37, 1u);
        v78 = *(this + 15);
        if (!v78)
        {
          throw_PCNullPointerException(1);
        }

        (*(*v78 + 16))(&v149);
        v40 = v37[1];
        v41 = v149.var0;
        if (v149.var0)
        {
          v42 = v149.var0[-1].length;
        }

        else
        {
          v42 = 0;
        }

        goto LABEL_101;
      }

      ProShade::VarT<ProShade::SamplerNode>::repr(this + 48);
      v18 = v150.var0;
      if (v150.var0)
      {
        v19 = v150.var0[-1].length;
      }

      else
      {
        v19 = 0;
      }

      v67 = malloc_type_malloc(v19 + 23, 0x10000403E1C8BA9uLL);
      atomic_store(1u, v67);
      atomic_store(0, v67);
      *(v67 + 12) = *"texture2D(";
      v68 = v19 + 10;
      *(v67 + 1) = v68;
      *(v67 + 2) = v19 + 11;
      *(v67 + 10) = 10308;
      memcpy(v67 + 22, v18, v19);
      v67[v68 + 12] = 0;
      atomic_fetch_add(v67, 1u);
      v69 = *(v67 + 1);
      v145 = v67;
      v70 = malloc_type_malloc(v69 + 15, 0x10000403E1C8BA9uLL);
      atomic_store(1u, v70);
      v71 = v70 + 3;
      atomic_store(0, v70);
      v70[1] = v69 + 2;
      v70[2] = v69 + 3;
      memcpy(v70 + 3, v67 + 12, v69);
      *&v71[v69] = 8236;
      v71[v69 + 2] = 0;
      atomic_fetch_add(v70, 1u);
      v72 = *(this + 15);
      v142 = v70;
      if (!v72)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v72 + 16))(&v149);
      v73 = v70[1];
      v74 = v149.var0;
      if (v149.var0)
      {
        v75 = v149.var0[-1].length;
      }

      else
      {
        v75 = 0;
      }

      v88 = v73 + v75;
      v80 = malloc_type_malloc(v88 + 13, 0x10000403E1C8BA9uLL);
      v80[1] = v88;
      v80[2] = v88 + 1;
      atomic_store(1u, v80);
      atomic_store(0, v80);
      memcpy(v80 + 3, v71, v73);
      memcpy(v80 + v73 + 12, v74, v75);
      *(v80 + v88 + 12) = 0;
      atomic_fetch_add(v80, 1u);
      v89 = v80[1];
      v82 = malloc_type_malloc(v89 + 15, 0x10000403E1C8BA9uLL);
      atomic_store(1u, v82);
      v83 = v82 + 3;
      atomic_store(0, v82);
      v82[1] = v89 + 2;
      v82[2] = v89 + 3;
      memcpy(v82 + 3, v80 + 3, v89);
      *&v83[v89] = 8236;
      v83[v89 + 2] = 0;
      atomic_fetch_add(v82, 1u);
      v90 = *(this + 19);
      if (!v90)
      {
        throw_PCNullPointerException(1);
      }

      (*(*v90 + 16))(&v148);
      v85 = v82[1];
      v86 = v148;
      if (v148)
      {
        v87 = *(v148 - 2);
      }

      else
      {
        v87 = 0;
      }
    }

    v98 = v85 + v87;
    v99 = malloc_type_malloc(v98 + 13, 0x10000403E1C8BA9uLL);
    v99[1] = v98;
    v99[2] = v98 + 1;
    atomic_store(1u, v99);
    atomic_store(0, v99);
    memcpy(v99 + 3, v83, v85);
    memcpy(v99 + v85 + 12, v86, v87);
    *(v99 + v98 + 12) = 0;
    atomic_fetch_add(v99, 1u);
    v100 = v99[1];
    v101 = malloc_type_malloc(v100 + 14, 0x10000403E1C8BA9uLL);
    v101[2] = v100 + 2;
    atomic_store(1u, v101);
    v102 = v101 + 3;
    atomic_store(0, v101);
    v101[1] = v100 + 1;
    memcpy(v101 + 3, v99 + 3, v100);
    *(v102 + v100) = 41;
    *(v102 + v100 + 1) = 0;
    *v147 = v101 + 3;
    atomic_fetch_add(v101, 1u);
    v103 = v142;
    if (atomic_fetch_add(v99, 0xFFFFFFFF) == 1)
    {
      free(v99);
    }

    v104 = v148;
    v105 = v145;
    if (!v148)
    {
      goto LABEL_146;
    }

    goto LABEL_141;
  }

  v9 = *(this + 11);
  if (!v9)
  {
    throw_PCNullPointerException(1);
  }

  v10 = *(v9 + 8);
  if (v10)
  {
    atomic_fetch_add(v10 - 3, 1u);
  }

  v11 = *(this + 15);
  v144 = v10;
  if (!v11)
  {
    throw_PCNullPointerException(1);
  }

  v12 = *(v11 + 28);
  if ((v12 - 3) >= 2)
  {
    if (v12 != 2)
    {
      ProShade::Error<PCException>::raise<char [27]>("illegal texture coordinate", a2);
    }

    if (v10)
    {
      v20 = *(v10 - 2);
    }

    else
    {
      v20 = 0;
    }

    v21 = malloc_type_malloc(v20 + 23, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v21);
    atomic_store(0, v21);
    *(v21 + 12) = *"texture2D(";
    v46 = v20 + 10;
    *(v21 + 1) = v46;
    *(v21 + 2) = v20 + 11;
    *(v21 + 10) = 10308;
    memcpy(v21 + 22, v10, v20);
    v21[v46 + 12] = 0;
    atomic_fetch_add(v21, 1u);
    v47 = *(v21 + 1);
    v24 = malloc_type_malloc(v47 + 15, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v24);
    v25 = v24 + 3;
    atomic_store(0, v24);
    v24[1] = v47 + 2;
    v24[2] = v47 + 3;
    memcpy(v24 + 3, v21 + 12, v47);
    *&v25[v47] = 8236;
    v25[v47 + 2] = 0;
    atomic_fetch_add(v24, 1u);
    v48 = *(this + 15);
    if (!v48)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v48 + 16))(&v150);
    v27 = v24[1];
    v28 = v150.var0;
    if (v150.var0)
    {
      v29 = v150.var0[-1].length;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    if (v10)
    {
      v13 = *(v10 - 2);
    }

    else
    {
      v13 = 0;
    }

    v21 = malloc_type_malloc(v13 + 27, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v21);
    atomic_store(0, v21);
    qmemcpy(v21 + 12, "texture2DProj(", 14);
    v22 = v13 + 14;
    *(v21 + 1) = v22;
    *(v21 + 2) = v13 + 15;
    memcpy(v21 + 26, v10, v13);
    v21[v22 + 12] = 0;
    atomic_fetch_add(v21, 1u);
    v23 = *(v21 + 1);
    v24 = malloc_type_malloc(v23 + 15, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v24);
    v25 = v24 + 3;
    atomic_store(0, v24);
    v24[1] = v23 + 2;
    v24[2] = v23 + 3;
    memcpy(v24 + 3, v21 + 12, v23);
    *&v25[v23] = 8236;
    v25[v23 + 2] = 0;
    atomic_fetch_add(v24, 1u);
    v26 = *(this + 15);
    if (!v26)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v26 + 16))(&v150);
    v27 = v24[1];
    v28 = v150.var0;
    if (v150.var0)
    {
      v29 = v150.var0[-1].length;
    }

    else
    {
      v29 = 0;
    }
  }

  v49 = v27 + v29;
  v50 = malloc_type_malloc(v49 + 13, 0x10000403E1C8BA9uLL);
  v50[1] = v49;
  v50[2] = v49 + 1;
  atomic_store(1u, v50);
  atomic_store(0, v50);
  memcpy(v50 + 3, v25, v27);
  memcpy(v50 + v27 + 12, v28, v29);
  *(v50 + v49 + 12) = 0;
  atomic_fetch_add(v50, 1u);
  v51 = v50[1];
  v52 = malloc_type_malloc(v51 + 14, 0x10000403E1C8BA9uLL);
  v52[2] = v51 + 2;
  atomic_store(1u, v52);
  v53 = v52 + 3;
  atomic_store(0, v52);
  v52[1] = v51 + 1;
  memcpy(v52 + 3, v50 + 3, v51);
  *(v53 + v51) = 41;
  *(v53 + v51 + 1) = 0;
  *a3 = v52 + 3;
  atomic_fetch_add(v52, 1u);
  if (atomic_fetch_add(v50, 0xFFFFFFFF) == 1)
  {
    free(v50);
  }

  if (v150.var0 && atomic_fetch_add(&v150.var0[-1].data + 1, 0xFFFFFFFF) == 1)
  {
    LOBYTE(v150.var0->isa) = 0;
    if (v150.var0)
    {
      v54 = &v150.var0[-1].data + 4;
    }

    else
    {
      v54 = 0;
    }

    free(v54);
  }

  if (atomic_fetch_add(v24, 0xFFFFFFFF) == 1)
  {
    free(v24);
  }

  if (atomic_fetch_add(v21, 0xFFFFFFFF) == 1)
  {
    free(v21);
  }

  if (v144)
  {
    v55 = v144 - 3;
    if (atomic_fetch_add(v144 - 3, 0xFFFFFFFF) == 1)
    {
      *v144 = 0;
LABEL_166:
      free(v55);
    }
  }
}

void sub_25FF726F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, void *a10, uint64_t a11, atomic_uint *a12, PCString a13, PCString a14)
{
  if (atomic_fetch_add(v14, 0xFFFFFFFF) == 1)
  {
    free(v14);
  }

  if (a12 && atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
  {
    *a12 = 0;
    free(a12 - 3);
  }

  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (a13.var0 && atomic_fetch_add(&a13.var0[-1].data + 1, 0xFFFFFFFF) == 1)
  {
    LOBYTE(a13.var0->isa) = 0;
    free(&a13.var0[-1].data + 4);
  }

  if (atomic_fetch_add(a9, 0xFFFFFFFF) == 1)
  {
    free(a9);
  }

  if (atomic_fetch_add(a10, 0xFFFFFFFF) == 1)
  {
    free(a10);
  }

  if (a14.var0)
  {
    if (atomic_fetch_add(&a14.var0[-1].data + 1, 0xFFFFFFFF) == 1)
    {
      LOBYTE(a14.var0->isa) = 0;
      free(&a14.var0[-1].data + 4);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::VarT<ProShade::SamplerNode>::repr(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 160);

  return v2();
}

void ProShade::Error<PCException>::raise<char [27]>(OZChannelBase *a1, const PCString *a2)
{
  OZChannelBase::setRangeName(a1, a2);
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v4, a1);
  PCException::PCException(exception, &v4);
}

void ProShade::TextureFunc::description(ProShade::TextureFunc *this@<X0>, void *a2@<X8>)
{
  if (*(this + 19))
  {
    v4 = *(this + 15);
    if (!v4)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v4 + 24))(&v32);
    v5 = v32;
    if (v32)
    {
      v6 = *(v32 - 2);
    }

    else
    {
      v6 = 0;
    }

    v10 = malloc_type_malloc(v6 + 25, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v10);
    atomic_store(0, v10);
    *(v10 + 12) = *"TextureFunc(";
    v11 = v6 + 12;
    *(v10 + 1) = v11;
    *(v10 + 2) = v6 + 13;
    *(v10 + 5) = 677604981;
    memcpy(v10 + 24, v5, v6);
    v10[v11 + 12] = 0;
    atomic_fetch_add(v10, 1u);
    v12 = *(v10 + 1);
    v13 = malloc_type_malloc(v12 + 15, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v13);
    v14 = v13 + 3;
    atomic_store(0, v13);
    v13[1] = v12 + 2;
    v13[2] = v12 + 3;
    memcpy(v13 + 3, v10 + 12, v12);
    *&v14[v12] = 8236;
    v14[v12 + 2] = 0;
    atomic_fetch_add(v13, 1u);
    v15 = *(this + 19);
    if (!v15)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v15 + 24))(&v31);
    v16 = v13[1];
    v17 = v31;
    if (v31)
    {
      v18 = *(v31 - 2);
    }

    else
    {
      v18 = 0;
    }

    v19 = v16 + v18;
    v20 = malloc_type_malloc(v19 + 13, 0x10000403E1C8BA9uLL);
    v20[1] = v19;
    v20[2] = v19 + 1;
    atomic_store(1u, v20);
    atomic_store(0, v20);
    memcpy(v20 + 3, v14, v16);
    memcpy(v20 + v16 + 12, v17, v18);
    *(v20 + v19 + 12) = 0;
    atomic_fetch_add(v20, 1u);
    v21 = v20[1];
    v22 = malloc_type_malloc(v21 + 14, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v22);
    v23 = v22 + 3;
    atomic_store(0, v22);
    v22[1] = v21 + 1;
    v22[2] = v21 + 2;
    memcpy(v22 + 3, v20 + 3, v21);
    *(v23 + v21) = 41;
    *(v23 + v21 + 1) = 0;
    *a2 = v22 + 3;
    atomic_fetch_add(v22, 1u);
    if (atomic_fetch_add(v20, 0xFFFFFFFF) == 1)
    {
      free(v20);
    }

    if (v31 && atomic_fetch_add(v31 - 3, 0xFFFFFFFF) == 1)
    {
      *v31 = 0;
      if (v31)
      {
        v24 = v31 - 12;
      }

      else
      {
        v24 = 0;
      }

      free(v24);
    }

    if (atomic_fetch_add(v13, 0xFFFFFFFF) == 1)
    {
      free(v13);
    }

    add = atomic_fetch_add(v10, 0xFFFFFFFF);
  }

  else
  {
    v7 = *(this + 15);
    if (!v7)
    {
      throw_PCNullPointerException(1);
    }

    (*(*v7 + 24))(&v32);
    v8 = v32;
    if (v32)
    {
      v9 = *(v32 - 2);
    }

    else
    {
      v9 = 0;
    }

    v10 = malloc_type_malloc(v9 + 25, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v10);
    atomic_store(0, v10);
    *(v10 + 12) = *"TextureFunc(";
    v26 = v9 + 12;
    *(v10 + 1) = v26;
    *(v10 + 2) = v9 + 13;
    *(v10 + 5) = 677604981;
    memcpy(v10 + 24, v8, v9);
    v10[v26 + 12] = 0;
    atomic_fetch_add(v10, 1u);
    v27 = *(v10 + 1);
    v28 = malloc_type_malloc(v27 + 14, 0x10000403E1C8BA9uLL);
    atomic_store(1u, v28);
    v29 = v28 + 3;
    atomic_store(0, v28);
    v28[1] = v27 + 1;
    v28[2] = v27 + 2;
    memcpy(v28 + 3, v10 + 12, v27);
    *(v29 + v27) = 41;
    *(v29 + v27 + 1) = 0;
    *a2 = v28 + 3;
    atomic_fetch_add(v28, 1u);
    add = atomic_fetch_add(v10, 0xFFFFFFFF);
  }

  if (add == 1)
  {
    free(v10);
  }

  if (v32 && atomic_fetch_add(v32 - 3, 0xFFFFFFFF) == 1)
  {
    *v32 = 0;
    if (v32)
    {
      v30 = v32 - 12;
    }

    else
    {
      v30 = 0;
    }

    free(v30);
  }
}

void sub_25FF7300C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
{
  if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
  {
    free(v12);
  }

  if (a12)
  {
    if (atomic_fetch_add(a12 - 3, 0xFFFFFFFF) == 1)
    {
      *a12 = 0;
      free(a12 - 3);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProShade::TextureFunc::computeHash(ProShade::TextureFunc *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, "TextureFunc");
  if (*(this + 8))
  {
    ProShade::VarT<ProShade::SamplerNode>::computeHash(this + 48);
  }

  else
  {
    ProShade::Texture::computeHash((this + 80), a2);
  }

  v4 = *(this + 15);
  if (!v4)
  {
    throw_PCNullPointerException(1);
  }

  result = (*(*v4 + 56))(v4, a2);
  if (*(this + 19))
  {

    return ProShade::VarT<ProShade::SamplerNode>::computeHash(this + 136);
  }

  return result;
}

uint64_t ProShade::VarT<ProShade::SamplerNode>::computeHash(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 56);

  return v2();
}

uint64_t ProShade::TextureFunc::inputs(const PCSharedCount *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  if (*(a2 + 8) < 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v4);
  if (a1[8].var0)
  {
    v12.var0 = &unk_28725E328;
    PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v13, a1 + 8);
    v5 = *(a2 + 12);
    if (*(a2 + 8) <= v5)
    {
      v6 = 2 * (v5 + 1) + 1;
    }

    else
    {
      v6 = *(a2 + 8);
    }

    PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v5 + 1, v6);
    ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + 32 * *(a2 + 12) - 32, &v12);
    v12.var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(v14);
  }

  v7 = *(a2 + 12);
  if (*(a2 + 8) <= v7)
  {
    v8 = 2 * (v7 + 1) + 1;
  }

  else
  {
    v8 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v7 + 1, v8);
  result = ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + 32 * *(a2 + 12) - 32, a1 + 13);
  if (a1[19].var0)
  {
    v10 = *(a2 + 12);
    if (*(a2 + 8) <= v10)
    {
      v11 = 2 * (v10 + 1) + 1;
    }

    else
    {
      v11 = *(a2 + 8);
    }

    PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, v10 + 1, v11);
    return ProShade::VarT<ProShade::Node>::operator=(*(a2 + 16) + 32 * *(a2 + 12) - 32, a1 + 17);
  }

  return result;
}

void sub_25FF73398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void ProShade::TextureFunc::apply(PCSharedCount *a1@<X0>, void (***a2)(void *__return_ptr, void, void)@<X1>, PCSharedCount *a3@<X8>)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v16 = &unk_28725E328;
  v17 = 0;
  PCSharedCount::PCSharedCount(v18);
  if (a1[8].var0)
  {
    v11[0] = &unk_28725E328;
    PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v12, a1 + 8);
    (**a2)(v14, a2, v11);
    ProShade::VarT<ProShade::Node>::operator=(&v16, v14);
    v14[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v15);
    v11[0] = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v13);
  }

  (**a2)(v14, a2, &a1[13]);
  v11[0] = &unk_28725E328;
  v12.var0 = 0;
  PCSharedCount::PCSharedCount(&v13);
  if (a1[19].var0)
  {
    (**a2)(v8, a2, &a1[17]);
    ProShade::VarT<ProShade::Node>::operator=(v11, v8);
    v8[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v10);
  }

  v8[0].var0 = &unk_28725E328;
  PCPtr<LiImageSource>::PCPtr<OZGradientSource>(&v9, a1 + 8);
  if (v17 != v9.var0 || v14[2].var0 != a1[15].var0)
  {
    v8[0].var0 = &unk_28725E328;
    PCSharedCount::~PCSharedCount(&v10);
    goto LABEL_8;
  }

  var0 = v12.var0;
  v7 = a1[19].var0;
  v8[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v10);
  if (var0 != v7)
  {
LABEL_8:
    if (a1[19].var0)
    {
      operator new();
    }

    operator new();
  }

  ProShade::VarT<ProShade::Node>::VarT(a3, a1);
  v11[0] = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v13);
  v14[0].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(&v15);
  v16 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v18);
}

void sub_25FF73724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MEMORY[0x2666E9F00](v13, 0x10B1C408AD29EEDLL);
  PCSharedCount::~PCSharedCount(v15 + 3);
  PCSharedCount::~PCSharedCount(va);
  PCSharedCount::~PCSharedCount(v14 + 3);
  _Unwind_Resume(a1);
}

void ProShade::TextureData::~TextureData(ProShade::TextureData *this)
{
  *this = &unk_28725F9F8;
  *(this + 5) = &unk_28725FA28;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiString::dec((this + 8));
  *(this + 5) = &unk_2872DEA38;
  *(this + 56) = 0;
  PCWeakCount::~PCWeakCount(this + 6);
}

{
  *this = &unk_28725F9F8;
  *(this + 5) = &unk_28725FA28;
  v2 = *(this + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiString::dec((this + 8));
  *(this + 5) = &unk_2872DEA38;
  *(this + 56) = 0;
  PCWeakCount::~PCWeakCount(this + 6);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toProShade::TextureData::~TextureData(ProShade::TextureData *this)
{
  v1 = this + *(*this - 24);
  *v1 = &unk_28725F9F8;
  *(v1 + 5) = &unk_28725FA28;
  v2 = *(v1 + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiString::dec((v1 + 8));
  *(v1 + 5) = &unk_2872DEA38;
  v1[56] = 0;

  PCWeakCount::~PCWeakCount(v1 + 6);
}

{
  v1 = this + *(*this - 24);
  *v1 = &unk_28725F9F8;
  *(v1 + 5) = &unk_28725FA28;
  v2 = *(v1 + 3);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  LiString::dec((v1 + 8));
  *(v1 + 5) = &unk_2872DEA38;
  v1[56] = 0;
  PCWeakCount::~PCWeakCount(v1 + 6);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::SamplerNode::Binding>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::__find_equal<LiOpenGLContextGetter::C>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_25FF73FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCSharedCount::~PCSharedCount(va);
  _Unwind_Resume(a1);
}

void Li3DGroupForEquirect::Li3DGroupForEquirect(uint64_t a1)
{
  *(a1 + 680) = &unk_2872DEA38;
  *(a1 + 688) = 0;
  *(a1 + 696) = 1;
  LiGroup::LiGroup(a1, &off_28725FBC0);
  *a1 = &unk_28725FA70;
  *(a1 + 680) = &unk_28725FBA0;
  PCMakePtr<LiRenderer>();
}

void sub_25FF740EC(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 672));
  PCSharedCount::~PCSharedCount((v1 + 656));
  LiGroup::~LiGroup(v1, &off_28725FBC0);
  *(v1 + 680) = v2;
  *(v1 + 696) = 0;
  PCWeakCount::~PCWeakCount((v1 + 688));
  _Unwind_Resume(a1);
}

void Li3DGroupForEquirect::Li3DGroupForEquirect(uint64_t a1, uint64_t a2)
{
  *(a1 + 680) = &unk_2872DEA38;
  *(a1 + 688) = 0;
  *(a1 + 696) = 1;
  LiGroup::LiGroup(a1, &off_28725FBC0, a2);
  *a1 = &unk_28725FA70;
  *(a1 + 680) = &unk_28725FBA0;
  PCMakePtr<LiRenderer>();
}

void sub_25FF74294(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 656));
  LiGroup::~LiGroup(v1, &off_28725FBC0);
  *(v1 + 680) = v2;
  *(v1 + 696) = 0;
  PCWeakCount::~PCWeakCount((v1 + 688));
  _Unwind_Resume(a1);
}

void Li3DGroupForEquirect::createCopyWithJustLights(Li3DGroupForEquirect *this, int a2)
{
  if (a2)
  {
    PCMakePtr<Li3DGroupForEquirect,Li3DGroupForEquirect const&,LiGroup::JustLightsTag>();
  }

  LiGroup::createCopyWithJustLights(this);
}

void Li3DGroupForEquirect::~Li3DGroupForEquirect(PCSharedCount *this)
{
  *(v1 + 680) = &unk_2872DEA38;
  *(v1 + 696) = 0;
  PCWeakCount::~PCWeakCount((v1 + 688));
}

{
  Li3DGroupForEquirect::~Li3DGroupForEquirect(this);

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLi3DGroupForEquirect::~Li3DGroupForEquirect(Li3DGroupForEquirect *this)
{
  *(v1 + 680) = &unk_2872DEA38;
  *(v1 + 696) = 0;
  v2 = (v1 + 688);

  PCWeakCount::~PCWeakCount(v2);
}

{
  v1 = (this + *(*this - 24));
  v1[85].var0 = &unk_2872DEA38;
  LOBYTE(v1[87].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[86].var0);

  JUMPOUT(0x2666E9F00);
}

void Li3DGroupForEquirect::~Li3DGroupForEquirect(PCSharedCount *this, PCSharedCount *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + *(var0 - 3)) = a2[7];
  PCSharedCount::~PCSharedCount(this + 84);
  PCSharedCount::~PCSharedCount(this + 82);

  LiGroup::~LiGroup(this, a2 + 1);
}

void LiDropShadow::LiDropShadow(LiDropShadow *this)
{
  *(this + 28) = &unk_2872DEA38;
  *(this + 29) = 0;
  *(this + 240) = 1;
  LiImageFilter::LiImageFilter(this, &off_28725FFC8);
  *this = &unk_28725FEC0;
  *(this + 28) = &unk_28725FFA8;
  *(this + 20) = 0x3FF0000000000000;
  *(this + 15) = 0x3FF0000000000000;
  *(this + 10) = 0x3FF0000000000000;
  *(this + 5) = 0x3FF0000000000000;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 168) = 1;
  PCWorkingColorVector::PCWorkingColorVector((this + 172));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0x3FF0000000000000;
  *(this + 108) = 1;
}

void sub_25FF748C0(_Unwind_Exception *a1)
{
  LiImageFilter::~LiImageFilter(v1, &off_28725FFC8);
  *(v1 + 224) = v2;
  *(v1 + 240) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiDropShadow::~LiDropShadow(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[7].var0;
  v5 = a2[1].var0;
  this->var0 = v5;
  *(this + v5[-1].info) = a2[6].var0;
  PCSharedCount::~PCSharedCount(this + 3);

  OZChannelBase::setRangeName(this, a2 + 2);
}

void LiDropShadow::~LiDropShadow(PCSharedCount *this)
{
  *(v1 + 224) = &unk_2872DEA38;
  *(v1 + 240) = 0;
  PCWeakCount::~PCWeakCount((v1 + 232));
}

{
  *(v1 + 224) = &unk_2872DEA38;
  *(v1 + 240) = 0;
  PCWeakCount::~PCWeakCount((v1 + 232));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiDropShadow::~LiDropShadow(LiDropShadow *this)
{
  *(v1 + 224) = &unk_2872DEA38;
  *(v1 + 240) = 0;
  v2 = (v1 + 232);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiDropShadow::~LiDropShadow((this + *(*this - 24)));
}

double LiDropShadow::copyFrom(LiDropShadow *this, const LiDropShadow *a2)
{
  *(this + 2) = *(a2 + 2);
  PCSharedCount::PCSharedCount(&v9, a2 + 3);
  PCSharedCount::operator=(this + 3, &v9);
  PCSharedCount::~PCSharedCount(&v9);
  *(this + 8) = *(a2 + 8);
  if (a2 != this)
  {
    v4 = 0;
    v5 = a2 + 40;
    v6 = this + 40;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *&v6[i] = *&v5[i];
      }

      ++v4;
      v6 += 32;
      v5 += 32;
    }

    while (v4 != 4);
  }

  *(this + 168) = *(a2 + 168);
  *(this + 172) = *(a2 + 172);
  *(this + 12) = *(a2 + 12);
  result = *(a2 + 26);
  *(this + 26) = result;
  *(this + 108) = *(a2 + 108);
  return result;
}

uint64_t LiDropShadow::pixelTransformSupport(uint64_t a1)
{
  v1 = fabs(*(a1 + 192));
  if (fabs(*(a1 + 200)) < 0.0000001 && v1 < 0.0000001)
  {
    return 6;
  }

  else
  {
    return 4;
  }
}

uint64_t LiDropShadow::getBoundary(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    throw_PCNullPointerException(1);
  }

  v2 = *(*v1 + 24);

  return v2();
}

HGBlur *LiDropShadow::getHelium@<X0>(LiDropShadow *this@<X0>, LiAgent *a2@<X1>, HGBlur **a3@<X8>)
{
  *(a2 + 8) = 0;
  result = LiAgent::getHelium(a2, *(this + 2), &v52);
  if (!v52 || (v7 = *(a2 + 6), (v7[18] & 1) != 0))
  {
    *a3 = v52;
    return result;
  }

  v8 = *(this + 120);
  v48 = *(this + 104);
  v49 = v8;
  v9 = *(this + 152);
  v50 = *(this + 136);
  v51 = v9;
  v10 = *(this + 56);
  v44 = *(this + 40);
  v45 = v10;
  v11 = *(this + 88);
  v46 = *(this + 72);
  v47 = v11;
  v12 = *(a2 + 20);
  if (*(this + 168))
  {
    v13 = *v7;
    if (*v7 && (*(*v13 + 160))(v13))
    {
      v14 = (*(*v13 + 688))(v13);
      v15 = 1.0 / v14;
      if (1.0 / v14 != 1.0)
      {
        v44 = vmulq_n_f64(v44, v15);
        v45 = vmulq_n_f64(v45, v15);
      }

      if (v14 != 1.0)
      {
        v44.f64[0] = v14 * v44.f64[0];
        *&v46 = v14 * *&v46;
        *&v48 = v14 * *&v48;
        *&v50 = v14 * *&v50;
      }
    }
  }

  else
  {
    LiAgent::getObjectToImageTransform(a2, v41);
    PCMatrix44Tmpl<double>::operator*(v41, &v44, v42);
    LiAgent::getImageToObjectTransform(a2, v40);
    PCMatrix44Tmpl<double>::operator*(v42, v40, v43);
    for (i = 0; i != 16; i += 4)
    {
      v17 = &v44.f64[i];
      v18 = *&v43[i + 2];
      *v17 = *&v43[i];
      v17[1] = v18;
    }
  }

  PCMatrix44Tmpl<double>::operator*(v12, &v44, v42);
  LiAgent::getInversePixelTransform(a2, 0.0, v41);
  PCMatrix44Tmpl<double>::operator*(v42, v41, v43);
  for (j = 0; j != 16; j += 4)
  {
    v20 = &v44.f64[j];
    v21 = *&v43[j + 2];
    *v20 = *&v43[j];
    v20[1] = v21;
  }

  LiAgent::haveROI(a2);
  LiAgent::makeHeliumXForm(a2, &v44, &v52, a3);
  v22 = *(this + 12);
  v23 = *(v12 + 32);
  v24 = vmulq_f64(v23, 0);
  v25 = vaddq_f64(vextq_s8(v24, v24, 8uLL), vmulq_f64(v22, v23));
  v26 = vmulq_f64(*v12, 0);
  v27 = vaddq_f64(vextq_s8(v26, v26, 8uLL), vmulq_f64(v22, *v12));
  v28 = sqrt(vaddvq_f64(vmulq_f64(v27, v27)));
  v29 = sqrt(vaddvq_f64(vmulq_f64(v25, v25)));
  if (v28 > 0.0 || v29 > 0.0)
  {
    v30 = v28;
    v31 = v29;
    LiHelium::createBlurNode(v30, v31, v43);
    (*(*v43[0] + 120))(v43[0], 0, *a3);
    if ((*(*(a2 + 6) + 132) & 1) == 0)
    {
      (*(*v43[0] + 96))(v43[0], 2, 1.0, 0.0, 0.0, 0.0);
    }

    v32 = *a3;
    v33 = v43[0];
    if (*a3 != v43[0])
    {
      if (v32)
      {
        (*(*v32 + 24))(*a3);
        v33 = v43[0];
      }

      *a3 = v33;
      if (!v33)
      {
        goto LABEL_26;
      }

      (*(*v33 + 16))(v33);
      v33 = v43[0];
    }

    if (v33)
    {
      (*(*v33 + 24))(v33);
    }
  }

LABEL_26:
  v34 = HGObject::operator new(0x1A0uLL);
  LiHeAlphaFill::LiHeAlphaFill(v34);
  (*(*v34 + 120))(v34, 0, *a3);
  v35 = operator*((this + 172), *(this + 46));
  (*(*v34 + 96))(v34, 0, v35);
  v36 = *(this + 26);
  (*(*v34 + 96))(v34, 1, v36, 0.0, 0.0, 0.0);
  v37 = *a3;
  if (*a3 != v34)
  {
    if (v37)
    {
      (*(*v37 + 24))(v37);
    }

    *a3 = v34;
    (*(*v34 + 16))(v34);
  }

  (*(*v34 + 24))(v34);
  if (*(this + 216) == 1)
  {
    v38 = HGObject::operator new(0x220uLL);
    HGHWBlendFlipped::HGHWBlendFlipped(v38);
    (*(*v38 + 120))(v38, *(this + 217), v52);
    (*(*v38 + 120))(v38, *(this + 217) ^ 1u, *a3);
    v39 = *a3;
    if (*a3 != v38)
    {
      if (v39)
      {
        (*(*v39 + 24))(v39);
      }

      *a3 = v38;
      (*(*v38 + 16))(v38);
    }

    (*(*v38 + 24))(v38);
  }

  result = v52;
  if (v52)
  {
    return (*(*v52 + 24))(v52);
  }

  return result;
}

void sub_25FF75428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57)
{
  v59 = *(v57 - 56);
  if (v59)
  {
    (*(*v59 + 24))(v59);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiGL::useProgram(void **this, os_unfair_lock_s *a2)
{
  if (a2)
  {
    (*(*&a2->_os_unfair_lock_opaque + 16))(a2);
    v4 = ProShade::ProgramBase::id(a2);
    glUseProgram(v4);
  }

  return LiGL::setCurrentProgram(this, a2);
}

uint64_t LiGL::setCurrentProgram(void **a1, uint64_t a2)
{
  v4 = *a1;
  if (!v4)
  {
    v4 = LiGLState::get(0);
    *a1 = v4;
  }

  return LiGLState::setCurrentProgram(v4, a2);
}

void Li3DEngineImageSource::Li3DEngineImageSource(Li3DEngineImageSource *this)
{
  *(this + 38) = &unk_2872DEA38;
  *(this + 39) = 0;
  *(this + 320) = 1;
  LiRendererBase::LiRendererBase(this, &off_2872603A8);
  *this = &unk_2872602A0;
  *(this + 38) = &unk_287260388;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0x3FF0000000000000;
  *(this + 19) = 0x3FF0000000000000;
  *(this + 14) = 0x3FF0000000000000;
  *(this + 9) = 0x3FF0000000000000;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 200) = xmmword_260343AA0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 36) = 0;
  *(this + 37) = 0x3FF0000000000000;
  *(this + 2) = 2;
  *(this + 64) = 2;
  *(this + 55) = -1082130432;
  *(this + 216) = 0;
}

void sub_25FF7574C(_Unwind_Exception *a1)
{
  *(v1 + 304) = v2;
  *(v1 + 320) = 0;
  PCWeakCount::~PCWeakCount((v1 + 312));
  _Unwind_Resume(a1);
}

void Li3DEngineImageSource::~Li3DEngineImageSource(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[7].var0;
  v5 = this[31].var0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = this[29].var0;
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = this[28].var0;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  LiRendererBase::~LiRendererBase(this, a2 + 1);
}

void Li3DEngineImageSource::~Li3DEngineImageSource(PCSharedCount *this)
{
  *(v1 + 304) = &unk_2872DEA38;
  *(v1 + 320) = 0;
  PCWeakCount::~PCWeakCount((v1 + 312));
}

{
  *(v1 + 304) = &unk_2872DEA38;
  *(v1 + 320) = 0;
  PCWeakCount::~PCWeakCount((v1 + 312));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLi3DEngineImageSource::~Li3DEngineImageSource(Li3DEngineImageSource *this)
{
  *(v1 + 304) = &unk_2872DEA38;
  *(v1 + 320) = 0;
  v2 = (v1 + 312);

  PCWeakCount::~PCWeakCount(v2);
}

{
  Li3DEngineImageSource::~Li3DEngineImageSource((this + *(*this - 24)));
}

void Li3DEngineImageSource::getHelium(PC_Sp_counted_base **this, LiAgent *a2)
{
  RequestedColorDescription = LiAgent::getRequestedColorDescription(a2);
  FxColorDescription::FxColorDescription(&v18, RequestedColorDescription, 0);
  LiAgentRequestedColorSpaceSentry::LiAgentRequestedColorSpaceSentry(v17, a2, &v18);
  if (LiRenderingTechnology::getLogLithium((*(a2 + 6) + 80)))
  {
    v5 = MEMORY[0x277D82670];
    (*(*this + 16))(this, MEMORY[0x277D82670], 0);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(v11, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(v11);
    std::ostream::put();
    std::ostream::flush();
  }

  v7 = HGObject::operator new(0x2C0uLL);
  LiHe3DEngineNode::LiHe3DEngineNode(v7);
  v15.var0 = this[2];
  PCSharedCount::PCSharedCount(&v16, this + 3);
  LiHe3DEngineNode::setScene(v7, &v15);
  PCSharedCount::~PCSharedCount(&v16);
  v8 = this[29];
  v14 = v8;
  if (v8)
  {
    (*(*v8 + 16))(v8);
  }

  LiHe3DEngineNode::setMatteNode(v7, &v14);
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v9 = this[28];
  v13 = v9;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  LiHe3DEngineNode::setDepthNode(v7, &v13);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  *(v7 + 103) = *(this + 55);
  LiHe3DEngineNode::setVideoOrientation(v7, *(this + 64));
  v10 = this[30];
  if (v10)
  {
    (*(*v10 + 24))(v11);
    locale = v11[0].__locale_;
    if (v11[0].__locale_)
    {
      (*(*v11[0].__locale_ + 16))(v11[0].__locale_);
    }

    LiHe3DEngineNode::setPlaceholderDepthTexture(v7, &locale);
    if (locale)
    {
      (*(*locale + 24))(locale);
    }

    if (v11[0].__locale_)
    {
      (*(*v11[0].__locale_ + 24))(v11[0].__locale_);
    }
  }

  if (*(this + 216) == 1)
  {
    *(v7 + 640) = 1;
  }

  operator new();
}

void sub_25FF765B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::locale a41)
{
  if (a25)
  {
    (*(*a25 + 24))(a25);
  }

  if (*v42)
  {
    (*(**v42 + 24))(*v42);
  }

  PCSharedCount::~PCSharedCount(v43 + 1);
  (*(*v41 + 24))(v41);
  LiAgentRequestedColorSpaceSentry::~LiAgentRequestedColorSpaceSentry((v44 - 200));
  PCCFRef<CGColorSpace *>::~PCCFRef((v44 - 160));
  _Unwind_Resume(a1);
}

uint64_t LiHe3DEngineNode::setMatteNode(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 416);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 416) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

uint64_t LiHe3DEngineNode::setDepthNode(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 424);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 424) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

uint64_t LiHe3DEngineNode::setPlaceholderDepthTexture(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 432);
  result = *a2;
  if (v3 != *a2)
  {
    if (v3)
    {
      (*(*v3 + 24))(v3);
      result = *a2;
    }

    *(a1 + 432) = result;
    if (result)
    {
      v6 = *(*result + 16);

      return v6();
    }
  }

  return result;
}

void LiRendererBase::LiRendererBase(LiRendererBase *this, uint64_t *a2)
{
  LiImageSource::LiImageSource(this, a2 + 1);
  v4 = *a2;
  *v5 = *a2;
  *(this + *(v4 - 24)) = a2[5];
  *(this + 2) = 0;
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 4) = 0;
  PCSharedCount::PCSharedCount(this + 5);
}

void sub_25FF76C90(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 24));
  OZChannelBase::setRangeName(v1, v2 + 1);
  _Unwind_Resume(a1);
}

void LiRendererBase::~LiRendererBase(PCSharedCount *this, const PCString *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + var0[-1].info) = a2[5].var0;
  PCSharedCount::~PCSharedCount(this + 5);
  PCSharedCount::~PCSharedCount(this + 3);

  OZChannelBase::setRangeName(this, a2 + 1);
}

uint64_t LiRendererBase::print(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    (*(*v4 + 752))(v4, a2, a3);
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "Active camera\n", 14);
  }

  v5 = *(a1 + 16);
  if (!v5)
  {
    throw_PCNullPointerException(1);
  }

  v6 = *(*v5 + 112);

  return v6();
}

uint64_t LiRendererBase::adjustCasterLocalToWorld(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(result + 16);
  if (v7)
  {
    LiSceneIterator<LiGeode,LiSceneIteratorAlways>::LiSceneIterator(v14, v7);
    while (v15)
    {
      (*(*v15 + 160))(&v12);
      if (v12)
      {
        (*(*v12 + 144))(v12, a2, a3, a4, a5, a6);
      }

      PCSharedCount::~PCSharedCount(&v13);
      LiSceneIterator<LiGeode,LiSceneIteratorAlways>::operator++(v14);
    }

    return LiSceneIterator<LiGeode,LiSceneIteratorAlways>::~LiSceneIterator(v14);
  }

  return result;
}

void sub_25FF76F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCSharedCount::~PCSharedCount(v4 + 1);
  LiSceneIterator<LiGeode,LiSceneIteratorAlways>::~LiSceneIterator(va);
  _Unwind_Resume(a1);
}

uint64_t LiSceneIterator<LiGeode,LiSceneIteratorAlways>::operator++(uint64_t a1)
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

uint64_t LiSceneIterator<LiGeode,LiSceneIteratorAlways>::~LiSceneIterator(uint64_t a1)
{
  v2 = a1 + 16;
  *(a1 + 16) = &unk_287260690;
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

uint64_t LiSceneIterator<LiGeode,LiSceneIteratorAlways>::LiSceneIterator(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_287260690;
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

void PCArray<LiSceneIterator<LiGeode,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiGeode,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287260690;
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

uint64_t PCArray<LiSceneIterator<LiGeode,LiSceneIteratorAlways>::Obj,PCArray_Traits<LiSceneIterator<LiGeode,LiSceneIteratorAlways>::Obj>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287260690;
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

void LiFixedSize::LiFixedSize(LiFixedSize *this)
{
  *(this + 7) = &unk_2872DEA38;
  *(this + 8) = 0;
  *(this + 72) = 1;
  LiImageFilter::LiImageFilter(this, &off_2872607D8);
  *this = &unk_2872606D0;
  *(this + 7) = &unk_2872607B8;
  *(this + 36) = xmmword_260343AA0;
}

void sub_25FF77374(_Unwind_Exception *a1)
{
  *(v1 + 56) = v2;
  *(v1 + 72) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

void LiFixedSize::~LiFixedSize(PCSharedCount *this)
{
  *(v1 + 56) = &unk_2872DEA38;
  *(v1 + 72) = 0;
  PCWeakCount::~PCWeakCount((v1 + 64));
}

{
  *(v1 + 56) = &unk_2872DEA38;
  *(v1 + 72) = 0;
  PCWeakCount::~PCWeakCount((v1 + 64));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiFixedSize::~LiFixedSize(LiFixedSize *this)
{
  *(v1 + 56) = &unk_2872DEA38;
  *(v1 + 72) = 0;
  v2 = (v1 + 64);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiFixedSize::~LiFixedSize((this + *(*this - 24)));
}

double LiFixedSize::fixMyPixelTransform(uint64_t a1, uint64_t a2)
{
  result = 0.0000001;
  if (fabs(*a2 + -1.0) >= 0.0000001 || fabs(*(a2 + 8)) >= 0.0000001 || vabdd_f64(*(a2 + 24), round(*(a2 + 24))) >= 0.0000001 || fabs(*(a2 + 32)) >= 0.0000001 || fabs(*(a2 + 40) + -1.0) >= 0.0000001 || vabdd_f64(*(a2 + 56), round(*(a2 + 56))) >= 0.0000001 || fabs(*(a2 + 96)) >= 0.0000001 || fabs(*(a2 + 104)) >= 0.0000001 || fabs(*(a2 + 120) + -1.0) >= 0.0000001)
  {
    *(a2 + 120) = 0x3FF0000000000000;
    *(a2 + 80) = 0x3FF0000000000000;
    *(a2 + 40) = 0x3FF0000000000000;
    *a2 = 0x3FF0000000000000;
    result = 0.0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
  }

  return result;
}

uint64_t LiFixedSize::getHelium@<X0>(LiFixedSize *this@<X0>, LiAgent *a2@<X1>, HGCrop **a3@<X8>)
{
  v6 = *(a2 + 20);
  v7 = (v6 + 120);
  v8.f64[0] = *(v6 + 24);
  v8.f64[1] = *(v6 + 56);
  v9 = vld1q_dup_f64(v7);
  *&v8.f64[0] = vadd_s32(*(this + 36), vmovn_s64(vcvtq_s64_f64(vdivq_f64(v8, v9))));
  v9.f64[0] = *(this + 44);
  v16.n128_u64[0] = *&v8.f64[0];
  v16.n128_u64[1] = *&v9.f64[0];
  LiAgent::setInputROI(a2, &v16);
  LiAgent::getHelium(a2, *(this + 2), &v15);
  v10 = HGObject::operator new(0x1A0uLL);
  HGCrop::HGCrop(v10);
  v11 = HGRectMake4i(v16.n128_u32[0], v16.n128_u32[1], v16.n128_u32[2] + v16.n128_u32[0], v16.n128_u32[3] + v16.n128_u32[1]);
  (*(*v10 + 96))(v10, 0, v11, SHIDWORD(v11), v12, v13);
  (*(*v10 + 120))(v10, 0, v15);
  *a3 = v10;
  result = v15;
  if (v15)
  {
    return (*(*v15 + 24))(v15);
  }

  return result;
}

void sub_25FF777F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  (*(*v10 + 24))(v10);
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

void sub_25FF77970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount a12)
{
  PCSharedCount::~PCSharedCount(&a12);
  PCSharedCount::~PCSharedCount(v12 + 1);
  _Unwind_Resume(a1);
}

void LiGaussianBlur::LiGaussianBlur(LiGaussianBlur *this)
{
  *(this + 8) = &unk_2872DEA38;
  *(this + 9) = 0;
  *(this + 80) = 1;
  LiImageFilter::LiImageFilter(this, &off_287260BB8);
  *this = &unk_287260AB0;
  *(this + 8) = &unk_287260B98;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 56) = 1;
}

void sub_25FF77A5C(_Unwind_Exception *a1)
{
  *(v1 + 64) = v2;
  *(v1 + 80) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

float64x2_t LiGaussianBlur::getBoundary(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    throw_PCNullPointerException(1);
  }

  if ((*(*v5 + 24))(v5, a2, a3))
  {
    v7 = vaddq_f64(*(a1 + 40), *(a1 + 40));
    v8 = vsubq_f64(*a3, v7);
    result = vsubq_f64(a3[1], vsubq_f64(vnegq_f64(v7), v7));
    *a3 = v8;
    a3[1] = result;
  }

  return result;
}

uint64_t LiGaussianBlur::getHelium@<X0>(LiGaussianBlur *this@<X0>, __n128 *a2@<X1>, void *a3@<X8>)
{
  if (LiAgent::haveROI(a2))
  {
    LiAgent::getROI(a2, &v16);
    v6 = *(this + 5);
    BlurExtent = LiHelium::getBlurExtent(v7, v6);
    v9 = BlurExtent;
    v10 = *(this + 6);
    v11 = LiHelium::getBlurExtent(BlurExtent, v10);
    v16.n128_u32[0] -= v9;
    v16.n128_u32[1] -= v11;
    v16.n128_u32[2] += 2 * v9;
    v16.n128_u32[3] += 2 * v11;
    LiAgent::setInputROI(a2, &v16);
  }

  result = LiAgent::getHelium(a2, *(this + 2), &v16);
  if (v16.n128_u64[0])
  {
    v13 = *(this + 5);
    v14 = *(this + 6);
    LiHelium::createBlurNode(v13, v14, &v15);
    (*(*v15 + 120))(v15, 0, v16.n128_u64[0]);
    result = v16.n128_u64[0];
    *a3 = v15;
    if (result)
    {
      return (*(*result + 24))(result);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void sub_25FF77C38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(exception_object);
}

void LiLightInfo::loadShadowSnippet(PCSharedCount *a1@<X8>)
{
  {
    PCString::PCString(&v4, "shadow");
    ProShade::Snippet::loadFromBundle(&v4, v3);
  }

  a1->var0 = LiLightInfo::loadShadowSnippet(void)::snippet;
  PCSharedCount::PCSharedCount(a1 + 1, &stru_27FE4B8B0);
}

void sub_25FF77D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  _Unwind_Resume(a1);
}

void sub_25FF7802C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, PCSharedCount *a12, PCSharedCount *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  LiPerContextValue<ProShade::SamplerNode::Binding>::~LiPerContextValue(&v20[97]);
  v20[93].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 96);
  v20[89].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 92);
  v20[85].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 88);
  v20[81].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 84);
  v20[77].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 80);
  v20[73].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 76);
  v20[69].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 72);
  v20[65].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 68);
  v20[61].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 64);
  v20[57].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 60);
  ProShade::Sampler::~Sampler(v21);
  ProShade::Sampler::~Sampler(a12);
  ProShade::Sampler::~Sampler(a13);
  v20[16].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 19);
  v20[12].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 15);
  v20[8].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 11);
  v20[4].var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 7);
  v20->var0 = &unk_28725E8E0;
  PCSharedCount::~PCSharedCount(v20 + 3);
  _Unwind_Resume(a1);
}

uint64_t LiLightInfo::get(LiLightInfo *this)
{
  v1 = this;
  {
    PCMutex::PCMutex(&LiLightInfo::get(int,BOOL)::g_lightListLock);
    __cxa_atexit(PCMutex::~PCMutex, &LiLightInfo::get(int,BOOL)::g_lightListLock, &dword_25F8F0000);
  }

  v2 = PCMutex::lock(&LiLightInfo::get(int,BOOL)::g_lightListLock);
  {
    if (v2)
    {
      ProShade::SamplerT<3553,false,false,false>::SamplerT();
    }
  }

  if ((atomic_load_explicit(&_MergedGlobals_34, memory_order_acquire) & 1) == 0)
  {
    LiLightInfo::get();
  }

  if (SHIDWORD(qword_280C5E8C0) <= v1)
  {
    if (qword_280C5E8C0 <= v1)
    {
      v3 = 2 * (v1 + 1) + 1;
    }

    else
    {
      v3 = qword_280C5E8C0;
    }

    PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(&qword_280C5E8B8, v1 + 1, v3);
    operator new();
  }

  if (v1 < 0 || SHIDWORD(qword_280C5E8C0) <= v1)
  {
    PCArray_base::badIndex(v2);
  }

  v4 = *(qword_280C5E8C8 + 8 * v1);
  if (&LiLightInfo::get(int,BOOL)::g_lightListLock)
  {
    PCMutex::unlock(&LiLightInfo::get(int,BOOL)::g_lightListLock);
  }

  return v4;
}

void sub_25FF78E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t LiLightInfo::get(LiLightInfo *this, const LiLight *a2)
{
  SolidSceneID = LiLight::getSolidSceneID(this);

  return LiLightInfo::get(SolidSceneID);
}

uint64_t PCArray<LiLightInfo *,PCArray_Traits<LiLightInfo *>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287261000;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::ProgramVar *,PCArray_Traits<ProShade::ProgramVar *>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

uint64_t LiClipPlaneInfo::get(LiClipPlaneInfo *this)
{
  v1 = this;
  if ((atomic_load_explicit(&qword_280C5E8B0, memory_order_acquire) & 1) == 0)
  {
    LiClipPlaneInfo::get();
  }

  if (SHIDWORD(qword_280C5E8D8) <= v1)
  {
    v2 = SHIDWORD(qword_280C5E8D8);
    if (qword_280C5E8D8 <= v1)
    {
      v3 = 2 * (v1 + 1) + 1;
    }

    else
    {
      v3 = qword_280C5E8D8;
    }

    PCArray<LiClipPlaneInfo,PCArray_Traits<LiClipPlaneInfo>>::resize(&qword_280C5E8D0, v1 + 1, v3);
    LiString::format("clipPlane_%d", &v6, v2);
    if ((v2 & 0x8000000000000000) == 0 && v2 < SHIDWORD(qword_280C5E8D8))
    {
      operator new();
    }

    PCArray_base::badIndex(v4);
  }

  if (v1 < 0 || SHIDWORD(qword_280C5E8D8) <= v1)
  {
    PCArray_base::badIndex(this);
  }

  return qword_280C5E8E0 + 32 * v1;
}

void sub_25FF79184(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_uint *a12)
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

uint64_t PCArray<LiClipPlaneInfo,PCArray_Traits<LiClipPlaneInfo>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287261038;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiClipPlaneInfo,PCArray_Traits<LiClipPlaneInfo>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

PCSharedCount *ProShade::External::External(PCSharedCount *this)
{
  this->var0 = 0;
  v2 = this + 2;
  PCSharedCount::PCSharedCount(this + 1);
  PCSharedCount::PCSharedCount(v2);
  this[5].var0 = 0;
  this[6].var0 = 0;
  this[4].var0 = &unk_287260FC8;
  return this;
}

void ProShade::External::~External(ProShade::External *this)
{
  v2 = this + 32;
  *(this + 4) = &unk_287260FC8;
  if (*(this + 10) < 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = *(this + 10);
  }

  PCArray<ProShade::External::Argument,PCArray_Traits<ProShade::External::Argument>>::resize(v2, 0, v3);
  v4 = *(this + 6);
  if (v4)
  {
    MEMORY[0x2666E9ED0](v4, 0x1000C8077774924);
  }

  *(this + 6) = 0;
  *(this + 10) = 0;
  PCString::~PCString(this + 2);
  PCSharedCount::~PCSharedCount(this + 1);
}

uint64_t PCArray<ProShade::External::Argument,PCArray_Traits<ProShade::External::Argument>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287260FC8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::External::Argument,PCArray_Traits<ProShade::External::Argument>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  return a1;
}

void PCArray<ProShade::External::Argument,PCArray_Traits<ProShade::External::Argument>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287260FC8;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<ProShade::External::Argument,PCArray_Traits<ProShade::External::Argument>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__tree<std::__value_type<LiOpenGLContextGetter::C,BOOL>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,BOOL>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,BOOL>>>::__emplace_unique_key_args<LiOpenGLContextGetter::C,std::piecewise_construct_t const&,std::tuple<LiOpenGLContextGetter::C const&>,std::tuple<>>(uint64_t a1, uint64_t *a2)
{
  v2 = *std::__tree<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,std::__map_value_compare<LiOpenGLContextGetter::C,std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>,LiOpenGLContextGetter::Compare,true>,std::allocator<std::__value_type<LiOpenGLContextGetter::C,ProShade::ProgramBase::Exe *>>>::__find_equal<LiOpenGLContextGetter::C>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void PCArray<LiLightInfo *,PCArray_Traits<LiLightInfo *>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287261000;
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
      do
      {
        *(*(a1 + 16) + 8 * v4) = 0;
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

    v6 = *(a1 + 16);
    if (v6)
    {
      MEMORY[0x2666E9ED0](v6, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = 0;
  v7 = *(a1 + 16);
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<LiClipPlaneInfo,PCArray_Traits<LiClipPlaneInfo>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287261038;
  if (*(a1 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
  }

  PCArray<LiClipPlaneInfo,PCArray_Traits<LiClipPlaneInfo>>::resize(a1, 0, v2);
  v3 = *(a1 + 16);
  if (v3)
  {
    MEMORY[0x2666E9ED0](v3, 0x1000C8077774924);
  }

  *(a1 + 16) = 0;
  *(a1 + 8) = 0;

  JUMPOUT(0x2666E9F00);
}

void PCArray<LiClipPlaneInfo,PCArray_Traits<LiClipPlaneInfo>>::resize(uint64_t a1, int a2, int a3)
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
    PCString::PCString(&v18, "PCArray::resize");
    PCException::PCException(exception, &v18);
    *exception = &unk_2872DE188;
  }

  if (v3 == *(a1 + 8))
  {
    v6 = *(a1 + 12);
    if (a2 >= v6)
    {
      if (a2 > v6)
      {
        ProShade::Uniform::Uniform();
      }
    }

    else
    {
      v7 = 32 * a2;
      v8 = a2;
      do
      {
        v9 = *(a1 + 16);
        *(v9 + v7) = &unk_28725E8E0;
        PCSharedCount::~PCSharedCount((v9 + v7 + 24));
        v7 += 32;
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

    v10 = *(a1 + 12);
    if (a2 >= v10)
    {
      v11 = *(a1 + 12);
    }

    else
    {
      v11 = a2;
    }

    if (v11 < 1)
    {
      v11 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        ProShade::VarT<ProShade::UniformNode>::VarT(v12, *(&v12[2].var0 + *(a1 + 16)))->var0 = &unk_28725EAF8;
        v13 = *(a1 + 16);
        *(&v12->var0 + v13) = &unk_28725E8E0;
        PCSharedCount::~PCSharedCount((v12 + v13 + 24));
        v12 += 4;
      }

      while ((32 * v11) != v12);
      v10 = *(a1 + 12);
    }

    if (v11 < v10)
    {
      v14 = 32 * v11;
      do
      {
        v15 = *(a1 + 16);
        *(v15 + v14) = &unk_28725E8E0;
        PCSharedCount::~PCSharedCount((v15 + v14 + 24));
        v14 += 32;
        ++v11;
      }

      while (*(a1 + 12) > v11);
    }

    if (v11 < a2)
    {
      ProShade::Uniform::Uniform();
    }

    v16 = *(a1 + 16);
    if (v16)
    {
      MEMORY[0x2666E9ED0](v16, 0x1000C8077774924);
    }

    *(a1 + 16) = 0;
  }

  *(a1 + 8) = v3;
  *(a1 + 12) = a2;
}

void LiLightInfo::get()
{
  if (__cxa_guard_acquire(&_MergedGlobals_34))
  {
    qword_280C5E8C0 = 0;
    qword_280C5E8C8 = 0;
    qword_280C5E8B8 = &unk_287261000;
    __cxa_atexit(PCArray<LiLightInfo *,PCArray_Traits<LiLightInfo *>>::~PCArray, &qword_280C5E8B8, &dword_25F8F0000);

    __cxa_guard_release(&_MergedGlobals_34);
  }
}

void LiClipPlaneInfo::get()
{
  if (__cxa_guard_acquire(&qword_280C5E8B0))
  {
    qword_280C5E8D8 = 0;
    qword_280C5E8E0 = 0;
    qword_280C5E8D0 = &unk_287261038;
    __cxa_atexit(PCArray<LiClipPlaneInfo,PCArray_Traits<LiClipPlaneInfo>>::~PCArray, &qword_280C5E8D0, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5E8B0);
  }
}

ProShade::Node *ProShade::InputNode::InputNode(ProShade::Node *a1, uint64_t *a2, int a3, int a4, int a5)
{
  result = ProShade::Node::Node(a1, a2 + 1);
  v10 = *a2;
  *result = *a2;
  *(result + *(v10 - 24)) = a2[5];
  *(result + 6) = a3;
  *(result + 7) = a4;
  *(result + 10) = 0;
  *(result + 12) = atomic_fetch_add(ProShade::s_serial, 1u) + 1;
  *(result + 13) = a5;
  return result;
}

_DWORD *ProShade::InputNode::InputNode(_DWORD *a1, uint64_t *a2, uint64_t *a3, int a4, int a5, int a6)
{
  v12 = ProShade::Node::Node(a1, a2 + 1);
  v13 = *a2;
  *v12 = *a2;
  *(a1 + *(v13 - 24)) = a2[5];
  a1[13] = a6;
  if (a1 + 8 != a3)
  {
    LiString::dec((a1 + 8));
    v14 = *a3;
    *(a1 + 4) = *a3;
    if (v14)
    {
      atomic_fetch_add((v14 - 12), 1u);
    }
  }

  a1[6] = a4;
  a1[7] = a5;
  a1[10] = 0;
  a1[12] = atomic_fetch_add(ProShade::s_serial, 1u) + 1;
  return a1;
}

uint64_t ProShade::InputNode::repr@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = v2;
  if (v2)
  {
    atomic_fetch_add((v2 - 12), 1u);
  }

  return this;
}

void ProShade::InputNode::inputs(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) < 0)
  {
    v2 = 1;
  }

  else
  {
    v2 = *(a2 + 8);
  }

  PCArray<ProShade::VarT<ProShade::Node>,PCArray_Traits<ProShade::VarT<ProShade::Node>>>::resize(a2, 0, v2);
}

void ProShade::InputNode::computeValue(uint64_t a1)
{
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "InputNodes (uniforms etc) shouldn't be asked for their value:", 61);
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = "";
  }

  v4 = strlen(v3);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v3, v4);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "\n", 1);
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v6, "InputNodes (uniforms etc) shouldn't be asked for their value");
  PCException::PCException(exception, &v6);
}

ProShade::Node *ProShade::UniformBaseNode::UniformBaseNode(ProShade::UniformBaseNode *this, uint64_t *a2)
{
  result = ProShade::Node::Node(this, a2 + 2);
  v4 = a2[1];
  *result = v4;
  *(result + *(v4 - 24)) = a2[6];
  *(result + 6) = 0x400000000;
  v5 = *a2;
  *result = *a2;
  *(result + *(v5 - 24)) = a2[7];
  return result;
}

PCSharedCount *ProShade::UniformNode::UniformNode(PCSharedCount *this)
{
  this[11].var0 = &unk_2872DEA38;
  this[12].var0 = 0;
  LOBYTE(this[13].var0) = 1;
  ProShade::UniformBaseNode::UniformBaseNode(this, off_287261160);
  this->var0 = &unk_287261078;
  this[11].var0 = &unk_287261140;
  this[7].var0 = &unk_28725E328;
  this[9].var0 = 0;
  PCSharedCount::PCSharedCount(this + 10);
  return this;
}

void sub_25FF7A16C(_Unwind_Exception *a1)
{
  ProShade::InputNode::~InputNode(v1, off_287261168);
  *(v1 + 88) = v2;
  *(v1 + 104) = 0;
  PCWeakCount::~PCWeakCount(v3);
  _Unwind_Resume(a1);
}

uint64_t ProShade::UniformNode::UniformNode(uint64_t a1, int a2, int a3)
{
  *(a1 + 88) = &unk_2872DEA38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  ProShade::InputNode::InputNode(a1, off_287261168, a2, a3, 4);
  *a1 = &unk_287261078;
  *(a1 + 88) = &unk_287261140;
  *(a1 + 56) = &unk_28725E328;
  *(a1 + 72) = 0;
  PCSharedCount::PCSharedCount((a1 + 80));
  *(a1 + 40) = 1;
  LiString::LiString(&v14, "_u");
  LiString::format(*(a1 + 48), &v13);
  v4 = v14;
  if (v14)
  {
    v5 = *(v14 - 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v13;
  if (v13)
  {
    v7 = *(v13 - 2);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 + v5;
  v9 = malloc_type_malloc(v8 + 13, 0x10000403E1C8BA9uLL);
  v9[1] = v8;
  v9[2] = v8 + 1;
  atomic_store(1u, v9);
  atomic_store(0, v9);
  memcpy(v9 + 3, v4, v5);
  memcpy(v9 + v5 + 12, v6, v7);
  *(v9 + v8 + 12) = 0;
  atomic_fetch_add(v9, 1u);
  LiString::dec((a1 + 32));
  *(a1 + 32) = v9 + 3;
  atomic_fetch_add(v9, 1u);
  if (atomic_fetch_add(v9, 0xFFFFFFFF) == 1)
  {
    free(v9);
  }

  if (v13 && atomic_fetch_add(v13 - 3, 0xFFFFFFFF) == 1)
  {
    *v13 = 0;
    if (v13)
    {
      v10 = v13 - 12;
    }

    else
    {
      v10 = 0;
    }

    free(v10);
  }

  if (v14 && atomic_fetch_add(v14 - 3, 0xFFFFFFFF) == 1)
  {
    *v14 = 0;
    if (v14)
    {
      v11 = v14 - 12;
    }

    else
    {
      v11 = 0;
    }

    free(v11);
  }

  return a1;
}

void sub_25FF7A3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v16, 0xFFFFFFFF) == 1)
  {
    free(v16);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  *a11 = a10;
  PCSharedCount::~PCSharedCount((v14 + 80));
  ProShade::InputNode::~InputNode(v14, off_287261168);
  *(v14 + 88) = a12;
  *(v14 + 104) = 0;
  PCWeakCount::~PCWeakCount(v15);
  _Unwind_Resume(a1);
}

uint64_t ProShade::UniformNode::UniformNode(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(a1 + 96) = 0;
  *(a1 + 88) = &unk_2872DEA38;
  *(a1 + 104) = 1;
  v5 = *(a3 + 16);
  if (!v5)
  {
    throw_PCNullPointerException(1);
  }

  ProShade::InputNode::InputNode(a1, off_287261168, a2, *(v5 + 24), *(v5 + 28), 4);
  *a1 = &unk_287261078;
  *(a1 + 88) = &unk_287261140;
  *(a1 + 56) = &unk_28725E328;
  *(a1 + 64) = *(a3 + 8);
  *(a1 + 72) = *(a3 + 16);
  PCSharedCount::PCSharedCount((a1 + 80), (a3 + 24));
  v6 = *(a1 + 32);
  *(a1 + 40) = 1;
  if (!v6 || !*(v6 - 8))
  {
    LiString::LiString(&v17, "_u");
    LiString::format(*(a1 + 48), &v16);
    v7 = v17;
    if (v17)
    {
      v8 = *(v17 - 2);
    }

    else
    {
      v8 = 0;
    }

    v9 = v16;
    if (v16)
    {
      v10 = *(v16 - 2);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 + v8;
    v12 = malloc_type_malloc(v11 + 13, 0x10000403E1C8BA9uLL);
    v12[1] = v11;
    v12[2] = v11 + 1;
    atomic_store(1u, v12);
    atomic_store(0, v12);
    memcpy(v12 + 3, v7, v8);
    memcpy(v12 + v8 + 12, v9, v10);
    *(v12 + v11 + 12) = 0;
    atomic_fetch_add(v12, 1u);
    LiString::dec((a1 + 32));
    *(a1 + 32) = v12 + 3;
    atomic_fetch_add(v12, 1u);
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      free(v12);
    }

    if (v16 && atomic_fetch_add(v16 - 3, 0xFFFFFFFF) == 1)
    {
      *v16 = 0;
      if (v16)
      {
        v13 = v16 - 12;
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    if (v17 && atomic_fetch_add(v17 - 3, 0xFFFFFFFF) == 1)
    {
      *v17 = 0;
      if (v17)
      {
        v14 = v17 - 12;
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  return a1;
}

void sub_25FF7A778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, PC_Sp_counted_base **a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  *a10 = a9;
  PCSharedCount::~PCSharedCount((v14 + 80));
  ProShade::InputNode::~InputNode(v14, off_287261168);
  *(v14 + 88) = a11;
  *(v14 + 104) = 0;
  PCWeakCount::~PCWeakCount(a12);
  _Unwind_Resume(a1);
}

uint64_t ProShade::UniformNode::UniformNode(uint64_t a1, uint64_t *a2, int a3, int a4, int a5)
{
  *(a1 + 88) = &unk_2872DEA38;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  ProShade::InputNode::InputNode(a1, off_287261168, a2, a3, a4, a5);
  *a1 = &unk_287261078;
  *(a1 + 88) = &unk_287261140;
  *(a1 + 56) = &unk_28725E328;
  *(a1 + 72) = 0;
  PCSharedCount::PCSharedCount((a1 + 80));
  v6 = *(a1 + 32);
  *(a1 + 40) = 1;
  if (!v6 || !*(v6 - 8))
  {
    LiString::LiString(&v17, "_u");
    LiString::format(*(a1 + 48), &v16);
    v7 = v17;
    if (v17)
    {
      v8 = *(v17 - 2);
    }

    else
    {
      v8 = 0;
    }

    v9 = v16;
    if (v16)
    {
      v10 = *(v16 - 2);
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 + v8;
    v12 = malloc_type_malloc(v11 + 13, 0x10000403E1C8BA9uLL);
    v12[1] = v11;
    v12[2] = v11 + 1;
    atomic_store(1u, v12);
    atomic_store(0, v12);
    memcpy(v12 + 3, v7, v8);
    memcpy(v12 + v8 + 12, v9, v10);
    *(v12 + v11 + 12) = 0;
    atomic_fetch_add(v12, 1u);
    LiString::dec((a1 + 32));
    *(a1 + 32) = v12 + 3;
    atomic_fetch_add(v12, 1u);
    if (atomic_fetch_add(v12, 0xFFFFFFFF) == 1)
    {
      free(v12);
    }

    if (v16 && atomic_fetch_add(v16 - 3, 0xFFFFFFFF) == 1)
    {
      *v16 = 0;
      if (v16)
      {
        v13 = v16 - 12;
      }

      else
      {
        v13 = 0;
      }

      free(v13);
    }

    if (v17 && atomic_fetch_add(v17 - 3, 0xFFFFFFFF) == 1)
    {
      *v17 = 0;
      if (v17)
      {
        v14 = v17 - 12;
      }

      else
      {
        v14 = 0;
      }

      free(v14);
    }
  }

  return a1;
}

void sub_25FF7AAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, PC_Sp_counted_base **a11, uint64_t a12, atomic_uint *a13, atomic_uint *a14)
{
  if (atomic_fetch_add(v15, 0xFFFFFFFF) == 1)
  {
    free(v15);
  }

  if (a13 && atomic_fetch_add(a13 - 3, 0xFFFFFFFF) == 1)
  {
    *a13 = 0;
    free(a13 - 3);
  }

  if (a14)
  {
    if (atomic_fetch_add(a14 - 3, 0xFFFFFFFF) == 1)
    {
      *a14 = 0;
      free(a14 - 3);
    }
  }

  *a10 = a9;
  PCSharedCount::~PCSharedCount((v14 + 80));
  ProShade::InputNode::~InputNode(v14, off_287261168);
  *(v14 + 88) = a12;
  *(v14 + 104) = 0;
  PCWeakCount::~PCWeakCount(a11);
  _Unwind_Resume(a1);
}

void *ProShade::UniformNode::description@<X0>(ProShade::UniformNode *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 4);
  if (v3)
  {
    v4 = *(v3 - 2);
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v4 + 8;
  v7 = v4 + 9;
  v8 = malloc_type_malloc(v4 + 21, 0x10000403E1C8BA9uLL);
  *(v8 + 1) = v6;
  *(v8 + 2) = v7;
  atomic_store(1u, v8);
  atomic_store(0, v8);
  *(v8 + 12) = 0x206D726F66696E75;
  result = memcpy(v8 + 20, v3, v5);
  v8[v6 + 12] = 0;
  *a2 = v8 + 12;
  atomic_fetch_add(v8, 1u);
  return result;
}

int8x8_t *ProShade::UniformNode::computeHash(ProShade::UniformNode *this, int8x8_t *a2)
{
  PCHashWriteStream::writeValue(a2, "UniformNode");
  v4 = *(this + 4);
  if (v4)
  {
    v5 = *(v4 - 2);
  }

  else
  {
    v5 = 0;
    v4 = "";
  }

  return PCHashWriteStream::writeData(a2, v4, v5);
}

void ProShade::UniformNode::~UniformNode(PCSharedCount *this)
{
  this->var0 = &unk_287261078;
  this[11].var0 = &unk_287261140;
  this[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 10);
  ProShade::InputNode::~InputNode(this, off_287261168);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);
}

{
  this->var0 = &unk_287261078;
  this[11].var0 = &unk_287261140;
  this[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(this + 10);
  ProShade::InputNode::~InputNode(this, off_287261168);
  this[11].var0 = &unk_2872DEA38;
  LOBYTE(this[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&this[12].var0);

  JUMPOUT(0x2666E9F00);
}

void ProShade::UniformNode::sourceNode(ProShade::UniformNode *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = &unk_28725E328;
  *(a2 + 8) = *(this + 64);
  *(a2 + 16) = *(this + 9);
  PCSharedCount::PCSharedCount((a2 + 24), this + 10);
}

void virtual thunk toProShade::UniformNode::~UniformNode(ProShade::UniformNode *this)
{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287261078;
  v1[11].var0 = &unk_287261140;
  v1[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 10);
  ProShade::InputNode::~InputNode(v1, off_287261168);
  v1[11].var0 = &unk_2872DEA38;
  LOBYTE(v1[13].var0) = 0;

  PCWeakCount::~PCWeakCount(&v1[12].var0);
}

{
  v1 = (this + *(*this - 24));
  v1->var0 = &unk_287261078;
  v1[11].var0 = &unk_287261140;
  v1[7].var0 = &unk_28725E328;
  PCSharedCount::~PCSharedCount(v1 + 10);
  ProShade::InputNode::~InputNode(v1, off_287261168);
  v1[11].var0 = &unk_2872DEA38;
  LOBYTE(v1[13].var0) = 0;
  PCWeakCount::~PCWeakCount(&v1[12].var0);

  JUMPOUT(0x2666E9F00);
}

void LiGeode::LiGeode(LiGeode *this, LiImageSource *a2)
{
  *(this + 92) = &unk_2872DEA38;
  *(this + 93) = 0;
  *(this + 752) = 1;
  LiSceneObject::LiSceneObject(this, &off_287261690);
  *this = &unk_287261530;
  *(this + 92) = &unk_287261670;
  *(this + 71) = 0;
  PCSharedCount::PCSharedCount(this + 72);
  *(this + 584) = 0;
  *(this + 74) = a2;
  if (a2)
  {
    v4 = (a2 + *(*a2 - 24));
  }

  else
  {
    v4 = 0;
  }

  PCSharedCount::PCSharedCount(this + 75, v4);
  LiImageFilterChain::LiImageFilterChain((this + 608));
  __asm { FMOV            V1.2D, #-1.0 }

  *(this + 44) = 0u;
  *(this + 45) = _Q1;
  if (!(*(*a2 + 80))(a2))
  {
    (*(*a2 + 88))(a2, 1);
  }

  *(this + 86) = 0;
  *(this + 81) = 0;
  *(this + 83) = 0;
  *(this + 82) = 0;
  *(this + 84) = 0x3FFCCCCCCCCCCCCDLL;
  *(this + 174) = 16843009;
  *(this + 175) = 2;
}

void sub_25FF7B2DC(_Unwind_Exception *a1)
{
  PCSharedCount::~PCSharedCount((v1 + 600));
  PCSharedCount::~PCSharedCount((v1 + 576));
  LiSceneObject::~LiSceneObject(v1, &off_287261690);
  *(v1 + 736) = v2;
  *(v1 + 752) = 0;
  PCWeakCount::~PCWeakCount((v1 + 744));
  _Unwind_Resume(a1);
}

void LiGeode::~LiGeode(PCSharedCount *this, PCSharedCount *a2)
{
  var0 = a2->var0;
  this->var0 = a2->var0;
  *(this + *(var0 - 3)) = a2[5];
  v5 = this + 78;
  this[78].var0 = &unk_2871F2660;
  if (SLODWORD(this[79].var0) < 0)
  {
    v6 = 1;
  }

  else
  {
    v6 = this[79].var0;
  }

  PCArray<PCPtr<LiImageFilter>,PCArray_Traits<PCPtr<LiImageFilter>>>::resize(v5, 0, v6);
  v7 = this[80].var0;
  if (v7)
  {
    MEMORY[0x2666E9ED0](v7, 0x1000C8077774924);
  }

  this[80].var0 = 0;
  LODWORD(this[79].var0) = 0;
  PCSharedCount::~PCSharedCount(this + 77);
  PCSharedCount::~PCSharedCount(this + 75);
  PCSharedCount::~PCSharedCount(this + 72);

  LiSceneObject::~LiSceneObject(this, &a2[1].var0);
}

void LiGeode::~LiGeode(PCSharedCount *this)
{
  *(v1 + 736) = &unk_2872DEA38;
  *(v1 + 752) = 0;
  PCWeakCount::~PCWeakCount((v1 + 744));
}

{
  *(v1 + 736) = &unk_2872DEA38;
  *(v1 + 752) = 0;
  PCWeakCount::~PCWeakCount((v1 + 744));

  JUMPOUT(0x2666E9F00);
}

void virtual thunk toLiGeode::~LiGeode(LiGeode *this)
{
  *(v1 + 736) = &unk_2872DEA38;
  *(v1 + 752) = 0;
  v2 = (v1 + 744);

  PCWeakCount::~PCWeakCount(v2);
}

{
  LiGeode::~LiGeode((this + *(*this - 24)));
}

void LiGeode::position()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "subclass must implement");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiGeode.cpp");
  PCException::PCException(exception, &v2, &v1, 52);
  *exception = &unk_2871F6178;
}

void sub_25FF7B678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t LiGeode::plane@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 541);
  v3 = 1.0;
  if (*(this + 541))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = 1.0;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (!v2)
  {
    v3 = 0.0;
  }

  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  return this;
}

void LiGeode::normal(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0x3FF0000000000000;
}

void LiGeode::cast()
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v2, "not implemented yet");
  PCString::PCString(&v1, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiGeode.cpp");
  PCException::PCException(exception, &v2, &v1, 70);
  *exception = &unk_2871F6178;
}

void sub_25FF7B78C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void LiGeode::texture(const PCSharedCount *this@<X0>, const void **a2@<X1>, PCSharedCount *a3@<X8>)
{
  if (!*a2 || strcmp(*a2, "color"))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    operator+("no such texture: ", a2, &v8);
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = "";
    }

    PCString::PCString(&v9, v7);
    PCException::PCException(exception, &v9);
    *exception = &unk_2872DE188;
  }

  a3->var0 = this[74].var0;

  PCSharedCount::PCSharedCount(a3 + 1, this + 75);
}

void sub_25FF7B8CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, PCString a10)
{
  PCString::~PCString(&a10);
  if (a9 && atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
  {
    *a9 = 0;
    free(a9 - 3);
    if ((v11 & 1) == 0)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_7;
  }

  __cxa_free_exception(v10);
  goto LABEL_7;
}

void *operator+@<X0>(_BYTE *a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    v5 = 0;
      ;
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v7 = *a2;
  if (*a2)
  {
    v8 = *(v7 - 2);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  v10 = v8 + v5;
  v11 = malloc_type_malloc(v10 + 13, 0x10000403E1C8BA9uLL);
  v11[1] = v10;
  v11[2] = v10 + 1;
  atomic_store(1u, v11);
  atomic_store(0, v11);
  memcpy(v11 + 3, a1, v5);
  result = memcpy(v11 + v5 + 12, v7, v9);
  *(v11 + v10 + 12) = 0;
  *a3 = v11 + 3;
  atomic_fetch_add(v11, 1u);
  return result;
}

uint64_t LiGeode::setTexture(LiGeode *this, const void **a2, LiImageSource *a3)
{
  if (!(*(*a3 + 80))(a3))
  {
    (*(*a3 + 88))(a3, 1);
  }

  if (!*a2 || strcmp(*a2, "color"))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    operator+("no such texture: ", a2, &v10);
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = "";
    }

    PCString::PCString(&v11, v9);
    PCException::PCException(exception, &v11);
    *exception = &unk_2872DE188;
  }

  v6 = *(*this + 176);

  return v6(this, a3);
}

void sub_25FF7BBB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, atomic_uint *a9, PCString a10)
{
  PCString::~PCString(&a10);
  if (a9 && atomic_fetch_add(a9 - 3, 0xFFFFFFFF) == 1)
  {
    *a9 = 0;
    free(a9 - 3);
    if ((v11 & 1) == 0)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!v11)
  {
    goto LABEL_7;
  }

  __cxa_free_exception(v10);
  goto LABEL_7;
}

uint64_t LiGeode::localBoundingBox(uint64_t a1, uint64_t a2)
{
  v24 = 0;
  v25 = 0;
  v23 = &unk_287261818;
  v3 = (*(*a1 + 136))(a1, &v23);
  *(a2 + 16) = xmmword_2603429E0;
  *(a2 + 32) = xmmword_2603429E0;
  *a2 = xmmword_2603429E0;
  v4 = HIDWORD(v24);
  if (SHIDWORD(v24) >= 1)
  {
    v5 = 0;
    v6 = 1.0;
    *&v7 = -1.0;
    v8 = 16;
    do
    {
      if (v5 >= SHIDWORD(v24))
      {
        PCArray_base::badIndex(v3);
      }

      v9 = v25;
      v10 = v25 + v8;
      if (v6 <= *&v7 && (v12 = *(a2 + 16), v11 = *(a2 + 24), v12 <= v11) && (v14 = *(a2 + 32), v13 = *(a2 + 40), v14 <= v13))
      {
        v18 = *(v10 - 16);
        if (v6 >= v18)
        {
          v6 = *(v10 - 16);
        }

        if (*&v7 <= v18)
        {
          *&v7 = *(v10 - 16);
        }

        v19 = v25 + v8;
        v20 = *(v25 + v8 - 8);
        v21 = *(v25 + v8);
        if (v12 >= v20)
        {
          v12 = *(v19 - 8);
        }

        if (v11 <= v20)
        {
          v11 = *(v19 - 8);
        }

        *a2 = v6;
        *(a2 + 8) = v7;
        *(a2 + 16) = v12;
        *(a2 + 24) = v11;
        if (v14 >= v21)
        {
          v14 = v21;
        }

        if (v13 <= v21)
        {
          v13 = v21;
        }

        *(a2 + 32) = v14;
        *(a2 + 40) = v13;
      }

      else
      {
        v7 = *(v10 - 16);
        v15 = v7;
        v16 = a2;
        vst2q_f64(v16, *&v7);
        v16 += 4;
        v17 = *(v9 + v8);
        *(a2 + 40) = v17;
        *v16 = v17;
        v6 = *&v7;
      }

      ++v5;
      v8 += 24;
    }

    while (v4 != v5);
  }

  return PCArray<PCVector3<double>,PCArray_Traits<PCVector3<double>>>::~PCArray(&v23);
}

void sub_25FF7BDE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCArray<PCVector3<double>,PCArray_Traits<PCVector3<double>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

uint64_t PCArray<PCVector3<double>,PCArray_Traits<PCVector3<double>>>::~PCArray(uint64_t a1)
{
  *a1 = &unk_287261818;
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
      v5 = 24 * v4;
      do
      {
        v6 = (*(a1 + 16) + v5);
        *v6 = 0;
        v6[1] = 0;
        v6[2] = 0;
        v5 += 24;
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

uint64_t LiGeode::boundingBox(uint64_t a1, double *a2, double *a3)
{
  v22 = 0;
  v23 = 0;
  v21 = &unk_287261818;
  v5 = (*(*a1 + 136))(a1, &v21);
  *(a2 + 1) = xmmword_2603429E0;
  *(a2 + 2) = xmmword_2603429E0;
  *a2 = xmmword_2603429E0;
  v6 = HIDWORD(v22);
  if (SHIDWORD(v22) >= 1)
  {
    v7 = 0;
    v8 = 16;
    do
    {
      if (v7 >= SHIDWORD(v22))
      {
        PCArray_base::badIndex(v5);
      }

      v19 = *(v23 + v8 - 16);
      v20 = *(v23 + v8);
      v5 = PCMatrix44Tmpl<double>::transform<double>(a3, v19.f64, v19.f64);
      v10 = *a2;
      v9 = a2[1];
      if (*a2 <= v9 && (v12 = a2[2], v11 = a2[3], v12 <= v11) && (v14 = a2[4], v13 = a2[5], v14 <= v13))
      {
        v16 = v19.f64[1];
        if (v10 >= v19.f64[0])
        {
          v10 = v19.f64[0];
        }

        if (v9 <= v19.f64[0])
        {
          v9 = v19.f64[0];
        }

        *a2 = v10;
        a2[1] = v9;
        if (v12 >= v16)
        {
          v17 = v16;
        }

        else
        {
          v17 = v12;
        }

        if (v11 <= v16)
        {
          v11 = v16;
        }

        a2[2] = v17;
        a2[3] = v11;
        if (v14 >= v20)
        {
          v14 = v20;
        }

        if (v13 <= v20)
        {
          v13 = v20;
        }

        a2[4] = v14;
        a2[5] = v13;
      }

      else
      {
        v24.val[0] = v19;
        v24.val[1] = v19;
        v15 = a2;
        vst2q_f64(v15, v24);
        v15 += 4;
        v24.val[0].f64[0] = v20;
        a2[5] = v20;
        *v15 = v24.val[0].f64[0];
      }

      ++v7;
      v8 += 24;
    }

    while (v6 != v7);
  }

  return PCArray<PCVector3<double>,PCArray_Traits<PCVector3<double>>>::~PCArray(&v21);
}

void sub_25FF7C09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCArray<PCVector3<double>,PCArray_Traits<PCVector3<double>>>::~PCArray(va);
  _Unwind_Resume(a1);
}

void *LiGeode::print(uint64_t a1, void *a2, uint64_t a3)
{
  LiImageSource::printIndent(a2, a3);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "LiGeode(", 9);
  if (*(a1 + 512))
  {
    v7 = *(a1 + 512);
  }

  else
  {
    v7 = "";
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "", 1);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
  v10 = *(a1 + 592);
  if (!v10)
  {
    throw_PCNullPointerException(1);
  }

  (*(*v10 + 120))(&v33);
  if (v33.__locale_)
  {
    locale = v33.__locale_;
  }

  else
  {
    locale = "";
  }

  v12 = strlen(locale);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, locale, v12);
  if (v33.__locale_ && atomic_fetch_add(v33.__locale_ - 3, 0xFFFFFFFF) == 1)
  {
    *v33.__locale_ = 0;
    if (v33.__locale_)
    {
      v13 = v33.__locale_ - 12;
    }

    else
    {
      v13 = 0;
    }

    free(v13);
  }

  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", compositeOrder=", 17);
  MEMORY[0x2666E9B50](v14, *(a1 + 528));
  if (*(a1 + 532) || *(a1 + 536))
  {
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B50](v15, *(a1 + 532));
    if (*(a1 + 540) == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "(r)", 3);
    }
  }

  if (*(a1 + 536))
  {
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "/", 1);
    MEMORY[0x2666E9B50](v16, *(a1 + 536));
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", blendMode=", 12);
  v18 = LiSceneObject::blendMode(a1);
  operator<<(v17, v18);
  if (*(a1 + 541) == 1)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", farAway=true", 14);
  }

  if (*(a1 + 648) > 0.0)
  {
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", reflectivity=", 15);
    MEMORY[0x2666E9B30](v19, *(a1 + 648));
  }

  if ((*(a1 + 552) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", doesReflect=false", 19);
  }

  if ((*(a1 + 553) & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", visibleOutsideReflection=false", 32);
  }

  if (*(a1 + 544) != 1.0)
  {
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", opacity=", 10);
    MEMORY[0x2666E9B30](v20, *(a1 + 544));
  }

  if (*(a1 + 700) <= 1)
  {
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", filterIntersections=", 22);
    MEMORY[0x2666E9B50](v21, *(a1 + 700));
  }

  if (*(a1 + 568))
  {
    LightFilter = LiGeode::getLightFilter(a1);
    if (LightFilter[172] == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ignoreAlpha", 13);
    }

    if (LightFilter[173] == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", castsShadows", 14);
    }

    if (LightFilter[174] == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", receivesShadows", 17);
    }

    if (LightFilter[176] == 1)
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", filterCastShadows", 19);
    }
  }

  if (*(a1 + 636))
  {
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ", ", 2);
    v24 = MEMORY[0x2666E9B50](v23, *(a1 + 636));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " filters", 8);
  }

  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ")", 1);
  std::ios_base::getloc((v25 + *(*v25 - 24)));
  v26 = std::locale::use_facet(&v33, MEMORY[0x277D82680]);
  (v26->__vftable[2].~facet_0)(v26, 10);
  std::locale::~locale(&v33);
  std::ostream::put();
  std::ostream::flush();
  (*(*a1 + 120))(a1, a2, a3);
  v27 = *(a1 + 592);
  if (!v27)
  {
    throw_PCNullPointerException(1);
  }

  result = (*(*v27 + 128))(v27, a2, (a3 + 1));
  v29 = *(a1 + 636);
  if (v29 >= 1)
  {
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "(Filters: ", 10);
    for (i = 0; i != v29; ++i)
    {
      if (i >= *(a1 + 636))
      {
        PCArray_base::badIndex(v30);
      }

      v32 = *(*(a1 + 640) + 16 * i);
      v30 = (*(*v32 + 128))(v32, a2, (a3 + 1));
    }

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, ")\n", 2);
  }

  return result;
}

void sub_25FF7C5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  if (a10.__locale_)
  {
    LiGeode::print(a10.__locale_, &a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiGeode::getLightFilter(LiGeode *this)
{
  result = *(this + 71);
  if (!result)
  {
    operator new();
  }

  return result;
}

{
  result = *(this + 71);
  if (!result)
  {
    operator new();
  }

  return result;
}

void LiGeode::setLighting(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(a1 + 584) = a2;
  LightFilter = LiGeode::getLightFilter(a1);
  v15 = *(a4 + 112);
  v39 = *(a4 + 96);
  v40 = v15;
  v16 = *(a4 + 144);
  v41 = *(a4 + 128);
  v42 = v16;
  v17 = *(a4 + 48);
  v38[2] = *(a4 + 32);
  v38[3] = v17;
  v18 = *(a4 + 80);
  v38[4] = *(a4 + 64);
  v38[5] = v18;
  v19 = *(a4 + 16);
  v38[0] = *a4;
  v38[1] = v19;
  LiPolygon::LiPolygon(&v43, (a4 + 160));
  v20 = *(a4 + 376);
  v50 = *(a4 + 360);
  v51 = v20;
  v21 = *(a4 + 312);
  v46 = *(a4 + 296);
  v47 = v21;
  v22 = *(a4 + 344);
  v48 = *(a4 + 328);
  v49 = v22;
  v23 = *(a4 + 280);
  v44 = *(a4 + 264);
  v45 = v23;
  v24 = *(a4 + 392);
  BYTE2(v39) = a2;
  v25 = *(a1 + 520);
  v26 = *(a3 + 12);
  if (*(LightFilter + 48) < v26)
  {
    v27 = 2 * v26 + 1;
  }

  else
  {
    v27 = *(LightFilter + 48);
  }

  v52 = v24;
  *&v44 = v25;
  PCArray<LiLight,PCArray_Traits<LiLight>>::resize(LightFilter + 40, v26, v27);
  if (*(a3 + 12) >= 1)
  {
    v28 = 0;
    v29 = 0;
    do
    {
      LiLight::operator=(*(LightFilter + 56) + v28, *(a3 + 16) + v28);
      ++v29;
      v28 += 944;
    }

    while (v29 < *(a3 + 12));
  }

  *(LightFilter + 64) = *(a3 + 24);
  LiMaterialProperties::operator=(LightFilter + 72, v38);
  if (LightFilter + 472 != a5)
  {
    v30 = 0;
    v31 = LightFilter + 472;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v31 + i) = *(a5 + i);
      }

      ++v30;
      v31 += 32;
      a5 += 32;
    }

    while (v30 != 4);
  }

  if (fabs(PCMatrix44Tmpl<double>::determinant(LightFilter + 472)) < 0.0000001)
  {
    v53 = 0;
    v54 = 0;
    v55 = xmmword_2603426F0;
    liFindMatrixPlane((LightFilter + 472), &v53);
    v33 = v54;
    *(LightFilter + 488) = v53;
    *(LightFilter + 520) = v33;
    v34 = *(&v55 + 1);
    *(LightFilter + 552) = v55;
    *(LightFilter + 584) = v34;
  }

  *(LightFilter + 856) = a6;
  v35 = LightFilter + 728;
  if (LightFilter + 728 != a7)
  {
    for (j = 0; j != 4; ++j)
    {
      for (k = 0; k != 32; k += 8)
      {
        *(v35 + k) = *(a7 + k);
      }

      v35 += 32;
      a7 += 32;
    }
  }

  LiMaterialProperties::~LiMaterialProperties(v38);
}

uint64_t LiGeode::needsLights(LiGeode *this)
{
  if (*(this + 584))
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    v1 = *(this + 71);
    if (v1)
    {
      LOBYTE(v1) = *(LiGeode::getLightFilter(this) + 174);
    }
  }

  return v1 & 1;
}

uint64_t LiMaterialProperties::operator=(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  LiPolygon::operator=(a1 + 160, a2 + 160);
  *(a1 + 264) = *(a2 + 264);
  if (a2 != a1)
  {
    v11 = 0;
    v12 = a1 + 272;
    v13 = a2 + 272;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v12 + i) = *(v13 + i);
      }

      ++v11;
      v12 += 32;
      v13 += 32;
    }

    while (v11 != 4);
  }

  return a1;
}

void PCArray<PCVector3<double>,PCArray_Traits<PCVector3<double>>>::~PCArray(uint64_t a1)
{
  PCArray<PCVector3<double>,PCArray_Traits<PCVector3<double>>>::~PCArray(a1);

  JUMPOUT(0x2666E9F00);
}

void LiGeode::print(uint64_t a1, _BYTE **a2)
{
  if (atomic_fetch_add((a1 - 12), 0xFFFFFFFF) == 1)
  {
    **a2 = 0;
    if (*a2)
    {
      v2 = *a2 - 12;
    }

    else
    {
      v2 = 0;
    }

    free(v2);
  }
}

BOOL liIsConvex(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  if ((v2 >> 4) < 1)
  {
    v8 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = (v2 >> 4) & 0x7FFFFFFF;
    v8 = 0.0;
    do
    {
      v9 = v4 + 1;
      v10 = (v4 + 1);
      if (v7 - 1 == v4)
      {
        v10 = 0;
      }

      v11 = *(v1 + 16 * v10);
      v12 = vsubq_f64(*(v1 + 16 * ((v4 + 2) % v3)), v11);
      v13 = vsubq_f64(v11, *(v1 + 16 * v4));
      v14 = vextq_s8(v12, v12, 8uLL);
      v15 = vmulq_f64(v13, v14);
      v16 = vmulq_laneq_f64(v14, v13, 1);
      v14.f64[0] = v13.f64[0];
      v17 = vzip2q_s64(v13, v12);
      v18 = vaddq_f64(vmulq_f64(v14, v14), vmulq_f64(v17, v17));
      v17.f64[0] = sqrt(vmulq_laneq_f64(v18, v18, 1).f64[0]);
      v18.f64[0] = vsubq_f64(v15, vdupq_laneq_s64(v15, 1)).f64[0] / v17.f64[0];
      v5 |= v18.f64[0] > 0.0;
      v6 |= v18.f64[0] < 0.0;
      v8 = v8 + atan2(v18.f64[0], vaddq_f64(vmulq_f64(v13, v12), v16).f64[0] / v17.f64[0]);
      v4 = v9;
    }

    while (v7 != v9);
    if (v5 & v6)
    {
      return 0;
    }
  }

  v20 = llround(v8 / 6.28318531);
  if (vabdd_f64(v8, v20 * 6.28318531) >= 0.01)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v23, "fabs(omega - wind*M_2PI) < 0.01");
    PCString::PCString(&v22, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiGeometryUtil.cpp");
    PCException::PCException(exception, &v23, &v22, 78);
    *exception = &unk_287261868;
  }

  if (v20 < 0)
  {
    v20 = -v20;
  }

  return v20 == 1;
}

void sub_25FF7CCC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

double elim<LiPolygon::PosFacet,LiChannelT<PCVector2<double>>>(double ***a1, void *a2, int a3)
{
  v6 = (*a1)[1] - **a1;
  std::vector<PCVector2<double>>::resize(a2, (v6 >> 5));
  if ((v6 >> 5) >= 1)
  {
    v8 = **a1;
    v9 = (v6 >> 5) & 0x7FFFFFFF;
    v10 = (*a2 + 8);
    do
    {
      v11 = v8 + 1;
      if (a3 > 0)
      {
        v11 = v8;
      }

      if (a3 <= 1)
      {
        v12 = 2;
      }

      else
      {
        v12 = 1;
      }

      result = v8[v12];
      *(v10 - 1) = *v11;
      *v10 = result;
      v10 += 2;
      v8 += 4;
      --v9;
    }

    while (v9);
  }

  return result;
}

BOOL PCRect<double>::intersects(double *a1, double *a2)
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
      v8 = *a1;
      v9 = v6 + *a2;
      if (v2 + *a1 >= *a2)
      {
        v11 = v8 == v9;
        v10 = v8 >= v9;
      }

      else
      {
        v10 = 1;
        v11 = 0;
      }

      if (v11 || !v10)
      {
        v12 = a1[1];
        v13 = a2[1];
        if (v12 <= v13 + v7)
        {
          return v12 + v3 >= v13;
        }
      }

      return 0;
    }
  }

  return v4;
}

uint64_t polygonPlaneSplit<double>(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, std::vector<int> *a5, std::vector<int> *a6, int a7, int *a8, double a9)
{
  v16 = (*a1)[1] - **a1;
  memset(&v72, 0, sizeof(v72));
  std::vector<unsigned int>::resize(&v72, (v16 >> 5));
  v17 = v16 >> 5;
  if ((v16 >> 5) < 1)
  {
    v26 = -1;
LABEL_24:
    v33 = 1;
    v34 = 2;
    goto LABEL_26;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *a2;
  v22 = *(a2 + 8);
  v23 = *(a2 + 24);
  begin = v72.__begin_;
  v25 = (**a1 + 8);
  v26 = -1;
  do
  {
    v27 = v25[-1].f64[1] * v21;
    v28 = *v25;
    v25 += 2;
    v29 = vmulq_f64(v28, v22);
    v30 = v23 + v27 + v29.f64[0] + v29.f64[1];
    if (v30 >= -1.0e-11)
    {
      v31 = 0;
    }

    else
    {
      v31 = -1;
    }

    if (v30 > 1.0e-11)
    {
      v31 = 1;
    }

    begin[v18] = v31;
    if (v31 == 1)
    {
      v32 = 1;
    }

    else
    {
      v32 = v19;
    }

    if (v31 == -1)
    {
      v20 = 1;
    }

    else
    {
      v19 = v32;
    }

    if (v31)
    {
      v26 = v18;
    }

    ++v18;
  }

  while (((v16 >> 5) & 0x7FFFFFFF) != v18);
  if ((v20 & 1) == 0)
  {
    if (v19)
    {
      v33 = 0;
      v34 = -1;
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  if ((v19 & 1) == 0)
  {
    v33 = 0;
    v34 = 1;
LABEL_26:
    *a8 = v34;
    if (a7)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_28;
      }

      if ((v33 & 1) == 0)
      {
        goto LABEL_79;
      }

      std::vector<unsigned int>::resize(a5, 0);
      std::vector<unsigned int>::resize(a6, 0);
    }

LABEL_69:
    v61 = 0;
    goto LABEL_70;
  }

  *a8 = 3;
  if (v26 < 0)
  {
LABEL_79:
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&__p, "sideof == kLiCoplanar");
    PCString::PCString(&v71, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiGeometryUtil.cpp");
    PCException::PCException(exception, &__p, &v71, 580);
    *exception = &unk_287261868;
  }

LABEL_28:
  v64 = a8;
  v35 = v17 - 1;
  if (v17 >= 1)
  {
    v36 = v72.__begin_[v26];
    v37 = (v26 + v17) % v17;
    if (v72.__begin_[v37] == v36)
    {
      v38 = v35 + v26;
      v39 = v17 - 1;
      do
      {
        v40 = v37;
        if (!v39)
        {
          break;
        }

        v37 = v38 % v17;
        --v38;
        --v39;
      }

      while (v72.__begin_[v37] == v36);
    }

    else
    {
      v40 = 0;
    }

    v41 = 0;
    v42 = v16 >> 5;
    while (1)
    {
      LODWORD(__p) = v40 % v17;
      LODWORD(v71.var0) = (v35 + v40 % v17) % v17;
      v43 = v72.__begin_[v40 % v17];
      if (v41 && v43 == v41)
      {
        goto LABEL_60;
      }

      if (v43)
      {
        break;
      }

      v41 = 0;
LABEL_64:
      ++v40;
      LODWORD(v42) = v42 - 1;
      if (!v42)
      {
        goto LABEL_65;
      }
    }

    v44 = v72.__begin_[(v35 + v40 % v17) % v17];
    if (v44)
    {
      if (v44 != v43)
      {
        if (v43 >= 0)
        {
          p_begin = &a6->__begin_;
        }

        else
        {
          p_begin = &a5->__begin_;
        }

        if (v43 >= 0)
        {
          v46 = -2;
        }

        else
        {
          v46 = -1;
        }

        v70 = v46;
        LiChannelT<int>::append(p_begin, &v70);
        v47 = **a1;
        v48 = v47 + 32 * __p;
        v49 = v47 + 32 * SLODWORD(v71.var0);
        v50 = *(v48 + 16);
        v51 = *(v49 + 16) - v50;
        v52 = a4;
        if (v43 < 0)
        {
          v52 = a3;
        }

        v53.f64[0] = *(v48 + 16);
        v53.f64[1] = *(v49 + 16);
        v54 = vaddq_f64(vdupq_lane_s64(*(a2 + 24), 0), vaddq_f64(vaddq_f64(vmulq_n_f64(vzip1q_s64(*v48, *v49), *a2), vmulq_n_f64(vzip2q_s64(*v48, *v49), *(a2 + 8))), vmulq_n_f64(v53, *(a2 + 16))));
        v54.f64[0] = vdivq_f64(v54, vsubq_f64(v54, vdupq_laneq_s64(v54, 1))).f64[0];
        *v52 = vaddq_f64(*v48, vmulq_n_f64(vsubq_f64(*v49, *v48), v54.f64[0]));
        v52[1].f64[0] = v50 + v51 * v54.f64[0];
      }
    }

    else
    {
      if (v43 >= 0)
      {
        v55 = &a6->__begin_;
      }

      else
      {
        v55 = &a5->__begin_;
      }

      LiChannelT<int>::append(v55, &v71);
      v56 = **a1 + 32 * SLODWORD(v71.var0);
      v57 = a4;
      if (v43 < 0)
      {
        v57 = a3;
      }

      v58 = *(v56 + 16);
      *v57 = *v56;
      *(v57 + 16) = v58;
    }

    v41 = v43;
LABEL_60:
    if (v41 >= 0)
    {
      v59 = &a6->__begin_;
    }

    else
    {
      v59 = &a5->__begin_;
    }

    LiChannelT<int>::append(v59, &__p);
    goto LABEL_64;
  }

LABEL_65:
  if (((a6->__end_ - a6->__begin_) & 0x3FFFFFFFCLL) == 0 || ((a5->__end_ - a5->__begin_) & 0x3FFFFFFFCLL) == 0)
  {
    goto LABEL_69;
  }

  LiChannelT<int>::append(&a5->__begin_, a6->__begin_);
  LiChannelT<int>::append(&a6->__begin_, a5->__begin_);
  __p = 0;
  v68 = 0;
  v69 = 0;
  std::vector<PCVector3<double>>::push_back[abi:ne200100](&__p, a3);
  std::vector<PCVector3<double>>::push_back[abi:ne200100](&__p, a4);
  removeDuplicatePoints<PCVector3<double>>(a5, a1, &__p, a9);
  removeDuplicatePoints<PCVector3<double>>(a6, a1, &__p, a9);
  if (((a5->__end_ - a5->__begin_) >> 2) <= 2)
  {
    std::vector<unsigned int>::resize(a5, 0);
    v60 = -1;
LABEL_75:
    v61 = 0;
    *v64 = v60;
    goto LABEL_77;
  }

  if (((a6->__end_ - a6->__begin_) >> 2) <= 2)
  {
    std::vector<unsigned int>::resize(a6, 0);
    v60 = 1;
    goto LABEL_75;
  }

  v61 = 1;
LABEL_77:
  if (__p)
  {
    v68 = __p;
    operator delete(__p);
  }

LABEL_70:
  if (v72.__begin_)
  {
    v72.__end_ = v72.__begin_;
    operator delete(v72.__begin_);
  }

  return v61;
}

void sub_25FF7D338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, PCString a13, uint64_t a14, uint64_t a15, uint64_t a16, PCString a17, void *__p, uint64_t a19)
{
  PCString::~PCString(&a17);
  PCString::~PCString(&a13);
  if (v20)
  {
    __cxa_free_exception(v19);
  }

  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL liPolygonPlaneClip(uint64_t **a1, void **a2, uint64_t a3, int a4)
{
  memset(v35, 0, sizeof(v35));
  memset(v34, 0, sizeof(v34));
  memset(&v33, 0, sizeof(v33));
  memset(&v32, 0, sizeof(v32));
  polygonPlaneSplit<double>(a1, a3, v35, v34, &v32, &v33, 1, &v31, 0.1);
  v7 = (v32.__end_ - v32.__begin_) & 0x3FFFFFFFCLL;
  if (v7)
  {
    v8 = v33.__end_ - v33.__begin_;
    v9 = (v33.__end_ - v33.__begin_) >> 2;
    if (v9)
    {
      __p = 0;
      v29 = 0;
      v30 = 0;
      memset(&v27, 0, sizeof(v27));
      std::vector<PCVector3<double>>::resize(&__p, (v8 >> 2));
      std::vector<unsigned int>::resize(&v27, (v8 >> 2));
      if (v9 >= 1)
      {
        v10 = 0;
        v11 = 0;
        v12 = ((*a2)[1] - **a2) >> 5;
        v13 = (v8 >> 2) & 0x7FFFFFFF;
        while (1)
        {
          LODWORD(v14) = v33.__begin_[v11];
          v15 = v11 + 1;
          v16 = (v11 + 1);
          if (v13 - 1 == v11)
          {
            v16 = 0;
          }

          v17 = v33.__begin_[v16];
          if (v14 == -2)
          {
            break;
          }

          if (v14 == -1)
          {
            v18 = v35;
LABEL_11:
            v19 = __p + v10;
            v20 = *v18;
            *(v19 + 2) = v18[2];
            *v19 = v20;
            goto LABEL_12;
          }

          v14 = v14;
          v22 = **a1 + 32 * v14;
          v23 = __p + v10;
          v24 = *v22;
          *(v23 + 2) = *(v22 + 16);
          *v23 = v24;
          if ((v14 & 0x80000000) == 0)
          {
            goto LABEL_15;
          }

LABEL_12:
          v21 = a4;
          if ((v17 & 0x80000000) == 0)
          {
            v14 = (v12 - 1 + v17) % v12;
LABEL_15:
            v21 = *(**a2 + 32 * v14 + 24);
          }

          v27.__begin_[v11] = v21;
          v10 += 24;
          ++v11;
          if (v13 == v15)
          {
            goto LABEL_17;
          }
        }

        v18 = v34;
        goto LABEL_11;
      }

LABEL_17:
      copy<LiChannelT<PCVector3<double>>,LiPolygon::PosFacet>(&__p, a1);
      copy<LiChannelT<int>,LiImagePolygon::EdgeFacet>(&v27.__begin_, a2);
      if (v27.__begin_)
      {
        v27.__end_ = v27.__begin_;
        operator delete(v27.__begin_);
      }

      if (__p)
      {
        v29 = __p;
        operator delete(__p);
      }
    }

    else
    {
      std::vector<LiPolygon::PosEdge>::resize(*a1, 0);
      if ((((*a2)[1] - **a2) & 0x1FFFFFFFE0) != 0)
      {
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&__p, "edge.size() == 0");
        PCString::PCString(&v27, "/Library/Caches/com.apple.xbs/Sources/LithiumiOS/LiGeometryUtil.cpp");
        PCException::PCException(exception, &__p, &v27, 738);
        *exception = &unk_287261868;
      }
    }
  }

  if (v32.__begin_)
  {
    v32.__end_ = v32.__begin_;
    operator delete(v32.__begin_);
  }

  if (v33.__begin_)
  {
    v33.__end_ = v33.__begin_;
    operator delete(v33.__begin_);
  }

  return v7 != 0;
}

void sub_25FF7D690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, uint64_t a11, uint64_t a12, PCString a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a13);
  if (v22)
  {
    __cxa_free_exception(v21);
  }

  if (__p)
  {
    a18 = __p;
    operator delete(__p);
  }

  if (a20)
  {
    a21 = a20;
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void liPolygonDimensions(uint64_t a1, double *a2, double *a3, double *a4, double *a5)
{
  v38 = 0;
  v39 = 0;
  v40 = 0;
  elim<LiPolygon::PosFacet,LiChannelT<PCVector2<double>>>((a1 + 88), &v38, 2);
  v9 = v38;
  v10 = (v39 - v38) >> 4;
  if (v10 < 1)
  {
    goto LABEL_21;
  }

  v11 = 0;
  v12 = 0;
  v13 = ((v39 - v38) >> 4) & 0x7FFFFFFF;
  v14 = v13 - 1;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  do
  {
    v20 = *&v38[2 * v11++];
    v21 = v11;
    if (v11 == v13)
    {
      v21 = 0;
    }

    v22 = vsubq_f64(*&v38[2 * v21], v20);
    v23 = vaddvq_f64(vmulq_f64(v22, v22));
    if (fabs(v23) >= 0.0000001)
    {
      v24 = sqrt(v23);
      v25 = v22.f64[1] / v24;
      v22.f64[0] = -v22.f64[0] / v24;
      v26 = v22.f64[1] / v24 * *v38 + v22.f64[0] * v38[1];
      if (v10 == 1)
      {
        v27 = v26;
      }

      else
      {
        v28 = v13 - 1;
        v29 = v38 + 3;
        v27 = v26;
        do
        {
          v30 = v22.f64[0] * *v29;
          v31 = v25 * *(v29 - 1) + v30;
          if (v26 > v31)
          {
            v26 = v25 * *(v29 - 1) + v30;
          }

          if (v27 < v31)
          {
            v27 = v25 * *(v29 - 1) + v30;
          }

          v29 += 2;
          --v28;
        }

        while (v28);
      }

      if ((v12 & (v27 - v26 >= v15)) != 0)
      {
        v12 = 1;
      }

      else
      {
        v12 = 1;
        v19 = v22.f64[0];
        v18 = v25;
        v17 = v27;
        v16 = v26;
        v15 = v27 - v26;
      }
    }
  }

  while (v11 != v13);
  if (v12)
  {
    v32 = v18 * v38[1] - v19 * *v38;
    if (v10 == 1)
    {
      v33 = v18 * v38[1] - v19 * *v38;
    }

    else
    {
      v34 = v38 + 3;
      v33 = v18 * v38[1] - v19 * *v38;
      do
      {
        v35 = v18 * *v34;
        v36 = v35 - v19 * *(v34 - 1);
        if (v32 > v36)
        {
          v32 = v35 - v19 * *(v34 - 1);
        }

        if (v33 < v36)
        {
          v33 = v35 - v19 * *(v34 - 1);
        }

        v34 += 2;
        --v14;
      }

      while (v14);
    }

    *a5 = v15;
    *a4 = v33 - v32;
    *a3 = -v19;
    a3[1] = v18;
    v37 = v17 + v16;
    *a2 = (v18 * v37 - v19 * (v33 + v32)) * 0.5;
    a2[1] = (v19 * v37 + v18 * (v33 + v32)) * 0.5;
  }

  else
  {
LABEL_21:
    *a4 = 0.0;
    *a5 = 0.0;
    *a3 = 0.0;
    a3[1] = 0.0;
    *a2 = *v9;
  }

  v39 = v9;
  operator delete(v9);
}

void sub_25FF7D950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t liClipLineToPolygon(double *a1, uint64_t **a2, double *a3, double *a4)
{
  *a3 = 0.0;
  *a4 = 1.0;
  v4 = **a2;
  v5 = (*a2)[1] - v4;
  if ((v5 >> 5) < 2)
  {
    return 0;
  }

  v7 = 0;
  v6 = 0;
  v8 = 0uLL;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0uLL;
LABEL_4:
  v12 = v4 + 8 + 32 * v7++;
  do
  {
    v13 = v7;
    if (v7 == ((v5 >> 5) & 0x7FFFFFFF))
    {
      v13 = 0;
    }

    v14 = (v4 + 32 * v13);
    v15 = *v12;
    v16 = vsubq_f64(*v14, *(v12 - 8));
    v17 = *(v12 + 8);
    v18 = v14[1].f64[0] - v17;
    v20 = a1[3];
    v19 = a1[4];
    v21 = a1[5];
    v22 = v19 * v18 - vmuld_lane_f64(v21, v16, 1);
    v23 = v21 * v16.f64[0] - v18 * v20;
    v24 = vmuld_lane_f64(v20, v16, 1) - v19 * v16.f64[0];
    v25 = v24 * v24 + v22 * v22 + v23 * v23;
    if (v25 != 0.0)
    {
      v26 = *(v12 - 8);
      v27 = v17 - a1[2];
      v28 = *&v15 - a1[1];
      v29 = v26 - *a1;
      v30 = ((v20 * v23 - v19 * v22) * v27 + (v21 * v22 - v20 * v24) * v28 + (v19 * v24 - v21 * v23) * v29) / v25;
      if (v30 >= 0.0 && v30 <= 1.0)
      {
        v32 = ((v16.f64[0] * v23 - v16.f64[1] * v22) * v27 + (v18 * v22 - v16.f64[0] * v24) * v28 + (v16.f64[1] * v24 - v18 * v23) * v29) / v25;
        if (!v6)
        {
          v6 = 1;
          *a3 = v32;
          v9 = v26;
          v10 = v18;
          v8 = v15;
          v11 = v16;
          if (v7 != ((v5 >> 5) & 0x7FFFFFFF))
          {
            goto LABEL_4;
          }

          goto LABEL_19;
        }

        v6 = (v6 + 1);
        *a4 = v32;
      }
    }

    v12 += 32;
    ++v7;
  }

  while (v7 - ((v5 >> 5) & 0x7FFFFFFF) != 1);
  v18 = v10;
  v26 = v9;
  v15 = v8;
  v16 = v11;
  if (v6 != 1)
  {
    return v6;
  }

LABEL_19:
  *a1 = v26;
  *(a1 + 1) = v15;
  *(a1 + 3) = v16;
  a1[5] = v18;
  *a3 = 0.0;
  v6 = 1;
  *a4 = 1.0;
  return v6;
}

BOOL liFindMatrixPlane(double *a1, double *a2)
{
  v43 = 0.0;
  v44 = 0.0;
  v45 = 0.0;
  v41 = 0.0;
  v42 = 0.0;
  v40 = 1.0;
  v38 = xmmword_260342700;
  v39 = 0.0;
  v35 = 0.0;
  v36 = 0.0;
  v37 = 1.0;
  PCMatrix44Tmpl<double>::transform<double>(a1, &v43, &v43);
  PCMatrix44Tmpl<double>::transform<double>(a1, &v40, &v40);
  PCMatrix44Tmpl<double>::transform<double>(a1, &v38, &v38);
  PCMatrix44Tmpl<double>::transform<double>(a1, &v35, &v35);
  v4 = v43;
  v5 = v44;
  v6 = v45;
  v7 = (v41 - v44) * (v39 - v45) - (v42 - v45) * (*(&v38 + 1) - v44);
  v8 = (v42 - v45) * (*&v38 - v43) - (v40 - v43) * (v39 - v45);
  v9 = (v40 - v43) * (*(&v38 + 1) - v44) - (v41 - v44) * (*&v38 - v43);
  v10 = (*(&v38 + 1) - v5) * (v37 - v6) - (v39 - v6) * (v36 - v5);
  v11 = (v39 - v6) * (v35 - v4) - (*&v38 - v4) * (v37 - v6);
  v12 = (*&v38 - v4) * (v36 - v5) - (*(&v38 + 1) - v5) * (v35 - v4);
  v13 = (v42 - v45) * (v36 - v44) - (v41 - v44) * (v37 - v45);
  v14 = (v40 - v43) * (v37 - v45) - (v42 - v45) * (v35 - v43);
  v15 = (v41 - v44) * (v35 - v43) - (v40 - v43) * (v36 - v44);
  v32 = v12 * v12 + v10 * v10 + v11 * v11;
  v33 = v15 * v15 + v13 * v13 + v14 * v14;
  v34 = v9 * v9 + v7 * v7 + v8 * v8;
  v16 = fabs(v33);
  v17 = fabs(v32);
  v18 = v16 > v17;
  v19 = fabs(v34);
  v20 = fabs(*(&v32 + (v16 > v17)));
  if (v19 > v20)
  {
    v18 = 2;
  }

  v21 = *(&v32 + v18);
  v22 = fabs(v21);
  if (v22 >= 1.0e-32)
  {
    v23 = v16 > v17;
    v24 = sqrt(v21);
    if (v23 && v19 <= v20)
    {
      v7 = (v42 - v45) * (v36 - v44) - (v41 - v44) * (v37 - v45);
      v8 = (v40 - v43) * (v37 - v45) - (v42 - v45) * (v35 - v43);
      v25 = (v41 - v44) * (v35 - v43) - (v40 - v43) * (v36 - v44);
    }

    else
    {
      v25 = (v40 - v43) * (*(&v38 + 1) - v44) - (v41 - v44) * (*&v38 - v43);
    }

    if (!v18)
    {
      v7 = (*(&v38 + 1) - v44) * (v37 - v45) - (v39 - v45) * (v36 - v44);
    }

    v26 = v7 / v24;
    if (!v18)
    {
      v8 = (v39 - v45) * (v35 - v43) - (*&v38 - v43) * (v37 - v45);
    }

    v27 = v8 / v24;
    if (v18)
    {
      v28 = v25;
    }

    else
    {
      v28 = (*&v38 - v43) * (v36 - v44) - (*(&v38 + 1) - v44) * (v35 - v43);
    }

    v29 = v28 / v24;
    v30 = sqrt(v29 * v29 + v26 * v26 + v27 * v27);
    if (fabs(v30) >= 0.000000100000001)
    {
      v26 = v26 / v30;
      v27 = v27 / v30;
      v29 = v29 / v30;
    }

    *a2 = v26;
    a2[1] = v27;
    a2[2] = v29;
    a2[3] = -(v6 * v29 + v5 * v27 + v4 * v26);
  }

  return v22 >= 1.0e-32;
}

BOOL liSafeGetTransformation(__int128 *a1, uint64_t a2)
{
  fixNullSpace(a1);

  return PCMatrix44Tmpl<double>::getTransformation(a1, a2);
}

void fixNullSpace(uint64_t a1)
{
  v2 = -1;
  v3 = 16;
  do
  {
    v4 = (a1 + v3);
    v5 = v2 + 2;
    if (v2 == 1)
    {
      v5 = 0;
    }

    v6 = a1 + 32 * v5;
    if (v2 == -1)
    {
      v7 = 2;
    }

    else
    {
      v7 = v2;
    }

    v8 = a1 + 32 * v7;
    v10 = v4[-1];
    v9 = *v4;
    v11 = *(v8 + 8);
    *&v12.f64[0] = vdupq_laneq_s64(v11, 1).u64[0];
    v13 = *(v6 + 8);
    v12.f64[1] = *v8;
    *&v14.f64[0] = vdupq_laneq_s64(v13, 1).u64[0];
    v14.f64[1] = *v6;
    v15 = vsubq_f64(vmulq_f64(v13, v12), vmulq_f64(v14, v11));
    *&v14.f64[1] = vdupq_lane_s64(*&v10.f64[0], 0).u64[0];
    v14.f64[0] = *v6;
    v16 = vmulq_f64(v14, vzip1q_s64(v11, v15));
    v13.f64[1] = v4[-1].f64[1];
    v17.f64[1] = v15.f64[1];
    v17.f64[0] = *v8;
    v18 = vmulq_f64(v13, v17);
    v19 = vsubq_f64(v16, v18);
    v20 = vaddq_f64(v16, v18);
    if (fabs(vaddq_f64(vmulq_f64(*v4, v19), vdupq_laneq_s64(v20, 1)).f64[0]) < 0.0000001)
    {
      v21.f64[0] = v19.f64[0];
      *&v21.f64[1] = v20.i64[1];
      v22 = vmulq_f64(v15, v15);
      v23 = sqrt(vaddq_f64(vmulq_f64(v21, v21), vaddq_f64(v22, vdupq_laneq_s64(v22, 1))).f64[0]);
      if (fabs(v23) >= 0.0000001)
      {
        v4[-1] = vaddq_f64(v10, vdivq_f64(v15, vdupq_lane_s64(*&v23, 0)));
        *(a1 + v3) = vaddq_f64(v9, COERCE_UNSIGNED_INT64(v19.f64[0] / v23));
      }
    }

    ++v2;
    v3 += 32;
  }

  while (v2 != 2);
  if (fabs(PCMatrix44Tmpl<double>::determinant(a1)) < 0.0000001)
  {
    *(a1 + 120) = 0x3FF0000000000000;
    *(a1 + 80) = 0x3FF0000000000000;
    *(a1 + 40) = 0x3FF0000000000000;
    *a1 = 0x3FF0000000000000;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
  }
}

BOOL liSafeGetTransformation(__int128 *a1, uint64_t a2, double *a3)
{
  fixNullSpace(a1);

  return PCMatrix44Tmpl<double>::getTransformation(a1, a2, a3);
}

BOOL PCMatrix44Tmpl<double>::getTransformation(__int128 *a1, uint64_t a2, double *a3)
{
  v37 = 0x3FF0000000000000;
  v34 = 1.0;
  v31 = 1.0;
  v28 = 1.0;
  v29 = 0u;
  v30 = 0u;
  v32 = 0u;
  v33 = 0u;
  v35 = 0u;
  v36 = 0u;
  PartialTransformation = PCMatrix44Tmpl<double>::getPartialTransformation(a1, a2, &v28);
  if (PartialTransformation)
  {
    v5 = v28;
    v26 = v31;
    v25 = v34;
    v6 = v28 + v31 + v34;
    v7 = acos((v6 + -1.0) * 0.5);
    v8 = *(&v33 + 1) - *&v32;
    v9 = *(&v29 + 1) - *&v33;
    v10.f64[0] = *(&v30 + 1) - *&v29;
    v11 = v8 * v8 + v9 * v9 + v10.f64[0] * v10.f64[0];
    if (fabs(v11) < 0.0000001)
    {
      if (v6 > 0.0)
      {
        *a3 = 1.0;
        a3[1] = 0.0;
        a3[2] = 0.0;
        a3[3] = 0.0;
        return PartialTransformation;
      }

      v12 = (v5 + 1.0) * 0.5;
      if (v12 < 0.0)
      {
        v12 = 0.0;
      }

      v8 = sqrt(v12);
      v13.f64[0] = v25;
      v13.f64[1] = v26;
      __asm
      {
        FMOV            V1.2D, #1.0
        FMOV            V3.2D, #0.5
      }

      v20 = vmulq_f64(vaddq_f64(v13, _Q1), _Q3);
      v10 = vsqrtq_f64(vbicq_s8(v20, vcltzq_f64(v20)));
      v21 = vmulq_f64(v10, v10);
      v11 = v21.f64[0] + v21.f64[1] + v8 * v8;
      v9 = v10.f64[1];
    }

    v27 = v10.f64[0];
    v22 = __sincos_stret(v7 * 0.5);
    v23 = sqrt(v11);
    if (fabs(v23) < 0.000000100000001)
    {
      v23 = 1.0;
    }

    *a3 = v22.__cosval;
    a3[1] = v22.__sinval * (v8 / v23);
    a3[2] = v22.__sinval * (v9 / v23);
    a3[3] = v22.__sinval * (v27 / v23);
  }

  return PartialTransformation;
}

uint64_t liTransformAndClip(double *a1, double *a2, uint64_t **a3)
{
  memset(v14, 0, sizeof(v14));
  v6 = -*a1;
  v16 = 0;
  v15 = 0x3FF0000000000000uLL;
  v17 = v6;
  PCMatrix44Tmpl<double>::transform_row<double>(a2, &v15, v14[0].f64);
  v7 = LiImagePolygon::clip(a3, v14, 0);
  v8 = *a1 + a1[2];
  v16 = 0;
  v15 = 0xBFF0000000000000;
  v17 = v8;
  PCMatrix44Tmpl<double>::transform_row<double>(a2, &v15, v14[0].f64);
  v9 = v7 | LiImagePolygon::clip(a3, v14, 0);
  v10 = -a1[1];
  v15 = xmmword_260342700;
  v16 = 0;
  v17 = v10;
  PCMatrix44Tmpl<double>::transform_row<double>(a2, &v15, v14[0].f64);
  v11 = LiImagePolygon::clip(a3, v14, 0);
  v12 = a1[1] + a1[3];
  v15 = xmmword_26034D970;
  v16 = 0;
  v17 = v12;
  PCMatrix44Tmpl<double>::transform_row<double>(a2, &v15, v14[0].f64);
  return v9 | v11 | LiImagePolygon::clip(a3, v14, 0);
}

void PCAssertionException::~PCAssertionException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void std::vector<PCVector2<double>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<PCVector2<double>>::__append(a1, a2 - v2);
  }
}

void std::vector<PCVector2<double>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 4;
    v9 = v4 - *a1;
    if (v9 >> 3 > v7)
    {
      v7 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v15 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector2<double>>>(a1, v10);
    }

    __p = 0;
    v12 = 16 * v8;
    v14 = 0;
    bzero((16 * v8), 16 * a2);
    v13 = 16 * v8 + 16 * a2;
    std::vector<PCVector2<double>>::__swap_out_circular_buffer(a1, &__p);
    if (v13 != v12)
    {
      v13 += (v12 - v13 + 15) & 0xFFFFFFFFFFFFFFF0;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25FF7E470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *LiChannelT<int>::append(const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
  return v6 - 1;
}

uint64_t *removeDuplicatePoints<PCVector3<double>>(uint64_t *result, void **a2, void *a3, double a4)
{
  v4 = *result;
  v5 = result[1];
  v6 = (v5 - *result) >> 2;
  if (v6 >= 1)
  {
    v9 = result;
    v10 = 0;
    v11 = a4 * a4;
    do
    {
      v12 = *(v4 + 4 * (v10 % v6));
      if ((v12 & 0x80000000) != 0)
      {
        v13 = (*a3 + 24 * ~v12);
      }

      else
      {
        v13 = (**a2 + 32 * v12);
      }

      v14 = (v10 + 1) % v6;
      v15 = *(v4 + 4 * v14);
      if ((v15 & 0x80000000) != 0)
      {
        v16 = (*a3 + 24 * ~v15);
      }

      else
      {
        v16 = (**a2 + 32 * v15);
      }

      v17 = v13[1].f64[0] - v16[1].f64[0];
      v18 = vsubq_f64(*v13, *v16);
      if (vaddvq_f64(vmulq_f64(v18, v18)) + v17 * v17 <= v11)
      {
        if (v15 < 0)
        {
          v14 = v10;
        }

        v19 = v4 + 4 * v14;
        v20 = v5 - (v19 + 4);
        if (v5 != v19 + 4)
        {
          result = memmove((v4 + 4 * v14), (v19 + 4), v5 - (v19 + 4));
          v4 = *v9;
        }

        v5 = v19 + v20;
        v9[1] = v19 + v20;
      }

      else
      {
        ++v10;
      }

      v6 = (v5 - v4) >> 2;
    }

    while (v10 < v6);
  }

  return result;
}

__n128 copy<LiChannelT<PCVector3<double>>,LiPolygon::PosFacet>(void *a1, void **a2)
{
  v4 = -1431655765 * ((a1[1] - *a1) >> 3);
  std::vector<LiPolygon::PosEdge>::resize(*a2, v4);
  if (v4 >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = v4 & 0x7FFFFFFF;
    do
    {
      v9 = (*a1 + v6);
      v10 = (**a2 + v7);
      result = *v9;
      v10[1].n128_u64[0] = v9[1].n128_u64[0];
      *v10 = result;
      v7 += 32;
      v6 += 24;
      --v8;
    }

    while (v8);
  }

  return result;
}

void copy<LiChannelT<int>,LiImagePolygon::EdgeFacet>(int **a1, void **a2)
{
  v4 = a1[1] - *a1;
  std::vector<LiPolygon::PosEdge>::resize(*a2, (v4 >> 2));
  if ((v4 >> 2) >= 1)
  {
    v5 = *a1;
    v6 = (v4 >> 2) & 0x7FFFFFFF;
    v7 = (**a2 + 24);
    do
    {
      v8 = *v5++;
      *v7 = v8;
      v7 += 8;
      --v6;
    }

    while (v6);
  }
}

void std::vector<PCVector3<double>>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<PCVector3<double>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<PCVector3<double>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
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

    v16 = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PCVector3<double>>>(a1, v9);
    }

    __p = 0;
    v13 = 24 * v6;
    v15 = 0;
    v11 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero((24 * v6), v11);
    v14 = 24 * v6 + v11;
    std::vector<PCVector3<double>>::__swap_out_circular_buffer(a1, &__p);
    if (v14 != v13)
    {
      v14 = (v14 - v13 - 24) % 0x18 + v13;
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_25FF7E9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiPhysicsUtils::ApplyForce(uint64_t result, void *a2, uint64_t a3, float a4)
{
  v6 = result;
  if (*(result + 1) == 1)
  {
    v7 = *(result + 8);
    v8 = *(result + 16);
    v9 = vmulq_f64(v8, v8);
    v10 = sqrt(v7 * v7 + v9.f64[0] + v9.f64[1]);
    if (fabs(v10) < 0.000000100000001)
    {
      v10 = 1.0;
    }

    v11 = v7 / v10;
    v12 = vdivq_f64(v8, vdupq_lane_s64(*&v10, 0));
  }

  else
  {
    if (!*(result + 32))
    {
      return result;
    }

    *&v33 = *(result + 32);
    v13 = std::map<unsigned long long,std::shared_ptr<Li3DEngineObjectData>>::at(a3, &v33);
    v14 = *v13;
    v15 = v13[1];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v16 = [*(v14 + 440) childNodesPassingTest:&__block_literal_global_28_0];
    if ([v16 count])
    {
      v17 = [v16 firstObject];
    }

    else
    {
      v17 = 0;
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = [a2 presentationNode];
    if (v18)
    {
      [v18 worldTransform];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
    }

    v19 = [v17 presentationNode];
    if (v19)
    {
      [v19 worldTransform];
    }

    v20 = (0.0 - *&v36);
    v21 = vcvtq_f64_f32(vsub_f32(0, *(&v36 + 4)));
    v22 = vmulq_f64(v21, v21);
    v23 = sqrt(v20 * v20 + v22.f64[0] + v22.f64[1]);
    if (fabs(v23) < 0.000000100000001)
    {
      v23 = 1.0;
    }

    v11 = v20 / v23;
    v12 = vdivq_f64(v21, vdupq_lane_s64(*&v23, 0));
    if (v15)
    {
      v32 = v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      v12 = v32;
    }
  }

  v24 = v6[5] * a4;
  v25 = v11 * v24;
  v26 = v24 * v12.f64[0];
  v27 = vmuld_lane_f64(v24, v12, 1);
  v28 = [a2 physicsBody];
  *&v29 = v25;
  *&v30 = v26;
  *&v31 = v27;
  return [v28 applyForce:*v6 impulse:{v29, v30, v31}];
}

void sub_25FF7ED40(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t LiPhysicsUtils::ConfigureScene(LiPhysicsUtils *this, Li3DEngineWorldData *a2, Li3DEngineScene *a3, SCNScene *a4, float a5)
{
  v163 = *MEMORY[0x277D85DE8];
  v101 = a4;
  if (a4)
  {
    [-[Li3DEngineScene physicsWorld](a3 "physicsWorld")];
    [-[Li3DEngineScene physicsWorld](a3 "physicsWorld")];
    [Li3DEngineScene::sceneManager(a2) resetSim];
    Li3DEngineScene::reset_NoLock(a2);
  }

  v105 = a5;
  v7 = -(*(this + 29) * a5);
  v98 = a3;
  v8 = [(Li3DEngineScene *)a3 physicsWorld];
  *&v9 = v7;
  [v8 setGravity:{0.0, v9, 0.0}];
  v10 = *(this + 26);
  if (v10 != (this + 216))
  {
    v110 = *MEMORY[0x277CDBBB8];
    v108 = *MEMORY[0x277CDBBC8];
    v109 = *MEMORY[0x277CDBBD0];
    v107 = *MEMORY[0x277CDBBB0];
    v97 = 1065353216;
    v99 = a2;
    while (1)
    {
      v11 = *(v10 + 5);
      v12 = *(v10 + 6);
      v118 = v11;
      v119 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = *(v11 + 440);
      v14 = *(v11 + 40);
      v117[0] = *(v11 + 24);
      v117[1] = v14;
      v15 = *(v11 + 72);
      v117[2] = *(v11 + 56);
      v117[3] = v15;
      v115 = 0u;
      v116 = 0u;
      v113 = 0u;
      v114 = 0u;
      trans(v117, &v113);
      v120 = v113;
      v121 = v114;
      v122 = v115;
      v123 = v116;
      [(SCNNode *)v13 setTransform:&v120];
      Li3DEngineScene::setNodeActiveState_NoLock(a2, v13, (*(v118 + 424) & 1) == 0, *(v118 + 416));
      v16 = *(v118 + 200) == 8;
      v111[0] = MEMORY[0x277D85DD0];
      v111[1] = *"";
      v111[2] = ___ZN14LiPhysicsUtils14ConfigureSceneEP19Li3DEngineWorldDataP15Li3DEngineSceneP8SCNScenefb_block_invoke;
      v111[3] = &__block_descriptor_33_e21_v24__0__SCNNode_8_B16l;
      v112 = v16;
      [(SCNNode *)v13 enumerateChildNodesUsingBlock:v111];
      v17 = v118;
      v18 = *(v118 + 440);
      if (!v18)
      {
        goto LABEL_89;
      }

      if (v101)
      {
        [*(v118 + 440) setPhysicsBody:0];
        [v18 setPhysicsField:0];
        v19 = [v18 presentationNode];
        memset(&v139, 0, sizeof(v139));
        if (v19)
        {
          [v19 transform];
        }

        v161 = v139;
        [v18 setTransform:{&v161, v97}];
        v20 = *(v118 + 24);
        v21 = *(v118 + 40);
        v22 = *(v118 + 72);
        *&v161.m31 = *(v118 + 56);
        *&v161.m41 = v22;
        *&v161.m11 = v20;
        *&v161.m21 = v21;
        memset(&a, 0, sizeof(a));
        trans(&v161, &a);
        b = a;
        [v18 setTransform:&b];
        v17 = v118;
      }

      *&v139.m11 = *(v17 + 208);
      LOWORD(v139.m13) = *(v17 + 216);
      *&v139.m21 = *(v17 + 224);
      *&v139.m31 = *(v17 + 240);
      *&v139.m33 = *(v17 + 248);
      *&v139.m43 = *(v17 + 264);
      ProCore_Impl::PCNSRefImpl::retain(&v139.m43);
      v23 = *(v17 + 288);
      v140 = *(v17 + 272);
      v141 = v23;
      v24 = *(v17 + 320);
      v142 = *(v17 + 304);
      v25 = *(v17 + 336);
      v26 = *(v17 + 352);
      v143 = v24;
      v144 = v25;
      v145 = v26;
      v146 = *(v17 + 368);
      v27 = *(v17 + 376);
      v28 = *(v17 + 392);
      v149 = *(v17 + 408);
      v148 = v28;
      v147 = v27;
      m12 = v139.m12;
      v30 = *(v118 + 424) ? 0 : LODWORD(v139.m11);
      v31 = v30 == 3 ? 2 : v30 == 2;
      if ((v32 = [v18 physicsBody], v30) && !v32 || objc_msgSend(objc_msgSend(v18, "physicsBody"), "type") != v31)
      {
        if (LODWORD(m12) != 3)
        {
          break;
        }
      }

LABEL_34:
      if (m12 == 0.0 || !v30)
      {
        if (m12 == 0.0 && [objc_msgSend(v18 "physicsBody")])
        {
          [objc_msgSend(v18 "physicsBody")];
        }
      }

      else if (![objc_msgSend(v18 "physicsBody")])
      {
        switch(LODWORD(m12))
        {
          case 1:
            v156 = 0uLL;
            v155 = 0;
            v157 = 4;
            v159 = 0;
            v158 = 0;
            v160 = 0;
            PCMatrix44Tmpl<float>::getTransformation(v117, &v155);
            [v18 getBoundingBoxMin:&v153 max:&v150];
            [v18 scale];
            v153.f32[0] = v56 * v153.f32[0];
            v153.f32[1] = v57 * v153.f32[1];
            v154 = v58 * v154;
            *&v150 = v56 * *&v150;
            *(&v150 + 1) = v57 * *(&v150 + 1);
            v151 = v58 * v151;
            v59 = [MEMORY[0x277CDBA40] boxWithWidth:vabds_f32(*&v150 height:v153.f32[0]) length:vabds_f32(*(&v150 + 1) chamferRadius:{v153.f32[1]), vabds_f32(v151, v154), 0.0}];
            v60 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v59 options:0];
            *&a.m14 = 0;
            *&a.m12 = 0;
            a.m11 = 1.0;
            a.m22 = 1.0;
            *&a.m23 = 0;
            *&a.m31 = 0;
            *&a.m33 = v97;
            *&a.m41 = vmul_f32(vadd_f32(*&v150, v153), 0x3F0000003F000000);
            a.m43 = (v151 + v154) * 0.5;
            a.m44 = 1.0;
            v61 = *(MEMORY[0x277CDBBA8] + 16);
            *&b.m11 = *MEMORY[0x277CDBBA8];
            *&b.m21 = v61;
            v62 = *(MEMORY[0x277CDBBA8] + 48);
            *&b.m31 = *(MEMORY[0x277CDBBA8] + 32);
            *&b.m41 = v62;
            SCNMatrix4Mult(&v161, &a, &b);
            a = v161;
            v63 = [MEMORY[0x277CCAE60] valueWithSCNMatrix4:&a];
            v64 = MEMORY[0x277CDBAD0];
            *&a.m11 = v60;
            v65 = [MEMORY[0x277CBEA60] arrayWithObjects:&a count:1];
            *&b.m11 = v63;
            [objc_msgSend(v18 "physicsBody")];
            break;
          case 3:
            v48 = [v18 childNodesPassingTest:&__block_literal_global_67];
            memset(&a, 0, sizeof(a));
            v49 = [v48 countByEnumeratingWithState:&a objects:&v161 count:16];
            if (v49)
            {
              v50 = **&a.m21;
              do
              {
                for (i = 0; i != v49; ++i)
                {
                  if (**&a.m21 != v50)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v52 = *(*&a.m13 + 8 * i);
                  if (![v52 physicsBody])
                  {
                    [objc_msgSend(v52 "parentNode")];
                    v53 = [MEMORY[0x277CCAE60] valueWithSCNVector3:?];
                    v54 = MEMORY[0x277CDBAD0];
                    v55 = [v52 geometry];
                    v155 = v110;
                    *&v156 = v109;
                    *&b.m11 = v53;
                    *&b.m13 = v108;
                    *(&v156 + 1) = v107;
                    *&b.m21 = &unk_28732D6F8;
                    v153 = [v54 shapeWithGeometry:v55 options:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &b, &v155, 3)}];
                    [v52 setPhysicsBody:{objc_msgSend(MEMORY[0x277CDBAB0], "bodyWithType:shape:", 0, objc_msgSend(MEMORY[0x277CDBAD0], "shapeWithShapes:transforms:", objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v153, 1), 0))}];
                  }
                }

                v49 = [v48 countByEnumeratingWithState:&a objects:&v161 count:16];
              }

              while (v49);
            }

            break;
          case 2:
            v156 = 0uLL;
            v155 = 0;
            v157 = 4;
            v159 = 0;
            v158 = 0;
            v160 = 0;
            PCMatrix44Tmpl<float>::getTransformation(v117, &v155);
            v150 = 1.0;
            [v18 getBoundingSphereCenter:&v153 radius:&v150];
            v153 = vmul_f32(v153, *(&v156 + 4));
            v154 = v154 * *(&v156 + 3);
            v150 = v150 * *(&v156 + 3);
            v35 = [MEMORY[0x277CDBB08] sphereWithRadius:?];
            v36 = [MEMORY[0x277CDBAD0] shapeWithGeometry:v35 options:0];
            *&a.m14 = 0;
            *&a.m12 = 0;
            a.m11 = 1.0;
            a.m22 = 1.0;
            *&a.m23 = 0;
            *&a.m31 = 0;
            *&a.m33 = v97;
            *&a.m41 = v153;
            a.m43 = v154;
            a.m44 = 1.0;
            v37 = *(MEMORY[0x277CDBBA8] + 16);
            *&b.m11 = *MEMORY[0x277CDBBA8];
            *&b.m21 = v37;
            v38 = *(MEMORY[0x277CDBBA8] + 48);
            *&b.m31 = *(MEMORY[0x277CDBBA8] + 32);
            *&b.m41 = v38;
            SCNMatrix4Mult(&v161, &a, &b);
            a = v161;
            v39 = [MEMORY[0x277CCAE60] valueWithSCNMatrix4:&a];
            v40 = MEMORY[0x277CDBAD0];
            *&a.m11 = v36;
            v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&a count:1];
            *&b.m11 = v39;
            [objc_msgSend(v18 "physicsBody")];
            v42 = v153;
            v43 = v154;
            v44 = [v18 physicsBody];
            LODWORD(v46) = v42.i32[1];
            LODWORD(v45) = v42.i32[0];
            *&v47 = v43;
            [v44 setCenterOfMassOffset:{v45, v46, v47}];
            [objc_msgSend(v18 "physicsBody")];
            break;
        }
      }

      [objc_msgSend(v18 "physicsBody")];
      [objc_msgSend(v18 "physicsBody")];
      [objc_msgSend(v18 "physicsBody")];
      [objc_msgSend(v18 "physicsBody")];
      *&v120 = MEMORY[0x277D85DD0];
      *(&v120 + 1) = 3321888768;
      *&v121 = ___ZL16ConfigurePhysicsRKNSt3__110shared_ptrI20Li3DEngineObjectDataEEPNS_3mapIyS2_NS_4lessIyEENS_9allocatorINS_4pairIKyS2_EEEEEERK14PCMatrix44TmplIfEP15Li3DEngineScenefb_block_invoke;
      *(&v121 + 1) = &__block_descriptor_252_e8_32c36_ZTSK29Li3DEngineObjectPhysicsParams_e21_v24__0__SCNNode_8_B16l;
      *&v122 = *&v139.m11;
      WORD4(v122) = LOWORD(v139.m13);
      v123 = *&v139.m21;
      v124 = *&v139.m31;
      v125 = *&v139.m33;
      v126 = *&v139.m43;
      ProCore_Impl::PCNSRefImpl::retain(&v126);
      v127 = v140;
      v128 = v141;
      v129 = v142;
      v130 = v143;
      v131 = v144;
      v132 = v145;
      v133 = v146;
      v136 = v149;
      v135 = v148;
      v134 = v147;
      v138 = a5;
      v137 = &v118;
      [v18 enumerateChildNodesUsingBlock:&v120];
      a2 = v99;
      v66 = Li3DEngineScene::sceneManager(v99);
      *&v67 = a5;
      [v66 applyForce:&v139.m13 node:v18 arScale:this + 208 objects:v67];
      v68 = v140;
      v69 = *(&v140 + 1);
      v70 = *&v141;
      v71 = BYTE8(v141);
      v72 = v142;
      v102 = v143;
      v73 = *(&v144 + 1);
      v74 = v145;
      v103 = *&v144;
      v104 = v146;
      v75 = sqrt(v73 * v73 + *&v145 * *&v145 + *(&v145 + 1) * *(&v145 + 1));
      if (fabs(v75) >= 0.000000100000001)
      {
        v76 = v75;
      }

      else
      {
        v76 = 1.0;
      }

      v77 = [v18 physicsField];
      if (v68 == -1)
      {
        if (v77)
        {
          v78 = 0;
          goto LABEL_80;
        }
      }

      else if (!v77)
      {
        v78 = 0;
        if (v68 > 3)
        {
          if (v68 > 5)
          {
            if (v68 == 6)
            {
              v79 = [MEMORY[0x277CDBAC8] electricField];
            }

            else
            {
              if (v68 != 7)
              {
                goto LABEL_80;
              }

              v79 = [MEMORY[0x277CDBAC8] magneticField];
            }
          }

          else if (v68 == 4)
          {
            v79 = [MEMORY[0x277CDBAC8] noiseFieldWithSmoothness:0 animationSpeed:v72];
          }

          else
          {
            v79 = [MEMORY[0x277CDBAC8] turbulenceFieldWithSmoothness:0 animationSpeed:v72];
          }
        }

        else if (v68 > 1)
        {
          if (v68 == 2)
          {
            v79 = [MEMORY[0x277CDBAC8] radialGravityField];
          }

          else
          {
            v79 = [MEMORY[0x277CDBAC8] linearGravityField];
          }
        }

        else if (v68)
        {
          if (v68 != 1)
          {
LABEL_80:
            [v18 setPhysicsField:v78];
            goto LABEL_81;
          }

          v79 = [MEMORY[0x277CDBAC8] vortexField];
        }

        else
        {
          v79 = [MEMORY[0x277CDBAC8] dragField];
        }

        v78 = v79;
        goto LABEL_80;
      }

LABEL_81:
      if ([v18 physicsField])
      {
        [objc_msgSend(v18 "physicsField")];
        v80 = [v18 physicsField];
        v81 = a5;
        if ((v68 & 0xFFFFFFFA) != 2)
        {
          v81 = 1.0;
        }

        [v80 setStrength:v69 * v81];
        [objc_msgSend(v18 "physicsField")];
        if (v71)
        {
          v82 = 3.4028e38;
          v83 = 3.4028e38;
          v84 = 3.4028e38;
        }

        else
        {
          v82 = *&v102 * v105;
          v83 = *(&v102 + 1) * v105;
          v84 = v103 * v105;
        }

        v85 = [v18 physicsField];
        *&v86 = v82;
        *&v87 = v83;
        *&v88 = v84;
        [v85 setHalfExtent:{v86, v87, v88}];
        v89 = [v18 physicsField];
        v90 = *(&v74 + 1) / v76;
        *&v91 = *(&v74 + 1) / v76;
        *&v90 = *&v74 / v76;
        v92 = v73 / v76;
        *&v92 = v73 / v76;
        [v89 setDirection:{v92, v90, v91}];
      }

      Li3DEngineObjectForceParams::~Li3DEngineObjectForceParams(&v122 + 1);
      Li3DEngineObjectForceParams::~Li3DEngineObjectForceParams(&v139.m13);
LABEL_89:
      if (v119)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v119);
      }

      v93 = *(v10 + 1);
      if (v93)
      {
        do
        {
          v94 = v93;
          v93 = *v93;
        }

        while (v93);
      }

      else
      {
        do
        {
          v94 = *(v10 + 2);
          v95 = *v94 == v10;
          v10 = v94;
        }

        while (!v95);
      }

      v10 = v94;
      if (v94 == (this + 216))
      {
        return [-[Li3DEngineScene physicsWorld](v98 physicsWorld];
      }
    }

    switch(v30)
    {
      case 1:
        v33 = [MEMORY[0x277CDBAB0] staticBody];
        break;
      case 3:
        v33 = [MEMORY[0x277CDBAB0] kinematicBody];
        break;
      case 2:
        v33 = [MEMORY[0x277CDBAB0] dynamicBody];
        break;
      default:
        if ((v101 & 1) != 0 || [v18 physicsBody])
        {
          [v18 setPhysicsBody:0];
        }

        v34 = 0;
        goto LABEL_33;
    }

    v34 = v33;
LABEL_33:
    [v18 setPhysicsBody:v34];
    goto LABEL_34;
  }

  return [-[Li3DEngineScene physicsWorld](v98 physicsWorld];
}