uint64_t HGNode::GetProperty(HGNode *this, int a2, uint64_t a3)
{
  v3 = 1;
  switch(a2)
  {
    case 0:
      return v3;
    case 2:
      v3 = *(this + 40);
      if (!v3)
      {
        return v3;
      }

      goto LABEL_28;
    case 3:
      v5 = *(this + 40);
      if (!v5)
      {
        return 1;
      }

      return *(v5 + 52);
    case 4:
      v11 = *(this + 40);
      if (!v11)
      {
        return 1;
      }

      return *(v11 + 56);
    case 5:
      v12 = *(this + 40);
      if (!v12)
      {
        goto LABEL_36;
      }

      v13 = *(v12 + 52);
      if (v13 >= a3)
      {
        return a3;
      }

      else
      {
        return v13;
      }

    case 6:
      v16 = *(this + 40);
      if (v16)
      {
        v17 = *(v16 + 56);
        if (v17 >= a3)
        {
          return a3;
        }

        else
        {
          return v17;
        }
      }

      else
      {
LABEL_36:
        if (a3 <= 1)
        {
          return a3;
        }

        else
        {
          return 1;
        }
      }

    case 7:
      v3 = *(this + 8);
      if (!v3)
      {
        return v3;
      }

LABEL_28:

      return HGLimits::isenv((v3 + 16));
    case 8:
      v5 = *(this + 8);
      if (!v5)
      {
        return 1;
      }

      return *(v5 + 52);
    case 9:
      v11 = *(this + 8);
      if (v11)
      {
        return *(v11 + 56);
      }

      return 1;
    case 10:
      v5 = *(this + 8);
      if (!v5)
      {
        return a3 != 0;
      }

      v6 = *(this + 40);
      if (v6)
      {
        v7 = *(v6 + 52);
      }

      else
      {
        v7 = 1;
      }

      if (v7 <= a3)
      {
        return *(v5 + 52);
      }

      v18 = *(this + 37);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v18) >> 3) > a3 && *(v18 + 56 * a3))
      {
        return *(v18 + 56 * a3 + 24);
      }

      else
      {
        return (*(this + 67) + a3);
      }

    case 11:
      v11 = *(this + 8);
      if (!v11)
      {
        return a3 != 0;
      }

      v14 = *(this + 40);
      if (v14)
      {
        v15 = *(v14 + 56);
      }

      else
      {
        v15 = 1;
      }

      if (v15 <= a3)
      {
        return *(v11 + 56);
      }

      v19 = *(this + 37);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v19) >> 3) > a3 && *(v19 + 56 * a3))
      {
        return *(v19 + 56 * a3 + 40);
      }

      return (*(this + 71) + a3);
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
      return 0xFFFFFFFFLL;
    case 23:
      v9 = a3;
      if (!(*(*this + 128))(this, a3))
      {
        goto LABEL_9;
      }

      v10 = *(this + 37);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v10) >> 3) <= v9)
      {
        goto LABEL_9;
      }

      result = *(v10 + 56 * v9) != 0;
      break;
    default:
LABEL_9:
      result = 0;
      break;
  }

  return result;
}

HGNode *HGNode::PreBuffering(HGNode *this, HGRenderer *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if ((*(this + 105) & 1) == 0)
  {
    v3 = this;
    *(this + 105) = 1;
    this = (*(*a2 + 304))(a2);
    if (this)
    {
      this = HGRenderer::DepthManager(a2, 0);
      if (*(this + 40) == 1)
      {
        v4 = (*(*a2 + 128))(a2, 1);
        v5 = *(v3 + 42);
        v6 = *(v3 + 43);
        v7 = *(v3 + 44);
        v8 = *(v3 + 45);
        HGTraceGuard::HGTraceGuard(v22, "depth", 1, "HGNode::BufferingNode");
        v11 = atomic_load(HGLogger::_enabled);
        if (v11)
        {
          HGLogger::log("depth", 1, "node will be cached! pre-alloc the depth buffer...\n", v9, v10);
        }

        v12 = (v5 - v4);
        v13 = (v4 + v7);
        v14 = (v6 - v4);
        v15 = (v4 + v8);
        v16 = atomic_load(HGLogger::_enabled);
        if (v16)
        {
          HGLogger::log("depth", 1, "allocated depth : %d %d %d %d\n", v9, v10, v12, v14, v13, v15);
        }

        v17 = HGObject::operator new(0x80uLL);
        HGBuffer::HGBuffer(v17, v12 | (v14 << 32), v13 | (v15 << 32), 28);
        *(v3 + 12) = v17;
        v20 = atomic_load(HGLogger::_enabled);
        if (v20)
        {
          HGLogger::log("depth", 1, "cached : %p\n", v18, v19, *(v3 + 12));
        }

        *v23 = xmmword_260344BA0;
        HGRenderUtils::BufferFiller::BufferFiller(v21);
      }
    }
  }

  return this;
}

void sub_25FC8A838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  HGRenderUtils::BufferFiller::~BufferFiller(va);
  HGTraceGuard::~HGTraceGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FC8A854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  HGObject::operator delete(v15);
  HGTraceGuard::~HGTraceGuard(&a15);
  _Unwind_Resume(a1);
}

void sub_25FC8A888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGNode::PreTileBuffering(uint64_t result)
{
  if ((*(result + 106) & 1) == 0)
  {
    *(result + 106) = 1;
  }

  return result;
}

uint64_t HGNode::PullTextures(HGNode *this, HGGPURenderer **a2, int a3)
{
  if (!*(this + 10) || (*(this + 18) & 1) != 0)
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(this + 71) + a3;
  v9 = (a2 + 21);
  v21 = a2 + 36;
  do
  {
    v11 = (*(*this + 440))(this, v7);
    v12 = (*(*this + 128))(this, v11);
    if (v12)
    {
      v13 = *(*(this + 10) + 8 * v11);
      if (v13)
      {
        if ((*(v13 + 14) & 1) == 0)
        {
          v14 = *(this + 37);
          if (0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v14) >> 3) > v11 && (v15 = (v14 + 56 * v11), *v15))
          {
            v6 = (*(**v15 + 472))(*v15, a2, (v15[10] + a3)) + v6;
          }

          else
          {
            v16 = v8 + v11;
            if (!*&v9[8 * v16])
            {
              v17 = *(v12 + 144);
              *&v9[8 * v16] = HGGPURenderer::GetNodeTexture(*a2, v17, *&v21[16 * v16], 0, 1u);
              v20 = atomic_load(HGLogger::_enabled);
              if (v20)
              {
                HGLogger::log("gpu", 1, "rendering leaf (%p, %x) to texture(%p, %d)\n", v18, v19, v17, *(v17 + 12), *&v9[8 * v16], v16);
              }

              v6 = (v6 + 1);
            }
          }
        }
      }
    }

    v7 = (v7 + 1);
  }

  while (v7 != 8);
  return v6;
}

uint64_t HGNode::PullMetalTextures(HGNode *this, HGRenderer **a2, int a3)
{
  if (*(this + 10) && (*(this + 18) & 1) == 0)
  {
    v4 = a3;
    v6 = 0;
    v7 = 0;
    v8 = *(this + 71) + a3;
    v9 = (a2 + 21);
    v32 = a2 + 36;
    v29 = (a2 + 21);
    v30 = v8;
    while (1)
    {
      v11 = (*(*this + 440))(this, v7);
      v12 = (*(*this + 128))(this, v11);
      if (v12)
      {
        v13 = *(*(this + 10) + 8 * v11);
        if (v13)
        {
          if ((*(v13 + 14) & 1) == 0)
          {
            v14 = *(this + 37);
            if (0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v14) >> 3) > v11 && (v15 = (v14 + 56 * v11), *v15))
            {
              v6 = (*(**v15 + 480))(*v15, a2, (v15[10] + v4)) + v6;
            }

            else
            {
              v16 = v8 + v11;
              if (!*&v9[8 * v16])
              {
                Output = HGRenderer::GetOutput(*a2, v12);
                v18 = &v32[16 * v16];
                NodeBitmap = HGGPURenderer::GetNodeBitmap(*a2, Output, *v18, 0, 1u);
                v20 = HGGPURenderer::ConvertToNonGLTexture(*a2, NodeBitmap);
                v21 = v20;
                v22 = *(v20 + 3);
                if ((v22 & 0x30) != 0)
                {
                  if ((~v22 & 0x120) != 0)
                  {
LABEL_20:
                    v23 = HGObject::operator new(0x80uLL);
                    HGTexture::HGTexture(v23, *(v21 + 20), v21);
                    goto LABEL_22;
                  }
                }

                else if (!*(v20 + 10))
                {
                  goto LABEL_20;
                }

                if (HGRectIsNull(*v18, *(v18 + 1)))
                {
                  goto LABEL_20;
                }

                v23 = HGObject::operator new(0x80uLL);
                HGTexture::HGTexture(v23, *v18, v21);
LABEL_22:
                *&v29[8 * v16] = v23;
                (*(*v21 + 24))(v21);
                v24 = *(*NodeBitmap + 24);
                v25 = NodeBitmap;
                v9 = v29;
                v24(v25);
                v28 = atomic_load(HGLogger::_enabled);
                if (v28)
                {
                  HGLogger::log("gpu", 1, "rendering leaf (%p, %x) to texture(%p, %d)\n", v26, v27, Output, *(Output + 3), *&v29[8 * v16], v16);
                }

                v6 = (v6 + 1);
                v4 = a3;
                v8 = v30;
              }
            }
          }
        }
      }

      v7 = (v7 + 1);
      if (v7 == 8)
      {
        return v6;
      }
    }
  }

  return 0;
}

uint64_t HGNode::PageBegin(HGNode *this, HGPage *a2, int a3, int32x4_t *a4)
{
  if (!a4)
  {
    return 0;
  }

  if ((*(*this + 168))(this, 2, 0))
  {
    *(a2 + 30) = this;
  }

  HGHandler::Push(a4, (this + 260));
  DOD = HGRenderer::GetDOD(*a2, this);
  (*(a4->i64[0] + 24))(a4, DOD, v9, *(a2 + 2), *(a2 + 3), 0, 0);
  (*(*this + 200))(this, a4);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = a4[11].i32[0] + a3;
  v62 = v13;
  v63 = a2 + 168;
  v65 = v13 + 1;
  v66 = a2;
  v67 = a2 + 8 * v13 + 176;
  do
  {
    v16 = (*(*this + 128))(this, v10);
    if (v16)
    {
      v17 = v16;
      v18 = *(this + 37);
      if (0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v18) >> 3) > v10 && *(v18 + 56 * v10))
      {
        if (v12)
        {
LABEL_5:
          v14 = HGHandler::Push(a4, (v18 + 56 * v10 + 16));
          v11 = (*(**(*(this + 37) + 56 * v10) + 488))(v14) + v11;
          v15 = HGHandler::Pop(a4, (*(this + 37) + 56 * v10 + 16));
          v12 = 1;
          goto LABEL_6;
        }
      }

      else
      {
        v64 = v11;
        if (v12)
        {
          v15 = HGHandler::Push(a4, (this + 260));
        }

        v19 = *&v63[8 * v10 + 8 * v62];
        v20 = v67;
        if (v19)
        {
          if ((v19[12] & 0x10) != 0)
          {
            v27 = v26[40];
            v28 = HGRenderer::GetDOD(*a2, v17);
            v30 = v29;
            v31 = *(v26 + 5);
            v32 = a2;
            v33 = *(v26 + 7);
            TextureRect = HGGLTexture::GetTextureRect(v26);
            v35 = v26[5];
            v36 = v26[6];
            v20 = v67;
            LODWORD(v60) = -v35;
            HIDWORD(v60) = -v36;
            v37 = v33;
            a2 = v32;
            (*(a4->i64[0] + 32))(a4, v27, v28, v30, v31, v37, TextureRect, v38, v60);
          }

          else
          {
            if (v21)
            {
              v22 = v21;
              v23 = HGRenderer::GetDOD(*a2, v17);
              v25 = v24;
              *&v69.var0 = v23;
              *&v69.var2 = v25;
              HGMetalHandler::InitTextureUnit(v22, v69, v10 + v62);
            }
          }
        }

        else
        {
          (*(a4->i64[0] + 32))(a4, 0, 0, 0, 0, 0, 0, 0, v15, 0);
        }

        (*(*this + 208))(this, a4, v10);
        if (v10 == 7)
        {
LABEL_35:
          v11 = v64;
LABEL_36:
          v15 = HGHandler::Pop(a4, (this + 260));
          goto LABEL_37;
        }

        v39 = 56 * v10 + 56;
        while (1)
        {
          v40 = (*(*this + 128))(this, v10 + 1);
          if (!v40)
          {
            v12 = 0;
            ++v10;
            v11 = v64;
            goto LABEL_6;
          }

          v41 = v40;
          v42 = *(this + 37);
          if (0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v42) >> 3) > v10 + 1)
          {
            if (*(v42 + v39))
            {
              break;
            }
          }

          v43 = *&v20[8 * v10];
          if (v43)
          {
            if ((v43[12] & 0x10) != 0)
            {
              v68 = *(v49 + 40);
              v50 = HGRenderer::GetDOD(*a2, v41);
              v52 = v51;
              v53 = *(v49 + 20);
              v54 = *(v49 + 28);
              v55 = HGGLTexture::GetTextureRect(v49);
              LODWORD(v61) = -*(v49 + 5);
              HIDWORD(v61) = -*(v49 + 6);
              v56 = v52;
              v57 = v54;
              a2 = v66;
              v20 = v67;
              (*(a4->i64[0] + 32))(a4, v68, v50, v56, v53, v57, v55, v58, v61);
            }

            else
            {
              if (v44)
              {
                v45 = v44;
                v46 = HGRenderer::GetDOD(*a2, v41);
                v48 = v47;
                *&v70.var0 = v46;
                *&v70.var2 = v48;
                HGMetalHandler::InitTextureUnit(v45, v70, v65 + v10);
              }
            }
          }

          else
          {
            (*(a4->i64[0] + 32))(a4, 0, 0, 0, 0, 0, 0, 0, 0);
          }

          (*(*this + 208))(this, a4, ++v10);
          v39 += 56;
          if (v10 == 7)
          {
            goto LABEL_35;
          }
        }

        ++v10;
        LODWORD(v11) = v64;
      }

      HGHandler::Pop(a4, (this + 260));
      v18 = *(this + 37);
      goto LABEL_5;
    }

LABEL_6:
    ++v10;
  }

  while (v10 != 8);
  if ((v12 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  (*(a4->i64[0] + 40))(a4, v15);
  return v11;
}

HGNode *HGNode::PageEnd(HGNode *this, HGPage *a2, int a3, HGHandler *a4)
{
  if (a4)
  {
    if (*(a2 + 30))
    {
      this = *(a2 + 30);
    }

    (*(*this + 216))(this, a4);
    v5 = *(**a2 + 392);

    return v5();
  }

  return this;
}

uint64_t HGNode::RenderPage(HGNode *this, HGRect *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = a2;
  if (this)
  {
    (*(*this + 472))(this, a2, 0);
  }

  v4 = (*(*this + 48))(this);
  snprintf(__str, 0x100uLL, "%s::RenderPage( [%d %d %d %d])", v4, a2[1].var0, a2[1].var1, a2[1].var2, a2[1].var3);
  HGTraceGuard::HGTraceGuard(v9, "gpu", 1, __str);
  v5 = (*(*this + 504))(this, a2, 0);
  v6 = v5;
  if (*&a2->var2 != v5)
  {
    *&a2->var2 = v5;
  }

  (*(**&a2->var0 + 144))(*&a2->var0, v5);
  (*(**&a2->var0 + 152))(*&a2->var0, 0, *&a2[10].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 1, *&a2[11].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 2, *&a2[11].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 3, *&a2[12].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 4, *&a2[12].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 5, *&a2[13].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 6, *&a2[13].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 7, *&a2[14].var0, 0, 0);
  v7 = (*(**&a2->var0 + 368))(*&a2->var0, *(this + 8), this);
  (*(*this + 488))(this, a2, 0, v7);
  (*(*this + 344))(this);
  HGGPURenderer::Rect(*&a2->var0, v7, a2[1], 8);
  (*(*this + 352))(this);
  (*(*this + 496))(this, a2, 0, v7);
  HGTraceGuard::~HGTraceGuard(v9);
  HGPage::ReleaseTextures(a2);
  return v6;
}

void sub_25FC8BA44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGNode::RenderPageMetal(HGNode *this, HGPage *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a2;
  if (this)
  {
    (*(*this + 480))(this, a2, 0);
  }

  (*(**a2 + 144))(*a2, 0);
  v4 = (*(*this + 48))(this);
  snprintf(__str, 0x100uLL, "%s::RenderPageMetal( [%d %d %d %d])", v4, *(a2 + 4), *(a2 + 5), *(a2 + 6), *(a2 + 7));
  HGTraceGuard::HGTraceGuard(v12, "gpu", 1, __str);
  v5 = (*(*this + 504))(this, a2, 1);
  v6 = v5;
  if (*(a2 + 1) != v5)
  {
    *(a2 + 1) = v5;
  }

  v7 = (*(*this + 520))(this);
  if (v7 > 1)
  {
    if (*(a2 + 1))
    {
      HGNode::RenderPageDeluxe(this, a2);
    }

    else
    {
      HGLogger::warning("HGNode::RenderPageMetal() could not find a valid rendering path.", v8, v9);
    }
  }

  else if (v7 || (v10 = (*(*this + 512))(this, a2)) == 0)
  {
    (*(*this + 536))(this, a2);
  }

  else
  {
    (*(*this + 528))(this, a2, v10);
  }

  HGTraceGuard::~HGTraceGuard(v12);
  HGPage::ReleaseTextures(a2);
  return v6;
}

void sub_25FC8BD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  HGTraceGuard::~HGTraceGuard(va);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(va1);
  _Unwind_Resume(a1);
}

const char *HGNode::RenderPageDeluxe(HGNode *this, const HGPage *a2)
{
  HGGPURenderer::FlushMetalCommandBuffer(*a2);
  if ((*(*this + 520))(this) == 5)
  {
    v5 = *(a2 + 1);
    v33 = *a2;
    v34 = *(a2 + 1);
    CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(v5, v4);
    v7 = *(a2 + 21);
    if (v7)
    {
      v36 = HGCVBitmap::getCVBitmapStorage(v7, v6);
    }

    v8 = *(a2 + 22);
    if (v8)
    {
      v37 = HGCVBitmap::getCVBitmapStorage(v8, v6);
    }

    v9 = *(a2 + 23);
    if (v9)
    {
      v38 = HGCVBitmap::getCVBitmapStorage(v9, v6);
    }

    v10 = *(a2 + 24);
    if (v10)
    {
      v39 = HGCVBitmap::getCVBitmapStorage(v10, v6);
    }

    v11 = *(a2 + 25);
    if (v11)
    {
      v40 = HGCVBitmap::getCVBitmapStorage(v11, v6);
    }

    v12 = *(a2 + 26);
    if (v12)
    {
      v41 = HGCVBitmap::getCVBitmapStorage(v12, v6);
    }

    v13 = *(a2 + 27);
    if (v13)
    {
      v42 = HGCVBitmap::getCVBitmapStorage(v13, v6);
    }

    v14 = *(a2 + 28);
    if (v14)
    {
      v43 = HGCVBitmap::getCVBitmapStorage(v14, v6);
    }

    return (*(*this + 544))(this, &v33);
  }

  v32 = HGGPURenderer::ConvertToMetalTexture(*a2, *(a2 + 1));
  v16 = *(a2 + 21);
  if (v16)
  {
    v17 = HGGPURenderer::ConvertToMetalTexture(*a2, v16);
    v18 = *(a2 + 22);
    if (v18)
    {
      goto LABEL_21;
    }
  }

  else
  {
    v17 = 0;
    v18 = *(a2 + 22);
    if (v18)
    {
LABEL_21:
      v19 = HGGPURenderer::ConvertToMetalTexture(*a2, v18);
      v20 = *(a2 + 23);
      if (v20)
      {
        goto LABEL_22;
      }

      goto LABEL_30;
    }
  }

  v19 = 0;
  v20 = *(a2 + 23);
  if (v20)
  {
LABEL_22:
    v21 = HGGPURenderer::ConvertToMetalTexture(*a2, v20);
    v22 = *(a2 + 24);
    if (v22)
    {
      goto LABEL_23;
    }

    goto LABEL_31;
  }

LABEL_30:
  v21 = 0;
  v22 = *(a2 + 24);
  if (v22)
  {
LABEL_23:
    v23 = HGGPURenderer::ConvertToMetalTexture(*a2, v22);
    v24 = *(a2 + 25);
    if (v24)
    {
      goto LABEL_24;
    }

    goto LABEL_32;
  }

LABEL_31:
  v23 = 0;
  v24 = *(a2 + 25);
  if (v24)
  {
LABEL_24:
    v25 = HGGPURenderer::ConvertToMetalTexture(*a2, v24);
    v26 = *(a2 + 26);
    if (v26)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  v25 = 0;
  v26 = *(a2 + 26);
  if (v26)
  {
LABEL_25:
    v27 = HGGPURenderer::ConvertToMetalTexture(*a2, v26);
    v28 = *(a2 + 27);
    if (v28)
    {
      goto LABEL_26;
    }

LABEL_34:
    v29 = 0;
    v30 = *(a2 + 28);
    if (v30)
    {
      goto LABEL_27;
    }

LABEL_35:
    v31 = 0;
    goto LABEL_36;
  }

LABEL_33:
  v27 = 0;
  v28 = *(a2 + 27);
  if (!v28)
  {
    goto LABEL_34;
  }

LABEL_26:
  v29 = HGGPURenderer::ConvertToMetalTexture(*a2, v28);
  v30 = *(a2 + 28);
  if (!v30)
  {
    goto LABEL_35;
  }

LABEL_27:
  v31 = HGGPURenderer::ConvertToMetalTexture(*a2, v30);
LABEL_36:
  v33 = *a2;
  v34 = *(a2 + 1);
  CVBitmapStorage = v32;
  v36 = v17;
  v37 = v19;
  v38 = v21;
  v39 = v23;
  v40 = v25;
  v41 = v27;
  v42 = v29;
  v43 = v31;
  result = HGNode::RenderPageDeluxeMetalTextures(this, &v33);
  if (v31)
  {
    result = (*(*v31 + 24))(v31);
  }

  if (v29)
  {
    result = (*(*v29 + 24))(v29);
  }

  if (v27)
  {
    result = (*(*v27 + 24))(v27);
  }

  if (v25)
  {
    result = (*(*v25 + 24))(v25);
  }

  if (v23)
  {
    result = (*(*v23 + 24))(v23);
  }

  if (v21)
  {
    result = (*(*v21 + 24))(v21);
  }

  if (v19)
  {
    result = (*(*v19 + 24))(v19);
  }

  if (v17)
  {
    result = (*(*v17 + 24))(v17);
  }

  if (v32)
  {
    return (*(*v32 + 24))(v32);
  }

  return result;
}

void sub_25FC8C210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  _Unwind_Resume(exception_object);
}

char *HGNode::CreateOutputBuffer(uint64_t a1, uint64_t a2, int a3)
{
  v6 = 0;
  v7 = *(a2 + 8);
  if ((*(a1 + 17) & 0x40) != 0 && v7)
  {
    v6 = !HGRectIsEqual(*(v7 + 20), *(v7 + 28), *(a2 + 16), *(a2 + 24));
  }

  if (!v6 && v7 && (~*(v7 + 12) & 0x220) == 0)
  {
    MetalStorage = HGMetalTexture::getMetalStorage(v7, a2);
    v9 = MetalStorage;
    v10 = *(a1 + 16);
    if ((v10 & 0x8000) != 0)
    {
      v6 = HGMetalTexture::hasComputeUsage(MetalStorage) ^ 1;
      if ((*(a1 + 16) & 0x1000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(v6) = 0;
      if ((v10 & 0x1000) != 0)
      {
LABEL_9:
        v11 = (*(v9 + 12) & 1) == 0;
LABEL_12:
        LOBYTE(v6) = v6 | v11;
        goto LABEL_13;
      }
    }

    v11 = 0;
    goto LABEL_12;
  }

LABEL_13:
  if (!v7 || (v6 & 1) != 0)
  {
    v13 = *a2;
    v14 = *(a2 + 16);
    v15 = *(a2 + 32);
    v16 = *(a1 + 16);
    v17 = *(a2 + 248);

    return HGGPURenderer::CreateBuffer(v13, v14, v15, a3, (v16 >> 12) & 1, v17, (v16 >> 15) & 1);
  }

  else
  {
    (*(*v7 + 16))(v7);
    return v7;
  }
}

void *HGNode::PrepareMetalHandler(HGNode *this, const HGPage *a2)
{
  result = (*(**a2 + 368))(*a2, *(this + 8));
  if (result)
  {
  }

  return result;
}

uint64_t HGNode::RenderPageClassic(HGNode *this, HGBitmap **a2, std::string *a3)
{
  v6 = (*(*this + 48))(this);
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v7;
  if (v7)
  {
    memmove(&__dst, v6, v7);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  HGMetalHandler::SetDebugLabel(a3, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  HGMetalHandler::BindBuffer(a3, a2[1]);
  v10 = a2[21];
  if (v10)
  {
    v9 = HGMetalHandler::BindTexture(a3, 0, v10);
  }

  v11 = a2[22];
  if (v11)
  {
    v9 = HGMetalHandler::BindTexture(a3, 1, v11);
  }

  v12 = a2[23];
  if (v12)
  {
    v9 = HGMetalHandler::BindTexture(a3, 2, v12);
  }

  v13 = a2[24];
  if (v13)
  {
    v9 = HGMetalHandler::BindTexture(a3, 3, v13);
  }

  v14 = a2[25];
  if (v14)
  {
    v9 = HGMetalHandler::BindTexture(a3, 4, v14);
  }

  v15 = a2[26];
  if (v15)
  {
    v9 = HGMetalHandler::BindTexture(a3, 5, v15);
  }

  v16 = a2[27];
  if (v16)
  {
    v9 = HGMetalHandler::BindTexture(a3, 6, v16);
  }

  v17 = a2[28];
  if (v17)
  {
    v9 = HGMetalHandler::BindTexture(a3, 7, v17);
  }

  (*(*this + 488))(this, a2, 0, a3, v9);
  if (*(this + 332) == 1)
  {
    HGMetalHandler::EnableBlending(a3);
    v19 = (*(*this + 256))(this);
    v20 = HGMetalHandler::SetBlendingInfo(a3, v19);
    v21 = (*(*this + 272))(this, v20);
    v18 = HGMetalHandler::SetBlendingColor(a3, v21);
  }

  (*(a3->__r_.__value_.__r.__words[0] + 192))(a3, a2[2], a2[3], 8, v18);
  return (*(*this + 496))(this, a2, 0, a3);
}

void sub_25FC8C8A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGNode::SetFilter(uint64_t a1, int a2, char *a3)
{
  if (*(a1 + 328) == a2)
  {
    return 0;
  }

  *(a1 + 328) = a2;
  HGNode::ClearBits(a1, 0xFFFF, a3);
  return 1;
}

uint64_t HGNode::GetFilter(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 328);
  if (a2)
  {
    if (result == -1)
    {
      return (*(*a2 + 128))(a2, 23);
    }
  }

  return result;
}

uint64_t HGNode::BindTexture(HGNode *this, HGHandler *a2, int a3)
{
  HGHandler::TexCoord(a2, a3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HGNode::Bind(HGNode *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 6), *(this + 11));
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HGNode::DoInplaceHardwareBlending(HGNode *this, HGGPURenderer *a2, HGNode *a3, float a4)
{
  NodeRenderAPI = HGGPURenderer::GetNodeRenderAPI(a2, this);
  v9 = HGGPURenderer::GetNodeRenderAPI(a2, a3);
  if ((*(this + 105) & 1) != 0 || NodeRenderAPI != v9)
  {
    return 0;
  }

  v11 = *(*this + 232);
  v10.n128_f32[0] = a4;

  return v11(this, v10);
}

__n128 HGNode::SetInPlaceHardwareBlendingInfo(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 336) = *a2;
  *(a1 + 352) = v3;
  return result;
}

__n128 HGNode::SetInPlaceHardwareBlendingColor(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[24] = *a2;
  return result;
}

uint64_t HGNode::GetParameterBuffer(HGNode *this, int a2)
{
  if (*(this + 11) <= a2)
  {
    return 0;
  }

  else
  {
    return *(this + 6) + 4 * a2;
  }
}

void HGNode3D::~HGNode3D(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGNode3D::RenderTile(HGNode3D *this, int32x2_t *a2)
{
  v22 = *a2;
  v3 = a2[1].i32[0];
  v4 = a2[1].i32[1] - HIDWORD(*a2);
  __asm { FMOV            V0.4S, #1.0 }

  v25[9] = _Q0;
  v25[10] = xmmword_2603427D0;
  v25[11] = xmmword_260346870;
  v25[12] = xmmword_2603431B0;
  memcpy(__dst, a2, sizeof(__dst));
  __dst[1] = vadd_s32(__dst[0], 0x100000001);
  if (v4 >= 1)
  {
    v10 = v3 - v22.i32[0];
    if (v10 >= 1)
    {
      v11 = 0;
      *v12.f32 = vadd_f32(vcvt_f32_s32(v22), 0x3F0000003F000000);
      v12.i64[1] = 0x3F80000000000000;
      do
      {
        v13 = v10;
        v21 = v12;
        do
        {
          v23 = v12;
          v25[0] = v12;
          v25[1] = v12;
          v25[2] = v12;
          v25[3] = v12;
          v25[4] = v12;
          v25[5] = v12;
          v25[6] = v12;
          v25[7] = v12;
          v25[8] = v12;
          (*(*this + 576))(this, v25, __dst);
          v14 = __dst[2];
          v15 = __dst[4];
          *&__dst[2] += 16;
          *&__dst[4] += 16;
          v16 = __dst[6];
          v17 = __dst[8];
          *&__dst[6] += 16;
          *&__dst[8] += 16;
          v18 = __dst[0].i32[0] + 1;
          v19 = __dst[1].i32[0] + 1;
          ++__dst[0].i32[0];
          ++__dst[1].i32[0];
          v12 = vaddq_f32(v23, xmmword_2603429B0);
          --v13;
        }

        while (v13);
        __dst[2] = (*&v14 - 16 * v10 + 16 * __dst[3].i32[0] + 16);
        __dst[4] = (*&v15 - 16 * v10 + 16 * __dst[5].i32[0] + 16);
        __dst[6] = (*&v16 - 16 * v10 + 16 * __dst[7].i32[0] + 16);
        __dst[8] = (*&v17 - 16 * v10 + 16 * __dst[9].i32[0] + 16);
        __dst[0].i32[0] = v18 - v10;
        ++__dst[0].i32[1];
        __dst[1] = (__PAIR64__(__dst[1].u32[1], v19 - v10) + 0x100000000);
        v12 = vaddq_f32(v21, xmmword_2603429C0);
        ++v11;
      }

      while (v11 != v4);
    }
  }

  return 0;
}

uint64_t HGNode::GetProgramDescriptor@<X0>(HGNode *this@<X0>, void *a2@<X8>)
{
  result = *(this + 50);
  if (result)
  {
    *a2 = result;
LABEL_9:
    v7 = *(*result + 16);

    return v7();
  }

  v5 = HGObject::operator new(0x118uLL);
  HGObject::HGObject(v5);
  *v5 = &unk_28721A520;
  *(v5 + 12) = 0u;
  *(v5 + 13) = 0u;
  *(v5 + 172) = 0u;
  *(v5 + 9) = 0u;
  *(v5 + 10) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 2) = 0u;
  *(v5 + 56) = 1;
  *(v5 + 244) = 0u;
  *(v5 + 69) = 0;
  *(v5 + 228) = 0u;
  *(v5 + 260) = 0u;
  v6 = *(this + 50);
  if (v6 == v5)
  {
    HGObject::Release(v5);
    v5 = *(this + 50);
  }

  else
  {
    if (v6)
    {
      (*(*v6 + 24))(v6);
    }

    *(this + 50) = v5;
  }

  (*(*this + 328))(this, v5);
  result = *(this + 50);
  *a2 = result;
  if (result)
  {
    goto LABEL_9;
  }

  return result;
}

void HGNode::InitNodeChain(HGNode *this, unint64_t a2)
{
  if (!a2)
  {
    v4 = *(this + 37);
LABEL_6:
    *(this + 38) = v4;
    return;
  }

  v2 = *(this + 37);
  v3 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 38) - v2) >> 3);
  if (a2 != v3)
  {
    if (a2 > v3)
    {
      std::vector<HGNodeChain>::__append(this + 296, a2 - v3);
      return;
    }

    if (a2 < v3)
    {
      v4 = v2 + 56 * a2;
      goto LABEL_6;
    }
  }
}

void HGProgramDescriptor::~HGProgramDescriptor(HGProgramDescriptor *this)
{
  HGProgramDescriptor::~HGProgramDescriptor(this);

  HGObject::operator delete(v1);
}

{
  *this = &unk_28721A520;
  v2 = *(this + 32);
  if (v2)
  {
    v3 = *(this + 33);
    v4 = *(this + 32);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 - 17) < 0)
        {
          operator delete(*(v3 - 40));
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *(this + 32);
    }

    *(this + 33) = v2;
    operator delete(v4);
  }

  v5 = *(this + 29);
  if (v5)
  {
    v6 = *(this + 30);
    v7 = *(this + 29);
    if (v6 != v5)
    {
      do
      {
        if (*(v6 - 17) < 0)
        {
          operator delete(*(v6 - 40));
        }

        v6 -= 48;
      }

      while (v6 != v5);
      v7 = *(this + 29);
    }

    *(this + 30) = v5;
    operator delete(v7);
  }

  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
    if ((*(this + 183) & 0x80000000) == 0)
    {
LABEL_19:
      if ((*(this + 159) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_30;
    }
  }

  else if ((*(this + 183) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(*(this + 20));
  if ((*(this + 159) & 0x80000000) == 0)
  {
LABEL_20:
    v8 = *(this + 14);
    if (!v8)
    {
      goto LABEL_21;
    }

LABEL_31:
    v10 = *(this + 15);
    if (v10 == v8)
    {
      *(this + 15) = v8;
      operator delete(v8);
      if (*(this + 111) < 0)
      {
        goto LABEL_38;
      }
    }

    else
    {
      do
      {
        v11 = *(v10 - 1);
        if (v11)
        {
          (*(*v11 + 24))(v11);
        }

        v10 -= 16;
      }

      while (v10 != v8);
      v12 = *(this + 14);
      *(this + 15) = v8;
      operator delete(v12);
      if (*(this + 111) < 0)
      {
        goto LABEL_38;
      }
    }

LABEL_22:
    if ((*(this + 87) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_39;
  }

LABEL_30:
  operator delete(*(this + 17));
  v8 = *(this + 14);
  if (v8)
  {
    goto LABEL_31;
  }

LABEL_21:
  if ((*(this + 111) & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_38:
  operator delete(*(this + 11));
  if ((*(this + 87) & 0x80000000) == 0)
  {
LABEL_23:
    if ((*(this + 63) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(*(this + 8));
  if ((*(this + 63) & 0x80000000) == 0)
  {
LABEL_24:
    if ((*(this + 39) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(*(this + 5));
  if ((*(this + 39) & 0x80000000) == 0)
  {
LABEL_25:
    v9 = this;

    goto LABEL_27;
  }

LABEL_41:
  operator delete(*(this + 2));
  v9 = this;

LABEL_27:
  HGObject::~HGObject(v9);
}

void *std::__hash_table<std::__hash_value_type<HGNode const*,BOOL>,std::__unordered_map_hasher<HGNode const*,std::__hash_value_type<HGNode const*,BOOL>,std::hash<HGNode const*>,std::equal_to<HGNode const*>,true>,std::__unordered_map_equal<HGNode const*,std::__hash_value_type<HGNode const*,BOOL>,std::equal_to<HGNode const*>,std::hash<HGNode const*>,true>,std::allocator<std::__hash_value_type<HGNode const*,BOOL>>>::__emplace_unique_key_args<HGNode const*,std::piecewise_construct_t const&,std::tuple<HGNode const* const&>,std::tuple<>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = HIDWORD(*a2);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFF) + 8) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (v10[2] == v2)
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (v10[2] != v2)
  {
    goto LABEL_12;
  }

  return v10;
}

const void **std::deque<HGNode const*>::__add_front_capacity(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 - v1;
  if (v2 == v1)
  {
    v4 = 0;
  }

  else
  {
    v4 = ((v2 - v1) << 6) - 1;
  }

  v5 = *(a1 + 32);
  if ((v4 - (*(a1 + 40) + v5)) < 0x200)
  {
    v7 = *(a1 + 24);
    v8 = *a1;
    v9 = &v7[-*a1];
    if (v3 < v9)
    {
      if (v1 != v8)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9 >> 2;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(a1 + 32) = v5 + 512;
  v11 = *(v2 - 1);
  *(a1 + 16) = v2 - 8;
  return std::__split_buffer<HGNode **>::emplace_front<HGNode **>(a1, &v11);
}

void sub_25FC8DA88(_Unwind_Exception *a1)
{
  operator delete(v1);
  operator delete(v2);
  _Unwind_Resume(a1);
}

void std::deque<HGNode const*>::__append(void *a1, unint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v5 - v4) << 6) - 1;
  }

  v7 = a1[5];
  v8 = v7 + a1[4];
  v9 = v6 - v8;
  v10 = a2 > v9;
  v11 = a2 - v9;
  if (v10)
  {
    std::deque<HGNode const*>::__add_back_capacity(a1, v11);
    v7 = a1[5];
    v4 = a1[1];
    v5 = a1[2];
    v8 = a1[4] + v7;
  }

  v12 = (v4 + 8 * (v8 >> 9));
  if (v5 != v4)
  {
    v13 = (*v12 + 8 * (v8 & 0x1FF));
    v14 = v13;
    if (a2)
    {
      goto LABEL_9;
    }

LABEL_13:
    v16 = (v4 + 8 * (v8 >> 9));
    if (v13 != v14)
    {
      goto LABEL_16;
    }

    return;
  }

  v13 = 0;
  v14 = 0;
  if (!a2)
  {
    goto LABEL_13;
  }

LABEL_9:
  v15 = a2 + ((v14 - *v12) >> 3);
  if (v15 < 1)
  {
    v17 = 511 - v15;
    v16 = &v12[-(v17 >> 9)];
    v14 = *v16 + 8 * (~v17 & 0x1FF);
    if (v13 != v14)
    {
      do
      {
LABEL_16:
        v18 = v14;
        if (v12 != v16)
        {
          v18 = *v12 + 4096;
        }

        if (v13 == v18)
        {
          if (v12 == v16)
          {
            break;
          }
        }

        else
        {
          v19 = ((v18 - v13 - 8) & 0xFFFFFFFFFFFFFFF8) + 8;
          bzero(v13, v19);
          v7 += v19 >> 3;
          if (v12 == v16)
          {
            break;
          }
        }

        v20 = v12[1];
        ++v12;
        v13 = v20;
      }

      while (v20 != v14);
      a1[5] = v7;
    }
  }

  else
  {
    v16 = &v12[v15 >> 9];
    v14 = *v16 + 8 * (v15 & 0x1FF);
    if (v13 != v14)
    {
      goto LABEL_16;
    }
  }
}

void *std::deque<HGNode const*>::__add_back_capacity(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x1FF) != 0)
  {
    v5 = (v4 >> 9) + 1;
  }

  else
  {
    v5 = v4 >> 9;
  }

  v6 = result[4];
  if (v5 >= v6 >> 9)
  {
    v7 = v6 >> 9;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 9)
  {
    for (result[4] = v6 - (v7 << 9); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 9; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = std::__split_buffer<HGNode **>::emplace_back<HGNode **&>(v2, &v14);
    }
  }

  return result;
}

void sub_25FC8E2F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HGNodeChain>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 56 * ((56 * a2 - 56) / 0x38) + 56;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 3);
    if (v6 + a2 > 0x492492492492492)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v5) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + a2)
    {
      v8 = v6 + a2;
    }

    if (v7 >= 0x249249249249249)
    {
      v9 = 0x492492492492492;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (v9 <= 0x492492492492492)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * ((v4 - *a1) >> 3));
    v12 = 56 * ((56 * a2 - 56) / 0x38) + 56;
    bzero(v11, v12);
    v13 = v4 - v5;
    v14 = &v11[-(v4 - v5)];
    memcpy(v14, v5, v13);
    *a1 = v14;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void HGComicColorStroke::HGComicColorStroke(HGComicColorStroke *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28721A570;
  *(v1 + 408) = 1065353216;
  *(v1 + 16) |= 0x600u;
}

void HGComicColorStroke::~HGComicColorStroke(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicColorStroke::SetParameter(HGComicColorStroke *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 102) == a3)
  {
    return 0;
  }

  *(this + 102) = a3;
  return 1;
}

uint64_t HGComicColorStroke::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HGComicColorStroke::GetROI(HGComicColorStroke *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    v8 = *&a4.var0;
    v9 = *&a4.var2;
    v10 = *(this + 102);
    HGTransform::HGTransform(v17);
    HGTransform::Scale(v17, v10, v10, 1.0);
    *&v18.var0 = 0;
    *&v18.var2 = 0;
    v12 = HGTransformUtils::MinW(v11);
    *&v23.var0 = v9;
    *&v18.var0 = HGTransformUtils::GetROI(v17, v8, v23, 0.5, v12);
    *&v18.var2 = v13;
    *&v21.var0 = 0xFFFFFFF8FFFFFFF8;
    *&v21.var2 = 0x800000008;
    HGRect::Grow(&v18, v21);
    v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v16 = v15;
    *&v22.var0 = v14;
    *&v22.var2 = v16;
    HGRect::Grow(&v18, v22);
    HGTransform::~HGTransform(v17);
    return *&v18.var0;
  }

  else if (a3)
  {
    return HGRectNull;
  }

  else
  {
    v18 = a4;
    *&v19.var0 = 0xFFFFFFF8FFFFFFF8;
    *&v19.var2 = 0x800000008;
    HGRect::Grow(&v18, v19);
    v4 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v6 = v5;
    *&v20.var0 = v4;
    *&v20.var2 = v6;
    HGRect::Grow(&v18, v20);
    return *&v18.var0;
  }
}

uint64_t HGComicColorStroke::RenderTile(HGComicColorStroke *this, HGTile *a2)
{
  v103 = *(this + 102);
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = v103;
  v7 = *(a2 + 2) - *a2;
  v98 = *(a2 + 3) - HIDWORD(*a2);
  if (v98 >= 1 && v7 >= 1)
  {
    v10 = v5;
    v11 = 0;
    *v12.f32 = vadd_f32(vcvt_f32_s32(*a2), 0x3F0000003F000000);
    v12.i64[1] = 0x3F80000000000000;
    v13 = *(a2 + 2);
    v14 = 0uLL;
    __asm
    {
      FMOV            V1.4S, #-1.0
      FMOV            V0.4S, #1.0
    }

    v105 = _Q1;
    v106 = _Q0;
    v21 = v12;
    v102 = v12;
    do
    {
      v100 = v11;
      v22 = 0;
      v99 = v21;
      v23 = v21;
      do
      {
        v26 = *(a2 + 12);
        v27 = *(a2 + 26);
        v28 = vsubq_f32(vmulq_n_f32(v23, v6), v12);
        if (v10)
        {
          v29 = vaddq_s32(vcvtq_s32_f32(v28), vcltzq_f32(v28));
          v30 = vsubq_f32(v28, vcvtq_f32_s32(v29)).u64[0];
          v31 = (v26 + 16 * (v29.i32[0] + v29.i32[1] * v27));
          v32 = vaddq_f32(*v31, vmulq_n_f32(vsubq_f32(v31[1], *v31), v30.f32[0]));
          v33 = vaddq_f32(v32, vmulq_lane_f32(vsubq_f32(vaddq_f32(v31[v27], vmulq_n_f32(vsubq_f32(v31[v27 + 1], v31[v27]), v30.f32[0])), v32), v30, 1));
          v34 = *(a2 + 10);
          v35 = *(a2 + 22);
          v36 = vsubq_f32(v23, v12);
          v37 = vaddq_s32(vcvtq_s32_f32(v36), vcltzq_f32(v36));
          v36.i64[0] = vsubq_f32(v36, vcvtq_f32_s32(v37)).u64[0];
          v38 = (v34 + 16 * (v37.i32[0] + v37.i32[1] * v35));
          v39 = vaddq_f32(*v38, vmulq_n_f32(vsubq_f32(v38[1], *v38), v36.f32[0]));
          v40 = vsubq_f32(vaddq_f32(v38[v35], vmulq_n_f32(vsubq_f32(v38[v35 + 1], v38[v35]), v36.f32[0])), v39);
          v41 = vaddq_f32(v39, vmulq_lane_f32(v40, *v36.f32, 1));
        }

        else
        {
          v42.i64[0] = 0x3F0000003F000000;
          v42.i64[1] = 0x3F0000003F000000;
          v43 = vaddq_f32(v28, v42);
          v44 = vcvtq_s32_f32(v43);
          v43.i64[0] = vaddq_s32(v44, vcgtq_f32(vcvtq_f32_s32(v44), v43)).u64[0];
          v33 = *(v26 + 16 * (v43.i32[0] + v43.i32[1] * v27));
          v34 = *(a2 + 10);
          v35 = *(a2 + 22);
          v45.i64[0] = 0x3F0000003F000000;
          v45.i64[1] = 0x3F0000003F000000;
          v46 = vaddq_f32(vsubq_f32(v23, v12), v45);
          v47 = vcvtq_s32_f32(v46);
          v40 = vcvtq_f32_s32(v47);
          v46.i64[0] = vaddq_s32(v47, vcgtq_f32(v40, v46)).u64[0];
          v41 = *(v34 + 16 * (v46.i32[0] + v46.i32[1] * v35));
        }

        v48 = vdupq_lane_s32(*v33.i8, 1);
        v40.i64[0] = 0;
        v49 = v33;
        v49.i32[1] = 0;
        v50 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v40, v48), vcgeq_f32(v48, v40))), 0), v49, v33);
        v51 = vdupq_laneq_s32(v50, 2);
        v52 = v50;
        v52.i32[2] = 0;
        v50.i64[0] = vextq_s8(vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vorrq_s8(vcgtq_f32(v40, v51), vcgeq_f32(v51, v40))), 0), v52, v50), v14, 4uLL).u64[0];
        v53 = vminnmq_f32(vmaxnmq_f32(vaddq_f32(vaddq_f32(v50.u64[0], v50.u64[0]), v105), v105), v106);
        v54 = vnegq_f32(v53);
        v55 = vdup_n_s32(v35);
        v56 = -1;
        v57 = v35;
        v101 = v41.i32[3];
        v58 = v41;
        v59 = xmmword_260344B50;
        v104 = v23;
        do
        {
          v107 = v59;
          v108 = v58;
          v109 = v54;
          v110 = v53;
          *v64.i32 = expf(v56 / 48.0);
          v12 = v102;
          v65 = vaddq_f32(v104, v110.u64[0]);
          v66 = vsubq_f32(v65, v102);
          if (v10)
          {
            v67 = vaddq_s32(vcvtq_s32_f32(v66), vcltzq_f32(v66));
            v68 = vsubq_f32(v66, vcvtq_f32_s32(v67)).u64[0];
            v69 = vaddq_f32(v104, v109.u64[0]);
            v70 = vsubq_f32(v69, v102);
            v71 = vaddq_s32(vcvtq_s32_f32(v70), vcltzq_f32(v70));
            v70.i64[0] = vsubq_f32(v70, vcvtq_f32_s32(v71)).u64[0];
            *v67.i8 = vmla_s32(vzip1_s32(*v67.i8, *v71.i8), vzip2_s32(*v67.i8, *v71.i8), v55);
            v72 = v67.i32[1];
            v73 = (v34 + 16 * v67.i32[0]);
            v74 = vaddq_f32(*v73, vmulq_n_f32(vsubq_f32(v73[1], *v73), v68.f32[0]));
            v75 = vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v73[v57], vmulq_n_f32(vsubq_f32(v73[v57 + 1], v73[v57]), v68.f32[0])), v74), v68, 1));
            v76 = (v34 + 16 * v72);
            v77 = vaddq_f32(*v76, vmulq_n_f32(vsubq_f32(v76[1], *v76), v70.f32[0]));
            v78 = vaddq_f32(v75, vaddq_f32(v77, vmulq_lane_f32(vsubq_f32(vaddq_f32(v76[v57], vmulq_n_f32(vsubq_f32(v76[v57 + 1], v76[v57]), v70.f32[0])), v77), *v70.f32, 1)));
            v6 = v103;
            v79 = vsubq_f32(vmulq_n_f32(v65, v103), v102);
            v80 = vaddq_s32(vcvtq_s32_f32(v79), vcltzq_f32(v79));
            v79.i64[0] = vsubq_f32(v79, vcvtq_f32_s32(v80)).u64[0];
            v81 = (v26 + 16 * (v80.i32[0] + v80.i32[1] * v27));
            v82 = vaddq_f32(*v81, vmulq_n_f32(vsubq_f32(v81[1], *v81), v79.f32[0]));
            v83 = vaddq_f32(v82, vmulq_lane_f32(vsubq_f32(vaddq_f32(v81[v27], vmulq_n_f32(vsubq_f32(v81[v27 + 1], v81[v27]), v79.f32[0])), v82), *v79.f32, 1));
            v84 = vsubq_f32(vmulq_n_f32(v69, v103), v102);
            v85 = v107;
            v94 = vaddq_s32(vcvtq_s32_f32(v84), vcltzq_f32(v84));
            v84.i64[0] = vsubq_f32(v84, vcvtq_f32_s32(v94)).u64[0];
            v95 = (v26 + 16 * (v94.i32[0] + v94.i32[1] * v27));
            v96 = vaddq_f32(*v95, vmulq_n_f32(vsubq_f32(v95[1], *v95), v84.f32[0]));
            v97 = vaddq_f32(v96, vmulq_lane_f32(vsubq_f32(vaddq_f32(v95[v27], vmulq_n_f32(vsubq_f32(v95[v27 + 1], v95[v27]), v84.f32[0])), v96), *v84.f32, 1));
          }

          else
          {
            v86.i64[0] = 0x3F0000003F000000;
            v86.i64[1] = 0x3F0000003F000000;
            v87 = vaddq_f32(v66, v86);
            v88 = vcvtq_s32_f32(v87);
            v89 = vaddq_f32(v104, v109.u64[0]);
            v90 = vaddq_f32(vsubq_f32(v89, v102), v86);
            v91 = vcvtq_s32_f32(v90);
            *v87.f32 = vadd_s32(*v88.i8, *&vcgtq_f32(vcvtq_f32_s32(v88), v87));
            *v88.i8 = vadd_s32(*v91.i8, *&vcgtq_f32(vcvtq_f32_s32(v91), v90));
            *v87.f32 = vmla_s32(vzip1_s32(*v87.f32, *v88.i8), vzip2_s32(*v87.f32, *v88.i8), v55);
            v78 = vaddq_f32(*(v34 + 16 * v87.i32[0]), *(v34 + 16 * v87.i32[1]));
            v6 = v103;
            v92 = vaddq_f32(vsubq_f32(vmulq_n_f32(v65, v103), v102), v86);
            v93 = vcvtq_s32_f32(v92);
            v92.i64[0] = vaddq_s32(v93, vcgtq_f32(vcvtq_f32_s32(v93), v92)).u64[0];
            v83 = *(v26 + 16 * (v92.i32[0] + v92.i32[1] * v27));
            v85 = v107;
            v93.i64[0] = 0x3F0000003F000000;
            v93.i64[1] = 0x3F0000003F000000;
            v60 = vaddq_f32(vsubq_f32(vmulq_n_f32(v89, v103), v102), v93);
            v61 = vcvtq_s32_f32(v60);
            v60.i64[0] = vaddq_s32(v61, vcgtq_f32(vcvtq_f32_s32(v61), v60)).u64[0];
            v97 = *(v26 + 16 * (v60.i32[0] + v60.i32[1] * v27));
          }

          v59 = vaddq_f32(v85, vdupq_lane_s32(v64, 0));
          v58 = vaddq_f32(v108, vmulq_n_f32(v78, *v64.i32));
          v62 = vextq_s8(v83, 0, 4uLL).u64[0];
          v53 = vaddq_f32(v110, vminnmq_f32(vmaxnmq_f32(vaddq_f32(vaddq_f32(v62, v62), v105), v105), v106));
          v14 = 0uLL;
          v63 = vextq_s8(v97, 0, 4uLL).u64[0];
          v54 = vaddq_f32(v109, vminnmq_f32(vmaxnmq_f32(vaddq_f32(vaddq_f32(v63, v63), v105), v105), v106));
          --v56;
        }

        while (v56 != -8);
        v24.i64[0] = 0x3F0000003F000000;
        v24.i64[1] = 0x3F0000003F000000;
        v25 = vdivq_f32(vmulq_f32(v58, v24), v59);
        v25.i32[3] = v101;
        *(v13 + 16 * v22) = vmaxnmq_f32(vminnmq_f32(v25, v106), 0);
        v23 = vaddq_f32(v104, xmmword_2603429B0);
        ++v22;
      }

      while (v22 != v7);
      v21 = vaddq_f32(v99, xmmword_2603429C0);
      v13 += 16 * *(a2 + 6);
      v11 = v100 + 1;
    }

    while (v100 + 1 != v98);
  }

  return 0;
}

const char *HGComicColorStroke::GetProgram(HGComicColorStroke *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) > 0x60B0F)
  {
    return "//Metal1.0     \n//LEN=00000008b5\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]],\n                                  texture2d< half >      hg_Texture1 [[ texture(1) ]],\n                                  sampler                hg_Sampler1 [[ sampler(1) ]])\n{\n    // Get the 0'th normal (e0, for an exponent value of 0, so the coeff is 1.0)\n    float2 pointer = static_cast<float2>(hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).yz * 2.0f) - 1.0f;\n    float2 pointerRBack = -pointer;\n    \n    half4 acc = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    half3 norma = {0.5h, 0.5h, 0.5h};\n\n    for (int i {1}; i < 8; ++i)\n    {\n        half coeff = exp(static_cast<half>(-i) / 48.0h);\n        norma += coeff;\n        \n        const float2 uPos0 = frag._texCoord0.xy + pointer;\n        const float2 uNeg0 = frag._texCoord0.xy + pointerRBack;\n        \n        const float2 uPos1 = frag._texCoord1.xy + pointer;\n        const float2 uNeg1 = frag._texCoord1.xy + pointerRBack;\n        \n        float2 acc_ptrTexCoord = uPos0;\n        float2 acc_ptrBackTexCoord = uNeg0;\n        \n        float2 grad_ptrTexCoord = uPos1;\n        float2 grad_ptrBackTexCoord = uNeg1;\n    \n        acc.rgb += coeff * (hg_Texture0.sample(hg_Sampler0, acc_ptrTexCoord).xyz +\n                            hg_Texture0.sample(hg_Sampler0, acc_ptrBackTexCoord).xyz);\n\n        pointer += static_cast<float2>(hg_Texture1.sample(hg_Sampler1, grad_ptrTexCoord).yz * 2.0f) - 1.0f;\n        pointerRBack -= static_cast<float2>(hg_Texture1.sample(hg_Sampler1, grad_ptrBackTexCoord).yz * 2.0f) - 1.0f;\n    }\n\n    FragmentOut out {float4(float3(acc.xyz * 0.5h / norma), acc.a)};\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    out.color0 = clamp(out.color0, 0.0f, 1.0f);\n    \n    return out;\n}\n//MD5=4e997c85:a0f6903a:77463274:2dba1821\n//SIG=00000000:00000000:00000000:00000003:000f:0000:0000:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    return "//GLfs1.0      \n//LEN=000000079c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#define precision\n#define defaultp mediump\n#endif\n\n \nprecision highp float;\nprecision highp int;\n\nuniform defaultp sampler2DRect hg_Texture0;\nuniform defaultp sampler2DRect hg_Texture1;\n\nvoid main (void) \n{\n    float alpha = texture2DRect( hg_Texture0, gl_TexCoord[0].xy).a;\n    vec3 acc  =  texture2DRect( hg_Texture0, gl_TexCoord[0].xy).xyz; //L de LAB\n    vec3 norma  =  vec3(0.5,0.5,0.5) ;\n    \n    vec2 gradient = texture2DRect(hg_Texture1, gl_TexCoord[1].xy).yz; //DIRECCIONES\n    vec2 vdire = vec2( gradient.x*2.0-1.0 , gradient.y*2.0-1.0) ;\n    vec2 pointer = vec2( vdire.x  , vdire.y ) ;\n\n    vdire =   vec2( -(gradient.x*2.0-1.0) , -(gradient.y*2.0-1.0)) ;\n    vec2 pointerRBack =   vec2(  vdire.x  ,  vdire.y ) ;\n\n    for (float  i=1.0 ;i < 8.0 ;i++)    // direccion normal   1 - 7\n    {\n        float coeff =  exp(  - i / 48.0) ;\n        \n        vec2 uPos0 = gl_TexCoord[0].xy + pointer;\n        vec2 uNeg0 = gl_TexCoord[0].xy + pointerRBack;\n\n        vec2 uPos1 = gl_TexCoord[1].xy + pointer;\n        vec2 uNeg1 = gl_TexCoord[1].xy + pointerRBack;\n\n        acc  +=coeff * (texture2DRect(hg_Texture0, uPos0).xyz +\n                        texture2DRect(hg_Texture0, uNeg0).xyz);\n\n        norma += coeff;\n\n        gradient  = texture2DRect(hg_Texture1, uPos1).yz; //DIRECCIONES\n        vdire =   vec2( gradient.x*2.0-1.0 , gradient.y*2.0-1.0);\n        pointer +=  vdire  ;\n\n        gradient  = texture2DRect(hg_Texture1, uNeg1).yz; //DIRECCIONES\n        vdire =   vec2(-( gradient.x*2.0-1.0) , -(gradient.y*2.0-1.0));\n        pointerRBack +=  vdire  ;\n    }\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    gl_FragColor = clamp(vec4( acc*0.5/norma, alpha), 0.0, 1.0);\n}\n//MD5=3f48c7c9:9fb108b9:ab3c5d18:9729c820\n//SIG=00000000:00000000:00000000:00000000:0032:0000:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  return 0;
}

uint64_t HGComicColorStroke::BindTexture(HGComicColorStroke *this, HGHandler *a2, uint64_t a3)
{
  if (a3 == 1)
  {
    HGHandler::TexCoord(a2, 1, 0, 0, 0);
    (*(*a2 + 104))(a2, *(this + 102), *(this + 102), 1.0);
  }

  else if (!a3)
  {
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
  }

  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

uint64_t HGMetalFunctionCache::HGMetalFunctionCache(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 1065353216;
  pthread_mutex_init((a1 + 48), 0);
  return a1;
}

uint64_t *HGMetalFunctionCache::getFunction(uint64_t a1, const std::string *a2, uint64_t a3)
{
  memset(&__p, 0, sizeof(__p));
  std::string::operator=(&__p, a2);
  v9 = a3;
  pthread_mutex_lock((a1 + 48));
  v5 = std::__hash_table<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::__unordered_map_hasher<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,HGMetalFunctionCache::InfoHash,std::equal_to<HGMetalFunctionCache::Info>,true>,std::__unordered_map_equal<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::equal_to<HGMetalFunctionCache::Info>,HGMetalFunctionCache::InfoHash,true>,std::allocator<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>>>::find<HGMetalFunctionCache::Info>((a1 + 8), &__p);
  if (v5)
  {
    v6 = v5[6];
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock((a1 + 48));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6;
}

void sub_25FC8F060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *HGMetalFunctionCache::getFunctionWithSource(uint64_t a1, std::string *a2, uint64_t a3, uint64_t *a4)
{
  memset(&__p, 0, sizeof(__p));
  std::string::operator=(&__p, a2);
  v12 = a3;
  pthread_mutex_lock((a1 + 48));
  v8 = std::__hash_table<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::__unordered_map_hasher<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,HGMetalFunctionCache::InfoHash,std::equal_to<HGMetalFunctionCache::Info>,true>,std::__unordered_map_equal<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::equal_to<HGMetalFunctionCache::Info>,HGMetalFunctionCache::InfoHash,true>,std::allocator<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>>>::find<HGMetalFunctionCache::Info>((a1 + 8), &__p);
  if (v8)
  {
    FunctionWithSource = v8[6];
  }

  else
  {
    FunctionWithSource = HGMetalFunctionCache::_createFunctionWithSource(a1, a2, a4);
    if (FunctionWithSource)
    {
      p_p = &__p;
      std::__hash_table<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::__unordered_map_hasher<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,HGMetalFunctionCache::InfoHash,std::equal_to<HGMetalFunctionCache::Info>,true>,std::__unordered_map_equal<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::equal_to<HGMetalFunctionCache::Info>,HGMetalFunctionCache::InfoHash,true>,std::allocator<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>>>::__emplace_unique_key_args<HGMetalFunctionCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalFunctionCache::Info const&>,std::tuple<>>((a1 + 8), &__p)[6] = FunctionWithSource;
    }
  }

  pthread_mutex_unlock((a1 + 48));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return FunctionWithSource;
}

void sub_25FC8F164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalFunctionCache::_createFunctionWithSource(id *a1, uint64_t *a2, uint64_t *a3)
{
  HGTraceGuard::HGTraceGuard(v22, "metal", 2, "HGMetalFunctionCache::_createFunctionWithSource()");
  if (*(a3 + 23) >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = *a3;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  v8 = objc_alloc_init(MEMORY[0x277CD6D08]);
  [v8 setLanguageVersion:131075];
  [v8 setFastMathEnabled:1];
  v21 = 0;
  v9 = [*a1 newLibraryWithSource:v7 options:v8 error:&v21];

  if (v21 && ((v10 = [objc_msgSend(v21 "localizedDescription")], *(a3 + 23) >= 0) ? (v13 = a3) : (v13 = *a3), HGLogger::warning("Failed to compile metal shader library!\n\n%s\n\n%s\n", v11, v12, v10, v13), objc_msgSend(v21, "code") != 4))
  {
    if (v9)
    {
    }

    v17 = 0;
  }

  else
  {
    if (*(a2 + 23) >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    v17 = [v9 newFunctionWithName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v14)}];
    if (!v17)
    {
      v18 = atomic_load(HGLogger::_enabled);
      if (v18)
      {
        if (*(a2 + 23) >= 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = *a2;
        }

        HGLogger::log("metal", 1, "failed to retrieve %s from compiler shader!\n", v15, v16, v19);
      }
    }

    if (v9)
    {
    }
  }

  HGTraceGuard::~HGTraceGuard(v22);
  return v17;
}

void sub_25FC8F318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8F32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8F340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8F354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t *HGMetalFunctionCache::getFunctionWithLibrary(uint64_t a1, std::string *a2, uint64_t a3)
{
  memset(&__p, 0, sizeof(__p));
  std::string::operator=(&__p, a2);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = a3;
  }

  else
  {
    v7 = *a3;
  }

  if (v6 >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v13 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&p_p, v7, v8);
  pthread_mutex_lock((a1 + 48));
  v9 = std::__hash_table<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::__unordered_map_hasher<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,HGMetalFunctionCache::InfoHash,std::equal_to<HGMetalFunctionCache::Info>,true>,std::__unordered_map_equal<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::equal_to<HGMetalFunctionCache::Info>,HGMetalFunctionCache::InfoHash,true>,std::allocator<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>>>::find<HGMetalFunctionCache::Info>((a1 + 8), &__p);
  if (v9)
  {
    FunctionWithLibrary = v9[6];
  }

  else
  {
    FunctionWithLibrary = HGMetalFunctionCache::_createFunctionWithLibrary(a1, a2, a3);
    if (FunctionWithLibrary)
    {
      p_p = &__p;
      std::__hash_table<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::__unordered_map_hasher<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,HGMetalFunctionCache::InfoHash,std::equal_to<HGMetalFunctionCache::Info>,true>,std::__unordered_map_equal<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::equal_to<HGMetalFunctionCache::Info>,HGMetalFunctionCache::InfoHash,true>,std::allocator<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>>>::__emplace_unique_key_args<HGMetalFunctionCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalFunctionCache::Info const&>,std::tuple<>>((a1 + 8), &__p)[6] = FunctionWithLibrary;
    }
  }

  pthread_mutex_unlock((a1 + 48));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return FunctionWithLibrary;
}

void sub_25FC8F468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *HGMetalFunctionCache::_createFunctionWithLibrary(id *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a3;
  if (*(a3 + 23) < 0)
  {
    if (!a3[1])
    {
      goto LABEL_7;
    }

    a3 = *a3;
LABEL_6:
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
    goto LABEL_8;
  }

  if (*(a3 + 23))
  {
    goto LABEL_6;
  }

LABEL_7:
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")];
  if (!v6)
  {
    HGLogger::warning("Failed to retrieve path for library default.metallib\n", v7, v8);
    return v6;
  }

LABEL_8:
  v21 = 0;
  v9 = [*a1 newLibraryWithURL:objc_msgSend(MEMORY[0x277CBEBC0] error:{"fileURLWithPath:", v6), &v21}];
  if (v21)
  {
    v10 = [v6 UTF8String];
    v11 = [objc_msgSend(v21 "localizedDescription")];
    HGLogger::warning("Failed to create new metal library from %s:\\n\n%s\n\n", v12, v13, v10, v11);
    if ([v21 code] != 4)
    {
      v6 = 0;
      if (!v9)
      {
        return v6;
      }

LABEL_25:

      return v6;
    }
  }

  if (*(a2 + 23) >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v6 = [v9 newFunctionWithName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", v14)}];
  if (!v6)
  {
    v17 = atomic_load(HGLogger::_enabled);
    if (v17)
    {
      if (*(a2 + 23) >= 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = *a2;
      }

      if (*(v3 + 23) >= 0)
      {
        v19 = v3;
      }

      else
      {
        v19 = *v3;
      }

      HGLogger::log("metal", 1, "failed to retrieve %s from metal library %s!\n", v15, v16, v18, v19);
    }
  }

  if (v9)
  {
    goto LABEL_25;
  }

  return v6;
}

uint64_t HGMetalRenderPipelineStateCache::Info::operator<(int *a1, int *a2)
{
  v2 = *(a1 + 49);
  v3 = *(a2 + 49);
  if (v2 < v3)
  {
    return 1;
  }

  if (v3 < v2)
  {
    return 0;
  }

  v5 = *(a1 + 50);
  v6 = *(a2 + 50);
  if (v5 < v6)
  {
    return 1;
  }

  if (v6 >= v5)
  {
    v11 = *(a1 + 51);
    v10 = *(a1 + 52);
    v12 = *(a2 + 51);
    v13 = *(a2 + 52);
    if (v12 != v13)
    {
      v14 = v12 + 1;
      v15 = *(a1 + 51);
      while (v15 != v10)
      {
        v16 = *v15;
        v17 = *(v14 - 1);
        if (*v15 < v17)
        {
          break;
        }

        ++v15;
        if (v17 < v16 || v14++ == v13)
        {
          goto LABEL_18;
        }
      }

      return 1;
    }

LABEL_18:
    if (v11 == v10)
    {
LABEL_27:
      v23 = a1[96];
      v24 = a2[96];
      if (v23 < v24)
      {
        return 1;
      }

      if (v24 >= v23)
      {
        v25 = *(a1 + 388);
        v26 = *(a2 + 388);
        v27 = v25 >= v26;
        v9 = v25 < v26;
        if (!v27)
        {
          return v9;
        }
      }
    }

    else
    {
      v19 = v11 + 1;
      while (v12 != v13)
      {
        v20 = *v12;
        v21 = *(v19 - 1);
        if (*v12 < v21)
        {
          break;
        }

        ++v12;
        if (v21 < v20 || v19++ == v10)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v7 = *(a2 + 50);
  v8 = *(a1 + 50);
  if (v7 >= v8)
  {
    if (v8 >= v7)
    {
      v31 = *(a2 + 51);
      v30 = *(a2 + 52);
      v32 = *(a1 + 51);
      v33 = *(a1 + 52);
      if (v32 != v33)
      {
        v34 = v32 + 1;
        v35 = *(a2 + 51);
        while (v35 != v30)
        {
          v36 = *v35;
          v37 = *(v34 - 1);
          if (*v35 < v37)
          {
            break;
          }

          ++v35;
          if (v37 < v36 || v34++ == v33)
          {
            goto LABEL_44;
          }
        }

        return 0;
      }

LABEL_44:
      if (v31 == v30)
      {
LABEL_53:
        v43 = a2[96];
        v44 = a1[96];
        if (v43 < v44 || v44 >= v43 && *(a2 + 388) < *(a1 + 388))
        {
          return 0;
        }
      }

      else
      {
        v39 = v31 + 1;
        while (v32 != v33)
        {
          v40 = *v32;
          v41 = *(v39 - 1);
          if (*v32 < v41)
          {
            break;
          }

          ++v32;
          if (v41 < v40 || v39++ == v30)
          {
            goto LABEL_53;
          }
        }
      }
    }

    v28 = *a1;
    v29 = *a2;
    if (*a1 >= *a2)
    {
      v45 = 0;
      v46 = a2;
      v47 = a1;
      while (1)
      {
        if (v29 >= v28)
        {
          v48 = *(v47 + 40);
          v49 = *(v46 + 40);
          if (v48 < v49)
          {
            return 1;
          }

          if (v49 >= v48 && v48 != 0)
          {
            v51 = a1;
            v52 = a2;
            if (HGBlendingInfo::operator<((v47 + 2), (v46 + 2)))
            {
              return 1;
            }

            v29 = *v46;
            v28 = *v47;
            a2 = v52;
            a1 = v51;
          }
        }

        if (v29 < v28)
        {
          return 0;
        }

        if (v28 < v29)
        {
          goto LABEL_74;
        }

        v53 = *(v46 + 40);
        v54 = *(v47 + 40);
        if (v53 < v54)
        {
          return 0;
        }

        if (v54 >= v53 && *(v46 + 40))
        {
          v55 = a1;
          v56 = a2;
          v57 = HGBlendingInfo::operator<((v46 + 2), (v47 + 2));
          v9 = 0;
          if (v57)
          {
            return v9;
          }

          ++v45;
          a2 = v56;
          a1 = v55;
          if (v45 == 8)
          {
            return v9;
          }
        }

        else
        {
LABEL_74:
          if (++v45 == 8)
          {
            return 0;
          }
        }

        v47 = &a1[12 * v45];
        v46 = &a2[12 * v45];
        v28 = *v47;
        v29 = *v46;
        v9 = 1;
        if (*v47 < *v46)
        {
          return v9;
        }
      }
    }

    return 1;
  }

  return 0;
}

uint64_t HGMetalRenderPipelineStateCache::HGMetalRenderPipelineStateCache(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  pthread_mutex_init((a1 + 32), 0);
  return a1;
}

uint64_t HGMetalRenderPipelineStateCache::clear(HGMetalRenderPipelineStateCache *this)
{
  pthread_mutex_lock((this + 32));
  v2 = *(this + 1);
  if (v2 != (this + 16))
  {
    do
    {
      v4 = v2[58];
      if (v4)
      {
      }

      v5 = v2[1];
      v6 = v2;
      if (v5)
      {
        do
        {
          v7 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = *(v6 + 2);
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (!v8);
      }

      if (*(this + 1) == v2)
      {
        *(this + 1) = v7;
      }

      v9 = *(this + 2);
      --*(this + 3);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v9, v2);
      v10 = v2[55];
      if (v10)
      {
        v2[56] = v10;
        operator delete(v10);
      }

      operator delete(v2);
      v2 = v7;
    }

    while (v7 != (this + 16));
  }

  return pthread_mutex_unlock((this + 32));
}

void *HGMetalRenderPipelineStateCache::getRenderPipelineState(uint64_t a1, int *a2)
{
  pthread_mutex_lock((a1 + 32));
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = a1 + 16;
  do
  {
    v6 = HGMetalRenderPipelineStateCache::Info::operator<((v4 + 32), a2);
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
      v5 = v4;
    }

    v4 = *(v4 + v7);
  }

  while (v4);
  if (v5 == a1 + 16 || HGMetalRenderPipelineStateCache::Info::operator<(a2, (v5 + 32)))
  {
LABEL_11:
    RenderPipelineState = HGMetalRenderPipelineStateCache::_createRenderPipelineState(a1, a2);
    *(std::__tree<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::__map_value_compare<HGMetalRenderPipelineStateCache::Info,std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::less<HGMetalRenderPipelineStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>>>::__emplace_unique_key_args<HGMetalRenderPipelineStateCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalRenderPipelineStateCache::Info const&>,std::tuple<>>(a1 + 8, a2) + 464) = RenderPipelineState;
  }

  v9 = *(std::__tree<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::__map_value_compare<HGMetalRenderPipelineStateCache::Info,std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::less<HGMetalRenderPipelineStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>>>::__emplace_unique_key_args<HGMetalRenderPipelineStateCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalRenderPipelineStateCache::Info const&>,std::tuple<>>(a1 + 8, a2) + 464);
  pthread_mutex_unlock((a1 + 32));
  v10 = v9;
  return v9;
}

void *HGMetalRenderPipelineStateCache::_createRenderPipelineState(id *a1, unsigned int *a2)
{
  HGTraceGuard::HGTraceGuard(v25, "mtl_utils", 2, "HGMetalRenderPipelineStateCache::_createRenderPipelineState()");
  v4 = objc_opt_new();
  [v4 setStencilAttachmentPixelFormat:0];
  [v4 setRasterSampleCount:a2[96]];
  [v4 setVertexFunction:*(a2 + 49)];
  [v4 setFragmentFunction:*(a2 + 50)];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = *(a2 + 51);
  for (i = *(a2 + 52); v6 != i; ++v6)
  {
    [v5 addObject:*v6];
  }

  if ([v5 count])
  {
    v8 = [MEMORY[0x277CD6EB8] linkedFunctions];
    [v8 setPrivateFunctions:v5];
    [v4 setFragmentLinkedFunctions:v8];
  }

  v9 = 0;
  v10 = a2;
  do
  {
    [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
    if (*(v10 + 40) == 1)
    {
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      v13 = atomic_load(HGLogger::_enabled);
      if (v13)
      {
        HGLogger::log("mtl_utils", 3, "[BLENDING ON] for unit: %d\n", v11, v12, v9);
      }

      HGMetalBlendingInfo::HGMetalBlendingInfo(v24, (v10 + 2));
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
    }

    else
    {
      [objc_msgSend(objc_msgSend(v4 "colorAttachments")];
    }

    ++v9;
    v10 += 12;
  }

  while (v9 != 8);
  if (*(a2 + 388))
  {
    v15 = 252;
  }

  else
  {
    v15 = 0;
  }

  [v4 setDepthAttachmentPixelFormat:v15];
  v24[0] = 0;
  v16 = [*a1 newRenderPipelineStateWithDescriptor:v4 error:v24];

  if (v24[0])
  {
    v19 = atomic_load(HGLogger::_enabled);
    if (v19)
    {
      HGLogger::log("mtl_utils", 1, "failed to create pipeline state! boo!\n", v17, v18);
    }

    v20 = [objc_msgSend(v24[0] "localizedDescription")];
    HGLogger::warning("MTLPipelineState error: %s", v21, v22, v20);
    if (v16)
    {

      v16 = 0;
    }
  }

  HGTraceGuard::~HGTraceGuard(v25);
  return v16;
}

void sub_25FC8FEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8FEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8FED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8FEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8FEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8FF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC8FF24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGMetalSamplerStateCache::HGMetalSamplerStateCache(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  pthread_mutex_init((a1 + 32), 0);
  return a1;
}

uint64_t *HGMetalSamplerStateCache::getSamplerState(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 32));
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = (a1 + 16);
  v9 = *(a2 + 24);
  do
  {
    while (1)
    {
      v10 = v4[4];
      if (v10 >= v6)
      {
        if (v10 > v6)
        {
          break;
        }

        v11 = v4[5];
        if (v11 >= v5)
        {
          if (v11 > v5)
          {
            break;
          }

          v12 = v4[6];
          if (v12 >= v7 && (v12 > v7 || *(v4 + 56) >= v9))
          {
            break;
          }
        }
      }

      v4 = v4[1];
      if (!v4)
      {
        goto LABEL_14;
      }
    }

    v8 = v4;
    v4 = *v4;
  }

  while (v4);
LABEL_14:
  if (v8 == (a1 + 16) || (v13 = v8[4], v6 < v13) || v6 <= v13 && ((v18 = v8[5], v5 < v18) || v5 <= v18 && ((v19 = v8[6], v7 < v19) || v7 <= v19 && v9 < *(v8 + 56))))
  {
LABEL_16:
    SamplerState = HGMetalSamplerStateCache::_createSamplerState(a1, a2);
    std::__tree<std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>,std::__map_value_compare<HGMetalSamplerStateCache::Info,std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>,std::less<HGMetalSamplerStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>>>::__emplace_unique_key_args<HGMetalSamplerStateCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalSamplerStateCache::Info const&>,std::tuple<>>(a1 + 8, a2)[8] = SamplerState;
  }

  v15 = std::__tree<std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>,std::__map_value_compare<HGMetalSamplerStateCache::Info,std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>,std::less<HGMetalSamplerStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>>>::__emplace_unique_key_args<HGMetalSamplerStateCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalSamplerStateCache::Info const&>,std::tuple<>>(a1 + 8, a2)[8];
  pthread_mutex_unlock((a1 + 32));
  v16 = v15;
  return v15;
}

uint64_t HGMetalSamplerStateCache::_createSamplerState(id *a1, uint64_t a2)
{
  HGTraceGuard::HGTraceGuard(v7, "metal", 2, "HGMetalSamplerStateCache::_createSamplerState()");
  v4 = objc_opt_new();
  [v4 setMinFilter:*a2];
  [v4 setMagFilter:*(a2 + 8)];
  [v4 setRAddressMode:*(a2 + 16)];
  [v4 setSAddressMode:*(a2 + 16)];
  [v4 setTAddressMode:*(a2 + 16)];
  [v4 setNormalizedCoordinates:*(a2 + 24)];
  v5 = [*a1 newSamplerStateWithDescriptor:v4];

  HGTraceGuard::~HGTraceGuard(v7);
  return v5;
}

uint64_t HGMetalDepthStencilStateCache::HGMetalDepthStencilStateCache(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  pthread_mutex_init((a1 + 32), 0);
  return a1;
}

void *HGMetalDepthStencilStateCache::getDepthStencilState(uint64_t a1, unsigned __int8 *a2)
{
  pthread_mutex_lock((a1 + 32));
  v5 = (a1 + 16);
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_15;
  }

  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = (a1 + 16);
  v9 = *(a1 + 16);
  do
  {
    v10 = *(v9 + 32);
    if (v10 < v6)
    {
      ++v9;
    }

    else if (v10 > v6)
    {
      v8 = v9;
    }

    else
    {
      v11 = v9[5];
      v12 = v11 >= v7;
      v13 = v11 < v7;
      if (v12)
      {
        v8 = v9;
      }

      v9 += v13;
    }

    v9 = *v9;
  }

  while (v9);
  if (v8 == v5 || (v14 = *(v8 + 32), v6 < v14) || v6 <= v14 && v7 < v8[5])
  {
LABEL_15:
    DepthStencilState = HGMetalDepthStencilStateCache::_createDepthStencilState(a1, a2);
    v16 = *(a1 + 16);
    if (!v16)
    {
LABEL_23:
      operator new();
    }

    v17 = *a2;
    v18 = *(a2 + 1);
    while (1)
    {
      v19 = v16;
      v20 = *(v16 + 32);
      if (v17 < v20)
      {
        goto LABEL_17;
      }

      if (v17 > v20)
      {
        goto LABEL_22;
      }

      v21 = v19[5];
      if (v18 < v21)
      {
LABEL_17:
        v16 = *v19;
        if (!*v19)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v21 >= v18)
        {
          v19[6] = DepthStencilState;
          v4 = *v5;
          break;
        }

LABEL_22:
        v16 = v19[1];
        if (!v16)
        {
          goto LABEL_23;
        }
      }
    }
  }

  if (!v4)
  {
LABEL_33:
    operator new();
  }

  v22 = *a2;
  v23 = *(a2 + 1);
  while (1)
  {
    while (1)
    {
      v24 = v4;
      v25 = *(v4 + 32);
      if (v22 >= v25)
      {
        break;
      }

LABEL_27:
      v4 = *v24;
      if (!*v24)
      {
        goto LABEL_33;
      }
    }

    if (v22 <= v25)
    {
      break;
    }

LABEL_32:
    v4 = v24[1];
    if (!v4)
    {
      goto LABEL_33;
    }
  }

  v26 = v24[5];
  if (v23 < v26)
  {
    goto LABEL_27;
  }

  if (v26 < v23)
  {
    goto LABEL_32;
  }

  v27 = v24[6];
  pthread_mutex_unlock((a1 + 32));
  v28 = v27;
  return v27;
}

uint64_t HGMetalDepthStencilStateCache::_createDepthStencilState(id *a1, unsigned __int8 *a2)
{
  HGTraceGuard::HGTraceGuard(v7, "metal", 2, "HGMetalDepthStencilStateCache::_createDepthStencilState()");
  v4 = objc_opt_new();
  [v4 setDepthWriteEnabled:*a2];
  [v4 setDepthCompareFunction:*(a2 + 1)];
  v5 = [*a1 newDepthStencilStateWithDescriptor:v4];

  HGTraceGuard::~HGTraceGuard(v7);
  return v5;
}

uint64_t HGMetalUtils::hgFormat(HGMetalUtils *this)
{
  v1 = this - 10;
  result = 0;
  switch(v1)
  {
    case 0uLL:
      result = 1;
      break;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x40uLL:
    case 0x41uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
      return result;
    case 0xAuLL:
      result = 3;
      break;
    case 0xFuLL:
      result = 5;
      break;
    case 0x14uLL:
      result = 10;
      break;
    case 0x2DuLL:
      result = 7;
      break;
    case 0x32uLL:
      result = 11;
      break;
    case 0x37uLL:
      result = 12;
      break;
    case 0x3CuLL:
      result = 24;
      break;
    case 0x46uLL:
      result = 23;
      break;
    case 0x5FuLL:
      result = 13;
      break;
    case 0x64uLL:
      result = 25;
      break;
    case 0x69uLL:
      result = 27;
      break;
    case 0x73uLL:
      result = 28;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t HGMetalUtils::bytesPerPixel(HGMetalUtils *this)
{
  result = 0;
  switch(this)
  {
    case 1uLL:
    case 0xAuLL:
      result = 1;
      break;
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x40uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x45uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x68uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6DuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
    case 0x7CuLL:
      return result;
    case 0x14uLL:
    case 0x19uLL:
    case 0x1EuLL:
      result = 2;
      break;
    case 0x37uLL:
    case 0x3CuLL:
    case 0x41uLL:
    case 0x46uLL:
    case 0x50uLL:
    case 0x5AuLL:
      goto LABEL_2;
    case 0x69uLL:
    case 0x6EuLL:
    case 0x73uLL:
      result = 8;
      break;
    case 0x7DuLL:
      result = 16;
      break;
    default:
      if (this == 252)
      {
LABEL_2:
        result = 4;
      }

      break;
  }

  return result;
}

const char *HGMetalUtils::toString(HGMetalUtils *this)
{
  v1 = this - 1;
  result = "A8";
  switch(v1)
  {
    case 0uLL:
      return result;
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1EuLL:
    case 0x1FuLL:
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x41uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x44uLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x5BuLL:
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
    case 0x69uLL:
    case 0x6AuLL:
    case 0x6BuLL:
    case 0x6CuLL:
    case 0x6EuLL:
    case 0x6FuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
    case 0x78uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
      goto LABEL_5;
    case 9uLL:
      result = "R8";
      break;
    case 0x13uLL:
      result = "R16";
      break;
    case 0x18uLL:
      result = "R16F";
      break;
    case 0x1DuLL:
      result = "RG8";
      break;
    case 0x36uLL:
      result = "R32F";
      break;
    case 0x3BuLL:
      result = "RG16";
      break;
    case 0x40uLL:
      result = "RG16F";
      break;
    case 0x45uLL:
      result = "RGBA8";
      break;
    case 0x4FuLL:
      result = "BGRA8";
      break;
    case 0x68uLL:
      result = "RG32F";
      break;
    case 0x6DuLL:
      result = "RGBA16";
      break;
    case 0x72uLL:
      result = "RGBA16F";
      break;
    case 0x7CuLL:
      result = "RGBA32F";
      break;
    default:
      if ("A8" == 252)
      {
        result = "D32F";
      }

      else
      {
LABEL_5:
        result = "(fmt)";
      }

      break;
  }

  return result;
}

void *HGMetalCommandBufferRef::HGMetalCommandBufferRef(void *a1, void *a2)
{
  *a1 = a2;
  v3 = a2;
  return a1;
}

void HGMetalCommandBufferRef::waitUntilScheduled(id *this)
{
  HGTraceGuard::HGTraceGuard(v2, "gpu", 1, "HGMetalCommandBufferRef::waitUntilScheduled");
  kdebug_trace();
  [*this waitUntilScheduled];
  kdebug_trace();
  HGTraceGuard::~HGTraceGuard(v2);
}

void sub_25FC90880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13)
{
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a11);
  HGTraceGuard::~HGTraceGuard(&a13);
  _Unwind_Resume(a1);
}

void sub_25FC9089C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGMetalCommandBufferRef::waitUntilCompleted(id *this)
{
  HGTraceGuard::HGTraceGuard(v2, "gpu", 1, "HGMetalCommandBufferRef::waitUntilCompleted");
  kdebug_trace();
  [*this waitUntilCompleted];
  kdebug_trace();
  HGTraceGuard::~HGTraceGuard(v2);
}

void sub_25FC90948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, __int16 a12, char a13)
{
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a11);
  HGTraceGuard::~HGTraceGuard(&a13);
  _Unwind_Resume(a1);
}

void sub_25FC90964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

std::string *HGMetalUtils::stringForMetalVertexOutputStruct@<X0>(HGMetalUtils *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  *(a3 + 23) = 0;
  *a3 = 0;
  std::string::append(a3, "struct VertexInOut {\n");
  std::string::append(a3, "    float4 _position  [[ position ]];\n");
  if (v4)
  {
    for (i = 0; v4 != i; ++i)
    {
      std::to_string(&v23, i);
      std::operator+<char>();
      v7 = std::string::append(&v18, " [[ user(texcoord");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = &v23;
      }

      else
      {
        v9 = v23.__r_.__value_.__r.__words[0];
      }

      if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v23.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v23.__r_.__value_.__l.__size_;
      }

      v11 = std::string::append(&v19, v9, size);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v20, ") ]]; \n");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v22 = v13->__r_.__value_.__r.__words[2];
      *__p = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (v22 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      if (v22 >= 0)
      {
        v16 = HIBYTE(v22);
      }

      else
      {
        v16 = __p[1];
      }

      std::string::append(a3, v15, v16);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_18:
          if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_24;
        }
      }

      else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(v20.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_19:
        if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }

LABEL_24:
      operator delete(v19.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_20:
        if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_26;
        }

        continue;
      }

LABEL_25:
      operator delete(v18.__r_.__value_.__l.__data_);
      if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_26:
        operator delete(v23.__r_.__value_.__l.__data_);
      }
    }
  }

  if (a2)
  {
    std::string::append(a3, "    float4 _color     [[ user(primary) ]];\n");
  }

  return std::string::append(a3, "};\n\n");
}

void sub_25FC90BF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if ((*(v35 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v35);
  _Unwind_Resume(exception_object);
}

std::string *HGMetalUtils::stringForMetalVertexShader@<X0>(HGMetalUtils *this@<X0>, const char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a2;
  *(a4 + 23) = 0;
  *a4 = 0;
  std::string::append(a4, "[[ vertex ]]\n");
  std::string::append(a4, "VertexInOut ");
  v7 = strlen(this);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v7;
  if (v7)
  {
    memcpy(&__dst, this, v7);
  }

  __dst.__r_.__value_.__s.__data_[v8] = 0;
  v9 = std::string::append(&__dst, "(constant float4x4 *matrices [[ buffer(0) ]], \n");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v53.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v53.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v53;
  }

  else
  {
    v11 = v53.__r_.__value_.__r.__words[0];
  }

  if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v53.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v53.__r_.__value_.__l.__size_;
  }

  std::string::append(a4, v11, size);
  if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v53.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_15:
  std::string::append(a4, "    const device float4 *positions [[ buffer(1) ]], \n");
  std::string::append(a4, "    const device float4 *colors [[ buffer(2) ]], \n");
  v13 = v4;
  if (v4)
  {
    v14 = 0;
    while (1)
    {
      std::to_string(&v49, v14);
      v15 = std::string::insert(&v49, 0, "    const device float4 *texCoords");
      v16 = *&v15->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      v17 = std::string::append(&__p, " [[ buffer(");
      v18 = *&v17->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      v19 = v14 + 3;
      std::to_string(&v48, v19);
      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v48;
      }

      else
      {
        v20 = v48.__r_.__value_.__r.__words[0];
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = HIBYTE(v48.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = v48.__r_.__value_.__l.__size_;
      }

      v22 = std::string::append(&v51, v20, v21);
      v23 = *&v22->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      v24 = std::string::append(&__dst, ") ]], \n");
      v25 = *&v24->__r_.__value_.__l.__data_;
      v53.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&v53.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v26 = &v53;
      }

      else
      {
        v26 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v27 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v27 = v53.__r_.__value_.__l.__size_;
      }

      std::string::append(a4, v26, v27);
      if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v53.__r_.__value_.__l.__data_);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_38;
        }

LABEL_33:
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_34;
        }

LABEL_39:
        operator delete(v48.__r_.__value_.__l.__data_);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_40;
        }

LABEL_35:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

LABEL_17:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_42;
        }

LABEL_18:
        v14 = v19 - 2;
        if (v14 == v4)
        {
          break;
        }
      }

      else
      {
        if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_33;
        }

LABEL_38:
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_39;
        }

LABEL_34:
        if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_35;
        }

LABEL_40:
        operator delete(v51.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_17;
        }

LABEL_41:
        if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_42:
        operator delete(v49.__r_.__value_.__l.__data_);
        v14 = v19 - 2;
        if (v14 == v4)
        {
          break;
        }
      }
    }
  }

  std::string::append(a4, "    uint vid [[ vertex_id ]])\n{\n");
  std::string::append(a4, "    constant float4x4 *projectionMatrix = matrices;\n");
  if (v4)
  {
    std::string::append(a4, "    constant float4x4 *textureMatrices = matrices+1;\n");
  }

  std::string::append(a4, "    VertexInOut vertices;\n");
  std::string::append(a4, "    vertices._position  = *projectionMatrix * positions[vid];\n");
  if (v4)
  {
    v28 = 0;
    while (1)
    {
      std::to_string(&v53, v28);
      std::operator+<char>();
      v29 = std::string::append(&v47, " = textureMatrices[");
      v30 = *&v29->__r_.__value_.__l.__data_;
      v48.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v48.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v31 = &v53;
      }

      else
      {
        v31 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v32 = v53.__r_.__value_.__l.__size_;
      }

      v33 = std::string::append(&v48, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v49.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v49.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      v35 = std::string::append(&v49, "] * texCoords");
      v36 = *&v35->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v37 = &v53;
      }

      else
      {
        v37 = v53.__r_.__value_.__r.__words[0];
      }

      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v53.__r_.__value_.__l.__size_;
      }

      v39 = std::string::append(&__p, v37, v38);
      v40 = *&v39->__r_.__value_.__l.__data_;
      v51.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
      *&v51.__r_.__value_.__l.__data_ = v40;
      v39->__r_.__value_.__l.__size_ = 0;
      v39->__r_.__value_.__r.__words[2] = 0;
      v39->__r_.__value_.__r.__words[0] = 0;
      v41 = std::string::append(&v51, "[vid];\n");
      v42 = *&v41->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v44 = __dst.__r_.__value_.__l.__size_;
      }

      std::string::append(a4, p_dst, v44);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_75;
        }

LABEL_69:
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

LABEL_76:
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_77;
        }

LABEL_71:
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_72;
        }

LABEL_78:
        operator delete(v48.__r_.__value_.__l.__data_);
        if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_47;
        }

LABEL_79:
        if ((SHIBYTE(v53.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

LABEL_80:
        operator delete(v53.__r_.__value_.__l.__data_);
        if (v13 == ++v28)
        {
          break;
        }
      }

      else
      {
        if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_69;
        }

LABEL_75:
        operator delete(v51.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_76;
        }

LABEL_70:
        if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_71;
        }

LABEL_77:
        operator delete(v49.__r_.__value_.__l.__data_);
        if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_78;
        }

LABEL_72:
        if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_79;
        }

LABEL_47:
        operator delete(v47.__r_.__value_.__l.__data_);
        if (SHIBYTE(v53.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_80;
        }

LABEL_48:
        if (v13 == ++v28)
        {
          break;
        }
      }
    }
  }

  if (a3)
  {
    std::string::append(a4, "    vertices._color = colors[vid]; \n");
  }

  std::string::append(a4, "    return vertices;\n");
  return std::string::append(a4, "}\n\n");
}

void sub_25FC912D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v50 - 105) < 0)
  {
    operator delete(*(v50 - 128));
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (*(v49 + 23) < 0)
  {
    operator delete(*v49);
  }

  _Unwind_Resume(exception_object);
}

std::string *HGMetalUtils::stringForMetalFragmentOutputStruct@<X0>(HGMetalUtils *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = this;
  *(a3 + 23) = 0;
  *a3 = 0;
  std::string::append(a3, "struct FragmentOut {\n");
  if (v4)
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 1) == 0)
      {
        goto LABEL_3;
      }

      std::to_string(&v24, v6);
      std::operator+<char>();
      v8 = std::string::append(&v19, " [[ color(");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v20.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v20.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v24;
      }

      else
      {
        v10 = v24.__r_.__value_.__r.__words[0];
      }

      if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v24.__r_.__value_.__l.__size_;
      }

      v12 = std::string::append(&v20, v10, size);
      v13 = *&v12->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v13;
      v12->__r_.__value_.__l.__size_ = 0;
      v12->__r_.__value_.__r.__words[2] = 0;
      v12->__r_.__value_.__r.__words[0] = 0;
      v14 = std::string::append(&v21, ") ]];\n");
      v15 = *&v14->__r_.__value_.__l.__data_;
      v23 = v14->__r_.__value_.__r.__words[2];
      *__p = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      if (v23 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      if (v23 >= 0)
      {
        v17 = HIBYTE(v23);
      }

      else
      {
        v17 = __p[1];
      }

      std::string::append(a3, v16, v17);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_20:
          if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_26;
        }
      }

      else if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_20;
      }

      operator delete(v21.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_21:
        if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_27;
      }

LABEL_26:
      operator delete(v20.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_22:
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_28;
        }

        goto LABEL_3;
      }

LABEL_27:
      operator delete(v19.__r_.__value_.__l.__data_);
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_28:
        operator delete(v24.__r_.__value_.__l.__data_);
      }

LABEL_3:
      ++v6;
      v7 = v4 > 1;
      v4 >>= 1;
      if (!v7)
      {
        goto LABEL_30;
      }
    }
  }

  std::string::append(a3, "    float4 color0 [[ color(0) ]];\n");
LABEL_30:
  if (a2)
  {
    std::string::append(a3, "    float  depth  [[ depth(any) ]];\n");
  }

  return std::string::append(a3, "};\n\n");
}

void sub_25FC91724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if ((*(v35 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v35);
  _Unwind_Resume(exception_object);
}

void *HGMetalUtils::blitBufferToTexture(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v7 = 0;
  if (a2 && a3)
  {
    v36 = 4658;
    kdebug_trace();
    v15 = [a1 commandBuffer];
    [v15 setLabel:@"HG BufferToTexture blit"];
    v16 = [v15 blitCommandEncoder];
    v7 = 0;
    v17 = *(a2 + 144);
    if (v17)
    {
      v31 = a6;
      v18 = a3[18];
      if (v18)
      {
        v19 = v16;
        v20 = HGRectIntersection(*(a2 + 20), *(a2 + 28), *(a3 + 20), *(a3 + 28));
        v35[0] = HGRectIntersection(v20, v21, a4, a5);
        v35[1] = v22;
        v30 = HGBitmap::byteOffset(a2, v35[0], SHIDWORD(v35[0]));
        v23 = HGFormatUtils::collapseRectForFormat(v35, *(a2 + 16));
        v25 = v24;
        TextureRect = HGMetalTexture::GetTextureRect(a3);
        v27 = HGMetalTexture::GetTextureRect(a3);
        v28 = *(a2 + 64);
        v34[0] = (v25 - v23);
        v34[1] = (HIDWORD(v25) - HIDWORD(v23));
        v34[2] = 1;
        v33[0] = v23 - TextureRect;
        v33[1] = HIDWORD(v23) - HIDWORD(v27);
        v33[2] = 0;
        [v19 copyFromBuffer:v17 sourceOffset:v30 sourceBytesPerRow:v28 sourceBytesPerImage:0 sourceSize:v34 toTexture:v18 destinationSlice:0 destinationLevel:0 destinationOrigin:v33];
        [v19 endEncoding];
        if (a7 && (v31 & 1) == 0)
        {
          (*(*a2 + 16))(a2);
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = *"";
          v32[2] = ___ZN12HGMetalUtils19blitBufferToTextureE21HGMTLCommandQueueTypeP13HGMetalBufferP14HGMetalTexture6HGRectbb_block_invoke;
          v32[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
          v32[4] = a2;
          [v15 addCompletedHandler:v32];
        }

        [v15 commit];
        if (v31)
        {
          [v15 waitUntilCompleted];
        }

        else
        {
          [v15 waitUntilScheduled];
        }

        v7 = v15;
      }
    }

    kdebug_trace();
  }

  return v7;
}

void *HGMetalUtils::blitTextureToBuffer(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  v7 = 0;
  if (a2 && a3)
  {
    v33 = 4660;
    kdebug_trace();
    v15 = [a1 commandBuffer];
    [v15 setLabel:@"HG TextureToBuffer blit"];
    v16 = [v15 blitCommandEncoder];
    v7 = 0;
    v17 = a2[18];
    if (v17)
    {
      v28 = a6;
      v18 = *(a3 + 144);
      if (v18)
      {
        v19 = v16;
        v20 = HGRectIntersection(*(a2 + 20), *(a2 + 28), *(a3 + 20), *(a3 + 28));
        v32[0] = HGRectIntersection(v20, v21, a4, a5);
        v32[1] = v22;
        v27 = HGBitmap::byteOffset(a3, v32[0], SHIDWORD(v32[0]));
        v23 = HGFormatUtils::collapseRectForFormat(v32, *(a3 + 16));
        v25 = v24;
        v31[0] = (v23 - HGMetalTexture::GetTextureRect(a2));
        v31[1] = (HIDWORD(v23) - (HGMetalTexture::GetTextureRect(a2) >> 32));
        v31[2] = 0;
        v30[0] = (v25 - v23);
        v30[1] = (HIDWORD(v25) - HIDWORD(v23));
        v30[2] = 1;
        [v19 copyFromTexture:v17 sourceSlice:0 sourceLevel:0 sourceOrigin:v31 sourceSize:v30 toBuffer:v18 destinationOffset:v27 destinationBytesPerRow:*(a3 + 64) destinationBytesPerImage:0];
        [v19 endEncoding];
        if (a7 && (v28 & 1) == 0)
        {
          (*(*a2 + 16))(a2);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = *"";
          v29[2] = ___ZN12HGMetalUtils19blitTextureToBufferE21HGMTLCommandQueueTypeP14HGMetalTextureP13HGMetalBuffer6HGRectbb_block_invoke;
          v29[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
          v29[4] = a2;
          [v15 addCompletedHandler:v29];
        }

        [v15 commit];
        if (v28)
        {
          [v15 waitUntilCompleted];
        }

        else
        {
          [v15 waitUntilScheduled];
        }

        v7 = v15;
      }
    }

    kdebug_trace();
  }

  return v7;
}

void *HGMetalUtils::tiledBlitBufferToTexture(void *a1, uint64_t a2, void *a3, unint64_t a4, unint64_t a5, int a6, int a7, unint64_t a8)
{
  __p = 0;
  v21 = 0;
  v22 = 0;
  v14 = __p;
  v15 = v21;
  if (__p == v21)
  {
    result = 0;
    if (!__p)
    {
      return result;
    }

    goto LABEL_7;
  }

  do
  {
    v16 = v14[1];
    if ((v16 ^ a5) >> 32)
    {
      v17 = 0;
    }

    else
    {
      v17 = a6;
    }

    result = HGMetalUtils::blitBufferToTexture(a1, a2, a3, *v14, v16, v17, a7);
    v14 += 2;
  }

  while (v14 != v15);
  v14 = __p;
  if (__p)
  {
LABEL_7:
    v21 = v14;
    v19 = result;
    operator delete(v14);
    return v19;
  }

  return result;
}

void sub_25FC91F8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::buildTilesList(uint64_t a1, unint64_t a2, unint64_t a3, int a4, unint64_t a5)
{
  v5 = a3;
  v6 = a2;
  v8 = 0;
  v9 = HIDWORD(a2);
  v11 = HIDWORD(a3);
  v12 = HIDWORD(a3) - HIDWORD(a2);
  switch(v10)
  {
    case 1:
    case 10:
      v8 = 1;
      break;
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 21:
    case 22:
    case 23:
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 56:
    case 57:
    case 58:
    case 59:
    case 61:
    case 62:
    case 63:
    case 64:
    case 66:
    case 67:
    case 68:
    case 69:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 106:
    case 107:
    case 108:
    case 109:
    case 111:
    case 112:
    case 113:
    case 114:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
    case 124:
      break;
    case 20:
    case 25:
    case 30:
      v8 = 2;
      break;
    case 55:
    case 60:
    case 65:
    case 70:
    case 80:
    case 90:
      goto LABEL_2;
    case 105:
    case 110:
    case 115:
      v8 = 8;
      break;
    case 125:
      v8 = 16;
      break;
    default:
      if (v10 == 252)
      {
LABEL_2:
        v8 = 4;
      }

      break;
  }

  v13 = 0;
  v14 = (((HIDWORD(a3) - HIDWORD(a2)) * (a3 - a2) * v8) >> 20) / a5;
  if (v12 >= v14 + 1)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = HIDWORD(a3) - HIDWORD(a2);
  }

  v16 = v12 / v15;
  do
  {
    v17 = v13 + 1;
    if (v15 - 1 == v13)
    {
      v18 = v11;
    }

    else
    {
      v18 = v9 + v17 * v16;
    }

    v20 = 0uLL;
    *&v20 = HGRectMake4i(v6, v9 + v13 * v16, v5, v18);
    *(&v20 + 1) = v19;
    std::vector<HGRect>::push_back[abi:ne200100](a1, &v20);
    v13 = v17;
  }

  while (v17 < v15);
}

uint64_t **std::__hash_table<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::__unordered_map_hasher<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,HGMetalFunctionCache::InfoHash,std::equal_to<HGMetalFunctionCache::Info>,true>,std::__unordered_map_equal<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::equal_to<HGMetalFunctionCache::Info>,HGMetalFunctionCache::InfoHash,true>,std::allocator<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>>>::find<HGMetalFunctionCache::Info>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v32, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v2[3];
  v9 = (&v8[8 * v6 - 0xC3910C8D016B07DLL] + (v6 >> 2) - 3) ^ v6;
  v10 = vcnt_s8(v7);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = (&v8[8 * v6 - 0xC3910C8D016B07DLL] + (v6 >> 2) - 3) ^ v6;
    if (v9 >= *&v7)
    {
      v11 = v9 % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & v9;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12)
  {
    return 0;
  }

  v13 = *v12;
  if (*v12)
  {
    v14 = *(v2 + 23);
    if (v14 >= 0)
    {
      v15 = *(v2 + 23);
    }

    else
    {
      v15 = v2[1];
    }

    if (v14 < 0)
    {
      v2 = *v2;
    }

    if (v10.u32[0] < 2uLL)
    {
      v16 = *&v7 - 1;
      while (1)
      {
        v24 = v13[1];
        if (v24 == v9)
        {
          if (v13[5] == v8)
          {
            v25 = *(v13 + 39);
            v26 = v25 >= 0 ? *(v13 + 39) : v13[3];
            v27 = v25 >= 0 ? (v13 + 2) : v13[2];
            v28 = v15 >= v26 ? v26 : v15;
            v29 = memcmp(v27, v2, v28);
            if (v15 == v26 && v29 == 0)
            {
              return v13;
            }
          }
        }

        else if ((v24 & v16) != v11)
        {
          return 0;
        }

        v13 = *v13;
        if (!v13)
        {
          return v13;
        }
      }
    }

    do
    {
      v17 = v13[1];
      if (v17 == v9)
      {
        if (v13[5] == v8)
        {
          v18 = *(v13 + 39);
          v19 = v18 >= 0 ? *(v13 + 39) : v13[3];
          v20 = v18 >= 0 ? (v13 + 2) : v13[2];
          v21 = v15 >= v19 ? v19 : v15;
          v22 = memcmp(v20, v2, v21);
          if (v15 == v19 && v22 == 0)
          {
            return v13;
          }
        }
      }

      else
      {
        if (v17 >= *&v7)
        {
          v17 %= *&v7;
        }

        if (v17 != v11)
        {
          return 0;
        }
      }

      v13 = *v13;
    }

    while (v13);
  }

  return v13;
}

uint64_t **std::__hash_table<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::__unordered_map_hasher<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,HGMetalFunctionCache::InfoHash,std::equal_to<HGMetalFunctionCache::Info>,true>,std::__unordered_map_equal<HGMetalFunctionCache::Info,std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>,std::equal_to<HGMetalFunctionCache::Info>,HGMetalFunctionCache::InfoHash,true>,std::allocator<std::__hash_value_type<HGMetalFunctionCache::Info,HGMTLFunctionType>>>::__emplace_unique_key_args<HGMetalFunctionCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalFunctionCache::Info const&>,std::tuple<>>(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v31, a2, v5);
  v7 = v2[3];
  v8 = (&v7[8 * v6 - 0xC3910C8D016B07DLL] + (v6 >> 2) - 3) ^ v6;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_59;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = (&v7[8 * v6 - 0xC3910C8D016B07DLL] + (v6 >> 2) - 3) ^ v6;
    if (v8 >= *&v9)
    {
      v11 = v8 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v8;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_59:
    operator new();
  }

  v14 = *(v2 + 23);
  if (v14 >= 0)
  {
    v15 = *(v2 + 23);
  }

  else
  {
    v15 = v2[1];
  }

  if (v14 < 0)
  {
    v2 = *v2;
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = v13[1];
      if (v16 == v8)
      {
        if (v13[5] == v7)
        {
          v17 = *(v13 + 39);
          v18 = v17 >= 0 ? *(v13 + 39) : v13[3];
          v19 = v17 >= 0 ? (v13 + 2) : v13[2];
          v20 = v15 >= v18 ? v18 : v15;
          v21 = memcmp(v19, v2, v20);
          if (v15 == v18 && v21 == 0)
          {
            return v13;
          }
        }
      }

      else if ((v16 & (*&v9 - 1)) != v11)
      {
        goto LABEL_59;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_59;
      }
    }
  }

  while (1)
  {
    v23 = v13[1];
    if (v23 == v8)
    {
      break;
    }

    if (v23 >= *&v9)
    {
      v23 %= *&v9;
    }

    if (v23 != v11)
    {
      goto LABEL_59;
    }

LABEL_39:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_59;
    }
  }

  if (v13[5] != v7)
  {
    goto LABEL_39;
  }

  v24 = *(v13 + 39);
  v25 = v24 >= 0 ? *(v13 + 39) : v13[3];
  v26 = v24 >= 0 ? (v13 + 2) : v13[2];
  v27 = v15 >= v25 ? v25 : v15;
  v28 = memcmp(v26, v2, v27);
  if (v15 != v25 || v28 != 0)
  {
    goto LABEL_39;
  }

  return v13;
}

void sub_25FC92728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_25FC9273C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,BOOL>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::__map_value_compare<HGMetalRenderPipelineStateCache::Info,std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::less<HGMetalRenderPipelineStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::__map_value_compare<HGMetalRenderPipelineStateCache::Info,std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::less<HGMetalRenderPipelineStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::__map_value_compare<HGMetalRenderPipelineStateCache::Info,std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::less<HGMetalRenderPipelineStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>>>::destroy(a1, a2[1]);
    v4 = a2[55];
    if (v4)
    {
      a2[56] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::__map_value_compare<HGMetalRenderPipelineStateCache::Info,std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::less<HGMetalRenderPipelineStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>>>::__emplace_unique_key_args<HGMetalRenderPipelineStateCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalRenderPipelineStateCache::Info const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v2;
      if (!HGMetalRenderPipelineStateCache::Info::operator<(a2, v2 + 8))
      {
        break;
      }

      v2 = *v5;
      v3 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (!HGMetalRenderPipelineStateCache::Info::operator<(v5 + 8, a2))
    {
      break;
    }

    v3 = v5 + 1;
    v2 = v5[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }

  result = *v3;
  if (!*v3)
  {
LABEL_7:
    std::__tree<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::__map_value_compare<HGMetalRenderPipelineStateCache::Info,std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,std::less<HGMetalRenderPipelineStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<HGMetalRenderPipelineStateCache::Info const&>,std::tuple<>>();
  }

  return result;
}

void sub_25FC92990(_Unwind_Exception *a1)
{
  v4 = *(v2 + 440);
  if (v4)
  {
    *(v2 + 448) = v4;
    operator delete(v4);
  }

  std::unique_ptr<std::__tree_node<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,void *>>>>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__tree_node<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<HGMetalRenderPipelineStateCache::Info,HGMTLRenderPipelineStateType>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[55];
      if (v4)
      {
        v2[56] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t **std::__tree<std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>,std::__map_value_compare<HGMetalSamplerStateCache::Info,std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>,std::less<HGMetalSamplerStateCache::Info>,true>,std::allocator<std::__value_type<HGMetalSamplerStateCache::Info,HGMTLSamplerStateType>>>::__emplace_unique_key_args<HGMetalSamplerStateCache::Info,std::piecewise_construct_t const&,std::tuple<HGMetalSamplerStateCache::Info const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_15:
    operator new();
  }

  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = *(a2 + 24);
  while (1)
  {
    while (1)
    {
      v7 = v2;
      v8 = v2[4];
      if (v3 < v8)
      {
        goto LABEL_3;
      }

      if (v3 <= v8)
      {
        break;
      }

LABEL_6:
      v2 = v7[1];
      if (!v2)
      {
        goto LABEL_15;
      }
    }

    v9 = v7[5];
    if (v4 >= v9)
    {
      if (v4 > v9)
      {
        goto LABEL_6;
      }

      v10 = v7[6];
      if (v5 >= v10)
      {
        if (v5 > v10)
        {
          goto LABEL_6;
        }

        v11 = *(v7 + 56);
        if (v6 >= v11)
        {
          break;
        }
      }
    }

LABEL_3:
    v2 = *v7;
    if (!*v7)
    {
      goto LABEL_15;
    }
  }

  if (v11 < v6)
  {
    goto LABEL_6;
  }

  return v7;
}

HGComic *HGComicDesignerInterfaceImplementation::GenerateGraph(HGComicDesignerInterfaceImplementation *this, HGNode *a2)
{
  v4 = HGObject::operator new(0x1A0uLL);
  HGComic::HGComic(v4);
  (*(*v4 + 120))(v4, 0, a2);
  v5 = *(this + 5);
  if (v5 == -1)
  {
    v6 = 0;
  }

  else
  {
    v6 = HGObject::operator new(0x1B0uLL);
    HGComicLookupFilterLUTBitmapResource::HGComicLookupFilterLUTBitmapResource(v6, v5);
  }

  (*(*v4 + 120))(v4, 1, v6);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  (*(*v4 + 96))(v4, 0, *(this + 7), 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 8, *(this + 6), 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 9, *(this + 16), 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 10, *(this + 20), *(this + 21), *(this + 22), *(this + 23));
  v7 = (*(*v4 + 96))(v4, 11, *(this + 12), COERCE_FLOAT(HIDWORD(*(this + 12))), 0.0, 0.0);
  v7.n128_u8[0] = *(this + 104);
  v8 = (*(*v4 + 96))(v4, 12, v7.n128_u32[0], 0.0, 0.0, 0.0);
  v8.n128_u8[0] = *(this + 105);
  v9 = (*(*v4 + 96))(v4, 13, v8.n128_u32[0], 0.0, 0.0, 0.0);
  v9.n128_u8[0] = *(this + 106);
  (*(*v4 + 96))(v4, 14, v9.n128_u32[0], 0.0, 0.0, 0.0);
  v11 = *(this + 16);
  if (v11 == 7)
  {
    (*(*v4 + 96))(v4, 3, 1.0, 0.0, 0.0, 0.0);
    v13 = 4;
    v10.n128_u32[0] = 973279855;
  }

  else
  {
    if (v11 == 17)
    {
      v12 = (((*(this + 3) * 0.01) / -3.0) + 1.0) + ((*(this + 9) * 0.01) + -0.5) * -0.5;
      (*(*v4 + 96))(v4, 3, fmaxf(fminf(v12, 1.0), 0.0), 0.0, 0.0, 0.0);
      (*(*v4 + 96))(v4, 4, 0.0, 0.0, 0.0, 0.0);
      goto LABEL_12;
    }

    v10.n128_u32[0] = 1.0;
    v13 = 3;
  }

  (*(*v4 + 96))(v4, v13, v10, 0.0, 0.0, 0.0);
LABEL_12:
  (*(*v4 + 96))(v4, 3, ((*(this + 9) * -0.01) * 0.65) + 1.0, 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 1, 1.0 / (((*(this + 2) * 0.01) + (*(this + 2) * 0.01)) + 1.0), 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 2, (((*(this + 3) * -0.01) + 1.0) * 3.807) + 1.6, 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 5, ((*(this + 4) * 0.01) * 32.0) + 4.8, 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 6, ((*(this + 4) * 0.01) * 6.0) + 2.3406, 0.0, 0.0, 0.0);
  (*(*v4 + 96))(v4, 7, ((*(this + 4) * 0.01) * 12.0) + 4.0, 0.0, 0.0, 0.0);
  v14 = *(this + 14);
  if (v14 != v4)
  {
    if (v14)
    {
      (*(*v14 + 24))(*(this + 14));
    }

    *(this + 14) = v4;
    (*(*v4 + 16))(v4);
    v14 = *(this + 14);
  }

  (*(*v4 + 24))(v4);
  return v14;
}

void sub_25FC932CC(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

void HGComicDesignerInterface::HGComicDesignerInterface(HGComicDesignerInterface *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28721A7D8;
  v3 = HGObject::operator new(0x78uLL);
  HGObject::HGObject(v3);
  *v3 = &unk_28721AA40;
  *(v3 + 3) = 0;
  *(v3 + 4) = 0;
  *(v3 + 2) = 0;
  *(v3 + 40) = xmmword_260815730;
  *(v3 + 7) = 720;
  *(v3 + 16) = 0;
  *(v3 + 9) = 0;
  *(v3 + 5) = xmmword_260815740;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 12) = _D0;
  *(v3 + 52) = 256;
  v3[106] = 1;
  *(v3 + 14) = 0;
  *(this + 51) = v3;
}

void sub_25FC9344C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGComicDesignerInterface::~HGComicDesignerInterface(HGComicDesignerInterface *this)
{
  *this = &unk_28721A7D8;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGComicDesignerInterface::~HGComicDesignerInterface(HGNode *this)
{
  *this = &unk_28721A7D8;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGComicDesignerInterface::SetParameter(HGComicDesignerInterface *this, int a2, double a3, float a4, float a5, float a6)
{
  switch(a2)
  {
    case 0:
      v6 = *(this + 51);
      if (*(v6 + 16) == *&a3)
      {
        goto LABEL_41;
      }

      *(v6 + 16) = *&a3;
      result = 1;
      break;
    case 1:
      v16 = *(this + 51);
      if (*(v16 + 24) == *&a3)
      {
        goto LABEL_41;
      }

      *(v16 + 24) = *&a3;
      result = 1;
      break;
    case 2:
      v13 = *(this + 51);
      if (*(v13 + 32) == *&a3)
      {
        goto LABEL_41;
      }

      *(v13 + 32) = *&a3;
      result = 1;
      break;
    case 3:
      v14 = *(this + 51);
      if (*(v14 + 40) == *&a3)
      {
        goto LABEL_41;
      }

      *(v14 + 40) = *&a3;
      result = 1;
      break;
    case 4:
      v9 = *(this + 51);
      if (*(v9 + 48) == *&a3)
      {
        goto LABEL_41;
      }

      *(v9 + 48) = *&a3;
      result = 1;
      break;
    case 5:
      v17 = *(this + 51);
      if (*(v17 + 56) == *&a3)
      {
        goto LABEL_41;
      }

      *(v17 + 56) = *&a3;
      result = 1;
      break;
    case 6:
      v18 = *(this + 51);
      if (*(v18 + 64) == *&a3)
      {
        goto LABEL_41;
      }

      *(v18 + 64) = *&a3;
      result = 1;
      break;
    case 7:
      v15 = *(this + 51);
      if (*(v15 + 72) == *&a3)
      {
        goto LABEL_41;
      }

      *(v15 + 72) = *&a3;
      result = 1;
      break;
    case 8:
      v21 = *(this + 51);
      v22 = *(v21 + 80);
      v23 = *(v21 + 88);
      v24 = HGRectMake4i(*&a3, a4, a5, a6);
      if (v24 == v22 && v25 == v23 && (v24 ^ v22) >> 32 == 0 && (v25 ^ v23) >> 32 == 0)
      {
        goto LABEL_41;
      }

      v29 = *(this + 51);
      *(v29 + 80) = v24;
      *(v29 + 88) = v25;
      result = 1;
      break;
    case 9:
      v11 = *(this + 51);
      if (COERCE_FLOAT(*(v11 + 96)) == *&a3 && COERCE_FLOAT(HIDWORD(*(v11 + 96))) == a4)
      {
        goto LABEL_41;
      }

      *(&a3 + 1) = a4;
      *(v11 + 96) = a3;
      result = 1;
      break;
    case 10:
      v19 = *(this + 51);
      if ((*&a3 == 1.0) == *(v19 + 104))
      {
        goto LABEL_41;
      }

      *(v19 + 104) = *&a3 == 1.0;
      result = 1;
      break;
    case 11:
      v8 = *(this + 51);
      if ((*&a3 == 1.0) == *(v8 + 105))
      {
        goto LABEL_41;
      }

      *(v8 + 105) = *&a3 == 1.0;
      result = 1;
      break;
    case 12:
      v10 = *(this + 51);
      if ((*&a3 == 1.0) == *(v10 + 106))
      {
LABEL_41:
        result = 0;
      }

      else
      {
        *(v10 + 106) = *&a3 == 1.0;
        result = 1;
      }

      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

HGComic *HGComicDesignerInterface::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v4 = *(this + 51);

  return HGComicDesignerInterfaceImplementation::GenerateGraph(v4, Input);
}

void HGComicDesignerInterfaceImplementation::~HGComicDesignerInterfaceImplementation(HGComicDesignerInterfaceImplementation *this)
{
  *this = &unk_28721AA40;
  v1 = *(this + 14);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 14));
    this = v2;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721AA40;
  v2 = *(this + 14);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

std::string *HGBufferDumper::_updateNodeFilename(std::string *this, int a2, const char *a3, int a4, HGRect a5)
{
  v5 = *&a5.var2;
  v6 = *&a5.var0;
  v15 = *MEMORY[0x277D85DE8];
  snprintf(__str, 8uLL, "%03d", a2);
  MEMORY[0x2666E99D0](&this[2], __str);
  std::string::append(this + 2, ".");
  std::string::append(this + 2, a3);
  if (a4 == -1)
  {
    v11 = "_out";
    v10 = this + 2;
  }

  else
  {
    snprintf(__s, 8uLL, "_in%d", a4);
    v10 = this + 2;
    v11 = __s;
  }

  std::string::append(v10, v11);
  std::string::append(this + 2, ".");
  snprintf(__s, 0x20uLL, "%dx%d+%d+%d", v5 - v6, HIDWORD(v5) - HIDWORD(v6), v6, HIDWORD(v6));
  return std::string::append(this + 2, __s);
}

void HGBufferDumper::HGBufferDumper(HGBufferDumper *this)
{
  *(this + 60) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 19) = -1;
  *(this + 80) = 0;
}

void HGBufferDumper::~HGBufferDumper(void **this)
{
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
    if ((*(this + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

uint64_t HGBufferDumper::setPath(HGBufferDumper *this, const char *a2)
{
  result = MEMORY[0x2666E99D0](this, a2);
  *(this + 19) = -1;
  return result;
}

std::string *HGBufferDumper::enable(std::string *this, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  result = HGLogger::setLevel("bufferdump", 1);
  if (this[3].__r_.__value_.__s.__data_[8] != a2)
  {
    this[3].__r_.__value_.__s.__data_[8] = a2;
    this[3].__r_.__value_.__r.__words[0] = 0xFFFFFFFF00000000;
    gettimeofday(&v8, &v7);
    tv_sec = v8.tv_sec;
    v5 = localtime(&tv_sec);
    strftime(__s, 0x20uLL, "%Y%m%d.%H%M%S", v5);
    snprintf(__str, 0x10uLL, "%02d", v8.tv_usec / 10000);
    MEMORY[0x2666E99D0](&this[1], "bufferdump.");
    std::string::append(this + 1, __s);
    return std::string::append(this + 1, __str);
  }

  return result;
}

std::string *HGBufferDumper::reset(std::string *this)
{
  v9 = *MEMORY[0x277D85DE8];
  this[3].__r_.__value_.__r.__words[0] = 0xFFFFFFFF00000000;
  gettimeofday(&v6, &v5);
  tv_sec = v6.tv_sec;
  v2 = localtime(&tv_sec);
  strftime(__s, 0x20uLL, "%Y%m%d.%H%M%S", v2);
  snprintf(__str, 0x10uLL, "%02d", v6.tv_usec / 10000);
  MEMORY[0x2666E99D0](&this[1], "bufferdump.");
  std::string::append(this + 1, __s);
  return std::string::append(this + 1, __str);
}

FILE *HGBufferDumper::write(HGBufferDumper *this, const char *a2, int a3, HGBitmap *a4)
{
  v8 = *(this + 19);
  if (v8 == -1)
  {
    if (*(this + 23) < 0)
    {
      v12 = access(*this, 0);
      *(this + 19) = v12 != -1;
      if (v12 != -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v9 = access(this, 0);
      *(this + 19) = v9 != -1;
      if (v9 != -1)
      {
        goto LABEL_15;
      }
    }

    v13 = atomic_load(HGLogger::_enabled);
    if (v13)
    {
      v14 = this;
      if (*(this + 23) < 0)
      {
        v14 = *this;
      }

      HGLogger::log("bufferdump", 1, "ERROR - invalid path for buffer dump files : %s\n", v10, v11, v14);
    }

    v15 = atomic_load(HGLogger::_enabled);
    if (v15)
    {
      HGLogger::log("bufferdump", 1, "  Use HG_ENV_BUFFER_DUMP_DIR or HGRenderer::SetBufferDumpDir() with a valid directory.\n", v10, v11);
    }

    if (*(this + 19) != 1)
    {
      return 0;
    }
  }

  else if (v8 != 1)
  {
    return 0;
  }

LABEL_15:
  if (*(this + 80) != 1)
  {
    return 0;
  }

  v16 = *(this + 18) + 1;
  *(this + 18) = v16;
  HGBufferDumper::_updateNodeFilename(this, v16, a2, a3, *(a4 + 20));
  if (*(this + 23) >= 0)
  {
    v17 = *(this + 23);
  }

  else
  {
    v17 = *(this + 1);
  }

  if (v17 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v17 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v47, 0, sizeof(v47));
  *(&v47.__r_.__value_.__s + 23) = v17 + 1;
  if (v17)
  {
    if (*(this + 23) >= 0)
    {
      v19 = this;
    }

    else
    {
      v19 = *this;
    }

    memmove(&v47, v19, v17);
  }

  *(&v47.__r_.__value_.__l.__data_ + v17) = 47;
  v20 = *(this + 47);
  if (v20 >= 0)
  {
    v21 = this + 24;
  }

  else
  {
    v21 = *(this + 3);
  }

  if (v20 >= 0)
  {
    v22 = *(this + 47);
  }

  else
  {
    v22 = *(this + 4);
  }

  v23 = std::string::append(&v47, v21, v22);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v48.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v48.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  v25 = std::string::append(&v48, ".");
  v26 = *&v25->__r_.__value_.__l.__data_;
  v49.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v49.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v29 = *(this + 6);
  v28 = this + 48;
  v27 = v29;
  v30 = v28[23];
  if (v30 >= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v30 >= 0)
  {
    v32 = v28[23];
  }

  else
  {
    v32 = *(v28 + 1);
  }

  v33 = std::string::append(&v49, v31, v32);
  v34 = *&v33->__r_.__value_.__l.__data_;
  v50.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
  *&v50.__r_.__value_.__l.__data_ = v34;
  v33->__r_.__value_.__l.__size_ = 0;
  v33->__r_.__value_.__r.__words[2] = 0;
  v33->__r_.__value_.__r.__words[0] = 0;
  v35 = std::string::append(&v50, ".iqa");
  v38 = *&v35->__r_.__value_.__l.__data_;
  v52 = v35->__r_.__value_.__r.__words[2];
  v51 = v38;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_42:
      if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_48;
    }
  }

  else if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_43:
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

LABEL_48:
  operator delete(v48.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_44:
    v39 = atomic_load(HGLogger::_enabled);
    if ((v39 & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_50:
    v41 = &v51;
    if (v52 < 0)
    {
      v41 = v51;
    }

    HGLogger::log("bufferdump", 1, "dumping buffered bitmap to disk : %s\n", v36, v37, v41);
    goto LABEL_53;
  }

LABEL_49:
  operator delete(v47.__r_.__value_.__l.__data_);
  v40 = atomic_load(HGLogger::_enabled);
  if (v40)
  {
    goto LABEL_50;
  }

LABEL_53:
  if (v52 >= 0)
  {
    v42 = &v51;
  }

  else
  {
    v42 = v51;
  }

  v18 = HGIQA::WriteBitmap(v42, a4, 0);
  if ((v18 & 1) == 0)
  {
    v45 = atomic_load(HGLogger::_enabled);
    if (v45)
    {
      HGLogger::log("bufferdump", 1, "ERROR writing buffer dump.\n", v43, v44);
    }
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  return v18;
}

void sub_25FC941E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

void HGPBOBitmap::HGPBOBitmap(HGPBOBitmap *this, HGPixelBufferObj *a2)
{
  v4 = HGPixelBufferObj::rect(a2);
  v6 = v5;
  v7 = HGPixelBufferObj::format(a2);
  DataPtr = HGPixelBufferObj::GetDataPtr(a2);
  v9 = HGPixelBufferObj::rowBytes(a2);
  HGBitmap::HGBitmap(this, v4, v6, v7, DataPtr, v9);
  *this = &unk_28721AA90;
  *(this + 16) = a2;
  (*(*a2 + 16))(a2);
}

void HGPBOBitmap::~HGPBOBitmap(HGPBOBitmap *this)
{
  *this = &unk_28721AA90;
  (*(**(this + 16) + 24))(*(this + 16));

  HGBitmap::~HGBitmap(this, v2);
}

{
  *this = &unk_28721AA90;
  (*(**(this + 16) + 24))(*(this + 16));
  HGBitmap::~HGBitmap(this, v2);

  HGObject::operator delete(v3);
}

void HGPBOBitmap::ReadTile(HGPBOBitmap *this, char *a2, HGRect a3, int a4)
{
  v5 = *&a3.var2;
  v6 = *&a3.var0;
  if (HGPixelBufferObj::GetDataPtr(*(this + 16)))
  {
    *&v11.var0 = v6;
    *&v11.var2 = v5;

    HGBitmap::ReadTile(this, a2, v11, a4);
  }

  else
  {

    HGLogger::warning("reading tile from unmapped PBO", v9, v10);
  }
}

void HGCVGLTextureFactory::HGCVGLTextureFactory(HGObject *a1, PC_Sp_counted_base **a2)
{
  v6 = *MEMORY[0x277D85DE8];
  HGObject::HGObject(a1);
  *v3 = &unk_28721AB10;
  v3[2] = 0;
  v3[3] = 0;
  HGTraceGuard::HGTraceGuard(v5, "hgcv", 1, "CVOpenGLESTextureCacheCreate");
  v4.var0 = *a2;
  HGGLContext::Create();
}

void sub_25FC9473C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCSharedCount a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void HGCVGLTextureFactory::~HGCVGLTextureFactory(HGCVGLTextureFactory *this)
{
  *this = &unk_28721AB10;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721AB10;
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v4);
}

void HGCVGLTextureFactory::_createTexture(uint64_t a1@<X0>, HGCVBitmap **a2@<X1>, HGBitmap **a3@<X8>)
{
  *a3 = 0;
  if (HGGLContext::ptr(*(a1 + 16)) && *(a1 + 24))
  {
    HGGLContext::context(&v31, *(a1 + 16));
    HGGLSetCurrentContextGuard::HGGLSetCurrentContextGuard(v32, &v31.var0);
    PCSharedCount::PCSharedCount(&v31);
    v6 = *(*a2 + 16);
    v29 = a3;
    image = 0;
    kdebug_trace();
    HGGLContext::isES2(*(a1 + 16));
    v8 = *(*a2 + 7);
    v7 = *(*a2 + 8);
    v9 = *(*a2 + 5);
    v10 = *(*a2 + 6);
    v11 = HGFormatUtils::toGLInternalFormat(*(*a2 + 4));
    format = HGFormatUtils::toGLFormat(*(*a2 + 4));
    v13 = HGFormatUtils::toGLType(*(*a2 + 4));
    v14 = CVOpenGLESTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], *(a1 + 24), *(v6 + 24), 0, 0xDE1u, v11, v8 - v9, v7 - v10, format, v13, *(*a2 + 17), &image);
    kdebug_trace();
    if (v14)
    {
      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        HGLogger::log("hgcv", 1, " **** CVOpenGLESTextureCacheCreateTextureFromImage() error! booo! (%d)\n", v15, v16, v14);
      }
    }

    else
    {
      Target = CVOpenGLESTextureGetTarget(image);
      Name = CVOpenGLESTextureGetName(image);
      v22 = Name;
      v23 = atomic_load(HGLogger::_enabled);
      if (v23)
      {
        HGLogger::log("hgcv", 1, "created CVGLES texture (%d, %d) for pixelbuffer (%p)\n", v20, v21, Target, Name, *(v6 + 24));
      }

      v24 = *a2;
      v25 = HGObject::operator new(0x20uLL);
      HGCVBufferPairStorage::HGCVBufferPairStorage(v25, v24, image);
      v26 = *a2;
      v27 = HGObject::operator new(0xC8uLL);
      HGGLTexture::HGGLTexture(v27, *(v26 + 20), *(v26 + 28), *(v26 + 4), 0, Target, v22, 0);
      v28 = *v29;
      if (*v29 == v27)
      {
        if (v27)
        {
          (*(*v27 + 24))(v27);
          v27 = v28;
        }

        else
        {
          v27 = *v29;
        }
      }

      else
      {
        if (v28)
        {
          (*(*v28 + 24))(*v29);
        }

        *v29 = v27;
      }

      *(v27 + 3) |= 1u;
      HGBitmap::SetStorage(v27, v25);
      CFRelease(image);
      if (v25)
      {
        (*(*v25 + 24))(v25);
      }
    }

    HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(v32);
  }
}

void sub_25FC94C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, PCSharedCount a14, char a15)
{
  v17 = v15;
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  HGGLSetCurrentContextGuard::~HGGLSetCurrentContextGuard(&a15);
  if (*a12)
  {
    (*(**a12 + 24))(*a12);
  }

  _Unwind_Resume(a1);
}

void HGGPUReadbackJob::HGGPUReadbackJob(HGObject *a1, uint64_t *a2, uint64_t *a3)
{
  HGObject::HGObject(a1);
  *v6 = &unk_28721AB60;
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = 0;
  v8 = *a2;
  v7 = a2[1];
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    v9 = *(a1 + 3);
    *(a1 + 2) = v8;
    *(a1 + 3) = v7;
    if (v9)
    {
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  else
  {
    *(a1 + 2) = v8;
    *(a1 + 3) = 0;
  }

  v10 = *a3;
  HGGLContext::Share();
}

void sub_25FC94EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  PCSharedCount::PCSharedCount(&a9);
  v13 = *(v10 + 4);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v11);
  HGObject::~HGObject(v10);
  _Unwind_Resume(a1);
}

void HGGPUReadbackJob::~HGGPUReadbackJob(HGGPUReadbackJob *this)
{
  *this = &unk_28721AB60;
  v2 = *(this + 5);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 3);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
    v5 = this;
  }

  else
  {
    v5 = this;
  }

  HGObject::~HGObject(v5);
}

{
  HGGPUReadbackJob::~HGGPUReadbackJob(this);

  HGObject::operator delete(v1);
}

void HGGPUReadbackExecUnit::HGGPUReadbackExecUnit(uint64_t a1, uint64_t *a2, void *a3)
{
  *a1 = &unk_28721AB98;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    v6 = *(a1 + 24);
    *(a1 + 16) = v5;
    *(a1 + 24) = v4;
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = a3;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        a3 = v7;
      }
    }
  }

  else
  {
    *(a1 + 16) = v5;
    *(a1 + 24) = 0;
  }

  *(a1 + 12) = 0;
  v8 = *a3;
  HGGLContext::Share();
}

void sub_25FC9526C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  PCSharedCount::PCSharedCount(&a9);
  v13 = *(v11 + 48);
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void HGGPUReadbackExecUnit::~HGGPUReadbackExecUnit(HGGPUReadbackExecUnit *this)
{
  *this = &unk_28721AB98;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 5);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

{
  HGGPUReadbackExecUnit::~HGGPUReadbackExecUnit(this);

  JUMPOUT(0x2666E9F00);
}

BOOL HGGPUReadbackExecUnit::RunLoop(HGGPUReadbackExecUnit *this)
{
  v31 = *MEMORY[0x277D85DE8];
  VirtualScreen = HGGLContext::getVirtualScreen(*(this + 6));
  snprintf(__str, 0x200uLL, "com.apple.helium.rq.rbu%d.vs%d", *(this + 2), VirtualScreen);
  pthread_setname_np(__str);
  result = HGRenderQueue::IsShuttingDown(*(this + 7));
  if (!result)
  {
    while (1)
    {
      HGAutoReleasePoolScopeGuard::HGAutoReleasePoolScopeGuard(&v29);
      v28 = 0;
      if (HGRenderQueue::GetGPUReadbackJob(*(this + 7), this, &v28))
      {
        break;
      }

LABEL_63:
      HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&v29);
      result = HGRenderQueue::IsShuttingDown(*(this + 7));
      if (result)
      {
        goto LABEL_64;
      }
    }

    *(this + 3) = 2;
    v4 = *(v28 + 5);
    v5 = mach_absolute_time();
    v6 = *(*(v4 + 24) + 12);
    if (v6)
    {
      v8 = 6;
      if (*(v4 + 56) != 5)
      {
        goto LABEL_14;
      }
    }

    else
    {
      if ((v6 & 0x10) != 0)
      {
        v7 = 3;
      }

      else
      {
        v7 = 5;
      }

      if ((v6 & 0x20) != 0)
      {
        v8 = 5;
      }

      else
      {
        v8 = v7;
      }

      if (*(v4 + 56) != 5)
      {
        goto LABEL_14;
      }
    }

    if (!*(v4 + 60))
    {
      *(v4 + 60) = v8;
      if ((*(*(this + 7) + 70) & 2) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_15;
    }

LABEL_14:
    if ((*(*(this + 7) + 70) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_15:
    if (v8 == 3)
    {
      printf("Executing GPU-to-PBO Buffer Copy Job <%p>:    %llu   GL Texture\n");
    }

    else if (v8 == 5)
    {
      printf("Executing GPU-to-CPU Buffer Copy Job <%p>:    %llu   Metal Texture\n");
    }

    else
    {
      printf("Executing GPU-to-CPU Buffer Copy Job <%p>:    %llu   IOSurface\n");
    }

LABEL_22:
    kdebug_trace();
    v10 = *(v4 + 24);
    v11 = *(v10 + 12);
    if (v11)
    {
      CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(v10, v9);
      HGCVBitmap::lock(CVBitmapStorage, 0);
      HGCVBitmap::unlock(CVBitmapStorage, 0);
      (*(*CVBitmapStorage + 16))(CVBitmapStorage);
      v13 = *(v4 + 24);
      if ((*(v13 + 12) & 0x10) != 0)
      {
        HGRenderQueue::EnqueueDeleteHGGLTexture(*(this + 7), v13);
      }

      else
      {
        (*(*v13 + 24))(*(v4 + 24));
      }

      if (*(v4 + 60) == 1)
      {
        v16 = HGObject::operator new(0x80uLL);
        HGBitmap::HGBitmap(v16, *(CVBitmapStorage + 20), *(CVBitmapStorage + 28), *(CVBitmapStorage + 4));
        HGCVBitmap::lock(CVBitmapStorage, 1uLL);
        HGRenderUtils::BufferCopier::BufferCopier(&v26);
      }
    }

    else
    {
      if ((v11 & 0x20) == 0)
      {
        if ((v11 & 0x10) != 0)
        {
          HGGPUReadbackExecUnit::ExecutePBOReadback(this, v28);
        }

LABEL_36:
        v18 = mach_absolute_time();
        v19 = HGTiming::GetMachTimeConversionFactor(v18) * (v18 - v5);
        *(v4 + 104) = v19 + *(v4 + 104);
        *(v4 + 112) = v19;
        v26 = *(*(this + 7) + 584);
        v27 = 0;
        HGSynchronizable::Lock(v26);
        std::list<HGGPUReadbackJob *>::remove((*(this + 7) + 592), &v28);
        HGSynchronizable::Unlock(v26);
        kdebug_trace();
        if ((*(*(this + 7) + 70) & 2) != 0)
        {
          if (v8 == 3)
          {
            printf("Completed GPU-to-PBO Buffer Copy Job <%p>: GLTexture     :  %llu  ");
          }

          else if (v8 == 5)
          {
            printf("Completed GPU-to-CPU Buffer Copy Job <%p>: MTLTexture    :  %llu  ");
          }

          else if (*(*(v4 + 192) + 100) == 1)
          {
            printf("Completed GPU-to-CPU Buffer Copy Job <%p>: GL-IOSurface  :  %llu  ");
          }

          else
          {
            printf("Completed GPU-to-CPU Buffer Copy Job <%p>: MTL-IOSurface :  %llu  ");
          }

          printf("%5.1f ms\n", *(v4 + 112) * 1000.0);
        }

        if (*(v4 + 56) != 5)
        {
          *(v4 + 56) = 9;
          HGRenderNode::CallNotifyFunc(v4);
          HGRenderNode::NotifyRenderJobFinished(v4);
LABEL_62:
          (*(*v28 + 24))(v28);
          *(this + 3) = 1;
          goto LABEL_63;
        }

        v20 = HGObject::operator new(0x160uLL);
        HGRenderJob::HGRenderJob(v20);
        HGRenderJob::AddRenderNodeInternal(v20, v4);
        HGUserJob::SetPriority(v20, 2);
        HGUserJob::SetState(v20, 2);
        HGRenderJob::SetPriority(v20, 11);
        v21 = *(v4 + 60);
        switch(v21)
        {
          case 3:
            v22 = 1;
            break;
          case 5:
            v22 = 2;
            break;
          case 6:
            v22 = 0;
            break;
          default:
            goto LABEL_54;
        }

        HGRenderJob::SetGPUGraphicsAPI(v20, v22);
LABEL_54:
        v23 = *(v4 + 72);
        if (v23 && *(v23 + 8) == 1)
        {
          HGRenderJob::SetComputeDevice(v20, (v4 + 72));
        }

        else
        {
          v24 = *(v4 + 88);
          if (v24)
          {
            v25 = HGGLContext::getVirtualScreen(v24);
            HGRenderJob::SetVirtualScreen(v20, v25);
          }
        }

        HGRenderNode::CallNotifyFunc(v4);
        if (HGRenderQueue::EnqueueRenderJob(*(this + 7), v20))
        {
          *(v4 + 56) = -997;
          HGRenderNode::CallNotifyFunc(v4);
          HGRenderNode::NotifyRenderJobFinished(v4);
        }

        (*(*v20 + 24))(v20);
        goto LABEL_62;
      }

      MetalStorage = HGMetalTexture::getMetalStorage(v10, v9);
      CVBitmapStorage = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(CVBitmapStorage, *(*(v4 + 24) + 20), *(*(v4 + 24) + 28), *(*(v4 + 24) + 16));
      v15 = *(this + 4);
      if (v15)
      {
        HGMetalTexture::CopyTexture(MetalStorage, v15, CVBitmapStorage, *(CVBitmapStorage + 20));
      }

      else
      {
        MetalContext = HGGPURenderer::GetMetalContext(*(v4 + 184));
        HGMetalTexture::CopyTexture(MetalStorage, MetalContext, CVBitmapStorage, *(CVBitmapStorage + 20));
      }

      (*(**(v4 + 24) + 24))(*(v4 + 24));
    }

    *(v4 + 24) = CVBitmapStorage;
    *(v4 + 64) = 1;
    goto LABEL_36;
  }

LABEL_64:
  *(this + 3) = 3;
  return result;
}

void sub_25FC95AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  HGObject::operator delete(v14);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&a14);
  _Unwind_Resume(a1);
}

void sub_25FC95B2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  HGObject::operator delete(v14);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&a14);
  _Unwind_Resume(a1);
}

void sub_25FC95B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id a14)
{
  HGObject::operator delete(v14);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(&a14);
  _Unwind_Resume(a1);
}

void sub_25FC95BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  HGRenderUtils::BufferCopier::~BufferCopier(va);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FC95BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, HGSynchronizable *);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  HGSynchronizer::~HGSynchronizer(va);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va1);
  _Unwind_Resume(a1);
}

void sub_25FC95C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FC95C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FC95C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGAutoReleasePoolScopeGuard::~HGAutoReleasePoolScopeGuard(va);
  _Unwind_Resume(a1);
}

uint64_t HGGPUReadbackExecUnit::StartRunLoop(HGGPUReadbackExecUnit *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = (this + 80);
  if (*(this + 10))
  {
    return 0;
  }

  pthread_attr_init(&v5);
  pthread_attr_setdetachstate(&v5, 2);
  v4 = pthread_create(v1, &v5, StartGPUReadbackExecUnitFunc, this);
  pthread_attr_destroy(&v5);
  return v4;
}

HGSynchronizable *HGGPUReadbackExecUnit::ExecutePBOReadback(HGGPUReadbackExecUnit *this, HGGPUReadbackJob *a2)
{
  v3 = *(a2 + 5);
  HGGLTexture::ReadPixels(v4, *(this + 8), *(v4 + 20));
  DataPtr = HGPixelBufferObj::GetDataPtr(*(this + 8));
  ++*(this + 11);
  if (DataPtr)
  {
    v6 = *(this + 8);
    if (*(v3 + 60) == 1)
    {
      *(v3 + 24) = HGPixelBufferObj::CreateBitmap(v6);
      *(v3 + 64) = 1;
      HGPixelBufferObj::ReleaseDataPtr(*(this + 8));
      HGRenderQueue::ReleasePBOToSharedPool(*(this + 7), *(this + 8));
    }

    else
    {
      *(v3 + 136) = v6;
      *(v3 + 64) = 2;
      *(v3 + 24) = 0;
    }

    result = HGRenderQueue::EnqueueDeleteHGGLTexture(*(this + 7), v4);
    *(this + 8) = 0;
  }

  else
  {
    *(v3 + 56) = -997;
    result = HGRenderQueue::ReleasePBOToSharedPool(*(this + 7), *(this + 8));
    *(this + 8) = 0;
  }

  return result;
}

void *std::list<HGGPUReadbackJob *>::remove(void *result, uint64_t *a2)
{
  v22 = &v22;
  __p = &v22;
  v2 = result[1];
  if (v2 == result)
  {
    return result;
  }

  v3 = *a2;
  if (&v22 == result)
  {
    while (1)
    {
      v16 = v2[1];
      if (v2[2] == v3)
      {
        break;
      }

LABEL_24:
      v2 = v16;
      if (v16 == result)
      {
        return result;
      }
    }

    if (v16 == result)
    {
      v17 = 1;
      if (v2 == v16)
      {
LABEL_33:
        if (!v17)
        {
          v16 = v16[1];
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (v16[2] == v3)
      {
        while (1)
        {
          v16 = v16[1];
          v17 = v16 == result;
          if (v16 == result)
          {
            break;
          }

          if (v16[2] != v3)
          {
            goto LABEL_30;
          }
        }
      }

      else
      {
LABEL_30:
        v17 = 0;
      }

      if (v2 == v16)
      {
        goto LABEL_33;
      }
    }

    v18 = *v16;
    v19 = *(*v16 + 8);
    v20 = *v2;
    *(v20 + 8) = v19;
    *v19 = v20;
    v21 = v22;
    v22[1] = v2;
    *v2 = v21;
    v22 = v18;
    v18[1] = &v22;
    goto LABEL_33;
  }

  v4 = 0;
  v5 = &v22;
  do
  {
    v6 = v2[1];
    if (v2[2] == v3)
    {
      while (v6 != result)
      {
        v7 = v6[2] == v3;
        if (v6[2] != v3)
        {
          if (v2 != v6)
          {
            goto LABEL_11;
          }

LABEL_17:
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }

        v6 = v6[1];
      }

      v7 = 1;
      if (v2 == v6)
      {
        goto LABEL_17;
      }

LABEL_11:
      v5 = *v6;
      v8 = 1;
      if (*v6 != v2)
      {
        v9 = v2;
        do
        {
          v9 = v9[1];
          ++v8;
        }

        while (v9 != v5);
      }

      result[2] -= v8;
      v4 += v8;
      v10 = v5[1];
      v11 = *v2;
      *(v11 + 8) = v10;
      *v10 = v11;
      v12 = v22;
      v22[1] = v2;
      *v2 = v12;
      v22 = v5;
      v5[1] = &v22;
      if (!v7)
      {
LABEL_18:
        v6 = v6[1];
      }
    }

LABEL_4:
    v2 = v6;
  }

  while (v6 != result);
  if (v4)
  {
    result = __p;
    v13 = v5[1];
    v14 = *__p;
    *(v14 + 8) = v13;
    *v13 = v14;
    v24 = 0;
    if (result != &v22)
    {
      do
      {
        v15 = result[1];
        operator delete(result);
        result = v15;
      }

      while (v15 != &v22);
    }
  }

  return result;
}

float HGComicImplementation::GetSmallToLargeScale(HGComicImplementation *this, HGRect *a2)
{
  v4 = 1.0;
  v5 = 1.0;
  if (!HGRect::IsInfinite(a2))
  {
    IsInfinite = HGRect::IsInfinite(a2);
    v7 = 1.0;
    if (!IsInfinite)
    {
      v8 = *(this + 3);
      v9 = 1.0;
      if (v8 != 0.0)
      {
        v10 = fminf((a2->var2 - a2->var0), (a2->var3 - a2->var1));
        v11 = v10 * 0.76;
        v9 = v8 / v10;
        if (v11 <= v8)
        {
          v9 = 0.76;
        }
      }

      if (v9 <= 0.9)
      {
        v7 = v9;
      }
    }

    v12 = *(this + 4);
    if (v12 != 0.0)
    {
      v7 = v7 * v12;
    }

    if (v7 <= 0.9)
    {
      v5 = v7;
    }

    else
    {
      v5 = 1.0;
    }
  }

  if (!HGRect::IsInfinite(a2))
  {
    v13 = *(this + 3);
    v14 = 1.0;
    if (v13 != 0.0)
    {
      v15 = fminf((a2->var2 - a2->var0), (a2->var3 - a2->var1));
      v16 = v15 * 0.76;
      v14 = v13 / v15;
      if (v16 <= v13)
      {
        v14 = 0.76;
      }
    }

    if (v14 <= 0.9)
    {
      v4 = v14;
    }

    else
    {
      v4 = 1.0;
    }
  }

  return (1.0 / v5) * v4;
}

float HGComicImplementation::GetLargeToSmallScale(HGComicImplementation *this, HGRect *a2)
{
  v4 = 1.0;
  v5 = 1.0;
  if (!HGRect::IsInfinite(a2))
  {
    v6 = *(this + 3);
    v7 = 1.0;
    if (v6 != 0.0)
    {
      v8 = fminf((a2->var2 - a2->var0), (a2->var3 - a2->var1));
      v9 = v8 * 0.76;
      v7 = v6 / v8;
      if (v9 <= v6)
      {
        v7 = 0.76;
      }
    }

    if (v7 <= 0.9)
    {
      v5 = v7;
    }

    else
    {
      v5 = 1.0;
    }
  }

  if (!HGRect::IsInfinite(a2))
  {
    IsInfinite = HGRect::IsInfinite(a2);
    v11 = 1.0;
    if (!IsInfinite)
    {
      v12 = *(this + 3);
      v13 = 1.0;
      if (v12 != 0.0)
      {
        v14 = fminf((a2->var2 - a2->var0), (a2->var3 - a2->var1));
        v15 = v14 * 0.76;
        v13 = v12 / v14;
        if (v15 <= v12)
        {
          v13 = 0.76;
        }
      }

      if (v13 <= 0.9)
      {
        v11 = v13;
      }
    }

    v16 = *(this + 4);
    if (v16 != 0.0)
    {
      v11 = v11 * v16;
    }

    if (v11 <= 0.9)
    {
      v4 = v11;
    }

    else
    {
      v4 = 1.0;
    }
  }

  return (1.0 / v5) * v4;
}

uint64_t HGComicImplementation::GenerateSobelNode@<X0>(HGComicImplementation *this@<X0>, HGNode *a2@<X1>, float a3@<S0>, int a4@<W2>, HGTextureWrap **a5@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  v10 = HGObject::operator new(0x1A0uLL);
  HGComicSobelOperator::HGComicSobelOperator(v10);
  (*(*v10 + 120))(v10, 0, a2);
  v11 = 0.0;
  (*(*v10 + 96))(v10, 1, a3, 0.0, 0.0, 0.0);
  if (a4)
  {
    if (*(this + 97))
    {
      v11 = 1.0;
    }

    else
    {
      v11 = 0.0;
    }
  }

  (*(*v10 + 96))(v10, 0, v11, 0.0, 0.0, 0.0);
  (*(*v10 + 16))(v10);
  v12 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v12);
  (*(*v12 + 120))(v12, 0, v10);
  HGTextureWrap::SetTextureWrapMode(v12, 1, v13);
  *a5 = v12;
  (*(*v10 + 24))(v10);
  result = (*(*v10 + 24))(v10);
  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC96530(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  (*(*v2 + 24))(v2);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HGComicImplementation::GenerateGaussBlurXNode@<X0>(HGComicImplementation *this@<X0>, HGNode *a2@<X1>, float a3@<S0>, HGTextureWrap **a4@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  v8 = HGObject::operator new(0x1B0uLL);
  HGComicGaussianBlurAndGradientGeneration::HGComicGaussianBlurAndGradientGeneration(v8);
  (*(*v8 + 120))(v8, 0, a2);
  (*(*v8 + 96))(v8, 0, a3 * COERCE_FLOAT(*(this + 9)), 0.0, 0.0, 0.0);
  v9 = (*(*v8 + 96))(v8, 1, 1.0, 0.0, 0.0, 0.0);
  v9.n128_u8[0] = *(this + 96);
  (*(*v8 + 96))(v8, 2, v9.n128_u32[0], 0.0, 0.0, 0.0);
  (*(*v8 + 16))(v8);
  v10 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v10);
  (*(*v10 + 120))(v10, 0, v8);
  HGTextureWrap::SetTextureWrapMode(v10, 1, v11);
  *a4 = v10;
  (*(*v8 + 24))(v8);
  result = (*(*v8 + 24))(v8);
  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC9688C(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  (*(*v2 + 24))(v2);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HGComicImplementation::GenerateGaussBlurYAndGradNode@<X0>(HGComicImplementation *this@<X0>, HGNode *a2@<X1>, float a3@<S0>, HGTextureWrap **a4@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  v8 = HGObject::operator new(0x1B0uLL);
  HGComicGaussianBlurAndGradientGeneration::HGComicGaussianBlurAndGradientGeneration(v8);
  (*(*v8 + 120))(v8, 0, a2);
  (*(*v8 + 96))(v8, 0, *(this + 19) * a3, 0.0, 0.0, 0.0);
  v9 = (*(*v8 + 96))(v8, 1, 0.0, 1.0, 0.0, 0.0);
  v9.n128_u8[0] = *(this + 96);
  (*(*v8 + 96))(v8, 2, v9.n128_u32[0], 0.0, 0.0, 0.0);
  (*(*v8 + 16))(v8);
  v10 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v10);
  (*(*v10 + 120))(v10, 0, v8);
  HGTextureWrap::SetTextureWrapMode(v10, 1, v11);
  *a4 = v10;
  (*(*v8 + 24))(v8);
  result = (*(*v8 + 24))(v8);
  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC96BEC(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  (*(*v2 + 24))(v2);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HGComicImplementation::GenerateBilateralXNode@<X0>(HGComicImplementation *this@<X0>, HGNode *a2@<X1>, HGNode *a3@<X2>, float a4@<S0>, HGTextureWrap **a5@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  v10 = HGObject::operator new(0x1B0uLL);
  HGComicBilateralFilter::HGComicBilateralFilter(v10);
  (*(*v10 + 120))(v10, 0, a2);
  (*(*v10 + 120))(v10, 1, a3);
  (*(*v10 + 96))(v10, 0, 6.51 * COERCE_FLOAT(*(this + 9)), 0.10846, 0.0, 0.0);
  (*(*v10 + 96))(v10, 1, 1.0, 0.0, 0.0, 0.0);
  (*(*v10 + 96))(v10, 2, a4, 0.0, 0.0, 0.0);
  (*(*v10 + 16))(v10);
  v11 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v11);
  (*(*v11 + 120))(v11, 0, v10);
  HGTextureWrap::SetTextureWrapMode(v11, 1, v12);
  *a5 = v11;
  (*(*v10 + 24))(v10);
  result = (*(*v10 + 24))(v10);
  if (a3)
  {
    result = (*(*a3 + 24))(a3);
  }

  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC96FEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGComicImplementation::GenerateBilateralYNode@<X0>(HGComicImplementation *this@<X0>, HGNode *a2@<X1>, HGNode *a3@<X2>, HGTextureWrap **a4@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  v8 = HGObject::operator new(0x1B0uLL);
  HGComicBilateralFilter::HGComicBilateralFilter(v8);
  (*(*v8 + 120))(v8, 0, a2);
  (*(*v8 + 120))(v8, 1, a3);
  (*(*v8 + 96))(v8, 0, *(this + 19) * 6.51, 0.10846, 0.0, 0.0);
  (*(*v8 + 96))(v8, 1, 0.0, 1.0, 0.0, 0.0);
  (*(*v8 + 16))(v8);
  v9 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v9);
  (*(*v9 + 120))(v9, 0, v8);
  HGTextureWrap::SetTextureWrapMode(v9, 1, v10);
  *a4 = v9;
  (*(*v8 + 24))(v8);
  result = (*(*v8 + 24))(v8);
  if (a3)
  {
    result = (*(*a3 + 24))(a3);
  }

  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC973E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGComicImplementation::GenerateQuantizeNode@<X0>(HGComicImplementation *this@<X0>, HGNode *a2@<X1>, float a3@<S0>, HGTextureWrap **a4@<X8>)
{
  v8 = HGObject::operator new(0x1A0uLL);
  HGComicQuantize::HGComicQuantize(v8);
  (*(*v8 + 120))(v8, 0, a2);
  (*(*v8 + 96))(v8, 0, *(this + 11), 0.0, 0.0, 0.0);
  (*(*v8 + 96))(v8, 1, a3, 0.0, 0.0, 0.0);
  (*(*v8 + 16))(v8);
  v9 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v9);
  (*(*v9 + 120))(v9, 0, v8);
  HGTextureWrap::SetTextureWrapMode(v9, 1, v10);
  *a4 = v9;
  (*(*v8 + 24))(v8);
  return (*(*v8 + 24))(v8);
}

void sub_25FC976E8(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  (*(*v1 + 24))(v1);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

uint64_t HGComicImplementation::GenerateColorStrokeNode@<X0>(HGNode *a1@<X1>, HGNode *a2@<X2>, float a3@<S0>, HGTextureWrap **a4@<X8>)
{
  if (a1)
  {
    (*(*a1 + 16))(a1);
  }

  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  v9 = HGObject::operator new(0x1A0uLL);
  HGComicColorStroke::HGComicColorStroke(v9);
  (*(*v9 + 120))(v9, 0, a1);
  (*(*v9 + 120))(v9, 1, a2);
  (*(*v9 + 96))(v9, 0, a3, 0.0, 0.0, 0.0);
  (*(*v9 + 16))(v9);
  v10 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v10);
  (*(*v10 + 120))(v10, 0, v9);
  HGTextureWrap::SetTextureWrapMode(v10, 1, v11);
  *a4 = v10;
  (*(*v9 + 24))(v9);
  result = (*(*v9 + 24))(v9);
  if (a2)
  {
    result = (*(*a2 + 24))(a2);
  }

  if (a1)
  {
    return (*(*a1 + 24))(a1);
  }

  return result;
}

void sub_25FC97A1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGComicImplementation::GenerateEdgesNode@<X0>(float32x2_t *this@<X0>, HGNode *a2@<X1>, HGNode *a3@<X2>, HGTextureWrap **a4@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  v8 = HGObject::operator new(0x1B0uLL);
  HGComicEdges::HGComicEdges(v8);
  (*(*v8 + 120))(v8, 0, a2);
  (*(*v8 + 120))(v8, 1, a3);
  v9 = vaddv_f32(this[9]);
  if (v9 > 1.0)
  {
    v9 = 1.0;
  }

  (*(*v8 + 96))(v8, 0, this[2].f32[1] * v9, 0.0, 0.0, 0.0);
  (*(*v8 + 96))(v8, 1, this[3].f32[0], 0.0, 0.0, 0.0);
  (*(*v8 + 96))(v8, 3, this[3].f32[1], 0.0, 0.0, 0.0);
  (*(*v8 + 96))(v8, 2, 0.5, 0.0, 0.0, 0.0);
  (*(*v8 + 16))(v8);
  v10 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v10);
  (*(*v10 + 120))(v10, 0, v8);
  HGTextureWrap::SetTextureWrapMode(v10, 1, v11);
  *a4 = v10;
  (*(*v8 + 24))(v8);
  result = (*(*v8 + 24))(v8);
  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC97E34(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  (*(*v2 + 24))(v2);
  (*(*v2 + 24))(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t HGComicImplementation::GenerateStrokeAndBlendNode@<X0>(float32x2_t *this@<X0>, HGNode *a2@<X1>, HGNode *a3@<X2>, HGNode *a4@<X3>, HGNode *a5@<X4>, float a6@<S0>, float a7@<S1>, int a8@<W5>, HGTextureWrap **a9@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  if (a4)
  {
    (*(*a4 + 16))(a4);
  }

  if (a5)
  {
    (*(*a5 + 16))(a5);
  }

  v18 = HGObject::operator new(0x1C0uLL);
  HGComicStrokeAndBlend::HGComicStrokeAndBlend(v18);
  (*(*v18 + 120))(v18, 0, a3);
  (*(*v18 + 120))(v18, 1, a2);
  (*(*v18 + 120))(v18, 2, a4);
  (*(*v18 + 120))(v18, 3, a5);
  v19 = vaddv_f32(this[9]);
  if (v19 > 1.0)
  {
    v19 = 1.0;
  }

  (*(*v18 + 96))(v18, 0, this[4].f32[0] * v19, 0.0, 0.0, 0.0);
  if (a8)
  {
    v20.n128_f32[0] = 1.0;
  }

  else
  {
    v20.n128_f32[0] = 0.0;
  }

  (*(*v18 + 96))(v18, 1, v20, 0.0, 0.0, 0.0);
  if (a4)
  {
    v21.n128_f32[0] = 1.0;
  }

  else
  {
    v21.n128_f32[0] = 0.0;
  }

  (*(*v18 + 96))(v18, 2, v21, 0.0, 0.0, 0.0);
  if (a5)
  {
    v22.n128_f32[0] = 1.0;
  }

  else
  {
    v22.n128_f32[0] = 0.0;
  }

  (*(*v18 + 96))(v18, 4, v22, 0.0, 0.0, 0.0);
  (*(*v18 + 96))(v18, 5, a7, 0.0, 0.0, 0.0);
  v23 = (*(*v18 + 96))(v18, 6, a6, 0.0, 0.0, 0.0);
  v23.n128_u8[0] = this[12].u8[2];
  (*(*v18 + 96))(v18, 3, v23.n128_u32[0], 0.0, 0.0, 0.0);
  (*(*v18 + 16))(v18);
  v24 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v24);
  (*(*v24 + 120))(v24, 0, v18);
  HGTextureWrap::SetTextureWrapMode(v24, 1, v25);
  *a9 = v24;
  (*(*v18 + 24))(v18);
  result = (*(*v18 + 24))(v18);
  if (a5)
  {
    result = (*(*a5 + 24))(a5);
  }

  if (a4)
  {
    result = (*(*a4 + 24))(a4);
  }

  if (a3)
  {
    result = (*(*a3 + 24))(a3);
  }

  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC98470(_Unwind_Exception *exception_object)
{
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

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

uint64_t HGComicImplementation::GenerateStrokeNode@<X0>(float32x2_t *this@<X0>, HGNode *a2@<X1>, HGNode *a3@<X2>, float a4@<S0>, HGTextureWrap **a5@<X8>)
{
  if (a2)
  {
    (*(*a2 + 16))(a2);
  }

  if (a3)
  {
    (*(*a3 + 16))(a3);
  }

  v10 = HGObject::operator new(0x1B0uLL);
  HGComicStroke::HGComicStroke(v10);
  (*(*v10 + 120))(v10, 0, a2);
  (*(*v10 + 120))(v10, 1, a3);
  v11 = vaddv_f32(this[9]);
  if (v11 > 1.0)
  {
    v11 = 1.0;
  }

  (*(*v10 + 96))(v10, 0, this[5].f32[0] * v11, 0.0, 0.0, 0.0);
  (*(*v10 + 96))(v10, 3, a4, 0.0, 0.0, 0.0);
  v12.n128_u32[0] = 1.0;
  if (!a3)
  {
    v12.n128_f32[0] = 0.0;
  }

  v13 = (*(*v10 + 96))(v10, 2, v12, 0.0, 0.0, 0.0);
  v13.n128_u8[0] = this[12].u8[2];
  (*(*v10 + 96))(v10, 1, v13.n128_u32[0], 0.0, 0.0, 0.0);
  (*(*v10 + 16))(v10);
  v14 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v14);
  (*(*v14 + 120))(v14, 0, v10);
  HGTextureWrap::SetTextureWrapMode(v14, 1, v15);
  *a5 = v14;
  (*(*v10 + 24))(v10);
  result = (*(*v10 + 24))(v10);
  if (a3)
  {
    result = (*(*a3 + 24))(a3);
  }

  if (a2)
  {
    return (*(*a2 + 24))(a2);
  }

  return result;
}

void sub_25FC9896C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGComicImplementation::GenerateSobelGradients@<X0>(HGComicImplementation *this@<X0>, HGNode *a2@<X1>, float a3@<S0>, float a4@<S1>, int a5@<W2>, HGTextureWrap **a6@<X8>)
{
  HGComicImplementation::GenerateSobelNode(this, a2, a4, a5, &v12);
  v9 = v12;
  HGComicImplementation::GenerateGaussBlurXNode(this, v12, a3, &v13);
  v10 = v13;
  result = HGComicImplementation::GenerateGaussBlurYAndGradNode(this, v13, a3, a6);
  if (v10)
  {
    result = (*(*v10 + 24))(v10);
  }

  if (v9)
  {
    return (*(*v9 + 24))(v9);
  }

  return result;
}

void sub_25FC98B84(_Unwind_Exception *exception_object)
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

HGXForm *HGComicImplementation::GenerateGraph(HGComicImplementation *this, HGRenderer *a2, HGNode *a3, HGNode *a4)
{
  if (a3)
  {
    (*(*a3 + 16))(a3);
    (*(*a3 + 16))(a3);
  }

  v8 = a3;
  if (!HGRect::IsInfinite((this + 52)))
  {
    v9 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v9);
    (*(*v9 + 120))(v9, 0, a3);
    (*(*v9 + 96))(v9, 0, *(this + 13), *(this + 14), *(this + 15), *(this + 16));
    v8 = a3;
    if (v9 != a3)
    {
      if (a3)
      {
        (*(*a3 + 24))(a3);
      }

      v8 = v9;
      (*(*v9 + 16))(v9);
    }

    (*(*v9 + 24))(v9);
  }

  *&v32.var0 = HGRenderer::GetDOD(a2, v8);
  *&v32.var2 = v10;
  v11 = 1.0;
  if (HGRect::IsInfinite(&v32))
  {
    v12 = 0;
  }

  else
  {
    v13 = *(this + 3);
    v12 = 0;
    if (v13 != 0.0)
    {
      v14 = v13 + v13;
      v15 = fminf((v32.var2 - v32.var0), (v32.var3 - v32.var1));
      if (v15 > v14)
      {
        v16 = v14 / v15;
        if ((v14 / v15) <= 0.9 && v16 != 1.0)
        {
          HGTransform::HGTransform(v31);
          HGTransform::Scale(v31, v16, v16, 1.0);
          v18 = HGObject::operator new(0x210uLL);
          HGXForm::HGXForm(v18);
          (*(*v18 + 120))(v18, 0, v8);
          (*(*v18 + 576))(v18, v31);
          (*(*v18 + 592))(v18, 6, 1.0);
          if (v8 != v18)
          {
            if (v8)
            {
              (*(*v8 + 24))(v8);
            }

            v8 = v18;
            (*(*v18 + 16))(v18);
          }

          (*(*v18 + 24))(v18);
          HGTransform::~HGTransform(v31);
          v12 = 1;
          v11 = v16;
        }
      }
    }
  }

  *&v30.var0 = HGRenderer::GetDOD(a2, v8);
  *&v30.var2 = v19;
  v20 = HGObject::operator new(0x1D0uLL);
  HGTextureWrap::HGTextureWrap(v20);
  (*(*v20 + 120))(v20, 0, v8);
  HGTextureWrap::SetTextureWrapMode(v20, 1, v21);
  v24 = *(this + 12);
  if (v24 > 6)
  {
    if (v24 > 16)
    {
      if (v24 == 17 || v24 == 24)
      {
        HGComicImplementation::GenerateGraphStyleInk(this, v20, &v30, v31);
        goto LABEL_37;
      }
    }

    else
    {
      if (v24 == 7)
      {
        HGComicImplementation::GenerateGraphStylePosterParent(this, v20, &v30, a4, 0, 0, v31);
        goto LABEL_37;
      }

      if (v24 == 10)
      {
        HGComicImplementation::GenerateGraphStylePosterParent(this, v20, &v30, 0, 0, 1, v31);
        goto LABEL_37;
      }
    }

LABEL_42:
    HGLogger::error("Unsupported style detected in HGComic.  No HGComic graph generated.", v22, v23, *&v30.var0, *&v30.var2);
    v25 = 0;
    v26 = 0;
    if (v12)
    {
      goto LABEL_38;
    }

    goto LABEL_43;
  }

  if ((v24 - 1) < 2)
  {
    HGComicImplementation::GenerateGraphStylePosterParent(this, v20, &v30, a4, 1, 0, v31);
    goto LABEL_37;
  }

  if (!v24)
  {
    HGComicImplementation::GenerateGraphStyleClassicParent(this, v20, &v30, 0, 1, v31);
    goto LABEL_37;
  }

  if (v24 != 5)
  {
    goto LABEL_42;
  }

  HGComicImplementation::GenerateGraphStyleClassicParent(this, v20, &v30, a4, 0, v31);
LABEL_37:
  v25 = v31[0];
  if (v12)
  {
LABEL_38:
    HGTransform::HGTransform(v31);
    HGTransform::Scale(v31, (1.0 / v11), (1.0 / v11), 1.0);
    v26 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v26);
    (*(*v26 + 120))(v26, 0, v25);
    (*(*v26 + 576))(v26, v31);
    (*(*v26 + 16))(v26);
    (*(*v26 + 24))(v26);
    HGTransform::~HGTransform(v31);
    goto LABEL_43;
  }

  if (v31[0])
  {
    v26 = v31[0];
    (*(*v31[0] + 16))(v31[0]);
  }

  else
  {
    v26 = 0;
  }

LABEL_43:
  if (!HGRect::IsInfinite((this + 52)))
  {
    v27 = HGObject::operator new(0x1A0uLL);
    HGCrop::HGCrop(v27);
    (*(*v27 + 120))(v27, 0, v26);
    (*(*v27 + 96))(v27, 0, *(this + 13), *(this + 14), *(this + 15), *(this + 16));
    if (v26 != v27)
    {
      if (v26)
      {
        (*(*v26 + 24))(v26);
      }

      v26 = v27;
      (*(*v27 + 16))(v27);
    }

    (*(*v27 + 24))(v27);
  }

  v28 = *(this + 13);
  if (v28 == v26)
  {
    if (!v26)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v28)
  {
    (*(*v28 + 24))(*(this + 13));
  }

  *(this + 13) = v26;
  if (v26)
  {
    (*(*v26 + 16))(v26);
    v28 = *(this + 13);
LABEL_55:
    (*(*v26 + 24))(v26);
LABEL_56:
    if (!v25)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v28 = 0;
  if (v25)
  {
LABEL_57:
    (*(*v25 + 24))(v25);
  }

LABEL_58:
  (*(*v20 + 24))(v20);
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  return v28;
}

void sub_25FC994FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  HGObject::operator delete(v13);
  HGTransform::~HGTransform(&a11);
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  _Unwind_Resume(a1);
}

HGNode *HGComicImplementation::GenerateGraphStyleClassicParent@<X0>(float32x2_t *this@<X0>, HGNode *a2@<X1>, HGRect *a3@<X2>, HGNode *a4@<X3>, int a5@<W4>, HGLegacyBlend **a6@<X8>)
{
  v12 = this[4].f32[1];
  IsInfinite = HGRect::IsInfinite(a3);
  v14 = 1.0;
  if (!IsInfinite)
  {
    v15 = HGRect::IsInfinite(a3);
    v14 = 1.0;
    if (!v15)
    {
      v16 = this[1].f32[1];
      v17 = 1.0;
      if (v16 != 0.0)
      {
        v18 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
        v19 = v18 * 0.76;
        v17 = v16 / v18;
        if (v19 <= v16)
        {
          v17 = 0.76;
        }
      }

      if (v17 <= 0.9)
      {
        v14 = v17;
      }
    }

    v20 = this[2].f32[0];
    if (v20 != 0.0)
    {
      v14 = v14 * v20;
    }

    if (v14 > 0.9)
    {
      v14 = 1.0;
    }
  }

  HGComicImplementation::GenerateSobelGradients(this, a2, v12, v14, 1, &v61);
  v21 = v61;
  v54 = v61;
  v22 = HGRect::IsInfinite(a3);
  v23 = 1.0;
  if (!v22)
  {
    v24 = HGRect::IsInfinite(a3);
    v23 = 1.0;
    v25 = 1.0;
    if (!v24)
    {
      v26 = this[1].f32[1];
      v27 = 1.0;
      if (v26 != 0.0)
      {
        v28 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
        v29 = v28 * 0.76;
        v27 = v26 / v28;
        if (v29 <= v26)
        {
          v27 = 0.76;
        }
      }

      if (v27 <= 0.9)
      {
        v25 = v27;
      }
    }

    v30 = this[2].f32[0];
    if (v30 != 0.0)
    {
      v25 = v25 * v30;
    }

    if (v25 <= 0.9)
    {
      v23 = v25;
    }
  }

  HGComicImplementation::GenerateBilateralXNode(this, a2, v21, v23, &v62);
  v31 = v62;
  HGComicImplementation::GenerateBilateralYNode(this, v62, v21, &v60);
  if (v31)
  {
    (*(*v31 + 24))(v31);
  }

  v32 = v60;
  v55 = v60;
  SmallToLargeScale = HGComicImplementation::GetSmallToLargeScale(this, a3);
  HGComicImplementation::GenerateQuantizeNode(this, v32, SmallToLargeScale, &v62);
  v34 = v62;
  LargeToSmallScale = HGComicImplementation::GetLargeToSmallScale(this, a3);
  HGComicImplementation::GenerateSobelGradients(this, v34, 2.1875, LargeToSmallScale, 0, &v59);
  v36 = v59;
  v37 = HGComicImplementation::GetLargeToSmallScale(this, a3);
  HGComicImplementation::GenerateColorStrokeNode(v34, v36, v37, &v58);
  v38 = a4;
  HGComicImplementation::GenerateEdgesNode(this, v55, v21, &v57);
  if (this[12].i8[0])
  {
    v39 = a2;
  }

  else
  {
    v39 = 0;
  }

  v40 = HGComicImplementation::GetLargeToSmallScale(this, a3);
  v41 = HGRect::IsInfinite(a3);
  v42 = 1.0;
  if (!v41)
  {
    v43 = this[1].f32[1];
    v44 = 1.0;
    if (v43 != 0.0)
    {
      v45 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
      v46 = v45 * 0.76;
      v44 = v43 / v45;
      if (v46 <= v43)
      {
        v44 = 0.76;
      }
    }

    if (v44 <= 0.9)
    {
      v42 = v44;
    }
  }

  v47 = a6;
  v48 = v57;
  v49 = v58;
  HGComicImplementation::GenerateStrokeAndBlendNode(this, v58, v57, v38, v39, 1.0 / v42, v40, 0, &v56);
  if (!a5)
  {
    *v47 = v56;
    v52 = v54;
    if (!v48)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v50 = HGObject::operator new(0x1C0uLL);
  HGLegacyBlend::HGLegacyBlend(v50);
  *v47 = v50;
  (*(*v50 + 120))(v50, 0, a2);
  v51 = v56;
  (*(*v50 + 120))(v50, 1, v56);
  (*(*v50 + 96))(v50, 0, 8.0, 0.0, 0.0, 0.0);
  (*(*v50 + 96))(v50, 1, 0.5, 0.0, 0.0, 0.0);
  v52 = v54;
  if (v51)
  {
    (*(*v51 + 24))(v51);
  }

  if (v48)
  {
LABEL_40:
    (*(*v48 + 24))(v48);
  }

LABEL_41:
  if (v49)
  {
    (*(*v49 + 24))(v49);
  }

  if (v36)
  {
    (*(*v36 + 24))(v36);
  }

  if (v34)
  {
    (*(*v34 + 24))(v34);
  }

  result = v55;
  if (v55)
  {
    result = (*(*v55 + 24))(v55);
  }

  if (v52)
  {
    return (*(*v52 + 24))(v52);
  }

  return result;
}

void sub_25FC99D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  HGObject::operator delete(v16);
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  if (v15)
  {
    (*(*v15 + 24))(v15);
  }

  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  if (a11)
  {
    (*(*a11 + 24))(a11);
  }

  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(a1);
}

HGTextureWrap *HGComicImplementation::GenerateGraphStylePosterParent@<X0>(float32x2_t *this@<X0>, HGNode *a2@<X1>, HGRect *a3@<X2>, HGNode *a4@<X3>, int a5@<W4>, int a6@<W5>, HGLegacyBlend **a7@<X8>)
{
  v13 = this[4].f32[1];
  IsInfinite = HGRect::IsInfinite(a3);
  v15 = 1.0;
  if (!IsInfinite)
  {
    v16 = HGRect::IsInfinite(a3);
    v15 = 1.0;
    if (!v16)
    {
      v17 = this[1].f32[1];
      v18 = 1.0;
      if (v17 != 0.0)
      {
        v19 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
        v20 = v19 * 0.76;
        v18 = v17 / v19;
        if (v20 <= v17)
        {
          v18 = 0.76;
        }
      }

      if (v18 <= 0.9)
      {
        v15 = v18;
      }
    }

    v21 = this[2].f32[0];
    if (v21 != 0.0)
    {
      v15 = v15 * v21;
    }

    if (v15 > 0.9)
    {
      v15 = 1.0;
    }
  }

  HGComicImplementation::GenerateSobelGradients(this, a2, v13, v15, 1, &v61);
  v22 = v61;
  v23 = HGRect::IsInfinite(a3);
  v24 = 1.0;
  if (!v23)
  {
    v25 = HGRect::IsInfinite(a3);
    v24 = 1.0;
    v26 = 1.0;
    if (!v25)
    {
      v27 = this[1].f32[1];
      v28 = 1.0;
      if (v27 != 0.0)
      {
        v29 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
        v30 = v29 * 0.76;
        v28 = v27 / v29;
        if (v30 <= v27)
        {
          v28 = 0.76;
        }
      }

      if (v28 <= 0.9)
      {
        v26 = v28;
      }
    }

    v31 = this[2].f32[0];
    if (v31 != 0.0)
    {
      v26 = v26 * v31;
    }

    if (v26 <= 0.9)
    {
      v24 = v26;
    }
  }

  HGComicImplementation::GenerateBilateralXNode(this, a2, v22, v24, &v62);
  v32 = v62;
  HGComicImplementation::GenerateBilateralYNode(this, v62, v22, &v60);
  if (v32)
  {
    (*(*v32 + 24))(v32);
  }

  v33 = v60;
  HGComicImplementation::GenerateEdgesNode(this, v60, v22, &v62);
  SmallToLargeScale = HGComicImplementation::GetSmallToLargeScale(this, a3);
  HGComicImplementation::GenerateQuantizeNode(this, v33, SmallToLargeScale, &v59);
  v55 = a2;
  v35 = a4;
  v36 = v59;
  LargeToSmallScale = HGComicImplementation::GetLargeToSmallScale(this, a3);
  HGComicImplementation::GenerateSobelGradients(this, v36, 2.1875, LargeToSmallScale, 0, &v58);
  v38 = v58;
  v53 = v58;
  v39 = HGComicImplementation::GetLargeToSmallScale(this, a3);
  HGComicImplementation::GenerateColorStrokeNode(v36, v38, v39, &v57);
  if (this[12].i8[0])
  {
    v40 = v55;
  }

  else
  {
    v40 = 0;
  }

  v41 = HGComicImplementation::GetLargeToSmallScale(this, a3);
  v42 = HGRect::IsInfinite(a3);
  v43 = 1.0;
  if (!v42)
  {
    v44 = this[1].f32[1];
    v45 = 1.0;
    if (v44 != 0.0)
    {
      v46 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
      v47 = v46 * 0.76;
      v45 = v44 / v46;
      if (v47 <= v44)
      {
        v45 = 0.76;
      }
    }

    if (v45 <= 0.9)
    {
      v43 = v45;
    }
  }

  v48 = v57;
  v49 = v62;
  HGComicImplementation::GenerateStrokeAndBlendNode(this, v57, v62, v35, v40, 1.0 / v43, v41, a6, &v56);
  v50 = v56;
  *a7 = v56;
  if (v50)
  {
    (*(*v50 + 16))(v50);
  }

  if (a5)
  {
    v51 = HGObject::operator new(0x1C0uLL);
    HGLegacyBlend::HGLegacyBlend(v51);
    (*(*v51 + 120))(v51, 0, v55);
    (*(*v51 + 120))(v51, 1, v50);
    (*(*v51 + 96))(v51, 0, 8.0, 0.0, 0.0, 0.0);
    (*(*v51 + 96))(v51, 1, 0.5, 0.0, 0.0, 0.0);
    if (v50 != v51)
    {
      if (v50)
      {
        (*(*v50 + 24))(v50);
      }

      *a7 = v51;
      (*(*v51 + 16))(v51);
    }

    (*(*v51 + 24))(v51);
  }

  if (v50)
  {
    (*(*v50 + 24))(v50);
  }

  if (v48)
  {
    (*(*v48 + 24))(v48);
  }

  result = v53;
  if (v53)
  {
    result = (*(*v53 + 24))(v53);
  }

  if (v36)
  {
    result = (*(*v36 + 24))(v36);
  }

  if (v49)
  {
    result = (*(*v49 + 24))(v49);
  }

  if (v33)
  {
    result = (*(*v33 + 24))(v33);
  }

  if (v22)
  {
    return (*(*v22 + 24))(v22);
  }

  return result;
}

void sub_25FC9A648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  HGObject::operator delete(v19);
  if (v18)
  {
    (*(*v18 + 24))(v18);
    (*(*v18 + 24))(v18);
  }

  if (a13)
  {
    (*(*a13 + 24))(a13);
  }

  if (a9)
  {
    (*(*a9 + 24))(a9);
  }

  if (a15)
  {
    (*(*a15 + 24))(a15);
  }

  if (a18)
  {
    (*(*a18 + 24))(a18);
  }

  if (a16)
  {
    (*(*a16 + 24))(a16);
  }

  if (a17)
  {
    (*(*a17 + 24))(a17);
  }

  _Unwind_Resume(a1);
}

uint64_t HGComicImplementation::GenerateGraphStyleInk@<X0>(float32x2_t *this@<X0>, HGNode *a2@<X1>, HGRect *a3@<X2>, HGTextureWrap **a4@<X8>)
{
  v9 = this[4].f32[1];
  IsInfinite = HGRect::IsInfinite(a3);
  v11 = 1.0;
  if (!IsInfinite)
  {
    v12 = HGRect::IsInfinite(a3);
    v11 = 1.0;
    if (!v12)
    {
      v13 = this[1].f32[1];
      v14 = 1.0;
      if (v13 != 0.0)
      {
        v15 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
        v16 = v15 * 0.76;
        v14 = v13 / v15;
        if (v16 <= v13)
        {
          v14 = 0.76;
        }
      }

      if (v14 <= 0.9)
      {
        v11 = v14;
      }
    }

    v17 = this[2].f32[0];
    if (v17 != 0.0)
    {
      v11 = v11 * v17;
    }

    if (v11 > 0.9)
    {
      v11 = 1.0;
    }
  }

  HGComicImplementation::GenerateSobelGradients(this, a2, v9, v11, 1, &v44);
  v18 = v44;
  v19 = HGRect::IsInfinite(a3);
  v20 = 1.0;
  if (!v19)
  {
    v21 = HGRect::IsInfinite(a3);
    v20 = 1.0;
    v22 = 1.0;
    if (!v21)
    {
      v23 = this[1].f32[1];
      v24 = 1.0;
      if (v23 != 0.0)
      {
        v25 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
        v26 = v25 * 0.76;
        v24 = v23 / v25;
        if (v26 <= v23)
        {
          v24 = 0.76;
        }
      }

      if (v24 <= 0.9)
      {
        v22 = v24;
      }
    }

    v27 = this[2].f32[0];
    if (v27 != 0.0)
    {
      v22 = v22 * v27;
    }

    if (v22 <= 0.9)
    {
      v20 = v22;
    }
  }

  HGComicImplementation::GenerateBilateralXNode(this, a2, v18, v20, &v45);
  v28 = v45;
  HGComicImplementation::GenerateBilateralYNode(this, v45, v18, &v43);
  if (v28)
  {
    (*(*v28 + 24))(v28);
  }

  v29 = v43;
  HGComicImplementation::GenerateEdgesNode(this, v43, v18, &v45);
  v30 = this[12].u8[0];
  v31 = v45;
  v32 = HGRect::IsInfinite(a3);
  v33 = 1.0;
  if (!v32)
  {
    v34 = HGRect::IsInfinite(a3);
    v33 = 1.0;
    v35 = 1.0;
    if (!v34)
    {
      v36 = this[1].f32[1];
      v37 = 1.0;
      if (v36 != 0.0)
      {
        v38 = fminf((a3->var2 - a3->var0), (a3->var3 - a3->var1));
        v39 = v38 * 0.76;
        v37 = v36 / v38;
        if (v39 <= v36)
        {
          v37 = 0.76;
        }
      }

      if (v37 <= 0.9)
      {
        v35 = v37;
      }
    }

    v40 = this[2].f32[0];
    if (v40 != 0.0)
    {
      v35 = v35 * v40;
    }

    if (v35 <= 0.9)
    {
      v33 = v35;
    }
  }

  if (v30)
  {
    v41 = a2;
  }

  else
  {
    v41 = 0;
  }

  result = HGComicImplementation::GenerateStrokeNode(this, v31, v41, 1.0 / v33, a4);
  if (v31)
  {
    result = (*(*v31 + 24))(v31);
  }

  if (v29)
  {
    result = (*(*v29 + 24))(v29);
  }

  if (v18)
  {
    return (*(*v18 + 24))(v18);
  }

  return result;
}

void sub_25FC9AC48(_Unwind_Exception *exception_object)
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

void HGComic::HGComic(HGComic *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28721ABE0;
  v3 = HGObject::operator new(0x70uLL);
  HGObject::HGObject(v3);
  *v3 = &unk_28721AE48;
  *(v3 + 12) = 0u;
  *(v3 + 28) = 0u;
  *(v3 + 44) = xmmword_2608157F0;
  *(v3 + 60) = 0x8000000080000000;
  __asm { FMOV            V0.2S, #1.0 }

  *(v3 + 9) = _D0;
  *(v3 + 10) = vdup_n_s32(0x3D4CCCCDu);
  *(v3 + 11) = _D0;
  *(v3 + 48) = 256;
  v3[98] = 1;
  *(v3 + 13) = 0;
  *(this + 51) = v3;
}

void sub_25FC9ADF4(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGComic::~HGComic(HGComic *this)
{
  *this = &unk_28721ABE0;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGComic::~HGComic(HGNode *this)
{
  *this = &unk_28721ABE0;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGComic::SetParameter(HGComic *this, int a2, float a3, float32_t a4, float a5, float a6, uint64_t a7, const char *a8, char *a9)
{
  switch(a2)
  {
    case 0:
      v9 = *(this + 51);
      if (*(v9 + 12) == a3)
      {
        return 0;
      }

      *(v9 + 12) = ceilf(a3);
      return 1;
    case 1:
      v27 = *(this + 51);
      if (*(v27 + 16) == a3)
      {
        return 0;
      }

      *(v27 + 16) = a3;
      return 1;
    case 2:
      v23 = *(this + 51);
      if (*(v23 + 20) == a3)
      {
        return 0;
      }

      *(v23 + 20) = a3;
      return 1;
    case 3:
      v25 = *(this + 51);
      if (*(v25 + 24) == a3)
      {
        return 0;
      }

      *(v25 + 24) = a3;
      return 1;
    case 4:
      v20 = *(this + 51);
      if (*(v20 + 28) == a3)
      {
        return 0;
      }

      *(v20 + 28) = a3;
      return 1;
    case 5:
      v28 = *(this + 51);
      if (*(v28 + 32) == a3)
      {
        return 0;
      }

      *(v28 + 32) = a3;
      return 1;
    case 6:
      v30 = *(this + 51);
      if (*(v30 + 36) == a3)
      {
        return 0;
      }

      *(v30 + 36) = a3;
      return 1;
    case 7:
      v26 = *(this + 51);
      if (*(v26 + 40) == a3)
      {
        return 0;
      }

      *(v26 + 40) = a3;
      return 1;
    case 8:
      v41 = *(this + 51);
      if (*(v41 + 44) == a3)
      {
        return 0;
      }

      *(v41 + 44) = a3;
      return 1;
    case 9:
      v22 = *(this + 51);
      if (*(v22 + 48) == a3)
      {
        return 0;
      }

      *(v22 + 48) = a3;
      return 1;
    case 10:
      v32 = *(this + 51);
      v33 = *(v32 + 52);
      v34 = *(v32 + 60);
      v35 = HGRectMake4i(a3, a4, a5, a6);
      if (v35 == v33 && v36 == v34 && (v35 ^ v33) >> 32 == 0 && (v36 ^ v34) >> 32 == 0)
      {
        return 0;
      }

      v40 = *(this + 51);
      *(v40 + 52) = v35;
      *(v40 + 60) = v36;
      return 1;
    case 11:
      v11 = *(this + 51);
      if (COERCE_FLOAT(*&v11[9]) == a3 && COERCE_FLOAT(HIDWORD(*&v11[9])) == a4)
      {
        return 0;
      }

      v13.f32[0] = a3;
      if (COERCE_FLOAT(*&v11[10]) > a3)
      {
        v14 = atomic_load(HGLogger::_enabled);
        if (v14)
        {
          v42 = a4;
          v45 = a3;
          v15 = a3;
          HGLogger::log("gpu", 2, "proxy scale x value out of bounds :%f, clamped to minimum: %f\n", a8, a9, a3, COERCE_FLOAT(*&v11[10]));
          a4 = v42;
          v13.f32[0] = v45;
          a3 = v15;
        }
      }

      if (v11[10].f32[1] > a4)
      {
        v16 = atomic_load(HGLogger::_enabled);
        if (v16)
        {
          v43 = a4;
          v46 = v13.i32[0];
          v17 = a3;
          HGLogger::log("gpu", 2, "proxy scale y value out of bounds :%f, clamped to minimum: %f\n", a8, a9, a4, v11[10].f32[1]);
          a4 = v43;
          v13.i32[0] = v46;
          a3 = v17;
        }
      }

      v13.f32[1] = a4;
      if (COERCE_FLOAT(*&v11[11]) < a3)
      {
        v18 = atomic_load(HGLogger::_enabled);
        if (v18)
        {
          v44 = a4;
          v47 = v13;
          HGLogger::log("gpu", 2, "proxy scale x value out of bounds :%f, clamped to maximum: %f\n", a8, a9, a3, COERCE_FLOAT(*&v11[11]));
          a4 = v44;
          v13 = v47;
        }
      }

      if (v11[11].f32[1] < a4)
      {
        v19 = atomic_load(HGLogger::_enabled);
        if (v19)
        {
          v48 = v13;
          HGLogger::log("gpu", 2, "proxy scale y value out of bounds :%f, clamped to maximum: %f\n", a8, a9, a4, v11[11].f32[1]);
          v13 = v48;
        }
      }

      v11[9] = vminnm_f32(vmaxnm_f32(v13, v11[10]), v11[11]);
      return 1;
    case 12:
      v21 = *(this + 51);
      if ((a3 == 1.0) == *(v21 + 96))
      {
        return 0;
      }

      *(v21 + 96) = a3 == 1.0;
      return 1;
    case 13:
      v29 = *(this + 51);
      if ((a3 == 1.0) == *(v29 + 97))
      {
        return 0;
      }

      *(v29 + 97) = a3 == 1.0;
      return 1;
    case 14:
      v10 = *(this + 51);
      if ((a3 == 1.0) == *(v10 + 98))
      {
        return 0;
      }

      *(v10 + 98) = a3 == 1.0;
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

HGXForm *HGComic::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  if (!Input)
  {
    return Input;
  }

  v5 = HGRenderer::GetInput(a2, this, 1u);
  if (((*(*a2 + 304))(a2) & 1) == 0 && !(*(*a2 + 128))(a2, 43))
  {
    HGLogger::warning("No GLES support in HGComic - use Metal on iOS", v6, v7);
    return Input;
  }

  v8 = *(this + 51);

  return HGComicImplementation::GenerateGraph(v8, a2, Input, v5);
}

void HGComicImplementation::~HGComicImplementation(HGComicImplementation *this)
{
  *this = &unk_28721AE48;
  v1 = *(this + 13);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 13));
    this = v2;
  }

  HGObject::~HGObject(this);
}

{
  *this = &unk_28721AE48;
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

void HG_RENDERER_ENV::HG_RENDERER_ENV(HG_RENDERER_ENV *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v158 = (this + 24);
  *this = 0u;
  HGLogger::setLevel("envInit", 0);
  HGTraceGuard::HGTraceGuard(v170, "envInit", 1, "HG_RENDERER_ENV::HG_RENDERER_ENV()");
  v2 = getenv("HG_ENABLE_LOGGER");
  if (v2)
  {
    atomic_store(atoi(v2) != 0, HGLogger::_enabled);
  }

  v3 = getenv("HG_ENV_NO_FLUSH_OPT");
  if (v3)
  {
    HG_RENDERER_ENV::NO_FLUSH_OPT = atoi(v3);
  }

  v4 = getenv("HG_ENV_LOW_MEMORY_USAGE");
  if (v4)
  {
    HG_RENDERER_ENV::LOW_MEMORY_USAGE = atoi(v4);
  }

  v5 = getenv("HG_ENV_TRACK_TEXTURE_USAGE");
  if (v5)
  {
    HG_RENDERER_ENV::TRACK_TEXTURE_USAGE = atoi(v5);
  }

  v6 = getenv("HG_ENV_VALIDATE_CURRENT_GL_CONTEXT");
  if (v6)
  {
    HG_RENDERER_ENV::VALIDATE_CURRENT_GL_CONTEXT = atoi(v6);
  }

  if (getenv("HG_ENV_USE_V210_BGRA_FORMAT"))
  {
    HGLogger::warning("HG_ENV_USE_V210_BGRA_FORMAT is deprecated.", v7, v8);
  }

  v9 = getenv("HG_ENV_SCISSORED_LARGE_TRI_TILES");
  if (v9)
  {
    HG_RENDERER_ENV::SCISSORED_LARGE_TRI_TILES = atoi(v9);
  }

  v10 = getenv("HG_ENV_SCISSORED_LARGE_TRI_TILES_WIDTH");
  if (v10)
  {
    HG_RENDERER_ENV::SCISSORED_LARGE_TRI_TILES_WIDTH = atoi(v10);
  }

  v11 = getenv("HG_ENV_FORCE_PAGE_SIZE");
  if (v11)
  {
    HG_RENDERER_ENV::FORCE_PAGE_SIZE = atoi(v11);
  }

  v12 = getenv("HG_ENV_FORCE_NO_PBO_READBACK");
  if (v12)
  {
    HG_RENDERER_ENV::FORCE_NO_PBO_READBACK = atoi(v12);
  }

  if (getenv("HG_ENV_FORCE_INTERLEAVED_RENDER_READBACK"))
  {
    HGLogger::warning("HG_ENV_FORCE_INTERLEAVED_RENDER_READBACK is deprecated.", v13, v14);
  }

  v15 = getenv("HG_ENV_FORCE_TEXTURE_STORAGE_HINT");
  if (v15)
  {
    v16 = v15;
    v17 = strlen(v15);
    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v17;
    if (v17 >= 0x17)
    {
      operator new();
    }

    v169 = v17;
    if (v17)
    {
      memmove(&__dst, v16, v17);
    }

    *(&__dst + v20) = 0;
    v166 = 7;
    strcpy(__c, "PRIVATE");
    HIBYTE(v164[2]) = 6;
    strcpy(v164, "CACHED");
    HIBYTE(v163[2]) = 6;
    strcpy(v163, "SHARED");
    if ((v169 & 0x80u) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    v22 = p_dst;
    if ((v169 & 0x80u) == 0)
    {
      v23 = v169;
    }

    else
    {
      v23 = v168;
    }

    v24 = p_dst + v23;
    if (v23 > 6)
    {
      v25 = v23;
      v26 = p_dst;
      do
      {
        v27 = memchr(v26, SLOBYTE(__c[0]), v25 - 6);
        if (!v27)
        {
          break;
        }

        if (*v27 == __c[0] && *(v27 + 3) == *(__c + 3))
        {
          if (v27 != v24 && v27 - p_dst != -1)
          {
            v29 = 0;
            goto LABEL_70;
          }

          break;
        }

        v26 = (v27 + 1);
        v25 = v24 - v26;
      }

      while (v24 - v26 > 6);
    }

    if (v23 >= 6)
    {
      v30 = v23;
      v31 = p_dst;
      while (1)
      {
        v32 = memchr(v31, SLOBYTE(v164[0]), v30 - 5);
        if (!v32)
        {
          goto LABEL_60;
        }

        if (*v32 == LODWORD(v164[0]) && *(v32 + 2) == WORD2(v164[0]))
        {
          break;
        }

        v31 = (v32 + 1);
        v30 = v24 - v31;
        if (v24 - v31 < 6)
        {
          goto LABEL_60;
        }
      }

      if (v32 != v24 && v32 - p_dst != -1)
      {
        v29 = 1;
LABEL_70:
        HG_RENDERER_ENV::FORCE_TEXTURE_STORAGE_HINT = v29;
        goto LABEL_72;
      }

LABEL_60:
      do
      {
        v34 = memchr(v22, SLOBYTE(v163[0]), v23 - 5);
        if (!v34)
        {
          break;
        }

        if (*v34 == LODWORD(v163[0]) && *(v34 + 2) == WORD2(v163[0]))
        {
          if (v34 != v24 && v34 - p_dst != -1)
          {
            v29 = 2;
            goto LABEL_70;
          }

          break;
        }

        v22 = (v34 + 1);
        v23 = v24 - (v34 + 1);
      }

      while (v23 >= 6);
    }

    HGLogger::warning("invalid FORCE_TEXTURE_STORAGE_HINT value", v18, v19);
LABEL_72:
    if (v169 < 0)
    {
      operator delete(__dst);
    }
  }

  v36 = getenv("HG_ENV_FORCE_FULLSIZE_TEXTURE_UPLOAD");
  if (v36)
  {
    HG_RENDERER_ENV::FORCE_FULLSIZE_TEXTURE_UPLOAD = atoi(v36);
  }

  v37 = getenv("HG_ENV_METAL_BLIT_MAX_TILE_SIZE_MB");
  if (v37)
  {
    HG_RENDERER_ENV::METAL_BLIT_MAX_TILE_SIZE_MB = atoi(v37);
  }

  v38 = getenv("HG_ENV_WAIT_FOR_QUEUED_TEXTURE_ONE_BY_ONE");
  if (v38)
  {
    HG_RENDERER_ENV::WAIT_FOR_QUEUED_TEXTURE_ONE_BY_ONE = atoi(v38);
  }

  v39 = getenv("HG_ENV_METAL_MAX_ENCODERS_PER_BUFFER");
  if (v39)
  {
    HG_RENDERER_ENV::METAL_MAX_ENCODERS_PER_BUFFER = atoi(v39);
  }

  v40 = getenv("HG_ENV_METAL_MAX_COMMAND_BUFFERS_COUNT");
  if (v40)
  {
    HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_COUNT = atoi(v40);
  }

  v41 = getenv("HG_ENV_METAL_MAX_COMMAND_BUFFERS_MEMORY");
  if (v41)
  {
    HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_MEMORY = atoi(v41);
  }

  v42 = getenv("HG_ENV_FORCE_CLUSTERED_TEXTURE_PADDING");
  if (v42)
  {
    HG_RENDERER_ENV::FORCE_CLUSTERED_TEXTURE_PADDING = atoi(v42);
  }

  v43 = getenv("HG_ENV_TEX_PADDING_REMEMBRANCE");
  if (v43)
  {
    HG_RENDERER_ENV::TEX_PADDING_REMEMBRANCE = atoi(v43);
  }

  v44 = getenv("HG_ENV_TEX_PADDING_CUSHIONING");
  if (v44)
  {
    HG_RENDERER_ENV::TEX_PADDING_CUSHIONING = atoi(v44);
  }

  v45 = getenv("HG_ENV_TEX_PADDING_CLUMPING");
  if (v45)
  {
    HG_RENDERER_ENV::TEX_PADDING_CLUMPING = atoi(v45);
  }

  v46 = getenv("HG_ENV_FORCE_LEGACY_TEXTURE_POOLING");
  if (v46)
  {
    HG_RENDERER_ENV::FORCE_LEGACY_TEXTURE_POOLING = atoi(v46);
  }

  v47 = getenv("HG_ENV_TEXTURE_POOL_STRATEGY");
  if (!v47)
  {
    goto LABEL_172;
  }

  v48 = v47;
  v49 = strlen(v47);
  if (v49 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v50 = v49;
  if (v49 >= 0x17)
  {
    operator new();
  }

  v169 = v49;
  if (v49)
  {
    memmove(&__dst, v48, v49);
  }

  *(&__dst + v50) = 0;
  v166 = 10;
  strcpy(__c, "OLDEST_ANY");
  HIBYTE(v164[2]) = 21;
  strcpy(v164, "OLDEST_CLIENT_STORAGE");
  HIBYTE(v163[2]) = 19;
  strcpy(v163, "OLDEST_INTERMEDIATE");
  HIBYTE(v162[2]) = 18;
  strcpy(v162, "ALL_CLIENT_STORAGE");
  v161 = 16;
  *__p = *"ALL_INTERMEDIATE";
  if ((v169 & 0x80u) == 0)
  {
    v51 = &__dst;
  }

  else
  {
    v51 = __dst;
  }

  if ((v169 & 0x80u) == 0)
  {
    v52 = v169;
  }

  else
  {
    v52 = v168;
  }

  v160 = 0;
  if (v52 >= 10)
  {
    v53 = v51 + v52;
    v54 = v52;
    v55 = v51;
    do
    {
      v56 = memchr(v55, 79, v54 - 9);
      if (!v56)
      {
        break;
      }

      if (*v56 == *__c && *(v56 + 4) == LOWORD(__c[2]))
      {
        if (v56 != v53 && v56 - v51 != -1)
        {
          v58 = 0;
          goto LABEL_168;
        }

        break;
      }

      v55 = (v56 + 1);
      v54 = v53 - v55;
    }

    while (v53 - v55 >= 10);
    if (v52 >= 21)
    {
      v59 = v52;
      v60 = v51;
      do
      {
        v61 = memchr(v60, 79, v59 - 20);
        if (!v61)
        {
          break;
        }

        if (*v61 == v164[0] && *(v61 + 1) == v164[1] && *(v61 + 13) == *(&v164[1] + 5))
        {
          if (v61 != v53 && v61 - v51 != -1)
          {
            v58 = 1;
            goto LABEL_168;
          }

          break;
        }

        v60 = (v61 + 1);
        v59 = v53 - v60;
      }

      while (v53 - v60 >= 21);
    }

    if (v52 > 18)
    {
      v64 = v52;
      v65 = v51;
      do
      {
        v66 = memchr(v65, 79, v64 - 18);
        if (!v66)
        {
          break;
        }

        if (*v66 == v163[0] && *(v66 + 1) == v163[1] && *(v66 + 11) == *(&v163[1] + 3))
        {
          if (v66 != v53 && v66 - v51 != -1)
          {
            v58 = 2;
            goto LABEL_168;
          }

          break;
        }

        v65 = (v66 + 1);
        v64 = v53 - v65;
      }

      while (v53 - v65 > 18);
    }

    if (v52 >= 18)
    {
      v69 = v51;
      do
      {
        v70 = memchr(v69, 65, v52 - 17);
        if (!v70)
        {
          break;
        }

        if (*v70 == v162[0] && *(v70 + 1) == v162[1] && *(v70 + 8) == LOWORD(v162[2]))
        {
          if (v70 != v53 && v70 - v51 != -1)
          {
            v58 = 3;
            goto LABEL_168;
          }

          break;
        }

        v69 = (v70 + 1);
        v52 = v53 - v69;
      }

      while (v53 - v69 >= 18);
    }
  }

  if (std::string::find[abi:ne200100](&__dst, __p, 0) == -1)
  {
    HGLogger::warning("invalid TEXTURE_POOL_STRATEGY value", v73, v74);
  }

  else
  {
    v58 = 4;
LABEL_168:
    HG_RENDERER_ENV::TEXTURE_POOL_STRATEGY = v58;
  }

  if (v161 < 0)
  {
    operator delete(__p[0]);
    if (v169 < 0)
    {
      goto LABEL_323;
    }

LABEL_172:
    v75 = getenv("HG_ENV_MAX_TEXTURE_AGE_MS");
    v76 = &unk_27FE44000;
    if (!v75)
    {
      goto LABEL_174;
    }

    goto LABEL_173;
  }

  if ((v169 & 0x80000000) == 0)
  {
    goto LABEL_172;
  }

LABEL_323:
  operator delete(__dst);
  v75 = getenv("HG_ENV_MAX_TEXTURE_AGE_MS");
  v76 = &unk_27FE44000;
  if (v75)
  {
LABEL_173:
    v76[682] = atoi(v75);
  }

LABEL_174:
  v77 = getenv("HG_ENV_MAX_TEXTURE_POOL_SIZE_PERCENT");
  if (v77)
  {
    HG_RENDERER_ENV::MAX_TEXTURE_POOL_SIZE_PERCENT = atoi(v77);
  }

  v78 = getenv("HG_ENV_MAX_TEXTURE_QUEUE_SIZE_PERCENT");
  if (v78)
  {
    HG_RENDERER_ENV::MAX_TEXTURE_QUEUE_SIZE_PERCENT = atoi(v78);
  }

  v79 = getenv("HG_ENV_MAX_TEXTURE_UNUSED_SIZE_PERCENT");
  if (v79)
  {
    HG_RENDERER_ENV::MAX_TEXTURE_UNUSED_SIZE_PERCENT = atoi(v79);
  }

  v80 = getenv("HG_ENV_MAX_TEXTURE_TOTAL_SIZE_PERCENT");
  if (v80)
  {
    HG_RENDERER_ENV::MAX_TEXTURE_TOTAL_SIZE_PERCENT = atoi(v80);
  }

  v81 = getenv("HG_ENV_IGNORE_LOADER_CHECK_FOR_CVCACHE");
  if (v81)
  {
    HG_RENDERER_ENV::IGNORE_LOADER_CHECK_FOR_CVCACHE = atoi(v81);
  }

  v82 = getenv("HG_ENV_METAL_UPLOAD_TEXTURE_CREATION_STRATEGY");
  if (v82)
  {
    HG_RENDERER_ENV::METAL_UPLOAD_TEXTURE_CREATION_STRATEGY = atoi(v82);
  }

  v83 = getenv("HG_ENV_CLIENT_STORAGE_RECYCLING_POLICY");
  if (v83)
  {
    HG_RENDERER_ENV::CLIENT_STORAGE_RECYCLING_POLICY = atoi(v83);
  }

  v84 = getenv("HG_ENV_FORCE_RECYCLE_SHARED_TEXTURES");
  if (v84)
  {
    HG_RENDERER_ENV::FORCE_RECYCLE_SHARED_TEXTURES = atoi(v84);
  }

  v85 = getenv("HG_ENV_LOAD_TEXTURE_TILE_ALIGNMENT");
  if (v85)
  {
    HG_RENDERER_ENV::LOAD_TEXTURE_TILE_ALIGNMENT = atoi(v85);
  }

  v86 = getenv("HG_ENV_FORCE_POST_RENDER_FINISH");
  if (v86)
  {
    HG_RENDERER_ENV::FORCE_POST_RENDER_FINISH = atoi(v86);
  }

  v87 = getenv("HG_ENV_FORCE_POST_READPIXELS_FINISH");
  if (v87)
  {
    HG_RENDERER_ENV::FORCE_POST_READPIXELS_FINISH = atoi(v87);
  }

  v88 = getenv("HG_ENV_FORCE_POST_READPIXELS_FENCE");
  if (v88)
  {
    HG_RENDERER_ENV::FORCE_POST_READPIXELS_FENCE = atoi(v88);
  }

  v89 = getenv("HG_ENV_FORCE_DEFAULT_METAL_DEVICE");
  if (v89)
  {
    HG_RENDERER_ENV::FORCE_DEFAULT_METAL_DEVICE = atoi(v89);
  }

  v90 = getenv("HG_ENV_FORCE_NATIVE_TEXTURE_OUTPUT");
  if (v90)
  {
    HG_RENDERER_ENV::FORCE_NATIVE_TEXTURE_OUTPUT = atoi(v90);
  }

  v91 = getenv("HG_ENV_LOG_LEVEL_INIT");
  if (v91)
  {
    HG_RENDERER_ENV::LOG_LEVEL_INIT = atoi(v91);
  }

  v92 = getenv("HG_ENV_LOG_LEVEL_TEXMANAGER");
  if (v92)
  {
    HG_RENDERER_ENV::LOG_LEVEL_TEXMANAGER = atoi(v92);
  }

  v93 = getenv("HG_ENV_LOG_LEVEL_GRAPH_DUMP");
  if (v93)
  {
    HG_RENDERER_ENV::LOG_LEVEL_GRAPH_DUMP = atoi(v93);
  }

  v94 = getenv("HG_ENV_LOG_LEVEL_GPU_TRACE");
  if (v94)
  {
    HG_RENDERER_ENV::LOG_LEVEL_GPU_TRACE = atoi(v94);
  }

  v95 = getenv("HG_ENV_LOG_LEVEL_GL_TRACE");
  if (v95)
  {
    v98 = v95;
    HGLogger::warning("HG_ENV_LOG_LEVEL_GL_TRACE is deprecated. Use HG_ENV_LOG_LEVEL_GPU_TRACE.", v96, v97);
    HG_RENDERER_ENV::LOG_LEVEL_GPU_TRACE = atoi(v98);
  }

  v99 = getenv("HG_ENV_FORCE_SINGLE_DOT_FILE");
  if (v99)
  {
    HG_RENDERER_ENV::FORCE_SINGLE_DOT_FILE = atoi(v99);
  }

  v100 = getenv("HG_ENV_DOT_GRAPH_OUTPUT_DIR");
  if (v100)
  {
    MEMORY[0x2666E99D0](this, v100);
  }

  v101 = getenv("HG_ENV_BUFFER_DUMP_DIR");
  if (v101)
  {
    MEMORY[0x2666E99D0](v158, v101);
  }

  v102 = getenv("HG_ENV_LOG_LEVEL_COLORCONFORM_DUMP");
  if (v102)
  {
    HG_RENDERER_ENV::LOG_LEVEL_COLORCONFORM_DUMP = atoi(v102);
  }

  v103 = getenv("HG_ENV_LOG_LEVEL_MTL_PERF_VALIDATION");
  if (v103)
  {
    HG_RENDERER_ENV::LOG_LEVEL_MTL_PERF_VALIDATION = atoi(v103);
  }

  v104 = getenv("SENSO_GENERAL_LOGLEVEL");
  if (v104)
  {
    v105 = strtol(v104, 0, 0);
    v106 = getenv("SENSO_PERFORMANCE_LOGLEVEL");
    if (v106)
    {
      goto LABEL_224;
    }

LABEL_227:
    v109 = 0;
    v111 = atomic_load(HGLogger::_enabled);
    if ((v111 & 1) == 0)
    {
      goto LABEL_229;
    }

    goto LABEL_228;
  }

  v105 = 0;
  v106 = getenv("SENSO_PERFORMANCE_LOGLEVEL");
  if (!v106)
  {
    goto LABEL_227;
  }

LABEL_224:
  v109 = strtol(v106, 0, 0);
  v110 = atomic_load(HGLogger::_enabled);
  if (v110)
  {
LABEL_228:
    HGLogger::log("envInit", 1, "  NO_FLUSH_OPT                  : %d\n", v107, v108, HG_RENDERER_ENV::NO_FLUSH_OPT);
  }

LABEL_229:
  v112 = atomic_load(HGLogger::_enabled);
  if (v112)
  {
    HGLogger::log("envInit", 1, "  LOW_MEMORY_USAGE              : %d\n", v107, v108, HG_RENDERER_ENV::LOW_MEMORY_USAGE);
  }

  v113 = atomic_load(HGLogger::_enabled);
  if (v113)
  {
    HGLogger::log("envInit", 1, "  TRACK_TEXTURE_USAGE           : %d\n", v107, v108, HG_RENDERER_ENV::TRACK_TEXTURE_USAGE);
  }

  v114 = atomic_load(HGLogger::_enabled);
  if (v114)
  {
    HGLogger::log("envInit", 1, "  VALIDATE_CURRENT_GL_CONTEXT   : %d\n", v107, v108, HG_RENDERER_ENV::VALIDATE_CURRENT_GL_CONTEXT);
  }

  v115 = atomic_load(HGLogger::_enabled);
  if (v115)
  {
    HGLogger::log("envInit", 1, "  SCISSORED_LARGE_TRI_TILES     : %d\n", v107, v108, HG_RENDERER_ENV::SCISSORED_LARGE_TRI_TILES);
  }

  v116 = atomic_load(HGLogger::_enabled);
  if (v116)
  {
    HGLogger::log("envInit", 1, "  SCISSORED_LARGE_TRI_TILES_WIDTH : %d\n", v107, v108, HG_RENDERER_ENV::SCISSORED_LARGE_TRI_TILES_WIDTH);
  }

  v117 = atomic_load(HGLogger::_enabled);
  if (v117)
  {
    HGLogger::log("envInit", 1, "  FORCE_PAGE_SIZE               : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_PAGE_SIZE);
  }

  v118 = atomic_load(HGLogger::_enabled);
  if (v118)
  {
    HGLogger::log("envInit", 1, "  FORCE_NO_PBO_READBACK         : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_NO_PBO_READBACK);
  }

  v119 = atomic_load(HGLogger::_enabled);
  if (v119)
  {
    HGLogger::log("envInit", 1, "  FORCE_TEXTURE_STORAGE_HINT    : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_TEXTURE_STORAGE_HINT);
  }

  v120 = atomic_load(HGLogger::_enabled);
  if (v120)
  {
    HGLogger::log("envInit", 1, "  FORCE_FULLSIZE_TEXTURE_UPLOAD : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_FULLSIZE_TEXTURE_UPLOAD);
  }

  v121 = atomic_load(HGLogger::_enabled);
  if (v121)
  {
    HGLogger::log("envInit", 1, "  METAL_BLIT_MAX_TILE_SIZE_MB   : %d\n", v107, v108, HG_RENDERER_ENV::METAL_BLIT_MAX_TILE_SIZE_MB);
  }

  v122 = atomic_load(HGLogger::_enabled);
  if (v122)
  {
    HGLogger::log("envInit", 1, "  WAIT_FOR_QUEUED_TEXTURE_ONE_BY_ONE : %d\n", v107, v108, HG_RENDERER_ENV::WAIT_FOR_QUEUED_TEXTURE_ONE_BY_ONE);
  }

  v123 = atomic_load(HGLogger::_enabled);
  if (v123)
  {
    HGLogger::log("envInit", 1, "  METAL_MAX_ENCODERS_PER_BUFFER : %d\n", v107, v108, HG_RENDERER_ENV::METAL_MAX_ENCODERS_PER_BUFFER);
  }

  v124 = atomic_load(HGLogger::_enabled);
  if (v124)
  {
    HGLogger::log("envInit", 1, "  METAL_MAX_COMMAND_BUFFERS_COUNT : %d\n", v107, v108, HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_COUNT);
  }

  v125 = atomic_load(HGLogger::_enabled);
  if (v125)
  {
    HGLogger::log("envInit", 1, "  METAL_MAX_COMMAND_BUFFERS_MEMORY : %d\n", v107, v108, HG_RENDERER_ENV::METAL_MAX_COMMAND_BUFFERS_MEMORY);
  }

  v126 = atomic_load(HGLogger::_enabled);
  if (v126)
  {
    HGLogger::log("envInit", 1, "  FORCE_CLUSTERED_TEXTURE_PADDING  : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_CLUSTERED_TEXTURE_PADDING);
  }

  v127 = atomic_load(HGLogger::_enabled);
  if (v127)
  {
    HGLogger::log("envInit", 1, "  TEX_PADDING_REMEMBRANCE       : %d\n", v107, v108, HG_RENDERER_ENV::TEX_PADDING_REMEMBRANCE);
  }

  v128 = atomic_load(HGLogger::_enabled);
  if (v128)
  {
    HGLogger::log("envInit", 1, "  TEX_PADDING_CUSHIONING        : %d\n", v107, v108, HG_RENDERER_ENV::TEX_PADDING_CUSHIONING);
  }

  v129 = atomic_load(HGLogger::_enabled);
  if (v129)
  {
    HGLogger::log("envInit", 1, "  TEX_PADDING_CLUMPING          : %d\n", v107, v108, HG_RENDERER_ENV::TEX_PADDING_CLUMPING);
  }

  v130 = atomic_load(HGLogger::_enabled);
  if (v130)
  {
    HGLogger::log("envInit", 1, "  FORCE_LEGACY_TEXTURE_POOLING  : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_LEGACY_TEXTURE_POOLING);
  }

  v131 = atomic_load(HGLogger::_enabled);
  if (v131)
  {
    HGLogger::log("envInit", 1, "  TEXTURE_POOL_STRATEGY         : %d\n", v107, v108, HG_RENDERER_ENV::TEXTURE_POOL_STRATEGY);
  }

  v132 = atomic_load(HGLogger::_enabled);
  if (v132)
  {
    HGLogger::log("envInit", 1, "  MAX_TEXTURE_AGE_MS            : %d\n", v107, v108, HG_RENDERER_ENV::MAX_TEXTURE_AGE_MS);
  }

  v133 = atomic_load(HGLogger::_enabled);
  if (v133)
  {
    HGLogger::log("envInit", 1, "  MAX_TEXTURE_POOL_SIZE_PERCENT   : %d\n", v107, v108, HG_RENDERER_ENV::MAX_TEXTURE_POOL_SIZE_PERCENT);
  }

  v134 = atomic_load(HGLogger::_enabled);
  if (v134)
  {
    HGLogger::log("envInit", 1, "  MAX_TEXTURE_QUEUE_SIZE_PERCENT  : %d\n", v107, v108, HG_RENDERER_ENV::MAX_TEXTURE_QUEUE_SIZE_PERCENT);
  }

  v135 = atomic_load(HGLogger::_enabled);
  if (v135)
  {
    HGLogger::log("envInit", 1, "  MAX_TEXTURE_UNUSED_SIZE_PERCENT : %d\n", v107, v108, HG_RENDERER_ENV::MAX_TEXTURE_UNUSED_SIZE_PERCENT);
  }

  v136 = atomic_load(HGLogger::_enabled);
  if (v136)
  {
    HGLogger::log("envInit", 1, "  MAX_TEXTURE_TOTAL_SIZE_PERCENT  : %d\n", v107, v108, HG_RENDERER_ENV::MAX_TEXTURE_TOTAL_SIZE_PERCENT);
  }

  v137 = atomic_load(HGLogger::_enabled);
  if (v137)
  {
    HGLogger::log("envInit", 1, "  IGNORE_LOADER_CHECK_FOR_CVCACHE : %d\n", v107, v108, HG_RENDERER_ENV::IGNORE_LOADER_CHECK_FOR_CVCACHE);
  }

  v138 = atomic_load(HGLogger::_enabled);
  if (v138)
  {
    HGLogger::log("envInit", 1, "  METAL_UPLOAD_TEXTURE_CREATION_STRATEGY : %d\n", v107, v108, HG_RENDERER_ENV::METAL_UPLOAD_TEXTURE_CREATION_STRATEGY);
  }

  v139 = atomic_load(HGLogger::_enabled);
  if (v139)
  {
    HGLogger::log("envInit", 1, "  CLIENT_STORAGE_RECYCLING_POLICY : %d\n", v107, v108, HG_RENDERER_ENV::CLIENT_STORAGE_RECYCLING_POLICY);
  }

  v140 = atomic_load(HGLogger::_enabled);
  if (v140)
  {
    HGLogger::log("envInit", 1, "  FORCE_RECYCLE_SHARED_TEXTURES : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_RECYCLE_SHARED_TEXTURES);
  }

  v141 = atomic_load(HGLogger::_enabled);
  if (v141)
  {
    HGLogger::log("envInit", 1, "  LOAD_TEXTURE_TILE_ALIGNMENT   : %d\n", v107, v108, HG_RENDERER_ENV::LOAD_TEXTURE_TILE_ALIGNMENT);
  }

  v142 = atomic_load(HGLogger::_enabled);
  if (v142)
  {
    HGLogger::log("envInit", 1, "  FORCE_POST_RENDER_FINISH      : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_POST_RENDER_FINISH);
  }

  v143 = atomic_load(HGLogger::_enabled);
  if (v143)
  {
    HGLogger::log("envInit", 1, "  FORCE_POST_READPIXELS_FINISH  : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_POST_READPIXELS_FINISH);
  }

  v144 = atomic_load(HGLogger::_enabled);
  if (v144)
  {
    HGLogger::log("envInit", 1, "  FORCE_POST_READPIXELS_FENCE   : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_POST_READPIXELS_FENCE);
  }

  v145 = atomic_load(HGLogger::_enabled);
  if (v145)
  {
    HGLogger::log("envInit", 1, "  FORCE_DEFAULT_METAL_DEVICE    : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_DEFAULT_METAL_DEVICE);
  }

  v146 = atomic_load(HGLogger::_enabled);
  if (v146)
  {
    HGLogger::log("envInit", 1, "  FORCE_NATIVE_TEXTURE_OUTPUT   : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_NATIVE_TEXTURE_OUTPUT);
  }

  v147 = atomic_load(HGLogger::_enabled);
  if (v147)
  {
    HGLogger::log("envInit", 1, "  LOG_LEVEL_INIT                : %d\n", v107, v108, HG_RENDERER_ENV::LOG_LEVEL_INIT);
  }

  v148 = atomic_load(HGLogger::_enabled);
  if (v148)
  {
    HGLogger::log("envInit", 1, "  LOG_LEVEL_TEXMANAGER          : %d\n", v107, v108, HG_RENDERER_ENV::LOG_LEVEL_TEXMANAGER);
  }

  v149 = atomic_load(HGLogger::_enabled);
  if (v149)
  {
    HGLogger::log("envInit", 1, "  LOG_LEVEL_GRAPH_DUMP          : %d\n", v107, v108, HG_RENDERER_ENV::LOG_LEVEL_GRAPH_DUMP);
  }

  v150 = atomic_load(HGLogger::_enabled);
  if (v150)
  {
    HGLogger::log("envInit", 1, "  LOG_LEVEL_GPU_TRACE           : %d\n", v107, v108, HG_RENDERER_ENV::LOG_LEVEL_GPU_TRACE);
  }

  v151 = atomic_load(HGLogger::_enabled);
  if (v151)
  {
    HGLogger::log("envInit", 1, "  LOG_LEVEL_COLORCONFORM_DUMP   : %d\n", v107, v108, HG_RENDERER_ENV::LOG_LEVEL_COLORCONFORM_DUMP);
  }

  v152 = atomic_load(HGLogger::_enabled);
  if (v152)
  {
    HGLogger::log("envInit", 1, "  LOG_LEVEL_MTL_PERF_VALIDATION : %d\n", v107, v108, HG_RENDERER_ENV::LOG_LEVEL_MTL_PERF_VALIDATION);
  }

  v153 = atomic_load(HGLogger::_enabled);
  if (v153)
  {
    HGLogger::log("envInit", 1, "  FORCE_SINGLE_DOT_FILE         : %d\n", v107, v108, HG_RENDERER_ENV::FORCE_SINGLE_DOT_FILE);
  }

  v154 = atomic_load(HGLogger::_enabled);
  if (v154)
  {
    v155 = this;
    if (*(this + 23) < 0)
    {
      v155 = *this;
    }

    HGLogger::log("envInit", 1, "  DOT_GRAPH_OUTPUT_DIR          : %s\n", v107, v108, v155);
  }

  v156 = atomic_load(HGLogger::_enabled);
  if (v156)
  {
    v157 = v158;
    if (*(this + 47) < 0)
    {
      v157 = *v158;
    }

    HGLogger::log("envInit", 1, "  BUFFER_DUMP_DIR               : %s\n", v107, v108, v157);
  }

  HGLogger::setLevel("init", HG_RENDERER_ENV::LOG_LEVEL_INIT);
  HGLogger::setLevel("texManager", HG_RENDERER_ENV::LOG_LEVEL_TEXMANAGER);
  HGLogger::setLevel("graph", HG_RENDERER_ENV::LOG_LEVEL_GRAPH_DUMP);
  HGLogger::setLevel("gpu", HG_RENDERER_ENV::LOG_LEVEL_GPU_TRACE);
  HGLogger::setLevel("colorConform", HG_RENDERER_ENV::LOG_LEVEL_COLORCONFORM_DUMP);
  HGLogger::setLevel("mtl_perf_validation", HG_RENDERER_ENV::LOG_LEVEL_MTL_PERF_VALIDATION);
  HGLogger::setLevel(HGSensoLogging::sGeneral[0], v105);
  HGLogger::setLevel(HGSensoLogging::sPerformance[0], v109);
  HGTraceGuard::~HGTraceGuard(v170);
}